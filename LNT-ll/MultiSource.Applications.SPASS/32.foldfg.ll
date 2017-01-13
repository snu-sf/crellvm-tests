; ModuleID = './MultiSource.Applications.SPASS/32.foldfg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }

@.str = private unnamed_addr constant [7 x i8] c"forall\00", align 1
@fol_ALL = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@fol_EXIST = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@fol_AND = common global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@fol_OR = common global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@fol_NOT = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"implies\00", align 1
@fol_IMPLIES = common global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"implied\00", align 1
@fol_IMPLIED = common global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@fol_EQUIV = common global i32 0, align 4
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fol_VARLIST = common global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"equal\00", align 1
@fol_EQUALITY = common global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@fol_TRUE = common global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@fol_FALSE = common global i32 0, align 4
@fol_SYMBOLS = common global %struct.LIST_HELP* null, align 8
@symbol_STANDARDVARCOUNTER = external global i32, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"\0Aset(process_input).\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"\0Aset(binary_res).\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"\0Aset(factor).\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"\0Aclear(print_kept).\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"\0Aassign(max_seconds, 20).\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"\0Aclear(print_new_demod).\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"\0Aclear(print_back_demod).\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"\0Aclear(print_back_sub).\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"\0Aset(para_from).\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"\0Aset(para_into).\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"\0Aset(para_from_vars).\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"\0Aset(back_demod).\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"\0Aset(auto).\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"\0Aset(auto2).\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [82 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/SPASS/foldfg.c\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"\0A In fol_FPrintOtterOptions: Illegal parameter value %d.\00", align 1
@.str.29 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"formula_list(usable).\0A\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"all x (x=x).\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"\0A%% %s \0A\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c".\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"end_of_list.\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"  functions[\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"(%s, %d)\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"].\0A\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"  predicates[\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"([\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"],\00", align 1
@symbol_ACTINDEX = external global i32, align 4
@.str.44 = private unnamed_addr constant [4 x i8] c" > \00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"set_precedence(\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c").\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"begin_problem(Unknown).\0A\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"list_of_descriptions.\0A\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"name(%s).\0A\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"author(%s).\0A\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"status(%s).\0A\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"description(%s).\0A\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"list_of_symbols.\0A\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"axioms\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"conjectures\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"end_problem.\0A\00", align 1
@.str.58 = private unnamed_addr constant [54 x i8] c"\0A In fol_TermPolarity: Unknown first-order operator.\0A\00", align 1
@term_MARK = external global i32, align 4
@term_BIND = external global [3001 x [2 x i8*]], align 16
@stack_POINTER = external global i32, align 4
@stack_STACK = external global [10000 x i8*], align 16
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@.str.59 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"all \00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"exists \00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"- (\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c" & \00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c" <-> \00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@symbol_SIGNATURE = external global %struct.signature**, align 8
@symbol_TYPEMASK = external constant i32, align 4
@symbol_TYPESTATBITS = external constant i32, align 4
@.str.70 = private unnamed_addr constant [18 x i8] c"list_of_formulae(\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c").\0A\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"\09formula(\00", align 1
@cont_BINDINGS = external global i32, align 4
@cont_STACKPOINTER = external global i32, align 4
@cont_STACK = external global [1000 x i32], align 16
@cont_LEFTCONTEXT = external global %struct.binding*, align 8
@cont_CURRENTBINDING = external global %struct.binding*, align 8
@cont_LASTBINDING = external global %struct.binding*, align 8
@.str.73 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"],\0A\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"(\0A\00", align 1
@symbol_CONTEXT = external global [4000 x i32], align 16

; Function Attrs: nounwind uwtable
define void @fol_Init(i32 %All, i32* %Precedence) #0 {
entry:
  %All.addr = alloca i32, align 4
  %Precedence.addr = alloca i32*, align 8
  store i32 %All, i32* %All.addr, align 4
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load i32, i32* %All.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %Precedence.addr, align 8
  %call = call i32 @symbol_CreateJunctor(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2, i32 0, i32* %1)
  store i32 %call, i32* @fol_ALL, align 4
  %2 = load i32*, i32** %Precedence.addr, align 8
  %call1 = call i32 @symbol_CreateJunctor(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 2, i32 0, i32* %2)
  store i32 %call1, i32* @fol_EXIST, align 4
  %call2 = call i32 @symbol_ArbitraryArity()
  %3 = load i32*, i32** %Precedence.addr, align 8
  %call3 = call i32 @symbol_CreateJunctor(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %call2, i32 0, i32* %3)
  store i32 %call3, i32* @fol_AND, align 4
  %call4 = call i32 @symbol_ArbitraryArity()
  %4 = load i32*, i32** %Precedence.addr, align 8
  %call5 = call i32 @symbol_CreateJunctor(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 %call4, i32 0, i32* %4)
  store i32 %call5, i32* @fol_OR, align 4
  %5 = load i32*, i32** %Precedence.addr, align 8
  %call6 = call i32 @symbol_CreateJunctor(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 1, i32 0, i32* %5)
  store i32 %call6, i32* @fol_NOT, align 4
  %6 = load i32*, i32** %Precedence.addr, align 8
  %call7 = call i32 @symbol_CreateJunctor(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 2, i32 0, i32* %6)
  store i32 %call7, i32* @fol_IMPLIES, align 4
  %7 = load i32*, i32** %Precedence.addr, align 8
  %call8 = call i32 @symbol_CreateJunctor(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 2, i32 0, i32* %7)
  store i32 %call8, i32* @fol_IMPLIED, align 4
  %8 = load i32*, i32** %Precedence.addr, align 8
  %call9 = call i32 @symbol_CreateJunctor(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 2, i32 0, i32* %8)
  store i32 %call9, i32* @fol_EQUIV, align 4
  %call10 = call i32 @symbol_ArbitraryArity()
  %9 = load i32*, i32** %Precedence.addr, align 8
  %call11 = call i32 @symbol_CreateJunctor(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i32 %call10, i32 0, i32* %9)
  store i32 %call11, i32* @fol_VARLIST, align 4
  %10 = load i32*, i32** %Precedence.addr, align 8
  %call12 = call i32 @symbol_CreatePredicate(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 2, i32 0, i32* %10)
  store i32 %call12, i32* @fol_EQUALITY, align 4
  %11 = load i32*, i32** %Precedence.addr, align 8
  %call13 = call i32 @symbol_CreatePredicate(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 0, i32* %11)
  store i32 %call13, i32* @fol_TRUE, align 4
  %12 = load i32*, i32** %Precedence.addr, align 8
  %call14 = call i32 @symbol_CreatePredicate(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0, i32* %12)
  store i32 %call14, i32* @fol_FALSE, align 4
  %13 = load i32, i32* @fol_ALL, align 4
  %conv = sext i32 %13 to i64
  %14 = inttoptr i64 %conv to i8*
  %15 = load i32, i32* @fol_EXIST, align 4
  %conv15 = sext i32 %15 to i64
  %16 = inttoptr i64 %conv15 to i8*
  %17 = load i32, i32* @fol_AND, align 4
  %conv16 = sext i32 %17 to i64
  %18 = inttoptr i64 %conv16 to i8*
  %19 = load i32, i32* @fol_OR, align 4
  %conv17 = sext i32 %19 to i64
  %20 = inttoptr i64 %conv17 to i8*
  %21 = load i32, i32* @fol_NOT, align 4
  %conv18 = sext i32 %21 to i64
  %22 = inttoptr i64 %conv18 to i8*
  %23 = load i32, i32* @fol_IMPLIES, align 4
  %conv19 = sext i32 %23 to i64
  %24 = inttoptr i64 %conv19 to i8*
  %25 = load i32, i32* @fol_IMPLIED, align 4
  %conv20 = sext i32 %25 to i64
  %26 = inttoptr i64 %conv20 to i8*
  %27 = load i32, i32* @fol_EQUIV, align 4
  %conv21 = sext i32 %27 to i64
  %28 = inttoptr i64 %conv21 to i8*
  %29 = load i32, i32* @fol_VARLIST, align 4
  %conv22 = sext i32 %29 to i64
  %30 = inttoptr i64 %conv22 to i8*
  %31 = load i32, i32* @fol_EQUALITY, align 4
  %conv23 = sext i32 %31 to i64
  %32 = inttoptr i64 %conv23 to i8*
  %33 = load i32, i32* @fol_TRUE, align 4
  %conv24 = sext i32 %33 to i64
  %34 = inttoptr i64 %conv24 to i8*
  %35 = load i32, i32* @fol_FALSE, align 4
  %conv25 = sext i32 %35 to i64
  %36 = inttoptr i64 %conv25 to i8*
  %call26 = call %struct.LIST_HELP* @list_List(i8* %36)
  %call27 = call %struct.LIST_HELP* @list_Cons(i8* %34, %struct.LIST_HELP* %call26)
  %call28 = call %struct.LIST_HELP* @list_Cons(i8* %32, %struct.LIST_HELP* %call27)
  %call29 = call %struct.LIST_HELP* @list_Cons(i8* %30, %struct.LIST_HELP* %call28)
  %call30 = call %struct.LIST_HELP* @list_Cons(i8* %28, %struct.LIST_HELP* %call29)
  %call31 = call %struct.LIST_HELP* @list_Cons(i8* %26, %struct.LIST_HELP* %call30)
  %call32 = call %struct.LIST_HELP* @list_Cons(i8* %24, %struct.LIST_HELP* %call31)
  %call33 = call %struct.LIST_HELP* @list_Cons(i8* %22, %struct.LIST_HELP* %call32)
  %call34 = call %struct.LIST_HELP* @list_Cons(i8* %20, %struct.LIST_HELP* %call33)
  %call35 = call %struct.LIST_HELP* @list_Cons(i8* %18, %struct.LIST_HELP* %call34)
  %call36 = call %struct.LIST_HELP* @list_Cons(i8* %16, %struct.LIST_HELP* %call35)
  %call37 = call %struct.LIST_HELP* @list_Cons(i8* %14, %struct.LIST_HELP* %call36)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** @fol_SYMBOLS, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %37 = load i32*, i32** %Precedence.addr, align 8
  %call38 = call i32 @symbol_CreatePredicate(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 2, i32 0, i32* %37)
  store i32 %call38, i32* @fol_EQUALITY, align 4
  %38 = load i32*, i32** %Precedence.addr, align 8
  %call39 = call i32 @symbol_CreateJunctor(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 1, i32 0, i32* %38)
  store i32 %call39, i32* @fol_NOT, align 4
  %39 = load i32, i32* @fol_NOT, align 4
  %conv40 = sext i32 %39 to i64
  %40 = inttoptr i64 %conv40 to i8*
  %41 = load i32, i32* @fol_EQUALITY, align 4
  %conv41 = sext i32 %41 to i64
  %42 = inttoptr i64 %conv41 to i8*
  %call42 = call %struct.LIST_HELP* @list_List(i8* %42)
  %call43 = call %struct.LIST_HELP* @list_Cons(i8* %40, %struct.LIST_HELP* %call42)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** @fol_SYMBOLS, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @symbol_CreateJunctor(i8*, i32, i32, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_ArbitraryArity() #2 {
entry:
  ret i32 -1
}

declare i32 @symbol_CreatePredicate(i8*, i32, i32, i32*) #1

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
define internal %struct.LIST_HELP* @list_List(i8* %P) #2 {
entry:
  %P.addr = alloca i8*, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load i8*, i8** %P.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %call)
  ret %struct.LIST_HELP* %call1
}

; Function Attrs: nounwind uwtable
define i32 @fol_IsStringPredefined(i8* %String) #0 {
entry:
  %retval = alloca i32, align 4
  %String.addr = alloca i8*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store i8* %String, i8** %String.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @fol_SYMBOLS, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %String.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = ptrtoint i8* %call1 to i32
  %call2 = call i8* @symbol_Name(i32 %4)
  %call3 = call i32 @string_Equal(i8* %2, i8* %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = ptrtoint i8* %call5 to i32
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call7 = call i32 @symbol_Null()
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
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
define internal i32 @string_Equal(i8* %S1, i8* %S2) #2 {
entry:
  %S1.addr = alloca i8*, align 8
  %S2.addr = alloca i8*, align 8
  store i8* %S1, i8** %S1.addr, align 8
  store i8* %S2, i8** %S2.addr, align 8
  %0 = load i8*, i8** %S1.addr, align 8
  %1 = load i8*, i8** %S2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #6
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @symbol_Name(i32 %ActSymbol) #2 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  %name = getelementptr inbounds %struct.signature, %struct.signature* %call1, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  ret i8* %1
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Null() #2 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct.term* @fol_CreateQuantifier(i32 %Quantifier, %struct.LIST_HELP* %VarList, %struct.LIST_HELP* %Arguments) #0 {
entry:
  %Quantifier.addr = alloca i32, align 4
  %VarList.addr = alloca %struct.LIST_HELP*, align 8
  %Arguments.addr = alloca %struct.LIST_HELP*, align 8
  store i32 %Quantifier, i32* %Quantifier.addr, align 4
  store %struct.LIST_HELP* %VarList, %struct.LIST_HELP** %VarList.addr, align 8
  store %struct.LIST_HELP* %Arguments, %struct.LIST_HELP** %Arguments.addr, align 8
  %0 = load i32, i32* %Quantifier.addr, align 4
  %call = call i32 @fol_Varlist()
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarList.addr, align 8
  %call1 = call %struct.term* @term_Create(i32 %call, %struct.LIST_HELP* %1)
  %2 = bitcast %struct.term* %call1 to i8*
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arguments.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cons(i8* %2, %struct.LIST_HELP* %3)
  %call3 = call %struct.term* @term_Create(i32 %0, %struct.LIST_HELP* %call2)
  ret %struct.term* %call3
}

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Varlist() #2 {
entry:
  %0 = load i32, i32* @fol_VARLIST, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define %struct.term* @fol_CreateQuantifierAddFather(i32 %Quantifier, %struct.LIST_HELP* %VarList, %struct.LIST_HELP* %Arguments) #0 {
entry:
  %Quantifier.addr = alloca i32, align 4
  %VarList.addr = alloca %struct.LIST_HELP*, align 8
  %Arguments.addr = alloca %struct.LIST_HELP*, align 8
  store i32 %Quantifier, i32* %Quantifier.addr, align 4
  store %struct.LIST_HELP* %VarList, %struct.LIST_HELP** %VarList.addr, align 8
  store %struct.LIST_HELP* %Arguments, %struct.LIST_HELP** %Arguments.addr, align 8
  %0 = load i32, i32* %Quantifier.addr, align 4
  %call = call i32 @fol_Varlist()
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarList.addr, align 8
  %call1 = call %struct.term* @term_CreateAddFather(i32 %call, %struct.LIST_HELP* %1)
  %2 = bitcast %struct.term* %call1 to i8*
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arguments.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cons(i8* %2, %struct.LIST_HELP* %3)
  %call3 = call %struct.term* @term_CreateAddFather(i32 %0, %struct.LIST_HELP* %call2)
  ret %struct.term* %call3
}

declare %struct.term* @term_CreateAddFather(i32, %struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define %struct.term* @fol_ComplementaryTerm(%struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_Not()
  %call2 = call i32 @symbol_Equal(i32 %call, i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  %call4 = call i8* @list_First(%struct.LIST_HELP* %call3)
  %2 = bitcast i8* %call4 to %struct.term*
  %call5 = call %struct.term* @term_Copy(%struct.term* %2)
  store %struct.term* %call5, %struct.term** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call6 = call i32 @fol_Not()
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.term* @term_Copy(%struct.term* %3)
  %4 = bitcast %struct.term* %call7 to i8*
  %call8 = call %struct.LIST_HELP* @list_List(i8* %4)
  %call9 = call %struct.term* @term_Create(i32 %call6, %struct.LIST_HELP* %call8)
  store %struct.term* %call9, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %5
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
define internal i32 @fol_Not() #2 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
}

declare %struct.term* @term_Copy(%struct.term*) #1

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
define internal %struct.LIST_HELP* @term_ArgumentList(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @fol_GetNonFOLPredicates() #0 {
entry:
  %Result = alloca %struct.LIST_HELP*, align 8
  %call = call %struct.LIST_HELP* @symbol_GetAllPredicates()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call1 = call %struct.LIST_HELP* @list_DeleteElementIf(%struct.LIST_HELP* %0, i32 (i8*)* bitcast (i32 (i32)* @fol_IsPredefinedPred to i32 (i8*)*))
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Result, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %1
}

declare %struct.LIST_HELP* @symbol_GetAllPredicates() #1

declare %struct.LIST_HELP* @list_DeleteElementIf(%struct.LIST_HELP*, i32 (i8*)*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_IsPredefinedPred(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %1 = load i32, i32* @fol_EQUALITY, align 4
  %call = call i32 @symbol_Equal(i32 %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %S.addr, align 4
  %3 = load i32, i32* @fol_TRUE, align 4
  %call1 = call i32 @symbol_Equal(i32 %2, i32 %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %S.addr, align 4
  %5 = load i32, i32* @fol_FALSE, align 4
  %call3 = call i32 @symbol_Equal(i32 %4, i32 %5)
  %tobool4 = icmp ne i32 %call3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool4, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @fol_GetAssignments(%struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsAtom(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @fol_IsAssignment(%struct.term* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %3 = bitcast %struct.term* %2 to i8*
  %call4 = call %struct.LIST_HELP* @list_List(i8* %3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.17

if.else:                                          ; preds = %entry
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_IsComplex(%struct.term* %4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %if.else
  %call8 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Result, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call12 to %struct.term*
  %call13 = call %struct.LIST_HELP* @fol_GetAssignments(%struct.term* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call14 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call13, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %retval
  br label %return

if.end.16:                                        ; preds = %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  %call18 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.17, %for.end, %if.then.3
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsAtom(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsPredicate(i32 %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_IsAssignment(%struct.term* %Term) #2 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %1 = load i32, i32* @fol_EQUALITY, align 4
  %cmp = icmp eq i32 %call, %1
  br i1 %cmp, label %land.rhs, label %land.end.17

land.rhs:                                         ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.term* @term_FirstArgument(%struct.term* %2)
  %call2 = call i32 @term_IsVariable(%struct.term* %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %land.rhs
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.term* @term_SecondArgument(%struct.term* %3)
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.term* @term_FirstArgument(%struct.term* %4)
  %call5 = call i32 @term_TopSymbol(%struct.term* %call4)
  %call6 = call i32 @term_ContainsVariable(%struct.term* %call3, i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true, %land.rhs
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.term* @term_SecondArgument(%struct.term* %5)
  %call9 = call i32 @term_IsVariable(%struct.term* %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.rhs.11, label %land.end

land.rhs.11:                                      ; preds = %lor.rhs
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call12 = call %struct.term* @term_FirstArgument(%struct.term* %6)
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call13 = call %struct.term* @term_SecondArgument(%struct.term* %7)
  %call14 = call i32 @term_TopSymbol(%struct.term* %call13)
  %call15 = call i32 @term_ContainsVariable(%struct.term* %call12, i32 %call14)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br label %land.end

land.end:                                         ; preds = %land.rhs.11, %lor.rhs
  %8 = phi i1 [ false, %lor.rhs ], [ %lnot, %land.rhs.11 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %9 = phi i1 [ true, %land.lhs.true ], [ %8, %land.end ]
  br label %land.end.17

land.end.17:                                      ; preds = %lor.end, %entry
  %10 = phi i1 [ false, %entry ], [ %9, %lor.end ]
  %land.ext = zext i1 %10 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsComplex(%struct.term* %T) #2 {
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
define internal %struct.LIST_HELP* @list_Nil() #2 {
entry:
  ret %struct.LIST_HELP* null
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

; Function Attrs: nounwind uwtable
define void @fol_NormalizeVars(%struct.term* %Formula) #0 {
entry:
  %Formula.addr = alloca %struct.term*, align 8
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  call void @symbol_ResetStandardVarCounter()
  call void @term_NewMark()
  %0 = load %struct.term*, %struct.term** %Formula.addr, align 8
  call void @fol_NormalizeVarsIntern(%struct.term* %0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_ResetStandardVarCounter() #2 {
entry:
  %call = call i32 @symbol_GetInitialStandardVarCounter()
  store i32 %call, i32* @symbol_STANDARDVARCOUNTER, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_NewMark() #2 {
entry:
  %i = alloca i32, align 4
  %0 = load i32, i32* @term_MARK, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %call = call i32 @symbol_MaxVars()
  %cmp1 = icmp slt i32 %1, %call
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @term_NullMark()
  %conv = zext i32 %call2 to i64
  %2 = inttoptr i64 %conv to i8*
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3001 x [2 x i8*]], [3001 x [2 x i8*]]* @term_BIND, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx, i32 0, i64 0
  store i8* %2, i8** %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* @term_MARK, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %5 = load i32, i32* @term_MARK, align 4
  %inc4 = add i32 %5, 1
  store i32 %inc4, i32* @term_MARK, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fol_NormalizeVarsIntern(%struct.term* %Formula) #0 {
entry:
  %Formula.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Var = alloca i32, align 4
  %OldVars = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  %0 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call1 = call i32 @term_IsComplex(%struct.term* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else.44

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %Top, align 4
  %call2 = call i32 @fol_IsQuantifier(i32 %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %call5 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %OldVars, align 8
  %3 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call6 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %3)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call9 to %struct.term*
  %call10 = call i32 @term_TopSymbol(%struct.term* %6)
  store i32 %call10, i32* %Var, align 4
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %OldVars, align 8
  %8 = load i32, i32* %Var, align 4
  %call11 = call i8* @term_BindingValue(i32 %8)
  %call12 = call %struct.LIST_HELP* @list_List(i8* %call11)
  %call13 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %7, %struct.LIST_HELP* %call12)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %OldVars, align 8
  %9 = load i32, i32* %Var, align 4
  %call14 = call i32 @term_OldMark()
  %call15 = call i32 @symbol_CreateStandardVariable()
  %conv = sext i32 %call15 to i64
  %10 = inttoptr i64 %conv to i8*
  call void @term_CreateValueBinding(i32 %9, i32 %call14, i8* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call17 = call %struct.term* @term_SecondArgument(%struct.term* %12)
  call void @fol_NormalizeVarsIntern(%struct.term* %call17)
  %13 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call18 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %13)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan1, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %OldVars, align 8
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.30, %for.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot22 = xor i1 %tobool21, true
  br i1 %lnot22, label %for.body.23, label %for.end.33

for.body.23:                                      ; preds = %for.cond.19
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call24 to %struct.term*
  %call25 = call i32 @term_TopSymbol(%struct.term* %17)
  store i32 %call25, i32* %Var, align 4
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call26 to %struct.term*
  %20 = load i32, i32* %Var, align 4
  %call27 = call i8* @term_BindingValue(i32 %20)
  %21 = ptrtoint i8* %call27 to i32
  call void @term_RplacTop(%struct.term* %19, i32 %21)
  %22 = load i32, i32* %Var, align 4
  %call28 = call i32 @term_OldMark()
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call29 = call i8* @list_Car(%struct.LIST_HELP* %23)
  call void @term_CreateValueBinding(i32 %22, i32 %call28, i8* %call29)
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.23
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %Scan1, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.19

for.end.33:                                       ; preds = %for.cond.19
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %OldVars, align 8
  call void @list_Delete(%struct.LIST_HELP* %26)
  br label %if.end

if.else:                                          ; preds = %if.then
  %27 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call34 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %27)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.41, %if.else
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call36 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool37 = icmp ne i32 %call36, 0
  %lnot38 = xor i1 %tobool37, true
  br i1 %lnot38, label %for.body.39, label %for.end.43

for.body.39:                                      ; preds = %for.cond.35
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call40 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = bitcast i8* %call40 to %struct.term*
  call void @fol_NormalizeVarsIntern(%struct.term* %30)
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.39
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call42 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %31)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond.35

for.end.43:                                       ; preds = %for.cond.35
  br label %if.end

if.end:                                           ; preds = %for.end.43, %for.end.33
  br label %if.end.50

if.else.44:                                       ; preds = %entry
  %32 = load i32, i32* %Top, align 4
  %call45 = call i32 @symbol_IsVariable(i32 %32)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.else.44
  %33 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %34 = load i32, i32* %Top, align 4
  %call48 = call i8* @term_BindingValue(i32 %34)
  %35 = ptrtoint i8* %call48 to i32
  call void @term_RplacTop(%struct.term* %33, i32 %35)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.else.44
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @fol_NormalizeVarsStartingAt(%struct.term* %Formula, i32 %S) #0 {
entry:
  %Formula.addr = alloca %struct.term*, align 8
  %S.addr = alloca i32, align 4
  %old = alloca i32, align 4
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* @symbol_STANDARDVARCOUNTER, align 4
  store i32 %0, i32* %old, align 4
  %1 = load i32, i32* %S.addr, align 4
  call void @symbol_SetStandardVarCounter(i32 %1)
  call void @term_NewMark()
  %2 = load %struct.term*, %struct.term** %Formula.addr, align 8
  call void @fol_NormalizeVarsIntern(%struct.term* %2)
  %3 = load i32, i32* %old, align 4
  call void @symbol_SetStandardVarCounter(i32 %3)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_SetStandardVarCounter(i32 %Variable) #2 {
entry:
  %Variable.addr = alloca i32, align 4
  store i32 %Variable, i32* %Variable.addr, align 4
  %0 = load i32, i32* %Variable.addr, align 4
  store i32 %0, i32* @symbol_STANDARDVARCOUNTER, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @fol_RemoveImplied(%struct.term* %Formula) #0 {
entry:
  %Formula.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  %0 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call = call i32 @fol_IsLiteral(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.20, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  %call2 = call i32 @fol_IsQuantifier(i32 %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %2 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call5 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  call void @fol_RemoveImplied(%struct.term* %call5)
  br label %if.end.19

if.else:                                          ; preds = %if.then
  %3 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call6 = call i32 @term_TopSymbol(%struct.term* %3)
  %call7 = call i32 @fol_Implied()
  %call8 = call i32 @symbol_Equal(i32 %call6, i32 %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %4 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call11 = call i32 @fol_Implies()
  call void @term_RplacTop(%struct.term* %4, i32 %call11)
  %5 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %6 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call12 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  %call13 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %call12)
  call void @term_RplacArgumentList(%struct.term* %5, %struct.LIST_HELP* %call13)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  %7 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call14 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call17 to %struct.term*
  call void @fol_RemoveImplied(%struct.term* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %if.then.4
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_IsLiteral(%struct.term* %T) #2 {
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
define internal i32 @fol_Implied() #2 {
entry:
  %0 = load i32, i32* @fol_IMPLIED, align 4
  ret i32 %0
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
define internal i32 @fol_Implies() #2 {
entry:
  %0 = load i32, i32* @fol_IMPLIES, align 4
  ret i32 %0
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

declare %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define i32 @fol_VarOccursFreely(%struct.term* %Var, %struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Var.addr = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Stack = alloca i32, align 4
  %Top = alloca i32, align 4
  %Hit = alloca i32, align 4
  store %struct.term* %Var, %struct.term** %Var.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Stack, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call1, i32* %Top, align 4
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_IsComplex(%struct.term* %1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else.24

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %Top, align 4
  %call3 = call i32 @fol_IsQuantifier(i32 %2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  store i32 1, i32* %Hit, align 4
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %3)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %Hit, align 4
  %tobool9 = icmp ne i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %tobool9, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call10 to %struct.term*
  %call11 = call i32 @term_TopSymbol(%struct.term* %8)
  %9 = load %struct.term*, %struct.term** %Var.addr, align 8
  %call12 = call i32 @term_TopSymbol(%struct.term* %9)
  %call13 = call i32 @symbol_Equal(i32 %call11, i32 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %for.body
  store i32 0, i32* %Hit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i32, i32* %Hit, align 4
  %tobool17 = icmp ne i32 %11, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %for.end
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call19)
  %13 = bitcast %struct.LIST_HELP* %call20 to i8*
  call void @stack_Push(i8* %13)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %for.end
  br label %if.end.23

if.else:                                          ; preds = %if.then
  %14 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call22 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %14)
  %15 = bitcast %struct.LIST_HELP* %call22 to i8*
  call void @stack_Push(i8* %15)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.end.21
  br label %if.end.32

if.else.24:                                       ; preds = %do.body
  %16 = load i32, i32* %Top, align 4
  %call25 = call i32 @symbol_IsVariable(i32 %16)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.else.24
  %17 = load i32, i32* %Top, align 4
  %18 = load %struct.term*, %struct.term** %Var.addr, align 8
  %call27 = call i32 @term_TopSymbol(%struct.term* %18)
  %call28 = call i32 @symbol_Equal(i32 %17, i32 %call27)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %Stack, align 4
  call void @stack_SetBottom(i32 %19)
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true, %if.else.24
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.23
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.32
  %20 = load i32, i32* %Stack, align 4
  %call33 = call i32 @stack_Empty(i32 %20)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %land.end.39, label %land.rhs.35

land.rhs.35:                                      ; preds = %while.cond
  %call36 = call i8* @stack_Top()
  %21 = bitcast i8* %call36 to %struct.LIST_HELP*
  %call37 = call i32 @list_Empty(%struct.LIST_HELP* %21)
  %tobool38 = icmp ne i32 %call37, 0
  br label %land.end.39

land.end.39:                                      ; preds = %land.rhs.35, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %tobool38, %land.rhs.35 ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.39
  %call40 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end.39
  %23 = load i32, i32* %Stack, align 4
  %call41 = call i32 @stack_Empty(i32 %23)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.48, label %if.then.43

if.then.43:                                       ; preds = %while.end
  %call44 = call i8* @stack_Top()
  %24 = bitcast i8* %call44 to %struct.LIST_HELP*
  %call45 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call45 to %struct.term*
  store %struct.term* %25, %struct.term** %Term.addr, align 8
  %call46 = call i8* @stack_Top()
  %26 = bitcast i8* %call46 to %struct.LIST_HELP*
  %call47 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  %27 = bitcast %struct.LIST_HELP* %call47 to i8*
  call void @stack_RplacTop(i8* %27)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.48
  %28 = load i32, i32* %Stack, align 4
  %call49 = call i32 @stack_Empty(i32 %28)
  %tobool50 = icmp ne i32 %call49, 0
  %lnot = xor i1 %tobool50, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.30
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Bottom() #2 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  ret i32 %0
}

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
define internal void @stack_Push(i8* %Entry) #2 {
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
define internal void @stack_SetBottom(i32 %Ptr) #2 {
entry:
  %Ptr.addr = alloca i32, align 4
  store i32 %Ptr, i32* %Ptr.addr, align 4
  %0 = load i32, i32* %Ptr.addr, align 4
  store i32 %0, i32* @stack_POINTER, align 4
  ret void
}

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
define internal i8* @stack_Top() #2 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  %sub = sub i32 %0, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Pop() #2 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* @stack_POINTER, align 4
  ret i32 %dec
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @stack_RplacTop(i8* %Entry) #2 {
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Variables = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Stack = alloca i32, align 4
  %Top = alloca i32, align 4
  %BoundMark = alloca i32, align 4
  %FreeMark = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  call void @term_StartBinding()
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Variables, align 8
  %call1 = call i32 @stack_Bottom()
  store i32 %call1, i32* %Stack, align 4
  %call2 = call i32 @term_ActMark()
  store i32 %call2, i32* %BoundMark, align 4
  %call3 = call i32 @term_ActMark()
  store i32 %call3, i32* %FreeMark, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call4, i32* %Top, align 4
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_IsComplex(%struct.term* %1)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.else.50

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %Top, align 4
  %call6 = call i32 @fol_IsQuantifier(i32 %2)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %3)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call12 to %struct.term*
  %call13 = call i32 @term_TopSymbol(%struct.term* %6)
  %7 = load i32, i32* %FreeMark, align 4
  %call14 = call i32 @term_VarIsMarked(i32 %call13, i32 %7)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call17 to %struct.term*
  %call18 = call i32 @term_TopSymbol(%struct.term* %9)
  %10 = load i32, i32* %BoundMark, align 4
  call void @term_CreateBinding(i32 %call18, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call20 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  %13 = bitcast %struct.LIST_HELP* %call20 to i8*
  call void @stack_Push(i8* %13)
  %14 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call21 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %14)
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call21)
  %15 = bitcast %struct.LIST_HELP* %call22 to i8*
  call void @stack_Push(i8* %15)
  br label %if.end.49

if.else:                                          ; preds = %if.then
  %16 = load i32, i32* %Top, align 4
  %call23 = call i32 @fol_Varlist()
  %call24 = call i32 @symbol_Equal(i32 %16, i32 %call23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.46

if.then.26:                                       ; preds = %if.else
  %17 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call27 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %17)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.41, %if.then.26
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call29 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool30 = icmp ne i32 %call29, 0
  %lnot31 = xor i1 %tobool30, true
  br i1 %lnot31, label %for.body.32, label %for.end.43

for.body.32:                                      ; preds = %for.cond.28
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call33 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call33 to %struct.term*
  %call34 = call i32 @term_TopSymbol(%struct.term* %20)
  %21 = load i32, i32* %FreeMark, align 4
  %call35 = call i32 @term_VarIsMarked(i32 %call34, i32 %21)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.40, label %if.then.37

if.then.37:                                       ; preds = %for.body.32
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call38 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call38 to %struct.term*
  %call39 = call i32 @term_TopSymbol(%struct.term* %23)
  call void @term_CreateBinding(i32 %call39, i32 0)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %for.body.32
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call42 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.28

for.end.43:                                       ; preds = %for.cond.28
  %call44 = call i8* @stack_Top()
  %25 = bitcast i8* %call44 to %struct.LIST_HELP*
  %call45 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  %26 = bitcast %struct.LIST_HELP* %call45 to i8*
  call void @stack_RplacTop(i8* %26)
  br label %if.end.48

if.else.46:                                       ; preds = %if.else
  %27 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call47 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %27)
  %28 = bitcast %struct.LIST_HELP* %call47 to i8*
  call void @stack_Push(i8* %28)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %for.end.43
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %for.end
  br label %if.end.61

if.else.50:                                       ; preds = %do.body
  %29 = load i32, i32* %Top, align 4
  %call51 = call i32 @symbol_IsVariable(i32 %29)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %if.else.50
  %30 = load i32, i32* %Top, align 4
  %31 = load i32, i32* %FreeMark, align 4
  %call53 = call i32 @term_VarIsMarked(i32 %30, i32 %31)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.60, label %land.lhs.true.55

land.lhs.true.55:                                 ; preds = %land.lhs.true
  %32 = load i32, i32* %Top, align 4
  %33 = load i32, i32* %BoundMark, align 4
  %call56 = call i32 @term_VarIsMarked(i32 %32, i32 %33)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %land.lhs.true.55
  %34 = load %struct.term*, %struct.term** %Term.addr, align 8
  %35 = bitcast %struct.term* %34 to i8*
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  %call59 = call %struct.LIST_HELP* @list_Cons(i8* %35, %struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call59, %struct.LIST_HELP** %Variables, align 8
  %37 = load i32, i32* %Top, align 4
  %38 = load i32, i32* %FreeMark, align 4
  call void @term_CreateBinding(i32 %37, i32 %38)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %land.lhs.true.55, %land.lhs.true, %if.else.50
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.49
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.61
  %39 = load i32, i32* %Stack, align 4
  %call62 = call i32 @stack_Empty(i32 %39)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call64 = call i8* @stack_Top()
  %40 = bitcast i8* %call64 to %struct.LIST_HELP*
  %call65 = call i32 @list_Empty(%struct.LIST_HELP* %40)
  %tobool66 = icmp ne i32 %call65, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %41 = phi i1 [ false, %while.cond ], [ %tobool66, %land.rhs ]
  br i1 %41, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call67 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %42 = load i32, i32* %Stack, align 4
  %call68 = call i32 @stack_Empty(i32 %42)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end.75, label %if.then.70

if.then.70:                                       ; preds = %while.end
  %call71 = call i8* @stack_Top()
  %43 = bitcast i8* %call71 to %struct.LIST_HELP*
  %call72 = call i8* @list_Car(%struct.LIST_HELP* %43)
  %44 = bitcast i8* %call72 to %struct.term*
  store %struct.term* %44, %struct.term** %Term.addr, align 8
  %call73 = call i8* @stack_Top()
  %45 = bitcast i8* %call73 to %struct.LIST_HELP*
  %call74 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %45)
  %46 = bitcast %struct.LIST_HELP* %call74 to i8*
  call void @stack_RplacTop(i8* %46)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.70, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.75
  %47 = load i32, i32* %Stack, align 4
  %call76 = call i32 @stack_Empty(i32 %47)
  %tobool77 = icmp ne i32 %call76, 0
  %lnot78 = xor i1 %tobool77, true
  br i1 %lnot78, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call void @term_StopBinding()
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  ret %struct.LIST_HELP* %48
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_StartBinding() #2 {
entry:
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_ActMark() #2 {
entry:
  %MarkVar = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = load i32, i32* @term_MARK, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %call = call i32 @symbol_MaxVars()
  %cmp1 = icmp slt i32 %1, %call
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @term_NullMark()
  %conv = zext i32 %call2 to i64
  %2 = inttoptr i64 %conv to i8*
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3001 x [2 x i8*]], [3001 x [2 x i8*]]* @term_BIND, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx, i32 0, i64 0
  store i8* %2, i8** %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* @term_MARK, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %5 = load i32, i32* @term_MARK, align 4
  %inc4 = add i32 %5, 1
  store i32 %inc4, i32* @term_MARK, align 4
  store i32 %5, i32* %MarkVar, align 4
  %6 = load i32, i32* %MarkVar, align 4
  ret i32 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_VarIsMarked(i32 %Var, i32 %Mark) #2 {
entry:
  %Var.addr = alloca i32, align 4
  %Mark.addr = alloca i32, align 4
  store i32 %Var, i32* %Var.addr, align 4
  store i32 %Mark, i32* %Mark.addr, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %call = call i32 @term_BindingMark(i32 %0)
  %1 = load i32, i32* %Mark.addr, align 4
  %cmp = icmp uge i32 %call, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_CreateBinding(i32 %Var, i32 %Mark) #2 {
entry:
  %Var.addr = alloca i32, align 4
  %Mark.addr = alloca i32, align 4
  store i32 %Var, i32* %Var.addr, align 4
  store i32 %Mark, i32* %Mark.addr, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %1 = load i32, i32* %Mark.addr, align 4
  call void @term_SetBindingMark(i32 %0, i32 %1)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_StopBinding() #2 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @fol_BoundVariables(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %stack = alloca i32, align 4
  %result = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %stack, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %result, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %0)
  %call3 = call i32 @fol_IsQuantifier(i32 %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %2)
  %call5 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call4)
  %call6 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %1, %struct.LIST_HELP* %call5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %result, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call7)
  %4 = bitcast %struct.LIST_HELP* %call8 to i8*
  call void @stack_Push(i8* %4)
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call i32 @term_IsComplex(%struct.term* %5)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call12 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  %7 = bitcast %struct.LIST_HELP* %call12 to i8*
  call void @stack_Push(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.13
  %8 = load i32, i32* %stack, align 4
  %call14 = call i32 @stack_Empty(i32 %8)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call16 = call i8* @stack_Top()
  %9 = bitcast i8* %call16 to %struct.LIST_HELP*
  %call17 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool18 = icmp ne i32 %call17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool18, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call19 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %stack, align 4
  %call20 = call i32 @stack_Empty(i32 %11)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.27, label %if.then.22

if.then.22:                                       ; preds = %while.end
  %call23 = call i8* @stack_Top()
  %12 = bitcast i8* %call23 to %struct.LIST_HELP*
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call24 to %struct.term*
  store %struct.term* %13, %struct.term** %Term.addr, align 8
  %call25 = call i8* @stack_Top()
  %14 = bitcast i8* %call25 to %struct.LIST_HELP*
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  %15 = bitcast %struct.LIST_HELP* %call26 to i8*
  call void @stack_RplacTop(i8* %15)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.27
  %16 = load i32, i32* %stack, align 4
  %call28 = call i32 @stack_Empty(i32 %16)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot = xor i1 %tobool29, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call30 = call %struct.LIST_HELP* @term_DeleteDuplicatesFromList(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %result, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %18
}

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @term_DeleteDuplicatesFromList(%struct.LIST_HELP* %List) #2 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_DeleteDuplicates(%struct.LIST_HELP* %0, i32 (i8*, i8*)* bitcast (i32 (%struct.term*, %struct.term*)* @term_Equal to i32 (i8*, i8*)*))
  ret %struct.LIST_HELP* %call
}

; Function Attrs: nounwind uwtable
define void @fol_Free() #0 {
entry:
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @fol_SYMBOLS, align 8
  call void @list_Delete(%struct.LIST_HELP* %0)
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

; Function Attrs: nounwind uwtable
define i32 @fol_FormulaIsClause(%struct.term* %Formula) #0 {
entry:
  %retval = alloca i32, align 4
  %Formula.addr = alloca %struct.term*, align 8
  %LitList = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  %0 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %1 = load i32, i32* @fol_ALL, align 4
  %cmp = icmp eq i32 %call, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call1 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  store %struct.term* %call1, %struct.term** %Formula.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %3)
  %4 = load i32, i32* @fol_OR, align 4
  %cmp3 = icmp ne i32 %call2, %4
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %LitList, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.end.5
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call8 to %struct.term*
  %call9 = call i32 @fol_IsLiteral(%struct.term* %8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %while.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %LitList, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.11, %if.then.4
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @fol_FPrintOtterOptions(%struct._IO_FILE* %File, i32 %Equality, i32 %Options) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Equality.addr = alloca i32, align 4
  %Options.addr = alloca i32, align 4
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i32 %Equality, i32* %Equality.addr, align 4
  store i32 %Options, i32* %Options.addr, align 4
  %0 = load i32, i32* %Options.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.14
    i32 0, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), %struct._IO_FILE* %5)
  %6 = load i32, i32* %Equality.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.bb.12

sw.bb.12:                                         ; preds = %entry, %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call13 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), %struct._IO_FILE* %14)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call15 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %15)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call17 = call i32 @fflush(%struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.27, i32 0, i32 0), i32 575)
  %18 = load i32, i32* %Options.addr, align 4
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i32 0, i32 0), i32 %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call19 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %19)
  call void @misc_DumpCore()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.16, %sw.bb.14, %sw.bb.12
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %20)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @misc_ErrorReport(i8*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_DumpCore() #2 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %0)
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
define void @fol_FPrintOtter(%struct._IO_FILE* %File, %struct.LIST_HELP* %Formulae, i32 %Option) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Formulae.addr = alloca %struct.LIST_HELP*, align 8
  %Option.addr = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Equality = alloca i32, align 4
  %Formula = alloca %struct.term*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.LIST_HELP* %Formulae, %struct.LIST_HELP** %Formulae.addr, align 8
  store i32 %Option, i32* %Option.addr, align 4
  store i32 0, i32* %Equality, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Formulae.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
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
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call2 to %struct.LIST_HELP*
  %call3 = call i8* @list_PairSecond(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call3 to %struct.term*
  store %struct.term* %6, %struct.term** %Formula, align 8
  %7 = load %struct.term*, %struct.term** %Formula, align 8
  %call4 = call i32 @fol_Equality()
  %call5 = call i32 @term_ContainsSymbol(%struct.term* %7, i32 %call4)
  store i32 %call5, i32* %Equality, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %10 = load i32, i32* %Equality, align 4
  %11 = load i32, i32* %Option.addr, align 4
  call void @fol_FPrintOtterOptions(%struct._IO_FILE* %9, i32 %10, i32 %11)
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Formulae.addr, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.32, label %if.then

if.then:                                          ; preds = %for.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %13)
  %14 = load i32, i32* %Equality, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call12 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %15)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Formulae.addr, align 8
  store %struct.LIST_HELP* %16, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.28, %if.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot16 = xor i1 %tobool15, true
  br i1 %lnot16, label %for.body.17, label %for.end.30

for.body.17:                                      ; preds = %for.cond.13
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call18 to %struct.LIST_HELP*
  %call19 = call i8* @list_PairFirst(%struct.LIST_HELP* %19)
  %cmp = icmp ne i8* %call19, null
  br i1 %cmp, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %for.body.17
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call21 to %struct.LIST_HELP*
  %call22 = call i8* @list_PairFirst(%struct.LIST_HELP* %22)
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* %call22)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %for.body.17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call25 to %struct.LIST_HELP*
  %call26 = call i8* @list_PairSecond(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call26 to %struct.term*
  call void @fol_FPrintOtterFormula(%struct._IO_FILE* %23, %struct.term* %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call27 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %27)
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.24
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.13

for.end.30:                                       ; preds = %for.cond.13
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call31 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %29)
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.30, %for.end
  ret void
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

declare i32 @term_ContainsSymbol(%struct.term*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Equality() #2 {
entry:
  %0 = load i32, i32* @fol_EQUALITY, align 4
  ret i32 %0
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

; Function Attrs: nounwind uwtable
define internal void @fol_FPrintOtterFormula(%struct._IO_FILE* %File, %struct.term* %Formula) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Formula.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Scan62 = alloca %struct.LIST_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  %0 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load i32, i32* %Top, align 4
  %call1 = call i32 @symbol_IsPredicate(i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else.9

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %Top, align 4
  %call2 = call i32 @fol_Equality()
  %call3 = call i32 @symbol_Equal(i32 %2, i32 %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %4 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call6 = call %struct.term* @term_FirstArgument(%struct.term* %4)
  call void @term_FPrintOtterPrefix(%struct._IO_FILE* %3, %struct.term* %call6)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %7 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call8 = call %struct.term* @term_SecondArgument(%struct.term* %7)
  call void @term_FPrintOtterPrefix(%struct._IO_FILE* %6, %struct.term* %call8)
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %9 = load %struct.term*, %struct.term** %Formula.addr, align 8
  call void @term_FPrintOtterPrefix(%struct._IO_FILE* %8, %struct.term* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.116

if.else.9:                                        ; preds = %entry
  %10 = load i32, i32* %Top, align 4
  %call10 = call i32 @fol_IsQuantifier(i32 %10)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.38

if.then.12:                                       ; preds = %if.else.9
  %11 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call13 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %11)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot = xor i1 %tobool15, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %Top, align 4
  %call16 = call i32 @fol_All()
  %call17 = call i32 @symbol_Equal(i32 %13, i32 %call16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %for.body
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), %struct._IO_FILE* %14)
  br label %if.end.23

if.else.21:                                       ; preds = %for.body
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call22 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), %struct._IO_FILE* %15)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.19
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call24 to %struct.term*
  call void @term_FPrintOtterPrefix(%struct._IO_FILE* %16, %struct.term* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call25 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), %struct._IO_FILE* %19)
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %22 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call27 = call %struct.term* @term_SecondArgument(%struct.term* %22)
  call void @fol_FPrintOtterFormula(%struct._IO_FILE* %21, %struct.term* %call27)
  %23 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call28 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %23)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.35, %for.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call30 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool31 = icmp ne i32 %call30, 0
  %lnot32 = xor i1 %tobool31, true
  br i1 %lnot32, label %for.body.33, label %for.end.37

for.body.33:                                      ; preds = %for.cond.29
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call34 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0), %struct._IO_FILE* %25)
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.33
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call36 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.29

for.end.37:                                       ; preds = %for.cond.29
  br label %if.end.115

if.else.38:                                       ; preds = %if.else.9
  %27 = load i32, i32* %Top, align 4
  %call39 = call i32 @fol_Not()
  %call40 = call i32 @symbol_Equal(i32 %27, i32 %call39)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.46

if.then.42:                                       ; preds = %if.else.38
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call43 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), %struct._IO_FILE* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %30 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call44 = call %struct.term* @term_FirstArgument(%struct.term* %30)
  call void @fol_FPrintOtterFormula(%struct._IO_FILE* %29, %struct.term* %call44)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call45 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0), %struct._IO_FILE* %31)
  br label %if.end.114

if.else.46:                                       ; preds = %if.else.38
  %32 = load i32, i32* %Top, align 4
  %call47 = call i32 @fol_And()
  %call48 = call i32 @symbol_Equal(i32 %32, i32 %call47)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.46
  %33 = load i32, i32* %Top, align 4
  %call50 = call i32 @fol_Or()
  %call51 = call i32 @symbol_Equal(i32 %33, i32 %call50)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.61, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false
  %34 = load i32, i32* %Top, align 4
  %call54 = call i32 @fol_Equiv()
  %call55 = call i32 @symbol_Equal(i32 %34, i32 %call54)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.61, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.53
  %35 = load i32, i32* %Top, align 4
  %call58 = call i32 @fol_Implies()
  %call59 = call i32 @symbol_Equal(i32 %35, i32 %call58)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.113

if.then.61:                                       ; preds = %lor.lhs.false.57, %lor.lhs.false.53, %lor.lhs.false, %if.else.46
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call63 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0), %struct._IO_FILE* %36)
  %37 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call64 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %37)
  store %struct.LIST_HELP* %call64, %struct.LIST_HELP** %Scan62, align 8
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.109, %if.then.61
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan62, align 8
  %call66 = call i32 @list_Empty(%struct.LIST_HELP* %38)
  %tobool67 = icmp ne i32 %call66, 0
  %lnot68 = xor i1 %tobool67, true
  br i1 %lnot68, label %for.body.69, label %for.end.111

for.body.69:                                      ; preds = %for.cond.65
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan62, align 8
  %call70 = call i8* @list_Car(%struct.LIST_HELP* %39)
  %40 = bitcast i8* %call70 to %struct.term*
  %call71 = call i32 @fol_IsLiteral(%struct.term* %40)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %for.body.69
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan62, align 8
  %call74 = call i8* @list_Car(%struct.LIST_HELP* %42)
  %43 = bitcast i8* %call74 to %struct.term*
  call void @fol_FPrintOtterFormula(%struct._IO_FILE* %41, %struct.term* %43)
  br label %if.end.79

if.else.75:                                       ; preds = %for.body.69
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call76 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0), %struct._IO_FILE* %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan62, align 8
  %call77 = call i8* @list_Car(%struct.LIST_HELP* %46)
  %47 = bitcast i8* %call77 to %struct.term*
  call void @fol_FPrintOtterFormula(%struct._IO_FILE* %45, %struct.term* %47)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call78 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0), %struct._IO_FILE* %48)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.75, %if.then.73
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan62, align 8
  %call80 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %49)
  %call81 = call i32 @list_Empty(%struct.LIST_HELP* %call80)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.end.108, label %if.then.83

if.then.83:                                       ; preds = %if.end.79
  %50 = load i32, i32* %Top, align 4
  %call84 = call i32 @fol_And()
  %call85 = call i32 @symbol_Equal(i32 %50, i32 %call84)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.then.83
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call88 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), %struct._IO_FILE* %51)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %if.then.83
  %52 = load i32, i32* %Top, align 4
  %call90 = call i32 @fol_Or()
  %call91 = call i32 @symbol_Equal(i32 %52, i32 %call90)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.end.89
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call94 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), %struct._IO_FILE* %53)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.end.89
  %54 = load i32, i32* %Top, align 4
  %call96 = call i32 @fol_Equiv()
  %call97 = call i32 @symbol_Equal(i32 %54, i32 %call96)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.end.95
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call100 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), %struct._IO_FILE* %55)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.end.95
  %56 = load i32, i32* %Top, align 4
  %call102 = call i32 @fol_Implies()
  %call103 = call i32 @symbol_Equal(i32 %56, i32 %call102)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.end.101
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call106 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), %struct._IO_FILE* %57)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.end.101
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.79
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan62, align 8
  %call110 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %58)
  store %struct.LIST_HELP* %call110, %struct.LIST_HELP** %Scan62, align 8
  br label %for.cond.65

for.end.111:                                      ; preds = %for.cond.65
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call112 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0), %struct._IO_FILE* %59)
  br label %if.end.113

if.end.113:                                       ; preds = %for.end.111, %lor.lhs.false.57
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.42
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %for.end.37
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @fol_FPrintDFGSignature(%struct._IO_FILE* %File) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %symbol = alloca i32, align 4
  %functions = alloca %struct.LIST_HELP*, align 8
  %predicates = alloca %struct.LIST_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  %call = call %struct.LIST_HELP* @symbol_GetAllFunctions()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %functions, align 8
  %call1 = call %struct.LIST_HELP* @fol_GetNonFOLPredicates()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %predicates, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %functions, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.19, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), %struct._IO_FILE* %1)
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %functions, align 8
  %call4 = call i8* @list_Top(%struct.LIST_HELP* %2)
  %3 = ptrtoint i8* %call4 to i32
  store i32 %3, i32* %symbol, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %5 = load i32, i32* %symbol, align 4
  %call5 = call i8* @symbol_Name(i32 %5)
  %6 = load i32, i32* %symbol, align 4
  %call6 = call i32 @symbol_Arity(i32 %6)
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* %call5, i32 %call6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %functions, align 8
  %call8 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %functions, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %functions, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %do.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call12 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %do.body
  %10 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %10, 15
  br i1 %cmp, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %12)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %functions, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot = xor i1 %tobool17, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %14)
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %entry
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicates, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.47, label %if.then.22

if.then.22:                                       ; preds = %if.end.19
  store i32 0, i32* %i, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call23 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %16)
  br label %do.body.24

do.body.24:                                       ; preds = %do.cond.41, %if.then.22
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicates, align 8
  %call25 = call i8* @list_Top(%struct.LIST_HELP* %17)
  %18 = ptrtoint i8* %call25 to i32
  store i32 %18, i32* %symbol, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %20 = load i32, i32* %symbol, align 4
  %call26 = call i8* @symbol_Name(i32 %20)
  %21 = load i32, i32* %symbol, align 4
  %call27 = call i32 @symbol_Arity(i32 %21)
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* %call26, i32 %call27)
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicates, align 8
  %call29 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %predicates, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicates, align 8
  %call30 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %do.body.24
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call33 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %24)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %do.body.24
  %25 = load i32, i32* %i, align 4
  %cmp35 = icmp ult i32 %25, 15
  br i1 %cmp35, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.end.34
  %26 = load i32, i32* %i, align 4
  %inc37 = add i32 %26, 1
  store i32 %inc37, i32* %i, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %if.end.34
  store i32 0, i32* %i, align 4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call39 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %27)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.36
  br label %do.cond.41

do.cond.41:                                       ; preds = %if.end.40
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicates, align 8
  %call42 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool43 = icmp ne i32 %call42, 0
  %lnot44 = xor i1 %tobool43, true
  br i1 %lnot44, label %do.body.24, label %do.end.45

do.end.45:                                        ; preds = %do.cond.41
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call46 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %29)
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.45, %if.end.19
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicates, align 8
  call void @list_Delete(%struct.LIST_HELP* %30)
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %functions, align 8
  call void @list_Delete(%struct.LIST_HELP* %31)
  ret void
}

declare %struct.LIST_HELP* @symbol_GetAllFunctions() #1

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Top(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Arity(i32 %ActSymbol) #2 {
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

; Function Attrs: nounwind uwtable
define void @fol_FPrintDFG(%struct._IO_FILE* %File, %struct.term* %Term) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Term.addr = alloca %struct.term*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.15

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  %call2 = call i32 @fol_IsQuantifier(i32 %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %3)
  call void @symbol_FPrint(%struct._IO_FILE* %2, i32 %call5)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %6)
  call void @fol_TermListFPrintDFG(%struct._IO_FILE* %5, %struct.LIST_HELP* %call7)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.term* @term_SecondArgument(%struct.term* %9)
  call void @fol_FPrintDFG(%struct._IO_FILE* %8, %struct.term* %call9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call10 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %10)
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call11 = call i32 @term_TopSymbol(%struct.term* %12)
  call void @symbol_FPrint(%struct._IO_FILE* %11, i32 %call11)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call12 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %15 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call13 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %15)
  call void @fol_TermListFPrintDFG(%struct._IO_FILE* %14, %struct.LIST_HELP* %call13)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call14 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.17

if.else.15:                                       ; preds = %entry
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %18 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call16 = call i32 @term_TopSymbol(%struct.term* %18)
  call void @symbol_FPrint(%struct._IO_FILE* %17, i32 %call16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.end
  ret void
}

declare void @symbol_FPrint(%struct._IO_FILE*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @fol_TermListFPrintDFG(%struct._IO_FILE* %File, %struct.LIST_HELP* %List) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.term*
  call void @fol_FPrintDFG(%struct._IO_FILE* %1, %struct.term* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call5 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %List.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @fol_PrintDFG(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @fol_FPrintDFG(%struct._IO_FILE* %0, %struct.term* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @fol_PrintPrecedence(i32* %Precedence) #0 {
entry:
  %Precedence.addr = alloca i32*, align 8
  %Symbols = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Symbol = alloca i32, align 4
  %Index = alloca i32, align 4
  %S = alloca %struct.signature*, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call i32 @symbol_SignatureExists()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Symbols, align 8
  store i32 1, i32* %Index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %0 = load i32, i32* %Index, align 4
  %1 = load i32, i32* @symbol_ACTINDEX, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %Index, align 4
  %call2 = call %struct.signature* @symbol_Signature(i32 %2)
  store %struct.signature* %call2, %struct.signature** %S, align 8
  %3 = load %struct.signature*, %struct.signature** %S, align 8
  %cmp3 = icmp ne %struct.signature* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %for.body
  %4 = load %struct.signature*, %struct.signature** %S, align 8
  %info = getelementptr inbounds %struct.signature, %struct.signature* %4, i32 0, i32 5
  %5 = load i32, i32* %info, align 4
  store i32 %5, i32* %Symbol, align 4
  %6 = load i32, i32* %Symbol, align 4
  %call5 = call i32 @symbol_IsPredicate(i32 %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.4
  %7 = load i32, i32* %Symbol, align 4
  %call7 = call i32 @symbol_IsFunction(i32 %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then.4
  %8 = load i32, i32* %Symbol, align 4
  %call9 = call i32 @fol_IsPredefinedPred(i32 %8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  %9 = load i32, i32* %Symbol, align 4
  %conv = sext i32 %9 to i64
  %10 = inttoptr i64 %conv to i8*
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  %call12 = call %struct.LIST_HELP* @list_Cons(i8* %10, %struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Symbols, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true, %lor.lhs.false
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %12 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  %14 = load i32*, i32** %Precedence.addr, align 8
  %call14 = call %struct.LIST_HELP* @symbol_SortByPrecedence(%struct.LIST_HELP* %13, i32* %14)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Symbols, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  store %struct.LIST_HELP* %15, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.29, %for.end
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot = xor i1 %tobool17, true
  br i1 %lnot, label %for.body.18, label %for.end.31

for.body.18:                                      ; preds = %for.cond.15
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = ptrtoint i8* %call19 to i32
  %call20 = call i32 @symbol_Index(i32 %18)
  %call21 = call %struct.signature* @symbol_Signature(i32 %call20)
  store %struct.signature* %call21, %struct.signature** %S, align 8
  %19 = load %struct.signature*, %struct.signature** %S, align 8
  %name = getelementptr inbounds %struct.signature, %struct.signature* %19, i32 0, i32 0
  %20 = load i8*, i8** %name, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call22 = call i32 @fputs(i8* %20, %struct._IO_FILE* %21)
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call23 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  %call24 = call i32 @list_Empty(%struct.LIST_HELP* %call23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %for.body.18
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call27 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), %struct._IO_FILE* %23)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %for.body.18
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.15

for.end.31:                                       ; preds = %for.cond.15
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  call void @list_Delete(%struct.LIST_HELP* %25)
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.31, %entry
  ret void
}

declare i32 @symbol_SignatureExists() #1

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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsFunction(i32 %S) #2 {
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

declare %struct.LIST_HELP* @symbol_SortByPrecedence(%struct.LIST_HELP*, i32*) #1

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

; Function Attrs: nounwind uwtable
define void @fol_FPrintPrecedence(%struct._IO_FILE* %File, i32* %Precedence) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Symbols = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Symbol = alloca i32, align 4
  %Index = alloca i32, align 4
  %S = alloca %struct.signature*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call i32 @symbol_SignatureExists()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.53

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Symbols, align 8
  store i32 1, i32* %Index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %0 = load i32, i32* %Index, align 4
  %1 = load i32, i32* @symbol_ACTINDEX, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %Index, align 4
  %call2 = call %struct.signature* @symbol_Signature(i32 %2)
  store %struct.signature* %call2, %struct.signature** %S, align 8
  %3 = load %struct.signature*, %struct.signature** %S, align 8
  %cmp3 = icmp ne %struct.signature* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %for.body
  %4 = load %struct.signature*, %struct.signature** %S, align 8
  %info = getelementptr inbounds %struct.signature, %struct.signature* %4, i32 0, i32 5
  %5 = load i32, i32* %info, align 4
  store i32 %5, i32* %Symbol, align 4
  %6 = load i32, i32* %Symbol, align 4
  %call5 = call i32 @symbol_IsPredicate(i32 %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.4
  %7 = load i32, i32* %Symbol, align 4
  %call7 = call i32 @symbol_IsFunction(i32 %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then.4
  %8 = load i32, i32* %Symbol, align 4
  %call9 = call i32 @fol_IsPredefinedPred(i32 %8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  %9 = load i32, i32* %Symbol, align 4
  %conv = sext i32 %9 to i64
  %10 = inttoptr i64 %conv to i8*
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  %call12 = call %struct.LIST_HELP* @list_Cons(i8* %10, %struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Symbols, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true, %lor.lhs.false
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %12 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  %14 = load i32*, i32** %Precedence.addr, align 8
  %call14 = call %struct.LIST_HELP* @symbol_SortByPrecedence(%struct.LIST_HELP* %13, i32* %14)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Symbols, align 8
  store i32 0, i32* %Index, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call15 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), %struct._IO_FILE* %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  store %struct.LIST_HELP* %16, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.49, %for.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call17 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool18 = icmp ne i32 %call17, 0
  %lnot = xor i1 %tobool18, true
  br i1 %lnot, label %for.body.19, label %for.end.51

for.body.19:                                      ; preds = %for.cond.16
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = ptrtoint i8* %call20 to i32
  %call21 = call i32 @symbol_Index(i32 %19)
  %call22 = call %struct.signature* @symbol_Signature(i32 %call21)
  store %struct.signature* %call22, %struct.signature** %S, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call23 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %20)
  %21 = load %struct.signature*, %struct.signature** %S, align 8
  %name = getelementptr inbounds %struct.signature, %struct.signature* %21, i32 0, i32 0
  %22 = load i8*, i8** %name, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call24 = call i32 @fputs(i8* %22, %struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call25 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %26 = load %struct.signature*, %struct.signature** %S, align 8
  %weight = getelementptr inbounds %struct.signature, %struct.signature* %26, i32 0, i32 2
  %27 = load i32, i32* %weight, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i32 %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call27 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %28)
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = ptrtoint i8* %call28 to i32
  %call29 = call i32 @symbol_HasProperty(i32 %30, i32 8)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.19
  br label %cond.end

cond.false:                                       ; preds = %for.body.19
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call31 = call i8* @list_Car(%struct.LIST_HELP* %31)
  %32 = ptrtoint i8* %call31 to i32
  %call32 = call i32 @symbol_HasProperty(i32 %32, i32 16)
  %tobool33 = icmp ne i32 %call32, 0
  %cond = select i1 %tobool33, i32 109, i32 108
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond34 = phi i32 [ 114, %cond.true ], [ %cond, %cond.false ]
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call35 = call i32 @_IO_putc(i32 %cond34, %struct._IO_FILE* %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call36 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %34)
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call37 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %35)
  %call38 = call i32 @list_Empty(%struct.LIST_HELP* %call37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.42, label %if.then.40

if.then.40:                                       ; preds = %cond.end
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call41 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %36)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %cond.end
  %37 = load i32, i32* %Index, align 4
  %cmp43 = icmp sgt i32 %37, 15
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.end.42
  store i32 0, i32* %Index, align 4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call46 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %38)
  br label %if.end.48

if.else:                                          ; preds = %if.end.42
  %39 = load i32, i32* %Index, align 4
  %inc47 = add nsw i32 %39, 1
  store i32 %inc47, i32* %Index, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.45
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call50 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %40)
  store %struct.LIST_HELP* %call50, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.16

for.end.51:                                       ; preds = %for.cond.16
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call52 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), %struct._IO_FILE* %41)
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  call void @list_Delete(%struct.LIST_HELP* %42)
  br label %if.end.53

if.end.53:                                        ; preds = %for.end.51, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_HasProperty(i32 %ActSymbol, i32 %Property) #2 {
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
define void @fol_FPrintDFGProblem(%struct._IO_FILE* %File, i8* %Name, i8* %Author, i8* %Status, i8* %Description, %struct.LIST_HELP* %Axioms, %struct.LIST_HELP* %Conjectures) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Name.addr = alloca i8*, align 8
  %Author.addr = alloca i8*, align 8
  %Status.addr = alloca i8*, align 8
  %Description.addr = alloca i8*, align 8
  %Axioms.addr = alloca %struct.LIST_HELP*, align 8
  %Conjectures.addr = alloca %struct.LIST_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i8* %Name, i8** %Name.addr, align 8
  store i8* %Author, i8** %Author.addr, align 8
  store i8* %Status, i8** %Status.addr, align 8
  store i8* %Description, i8** %Description.addr, align 8
  store %struct.LIST_HELP* %Axioms, %struct.LIST_HELP** %Axioms.addr, align 8
  store %struct.LIST_HELP* %Conjectures, %struct.LIST_HELP** %Conjectures.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i32 0, i32 0), %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %3 = load i8*, i8** %Name.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %5 = load i8*, i8** %Author.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %7 = load i8*, i8** %Status.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %9 = load i8*, i8** %Description.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0), i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0), %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  call void @fol_FPrintDFGSignature(%struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms.addr, align 8
  call void @fol_FPrintFormulaList(%struct._IO_FILE* %14, %struct.LIST_HELP* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conjectures.addr, align 8
  call void @fol_FPrintFormulaList(%struct._IO_FILE* %16, %struct.LIST_HELP* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), %struct._IO_FILE* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fol_FPrintFormulaList(%struct._IO_FILE* %File, %struct.LIST_HELP* %Formulas, i8* %Name) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Formulas.addr = alloca %struct.LIST_HELP*, align 8
  %Name.addr = alloca i8*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.LIST_HELP* %Formulas, %struct.LIST_HELP** %Formulas.addr, align 8
  store i8* %Name, i8** %Name.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load i8*, i8** %Name.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* %1, %struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), %struct._IO_FILE* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Formulas.addr, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call5 to %struct.term*
  call void @fol_FPrintDFG(%struct._IO_FILE* %7, %struct.term* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), %struct._IO_FILE* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @fol_AssocEquation(%struct.term* %Term, i32* %Result) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Result.addr = alloca i32*, align 8
  %Top = alloca i32, align 4
  %Left = alloca %struct.term*, align 8
  %Right = alloca %struct.term*, align 8
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %v3 = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32* %Result, i32** %Result.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @fol_IsEquality(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.67

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.term* @term_FirstArgument(%struct.term* %1)
  store %struct.term* %call1, %struct.term** %Left, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  store %struct.term* %call2, %struct.term** %Right, align 8
  %3 = load %struct.term*, %struct.term** %Left, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call3, i32* %Top, align 4
  %4 = load i32, i32* %Top, align 4
  %call4 = call i32 @symbol_IsFunction(i32 %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.66

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, i32* %Top, align 4
  %call6 = call i32 @symbol_Arity(i32 %5)
  %cmp = icmp eq i32 %call6, 2
  br i1 %cmp, label %land.lhs.true.7, label %if.end.66

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %Top, align 4
  %7 = load %struct.term*, %struct.term** %Right, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %7)
  %call9 = call i32 @symbol_Equal(i32 %6, i32 %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.66

if.then.11:                                       ; preds = %land.lhs.true.7
  %8 = load %struct.term*, %struct.term** %Left, align 8
  %call12 = call %struct.term* @term_FirstArgument(%struct.term* %8)
  %call13 = call i32 @term_IsVariable(%struct.term* %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.11
  %9 = load %struct.term*, %struct.term** %Left, align 8
  %call16 = call %struct.term* @term_FirstArgument(%struct.term* %9)
  %call17 = call i32 @term_TopSymbol(%struct.term* %call16)
  store i32 %call17, i32* %v1, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.then.11
  %10 = load %struct.term*, %struct.term** %Right, align 8
  %call18 = call %struct.term* @term_FirstArgument(%struct.term* %10)
  %call19 = call i32 @term_IsVariable(%struct.term* %call18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.else
  %11 = load %struct.term*, %struct.term** %Right, align 8
  store %struct.term* %11, %struct.term** %Term.addr, align 8
  %12 = load %struct.term*, %struct.term** %Left, align 8
  store %struct.term* %12, %struct.term** %Right, align 8
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %13, %struct.term** %Left, align 8
  %14 = load %struct.term*, %struct.term** %Left, align 8
  %call22 = call %struct.term* @term_FirstArgument(%struct.term* %14)
  %call23 = call i32 @term_TopSymbol(%struct.term* %call22)
  store i32 %call23, i32* %v1, align 4
  br label %if.end

if.else.24:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then.15
  %15 = load %struct.term*, %struct.term** %Left, align 8
  %call26 = call %struct.term* @term_SecondArgument(%struct.term* %15)
  %call27 = call i32 @term_TopSymbol(%struct.term* %call26)
  %16 = load i32, i32* %Top, align 4
  %call28 = call i32 @symbol_Equal(i32 %call27, i32 %16)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.65

land.lhs.true.30:                                 ; preds = %if.end.25
  %17 = load %struct.term*, %struct.term** %Left, align 8
  %call31 = call %struct.term* @term_SecondArgument(%struct.term* %17)
  %call32 = call %struct.term* @term_FirstArgument(%struct.term* %call31)
  %call33 = call i32 @term_TopSymbol(%struct.term* %call32)
  store i32 %call33, i32* %v2, align 4
  %call34 = call i32 @symbol_IsVariable(i32 %call33)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.65

land.lhs.true.36:                                 ; preds = %land.lhs.true.30
  %18 = load %struct.term*, %struct.term** %Left, align 8
  %call37 = call %struct.term* @term_SecondArgument(%struct.term* %18)
  %call38 = call %struct.term* @term_SecondArgument(%struct.term* %call37)
  %call39 = call i32 @term_TopSymbol(%struct.term* %call38)
  store i32 %call39, i32* %v3, align 4
  %call40 = call i32 @symbol_IsVariable(i32 %call39)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.65

land.lhs.true.42:                                 ; preds = %land.lhs.true.36
  %19 = load %struct.term*, %struct.term** %Right, align 8
  %call43 = call %struct.term* @term_FirstArgument(%struct.term* %19)
  %call44 = call i32 @term_TopSymbol(%struct.term* %call43)
  %20 = load i32, i32* %Top, align 4
  %call45 = call i32 @symbol_Equal(i32 %call44, i32 %20)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %land.lhs.true.47, label %if.end.65

land.lhs.true.47:                                 ; preds = %land.lhs.true.42
  %21 = load i32, i32* %v1, align 4
  %22 = load %struct.term*, %struct.term** %Right, align 8
  %call48 = call %struct.term* @term_FirstArgument(%struct.term* %22)
  %call49 = call %struct.term* @term_FirstArgument(%struct.term* %call48)
  %call50 = call i32 @term_TopSymbol(%struct.term* %call49)
  %call51 = call i32 @symbol_Equal(i32 %21, i32 %call50)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.65

land.lhs.true.53:                                 ; preds = %land.lhs.true.47
  %23 = load i32, i32* %v2, align 4
  %24 = load %struct.term*, %struct.term** %Right, align 8
  %call54 = call %struct.term* @term_FirstArgument(%struct.term* %24)
  %call55 = call %struct.term* @term_SecondArgument(%struct.term* %call54)
  %call56 = call i32 @term_TopSymbol(%struct.term* %call55)
  %call57 = call i32 @symbol_Equal(i32 %23, i32 %call56)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.65

land.lhs.true.59:                                 ; preds = %land.lhs.true.53
  %25 = load i32, i32* %v3, align 4
  %26 = load %struct.term*, %struct.term** %Right, align 8
  %call60 = call %struct.term* @term_SecondArgument(%struct.term* %26)
  %call61 = call i32 @term_TopSymbol(%struct.term* %call60)
  %call62 = call i32 @symbol_Equal(i32 %25, i32 %call61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.lhs.true.59
  %27 = load i32, i32* %Top, align 4
  %28 = load i32*, i32** %Result.addr, align 8
  store i32 %27, i32* %28, align 4
  store i32 1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %land.lhs.true.59, %land.lhs.true.53, %land.lhs.true.47, %land.lhs.true.42, %land.lhs.true.36, %land.lhs.true.30, %if.end.25
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %land.lhs.true.7, %land.lhs.true, %if.then
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.then.64, %if.else.24
  %29 = load i32, i32* %retval
  ret i32 %29
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
define internal i32 @term_IsVariable(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsVariable(i32 %call)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @fol_DistributiveEquation(%struct.term* %Term, i32* %Addition, i32* %Multiplication) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Addition.addr = alloca i32*, align 8
  %Multiplication.addr = alloca i32*, align 8
  %left = alloca %struct.term*, align 8
  %right = alloca %struct.term*, align 8
  %help = alloca %struct.term*, align 8
  %v1 = alloca %struct.term*, align 8
  %v2 = alloca %struct.term*, align 8
  %v3 = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32* %Addition, i32** %Addition.addr, align 8
  store i32* %Multiplication, i32** %Multiplication.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @fol_IsEquality(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.term* @term_FirstArgument(%struct.term* %1)
  store %struct.term* %call1, %struct.term** %left, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  store %struct.term* %call2, %struct.term** %right, align 8
  %3 = load %struct.term*, %struct.term** %left, align 8
  %4 = load %struct.term*, %struct.term** %right, align 8
  %call3 = call i32 @term_EqualTopSymbols(%struct.term* %3, %struct.term* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.term*, %struct.term** %left, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %5)
  %call6 = call i32 @symbol_IsFunction(i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %lor.lhs.false.8, label %if.then.19

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %6 = load %struct.term*, %struct.term** %right, align 8
  %call9 = call i32 @term_TopSymbol(%struct.term* %6)
  %call10 = call i32 @symbol_IsFunction(i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.lhs.false.12, label %if.then.19

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.8
  %7 = load %struct.term*, %struct.term** %left, align 8
  %call13 = call i32 @term_TopSymbol(%struct.term* %7)
  %call14 = call i32 @symbol_Arity(i32 %call13)
  %cmp = icmp ne i32 %call14, 2
  br i1 %cmp, label %if.then.19, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %8 = load %struct.term*, %struct.term** %right, align 8
  %call16 = call i32 @term_TopSymbol(%struct.term* %8)
  %call17 = call i32 @symbol_Arity(i32 %call16)
  %cmp18 = icmp ne i32 %call17, 2
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false.8, %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %lor.lhs.false.15
  %9 = load %struct.term*, %struct.term** %left, align 8
  %call21 = call %struct.term* @term_FirstArgument(%struct.term* %9)
  %call22 = call i32 @term_IsVariable(%struct.term* %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.20
  %10 = load %struct.term*, %struct.term** %left, align 8
  %call25 = call %struct.term* @term_FirstArgument(%struct.term* %10)
  store %struct.term* %call25, %struct.term** %v1, align 8
  br label %if.end.33

if.else:                                          ; preds = %if.end.20
  %11 = load %struct.term*, %struct.term** %right, align 8
  %call26 = call %struct.term* @term_FirstArgument(%struct.term* %11)
  %call27 = call i32 @term_IsVariable(%struct.term* %call26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %if.else
  %12 = load %struct.term*, %struct.term** %right, align 8
  store %struct.term* %12, %struct.term** %help, align 8
  %13 = load %struct.term*, %struct.term** %left, align 8
  store %struct.term* %13, %struct.term** %right, align 8
  %14 = load %struct.term*, %struct.term** %help, align 8
  store %struct.term* %14, %struct.term** %left, align 8
  %15 = load %struct.term*, %struct.term** %left, align 8
  %call30 = call %struct.term* @term_FirstArgument(%struct.term* %15)
  store %struct.term* %call30, %struct.term** %v1, align 8
  br label %if.end.32

if.else.31:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.24
  %16 = load %struct.term*, %struct.term** %left, align 8
  %17 = load %struct.term*, %struct.term** %right, align 8
  %call34 = call %struct.term* @term_FirstArgument(%struct.term* %17)
  %call35 = call i32 @term_EqualTopSymbols(%struct.term* %16, %struct.term* %call34)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %lor.lhs.false.37, label %if.then.45

lor.lhs.false.37:                                 ; preds = %if.end.33
  %18 = load %struct.term*, %struct.term** %left, align 8
  %19 = load %struct.term*, %struct.term** %right, align 8
  %call38 = call %struct.term* @term_SecondArgument(%struct.term* %19)
  %call39 = call i32 @term_EqualTopSymbols(%struct.term* %18, %struct.term* %call38)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %lor.lhs.false.41, label %if.then.45

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.37
  %20 = load %struct.term*, %struct.term** %left, align 8
  %call42 = call %struct.term* @term_SecondArgument(%struct.term* %20)
  %21 = load %struct.term*, %struct.term** %right, align 8
  %call43 = call i32 @term_EqualTopSymbols(%struct.term* %call42, %struct.term* %21)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %lor.lhs.false.41, %lor.lhs.false.37, %if.end.33
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %lor.lhs.false.41
  %22 = load %struct.term*, %struct.term** %left, align 8
  %call47 = call %struct.term* @term_SecondArgument(%struct.term* %22)
  %call48 = call %struct.term* @term_FirstArgument(%struct.term* %call47)
  store %struct.term* %call48, %struct.term** %v2, align 8
  %23 = load %struct.term*, %struct.term** %left, align 8
  %call49 = call %struct.term* @term_SecondArgument(%struct.term* %23)
  %call50 = call %struct.term* @term_SecondArgument(%struct.term* %call49)
  store %struct.term* %call50, %struct.term** %v3, align 8
  %24 = load %struct.term*, %struct.term** %v2, align 8
  %call51 = call i32 @term_IsVariable(%struct.term* %24)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %land.lhs.true, label %if.end.78

land.lhs.true:                                    ; preds = %if.end.46
  %25 = load %struct.term*, %struct.term** %v3, align 8
  %call53 = call i32 @term_IsVariable(%struct.term* %25)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.78

land.lhs.true.55:                                 ; preds = %land.lhs.true
  %26 = load %struct.term*, %struct.term** %right, align 8
  %call56 = call %struct.term* @term_FirstArgument(%struct.term* %26)
  %call57 = call %struct.term* @term_FirstArgument(%struct.term* %call56)
  %27 = load %struct.term*, %struct.term** %v1, align 8
  %call58 = call i32 @term_EqualTopSymbols(%struct.term* %call57, %struct.term* %27)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %land.lhs.true.60, label %if.end.78

land.lhs.true.60:                                 ; preds = %land.lhs.true.55
  %28 = load %struct.term*, %struct.term** %right, align 8
  %call61 = call %struct.term* @term_FirstArgument(%struct.term* %28)
  %call62 = call %struct.term* @term_SecondArgument(%struct.term* %call61)
  %29 = load %struct.term*, %struct.term** %v2, align 8
  %call63 = call i32 @term_EqualTopSymbols(%struct.term* %call62, %struct.term* %29)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %land.lhs.true.65, label %if.end.78

land.lhs.true.65:                                 ; preds = %land.lhs.true.60
  %30 = load %struct.term*, %struct.term** %right, align 8
  %call66 = call %struct.term* @term_SecondArgument(%struct.term* %30)
  %call67 = call %struct.term* @term_FirstArgument(%struct.term* %call66)
  %31 = load %struct.term*, %struct.term** %v1, align 8
  %call68 = call i32 @term_EqualTopSymbols(%struct.term* %call67, %struct.term* %31)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.78

land.lhs.true.70:                                 ; preds = %land.lhs.true.65
  %32 = load %struct.term*, %struct.term** %right, align 8
  %call71 = call %struct.term* @term_SecondArgument(%struct.term* %32)
  %call72 = call %struct.term* @term_SecondArgument(%struct.term* %call71)
  %33 = load %struct.term*, %struct.term** %v3, align 8
  %call73 = call i32 @term_EqualTopSymbols(%struct.term* %call72, %struct.term* %33)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %land.lhs.true.70
  %34 = load %struct.term*, %struct.term** %right, align 8
  %call76 = call i32 @term_TopSymbol(%struct.term* %34)
  %35 = load i32*, i32** %Addition.addr, align 8
  store i32 %call76, i32* %35, align 4
  %36 = load %struct.term*, %struct.term** %left, align 8
  %call77 = call i32 @term_TopSymbol(%struct.term* %36)
  %37 = load i32*, i32** %Multiplication.addr, align 8
  store i32 %call77, i32* %37, align 4
  store i32 1, i32* %retval
  br label %return

if.end.78:                                        ; preds = %land.lhs.true.70, %land.lhs.true.65, %land.lhs.true.60, %land.lhs.true.55, %land.lhs.true, %if.end.46
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.78, %if.then.75, %if.then.45, %if.else.31, %if.then.19, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_EqualTopSymbols(%struct.term* %T, %struct.term* %S) #2 {
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
define %struct.LIST_HELP* @fol_Instances(%struct.term* %Formula, %struct.term* %ToMatch) #0 {
entry:
  %Formula.addr = alloca %struct.term*, align 8
  %ToMatch.addr = alloca %struct.term*, align 8
  %Symbols = alloca i32, align 4
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  store %struct.term* %ToMatch, %struct.term** %ToMatch.addr, align 8
  %0 = load %struct.term*, %struct.term** %ToMatch.addr, align 8
  %call = call i32 @term_ComputeSize(%struct.term* %0)
  store i32 %call, i32* %Symbols, align 4
  %1 = load %struct.term*, %struct.term** %Formula.addr, align 8
  call void @term_InstallSize(%struct.term* %1)
  %2 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %3 = load %struct.term*, %struct.term** %ToMatch.addr, align 8
  %4 = load i32, i32* %Symbols, align 4
  %call1 = call %struct.LIST_HELP* @fol_InstancesIntern(%struct.term* %2, %struct.term* %3, i32 %4)
  ret %struct.LIST_HELP* %call1
}

declare i32 @term_ComputeSize(%struct.term*) #1

declare void @term_InstallSize(%struct.term*) #1

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @fol_InstancesIntern(%struct.term* %Formula, %struct.term* %ToMatch, i32 %Symbols) #0 {
entry:
  %Formula.addr = alloca %struct.term*, align 8
  %ToMatch.addr = alloca %struct.term*, align 8
  %Symbols.addr = alloca i32, align 4
  %HitSymbols = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %Stack = alloca i32, align 4
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  store %struct.term* %ToMatch, %struct.term** %ToMatch.addr, align 8
  store i32 %Symbols, i32* %Symbols.addr, align 4
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Stack, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Result, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call2 = call i32 @term_Size(%struct.term* %0)
  store i32 %call2, i32* %HitSymbols, align 4
  %1 = load i32, i32* %HitSymbols, align 4
  %2 = load i32, i32* %Symbols.addr, align 4
  %cmp = icmp uge i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %do.body
  %3 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %4 = load %struct.term*, %struct.term** %ToMatch.addr, align 8
  %cmp3 = icmp ne %struct.term* %3, %4
  br i1 %cmp3, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true
  call void @cont_StartBinding()
  %call4 = call %struct.binding* @cont_LeftContext()
  %5 = load %struct.term*, %struct.term** %ToMatch.addr, align 8
  %6 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call5 = call i32 @unify_MatchFlexible(%struct.binding* %call4, %struct.term* %5, %struct.term* %6)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %7 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %8 = bitcast %struct.term* %7 to i8*
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call7 = call %struct.LIST_HELP* @list_Cons(i8* %8, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Result, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.then
  %10 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %10)
  %call9 = call i32 @symbol_IsPredicate(i32 %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.20, label %if.then.11

if.then.11:                                       ; preds = %if.else
  %11 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call12 = call i32 @term_TopSymbol(%struct.term* %11)
  %call13 = call i32 @fol_IsQuantifier(i32 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.then.11
  %12 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call16 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call16)
  %13 = bitcast %struct.LIST_HELP* %call17 to i8*
  call void @stack_Push(i8* %13)
  br label %if.end

if.else.18:                                       ; preds = %if.then.11
  %14 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %14)
  %15 = bitcast %struct.LIST_HELP* %call19 to i8*
  call void @stack_Push(i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.else.18, %if.then.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.6
  %call22 = call i32 @cont_BackTrack()
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.21, %land.lhs.true, %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.23
  %16 = load i32, i32* %Stack, align 4
  %call24 = call i32 @stack_Empty(i32 %16)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call26 = call i8* @stack_Top()
  %17 = bitcast i8* %call26 to %struct.LIST_HELP*
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool28 = icmp ne i32 %call27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %tobool28, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call29 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load i32, i32* %Stack, align 4
  %call30 = call i32 @stack_Empty(i32 %19)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.37, label %if.then.32

if.then.32:                                       ; preds = %while.end
  %call33 = call i8* @stack_Top()
  %20 = bitcast i8* %call33 to %struct.LIST_HELP*
  %call34 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call34 to %struct.term*
  store %struct.term* %21, %struct.term** %Formula.addr, align 8
  %call35 = call i8* @stack_Top()
  %22 = bitcast i8* %call35 to %struct.LIST_HELP*
  %call36 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  %23 = bitcast %struct.LIST_HELP* %call36 to i8*
  call void @stack_RplacTop(i8* %23)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.37
  %24 = load i32, i32* %Stack, align 4
  %call38 = call i32 @stack_Empty(i32 %24)
  %tobool39 = icmp ne i32 %call38, 0
  %lnot = xor i1 %tobool39, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %25
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @fol_Generalizations(%struct.term* %Formula, %struct.term* %MatchedBy) #0 {
entry:
  %Formula.addr = alloca %struct.term*, align 8
  %MatchedBy.addr = alloca %struct.term*, align 8
  %Symbols = alloca i32, align 4
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  store %struct.term* %MatchedBy, %struct.term** %MatchedBy.addr, align 8
  %0 = load %struct.term*, %struct.term** %MatchedBy.addr, align 8
  %call = call i32 @term_ComputeSize(%struct.term* %0)
  store i32 %call, i32* %Symbols, align 4
  %1 = load %struct.term*, %struct.term** %Formula.addr, align 8
  call void @term_InstallSize(%struct.term* %1)
  %2 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %3 = load %struct.term*, %struct.term** %MatchedBy.addr, align 8
  %4 = load i32, i32* %Symbols, align 4
  %call1 = call %struct.LIST_HELP* @fol_GeneralizationsIntern(%struct.term* %2, %struct.term* %3, i32 %4)
  ret %struct.LIST_HELP* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @fol_GeneralizationsIntern(%struct.term* %Formula, %struct.term* %MatchedBy, i32 %Symbols) #0 {
entry:
  %Formula.addr = alloca %struct.term*, align 8
  %MatchedBy.addr = alloca %struct.term*, align 8
  %Symbols.addr = alloca i32, align 4
  %HitSymbols = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %Stack = alloca i32, align 4
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  store %struct.term* %MatchedBy, %struct.term** %MatchedBy.addr, align 8
  store i32 %Symbols, i32* %Symbols.addr, align 4
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Stack, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Result, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %1 = load %struct.term*, %struct.term** %MatchedBy.addr, align 8
  %cmp = icmp ne %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.end.40

if.then:                                          ; preds = %do.body
  %2 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call2 = call i32 @term_Size(%struct.term* %2)
  store i32 %call2, i32* %HitSymbols, align 4
  %3 = load i32, i32* %HitSymbols, align 4
  %4 = load i32, i32* %Symbols.addr, align 4
  %cmp3 = icmp ule i32 %3, %4
  br i1 %cmp3, label %if.then.4, label %if.else.24

if.then.4:                                        ; preds = %if.then
  call void @cont_StartBinding()
  %call5 = call %struct.binding* @cont_LeftContext()
  %5 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %6 = load %struct.term*, %struct.term** %MatchedBy.addr, align 8
  %call6 = call i32 @unify_MatchFlexible(%struct.binding* %call5, %struct.term* %5, %struct.term* %6)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.4
  %7 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %8 = bitcast %struct.term* %7 to i8*
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call8 = call %struct.LIST_HELP* @list_Cons(i8* %8, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Result, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.then.4
  %10 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call9 = call i32 @term_TopSymbol(%struct.term* %10)
  %call10 = call i32 @symbol_IsPredicate(i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.21, label %if.then.12

if.then.12:                                       ; preds = %if.else
  %11 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call13 = call i32 @term_TopSymbol(%struct.term* %11)
  %call14 = call i32 @fol_IsQuantifier(i32 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %if.then.12
  %12 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call17 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call17)
  %13 = bitcast %struct.LIST_HELP* %call18 to i8*
  call void @stack_Push(i8* %13)
  br label %if.end

if.else.19:                                       ; preds = %if.then.12
  %14 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call20 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %14)
  %15 = bitcast %struct.LIST_HELP* %call20 to i8*
  call void @stack_Push(i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.7
  %call23 = call i32 @cont_BackTrack()
  br label %if.end.39

if.else.24:                                       ; preds = %if.then
  %16 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call25 = call i32 @term_TopSymbol(%struct.term* %16)
  %call26 = call i32 @symbol_IsPredicate(i32 %call25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.38, label %if.then.28

if.then.28:                                       ; preds = %if.else.24
  %17 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call29 = call i32 @term_TopSymbol(%struct.term* %17)
  %call30 = call i32 @fol_IsQuantifier(i32 %call29)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.35

if.then.32:                                       ; preds = %if.then.28
  %18 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call33 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %18)
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call33)
  %19 = bitcast %struct.LIST_HELP* %call34 to i8*
  call void @stack_Push(i8* %19)
  br label %if.end.37

if.else.35:                                       ; preds = %if.then.28
  %20 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call36 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %20)
  %21 = bitcast %struct.LIST_HELP* %call36 to i8*
  call void @stack_Push(i8* %21)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.else.24
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.22
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.40
  %22 = load i32, i32* %Stack, align 4
  %call41 = call i32 @stack_Empty(i32 %22)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call43 = call i8* @stack_Top()
  %23 = bitcast i8* %call43 to %struct.LIST_HELP*
  %call44 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool45 = icmp ne i32 %call44, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %tobool45, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call46 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %25 = load i32, i32* %Stack, align 4
  %call47 = call i32 @stack_Empty(i32 %25)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.54, label %if.then.49

if.then.49:                                       ; preds = %while.end
  %call50 = call i8* @stack_Top()
  %26 = bitcast i8* %call50 to %struct.LIST_HELP*
  %call51 = call i8* @list_Car(%struct.LIST_HELP* %26)
  %27 = bitcast i8* %call51 to %struct.term*
  store %struct.term* %27, %struct.term** %Formula.addr, align 8
  %call52 = call i8* @stack_Top()
  %28 = bitcast i8* %call52 to %struct.LIST_HELP*
  %call53 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %28)
  %29 = bitcast %struct.LIST_HELP* %call53 to i8*
  call void @stack_RplacTop(i8* %29)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.54
  %30 = load i32, i32* %Stack, align 4
  %call55 = call i32 @stack_Empty(i32 %30)
  %tobool56 = icmp ne i32 %call55, 0
  %lnot = xor i1 %tobool56, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %31
}

; Function Attrs: nounwind uwtable
define %struct.term* @fol_MostGeneralFormula(%struct.LIST_HELP* %Formulas) #0 {
entry:
  %Formulas.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.term*, align 8
  %Candidate = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Formulas, %struct.LIST_HELP** %Formulas.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Formulas.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  %1 = bitcast i8* %call to %struct.term*
  store %struct.term* %1, %struct.term** %Result, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Formulas.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan, align 8
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
  %5 = bitcast i8* %call3 to %struct.term*
  store %struct.term* %5, %struct.term** %Candidate, align 8
  call void @cont_StartBinding()
  %call4 = call %struct.binding* @cont_LeftContext()
  %6 = load %struct.term*, %struct.term** %Candidate, align 8
  %7 = load %struct.term*, %struct.term** %Result, align 8
  %call5 = call i32 @unify_MatchFlexible(%struct.binding* %call4, %struct.term* %6, %struct.term* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.term*, %struct.term** %Candidate, align 8
  store %struct.term* %8, %struct.term** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call7 = call i32 @cont_BackTrack()
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.term*, %struct.term** %Result, align 8
  ret %struct.term* %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_StartBinding() #2 {
entry:
  %0 = load i32, i32* @cont_BINDINGS, align 4
  call void @cont_StackPush(i32 %0)
  store i32 0, i32* @cont_BINDINGS, align 4
  ret void
}

declare i32 @unify_MatchFlexible(%struct.binding*, %struct.term*, %struct.term*) #1

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

; Function Attrs: nounwind uwtable
define void @fol_ReplaceVariable(%struct.term* %Term, i32 %Symbol, %struct.term* %Repl) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Symbol.addr = alloca i32, align 4
  %Repl.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store %struct.term* %Repl, %struct.term** %Repl.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_IsQuantifier(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.term* @term_FirstArgument(%struct.term* %1)
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call6 to %struct.term*
  %call7 = call i32 @term_TopSymbol(%struct.term* %4)
  %5 = load i32, i32* %Symbol.addr, align 4
  %call8 = call i32 @symbol_Equal(i32 %call7, i32 %5)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  br label %if.end.31

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call12 = call %struct.term* @term_SecondArgument(%struct.term* %7)
  %8 = load i32, i32* %Symbol.addr, align 4
  %9 = load %struct.term*, %struct.term** %Repl.addr, align 8
  call void @fol_ReplaceVariable(%struct.term* %call12, i32 %8, %struct.term* %9)
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %entry
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call14 = call i32 @term_TopSymbol(%struct.term* %10)
  %11 = load i32, i32* %Symbol.addr, align 4
  %call15 = call i32 @symbol_Equal(i32 %call14, i32 %11)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.13
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %13 = load %struct.term*, %struct.term** %Repl.addr, align 8
  %call18 = call i32 @term_TopSymbol(%struct.term* %13)
  call void @term_RplacTop(%struct.term* %12, i32 %call18)
  %14 = load %struct.term*, %struct.term** %Term.addr, align 8
  %15 = load %struct.term*, %struct.term** %Repl.addr, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %15)
  %call20 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call19)
  call void @term_RplacArgumentList(%struct.term* %14, %struct.LIST_HELP* %call20)
  br label %if.end.31

if.else:                                          ; preds = %if.end.13
  %16 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call21 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %16)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.28, %if.else
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call23 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool24 = icmp ne i32 %call23, 0
  %lnot25 = xor i1 %tobool24, true
  br i1 %lnot25, label %for.body.26, label %for.end.30

for.body.26:                                      ; preds = %for.cond.22
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call27 to %struct.term*
  %20 = load i32, i32* %Symbol.addr, align 4
  %21 = load %struct.term*, %struct.term** %Repl.addr, align 8
  call void @fol_ReplaceVariable(%struct.term* %19, i32 %20, %struct.term* %21)
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.26
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.22

for.end.30:                                       ; preds = %for.cond.22
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.10, %for.end.30, %if.then.17
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %List) #2 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP* %0, i8* (i8*)* bitcast (%struct.term* (%struct.term*)* @term_Copy to i8* (i8*)*))
  ret %struct.LIST_HELP* %call
}

; Function Attrs: nounwind uwtable
define void @fol_PrettyPrintDFG(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @fol_PrettyPrintInternDFG(%struct.term* %0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fol_PrettyPrintInternDFG(%struct.term* %Term, i32 %Depth) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Depth.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %scan = alloca %struct.LIST_HELP*, align 8
  %Top = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Depth, i32* %Depth.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load i32, i32* %Top, align 4
  %call1 = call i32 @fol_Varlist()
  %call2 = call i32 @symbol_Equal(i32 %1, i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.else.46, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %Depth.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), %struct._IO_FILE* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @fol_IsLiteral(%struct.term* %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.end
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_PrintPrefix(%struct.term* %7)
  br label %if.end.45

if.else:                                          ; preds = %for.end
  %8 = load i32, i32* %Top, align 4
  %call7 = call i32 @symbol_IsJunctor(i32 %8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else.43

if.then.9:                                        ; preds = %if.else
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call10 = call i32 @term_IsComplex(%struct.term* %9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.34

if.then.12:                                       ; preds = %if.then.9
  %10 = load i32, i32* %Top, align 4
  call void @symbol_Print(i32 %10)
  %call13 = call i32 @putchar(i32 40)
  %11 = load i32, i32* %Top, align 4
  %call14 = call i32 @fol_IsQuantifier(i32 %11)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %if.then.12
  %call17 = call i32 @putchar(i32 10)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then.12
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call18 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.30, %if.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %for.body.22, label %for.end.32

for.body.22:                                      ; preds = %for.cond.19
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call23 to %struct.term*
  %16 = load i32, i32* %Depth.addr, align 4
  %add = add nsw i32 %16, 1
  call void @fol_PrettyPrintInternDFG(%struct.term* %15, i32 %add)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  %call25 = call i32 @list_Empty(%struct.LIST_HELP* %call24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %for.body.22
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call28 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), %struct._IO_FILE* %18)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %for.body.22
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.19

for.end.32:                                       ; preds = %for.cond.19
  %call33 = call i32 @putchar(i32 41)
  br label %if.end.42

if.else.34:                                       ; preds = %if.then.9
  %20 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call35 = call i32 @term_IsVariable(%struct.term* %20)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.else.34
  %21 = load i32, i32* %Top, align 4
  call void @symbol_Print(i32 %21)
  br label %if.end.41

if.else.38:                                       ; preds = %if.else.34
  %call39 = call i32 @putchar(i32 40)
  %22 = load i32, i32* %Top, align 4
  call void @symbol_Print(i32 %22)
  %call40 = call i32 @putchar(i32 41)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %for.end.32
  br label %if.end.44

if.else.43:                                       ; preds = %if.else
  %23 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_PrintPrefix(%struct.term* %23)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %if.end.42
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.6
  br label %if.end.50

if.else.46:                                       ; preds = %entry
  %call47 = call i32 @putchar(i32 91)
  %24 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call48 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %24)
  call void @term_TermListPrintPrefix(%struct.LIST_HELP* %call48)
  %call49 = call i32 @putchar(i32 93)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.46, %if.end.45
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.term* @fol_CheckFatherLinksIntern(%struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %result = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_IsQuantifier(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.term* @term_SecondArgument(%struct.term* %1)
  %call3 = call %struct.term* @fol_CheckFatherLinksIntern(%struct.term* %call2)
  store %struct.term* %call3, %struct.term** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @term_IsComplex(%struct.term* %2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.21

if.then.6:                                        ; preds = %if.end
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call10 to %struct.term*
  %call11 = call %struct.term* @term_Superterm(%struct.term* %6)
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp = icmp ne %struct.term* %call11, %7
  br i1 %cmp, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call13 to %struct.term*
  store %struct.term* %9, %struct.term** %retval
  br label %return

if.end.14:                                        ; preds = %for.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call15 to %struct.term*
  %call16 = call %struct.term* @fol_CheckFatherLinksIntern(%struct.term* %11)
  store %struct.term* %call16, %struct.term** %result, align 8
  %12 = load %struct.term*, %struct.term** %result, align 8
  %cmp17 = icmp ne %struct.term* %12, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  %13 = load %struct.term*, %struct.term** %result, align 8
  store %struct.term* %13, %struct.term** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %if.end
  store %struct.term* null, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.18, %if.then.12, %if.then
  %15 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %15
}

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

; Function Attrs: nounwind uwtable
define void @fol_CheckFatherLinks(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Result = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @fol_CheckFatherLinksIntern(%struct.term* %0)
  store %struct.term* %call, %struct.term** %Result, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @fol_PrettyPrint(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @fol_PrettyPrintIntern(%struct.term* %0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fol_PrettyPrintIntern(%struct.term* %Term, i32 %Depth) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Depth.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Depth, i32* %Depth.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %Depth.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), %struct._IO_FILE* %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %4)
  %call2 = call i32 @symbol_IsJunctor(i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else.61

if.then:                                          ; preds = %for.end
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_IsComplex(%struct.term* %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else.50

if.then.5:                                        ; preds = %if.then
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call i32 @term_TopSymbol(%struct.term* %6)
  %call7 = call i32 @fol_IsQuantifier(i32 %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.5
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %7)
  call void @symbol_Print(i32 %call10)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %8)
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call12 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %9)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.24, %if.then.9
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot = xor i1 %tobool15, true
  br i1 %lnot, label %for.body.16, label %for.end.26

for.body.16:                                      ; preds = %for.cond.13
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call17 to %struct.term*
  %call18 = call i32 @term_TopSymbol(%struct.term* %12)
  call void @symbol_Print(i32 %call18)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %call19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end, label %if.then.22

if.then.22:                                       ; preds = %for.body.16
  %call23 = call i32 @putchar(i32 44)
  br label %if.end

if.end:                                           ; preds = %if.then.22, %for.body.16
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call25 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.13

for.end.26:                                       ; preds = %for.cond.13
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call27 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), %struct._IO_FILE* %15)
  %16 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call28 = call %struct.term* @term_SecondArgument(%struct.term* %16)
  %17 = load i32, i32* %Depth.addr, align 4
  %add = add nsw i32 %17, 1
  call void @fol_PrettyPrintIntern(%struct.term* %call28, i32 %add)
  br label %if.end.49

if.else:                                          ; preds = %if.then.5
  %18 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call29 = call i32 @term_TopSymbol(%struct.term* %18)
  call void @symbol_Print(i32 %call29)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call30 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i32 0, i32 0), %struct._IO_FILE* %19)
  %20 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call31 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %20)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.45, %if.else
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call33 = call i32 @list_Empty(%struct.LIST_HELP* %21)
  %tobool34 = icmp ne i32 %call33, 0
  %lnot35 = xor i1 %tobool34, true
  br i1 %lnot35, label %for.body.36, label %for.end.47

for.body.36:                                      ; preds = %for.cond.32
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call37 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call37 to %struct.term*
  %24 = load i32, i32* %Depth.addr, align 4
  %add38 = add nsw i32 %24, 1
  call void @fol_PrettyPrintIntern(%struct.term* %23, i32 %add38)
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call39 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  %call40 = call i32 @list_Empty(%struct.LIST_HELP* %call39)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.44, label %if.then.42

if.then.42:                                       ; preds = %for.body.36
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call43 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), %struct._IO_FILE* %26)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %for.body.36
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call46 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.32

for.end.47:                                       ; preds = %for.cond.32
  %call48 = call i32 @putchar(i32 41)
  br label %if.end.49

if.end.49:                                        ; preds = %for.end.47, %for.end.26
  br label %if.end.60

if.else.50:                                       ; preds = %if.then
  %28 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call51 = call i32 @term_IsVariable(%struct.term* %28)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %if.else.50
  %29 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call54 = call i32 @term_TopSymbol(%struct.term* %29)
  call void @symbol_Print(i32 %call54)
  br label %if.end.59

if.else.55:                                       ; preds = %if.else.50
  %call56 = call i32 @putchar(i32 40)
  %30 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call57 = call i32 @term_TopSymbol(%struct.term* %30)
  call void @symbol_Print(i32 %call57)
  %call58 = call i32 @putchar(i32 41)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.55, %if.then.53
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.49
  br label %if.end.62

if.else.61:                                       ; preds = %for.end
  %31 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_PrintPrefix(%struct.term* %31)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.end.60
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @fol_GetSubstEquations(%struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %0)
  %call2 = call i32 @fol_IsQuantifier(i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.term* @term_SecondArgument(%struct.term* %1)
  %call4 = call %struct.LIST_HELP* @fol_GetSubstEquations(%struct.term* %call3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @fol_IsEquality(%struct.term* %2)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.34

if.then.7:                                        ; preds = %if.end
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.term* @term_SecondArgument(%struct.term* %3)
  %call9 = call i32 @term_IsVariable(%struct.term* %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.7
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call12 = call %struct.term* @term_FirstArgument(%struct.term* %4)
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call13 = call %struct.term* @term_SecondArgument(%struct.term* %5)
  %call14 = call i32 @term_TopSymbol(%struct.term* %call13)
  %call15 = call i32 @term_ContainsSymbol(%struct.term* %call12, i32 %call14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %if.then.11
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %7 = bitcast %struct.term* %6 to i8*
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call18 = call %struct.LIST_HELP* @list_Cons(i8* %7, %struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Result, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.then.11
  br label %if.end.33

if.else:                                          ; preds = %if.then.7
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call20 = call %struct.term* @term_FirstArgument(%struct.term* %9)
  %call21 = call i32 @term_IsVariable(%struct.term* %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %if.else
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call24 = call %struct.term* @term_SecondArgument(%struct.term* %10)
  %11 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call25 = call %struct.term* @term_FirstArgument(%struct.term* %11)
  %call26 = call i32 @term_TopSymbol(%struct.term* %call25)
  %call27 = call i32 @term_ContainsSymbol(%struct.term* %call24, i32 %call26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %if.then.23
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %13 = bitcast %struct.term* %12 to i8*
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call30 = call %struct.LIST_HELP* @list_Cons(i8* %13, %struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %Result, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.then.23
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.19
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end
  %15 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call35 = call i32 @term_TopSymbol(%struct.term* %15)
  %call36 = call i32 @symbol_IsPredicate(i32 %call35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.end.34
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %16, %struct.LIST_HELP** %retval
  br label %return

if.else.39:                                       ; preds = %if.end.34
  %17 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call40 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %17)
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.39
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call41 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool42 = icmp ne i32 %call41, 0
  %lnot = xor i1 %tobool42, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call43 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call43 to %struct.term*
  %call44 = call %struct.LIST_HELP* @fol_GetSubstEquations(%struct.term* %21)
  %call45 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %19, %struct.LIST_HELP* %call44)
  store %struct.LIST_HELP* %call45, %struct.LIST_HELP** %Result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call46 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.47

if.end.47:                                        ; preds = %for.end
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %23, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.38, %if.then
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %24
}

; Function Attrs: nounwind uwtable
define %struct.term* @fol_GetBindingQuantifier(%struct.term* %Term, i32 %Symbol) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Symbol.addr = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_IsQuantifier(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %Symbol.addr, align 4
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call5 to %struct.term*
  %call6 = call i32 @term_TopSymbol(%struct.term* %5)
  %call7 = call i32 @symbol_Equal(i32 %3, i32 %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %6, %struct.term** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.11

if.end.11:                                        ; preds = %for.end, %entry
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call12 = call %struct.term* @term_Superterm(%struct.term* %8)
  %9 = load i32, i32* %Symbol.addr, align 4
  %call13 = call %struct.term* @fol_GetBindingQuantifier(%struct.term* %call12, i32 %9)
  store %struct.term* %call13, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.9
  %10 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %10
}

; Function Attrs: nounwind uwtable
define i32 @fol_TermPolarity(%struct.term* %SubTerm, %struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %SubTerm.addr = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %SuperTerm = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  store %struct.term* %SubTerm, %struct.term** %SubTerm.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp = icmp eq %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %2)
  store %struct.term* %call, %struct.term** %SuperTerm, align 8
  %3 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %tobool = icmp ne %struct.term* %3, null
  br i1 %tobool, label %if.then.1, label %if.end.46

if.then.1:                                        ; preds = %if.end
  %4 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %4)
  store i32 %call2, i32* %Top, align 4
  %5 = load i32, i32* %Top, align 4
  %6 = load i32, i32* @fol_AND, align 4
  %call3 = call i32 @symbol_Equal(i32 %5, i32 %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.1
  %7 = load i32, i32* %Top, align 4
  %8 = load i32, i32* @fol_OR, align 4
  %call5 = call i32 @symbol_Equal(i32 %7, i32 %8)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.10, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %9 = load i32, i32* %Top, align 4
  %call8 = call i32 @fol_IsQuantifier(i32 %9)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false, %if.then.1
  %10 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %11 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call11 = call i32 @fol_TermPolarity(%struct.term* %10, %struct.term* %11)
  store i32 %call11, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false.7
  %12 = load i32, i32* %Top, align 4
  %13 = load i32, i32* @fol_NOT, align 4
  %call13 = call i32 @symbol_Equal(i32 %12, i32 %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %14 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %15 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call16 = call i32 @fol_TermPolarity(%struct.term* %14, %struct.term* %15)
  %sub = sub nsw i32 0, %call16
  store i32 %sub, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %16 = load i32, i32* %Top, align 4
  %17 = load i32, i32* @fol_EQUIV, align 4
  %call18 = call i32 @symbol_Equal(i32 %16, i32 %17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  %18 = load i32, i32* %Top, align 4
  %19 = load i32, i32* @fol_IMPLIES, align 4
  %call22 = call i32 @symbol_Equal(i32 %18, i32 %19)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %if.end.21
  %20 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %21 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call25 = call %struct.term* @term_FirstArgument(%struct.term* %21)
  %cmp26 = icmp eq %struct.term* %20, %call25
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.24
  %22 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %23 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call28 = call i32 @fol_TermPolarity(%struct.term* %22, %struct.term* %23)
  %sub29 = sub nsw i32 0, %call28
  store i32 %sub29, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.24
  %24 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %25 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call30 = call i32 @fol_TermPolarity(%struct.term* %24, %struct.term* %25)
  store i32 %call30, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.21
  %26 = load i32, i32* %Top, align 4
  %27 = load i32, i32* @fol_IMPLIED, align 4
  %call32 = call i32 @symbol_Equal(i32 %26, i32 %27)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.42

if.then.34:                                       ; preds = %if.end.31
  %28 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %29 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call35 = call %struct.term* @term_SecondArgument(%struct.term* %29)
  %cmp36 = icmp eq %struct.term* %28, %call35
  br i1 %cmp36, label %if.then.37, label %if.else.40

if.then.37:                                       ; preds = %if.then.34
  %30 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %31 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call38 = call i32 @fol_TermPolarity(%struct.term* %30, %struct.term* %31)
  %sub39 = sub nsw i32 0, %call38
  store i32 %sub39, i32* %retval
  br label %return

if.else.40:                                       ; preds = %if.then.34
  %32 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %33 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call41 = call i32 @fol_TermPolarity(%struct.term* %32, %struct.term* %33)
  store i32 %call41, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.31
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call43 = call i32 @fflush(%struct._IO_FILE* %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.27, i32 0, i32 0), i32 1527)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.58, i32 0, i32 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call45 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %36)
  call void @misc_DumpCore()
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.42, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.else.40, %if.then.37, %if.else, %if.then.27, %if.then.20, %if.then.15, %if.then.10, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define i32 @fol_PolarCheck(%struct.term* %Subterm, %struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Subterm.addr = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %SubtermPolar = alloca i32, align 4
  %Top = alloca i32, align 4
  store %struct.term* %Subterm, %struct.term** %Subterm.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @fol_TermPolarity(%struct.term* %0, %struct.term* %1)
  store i32 %call, i32* %SubtermPolar, align 4
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call1, i32* %Top, align 4
  %3 = load i32, i32* %SubtermPolar, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %Top, align 4
  %5 = load i32, i32* @fol_ALL, align 4
  %call2 = call i32 @symbol_Equal(i32 %4, i32 %5)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %8 = load i32, i32* %SubtermPolar, align 4
  %call3 = call i32 @fol_PolarCheckAllquantor(%struct.term* %6, %struct.term* %7, i32 %8)
  store i32 %call3, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load i32, i32* %SubtermPolar, align 4
  %cmp4 = icmp eq i32 %9, 1
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.10

land.lhs.true.5:                                  ; preds = %if.end
  %10 = load i32, i32* %Top, align 4
  %11 = load i32, i32* @fol_EXIST, align 4
  %call6 = call i32 @symbol_Equal(i32 %10, i32 %11)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %land.lhs.true.5
  %12 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  %14 = load i32, i32* %SubtermPolar, align 4
  %call9 = call i32 @fol_PolarCheckExquantor(%struct.term* %12, %struct.term* %13, i32 %14)
  store i32 %call9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.5, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @fol_PolarCheckAllquantor(%struct.term* %Subterm, %struct.term* %Term, i32 %SubtermPolar) #0 {
entry:
  %retval = alloca i32, align 4
  %Subterm.addr = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %SubtermPolar.addr = alloca i32, align 4
  %SuperTerm = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %SubPolar = alloca i32, align 4
  store %struct.term* %Subterm, %struct.term** %Subterm.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %SubtermPolar, i32* %SubtermPolar.addr, align 4
  %0 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp = icmp eq %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %2)
  store %struct.term* %call, %struct.term** %SuperTerm, align 8
  %3 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp1 = icmp eq %struct.term* %3, %4
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %5)
  store i32 %call4, i32* %Top, align 4
  %6 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %7 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %8 = load i32, i32* %SubtermPolar.addr, align 4
  %call5 = call i32 @fol_PolarCheckCount(%struct.term* %6, %struct.term* %7, i32 %8)
  store i32 %call5, i32* %SubPolar, align 4
  %9 = load i32, i32* %Top, align 4
  %10 = load i32, i32* @fol_NOT, align 4
  %call6 = call i32 @symbol_Equal(i32 %9, i32 %10)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %11 = load i32, i32* %Top, align 4
  %12 = load i32, i32* @fol_OR, align 4
  %call7 = call i32 @symbol_Equal(i32 %11, i32 %12)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true, label %lor.lhs.false.10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = load i32, i32* %SubPolar, align 4
  %cmp9 = icmp eq i32 %13, 1
  br i1 %cmp9, label %if.then.25, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %14 = load i32, i32* %Top, align 4
  %15 = load i32, i32* @fol_AND, align 4
  %call11 = call i32 @symbol_Equal(i32 %14, i32 %15)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true.13, label %lor.lhs.false.15

land.lhs.true.13:                                 ; preds = %lor.lhs.false.10
  %16 = load i32, i32* %SubPolar, align 4
  %cmp14 = icmp eq i32 %16, -1
  br i1 %cmp14, label %if.then.25, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.13, %lor.lhs.false.10
  %17 = load i32, i32* %Top, align 4
  %18 = load i32, i32* @fol_IMPLIES, align 4
  %call16 = call i32 @symbol_Equal(i32 %17, i32 %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true.18, label %lor.lhs.false.20

land.lhs.true.18:                                 ; preds = %lor.lhs.false.15
  %19 = load i32, i32* %SubPolar, align 4
  %cmp19 = icmp eq i32 %19, 1
  br i1 %cmp19, label %if.then.25, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %land.lhs.true.18, %lor.lhs.false.15
  %20 = load i32, i32* %Top, align 4
  %21 = load i32, i32* @fol_IMPLIED, align 4
  %call21 = call i32 @symbol_Equal(i32 %20, i32 %21)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.27

land.lhs.true.23:                                 ; preds = %lor.lhs.false.20
  %22 = load i32, i32* %SubPolar, align 4
  %cmp24 = icmp eq i32 %22, 1
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %land.lhs.true.23, %land.lhs.true.18, %land.lhs.true.13, %land.lhs.true, %if.end.3
  %23 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %24 = load %struct.term*, %struct.term** %Term.addr, align 8
  %25 = load i32, i32* %SubPolar, align 4
  %call26 = call i32 @fol_PolarCheckAllquantor(%struct.term* %23, %struct.term* %24, i32 %25)
  store i32 %call26, i32* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true.23, %lor.lhs.false.20
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.25, %if.then.2, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @fol_PolarCheckExquantor(%struct.term* %Subterm, %struct.term* %Term, i32 %SubtermPolar) #0 {
entry:
  %retval = alloca i32, align 4
  %Subterm.addr = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %SubtermPolar.addr = alloca i32, align 4
  %SuperTerm = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %SubPolar = alloca i32, align 4
  store %struct.term* %Subterm, %struct.term** %Subterm.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %SubtermPolar, i32* %SubtermPolar.addr, align 4
  %0 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp = icmp eq %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %2)
  store %struct.term* %call, %struct.term** %SuperTerm, align 8
  %3 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp1 = icmp eq %struct.term* %3, %4
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %5)
  store i32 %call4, i32* %Top, align 4
  %6 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %7 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %8 = load i32, i32* %SubtermPolar.addr, align 4
  %call5 = call i32 @fol_PolarCheckCount(%struct.term* %6, %struct.term* %7, i32 %8)
  store i32 %call5, i32* %SubPolar, align 4
  %9 = load i32, i32* %Top, align 4
  %10 = load i32, i32* @fol_NOT, align 4
  %call6 = call i32 @symbol_Equal(i32 %9, i32 %10)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %11 = load i32, i32* %Top, align 4
  %12 = load i32, i32* @fol_OR, align 4
  %call7 = call i32 @symbol_Equal(i32 %11, i32 %12)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true, label %lor.lhs.false.10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = load i32, i32* %SubPolar, align 4
  %cmp9 = icmp eq i32 %13, -1
  br i1 %cmp9, label %if.then.25, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %14 = load i32, i32* %Top, align 4
  %15 = load i32, i32* @fol_AND, align 4
  %call11 = call i32 @symbol_Equal(i32 %14, i32 %15)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true.13, label %lor.lhs.false.15

land.lhs.true.13:                                 ; preds = %lor.lhs.false.10
  %16 = load i32, i32* %SubPolar, align 4
  %cmp14 = icmp eq i32 %16, 1
  br i1 %cmp14, label %if.then.25, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.13, %lor.lhs.false.10
  %17 = load i32, i32* %Top, align 4
  %18 = load i32, i32* @fol_IMPLIES, align 4
  %call16 = call i32 @symbol_Equal(i32 %17, i32 %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true.18, label %lor.lhs.false.20

land.lhs.true.18:                                 ; preds = %lor.lhs.false.15
  %19 = load i32, i32* %SubPolar, align 4
  %cmp19 = icmp eq i32 %19, -1
  br i1 %cmp19, label %if.then.25, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %land.lhs.true.18, %lor.lhs.false.15
  %20 = load i32, i32* %Top, align 4
  %21 = load i32, i32* @fol_IMPLIED, align 4
  %call21 = call i32 @symbol_Equal(i32 %20, i32 %21)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.27

land.lhs.true.23:                                 ; preds = %lor.lhs.false.20
  %22 = load i32, i32* %SubPolar, align 4
  %cmp24 = icmp eq i32 %22, -1
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %land.lhs.true.23, %land.lhs.true.18, %land.lhs.true.13, %land.lhs.true, %if.end.3
  %23 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %24 = load %struct.term*, %struct.term** %Term.addr, align 8
  %25 = load i32, i32* %SubPolar, align 4
  %call26 = call i32 @fol_PolarCheckExquantor(%struct.term* %23, %struct.term* %24, i32 %25)
  store i32 %call26, i32* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true.23, %lor.lhs.false.20
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.25, %if.then.2, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define void @fol_PopQuantifier(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %SubTerm = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @term_FirstArgument(%struct.term* %0)
  call void @term_Delete(%struct.term* %call)
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.term* @term_SecondArgument(%struct.term* %1)
  store %struct.term* %call1, %struct.term** %SubTerm, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  call void @list_Delete(%struct.LIST_HELP* %call2)
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %4 = load %struct.term*, %struct.term** %SubTerm, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %4)
  call void @term_RplacTop(%struct.term* %3, i32 %call3)
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %6 = load %struct.term*, %struct.term** %SubTerm, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  call void @term_RplacArgumentList(%struct.term* %5, %struct.LIST_HELP* %call4)
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call7 to %struct.term*
  %call8 = call %struct.term* @term_Superterm(%struct.term* %10)
  %tobool9 = icmp ne %struct.term* %call8, null
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call10 to %struct.term*
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_RplacSuperterm(%struct.term* %12, %struct.term* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.term*, %struct.term** %SubTerm, align 8
  call void @term_Free(%struct.term* %15)
  ret void
}

declare void @term_Delete(%struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_RplacSuperterm(%struct.term* %T1, %struct.term* %T2) #2 {
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
define void @fol_DeleteQuantifierVariable(%struct.term* %Quant, i32 %Var) #0 {
entry:
  %Quant.addr = alloca %struct.term*, align 8
  %Var.addr = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Quant, %struct.term** %Quant.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load %struct.term*, %struct.term** %Quant.addr, align 8
  %call = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %0)
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
  %3 = bitcast i8* %call2 to %struct.term*
  %call3 = call i32 @term_TopSymbol(%struct.term* %3)
  %4 = load i32, i32* %Var.addr, align 4
  %call4 = call i32 @symbol_Equal(i32 %call3, i32 %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call6 to %struct.term*
  call void @term_Delete(%struct.term* %6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %7, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.term*, %struct.term** %Quant.addr, align 8
  %call8 = call %struct.term* @term_FirstArgument(%struct.term* %9)
  %10 = load %struct.term*, %struct.term** %Quant.addr, align 8
  %call9 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %10)
  %call10 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call9, i8* null)
  call void @term_RplacArgumentList(%struct.term* %call8, %struct.LIST_HELP* %call10)
  %11 = load %struct.term*, %struct.term** %Quant.addr, align 8
  %call11 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %11)
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %call11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.end
  %12 = load %struct.term*, %struct.term** %Quant.addr, align 8
  call void @fol_PopQuantifier(%struct.term* %12)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %for.end
  ret void
}

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

; Function Attrs: nounwind uwtable
define void @fol_SetTrue(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call)
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %1, %struct.LIST_HELP* %call1)
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @fol_True()
  call void @term_RplacTop(%struct.term* %2, i32 %call2)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_DeleteTermList(%struct.LIST_HELP* %List) #2 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %0, void (i8*)* bitcast (void (%struct.term*)* @term_Delete to void (i8*)*))
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_True() #2 {
entry:
  %0 = load i32, i32* @fol_TRUE, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @fol_SetFalse(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call)
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %1, %struct.LIST_HELP* %call1)
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @fol_False()
  call void @term_RplacTop(%struct.term* %2, i32 %call2)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_False() #2 {
entry:
  %0 = load i32, i32* @fol_FALSE, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @fol_PropagateFreeness(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Free = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Argum1 = alloca %struct.term*, align 8
  %Argum2 = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 0, i32* %Free, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_IsQuantifier(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.term* @term_SecondArgument(%struct.term* %1)
  %call3 = call i32 @fol_PropagateFreeness(%struct.term* %call2)
  store i32 %call3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @term_IsAtom(%struct.term* %2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call10 to %struct.term*
  %call11 = call i32 @fol_PropagateFreeness(%struct.term* %6)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body
  store i32 1, i32* %Free, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.35

if.else:                                          ; preds = %if.end
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call16 = call i32 @fol_IsEquality(%struct.term* %8)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.34

if.then.18:                                       ; preds = %if.else
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call19 = call %struct.term* @term_FirstArgument(%struct.term* %9)
  store %struct.term* %call19, %struct.term** %Argum1, align 8
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call20 = call %struct.term* @term_SecondArgument(%struct.term* %10)
  store %struct.term* %call20, %struct.term** %Argum2, align 8
  %11 = load %struct.term*, %struct.term** %Argum1, align 8
  %call21 = call i32 @term_TopSymbol(%struct.term* %11)
  %12 = load %struct.term*, %struct.term** %Argum2, align 8
  %call22 = call i32 @term_TopSymbol(%struct.term* %12)
  %call23 = call i32 @symbol_Equal(i32 %call21, i32 %call22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.then.18
  %13 = load %struct.term*, %struct.term** %Argum1, align 8
  %call25 = call i32 @term_TopSymbol(%struct.term* %13)
  %call26 = call i32 @symbol_HasProperty(i32 %call25, i32 256)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.33

land.lhs.true.28:                                 ; preds = %land.lhs.true
  %14 = load %struct.term*, %struct.term** %Argum1, align 8
  %call29 = call i32 @term_TopSymbol(%struct.term* %14)
  %call30 = call i32 @symbol_HasProperty(i32 %call29, i32 512)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true.28
  %15 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @fol_ReplaceByArgCon(%struct.term* %15)
  store i32 1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %land.lhs.true.28, %land.lhs.true, %if.then.18
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.else
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %for.end
  %16 = load i32, i32* %Free, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.32, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @fol_ReplaceByArgCon(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Bscan = alloca %struct.LIST_HELP*, align 8
  %List = alloca %struct.LIST_HELP*, align 8
  %Hlist = alloca %struct.LIST_HELP*, align 8
  %Func1 = alloca %struct.term*, align 8
  %Func2 = alloca %struct.term*, align 8
  %NewTerm = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @term_FirstArgument(%struct.term* %0)
  store %struct.term* %call, %struct.term** %Func1, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.term* @term_SecondArgument(%struct.term* %1)
  store %struct.term* %call1, %struct.term** %Func2, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %List, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Scan, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %3, %struct.LIST_HELP* %call4)
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @fol_And()
  call void @term_RplacTop(%struct.term* %4, i32 %call5)
  %5 = load %struct.term*, %struct.term** %Func1, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan, align 8
  %6 = load %struct.term*, %struct.term** %Func2, align 8
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Bscan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call9 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Hlist, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Bscan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Hlist, align 8
  %call11 = call %struct.LIST_HELP* @list_Cons(i8* %call10, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Hlist, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Hlist, align 8
  %call13 = call %struct.LIST_HELP* @list_Cons(i8* %call12, %struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Hlist, align 8
  %call14 = call i32 @fol_Equality()
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Hlist, align 8
  %call15 = call %struct.term* @term_Create(i32 %call14, %struct.LIST_HELP* %12)
  store %struct.term* %call15, %struct.term** %NewTerm, align 8
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  %14 = load %struct.term*, %struct.term** %NewTerm, align 8
  %15 = bitcast %struct.term* %14 to i8*
  %16 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call16 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %16)
  %call17 = call %struct.LIST_HELP* @list_Cons(i8* %15, %struct.LIST_HELP* %call16)
  call void @term_RplacArgumentList(%struct.term* %13, %struct.LIST_HELP* %call17)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Bscan, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Bscan, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.term*, %struct.term** %Func1, align 8
  %call20 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %19)
  call void @list_Delete(%struct.LIST_HELP* %call20)
  %20 = load %struct.term*, %struct.term** %Func2, align 8
  %call21 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %20)
  call void @list_Delete(%struct.LIST_HELP* %call21)
  %21 = load %struct.term*, %struct.term** %Func1, align 8
  %call22 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %21, %struct.LIST_HELP* %call22)
  %22 = load %struct.term*, %struct.term** %Func2, align 8
  %call23 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %22, %struct.LIST_HELP* %call23)
  %23 = load %struct.term*, %struct.term** %Func1, align 8
  call void @term_Delete(%struct.term* %23)
  %24 = load %struct.term*, %struct.term** %Func2, align 8
  call void @term_Delete(%struct.term* %24)
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List, align 8
  call void @list_Delete(%struct.LIST_HELP* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @fol_PropagateWitness(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Hit = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 0, i32* %Hit, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_IsQuantifier(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.term* @term_SecondArgument(%struct.term* %1)
  %call3 = call i32 @fol_PropagateWitness(%struct.term* %call2)
  store i32 %call3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @fol_IsEquality(%struct.term* %2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.37

if.then.6:                                        ; preds = %if.end
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.term* @term_SecondArgument(%struct.term* %3)
  %call8 = call i32 @term_IsVariable(%struct.term* %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.6
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call11 = call %struct.term* @term_FirstArgument(%struct.term* %4)
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call12 = call %struct.term* @term_SecondArgument(%struct.term* %5)
  %call13 = call i32 @term_TopSymbol(%struct.term* %call12)
  %call14 = call i32 @term_ContainsSymbol(%struct.term* %call11, i32 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.20, label %if.then.16

if.then.16:                                       ; preds = %if.then.10
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call17 = call %struct.term* @term_SecondArgument(%struct.term* %7)
  %call18 = call i32 @term_TopSymbol(%struct.term* %call17)
  %call19 = call i32 @fol_PropagateWitnessIntern(%struct.term* %6, i32 %call18)
  store i32 %call19, i32* %Hit, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.then.10
  br label %if.end.36

if.else:                                          ; preds = %if.then.6
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call21 = call %struct.term* @term_FirstArgument(%struct.term* %8)
  %call22 = call i32 @term_IsVariable(%struct.term* %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.35

if.then.24:                                       ; preds = %if.else
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call25 = call %struct.term* @term_SecondArgument(%struct.term* %9)
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call26 = call %struct.term* @term_FirstArgument(%struct.term* %10)
  %call27 = call i32 @term_TopSymbol(%struct.term* %call26)
  %call28 = call i32 @term_ContainsSymbol(%struct.term* %call25, i32 %call27)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.34, label %if.then.30

if.then.30:                                       ; preds = %if.then.24
  %11 = load %struct.term*, %struct.term** %Term.addr, align 8
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call31 = call %struct.term* @term_FirstArgument(%struct.term* %12)
  %call32 = call i32 @term_TopSymbol(%struct.term* %call31)
  %call33 = call i32 @fol_PropagateWitnessIntern(%struct.term* %11, i32 %call32)
  store i32 %call33, i32* %Hit, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.then.24
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.20
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call38 = call i32 @term_TopSymbol(%struct.term* %13)
  %call39 = call i32 @symbol_IsPredicate(i32 %call38)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.37
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.37
  %14 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call43 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %14)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.42
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call44 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool45 = icmp ne i32 %call44, 0
  %lnot = xor i1 %tobool45, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call46 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call46 to %struct.term*
  %call47 = call i32 @fol_PropagateWitness(%struct.term* %17)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.body
  store i32 1, i32* %Hit, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call51 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %Hit, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.41, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @fol_PropagateWitnessIntern(%struct.term* %Equation, i32 %Variable) #0 {
entry:
  %retval = alloca i32, align 4
  %Equation.addr = alloca %struct.term*, align 8
  %Variable.addr = alloca i32, align 4
  %SuperTerm = alloca %struct.term*, align 8
  %BindQuantor = alloca %struct.term*, align 8
  %Predicat = alloca %struct.term*, align 8
  %SuperTop = alloca i32, align 4
  store %struct.term* %Equation, %struct.term** %Equation.addr, align 8
  store i32 %Variable, i32* %Variable.addr, align 4
  %0 = load %struct.term*, %struct.term** %Equation.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %0)
  store %struct.term* %call, %struct.term** %SuperTerm, align 8
  %1 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call1 = call %struct.term* @term_Null()
  %cmp = icmp eq %struct.term* %1, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call2, i32* %SuperTop, align 4
  %3 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call3 = call %struct.term* @term_Superterm(%struct.term* %3)
  store %struct.term* %call3, %struct.term** %BindQuantor, align 8
  %4 = load %struct.term*, %struct.term** %BindQuantor, align 8
  %call4 = call %struct.term* @term_Null()
  %cmp5 = icmp eq %struct.term* %4, %call4
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %5 = load %struct.term*, %struct.term** %BindQuantor, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %5)
  %call9 = call i32 @fol_IsQuantifier(i32 %call8)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.13

lor.lhs.false:                                    ; preds = %if.end.7
  %6 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call10 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  %call11 = call i32 @list_Length(%struct.LIST_HELP* %call10)
  %cmp12 = icmp ne i32 %call11, 2
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  %7 = load %struct.term*, %struct.term** %Equation.addr, align 8
  %8 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call15 = call %struct.term* @term_SecondArgument(%struct.term* %8)
  %cmp16 = icmp eq %struct.term* %7, %call15
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.14
  %9 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call18 = call %struct.term* @term_FirstArgument(%struct.term* %9)
  store %struct.term* %call18, %struct.term** %Predicat, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.end.14
  %10 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call19 = call %struct.term* @term_SecondArgument(%struct.term* %10)
  store %struct.term* %call19, %struct.term** %Predicat, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.17
  %11 = load %struct.term*, %struct.term** %BindQuantor, align 8
  %call21 = call i32 @term_TopSymbol(%struct.term* %11)
  %call22 = call i32 @fol_All()
  %call23 = call i32 @symbol_Equal(i32 %call21, i32 %call22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end.20
  %12 = load i32, i32* %SuperTop, align 4
  %call25 = call i32 @fol_Or()
  %call26 = call i32 @symbol_Equal(i32 %12, i32 %call25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.50

land.lhs.true.28:                                 ; preds = %land.lhs.true
  %13 = load %struct.term*, %struct.term** %Predicat, align 8
  %call29 = call i32 @term_TopSymbol(%struct.term* %13)
  %call30 = call i32 @fol_Not()
  %call31 = call i32 @symbol_Equal(i32 %call29, i32 %call30)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.50

land.lhs.true.33:                                 ; preds = %land.lhs.true.28
  %14 = load %struct.term*, %struct.term** %Predicat, align 8
  %call34 = call %struct.term* @term_FirstArgument(%struct.term* %14)
  %call35 = call i32 @term_TopSymbol(%struct.term* %call34)
  %call36 = call i32 @symbol_HasProperty(i32 %call35, i32 256)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end.50

land.lhs.true.38:                                 ; preds = %land.lhs.true.33
  %15 = load %struct.term*, %struct.term** %Predicat, align 8
  %call39 = call %struct.term* @term_FirstArgument(%struct.term* %15)
  %call40 = call i32 @term_TopSymbol(%struct.term* %call39)
  %call41 = call i32 @symbol_HasProperty(i32 %call40, i32 512)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.50

land.lhs.true.43:                                 ; preds = %land.lhs.true.38
  %16 = load %struct.term*, %struct.term** %Predicat, align 8
  %call44 = call %struct.term* @term_FirstArgument(%struct.term* %16)
  %call45 = call %struct.term* @term_FirstArgument(%struct.term* %call44)
  %call46 = call i32 @term_TopSymbol(%struct.term* %call45)
  %17 = load i32, i32* %Variable.addr, align 4
  %call47 = call i32 @symbol_Equal(i32 %call46, i32 %17)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.43
  %18 = load %struct.term*, %struct.term** %BindQuantor, align 8
  call void @fol_SetFalse(%struct.term* %18)
  store i32 1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.43, %land.lhs.true.38, %land.lhs.true.33, %land.lhs.true.28, %land.lhs.true, %if.end.20
  %19 = load %struct.term*, %struct.term** %Predicat, align 8
  %call51 = call i32 @term_TopSymbol(%struct.term* %19)
  %call52 = call i32 @symbol_HasProperty(i32 %call51, i32 256)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %lor.lhs.false.54, label %if.then.63

lor.lhs.false.54:                                 ; preds = %if.end.50
  %20 = load %struct.term*, %struct.term** %Predicat, align 8
  %call55 = call i32 @term_TopSymbol(%struct.term* %20)
  %call56 = call i32 @symbol_HasProperty(i32 %call55, i32 512)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %lor.lhs.false.58, label %if.then.63

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.54
  %21 = load i32, i32* %Variable.addr, align 4
  %22 = load %struct.term*, %struct.term** %Predicat, align 8
  %call59 = call %struct.term* @term_FirstArgument(%struct.term* %22)
  %call60 = call i32 @term_TopSymbol(%struct.term* %call59)
  %call61 = call i32 @symbol_Equal(i32 %21, i32 %call60)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %lor.lhs.false.58, %lor.lhs.false.54, %if.end.50
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %lor.lhs.false.58
  %23 = load %struct.term*, %struct.term** %BindQuantor, align 8
  %call65 = call i32 @term_TopSymbol(%struct.term* %23)
  %call66 = call i32 @fol_All()
  %call67 = call i32 @symbol_Equal(i32 %call65, i32 %call66)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.else.86

if.then.69:                                       ; preds = %if.end.64
  %24 = load i32, i32* %SuperTop, align 4
  %call70 = call i32 @fol_Implies()
  %call71 = call i32 @symbol_Equal(i32 %24, i32 %call70)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.77

land.lhs.true.73:                                 ; preds = %if.then.69
  %25 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call74 = call %struct.term* @term_SecondArgument(%struct.term* %25)
  %26 = load %struct.term*, %struct.term** %Equation.addr, align 8
  %cmp75 = icmp eq %struct.term* %call74, %26
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.73
  %27 = load %struct.term*, %struct.term** %BindQuantor, align 8
  call void @fol_SetFalse(%struct.term* %27)
  store i32 1, i32* %retval
  br label %return

if.end.77:                                        ; preds = %land.lhs.true.73, %if.then.69
  %28 = load i32, i32* %SuperTop, align 4
  %call78 = call i32 @fol_Implied()
  %call79 = call i32 @symbol_Equal(i32 %28, i32 %call78)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %land.lhs.true.81, label %if.end.85

land.lhs.true.81:                                 ; preds = %if.end.77
  %29 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call82 = call %struct.term* @term_FirstArgument(%struct.term* %29)
  %30 = load %struct.term*, %struct.term** %Equation.addr, align 8
  %cmp83 = icmp eq %struct.term* %call82, %30
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %land.lhs.true.81
  %31 = load %struct.term*, %struct.term** %BindQuantor, align 8
  call void @fol_SetFalse(%struct.term* %31)
  store i32 1, i32* %retval
  br label %return

if.end.85:                                        ; preds = %land.lhs.true.81, %if.end.77
  br label %if.end.92

if.else.86:                                       ; preds = %if.end.64
  %32 = load i32, i32* %SuperTop, align 4
  %call87 = call i32 @fol_And()
  %call88 = call i32 @symbol_Equal(i32 %32, i32 %call87)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.else.86
  %33 = load %struct.term*, %struct.term** %BindQuantor, align 8
  call void @fol_SetTrue(%struct.term* %33)
  store i32 1, i32* %retval
  br label %return

if.end.91:                                        ; preds = %if.else.86
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.85
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.92, %if.then.90, %if.then.84, %if.then.76, %if.then.63, %if.then.49, %if.then.13, %if.then.6, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i32 @fol_PropagateTautologies(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Hit = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Bscan = alloca %struct.LIST_HELP*, align 8
  %ArgumentList = alloca %struct.LIST_HELP*, align 8
  %Top = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  store i32 0, i32* %Hit, align 4
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %ArgumentList, align 8
  %2 = load i32, i32* %Top, align 4
  %call2 = call i32 @fol_IsQuantifier(i32 %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.term* @term_SecondArgument(%struct.term* %3)
  %call4 = call i32 @fol_PropagateTautologies(%struct.term* %call3)
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @fol_IsEquality(%struct.term* %4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.term* @term_FirstArgument(%struct.term* %5)
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.term* @term_SecondArgument(%struct.term* %6)
  %call10 = call i32 @term_Equal(%struct.term* %call8, %struct.term* %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @fol_SetTrue(%struct.term* %7)
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %8 = load i32, i32* %Top, align 4
  %call15 = call i32 @fol_Or()
  %call16 = call i32 @symbol_Equal(i32 %8, i32 %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %9 = load i32, i32* %Top, align 4
  %call18 = call i32 @fol_And()
  %call19 = call i32 @symbol_Equal(i32 %9, i32 %call18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.54

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.14
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgumentList, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %if.then.21
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot = xor i1 %tobool23, true
  br i1 %lnot, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call24 to %struct.term*
  %call25 = call i32 @term_TopSymbol(%struct.term* %13)
  %call26 = call i32 @fol_Not()
  %call27 = call i32 @symbol_Equal(i32 %call25, i32 %call26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.50

if.then.29:                                       ; preds = %for.body
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgumentList, align 8
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %Bscan, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %if.then.29
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Bscan, align 8
  %call31 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool32 = icmp ne i32 %call31, 0
  %lnot33 = xor i1 %tobool32, true
  br i1 %lnot33, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.30
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call35 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Bscan, align 8
  %call36 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %cmp = icmp ne i8* %call35, %call36
  br i1 %cmp, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %for.body.34
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call37 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call37 to %struct.term*
  %call38 = call %struct.term* @term_FirstArgument(%struct.term* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Bscan, align 8
  %call39 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call39 to %struct.term*
  %call40 = call i32 @fol_AlphaEqual(%struct.term* %call38, %struct.term* %21)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %land.lhs.true
  %22 = load i32, i32* %Top, align 4
  %call43 = call i32 @fol_Or()
  %call44 = call i32 @symbol_Equal(i32 %22, i32 %call43)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.then.42
  %23 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @fol_SetTrue(%struct.term* %23)
  br label %if.end.47

if.else:                                          ; preds = %if.then.42
  %24 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @fol_SetFalse(%struct.term* %24)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.46
  store i32 1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %land.lhs.true, %for.body.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Bscan, align 8
  %call49 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %Bscan, align 8
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  br label %if.end.50

if.end.50:                                        ; preds = %for.end, %for.body
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call52 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  br label %if.end.54

if.end.54:                                        ; preds = %for.end.53, %lor.lhs.false
  %27 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call55 = call i32 @term_IsAtom(%struct.term* %27)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.71, label %if.then.57

if.then.57:                                       ; preds = %if.end.54
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgumentList, align 8
  store %struct.LIST_HELP* %28, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.68, %if.then.57
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call59 = call i32 @list_Empty(%struct.LIST_HELP* %29)
  %tobool60 = icmp ne i32 %call59, 0
  %lnot61 = xor i1 %tobool60, true
  br i1 %lnot61, label %for.body.62, label %for.end.70

for.body.62:                                      ; preds = %for.cond.58
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call63 = call i8* @list_Car(%struct.LIST_HELP* %30)
  %31 = bitcast i8* %call63 to %struct.term*
  %call64 = call i32 @fol_PropagateTautologies(%struct.term* %31)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %for.body.62
  store i32 1, i32* %Hit, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %for.body.62
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call69 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %32)
  store %struct.LIST_HELP* %call69, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.58

for.end.70:                                       ; preds = %for.cond.58
  br label %if.end.71

if.end.71:                                        ; preds = %for.end.70, %if.end.54
  %33 = load i32, i32* %Hit, align 4
  store i32 %33, i32* %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.end.47, %if.then.12, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @term_Equal(%struct.term*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Or() #2 {
entry:
  %0 = load i32, i32* @fol_OR, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_And() #2 {
entry:
  %0 = load i32, i32* @fol_AND, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @fol_AlphaEqual(%struct.term* %Term1, %struct.term* %Term2) #0 {
entry:
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Hit = alloca i32, align 4
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  call void @term_StartBinding()
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call = call i32 @term_ActMark()
  %call1 = call i32 @fol_AlphaEqualIntern(%struct.term* %0, %struct.term* %1, i32 %call)
  store i32 %call1, i32* %Hit, align 4
  call void @term_StopBinding()
  %2 = load i32, i32* %Hit, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @fol_AlphaEqualIntern(%struct.term* %Term1, %struct.term* %Term2, i32 %Mark) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Mark.addr = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Bscan = alloca %struct.LIST_HELP*, align 8
  %Top1 = alloca i32, align 4
  %Top2 = alloca i32, align 4
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  store i32 %Mark, i32* %Mark.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top1, align 4
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  store i32 %call1, i32* %Top2, align 4
  %2 = load i32, i32* %Top1, align 4
  %call2 = call i32 @symbol_IsVariable(i32 %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %Top2, align 4
  %call3 = call i32 @symbol_IsVariable(i32 %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %Top2, align 4
  %5 = load i32, i32* %Mark.addr, align 4
  %call5 = call i32 @term_VarIsMarked(i32 %4, i32 %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %6 = load i32, i32* %Top1, align 4
  %7 = load i32, i32* %Top2, align 4
  %call8 = call i8* @term_BindingValue(i32 %7)
  %8 = ptrtoint i8* %call8 to i32
  %call9 = call i32 @symbol_Equal(i32 %6, i32 %8)
  store i32 %call9, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %9 = load i32, i32* %Top1, align 4
  %10 = load i32, i32* %Top2, align 4
  %call10 = call i32 @symbol_Equal(i32 %9, i32 %10)
  store i32 %call10, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load i32, i32* %Top1, align 4
  %12 = load i32, i32* %Top2, align 4
  %call11 = call i32 @symbol_Equal(i32 %11, i32 %12)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %13 = load i32, i32* %Top1, align 4
  %call15 = call i32 @fol_IsQuantifier(i32 %13)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else.54

if.then.17:                                       ; preds = %if.end.14
  %14 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call18 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %14)
  %call19 = call i32 @list_Length(%struct.LIST_HELP* %call18)
  %15 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call20 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %15)
  %call21 = call i32 @list_Length(%struct.LIST_HELP* %call20)
  %cmp = icmp ne i32 %call19, %call21
  br i1 %cmp, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.17
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.17
  %16 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call24 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %16)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Scan, align 8
  %17 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call25 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %17)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Bscan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call26 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool27 = icmp ne i32 %call26, 0
  %lnot = xor i1 %tobool27, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Bscan, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call28 to %struct.term*
  %call29 = call i32 @term_TopSymbol(%struct.term* %20)
  %21 = load i32, i32* %Mark.addr, align 4
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call30 to %struct.term*
  %call31 = call i32 @term_TopSymbol(%struct.term* %23)
  %conv = sext i32 %call31 to i64
  %24 = inttoptr i64 %conv to i8*
  call void @term_CreateValueBinding(i32 %call29, i32 %21, i8* %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %Scan, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Bscan, align 8
  %call33 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %Bscan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call34 = call %struct.term* @term_SecondArgument(%struct.term* %27)
  %28 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call35 = call %struct.term* @term_SecondArgument(%struct.term* %28)
  %29 = load i32, i32* %Mark.addr, align 4
  %call36 = call i32 @fol_AlphaEqualIntern(%struct.term* %call34, %struct.term* %call35, i32 %29)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %for.end
  %30 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call40 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %30)
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %Scan, align 8
  %31 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call41 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %31)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %Bscan, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.50, %if.end.39
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call43 = call i32 @list_Empty(%struct.LIST_HELP* %32)
  %tobool44 = icmp ne i32 %call43, 0
  %lnot45 = xor i1 %tobool44, true
  br i1 %lnot45, label %for.body.46, label %for.end.53

for.body.46:                                      ; preds = %for.cond.42
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Bscan, align 8
  %call47 = call i8* @list_Car(%struct.LIST_HELP* %33)
  %34 = bitcast i8* %call47 to %struct.term*
  %call48 = call i32 @term_TopSymbol(%struct.term* %34)
  %call49 = call i32 @term_NullMark()
  call void @term_SetBindingMark(i32 %call48, i32 %call49)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.46
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call51 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %35)
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** %Scan, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Bscan, align 8
  %call52 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %Bscan, align 8
  br label %for.cond.42

for.end.53:                                       ; preds = %for.cond.42
  br label %if.end.80

if.else.54:                                       ; preds = %if.end.14
  %37 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call55 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %37)
  %call56 = call i32 @list_Length(%struct.LIST_HELP* %call55)
  %38 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call57 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %38)
  %call58 = call i32 @list_Length(%struct.LIST_HELP* %call57)
  %cmp59 = icmp ne i32 %call56, %call58
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.else.54
  store i32 0, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.else.54
  %39 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call63 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %39)
  store %struct.LIST_HELP* %call63, %struct.LIST_HELP** %Scan, align 8
  %40 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call64 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %40)
  store %struct.LIST_HELP* %call64, %struct.LIST_HELP** %Bscan, align 8
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.76, %if.end.62
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call66 = call i32 @list_Empty(%struct.LIST_HELP* %41)
  %tobool67 = icmp ne i32 %call66, 0
  %lnot68 = xor i1 %tobool67, true
  br i1 %lnot68, label %for.body.69, label %for.end.79

for.body.69:                                      ; preds = %for.cond.65
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call70 = call i8* @list_Car(%struct.LIST_HELP* %42)
  %43 = bitcast i8* %call70 to %struct.term*
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Bscan, align 8
  %call71 = call i8* @list_Car(%struct.LIST_HELP* %44)
  %45 = bitcast i8* %call71 to %struct.term*
  %46 = load i32, i32* %Mark.addr, align 4
  %call72 = call i32 @fol_AlphaEqualIntern(%struct.term* %43, %struct.term* %45, i32 %46)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %for.body.69
  store i32 0, i32* %retval
  br label %return

if.end.75:                                        ; preds = %for.body.69
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call77 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call77, %struct.LIST_HELP** %Scan, align 8
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Bscan, align 8
  %call78 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %48)
  store %struct.LIST_HELP* %call78, %struct.LIST_HELP** %Bscan, align 8
  br label %for.cond.65

for.end.79:                                       ; preds = %for.cond.65
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.79, %for.end.53
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.80, %if.then.74, %if.then.61, %if.then.38, %if.then.22, %if.then.13, %if.else, %if.then.7
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @fol_VarBoundTwice(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Hit = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  call void @term_StartBinding()
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_ActMark()
  %call1 = call i32 @fol_VarBoundTwiceIntern(%struct.term* %0, i32 %call)
  store i32 %call1, i32* %Hit, align 4
  call void @term_StopBinding()
  %1 = load i32, i32* %Hit, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @fol_VarBoundTwiceIntern(%struct.term* %Term, i32 %Mark) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Mark.addr = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Mark, i32* %Mark.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @term_Null()
  %cmp = icmp eq %struct.term* %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsAtom(%struct.term* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %2)
  %call5 = call i32 @fol_IsQuantifier(i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.end.3
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool10, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call11 to %struct.term*
  %7 = load i32, i32* %Mark.addr, align 4
  %call12 = call i32 @fol_VarBoundTwiceIntern(%struct.term* %6, i32 %7)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.52

if.else:                                          ; preds = %if.end.3
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call17 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %9)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.32, %if.else
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool20 = icmp ne i32 %call19, 0
  %lnot21 = xor i1 %tobool20, true
  br i1 %lnot21, label %for.body.22, label %for.end.34

for.body.22:                                      ; preds = %for.cond.18
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call23 to %struct.term*
  %call24 = call i32 @term_TopSymbol(%struct.term* %12)
  %13 = load i32, i32* %Mark.addr, align 4
  %call25 = call i32 @term_VarIsMarked(i32 %call24, i32 %13)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.else.30, label %if.then.27

if.then.27:                                       ; preds = %for.body.22
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call28 to %struct.term*
  %call29 = call i32 @term_TopSymbol(%struct.term* %15)
  %16 = load i32, i32* %Mark.addr, align 4
  call void @term_SetBindingMark(i32 %call29, i32 %16)
  br label %if.end.31

if.else.30:                                       ; preds = %for.body.22
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.then.27
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call33 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.18

for.end.34:                                       ; preds = %for.cond.18
  %18 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call35 = call %struct.term* @term_SecondArgument(%struct.term* %18)
  %19 = load i32, i32* %Mark.addr, align 4
  %call36 = call i32 @fol_VarBoundTwiceIntern(%struct.term* %call35, i32 %19)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.end.34
  store i32 1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %for.end.34
  %20 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call40 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %20)
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.49, %if.end.39
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call42 = call i32 @list_Empty(%struct.LIST_HELP* %21)
  %tobool43 = icmp ne i32 %call42, 0
  %lnot44 = xor i1 %tobool43, true
  br i1 %lnot44, label %for.body.45, label %for.end.51

for.body.45:                                      ; preds = %for.cond.41
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call46 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call46 to %struct.term*
  %call47 = call i32 @term_TopSymbol(%struct.term* %23)
  %call48 = call i32 @term_NullMark()
  call void @term_SetBindingMark(i32 %call47, i32 %call48)
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.45
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call50 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call50, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.41

for.end.51:                                       ; preds = %for.cond.41
  br label %if.end.52

if.end.52:                                        ; preds = %for.end.51, %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.38, %if.else.30, %if.then.14, %if.then.2, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @fol_Depth(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Depth = alloca i32, align 4
  %Help = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 0, i32* %Depth, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsPredicate(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %1)
  %call3 = call i32 @fol_IsQuantifier(i32 %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  %call7 = call i32 @fol_Depth(%struct.term* %call6)
  %add = add i32 %call7, 1
  store i32 %add, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call12 to %struct.term*
  %call13 = call i32 @fol_Depth(%struct.term* %6)
  store i32 %call13, i32* %Help, align 4
  %7 = load i32, i32* %Help, align 4
  %8 = load i32, i32* %Depth, align 4
  %cmp = icmp ugt i32 %7, %8
  br i1 %cmp, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  %9 = load i32, i32* %Help, align 4
  store i32 %9, i32* %Depth, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %Depth, align 4
  %add17 = add i32 %11, 1
  store i32 %add17, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @fol_ApplyContextToTerm(%struct.binding* %Context, %struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Context.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @fol_CheckApplyContextToTerm(%struct.binding* %0, %struct.term* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @fol_ApplyContextToTermIntern(%struct.binding* %2, %struct.term* %3)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @fol_CheckApplyContextToTerm(%struct.binding* %Context, %struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Context.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Apply = alloca i32, align 4
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 1, i32* %Apply, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_IsQuantifier(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call5 to %struct.term*
  %call6 = call i32 @term_TopSymbol(%struct.term* %5)
  %call7 = call i32 @cont_VarIsBound(%struct.binding* %3, i32 %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call11 = call %struct.term* @term_SecondArgument(%struct.term* %7)
  %call12 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call11)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.23, %for.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot16 = xor i1 %tobool15, true
  br i1 %lnot16, label %for.body.17, label %for.end.25

for.body.17:                                      ; preds = %for.cond.13
  %9 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call18 to %struct.term*
  %call19 = call i32 @fol_CheckApplyContextToTerm(%struct.binding* %9, %struct.term* %11)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %for.body.17
  store i32 0, i32* %Apply, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %for.body.17
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.13

for.end.25:                                       ; preds = %for.cond.13
  br label %if.end.40

if.else:                                          ; preds = %entry
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call26 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %13)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.37, %if.else
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot30 = xor i1 %tobool29, true
  br i1 %lnot30, label %for.body.31, label %for.end.39

for.body.31:                                      ; preds = %for.cond.27
  %15 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call32 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call32 to %struct.term*
  %call33 = call i32 @fol_CheckApplyContextToTerm(%struct.binding* %15, %struct.term* %17)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %for.body.31
  store i32 0, i32* %Apply, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %for.body.31
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call38 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.27

for.end.39:                                       ; preds = %for.cond.27
  br label %if.end.40

if.end.40:                                        ; preds = %for.end.39, %for.end.25
  %19 = load i32, i32* %Apply, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @fol_ApplyContextToTermIntern(%struct.binding* %Context, %struct.term* %Term) #0 {
entry:
  %Context.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_IsQuantifier(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  call void @fol_ApplyContextToTermIntern(%struct.binding* %1, %struct.term* %call2)
  br label %if.end.19

if.else:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %3)
  %call4 = call i32 @symbol_IsVariable(i32 %call3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.12

if.then.6:                                        ; preds = %if.else
  %4 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %5)
  %call8 = call i32 @cont_VarIsBound(%struct.binding* %4, i32 %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.6
  %6 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call11 = call %struct.term* @cont_ApplyBindingsModuloMatching(%struct.binding* %6, %struct.term* %7, i32 1)
  store %struct.term* %call11, %struct.term** %Term.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then.6
  br label %if.end.18

if.else.12:                                       ; preds = %if.else
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call13 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %8)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.12
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot = xor i1 %tobool15, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call16 to %struct.term*
  call void @fol_ApplyContextToTermIntern(%struct.binding* %10, %struct.term* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @fol_SignatureMatchFormula(%struct.term* %Formula, %struct.term* %Instance, i32 %Variant) #0 {
entry:
  %retval = alloca i32, align 4
  %Formula.addr = alloca %struct.term*, align 8
  %Instance.addr = alloca %struct.term*, align 8
  %Variant.addr = alloca i32, align 4
  %Stack = alloca i32, align 4
  %FormulaTop = alloca i32, align 4
  %InstanceTop = alloca i32, align 4
  %ActMark = alloca i32, align 4
  %ActFormula = alloca %struct.term*, align 8
  %ActInstance = alloca %struct.term*, align 8
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  store %struct.term* %Instance, %struct.term** %Instance.addr, align 8
  store i32 %Variant, i32* %Variant.addr, align 4
  call void @term_StartBinding()
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Stack, align 4
  call void @term_NewMark()
  %call1 = call i32 @term_OldMark()
  store i32 %call1, i32* %ActMark, align 4
  %0 = load %struct.term*, %struct.term** %Formula.addr, align 8
  store %struct.term* %0, %struct.term** %ActFormula, align 8
  %1 = load %struct.term*, %struct.term** %Instance.addr, align 8
  store %struct.term* %1, %struct.term** %ActInstance, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct.term*, %struct.term** %ActFormula, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call2, i32* %FormulaTop, align 4
  %3 = load %struct.term*, %struct.term** %ActInstance, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call3, i32* %InstanceTop, align 4
  %4 = load i32, i32* %FormulaTop, align 4
  %call4 = call i32 @symbol_IsVariable(i32 %4)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.33, label %if.then

if.then:                                          ; preds = %do.body
  %5 = load i32, i32* %FormulaTop, align 4
  %call5 = call i32 @symbol_ContextIsBound(i32 %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else.23, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %6 = load i32, i32* %FormulaTop, align 4
  %call8 = call i32 @symbol_IsJunctor(i32 %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.7
  %7 = load i32, i32* %InstanceTop, align 4
  %call10 = call i32 @symbol_IsJunctor(i32 %7)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %8 = load i32, i32* %FormulaTop, align 4
  %call13 = call i32 @fol_IsPredefinedPred(i32 %8)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else, label %land.lhs.true.15

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %9 = load i32, i32* %InstanceTop, align 4
  %call16 = call i32 @fol_IsPredefinedPred(i32 %9)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.15
  %10 = load i32, i32* %FormulaTop, align 4
  %11 = load i32, i32* %InstanceTop, align 4
  call void @symbol_ContextSetValue(i32 %10, i32 %11)
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true.15, %land.lhs.true.12, %land.lhs.true, %if.then.7
  %12 = load i32, i32* %FormulaTop, align 4
  %13 = load i32, i32* %InstanceTop, align 4
  %call19 = call i32 @symbol_Equal(i32 %12, i32 %13)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end, label %if.then.21

if.then.21:                                       ; preds = %if.else
  call void @term_StopBinding()
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.18
  br label %if.end.32

if.else.23:                                       ; preds = %if.then
  %14 = load i32, i32* %FormulaTop, align 4
  %call24 = call i32 @symbol_ContextIsBound(i32 %14)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.31

land.lhs.true.26:                                 ; preds = %if.else.23
  %15 = load i32, i32* %FormulaTop, align 4
  %call27 = call i32 @symbol_ContextGetValue(i32 %15)
  %16 = load i32, i32* %InstanceTop, align 4
  %call28 = call i32 @symbol_Equal(i32 %call27, i32 %16)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.26
  call void @term_StopBinding()
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.26, %if.else.23
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.22
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %do.body
  %17 = load %struct.term*, %struct.term** %ActFormula, align 8
  %call34 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %17)
  %call35 = call i32 @list_Length(%struct.LIST_HELP* %call34)
  %18 = load %struct.term*, %struct.term** %ActInstance, align 8
  %call36 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %18)
  %call37 = call i32 @list_Length(%struct.LIST_HELP* %call36)
  %cmp = icmp ne i32 %call35, %call37
  br i1 %cmp, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.33
  call void @term_StopBinding()
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.33
  %19 = load %struct.term*, %struct.term** %ActFormula, align 8
  %call40 = call i32 @term_IsComplex(%struct.term* %19)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.45

if.then.42:                                       ; preds = %if.end.39
  %20 = load %struct.term*, %struct.term** %ActInstance, align 8
  %call43 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %20)
  %21 = bitcast %struct.LIST_HELP* %call43 to i8*
  call void @stack_Push(i8* %21)
  %22 = load %struct.term*, %struct.term** %ActFormula, align 8
  %call44 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %22)
  %23 = bitcast %struct.LIST_HELP* %call44 to i8*
  call void @stack_Push(i8* %23)
  br label %if.end.66

if.else.45:                                       ; preds = %if.end.39
  %24 = load i32, i32* %FormulaTop, align 4
  %call46 = call i32 @symbol_IsVariable(i32 %24)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.65

if.then.48:                                       ; preds = %if.else.45
  %25 = load i32, i32* %FormulaTop, align 4
  %26 = load i32, i32* %ActMark, align 4
  %call49 = call i32 @term_VarIsMarked(i32 %25, i32 %26)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.else.58, label %if.then.51

if.then.51:                                       ; preds = %if.then.48
  %27 = load i32, i32* %Variant.addr, align 4
  %tobool52 = icmp ne i32 %27, 0
  br i1 %tobool52, label %lor.lhs.false, label %if.then.55

lor.lhs.false:                                    ; preds = %if.then.51
  %28 = load i32, i32* %InstanceTop, align 4
  %call53 = call i32 @symbol_IsVariable(i32 %28)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %lor.lhs.false, %if.then.51
  %29 = load i32, i32* %FormulaTop, align 4
  %30 = load i32, i32* %ActMark, align 4
  %31 = load i32, i32* %InstanceTop, align 4
  %conv = sext i32 %31 to i64
  %32 = inttoptr i64 %conv to i8*
  call void @term_CreateValueBinding(i32 %29, i32 %30, i8* %32)
  br label %if.end.57

if.else.56:                                       ; preds = %lor.lhs.false
  call void @term_StopBinding()
  store i32 0, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.55
  br label %if.end.64

if.else.58:                                       ; preds = %if.then.48
  %33 = load i32, i32* %FormulaTop, align 4
  %call59 = call i8* @term_BindingValue(i32 %33)
  %34 = ptrtoint i8* %call59 to i32
  %35 = load i32, i32* %InstanceTop, align 4
  %call60 = call i32 @symbol_Equal(i32 %34, i32 %35)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.else.58
  call void @term_StopBinding()
  store i32 0, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.else.58
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.57
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.else.45
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.42
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.66
  %36 = load i32, i32* %Stack, align 4
  %call67 = call i32 @stack_Empty(i32 %36)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call69 = call i8* @stack_Top()
  %37 = bitcast i8* %call69 to %struct.LIST_HELP*
  %call70 = call i32 @list_Empty(%struct.LIST_HELP* %37)
  %tobool71 = icmp ne i32 %call70, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %38 = phi i1 [ false, %while.cond ], [ %tobool71, %land.rhs ]
  br i1 %38, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call72 = call i32 @stack_Pop()
  %call73 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %39 = load i32, i32* %Stack, align 4
  %call74 = call i32 @stack_Empty(i32 %39)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end.85, label %if.then.76

if.then.76:                                       ; preds = %while.end
  %call77 = call i8* @stack_Top()
  %40 = bitcast i8* %call77 to %struct.LIST_HELP*
  %call78 = call i8* @list_Car(%struct.LIST_HELP* %40)
  %41 = bitcast i8* %call78 to %struct.term*
  store %struct.term* %41, %struct.term** %ActFormula, align 8
  %call79 = call i8* @stack_NthTop(i32 1)
  %42 = bitcast i8* %call79 to %struct.LIST_HELP*
  %call80 = call i8* @list_Car(%struct.LIST_HELP* %42)
  %43 = bitcast i8* %call80 to %struct.term*
  store %struct.term* %43, %struct.term** %ActInstance, align 8
  %call81 = call i8* @stack_Top()
  %44 = bitcast i8* %call81 to %struct.LIST_HELP*
  %call82 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %44)
  %45 = bitcast %struct.LIST_HELP* %call82 to i8*
  call void @stack_RplacTop(i8* %45)
  %call83 = call i8* @stack_NthTop(i32 1)
  %46 = bitcast i8* %call83 to %struct.LIST_HELP*
  %call84 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %46)
  %47 = bitcast %struct.LIST_HELP* %call84 to i8*
  call void @stack_RplacNthTop(i32 1, i8* %47)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.76, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.85
  %48 = load i32, i32* %Stack, align 4
  %call86 = call i32 @stack_Empty(i32 %48)
  %tobool87 = icmp ne i32 %call86, 0
  %lnot = xor i1 %tobool87, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call void @term_StopBinding()
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.62, %if.else.56, %if.then.38, %if.then.30, %if.then.21
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_OldMark() #2 {
entry:
  %0 = load i32, i32* @term_MARK, align 4
  %sub = sub i32 %0, 1
  ret i32 %sub
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_ContextIsBound(i32 %Symbol) #2 {
entry:
  %Symbol.addr = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %0 = load i32, i32* %Symbol.addr, align 4
  %call = call i32 @symbol_ContextGetValue(i32 %0)
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsJunctor(i32 %S) #2 {
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
  %cmp = icmp eq i32 %call1, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_ContextSetValue(i32 %Symbol, i32 %Value) #2 {
entry:
  %Symbol.addr = alloca i32, align 4
  %Value.addr = alloca i32, align 4
  %Index = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %Symbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  store i32 %call, i32* %Index, align 4
  %1 = load i32, i32* %Index, align 4
  call void @symbol_CheckIndexInRange(i32 %1)
  %2 = load i32, i32* %Value.addr, align 4
  %3 = load i32, i32* %Index, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4000 x i32], [4000 x i32]* @symbol_CONTEXT, i32 0, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_ContextGetValue(i32 %Symbol) #2 {
entry:
  %Symbol.addr = alloca i32, align 4
  %Index = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %0 = load i32, i32* %Symbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  store i32 %call, i32* %Index, align 4
  %1 = load i32, i32* %Index, align 4
  call void @symbol_CheckIndexInRange(i32 %1)
  %2 = load i32, i32* %Index, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4000 x i32], [4000 x i32]* @symbol_CONTEXT, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  ret i32 %3
}

declare i32 @list_Length(%struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_CreateValueBinding(i32 %Var, i32 %Mark, i8* %Value) #2 {
entry:
  %Var.addr = alloca i32, align 4
  %Mark.addr = alloca i32, align 4
  %Value.addr = alloca i8*, align 8
  store i32 %Var, i32* %Var.addr, align 4
  store i32 %Mark, i32* %Mark.addr, align 4
  store i8* %Value, i8** %Value.addr, align 8
  %0 = load i32, i32* %Var.addr, align 4
  %1 = load i32, i32* %Mark.addr, align 4
  call void @term_SetBindingMark(i32 %0, i32 %1)
  %2 = load i32, i32* %Var.addr, align 4
  %3 = load i8*, i8** %Value.addr, align 8
  call void @term_SetBindingValue(i32 %2, i8* %3)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @term_BindingValue(i32 %Var) #2 {
entry:
  %Var.addr = alloca i32, align 4
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %call = call i32 @symbol_VarIndex(i32 %0)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [3001 x [2 x i8*]], [3001 x [2 x i8*]]* @term_BIND, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx, i32 0, i64 1
  %1 = load i8*, i8** %arrayidx1, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @stack_NthTop(i32 %N) #2 {
entry:
  %N.addr = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* @stack_POINTER, align 4
  %1 = load i32, i32* %N.addr, align 4
  %add = add i32 1, %1
  %sub = sub i32 %0, %add
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  ret i8* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @stack_RplacNthTop(i32 %N, i8* %Entry) #2 {
entry:
  %N.addr = alloca i32, align 4
  %Entry.addr = alloca i8*, align 8
  store i32 %N, i32* %N.addr, align 4
  store i8* %Entry, i8** %Entry.addr, align 8
  %0 = load i8*, i8** %Entry.addr, align 8
  %1 = load i32, i32* @stack_POINTER, align 4
  %2 = load i32, i32* %N.addr, align 4
  %add = add i32 1, %2
  %sub = sub i32 %1, %add
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  store i8* %0, i8** %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @fol_SignatureMatch(%struct.term* %Term, %struct.term* %Instance, %struct.LIST_HELP** %Bindings, i32 %Variant) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Instance.addr = alloca %struct.term*, align 8
  %Bindings.addr = alloca %struct.LIST_HELP**, align 8
  %Variant.addr = alloca i32, align 4
  %Stack = alloca i32, align 4
  %TermTop = alloca i32, align 4
  %InstanceTop = alloca i32, align 4
  %ActMark = alloca i32, align 4
  %ActTerm = alloca %struct.term*, align 8
  %ActInstance = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %Instance, %struct.term** %Instance.addr, align 8
  store %struct.LIST_HELP** %Bindings, %struct.LIST_HELP*** %Bindings.addr, align 8
  store i32 %Variant, i32* %Variant.addr, align 4
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Stack, align 4
  %call1 = call i32 @term_OldMark()
  store i32 %call1, i32* %ActMark, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %0, %struct.term** %ActTerm, align 8
  %1 = load %struct.term*, %struct.term** %Instance.addr, align 8
  store %struct.term* %1, %struct.term** %ActInstance, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call2, i32* %TermTop, align 4
  %3 = load %struct.term*, %struct.term** %ActInstance, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call3, i32* %InstanceTop, align 4
  %4 = load i32, i32* %TermTop, align 4
  %call4 = call i32 @symbol_IsVariable(i32 %4)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.37, label %if.then

if.then:                                          ; preds = %do.body
  %5 = load i32, i32* %TermTop, align 4
  %call5 = call i32 @symbol_ContextIsBound(i32 %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else.27, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %6 = load i32, i32* %TermTop, align 4
  %call8 = call i32 @symbol_IsJunctor(i32 %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.7
  %7 = load i32, i32* %InstanceTop, align 4
  %call10 = call i32 @symbol_IsJunctor(i32 %7)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %8 = load i32, i32* %TermTop, align 4
  %call13 = call i32 @fol_IsPredefinedPred(i32 %8)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else, label %land.lhs.true.15

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %9 = load i32, i32* %InstanceTop, align 4
  %call16 = call i32 @fol_IsPredefinedPred(i32 %9)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %land.lhs.true.15
  %10 = load i32, i32* %InstanceTop, align 4
  %call19 = call i32 @symbol_ContextIsMapped(i32 %10)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.18
  %11 = load i32, i32* %TermTop, align 4
  %12 = load i32, i32* %InstanceTop, align 4
  call void @symbol_ContextSetValue(i32 %11, i32 %12)
  %13 = load i32, i32* %TermTop, align 4
  %conv = sext i32 %13 to i64
  %14 = inttoptr i64 %conv to i8*
  %15 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %15, align 8
  %call22 = call %struct.LIST_HELP* @list_Cons(i8* %14, %struct.LIST_HELP* %16)
  %17 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %17, align 8
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true.18, %land.lhs.true.15, %land.lhs.true.12, %land.lhs.true, %if.then.7
  %18 = load i32, i32* %TermTop, align 4
  %19 = load i32, i32* %InstanceTop, align 4
  %call23 = call i32 @symbol_Equal(i32 %18, i32 %19)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end, label %if.then.25

if.then.25:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then.21
  br label %if.end.36

if.else.27:                                       ; preds = %if.then
  %20 = load i32, i32* %TermTop, align 4
  %call28 = call i32 @symbol_ContextIsBound(i32 %20)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %21 = load i32, i32* %TermTop, align 4
  %call31 = call i32 @symbol_ContextGetValue(i32 %21)
  %22 = load i32, i32* %InstanceTop, align 4
  %call32 = call i32 @symbol_Equal(i32 %call31, i32 %22)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true.30, %if.else.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.26
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %do.body
  %23 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call38 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %23)
  %call39 = call i32 @list_Length(%struct.LIST_HELP* %call38)
  %24 = load %struct.term*, %struct.term** %ActInstance, align 8
  %call40 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %24)
  %call41 = call i32 @list_Length(%struct.LIST_HELP* %call40)
  %cmp = icmp ne i32 %call39, %call41
  br i1 %cmp, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.37
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.37
  %25 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call45 = call i32 @term_IsComplex(%struct.term* %25)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.50

if.then.47:                                       ; preds = %if.end.44
  %26 = load %struct.term*, %struct.term** %ActInstance, align 8
  %call48 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %26)
  %27 = bitcast %struct.LIST_HELP* %call48 to i8*
  call void @stack_Push(i8* %27)
  %28 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call49 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %28)
  %29 = bitcast %struct.LIST_HELP* %call49 to i8*
  call void @stack_Push(i8* %29)
  br label %if.end.74

if.else.50:                                       ; preds = %if.end.44
  %30 = load i32, i32* %TermTop, align 4
  %call51 = call i32 @symbol_IsVariable(i32 %30)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.73

if.then.53:                                       ; preds = %if.else.50
  %31 = load i32, i32* %TermTop, align 4
  %32 = load i32, i32* %ActMark, align 4
  %call54 = call i32 @term_VarIsMarked(i32 %31, i32 %32)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.else.66, label %if.then.56

if.then.56:                                       ; preds = %if.then.53
  %33 = load i32, i32* %Variant.addr, align 4
  %tobool57 = icmp ne i32 %33, 0
  br i1 %tobool57, label %lor.lhs.false, label %if.then.60

lor.lhs.false:                                    ; preds = %if.then.56
  %34 = load i32, i32* %InstanceTop, align 4
  %call58 = call i32 @symbol_IsVariable(i32 %34)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.64

if.then.60:                                       ; preds = %lor.lhs.false, %if.then.56
  %35 = load i32, i32* %TermTop, align 4
  %36 = load i32, i32* %ActMark, align 4
  %37 = load i32, i32* %InstanceTop, align 4
  %conv61 = sext i32 %37 to i64
  %38 = inttoptr i64 %conv61 to i8*
  call void @term_CreateValueBinding(i32 %35, i32 %36, i8* %38)
  %39 = load i32, i32* %TermTop, align 4
  %conv62 = sext i32 %39 to i64
  %40 = inttoptr i64 %conv62 to i8*
  %41 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %41, align 8
  %call63 = call %struct.LIST_HELP* @list_Cons(i8* %40, %struct.LIST_HELP* %42)
  %43 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  store %struct.LIST_HELP* %call63, %struct.LIST_HELP** %43, align 8
  br label %if.end.65

if.else.64:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.then.60
  br label %if.end.72

if.else.66:                                       ; preds = %if.then.53
  %44 = load i32, i32* %TermTop, align 4
  %call67 = call i8* @term_BindingValue(i32 %44)
  %45 = ptrtoint i8* %call67 to i32
  %46 = load i32, i32* %InstanceTop, align 4
  %call68 = call i32 @symbol_Equal(i32 %45, i32 %46)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %if.else.66
  store i32 0, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.else.66
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.65
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.else.50
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.47
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.74
  %47 = load i32, i32* %Stack, align 4
  %call75 = call i32 @stack_Empty(i32 %47)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call77 = call i8* @stack_Top()
  %48 = bitcast i8* %call77 to %struct.LIST_HELP*
  %call78 = call i32 @list_Empty(%struct.LIST_HELP* %48)
  %tobool79 = icmp ne i32 %call78, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %49 = phi i1 [ false, %while.cond ], [ %tobool79, %land.rhs ]
  br i1 %49, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call80 = call i32 @stack_Pop()
  %call81 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %50 = load i32, i32* %Stack, align 4
  %call82 = call i32 @stack_Empty(i32 %50)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.end.93, label %if.then.84

if.then.84:                                       ; preds = %while.end
  %call85 = call i8* @stack_Top()
  %51 = bitcast i8* %call85 to %struct.LIST_HELP*
  %call86 = call i8* @list_Car(%struct.LIST_HELP* %51)
  %52 = bitcast i8* %call86 to %struct.term*
  store %struct.term* %52, %struct.term** %ActTerm, align 8
  %call87 = call i8* @stack_NthTop(i32 1)
  %53 = bitcast i8* %call87 to %struct.LIST_HELP*
  %call88 = call i8* @list_Car(%struct.LIST_HELP* %53)
  %54 = bitcast i8* %call88 to %struct.term*
  store %struct.term* %54, %struct.term** %ActInstance, align 8
  %call89 = call i8* @stack_Top()
  %55 = bitcast i8* %call89 to %struct.LIST_HELP*
  %call90 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %55)
  %56 = bitcast %struct.LIST_HELP* %call90 to i8*
  call void @stack_RplacTop(i8* %56)
  %call91 = call i8* @stack_NthTop(i32 1)
  %57 = bitcast i8* %call91 to %struct.LIST_HELP*
  %call92 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %57)
  %58 = bitcast %struct.LIST_HELP* %call92 to i8*
  call void @stack_RplacNthTop(i32 1, i8* %58)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.84, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.93
  %59 = load i32, i32* %Stack, align 4
  %call94 = call i32 @stack_Empty(i32 %59)
  %tobool95 = icmp ne i32 %call94, 0
  %lnot = xor i1 %tobool95, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.70, %if.else.64, %if.then.43, %if.then.34, %if.then.25
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_ContextIsMapped(i32 %Symbol) #2 {
entry:
  %retval = alloca i32, align 4
  %Symbol.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4000 x i32], [4000 x i32]* @symbol_CONTEXT, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %Symbol.addr, align 4
  %call = call i32 @symbol_Equal(i32 %2, i32 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @fol_CheckFormula(%struct.term* %Formula) #0 {
entry:
  %retval = alloca i32, align 4
  %Formula.addr = alloca %struct.term*, align 8
  %FreeVars = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  %0 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %FreeVars, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVars, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVars, align 8
  call void @list_Delete(%struct.LIST_HELP* %2)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call2 = call i32 @term_CheckTerm(%struct.term* %3)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @term_CheckTerm(%struct.term*) #1

declare i8* @memory_Malloc(i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @term_ContainsVariable(%struct.term*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_GetInitialStandardVarCounter() #2 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_MaxVars() #2 {
entry:
  ret i32 3001
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_NullMark() #2 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_CreateStandardVariable() #2 {
entry:
  %0 = load i32, i32* @symbol_STANDARDVARCOUNTER, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @symbol_STANDARDVARCOUNTER, align 4
  ret i32 %inc
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
define internal i32 @term_BindingMark(i32 %Var) #2 {
entry:
  %Var.addr = alloca i32, align 4
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %call = call i32 @symbol_VarIndex(i32 %0)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [3001 x [2 x i8*]], [3001 x [2 x i8*]]* @term_BIND, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx, i32 0, i64 0
  %1 = load i8*, i8** %arrayidx1, align 8
  %2 = ptrtoint i8* %1 to i32
  ret i32 %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_VarIndex(i32 %ActSymbol) #2 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_SetBindingMark(i32 %Var, i32 %Mark) #2 {
entry:
  %Var.addr = alloca i32, align 4
  %Mark.addr = alloca i32, align 4
  store i32 %Var, i32* %Var.addr, align 4
  store i32 %Mark, i32* %Mark.addr, align 4
  %0 = load i32, i32* %Mark.addr, align 4
  %conv = zext i32 %0 to i64
  %1 = inttoptr i64 %conv to i8*
  %2 = load i32, i32* %Var.addr, align 4
  %call = call i32 @symbol_VarIndex(i32 %2)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [3001 x [2 x i8*]], [3001 x [2 x i8*]]* @term_BIND, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx, i32 0, i64 0
  store i8* %1, i8** %arrayidx1, align 8
  ret void
}

declare %struct.LIST_HELP* @list_DeleteDuplicates(%struct.LIST_HELP*, i32 (i8*, i8*)*) #1

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
  call void @free(i8* %add.ptr24) #8
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
declare void @free(i8*) #4

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

; Function Attrs: noreturn nounwind
declare void @abort() #5

declare void @term_FPrintOtterPrefix(%struct._IO_FILE*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_All() #2 {
entry:
  %0 = load i32, i32* @fol_ALL, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Equiv() #2 {
entry:
  %0 = load i32, i32* @fol_EQUIV, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckIndexInRange(i32 %Index) #2 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_Size(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %size = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 4
  %1 = load i32, i32* %size, align 4
  ret i32 %1
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

declare %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP*, i8* (i8*)*) #1

declare void @term_PrintPrefix(%struct.term*) #1

declare void @symbol_Print(i32) #1

declare i32 @putchar(i32) #1

declare void @term_TermListPrintPrefix(%struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fol_PolarCheckCount(%struct.term* %Nowterm, %struct.term* %SuperTerm, i32 %Nowpolar) #0 {
entry:
  %retval = alloca i32, align 4
  %Nowterm.addr = alloca %struct.term*, align 8
  %SuperTerm.addr = alloca %struct.term*, align 8
  %Nowpolar.addr = alloca i32, align 4
  %Top = alloca i32, align 4
  store %struct.term* %Nowterm, %struct.term** %Nowterm.addr, align 8
  store %struct.term* %SuperTerm, %struct.term** %SuperTerm.addr, align 8
  store i32 %Nowpolar, i32* %Nowpolar.addr, align 4
  %0 = load %struct.term*, %struct.term** %SuperTerm.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load %struct.term*, %struct.term** %Nowterm.addr, align 8
  %2 = load %struct.term*, %struct.term** %SuperTerm.addr, align 8
  %cmp = icmp eq %struct.term* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %Nowpolar.addr, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %Top, align 4
  %5 = load i32, i32* @fol_OR, align 4
  %call1 = call i32 @symbol_Equal(i32 %4, i32 %5)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %Top, align 4
  %7 = load i32, i32* @fol_AND, align 4
  %call2 = call i32 @symbol_Equal(i32 %6, i32 %7)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.18, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %Top, align 4
  %call5 = call i32 @fol_IsQuantifier(i32 %8)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.18, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %9 = load i32, i32* %Top, align 4
  %10 = load i32, i32* @fol_IMPLIES, align 4
  %call8 = call i32 @symbol_Equal(i32 %9, i32 %10)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false.12

land.lhs.true:                                    ; preds = %lor.lhs.false.7
  %11 = load %struct.term*, %struct.term** %Nowterm.addr, align 8
  %12 = load %struct.term*, %struct.term** %SuperTerm.addr, align 8
  %call10 = call %struct.term* @term_SecondArgument(%struct.term* %12)
  %cmp11 = icmp eq %struct.term* %11, %call10
  br i1 %cmp11, label %if.then.18, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true, %lor.lhs.false.7
  %13 = load i32, i32* %Top, align 4
  %14 = load i32, i32* @fol_IMPLIED, align 4
  %call13 = call i32 @symbol_Equal(i32 %13, i32 %14)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.19

land.lhs.true.15:                                 ; preds = %lor.lhs.false.12
  %15 = load %struct.term*, %struct.term** %Nowterm.addr, align 8
  %16 = load %struct.term*, %struct.term** %SuperTerm.addr, align 8
  %call16 = call %struct.term* @term_FirstArgument(%struct.term* %16)
  %cmp17 = icmp eq %struct.term* %15, %call16
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.15, %land.lhs.true, %lor.lhs.false.4, %lor.lhs.false, %if.end
  %17 = load i32, i32* %Nowpolar.addr, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.15, %lor.lhs.false.12
  %18 = load %struct.term*, %struct.term** %SuperTerm.addr, align 8
  %call20 = call i32 @term_TopSymbol(%struct.term* %18)
  %19 = load i32, i32* @fol_EQUIV, align 4
  %call21 = call i32 @symbol_Equal(i32 %call20, i32 %19)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.19
  %20 = load i32, i32* %Nowpolar.addr, align 4
  %sub = sub nsw i32 0, %20
  store i32 %sub, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then.18, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_Null() #2 {
entry:
  ret %struct.term* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_VarIsBound(%struct.binding* %C, i32 %Var) #2 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %call = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %0, i32 %1)
  %cmp = icmp ne %struct.term* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @cont_ContextBindingTerm(%struct.binding* %C, i32 %Var) #2 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %arrayidx = getelementptr inbounds %struct.binding, %struct.binding* %1, i64 %idxprom
  %term = getelementptr inbounds %struct.binding, %struct.binding* %arrayidx, i32 0, i32 2
  %2 = load %struct.term*, %struct.term** %term, align 8
  ret %struct.term* %2
}

declare %struct.term* @cont_ApplyBindingsModuloMatching(%struct.binding*, %struct.term*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_SetBindingValue(i32 %Var, i8* %Value) #2 {
entry:
  %Var.addr = alloca i32, align 4
  %Value.addr = alloca i8*, align 8
  store i32 %Var, i32* %Var.addr, align 4
  store i8* %Value, i8** %Value.addr, align 8
  %0 = load i8*, i8** %Value.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %call = call i32 @symbol_VarIndex(i32 %1)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [3001 x [2 x i8*]], [3001 x [2 x i8*]]* @term_BIND, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx, i32 0, i64 1
  store i8* %0, i8** %arrayidx1, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
