; ModuleID = './MultiSource.Applications.SPASS/6.term.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }

@term_MARK = common global i32 0, align 4
@term_STAMP = common global i32 0, align 4
@term_STAMPBLOCKED = common global i32 0, align 4
@term_STAMPOVERFLOW = internal global [20 x i32] zeroinitializer, align 16
@term_STAMPUSERS = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@term_CompareAbstract.term_compare_functions = internal constant [5 x i32 (%struct.term*, %struct.term*)*] [i32 (%struct.term*, %struct.term*)* @term_CompareByArity, i32 (%struct.term*, %struct.term*)* @term_CompareBySymbolOccurences, i32 (%struct.term*, %struct.term*)* @term_CompareByConstants, i32 (%struct.term*, %struct.term*)* @term_CompareByVariables, i32 (%struct.term*, %struct.term*)* @term_CompareByFunctions], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/SPASS/term.c\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"\0A In term_FPrintPosition: Term isn't subterm of the other one.\00", align 1
@.str.5 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"\0A In term_GetStampID: no more free stamp IDs.\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"\0A You have to increase the constant term_MAXSTAMPUSERS.\00", align 1
@term_BIND = common global [3001 x [2 x i8*]] zeroinitializer, align 16
@symbol_STANDARDVARCOUNTER = external global i32, align 4
@stack_POINTER = external global i32, align 4
@stack_STACK = external global [10000 x i8*], align 16
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@symbol_TYPEMASK = external constant i32, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@symbol_SIGNATURE = external global %struct.signature**, align 8
@symbol_TYPESTATBITS = external constant i32, align 4

; Function Attrs: nounwind uwtable
define void @term_Init() #0 {
entry:
  %i = alloca i32, align 4
  store i32 1, i32* @term_MARK, align 4
  store i32 0, i32* @term_STAMP, align 4
  store i32 0, i32* @term_STAMPBLOCKED, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @term_STAMPOVERFLOW, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @term_STAMPUSERS, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.term* @term_Create(i32 %Symbol, %struct.LIST_HELP* %List) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.term*, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %call = call i8* @memory_Malloc(i32 32)
  %0 = bitcast i8* %call to %struct.term*
  store %struct.term* %0, %struct.term** %Result, align 8
  %1 = load i32, i32* %Symbol.addr, align 4
  %2 = load %struct.term*, %struct.term** %Result, align 8
  %symbol = getelementptr inbounds %struct.term, %struct.term* %2, i32 0, i32 0
  store i32 %1, i32* %symbol, align 4
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %4 = load %struct.term*, %struct.term** %Result, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %4, i32 0, i32 2
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %args, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  %5 = load %struct.term*, %struct.term** %Result, align 8
  %super = getelementptr inbounds %struct.term, %struct.term* %5, i32 0, i32 1
  %termlist = bitcast %union.anon* %super to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %termlist, align 8
  %6 = load %struct.term*, %struct.term** %Result, align 8
  %stamp = getelementptr inbounds %struct.term, %struct.term* %6, i32 0, i32 3
  store i32 0, i32* %stamp, align 4
  %7 = load %struct.term*, %struct.term** %Result, align 8
  %size = getelementptr inbounds %struct.term, %struct.term* %7, i32 0, i32 4
  store i32 0, i32* %size, align 4
  %8 = load %struct.term*, %struct.term** %Result, align 8
  ret %struct.term* %8
}

declare i8* @memory_Malloc(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #2 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: nounwind uwtable
define %struct.term* @term_CreateAddFather(i32 %Symbol, %struct.LIST_HELP* %List) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.term*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load i32, i32* %Symbol.addr, align 4
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.term* @term_Create(i32 %0, %struct.LIST_HELP* %1)
  store %struct.term* %call, %struct.term** %Result, align 8
  %2 = load %struct.term*, %struct.term** %Result, align 8
  %call1 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.term*
  %6 = load %struct.term*, %struct.term** %Result, align 8
  call void @term_RplacSuperterm(%struct.term* %5, %struct.term* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.term*, %struct.term** %Result, align 8
  ret %struct.term* %8
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
define %struct.term* @term_CreateStandardVariable() #0 {
entry:
  %call = call i32 @symbol_CreateStandardVariable()
  %call1 = call %struct.LIST_HELP* @list_Nil()
  %call2 = call %struct.term* @term_Create(i32 %call, %struct.LIST_HELP* %call1)
  ret %struct.term* %call2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_CreateStandardVariable() #2 {
entry:
  %0 = load i32, i32* @symbol_STANDARDVARCOUNTER, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @symbol_STANDARDVARCOUNTER, align 4
  ret i32 %inc
}

; Function Attrs: nounwind uwtable
define void @term_Delete(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i32 @list_Exist(%struct.LIST_HELP* %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call4 to %struct.term*
  call void @term_Delete(%struct.term* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  call void @list_Delete(%struct.LIST_HELP* %call6)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_Free(%struct.term* %7)
  ret void
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
define internal i32 @list_Exist(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cmp = icmp ne %struct.LIST_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
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

; Function Attrs: nounwind uwtable
define void @term_DeleteIterative(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Stack = alloca %struct.LIST_HELP*, align 8
  %Aux = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_StackBottom()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Stack, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_IsComplex(%struct.term* %1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %do.body
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  %3 = bitcast %struct.LIST_HELP* %call5 to i8*
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call6 = call %struct.LIST_HELP* @list_Push(i8* %3, %struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Stack, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %do.body
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_Free(%struct.term* %5)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call7 = call i32 @list_StackEmpty(%struct.LIST_HELP* %6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call9 = call i8* @list_Top(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call9 to %struct.LIST_HELP*
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool11 = icmp ne i32 %call10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %tobool11, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call12 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Stack, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call13 = call i32 @list_StackEmpty(%struct.LIST_HELP* %11)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.19, label %if.then.15

if.then.15:                                       ; preds = %while.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call16 = call i8* @list_Top(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call16 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %13, %struct.LIST_HELP** %Aux, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Aux, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call17 to %struct.term*
  store %struct.term* %15, %struct.term** %Term.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Aux, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  %18 = bitcast %struct.LIST_HELP* %call18 to i8*
  call void @list_RplacTop(%struct.LIST_HELP* %16, i8* %18)
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Aux, align 8
  call void @list_Free(%struct.LIST_HELP* %19)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call20 = call i32 @list_StackEmpty(%struct.LIST_HELP* %20)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.22

if.else:                                          ; preds = %entry
  %21 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_Free(%struct.term* %21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_StackBottom() #2 {
entry:
  %call = call %struct.LIST_HELP* @list_Nil()
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Push(i8* %I, %struct.LIST_HELP* %L) #2 {
entry:
  %I.addr = alloca i8*, align 8
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store i8* %I, i8** %I.addr, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load i8*, i8** %I.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %1)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_StackEmpty(%struct.LIST_HELP* %S) #2 {
entry:
  %S.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %S, %struct.LIST_HELP** %S.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  ret i32 %call
}

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
define internal void @list_RplacTop(%struct.LIST_HELP* %L, i8* %P) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %P.addr = alloca i8*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = load i8*, i8** %P.addr, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %0, i8* %1)
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

; Function Attrs: nounwind uwtable
define i32 @term_Equal(%struct.term* %Term1, %struct.term* %Term2) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %cmp = icmp eq %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call = call i32 @term_EqualTopSymbols(%struct.term* %2, %struct.term* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else.2, label %if.then.1

if.then.1:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.else.2:                                        ; preds = %if.else
  %4 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  %tobool4 = icmp ne %struct.LIST_HELP* %call3, null
  br i1 %tobool4, label %if.then.5, label %if.else.22

if.then.5:                                        ; preds = %if.else.2
  %5 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan1, align 8
  %6 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call8 = call i32 @list_Exist(%struct.LIST_HELP* %7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call10 = call i32 @list_Exist(%struct.LIST_HELP* %8)
  %tobool11 = icmp ne i32 %call10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %tobool11, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call12 to %struct.term*
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call13 to %struct.term*
  %call14 = call i32 @term_Equal(%struct.term* %11, %struct.term* %13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan1, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call21 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call21, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.else.22:                                       ; preds = %if.else.2
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.22, %cond.end, %if.then.16, %if.then.1, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
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
define i32 @term_EqualIterative(%struct.term* %Term1, %struct.term* %Term2) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Stack1 = alloca %struct.LIST_HELP*, align 8
  %Stack2 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  %call = call %struct.LIST_HELP* @list_StackBottom()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Stack2, align 8
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Stack1, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call1 = call i32 @term_EqualTopSymbols(%struct.term* %0, %struct.term* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call2 = call i32 @term_IsComplex(%struct.term* %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %3 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call5 = call i32 @term_IsComplex(%struct.term* %3)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  %4 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  %5 = bitcast %struct.LIST_HELP* %call7 to i8*
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack1, align 8
  %call8 = call %struct.LIST_HELP* @list_Push(i8* %5, %struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Stack1, align 8
  %7 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  %8 = bitcast %struct.LIST_HELP* %call9 to i8*
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack2, align 8
  %call10 = call %struct.LIST_HELP* @list_Push(i8* %8, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Stack2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true, %do.body
  %10 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %11 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call11 = call i32 @term_EqualTopSymbols(%struct.term* %10, %struct.term* %11)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call13 = call i32 @term_IsComplex(%struct.term* %12)
  %13 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call14 = call i32 @term_IsComplex(%struct.term* %13)
  %cmp = icmp ne i32 %call13, %call14
  br i1 %cmp, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %lor.lhs.false, %if.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack1, align 8
  %call16 = call %struct.LIST_HELP* @list_StackFree(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Stack1, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack2, align 8
  %call17 = call %struct.LIST_HELP* @list_StackFree(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Stack2, align 8
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %if.end.18
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack1, align 8
  %call19 = call i32 @list_StackEmpty(%struct.LIST_HELP* %16)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack1, align 8
  %call21 = call i8* @list_Top(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call21 to %struct.LIST_HELP*
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool23 = icmp ne i32 %call22, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %tobool23, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack2, align 8
  %call24 = call i32 @list_StackEmpty(%struct.LIST_HELP* %20)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.else, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %while.body
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack2, align 8
  %call27 = call i8* @list_Top(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call27 to %struct.LIST_HELP*
  %call28 = call i32 @list_Empty(%struct.LIST_HELP* %22)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %land.lhs.true.26
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack1, align 8
  %call31 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %Stack1, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack2, align 8
  %call32 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %Stack2, align 8
  br label %if.end.35

if.else:                                          ; preds = %land.lhs.true.26, %while.body
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack1, align 8
  %call33 = call %struct.LIST_HELP* @list_StackFree(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %Stack1, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack2, align 8
  %call34 = call %struct.LIST_HELP* @list_StackFree(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %Stack2, align 8
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.30
  br label %while.cond

while.end:                                        ; preds = %land.end
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack1, align 8
  %call36 = call i32 @list_StackEmpty(%struct.LIST_HELP* %27)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.55, label %if.then.38

if.then.38:                                       ; preds = %while.end
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack2, align 8
  %call39 = call i8* @list_Top(%struct.LIST_HELP* %28)
  %29 = bitcast i8* %call39 to %struct.LIST_HELP*
  %call40 = call i32 @list_Empty(%struct.LIST_HELP* %29)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.else.51, label %if.then.42

if.then.42:                                       ; preds = %if.then.38
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack1, align 8
  %call43 = call i8* @list_Top(%struct.LIST_HELP* %30)
  %31 = bitcast i8* %call43 to %struct.LIST_HELP*
  %call44 = call i8* @list_Car(%struct.LIST_HELP* %31)
  %32 = bitcast i8* %call44 to %struct.term*
  store %struct.term* %32, %struct.term** %Term1.addr, align 8
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack1, align 8
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack1, align 8
  %call45 = call i8* @list_Top(%struct.LIST_HELP* %34)
  %35 = bitcast i8* %call45 to %struct.LIST_HELP*
  %call46 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %35)
  %36 = bitcast %struct.LIST_HELP* %call46 to i8*
  call void @list_RplacTop(%struct.LIST_HELP* %33, i8* %36)
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack2, align 8
  %call47 = call i8* @list_Top(%struct.LIST_HELP* %37)
  %38 = bitcast i8* %call47 to %struct.LIST_HELP*
  %call48 = call i8* @list_Car(%struct.LIST_HELP* %38)
  %39 = bitcast i8* %call48 to %struct.term*
  store %struct.term* %39, %struct.term** %Term2.addr, align 8
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack2, align 8
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack2, align 8
  %call49 = call i8* @list_Top(%struct.LIST_HELP* %41)
  %42 = bitcast i8* %call49 to %struct.LIST_HELP*
  %call50 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %42)
  %43 = bitcast %struct.LIST_HELP* %call50 to i8*
  call void @list_RplacTop(%struct.LIST_HELP* %40, i8* %43)
  br label %if.end.54

if.else.51:                                       ; preds = %if.then.38
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack1, align 8
  %call52 = call %struct.LIST_HELP* @list_StackFree(%struct.LIST_HELP* %44)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %Stack1, align 8
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack2, align 8
  %call53 = call %struct.LIST_HELP* @list_StackFree(%struct.LIST_HELP* %45)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %Stack2, align 8
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.then.42
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.55
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack1, align 8
  %call56 = call i32 @list_StackEmpty(%struct.LIST_HELP* %46)
  %tobool57 = icmp ne i32 %call56, 0
  %lnot = xor i1 %tobool57, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.51, %if.else, %if.then.15
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_StackFree(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i32 @list_StackEmpty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %L.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call2 = call %struct.LIST_HELP* @list_Nil()
  ret %struct.LIST_HELP* %call2
}

; Function Attrs: nounwind uwtable
define i32 @term_VariableEqual(%struct.term* %Variable1, %struct.term* %Variable2) #0 {
entry:
  %Variable1.addr = alloca %struct.term*, align 8
  %Variable2.addr = alloca %struct.term*, align 8
  store %struct.term* %Variable1, %struct.term** %Variable1.addr, align 8
  store %struct.term* %Variable2, %struct.term** %Variable2.addr, align 8
  %0 = load %struct.term*, %struct.term** %Variable1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Variable2.addr, align 8
  %call = call i32 @term_EqualTopSymbols(%struct.term* %0, %struct.term* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @term_IsGround(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Stack = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.28

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_StackBottom()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Stack, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_IsComplex(%struct.term* %1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  %3 = bitcast %struct.LIST_HELP* %call5 to i8*
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call6 = call %struct.LIST_HELP* @list_Push(i8* %3, %struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Stack, align 8
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call i32 @term_IsVariable(%struct.term* %5)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call10 = call %struct.LIST_HELP* @list_StackFree(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Stack, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.11
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call12 = call i32 @list_StackEmpty(%struct.LIST_HELP* %7)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call14 = call i8* @list_Top(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call14 to %struct.LIST_HELP*
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool16, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call17 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Stack, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call18 = call i32 @list_StackEmpty(%struct.LIST_HELP* %12)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.25, label %if.then.20

if.then.20:                                       ; preds = %while.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call21 = call i8* @list_Top(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call21 to %struct.LIST_HELP*
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call22 to %struct.term*
  store %struct.term* %15, %struct.term** %Term.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call23 = call i8* @list_Top(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call23 to %struct.LIST_HELP*
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  %19 = bitcast %struct.LIST_HELP* %call24 to i8*
  call void @list_RplacTop(%struct.LIST_HELP* %16, i8* %19)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.25
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call26 = call i32 @list_StackEmpty(%struct.LIST_HELP* %20)
  %tobool27 = icmp ne i32 %call26, 0
  %lnot = xor i1 %tobool27, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval
  br label %return

if.else.28:                                       ; preds = %entry
  %21 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call29 = call i32 @term_IsVariable(%struct.term* %21)
  %tobool30 = icmp ne i32 %call29, 0
  %lnot31 = xor i1 %tobool30, true
  %lnot.ext = zext i1 %lnot31 to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.else.28, %do.end, %if.then.9
  %22 = load i32, i32* %retval
  ret i32 %22
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
define i32 @term_IsTerm(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp = icmp ne %struct.term* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %1)
  %call1 = call i32 @symbol_IsSymbol(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

declare i32 @symbol_IsSymbol(i32) #1

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

; Function Attrs: nounwind uwtable
define i32 @term_IsTermList(%struct.LIST_HELP* %TermList) #0 {
entry:
  %retval = alloca i32, align 4
  %TermList.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %TermList, %struct.LIST_HELP** %TermList.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.term*
  %call2 = call i32 @term_IsTerm(%struct.term* %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %TermList.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @term_AllArgsAreVar(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
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
  %call3 = call i32 @term_IsVariable(%struct.term* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define %struct.term* @term_Copy(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Result = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %ArgumentList = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  %call2 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %ArgumentList, align 8
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i32 @list_Exist(%struct.LIST_HELP* %2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call5 to %struct.term*
  %call6 = call %struct.term* @term_Copy(%struct.term* %5)
  %6 = bitcast %struct.term* %call6 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %3, i8* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgumentList, align 8
  %call9 = call %struct.term* @term_Create(i32 %call8, %struct.LIST_HELP* %9)
  store %struct.term* %call9, %struct.term** %Result, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %10)
  %call11 = call %struct.LIST_HELP* @list_Nil()
  %call12 = call %struct.term* @term_Create(i32 %call10, %struct.LIST_HELP* %call11)
  store %struct.term* %call12, %struct.term** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %11 = load %struct.term*, %struct.term** %Term.addr, align 8
  %stamp = getelementptr inbounds %struct.term, %struct.term* %11, i32 0, i32 3
  %12 = load i32, i32* %stamp, align 4
  %13 = load %struct.term*, %struct.term** %Result, align 8
  %stamp13 = getelementptr inbounds %struct.term, %struct.term* %13, i32 0, i32 3
  store i32 %12, i32* %stamp13, align 4
  %14 = load %struct.term*, %struct.term** %Term.addr, align 8
  %size = getelementptr inbounds %struct.term, %struct.term* %14, i32 0, i32 4
  %15 = load i32, i32* %size, align 4
  %16 = load %struct.term*, %struct.term** %Result, align 8
  %size14 = getelementptr inbounds %struct.term, %struct.term* %16, i32 0, i32 4
  store i32 %15, i32* %size14, align 4
  %17 = load %struct.term*, %struct.term** %Result, align 8
  ret %struct.term* %17
}

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #1

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

; Function Attrs: nounwind uwtable
define %struct.term* @term_CopyIterative(%struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %TopStack = alloca %struct.LIST_HELP*, align 8
  %ArgumentStack = alloca %struct.LIST_HELP*, align 8
  %ActStack = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.51

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  %conv = sext i32 %call1 to i64
  %2 = inttoptr i64 %conv to i8*
  %call2 = call %struct.LIST_HELP* @list_StackBottom()
  %call3 = call %struct.LIST_HELP* @list_Push(i8* %2, %struct.LIST_HELP* %call2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %TopStack, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  %call5 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call4)
  %4 = bitcast %struct.LIST_HELP* %call5 to i8*
  %call6 = call %struct.LIST_HELP* @list_StackBottom()
  %call7 = call %struct.LIST_HELP* @list_Push(i8* %4, %struct.LIST_HELP* %call6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %ArgumentStack, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgumentStack, align 8
  %call8 = call i8* @list_Top(%struct.LIST_HELP* %5)
  %call9 = call %struct.LIST_HELP* @list_StackBottom()
  %call10 = call %struct.LIST_HELP* @list_Push(i8* %call8, %struct.LIST_HELP* %call9)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %ActStack, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.50, %if.then
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TopStack, align 8
  %call11 = call i32 @list_StackEmpty(%struct.LIST_HELP* %6)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ActStack, align 8
  %call13 = call i8* @list_Top(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call13 to %struct.LIST_HELP*
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %while.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TopStack, align 8
  %call17 = call i8* @list_Top(%struct.LIST_HELP* %9)
  %10 = ptrtoint i8* %call17 to i32
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgumentStack, align 8
  %call18 = call i8* @list_Top(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call18 to %struct.LIST_HELP*
  %call19 = call %struct.term* @term_Create(i32 %10, %struct.LIST_HELP* %12)
  store %struct.term* %call19, %struct.term** %Term.addr, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TopStack, align 8
  %call20 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %TopStack, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgumentStack, align 8
  %call21 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %ArgumentStack, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ActStack, align 8
  %call22 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %ActStack, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TopStack, align 8
  %call23 = call i32 @list_StackEmpty(%struct.LIST_HELP* %16)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end, label %if.then.25

if.then.25:                                       ; preds = %if.then.16
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ActStack, align 8
  %call26 = call i8* @list_Top(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call26 to %struct.LIST_HELP*
  %19 = load %struct.term*, %struct.term** %Term.addr, align 8
  %20 = bitcast %struct.term* %19 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %18, i8* %20)
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ActStack, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ActStack, align 8
  %call27 = call i8* @list_Top(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call27 to %struct.LIST_HELP*
  %call28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  %24 = bitcast %struct.LIST_HELP* %call28 to i8*
  call void @list_RplacTop(%struct.LIST_HELP* %21, i8* %24)
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.then.16
  br label %if.end.50

if.else:                                          ; preds = %while.body
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ActStack, align 8
  %call29 = call i8* @list_Top(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call29 to %struct.LIST_HELP*
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %26)
  %27 = bitcast i8* %call30 to %struct.term*
  store %struct.term* %27, %struct.term** %Term.addr, align 8
  %28 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call31 = call i32 @term_IsComplex(%struct.term* %28)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.42

if.then.33:                                       ; preds = %if.else
  %29 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call34 = call i32 @term_TopSymbol(%struct.term* %29)
  %conv35 = sext i32 %call34 to i64
  %30 = inttoptr i64 %conv35 to i8*
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TopStack, align 8
  %call36 = call %struct.LIST_HELP* @list_Push(i8* %30, %struct.LIST_HELP* %31)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %TopStack, align 8
  %32 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call37 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %32)
  %call38 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call37)
  %33 = bitcast %struct.LIST_HELP* %call38 to i8*
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgumentStack, align 8
  %call39 = call %struct.LIST_HELP* @list_Push(i8* %33, %struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call39, %struct.LIST_HELP** %ArgumentStack, align 8
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgumentStack, align 8
  %call40 = call i8* @list_Top(%struct.LIST_HELP* %35)
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ActStack, align 8
  %call41 = call %struct.LIST_HELP* @list_Push(i8* %call40, %struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %ActStack, align 8
  br label %if.end.49

if.else.42:                                       ; preds = %if.else
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ActStack, align 8
  %call43 = call i8* @list_Top(%struct.LIST_HELP* %37)
  %38 = bitcast i8* %call43 to %struct.LIST_HELP*
  %39 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call44 = call i32 @term_TopSymbol(%struct.term* %39)
  %call45 = call %struct.LIST_HELP* @list_Nil()
  %call46 = call %struct.term* @term_Create(i32 %call44, %struct.LIST_HELP* %call45)
  %40 = bitcast %struct.term* %call46 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %38, i8* %40)
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ActStack, align 8
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ActStack, align 8
  %call47 = call i8* @list_Top(%struct.LIST_HELP* %42)
  %43 = bitcast i8* %call47 to %struct.LIST_HELP*
  %call48 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %43)
  %44 = bitcast %struct.LIST_HELP* %call48 to i8*
  call void @list_RplacTop(%struct.LIST_HELP* %41, i8* %44)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.42, %if.then.33
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %45, %struct.term** %retval
  br label %return

if.else.51:                                       ; preds = %entry
  %46 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call52 = call i32 @term_TopSymbol(%struct.term* %46)
  %call53 = call %struct.LIST_HELP* @list_Nil()
  %call54 = call %struct.term* @term_Create(i32 %call52, %struct.LIST_HELP* %call53)
  store %struct.term* %call54, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.else.51, %while.end
  %47 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %47
}

; Function Attrs: nounwind uwtable
define %struct.term* @term_CopyWithEmptyArgListNode(%struct.term* %Term, %struct.LIST_HELP* %ArgListNode, %struct.LIST_HELP** %ListNodeCopyPt) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %ArgListNode.addr = alloca %struct.LIST_HELP*, align 8
  %ListNodeCopyPt.addr = alloca %struct.LIST_HELP**, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %ArgumentList = alloca %struct.LIST_HELP*, align 8
  %HelpScan = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.LIST_HELP* %ArgListNode, %struct.LIST_HELP** %ArgListNode.addr, align 8
  store %struct.LIST_HELP** %ListNodeCopyPt, %struct.LIST_HELP*** %ListNodeCopyPt.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.13

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %HelpScan, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpScan, align 8
  %call2 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %2)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %ArgumentList, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgumentList, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i32 @list_Exist(%struct.LIST_HELP* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpScan, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgListNode.addr, align 8
  %cmp = icmp ne %struct.LIST_HELP* %5, %6
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call6 to %struct.term*
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgListNode.addr, align 8
  %11 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ListNodeCopyPt.addr, align 8
  %call7 = call %struct.term* @term_CopyWithEmptyArgListNode(%struct.term* %9, %struct.LIST_HELP* %10, %struct.LIST_HELP** %11)
  %12 = bitcast %struct.term* %call7 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %7, i8* %12)
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %13, i8* null)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %15 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ListNodeCopyPt.addr, align 8
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %15, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpScan, align 8
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %HelpScan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call10 = call i8* @memory_Malloc(i32 32)
  %18 = bitcast i8* %call10 to %struct.term*
  store %struct.term* %18, %struct.term** %Result, align 8
  %19 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call11 = call i32 @term_TopSymbol(%struct.term* %19)
  %20 = load %struct.term*, %struct.term** %Result, align 8
  %symbol = getelementptr inbounds %struct.term, %struct.term* %20, i32 0, i32 0
  store i32 %call11, i32* %symbol, align 4
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgumentList, align 8
  %22 = load %struct.term*, %struct.term** %Result, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %22, i32 0, i32 2
  store %struct.LIST_HELP* %21, %struct.LIST_HELP** %args, align 8
  %call12 = call %struct.LIST_HELP* @list_Nil()
  %23 = load %struct.term*, %struct.term** %Result, align 8
  %super = getelementptr inbounds %struct.term, %struct.term* %23, i32 0, i32 1
  %termlist = bitcast %union.anon* %super to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %termlist, align 8
  %24 = load %struct.term*, %struct.term** %Result, align 8
  store %struct.term* %24, %struct.term** %retval
  br label %return

if.else.13:                                       ; preds = %entry
  %25 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call14 = call i32 @term_TopSymbol(%struct.term* %25)
  %call15 = call %struct.LIST_HELP* @list_Nil()
  %call16 = call %struct.term* @term_Create(i32 %call14, %struct.LIST_HELP* %call15)
  store %struct.term* %call16, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.else.13, %for.end
  %26 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %26
}

; Function Attrs: nounwind uwtable
define void @term_PrintWithEmptyArgListNode(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp = icmp eq %struct.term* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %1)
  br label %if.end.18

if.else:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsComplex(%struct.term* %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.else.8

if.then.2:                                        ; preds = %if.else
  %call3 = call i32 @putchar(i32 40)
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %3)
  call void @symbol_Print(i32 %call4)
  %call5 = call i32 @putchar(i32 32)
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  call void @list_Apply(void (i8*)* bitcast (void (%struct.term*)* @term_PrintWithEmptyArgListNode to void (i8*)*), %struct.LIST_HELP* %call6)
  %call7 = call i32 @putchar(i32 41)
  br label %if.end.17

if.else.8:                                        ; preds = %if.else
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call i32 @term_IsVariable(%struct.term* %5)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.else.8
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call12 = call i32 @term_TopSymbol(%struct.term* %6)
  call void @symbol_Print(i32 %call12)
  br label %if.end

if.else.13:                                       ; preds = %if.else.8
  %call14 = call i32 @putchar(i32 40)
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call15 = call i32 @term_TopSymbol(%struct.term* %7)
  call void @symbol_Print(i32 %call15)
  %call16 = call i32 @putchar(i32 41)
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.2
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @putchar(i32) #1

declare void @symbol_Print(i32) #1

declare void @list_Apply(void (i8*)*, %struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define i32 @term_ReplaceSubtermBy(%struct.term* %Atom, %struct.term* %TermS, %struct.term* %TermT) #0 {
entry:
  %Atom.addr = alloca %struct.term*, align 8
  %TermS.addr = alloca %struct.term*, align 8
  %TermT.addr = alloca %struct.term*, align 8
  %ArgListNode = alloca %struct.LIST_HELP*, align 8
  %Replaced = alloca i32, align 4
  %B_Stack = alloca i32, align 4
  store %struct.term* %Atom, %struct.term** %Atom.addr, align 8
  store %struct.term* %TermS, %struct.term** %TermS.addr, align 8
  store %struct.term* %TermT, %struct.term** %TermT.addr, align 8
  store i32 0, i32* %Replaced, align 4
  %0 = load %struct.term*, %struct.term** %TermS.addr, align 8
  %call = call %struct.term* @term_Copy(%struct.term* %0)
  store %struct.term* %call, %struct.term** %TermS.addr, align 8
  %1 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %2 = load %struct.term*, %struct.term** %TermS.addr, align 8
  %call1 = call i32 @term_Equal(%struct.term* %1, %struct.term* %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.30, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.30, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call5 = call i32 @stack_Bottom()
  store i32 %call5, i32* %B_Stack, align 4
  %4 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  %5 = bitcast %struct.LIST_HELP* %call6 to i8*
  call void @stack_Push(i8* %5)
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then
  %6 = load i32, i32* %B_Stack, align 4
  %call7 = call i32 @stack_Empty(i32 %6)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %while.body, label %while.end.29

while.body:                                       ; preds = %while.cond
  %call9 = call i8* @stack_Top()
  %7 = bitcast i8* %call9 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %ArgListNode, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgListNode, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call10 to %struct.term*
  store %struct.term* %9, %struct.term** %Atom.addr, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgListNode, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  %11 = bitcast %struct.LIST_HELP* %call11 to i8*
  call void @stack_RplacTop(i8* %11)
  %12 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %13 = load %struct.term*, %struct.term** %TermS.addr, align 8
  %call12 = call i32 @term_Equal(%struct.term* %12, %struct.term* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %while.body
  store i32 1, i32* %Replaced, align 4
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgListNode, align 8
  %15 = load %struct.term*, %struct.term** %TermT.addr, align 8
  %call15 = call %struct.term* @term_Copy(%struct.term* %15)
  %16 = bitcast %struct.term* %call15 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %14, i8* %16)
  %17 = load %struct.term*, %struct.term** %Atom.addr, align 8
  call void @term_Delete(%struct.term* %17)
  br label %if.end.20

if.else:                                          ; preds = %while.body
  %18 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call16 = call i32 @term_IsComplex(%struct.term* %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else
  %19 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %19)
  %20 = bitcast %struct.LIST_HELP* %call19 to i8*
  call void @stack_Push(i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.14
  br label %while.cond.21

while.cond.21:                                    ; preds = %while.body.27, %if.end.20
  %21 = load i32, i32* %B_Stack, align 4
  %call22 = call i32 @stack_Empty(i32 %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond.21
  %call24 = call i8* @stack_Top()
  %22 = bitcast i8* %call24 to %struct.LIST_HELP*
  %call25 = call i32 @list_Empty(%struct.LIST_HELP* %22)
  %tobool26 = icmp ne i32 %call25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.21
  %23 = phi i1 [ false, %while.cond.21 ], [ %tobool26, %land.rhs ]
  br i1 %23, label %while.body.27, label %while.end

while.body.27:                                    ; preds = %land.end
  %call28 = call i32 @stack_Pop()
  br label %while.cond.21

while.end:                                        ; preds = %land.end
  br label %while.cond

while.end.29:                                     ; preds = %while.cond
  br label %if.end.30

if.end.30:                                        ; preds = %while.end.29, %land.lhs.true, %entry
  %24 = load %struct.term*, %struct.term** %TermS.addr, align 8
  call void @term_Delete(%struct.term* %24)
  %25 = load i32, i32* %Replaced, align 4
  ret i32 %25
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Bottom() #2 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  ret i32 %0
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Pop() #2 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* @stack_POINTER, align 4
  ret i32 %dec
}

; Function Attrs: nounwind uwtable
define void @term_ReplaceVariable(%struct.term* %Term, i32 %Symbol, %struct.term* %Repl) #0 {
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
  %1 = load i32, i32* %Symbol.addr, align 4
  %call1 = call i32 @symbol_Equal(i32 %call, i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %3 = load %struct.term*, %struct.term** %Repl.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %3)
  call void @term_RplacTop(%struct.term* %2, i32 %call2)
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %5 = load %struct.term*, %struct.term** %Repl.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  %call4 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call3)
  call void @term_RplacArgumentList(%struct.term* %4, %struct.LIST_HELP* %call4)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call8 to %struct.term*
  %10 = load i32, i32* %Symbol.addr, align 4
  %11 = load %struct.term*, %struct.term** %Repl.addr, align 8
  call void @term_ReplaceVariable(%struct.term* %9, i32 %10, %struct.term* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
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
define internal %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %List) #2 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP* %0, i8* (i8*)* bitcast (%struct.term* (%struct.term*)* @term_Copy to i8* (i8*)*))
  ret %struct.LIST_HELP* %call
}

; Function Attrs: nounwind uwtable
define void @term_ExchangeVariable(%struct.term* %Term, i32 %Old, i32 %New) #0 {
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
  call void @term_ExchangeVariable(%struct.term* %7, i32 %8, i32 %9)
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
define i32 @term_SubstituteVariable(i32 %Symbol, %struct.term* %Repl, %struct.term** %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Symbol.addr = alloca i32, align 4
  %Repl.addr = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term**, align 8
  %New = alloca %struct.term*, align 8
  %Result = alloca i32, align 4
  %List = alloca %struct.LIST_HELP*, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store %struct.term* %Repl, %struct.term** %Repl.addr, align 8
  store %struct.term** %Term, %struct.term*** %Term.addr, align 8
  %0 = load %struct.term**, %struct.term*** %Term.addr, align 8
  %1 = load %struct.term*, %struct.term** %0, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %1)
  %2 = load i32, i32* %Symbol.addr, align 4
  %call1 = call i32 @symbol_Equal(i32 %call, i32 %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %Repl.addr, align 8
  %call2 = call %struct.term* @term_Copy(%struct.term* %3)
  store %struct.term* %call2, %struct.term** %New, align 8
  %4 = load %struct.term*, %struct.term** %Repl.addr, align 8
  %symbol = getelementptr inbounds %struct.term, %struct.term* %4, i32 0, i32 0
  %5 = load i32, i32* %symbol, align 4
  %6 = load %struct.term**, %struct.term*** %Term.addr, align 8
  %7 = load %struct.term*, %struct.term** %6, align 8
  %symbol3 = getelementptr inbounds %struct.term, %struct.term* %7, i32 0, i32 0
  store i32 %5, i32* %symbol3, align 4
  %8 = load %struct.term*, %struct.term** %New, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %8)
  %9 = load %struct.term**, %struct.term*** %Term.addr, align 8
  %10 = load %struct.term*, %struct.term** %9, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %10, i32 0, i32 2
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %args, align 8
  %11 = load %struct.term*, %struct.term** %New, align 8
  %12 = bitcast %struct.term* %11 to i8*
  call void @memory_Free(i8* %12, i32 32)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %Result, align 4
  %13 = load %struct.term**, %struct.term*** %Term.addr, align 8
  %14 = load %struct.term*, %struct.term** %13, align 8
  %call5 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %14)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %List, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List, align 8
  %call6 = call i32 @list_Exist(%struct.LIST_HELP* %15)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %Symbol.addr, align 4
  %17 = load %struct.term*, %struct.term** %Repl.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %18, i32 0, i32 1
  %19 = bitcast i8** %car to %struct.term**
  %call8 = call i32 @term_SubstituteVariable(i32 %16, %struct.term* %17, %struct.term** %19)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  store i32 1, i32* %Result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %List, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %Result, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @term_ListOfConstants(%struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsConstant(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %1)
  %conv = sext i32 %call2 to i64
  %2 = inttoptr i64 %conv to i8*
  %call3 = call %struct.LIST_HELP* @list_List(i8* %2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call4 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %result, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call8 to %struct.term*
  %call9 = call %struct.LIST_HELP* @term_ListOfConstants(%struct.term* %6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call10 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call9, %struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsConstant(i32 %S) #2 {
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
define %struct.LIST_HELP* @term_ListOfFunctions(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %result, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %0)
  %call2 = call i32 @symbol_IsFunction(i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %2)
  %conv = sext i32 %call3 to i64
  %3 = inttoptr i64 %conv to i8*
  %call4 = call %struct.LIST_HELP* @list_List(i8* %3)
  %call5 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %1, %struct.LIST_HELP* %call4)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call9 to %struct.term*
  %call10 = call %struct.LIST_HELP* @term_ListOfFunctions(%struct.term* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call11 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call10, %struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %10
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

; Function Attrs: nounwind uwtable
define void @term_CountSymbols(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %S = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsFunction(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %1)
  store i32 %call2, i32* %S, align 4
  %2 = load i32, i32* %S, align 4
  %3 = load i32, i32* %S, align 4
  %call3 = call i64 @symbol_GetCount(i32 %3)
  %add = add i64 %call3, 1
  call void @symbol_SetCount(i32 %2, i64 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call7 to %struct.term*
  call void @term_CountSymbols(%struct.term* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @symbol_SetCount(i32, i64) #1

declare i64 @symbol_GetCount(i32) #1

; Function Attrs: nounwind uwtable
define i32 @term_CompareBySymbolOccurences(%struct.term* %Left, %struct.term* %Right) #0 {
entry:
  %retval = alloca i32, align 4
  %Left.addr = alloca %struct.term*, align 8
  %Right.addr = alloca %struct.term*, align 8
  %lval = alloca i64, align 8
  %rval = alloca i64, align 8
  %lsymb = alloca i32, align 4
  %rsymb = alloca i32, align 4
  %largs = alloca %struct.LIST_HELP*, align 8
  %rargs = alloca %struct.LIST_HELP*, align 8
  %result = alloca i32, align 4
  store %struct.term* %Left, %struct.term** %Left.addr, align 8
  store %struct.term* %Right, %struct.term** %Right.addr, align 8
  store i32 0, i32* %result, align 4
  %0 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %lsymb, align 4
  %1 = load %struct.term*, %struct.term** %Right.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  store i32 %call1, i32* %rsymb, align 4
  %2 = load i32, i32* %lsymb, align 4
  %call2 = call i32 @symbol_IsFunction(i32 %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else.25

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %rsymb, align 4
  %call3 = call i32 @symbol_IsFunction(i32 %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %4 = load i32, i32* %lsymb, align 4
  %call6 = call i64 @symbol_GetCount(i32 %4)
  store i64 %call6, i64* %lval, align 8
  %5 = load i32, i32* %rsymb, align 4
  %call7 = call i64 @symbol_GetCount(i32 %5)
  store i64 %call7, i64* %rval, align 8
  %6 = load i64, i64* %lval, align 8
  %7 = load i64, i64* %rval, align 8
  %cmp = icmp ugt i64 %6, %7
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.5
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.5
  %8 = load i64, i64* %lval, align 8
  %9 = load i64, i64* %rval, align 8
  %cmp9 = icmp ult i64 %8, %9
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %10 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call12 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %10)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %largs, align 8
  %11 = load %struct.term*, %struct.term** %Right.addr, align 8
  %call13 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %11)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %rargs, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %if.end.11
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %largs, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot = xor i1 %tobool15, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %largs, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call16 to %struct.term*
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rargs, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call17 to %struct.term*
  %call18 = call i32 @term_CompareBySymbolOccurences(%struct.term* %14, %struct.term* %16)
  store i32 %call18, i32* %result, align 4
  %17 = load i32, i32* %result, align 4
  %cmp19 = icmp ne i32 %17, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.body
  br label %while.end

if.end.21:                                        ; preds = %while.body
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %largs, align 8
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %largs, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rargs, align 8
  %call23 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %rargs, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.20, %while.cond
  br label %if.end.24

if.else:                                          ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %while.end
  br label %if.end.30

if.else.25:                                       ; preds = %entry
  %20 = load i32, i32* %rsymb, align 4
  %call26 = call i32 @symbol_IsFunction(i32 %20)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.else.25
  store i32 1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.else.25
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.24
  %21 = load i32, i32* %result, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.28, %if.else, %if.then.10, %if.then.8
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @term_CompareAbstract(%struct.term* %Left, %struct.term* %Right) #0 {
entry:
  %retval = alloca i32, align 4
  %Left.addr = alloca %struct.term*, align 8
  %Right.addr = alloca %struct.term*, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %functions = alloca i32, align 4
  store %struct.term* %Left, %struct.term** %Left.addr, align 8
  store %struct.term* %Right, %struct.term** %Right.addr, align 8
  store i32 0, i32* %result, align 4
  store i32 5, i32* %functions, align 4
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
  %arrayidx = getelementptr inbounds [5 x i32 (%struct.term*, %struct.term*)*], [5 x i32 (%struct.term*, %struct.term*)*]* @term_CompareAbstract.term_compare_functions, i32 0, i64 %idxprom
  %3 = load i32 (%struct.term*, %struct.term*)*, i32 (%struct.term*, %struct.term*)** %arrayidx, align 8
  %4 = load %struct.term*, %struct.term** %Left.addr, align 8
  %5 = load %struct.term*, %struct.term** %Right.addr, align 8
  %call = call i32 %3(%struct.term* %4, %struct.term* %5)
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
  %9 = load i32, i32* %result, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @term_CompareByArity(%struct.term* %Left, %struct.term* %Right) #0 {
entry:
  %retval = alloca i32, align 4
  %Left.addr = alloca %struct.term*, align 8
  %Right.addr = alloca %struct.term*, align 8
  %lval = alloca i32, align 4
  %rval = alloca i32, align 4
  %lsymb = alloca i32, align 4
  %rsymb = alloca i32, align 4
  %largs = alloca %struct.LIST_HELP*, align 8
  %rargs = alloca %struct.LIST_HELP*, align 8
  %result = alloca i32, align 4
  store %struct.term* %Left, %struct.term** %Left.addr, align 8
  store %struct.term* %Right, %struct.term** %Right.addr, align 8
  store i32 0, i32* %result, align 4
  %0 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %lsymb, align 4
  %1 = load %struct.term*, %struct.term** %Right.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  store i32 %call1, i32* %rsymb, align 4
  %2 = load i32, i32* %lsymb, align 4
  %call2 = call i32 @symbol_IsVariable(i32 %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else.6

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %rsymb, align 4
  %call3 = call i32 @symbol_IsVariable(i32 %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.else.6:                                        ; preds = %entry
  %4 = load i32, i32* %rsymb, align 4
  %call7 = call i32 @symbol_IsVariable(i32 %4)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else.6
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end
  %5 = load i32, i32* %lsymb, align 4
  %call11 = call i32 @symbol_Arity(i32 %5)
  store i32 %call11, i32* %lval, align 4
  %6 = load i32, i32* %rsymb, align 4
  %call12 = call i32 @symbol_Arity(i32 %6)
  store i32 %call12, i32* %rval, align 4
  %7 = load i32, i32* %lval, align 4
  %8 = load i32, i32* %rval, align 4
  %cmp = icmp ugt i32 %7, %8
  br i1 %cmp, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %9 = load i32, i32* %lval, align 4
  %10 = load i32, i32* %rval, align 4
  %cmp15 = icmp ult i32 %9, %10
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %11 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call18 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %11)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %largs, align 8
  %12 = load %struct.term*, %struct.term** %Right.addr, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %rargs, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %if.end.17
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %largs, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %largs, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call22 to %struct.term*
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rargs, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call23 to %struct.term*
  %call24 = call i32 @term_CompareByArity(%struct.term* %15, %struct.term* %17)
  store i32 %call24, i32* %result, align 4
  %18 = load i32, i32* %result, align 4
  %cmp25 = icmp ne i32 %18, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %while.body
  br label %while.end

if.end.27:                                        ; preds = %while.body
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %largs, align 8
  %call28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %largs, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rargs, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %rargs, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.26, %while.cond
  %21 = load i32, i32* %result, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.16, %if.then.13, %if.then.9, %if.else, %if.then.5
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @term_CompareByConstants(%struct.term* %Left, %struct.term* %Right) #0 {
entry:
  %Left.addr = alloca %struct.term*, align 8
  %Right.addr = alloca %struct.term*, align 8
  %lconsts = alloca %struct.LIST_HELP*, align 8
  %rconsts = alloca %struct.LIST_HELP*, align 8
  %result = alloca i32, align 4
  store %struct.term* %Left, %struct.term** %Left.addr, align 8
  store %struct.term* %Right, %struct.term** %Right.addr, align 8
  %0 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call = call %struct.LIST_HELP* @term_ListOfConstants(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %lconsts, align 8
  %1 = load %struct.term*, %struct.term** %Right.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_ListOfConstants(%struct.term* %1)
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
define internal i32 @term_CompareByVariables(%struct.term* %Left, %struct.term* %Right) #0 {
entry:
  %Left.addr = alloca %struct.term*, align 8
  %Right.addr = alloca %struct.term*, align 8
  %lvars = alloca %struct.LIST_HELP*, align 8
  %rvars = alloca %struct.LIST_HELP*, align 8
  %result = alloca i32, align 4
  store %struct.term* %Left, %struct.term** %Left.addr, align 8
  store %struct.term* %Right, %struct.term** %Right.addr, align 8
  %0 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call = call %struct.LIST_HELP* @term_ListOfVariables(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %lvars, align 8
  %1 = load %struct.term*, %struct.term** %Right.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_ListOfVariables(%struct.term* %1)
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
define internal i32 @term_CompareByFunctions(%struct.term* %Left, %struct.term* %Right) #0 {
entry:
  %Left.addr = alloca %struct.term*, align 8
  %Right.addr = alloca %struct.term*, align 8
  %lfuns = alloca %struct.LIST_HELP*, align 8
  %rfuns = alloca %struct.LIST_HELP*, align 8
  %result = alloca i32, align 4
  store %struct.term* %Left, %struct.term** %Left.addr, align 8
  store %struct.term* %Right, %struct.term** %Right.addr, align 8
  %0 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call = call %struct.LIST_HELP* @term_ListOfFunctions(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %lfuns, align 8
  %1 = load %struct.term*, %struct.term** %Right.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_ListOfFunctions(%struct.term* %1)
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
define i32 @term_CompareAbstractLEQ(%struct.term* %Left, %struct.term* %Right) #0 {
entry:
  %Left.addr = alloca %struct.term*, align 8
  %Right.addr = alloca %struct.term*, align 8
  store %struct.term* %Left, %struct.term** %Left.addr, align 8
  store %struct.term* %Right, %struct.term** %Right.addr, align 8
  %0 = load %struct.term*, %struct.term** %Left.addr, align 8
  %1 = load %struct.term*, %struct.term** %Right.addr, align 8
  %call = call i32 @term_CompareAbstract(%struct.term* %0, %struct.term* %1)
  %cmp = icmp sge i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @term_ComputeSize(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Weight = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 1, i32* %Weight, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
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
  %call3 = call i32 @term_ComputeSize(%struct.term* %3)
  %4 = load i32, i32* %Weight, align 4
  %add = add i32 %4, %call3
  store i32 %add, i32* %Weight, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %Weight, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @term_RootDistance(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Distance = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 0, i32* %Distance, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %0)
  %cmp = icmp ne %struct.term* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %Distance, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %Distance, align 4
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.term* @term_Superterm(%struct.term* %2)
  store %struct.term* %call1, %struct.term** %Term.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %Distance, align 4
  ret i32 %3
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
define i32 @term_RootDistanceSmaller(%struct.term* %Term1, %struct.term* %Term2) #0 {
entry:
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call = call i32 @term_RootDistance(%struct.term* %0)
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call1 = call i32 @term_RootDistance(%struct.term* %1)
  %cmp = icmp ult i32 %call, %call1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @term_InstallSize(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Weight = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 1, i32* %Weight, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
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
  call void @term_InstallSize(%struct.term* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.term*
  %call4 = call i32 @term_Size(%struct.term* %5)
  %6 = load i32, i32* %Weight, align 4
  %add = add i32 %6, %call4
  store i32 %add, i32* %Weight, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %9 = load i32, i32* %Weight, align 4
  call void @term_SetSize(%struct.term* %8, i32 %9)
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
define internal void @term_SetSize(%struct.term* %T, i32 %s) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  %s.addr = alloca i32, align 4
  store %struct.term* %T, %struct.term** %T.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %0 = load i32, i32* %s.addr, align 4
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %size = getelementptr inbounds %struct.term, %struct.term* %1, i32 0, i32 4
  store i32 %0, i32* %size, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @term_Depth(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Depth = alloca i32, align 4
  %Help = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 0, i32* %Depth, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
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
  %call3 = call i32 @term_Depth(%struct.term* %3)
  store i32 %call3, i32* %Help, align 4
  %4 = load i32, i32* %Help, align 4
  %5 = load i32, i32* %Depth, align 4
  %cmp = icmp ugt i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %Help, align 4
  store i32 %6, i32* %Depth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %Depth, align 4
  %add = add i32 %8, 1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define i32 @term_ContainsSymbol(%struct.term* %Term, i32 %Symbol) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Symbol.addr = alloca i32, align 4
  %Stack = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Stack, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %0)
  %1 = load i32, i32* %Symbol.addr, align 4
  %cmp = icmp eq i32 %call1, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %Stack, align 4
  call void @stack_SetBottom(i32 %2)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %do.body
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_IsComplex(%struct.term* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  %5 = bitcast %struct.LIST_HELP* %call4 to i8*
  call void @stack_Push(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.5
  %6 = load i32, i32* %Stack, align 4
  %call6 = call i32 @stack_Empty(i32 %6)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call8 = call i8* @stack_Top()
  %7 = bitcast i8* %call8 to %struct.LIST_HELP*
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool10, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call11 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %Stack, align 4
  %call12 = call i32 @stack_Empty(i32 %9)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.19, label %if.then.14

if.then.14:                                       ; preds = %while.end
  %call15 = call i8* @stack_Top()
  %10 = bitcast i8* %call15 to %struct.LIST_HELP*
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call16 to %struct.term*
  store %struct.term* %11, %struct.term** %Term.addr, align 8
  %call17 = call i8* @stack_Top()
  %12 = bitcast i8* %call17 to %struct.LIST_HELP*
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  %13 = bitcast %struct.LIST_HELP* %call18 to i8*
  call void @stack_RplacTop(i8* %13)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  %14 = load i32, i32* %Stack, align 4
  %call20 = call i32 @stack_Empty(i32 %14)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
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

; Function Attrs: nounwind uwtable
define %struct.term* @term_FindSubterm(%struct.term* %Term, i32 %Symbol) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Symbol.addr = alloca i32, align 4
  %stack = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %stack, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %0)
  %1 = load i32, i32* %Symbol.addr, align 4
  %cmp = icmp eq i32 %call1, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %stack, align 4
  call void @stack_SetBottom(i32 %2)
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %3, %struct.term** %retval
  br label %return

if.else:                                          ; preds = %do.body
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_IsComplex(%struct.term* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  %6 = bitcast %struct.LIST_HELP* %call4 to i8*
  call void @stack_Push(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.5
  %7 = load i32, i32* %stack, align 4
  %call6 = call i32 @stack_Empty(i32 %7)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call8 = call i8* @stack_Top()
  %8 = bitcast i8* %call8 to %struct.LIST_HELP*
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %tobool10, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call11 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i32, i32* %stack, align 4
  %call12 = call i32 @stack_Empty(i32 %10)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.19, label %if.then.14

if.then.14:                                       ; preds = %while.end
  %call15 = call i8* @stack_Top()
  %11 = bitcast i8* %call15 to %struct.LIST_HELP*
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call16 to %struct.term*
  store %struct.term* %12, %struct.term** %Term.addr, align 8
  %call17 = call i8* @stack_Top()
  %13 = bitcast i8* %call17 to %struct.LIST_HELP*
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  %14 = bitcast %struct.LIST_HELP* %call18 to i8*
  call void @stack_RplacTop(i8* %14)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  %15 = load i32, i32* %stack, align 4
  %call20 = call i32 @stack_Empty(i32 %15)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store %struct.term* null, %struct.term** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %16 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %16
}

; Function Attrs: nounwind uwtable
define i32 @term_Sharing(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %stack = alloca i32, align 4
  %ActTerm = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %stack, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @stack_Push(i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %entry
  %2 = load i32, i32* %stack, align 4
  %call1 = call i32 @stack_Empty(i32 %2)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @stack_Top()
  %3 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %3, %struct.term** %ActTerm, align 8
  %call3 = call i32 @stack_Pop()
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %5 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call4 = call i32 @term_SharingTerm(%struct.term* %4, %struct.term* %5)
  %cmp = icmp sgt i32 %call4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_IsComplex(%struct.term* %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.18

if.then.7:                                        ; preds = %if.end
  %7 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot11 = xor i1 %tobool10, true
  br i1 %lnot11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call i32 @term_SharingList(%struct.term* %9, %struct.LIST_HELP* %10)
  %cmp13 = icmp sgt i32 %call12, 1
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %11)
  call void @stack_Push(i8* %call15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.14, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @term_SharingTerm(%struct.term* %Term, %struct.term* %CompareTerm) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %CompareTerm.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %n = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %CompareTerm, %struct.term** %CompareTerm.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = load %struct.term*, %struct.term** %CompareTerm.addr, align 8
  %cmp = icmp eq %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call2 to %struct.term*
  %6 = load %struct.term*, %struct.term** %CompareTerm.addr, align 8
  %call3 = call i32 @term_SharingTerm(%struct.term* %5, %struct.term* %6)
  %7 = load i32, i32* %n, align 4
  %add = add nsw i32 %7, %call3
  store i32 %add, i32* %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %n, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @term_SharingList(%struct.term* %Term, %struct.LIST_HELP* %List) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %n = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
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
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %cmp = icmp eq %struct.LIST_HELP* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %n, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call2 to %struct.term*
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call3 = call i32 @term_SharingList(%struct.term* %6, %struct.LIST_HELP* %7)
  %8 = load i32, i32* %n, align 4
  %add = add nsw i32 %8, %call3
  store i32 %add, i32* %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %n, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @term_AddFatherLinks(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %ActTerm = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_RplacSuperterm(%struct.term* %0, %struct.term* null)
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Scan, align 8
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
  %4 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %4, %struct.term** %ActTerm, align 8
  %5 = load %struct.term*, %struct.term** %ActTerm, align 8
  call void @term_AddFatherLinks(%struct.term* %5)
  %6 = load %struct.term*, %struct.term** %ActTerm, align 8
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_RplacSuperterm(%struct.term* %6, %struct.term* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @term_FatherLinksEstablished(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call2 to %struct.term*
  %call3 = call %struct.term* @term_Superterm(%struct.term* %4)
  %cmp = icmp ne %struct.term* %2, %call3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call4 to %struct.term*
  %call5 = call i32 @term_FatherLinksEstablished(%struct.term* %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define %struct.term* @term_TopLevelTerm(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %0)
  %tobool = icmp ne %struct.term* %call, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.term* @term_Superterm(%struct.term* %1)
  store %struct.term* %call1, %struct.term** %Term.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %2
}

; Function Attrs: nounwind uwtable
define i32 @term_HasPointerSubterm(%struct.term* %Term, %struct.term* %Subterm) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Subterm.addr = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %Subterm, %struct.term** %Subterm.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %cmp = icmp eq %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call2 to %struct.term*
  %6 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %call3 = call i32 @term_HasPointerSubterm(%struct.term* %5, %struct.term* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %scan, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.7

if.end.7:                                         ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @term_HasSubterm(%struct.term* %Term, %struct.term* %Subterm) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Subterm.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %Subterm, %struct.term** %Subterm.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %call = call i32 @term_Equal(%struct.term* %0, %struct.term* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call4 to %struct.term*
  %6 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %call5 = call i32 @term_HasSubterm(%struct.term* %5, %struct.term* %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.9

if.end.9:                                         ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @term_HasProperSuperterm(%struct.term* %Term, %struct.term* %Super) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Super.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %Super, %struct.term** %Super.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = load %struct.term*, %struct.term** %Super.addr, align 8
  %cmp = icmp eq %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %if.end
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp1 = icmp ne %struct.term* %2, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %4 = load %struct.term*, %struct.term** %Super.addr, align 8
  %cmp2 = icmp eq %struct.term* %3, %4
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %5)
  store %struct.term* %call, %struct.term** %Term.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @term_Print(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 @putchar(i32 40)
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %1)
  call void @symbol_Print(i32 %call2)
  %call3 = call i32 @putchar(i32 32)
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  call void @term_TermListPrint(%struct.LIST_HELP* %call4)
  %call5 = call i32 @putchar(i32 41)
  br label %if.end.14

if.else:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call i32 @term_IsVariable(%struct.term* %3)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call i32 @term_TopSymbol(%struct.term* %4)
  call void @symbol_Print(i32 %call9)
  br label %if.end

if.else.10:                                       ; preds = %if.else
  %call11 = call i32 @putchar(i32 40)
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call12 = call i32 @term_TopSymbol(%struct.term* %5)
  call void @symbol_Print(i32 %call12)
  %call13 = call i32 @putchar(i32 41)
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @term_TermListPrint(%struct.LIST_HELP* %List) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.term*
  call void @term_Print(%struct.term* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %call3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call6 = call i32 @putchar(i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %List.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @term_PrettyPrint(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_PrettyPrintIntern(%struct.term* %0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @term_PrettyPrintIntern(%struct.term* %Term, i32 %Depth) #0 {
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
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %2)
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
  br i1 %tobool, label %if.then, label %if.else.34

if.then:                                          ; preds = %for.end
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_IsComplex(%struct.term* %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call i32 @term_TopSymbol(%struct.term* %6)
  call void @symbol_Print(i32 %call6)
  %call7 = call i32 @putchar(i32 40)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %8)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.20, %if.then.5
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %for.body.13, label %for.end.22

for.body.13:                                      ; preds = %for.cond.10
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call14 to %struct.term*
  %12 = load i32, i32* %Depth.addr, align 4
  %add = add nsw i32 %12, 1
  call void @term_PrettyPrintIntern(%struct.term* %11, i32 %add)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end, label %if.then.18

if.then.18:                                       ; preds = %for.body.13
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call19 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.18, %for.body.13
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.10

for.end.22:                                       ; preds = %for.cond.10
  %call23 = call i32 @putchar(i32 41)
  br label %if.end.33

if.else:                                          ; preds = %if.then
  %16 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call24 = call i32 @term_IsVariable(%struct.term* %16)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else
  %17 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call27 = call i32 @term_TopSymbol(%struct.term* %17)
  call void @symbol_Print(i32 %call27)
  br label %if.end.32

if.else.28:                                       ; preds = %if.else
  %call29 = call i32 @putchar(i32 40)
  %18 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call30 = call i32 @term_TopSymbol(%struct.term* %18)
  call void @symbol_Print(i32 %call30)
  %call31 = call i32 @putchar(i32 41)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.28, %if.then.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.end.22
  br label %if.end.35

if.else.34:                                       ; preds = %for.end
  %19 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_PrintPrefix(%struct.term* %19)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.end.33
  ret void
}

; Function Attrs: nounwind uwtable
define void @term_FPrint(%struct._IO_FILE* %File, %struct.term* %Term) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Term.addr = alloca %struct.term*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %3)
  call void @symbol_FPrint(%struct._IO_FILE* %2, i32 %call2)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call3 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  call void @term_TermListFPrint(%struct._IO_FILE* %5, %struct.LIST_HELP* %call4)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call5 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %7)
  br label %if.end.14

if.else:                                          ; preds = %entry
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call i32 @term_IsVariable(%struct.term* %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call i32 @term_TopSymbol(%struct.term* %10)
  call void @symbol_FPrint(%struct._IO_FILE* %9, i32 %call9)
  br label %if.end

if.else.10:                                       ; preds = %if.else
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call11 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call12 = call i32 @term_TopSymbol(%struct.term* %13)
  call void @symbol_FPrint(%struct._IO_FILE* %12, i32 %call12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call13 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %14)
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare void @symbol_FPrint(%struct._IO_FILE*, i32) #1

; Function Attrs: nounwind uwtable
define void @term_TermListFPrint(%struct._IO_FILE* %File, %struct.LIST_HELP* %List) #0 {
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
  call void @term_FPrint(%struct._IO_FILE* %1, %struct.term* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call5 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %5)
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

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @term_PrintPrefix(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  call void @symbol_Print(i32 %call1)
  %call2 = call i32 @putchar(i32 40)
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  call void @term_TermListPrintPrefix(%struct.LIST_HELP* %call3)
  %call4 = call i32 @putchar(i32 41)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %3)
  call void @symbol_Print(i32 %call5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @term_TermListPrintPrefix(%struct.LIST_HELP* %List) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.term*
  call void @term_PrintPrefix(%struct.term* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call5 = call i32 @putchar(i32 44)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %List.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @term_FPrintPrefix(%struct._IO_FILE* %File, %struct.term* %Term) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Term.addr = alloca %struct.term*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %2)
  call void @symbol_FPrint(%struct._IO_FILE* %1, i32 %call1)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call2 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  call void @term_TermListFPrintPrefix(%struct._IO_FILE* %4, %struct.LIST_HELP* %call3)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call4 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %8)
  call void @symbol_FPrint(%struct._IO_FILE* %7, i32 %call5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @term_TermListFPrintPrefix(%struct._IO_FILE* %File, %struct.LIST_HELP* %List) #0 {
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
  call void @term_FPrintPrefix(%struct._IO_FILE* %1, %struct.term* %3)
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

; Function Attrs: nounwind uwtable
define void @term_FPrintOtterPrefix(%struct._IO_FILE* %File, %struct.term* %Term) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Term.addr = alloca %struct.term*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %2)
  call void @symbol_FPrintOtter(%struct._IO_FILE* %1, i32 %call1)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call2 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  call void @term_TermListFPrintOtterPrefix(%struct._IO_FILE* %4, %struct.LIST_HELP* %call3)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call4 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %8)
  call void @symbol_FPrintOtter(%struct._IO_FILE* %7, i32 %call5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @symbol_FPrintOtter(%struct._IO_FILE*, i32) #1

; Function Attrs: nounwind uwtable
define void @term_TermListFPrintOtterPrefix(%struct._IO_FILE* %File, %struct.LIST_HELP* %List) #0 {
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
  call void @term_FPrintOtterPrefix(%struct._IO_FILE* %1, %struct.term* %3)
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

; Function Attrs: nounwind uwtable
define void @term_FPrintPosition(%struct._IO_FILE* %File, %struct.term* %TopTerm, %struct.term* %Subterm) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %TopTerm.addr = alloca %struct.term*, align 8
  %Subterm.addr = alloca %struct.term*, align 8
  %pos = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.term* %TopTerm, %struct.term** %TopTerm.addr, align 8
  store %struct.term* %Subterm, %struct.term** %Subterm.addr, align 8
  %0 = load %struct.term*, %struct.term** %TopTerm.addr, align 8
  %1 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %cmp = icmp eq %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %TopTerm.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Scan, align 8
  store i32 1, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call2 to %struct.term*
  %6 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %call3 = call i32 @term_HasPointerSubterm(%struct.term* %5, %struct.term* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %for.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %8 = load i32, i32* %pos, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %8)
  %9 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call7 to %struct.term*
  %cmp8 = icmp ne %struct.term* %9, %11
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.then.5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call10 = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call11 to %struct.term*
  %16 = load %struct.term*, %struct.term** %Subterm.addr, align 8
  call void @term_FPrintPosition(%struct._IO_FILE* %13, %struct.term* %15, %struct.term* %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.then.5
  br label %return

if.end.13:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  %18 = load i32, i32* %pos, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call15 = call i32 @fflush(%struct._IO_FILE* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i32 0, i32 0), i32 1807)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %21)
  call void @misc_DumpCore()
  br label %return

return:                                           ; preds = %for.end, %if.end.12, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @misc_ErrorReport(i8*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_DumpCore() #2 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %3)
  call void @abort() #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @term_Bytes(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Bytes = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  %call1 = call i32 @list_Bytes(%struct.LIST_HELP* %call)
  %conv = zext i32 %call1 to i64
  %add = add i64 32, %conv
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, i32* %Bytes, align 4
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call5 to %struct.term*
  %call6 = call i32 @term_Bytes(%struct.term* %4)
  %5 = load i32, i32* %Bytes, align 4
  %add7 = add i32 %5, %call6
  store i32 %add7, i32* %Bytes, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %Bytes, align 4
  ret i32 %7
}

declare i32 @list_Bytes(%struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @term_ListOfVariables(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Stack = alloca %struct.LIST_HELP*, align 8
  %Variables = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Variables, align 8
  %call1 = call %struct.LIST_HELP* @list_StackBottom()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Stack, align 8
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
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call4 = call %struct.LIST_HELP* @list_Push(i8* %2, %struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Stack, align 8
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_IsVariable(%struct.term* %4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %6 = bitcast %struct.term* %5 to i8*
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  %call8 = call %struct.LIST_HELP* @list_Cons(i8* %6, %struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Variables, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.9
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call10 = call i32 @list_StackEmpty(%struct.LIST_HELP* %8)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call12 = call i8* @list_Top(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call12 to %struct.LIST_HELP*
  %call13 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool14 = icmp ne i32 %call13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool14, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call15 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Stack, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call16 = call i32 @list_StackEmpty(%struct.LIST_HELP* %13)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.23, label %if.then.18

if.then.18:                                       ; preds = %while.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call19 = call i8* @list_Top(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call19 to %struct.LIST_HELP*
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call20 to %struct.term*
  store %struct.term* %16, %struct.term** %Term.addr, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call21 = call i8* @list_Top(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call21 to %struct.LIST_HELP*
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  %20 = bitcast %struct.LIST_HELP* %call22 to i8*
  call void @list_RplacTop(%struct.LIST_HELP* %17, i8* %20)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Stack, align 8
  %call24 = call i32 @list_StackEmpty(%struct.LIST_HELP* %21)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot = xor i1 %tobool25, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  ret %struct.LIST_HELP* %22
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

; Function Attrs: nounwind uwtable
define void @term_MarkVariables(%struct.term* %Term, i32 %Mark) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Mark.addr = alloca i32, align 4
  %Stack = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Mark, i32* %Mark.addr, align 4
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Stack, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  %2 = bitcast %struct.LIST_HELP* %call2 to i8*
  call void @stack_Push(i8* %2)
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_IsVariable(%struct.term* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call i32 @term_TopSymbol(%struct.term* %4)
  %5 = load i32, i32* %Mark.addr, align 4
  call void @term_CreateBinding(i32 %call6, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.7
  %6 = load i32, i32* %Stack, align 4
  %call8 = call i32 @stack_Empty(i32 %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call10 = call i8* @stack_Top()
  %7 = bitcast i8* %call10 to %struct.LIST_HELP*
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool12 = icmp ne i32 %call11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call13 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %Stack, align 4
  %call14 = call i32 @stack_Empty(i32 %9)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.21, label %if.then.16

if.then.16:                                       ; preds = %while.end
  %call17 = call i8* @stack_Top()
  %10 = bitcast i8* %call17 to %struct.LIST_HELP*
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call18 to %struct.term*
  store %struct.term* %11, %struct.term** %Term.addr, align 8
  %call19 = call i8* @stack_Top()
  %12 = bitcast i8* %call19 to %struct.LIST_HELP*
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  %13 = bitcast %struct.LIST_HELP* %call20 to i8*
  call void @stack_RplacTop(i8* %13)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.21
  %14 = load i32, i32* %Stack, align 4
  %call22 = call i32 @stack_Empty(i32 %14)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot = xor i1 %tobool23, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @term_VariableSymbols(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Variables = alloca %struct.LIST_HELP*, align 8
  %Stack = alloca i32, align 4
  %Top = alloca i32, align 4
  %ActMark = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  call void @term_StartBinding()
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Variables, align 8
  %call1 = call i32 @stack_Bottom()
  store i32 %call1, i32* %Stack, align 4
  %call2 = call i32 @term_ActMark()
  store i32 %call2, i32* %ActMark, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  %2 = bitcast %struct.LIST_HELP* %call4 to i8*
  call void @stack_Push(i8* %2)
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call5, i32* %Top, align 4
  %4 = load i32, i32* %Top, align 4
  %call6 = call i32 @symbol_IsVariable(i32 %4)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %5 = load i32, i32* %Top, align 4
  %6 = load i32, i32* %ActMark, align 4
  %call8 = call i32 @term_VarIsMarked(i32 %5, i32 %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true
  %7 = load i32, i32* %Top, align 4
  %conv = sext i32 %7 to i64
  %8 = inttoptr i64 %conv to i8*
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  %call11 = call %struct.LIST_HELP* @list_Cons(i8* %8, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Variables, align 8
  %10 = load i32, i32* %Top, align 4
  %11 = load i32, i32* %ActMark, align 4
  call void @term_CreateBinding(i32 %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %land.lhs.true, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.12
  %12 = load i32, i32* %Stack, align 4
  %call13 = call i32 @stack_Empty(i32 %12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call15 = call i8* @stack_Top()
  %13 = bitcast i8* %call15 to %struct.LIST_HELP*
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool17 = icmp ne i32 %call16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %tobool17, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call18 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i32, i32* %Stack, align 4
  %call19 = call i32 @stack_Empty(i32 %15)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.26, label %if.then.21

if.then.21:                                       ; preds = %while.end
  %call22 = call i8* @stack_Top()
  %16 = bitcast i8* %call22 to %struct.LIST_HELP*
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call23 to %struct.term*
  store %struct.term* %17, %struct.term** %Term.addr, align 8
  %call24 = call i8* @stack_Top()
  %18 = bitcast i8* %call24 to %struct.LIST_HELP*
  %call25 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  %19 = bitcast %struct.LIST_HELP* %call25 to i8*
  call void @stack_RplacTop(i8* %19)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.26
  %20 = load i32, i32* %Stack, align 4
  %call27 = call i32 @stack_Empty(i32 %20)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot = xor i1 %tobool28, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call void @term_StopBinding()
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  ret %struct.LIST_HELP* %21
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
define internal void @term_StopBinding() #2 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @term_NumberOfVarOccs(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Result = alloca i32, align 4
  %Stack = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 0, i32* %Result, align 4
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Stack, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  %2 = bitcast %struct.LIST_HELP* %call2 to i8*
  call void @stack_Push(i8* %2)
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %3)
  %call4 = call i32 @symbol_IsVariable(i32 %call3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %4 = load i32, i32* %Result, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %Result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.7
  %5 = load i32, i32* %Stack, align 4
  %call8 = call i32 @stack_Empty(i32 %5)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call10 = call i8* @stack_Top()
  %6 = bitcast i8* %call10 to %struct.LIST_HELP*
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool12 = icmp ne i32 %call11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call13 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i32, i32* %Stack, align 4
  %call14 = call i32 @stack_Empty(i32 %8)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.21, label %if.then.16

if.then.16:                                       ; preds = %while.end
  %call17 = call i8* @stack_Top()
  %9 = bitcast i8* %call17 to %struct.LIST_HELP*
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call18 to %struct.term*
  store %struct.term* %10, %struct.term** %Term.addr, align 8
  %call19 = call i8* @stack_Top()
  %11 = bitcast i8* %call19 to %struct.LIST_HELP*
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  %12 = bitcast %struct.LIST_HELP* %call20 to i8*
  call void @stack_RplacTop(i8* %12)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.21
  %13 = load i32, i32* %Stack, align 4
  %call22 = call i32 @stack_Empty(i32 %13)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot = xor i1 %tobool23, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load i32, i32* %Result, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @term_NumberOfSymbolOccurrences(%struct.term* %Term, i32 %Symbol) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Symbol.addr = alloca i32, align 4
  %Result = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store i32 0, i32* %Result, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %1 = load i32, i32* %Symbol.addr, align 4
  %call1 = call i32 @symbol_Equal(i32 %call, i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %Result, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %Result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call5 to %struct.term*
  %7 = load i32, i32* %Symbol.addr, align 4
  %call6 = call i32 @term_NumberOfSymbolOccurrences(%struct.term* %6, i32 %7)
  %8 = load i32, i32* %Result, align 4
  %add = add i32 %8, %call6
  store i32 %add, i32* %Result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %Result, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @term_ContainsFunctions(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Stack = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Stack, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %do.body
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %1)
  %call3 = call i32 @symbol_IsFunction(i32 %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %2)
  %call6 = call i32 @symbol_IsConstant(i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %3 = load i32, i32* %Stack, align 4
  call void @stack_SetBottom(i32 %3)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  %5 = bitcast %struct.LIST_HELP* %call9 to i8*
  call void @stack_Push(i8* %5)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.10
  %6 = load i32, i32* %Stack, align 4
  %call11 = call i32 @stack_Empty(i32 %6)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call13 = call i8* @stack_Top()
  %7 = bitcast i8* %call13 to %struct.LIST_HELP*
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool15 = icmp ne i32 %call14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool15, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call16 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %Stack, align 4
  %call17 = call i32 @stack_Empty(i32 %9)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.24, label %if.then.19

if.then.19:                                       ; preds = %while.end
  %call20 = call i8* @stack_Top()
  %10 = bitcast i8* %call20 to %struct.LIST_HELP*
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call21 to %struct.term*
  store %struct.term* %11, %struct.term** %Term.addr, align 8
  %call22 = call i8* @stack_Top()
  %12 = bitcast i8* %call22 to %struct.LIST_HELP*
  %call23 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  %13 = bitcast %struct.LIST_HELP* %call23 to i8*
  call void @stack_RplacTop(i8* %13)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.24
  %14 = load i32, i32* %Stack, align 4
  %call25 = call i32 @stack_Empty(i32 %14)
  %tobool26 = icmp ne i32 %call25, 0
  %lnot = xor i1 %tobool26, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.8
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @term_ContainsVariable(%struct.term* %Term, i32 %Var) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Var.addr = alloca i32, align 4
  %Stack = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Stack, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  %2 = bitcast %struct.LIST_HELP* %call2 to i8*
  call void @stack_Push(i8* %2)
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %3)
  %4 = load i32, i32* %Var.addr, align 4
  %call4 = call i32 @symbol_Equal(i32 %call3, i32 %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %5 = load i32, i32* %Stack, align 4
  call void @stack_SetBottom(i32 %5)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.7
  %6 = load i32, i32* %Stack, align 4
  %call8 = call i32 @stack_Empty(i32 %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call10 = call i8* @stack_Top()
  %7 = bitcast i8* %call10 to %struct.LIST_HELP*
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool12 = icmp ne i32 %call11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call13 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %Stack, align 4
  %call14 = call i32 @stack_Empty(i32 %9)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.21, label %if.then.16

if.then.16:                                       ; preds = %while.end
  %call17 = call i8* @stack_Top()
  %10 = bitcast i8* %call17 to %struct.LIST_HELP*
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call18 to %struct.term*
  store %struct.term* %11, %struct.term** %Term.addr, align 8
  %call19 = call i8* @stack_Top()
  %12 = bitcast i8* %call19 to %struct.LIST_HELP*
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  %13 = bitcast %struct.LIST_HELP* %call20 to i8*
  call void @stack_RplacTop(i8* %13)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.21
  %14 = load i32, i32* %Stack, align 4
  %call22 = call i32 @stack_Empty(i32 %14)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot = xor i1 %tobool23, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.6
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @term_MaxVar(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Stack = alloca i32, align 4
  %Result = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 0, i32* %Result, align 4
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Stack, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsStandardVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %1)
  %2 = load i32, i32* %Result, align 4
  %cmp = icmp sgt i32 %call2, %2
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call4, i32* %Result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.10

if.else:                                          ; preds = %entry
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_IsComplex(%struct.term* %4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.else
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  %6 = bitcast %struct.LIST_HELP* %call8 to i8*
  call void @stack_Push(i8* %6)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end.10
  %7 = load i32, i32* %Stack, align 4
  %call11 = call i32 @stack_Empty(i32 %7)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %while.body, label %while.end.39

while.body:                                       ; preds = %while.cond
  %call13 = call i8* @stack_Top()
  %8 = bitcast i8* %call13 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %Scan, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call14 to %struct.term*
  store %struct.term* %10, %struct.term** %Term.addr, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  %12 = bitcast %struct.LIST_HELP* %call15 to i8*
  call void @stack_RplacTop(i8* %12)
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call16 = call i32 @term_IsStandardVariable(%struct.term* %13)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.24

if.then.18:                                       ; preds = %while.body
  %14 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call19 = call i32 @term_TopSymbol(%struct.term* %14)
  %15 = load i32, i32* %Result, align 4
  %cmp20 = icmp sgt i32 %call19, %15
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.18
  %16 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call22 = call i32 @term_TopSymbol(%struct.term* %16)
  store i32 %call22, i32* %Result, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.18
  br label %if.end.30

if.else.24:                                       ; preds = %while.body
  %17 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call25 = call i32 @term_IsComplex(%struct.term* %17)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.else.24
  %18 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call28 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %18)
  %19 = bitcast %struct.LIST_HELP* %call28 to i8*
  call void @stack_Push(i8* %19)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.else.24
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.23
  br label %while.cond.31

while.cond.31:                                    ; preds = %while.body.37, %if.end.30
  %20 = load i32, i32* %Stack, align 4
  %call32 = call i32 @stack_Empty(i32 %20)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond.31
  %call34 = call i8* @stack_Top()
  %21 = bitcast i8* %call34 to %struct.LIST_HELP*
  %call35 = call i32 @list_Empty(%struct.LIST_HELP* %21)
  %tobool36 = icmp ne i32 %call35, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.31
  %22 = phi i1 [ false, %while.cond.31 ], [ %tobool36, %land.rhs ]
  br i1 %22, label %while.body.37, label %while.end

while.body.37:                                    ; preds = %land.end
  %call38 = call i32 @stack_Pop()
  br label %while.cond.31

while.end:                                        ; preds = %land.end
  br label %while.cond

while.end.39:                                     ; preds = %while.cond
  %23 = load i32, i32* %Result, align 4
  ret i32 %23
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsStandardVariable(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsStandardVariable(i32 %call)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define void @term_StartMinRenaming() #0 {
entry:
  call void @symbol_ResetStandardVarCounter()
  call void @term_NewMark()
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
define void @term_StartMaxRenaming(i32 %MaxVar) #0 {
entry:
  %MaxVar.addr = alloca i32, align 4
  store i32 %MaxVar, i32* %MaxVar.addr, align 4
  %0 = load i32, i32* %MaxVar.addr, align 4
  call void @symbol_SetStandardVarCounter(i32 %0)
  call void @term_NewMark()
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
define %struct.term* @term_Rename(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Stack = alloca i32, align 4
  %Top = alloca i32, align 4
  %ActMark = alloca i32, align 4
  %ActTerm = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  call void @term_StartBinding()
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Stack, align 4
  %call1 = call i32 @term_OldMark()
  store i32 %call1, i32* %ActMark, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %0, %struct.term** %ActTerm, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call2 = call i32 @term_IsComplex(%struct.term* %1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  %3 = bitcast %struct.LIST_HELP* %call3 to i8*
  call void @stack_Push(i8* %3)
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %4 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %4)
  store i32 %call4, i32* %Top, align 4
  %5 = load i32, i32* %Top, align 4
  %call5 = call i32 @symbol_IsVariable(i32 %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.else
  %6 = load i32, i32* %Top, align 4
  %7 = load i32, i32* %ActMark, align 4
  %call8 = call i32 @term_VarIsMarked(i32 %6, i32 %7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  %8 = load i32, i32* %Top, align 4
  %9 = load i32, i32* %ActMark, align 4
  %call11 = call i32 @symbol_CreateStandardVariable()
  %conv = sext i32 %call11 to i64
  %10 = inttoptr i64 %conv to i8*
  call void @term_CreateValueBinding(i32 %8, i32 %9, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then.7
  %11 = load %struct.term*, %struct.term** %ActTerm, align 8
  %12 = load i32, i32* %Top, align 4
  %call12 = call i8* @term_BindingValue(i32 %12)
  %13 = ptrtoint i8* %call12 to i32
  call void @term_RplacTop(%struct.term* %11, i32 %13)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.14
  %14 = load i32, i32* %Stack, align 4
  %call15 = call i32 @stack_Empty(i32 %14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call17 = call i8* @stack_Top()
  %15 = bitcast i8* %call17 to %struct.LIST_HELP*
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool19 = icmp ne i32 %call18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %tobool19, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call20 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load i32, i32* %Stack, align 4
  %call21 = call i32 @stack_Empty(i32 %17)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.28, label %if.then.23

if.then.23:                                       ; preds = %while.end
  %call24 = call i8* @stack_Top()
  %18 = bitcast i8* %call24 to %struct.LIST_HELP*
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call25 to %struct.term*
  store %struct.term* %19, %struct.term** %ActTerm, align 8
  %call26 = call i8* @stack_Top()
  %20 = bitcast i8* %call26 to %struct.LIST_HELP*
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  %21 = bitcast %struct.LIST_HELP* %call27 to i8*
  call void @stack_RplacTop(i8* %21)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.23, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.28
  %22 = load i32, i32* %Stack, align 4
  %call29 = call i32 @stack_Empty(i32 %22)
  %tobool30 = icmp ne i32 %call29, 0
  %lnot = xor i1 %tobool30, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call void @term_StopBinding()
  %23 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %23
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_OldMark() #2 {
entry:
  %0 = load i32, i32* @term_MARK, align 4
  %sub = sub i32 %0, 1
  ret i32 %sub
}

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

; Function Attrs: nounwind uwtable
define i32 @term_GetRenamedVarSymbol(i32 %Var) #0 {
entry:
  %retval = alloca i32, align 4
  %Var.addr = alloca i32, align 4
  %ActMark = alloca i32, align 4
  store i32 %Var, i32* %Var.addr, align 4
  %call = call i32 @term_OldMark()
  store i32 %call, i32* %ActMark, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %1 = load i32, i32* %ActMark, align 4
  %call1 = call i32 @term_VarIsMarked(i32 %0, i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %Var.addr, align 4
  %call2 = call i8* @term_BindingValue(i32 %2)
  %3 = ptrtoint i8* %call2 to i32
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %Var.addr, align 4
  store i32 %4, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @term_RenamePseudoLinear(%struct.term* %Term, i32 %Var) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Var.addr = alloca i32, align 4
  %Mark = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  call void @term_StartBinding()
  %0 = load i32, i32* %Var.addr, align 4
  call void @symbol_SetStandardVarCounter(i32 %0)
  call void @term_NewMark()
  %call = call i32 @term_ActMark()
  store i32 %call, i32* %Mark, align 4
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %2 = load i32, i32* %Mark, align 4
  %call1 = call %struct.LIST_HELP* @term_MakePseudoLinear(%struct.term* %1, i32 0, i32 %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Result, align 8
  call void @term_StopBinding()
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @term_MakePseudoLinear(%struct.term* %Term, i32 %Depth, i32 %Mark) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Depth.addr = alloca i32, align 4
  %Mark.addr = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Top = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Depth, i32* %Depth.addr, align 4
  store i32 %Mark, i32* %Mark.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call5 to %struct.term*
  %5 = load i32, i32* %Depth.addr, align 4
  %add = add i32 %5, 1
  %6 = load i32, i32* %Mark.addr, align 4
  %call6 = call %struct.LIST_HELP* @term_MakePseudoLinear(%struct.term* %4, i32 %add, i32 %6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call7 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call6, %struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.27

if.else:                                          ; preds = %entry
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call i32 @term_TopSymbol(%struct.term* %9)
  store i32 %call9, i32* %Top, align 4
  %10 = load i32, i32* %Top, align 4
  %call10 = call i32 @symbol_IsVariable(i32 %10)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.26

if.then.12:                                       ; preds = %if.else
  %11 = load i32, i32* %Top, align 4
  %12 = load i32, i32* %Mark.addr, align 4
  %call13 = call i32 @term_VarIsMarked(i32 %11, i32 %12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.23

if.then.15:                                       ; preds = %if.then.12
  %13 = load i32, i32* %Depth.addr, align 4
  %14 = load i32, i32* %Top, align 4
  %call16 = call i8* @term_BindingValue(i32 %14)
  %15 = ptrtoint i8* %call16 to i32
  %cmp = icmp ne i32 %13, %15
  br i1 %cmp, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.15
  %16 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call18 = call i32 @symbol_CreateStandardVariable()
  call void @term_RplacTop(%struct.term* %16, i32 %call18)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.15
  %17 = load i32, i32* %Top, align 4
  %conv = sext i32 %17 to i64
  %18 = inttoptr i64 %conv to i8*
  %19 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call19 = call i32 @term_TopSymbol(%struct.term* %19)
  %conv20 = sext i32 %call19 to i64
  %20 = inttoptr i64 %conv20 to i8*
  %call21 = call %struct.LIST_HELP* @list_PairCreate(i8* %18, i8* %20)
  %21 = bitcast %struct.LIST_HELP* %call21 to i8*
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call22 = call %struct.LIST_HELP* @list_Cons(i8* %21, %struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Result, align 8
  br label %if.end.25

if.else.23:                                       ; preds = %if.then.12
  %23 = load i32, i32* %Top, align 4
  %24 = load i32, i32* %Mark.addr, align 4
  %25 = load i32, i32* %Depth.addr, align 4
  %conv24 = zext i32 %25 to i64
  %26 = inttoptr i64 %conv24 to i8*
  call void @term_CreateValueBinding(i32 %23, i32 %24, i8* %26)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.end
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %27
}

; Function Attrs: nounwind uwtable
define i32 @term_GetStampID() #0 {
entry:
  %0 = load i32, i32* @term_STAMPUSERS, align 4
  %cmp = icmp uge i32 %0, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %1)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0))
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @term_STAMPUSERS, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* @term_STAMPUSERS, align 4
  ret i32 %2
}

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
  call void @exit(i32 1) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @term_StampOverflow(i32 %ID) #0 {
entry:
  %ID.addr = alloca i32, align 4
  %Result = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %ID, i32* %ID.addr, align 4
  store i32 0, i32* %Result, align 4
  %0 = load i32, i32* @term_STAMP, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @term_STAMP, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp ult i32 %1, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @term_STAMPOVERFLOW, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %ID.addr, align 4
  %idxprom2 = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [20 x i32], [20 x i32]* @term_STAMPOVERFLOW, i32 0, i64 %idxprom2
  store i32 0, i32* %arrayidx3, align 4
  store i32 1, i32* %Result, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ID.addr, align 4
  %idxprom4 = zext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [20 x i32], [20 x i32]* @term_STAMPOVERFLOW, i32 0, i64 %idxprom4
  %6 = load i32, i32* %arrayidx5, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %7 = load i32, i32* %ID.addr, align 4
  %idxprom7 = zext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [20 x i32], [20 x i32]* @term_STAMPOVERFLOW, i32 0, i64 %idxprom7
  store i32 0, i32* %arrayidx8, align 4
  store i32 1, i32* %Result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %for.end
  %8 = load i32, i32* %Result, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @term_SetTermSubtermStamp(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_SetTermStamp(%struct.term* %0)
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  call void @list_Apply(void (i8*)* bitcast (void (%struct.term*)* @term_SetTermSubtermStamp to void (i8*)*), %struct.LIST_HELP* %call)
  ret void
}

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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @term_ListOfAtoms(%struct.term* %Term, i32 %Predicate) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Predicate.addr = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %List = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Predicate, i32* %Predicate.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %1 = load i32, i32* %Predicate.addr, align 4
  %call1 = call i32 @symbol_Equal(i32 %call, i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %3 = bitcast %struct.term* %2 to i8*
  %call2 = call %struct.LIST_HELP* @list_List(i8* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Result, align 8
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %List, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call7 to %struct.term*
  %9 = load i32, i32* %Predicate.addr, align 4
  %call8 = call %struct.LIST_HELP* @term_ListOfAtoms(%struct.term* %8, i32 %9)
  %call9 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %6, %struct.LIST_HELP* %call8)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %List, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %12
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @term_FindAllAtoms(%struct.term* %Term, i32 %Predicate) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Predicate.addr = alloca i32, align 4
  %stack = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Predicate, i32* %Predicate.addr, align 4
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %stack, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Result, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %0)
  %1 = load i32, i32* %Predicate.addr, align 4
  %cmp = icmp eq i32 %call2, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %3 = bitcast %struct.term* %2 to i8*
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call3 = call %struct.LIST_HELP* @list_Cons(i8* %3, %struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Result, align 8
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @term_IsComplex(%struct.term* %5)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  %7 = bitcast %struct.LIST_HELP* %call6 to i8*
  call void @stack_Push(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.7
  %8 = load i32, i32* %stack, align 4
  %call8 = call i32 @stack_Empty(i32 %8)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call10 = call i8* @stack_Top()
  %9 = bitcast i8* %call10 to %struct.LIST_HELP*
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool12 = icmp ne i32 %call11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call13 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %stack, align 4
  %call14 = call i32 @stack_Empty(i32 %11)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.21, label %if.then.16

if.then.16:                                       ; preds = %while.end
  %call17 = call i8* @stack_Top()
  %12 = bitcast i8* %call17 to %struct.LIST_HELP*
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call18 to %struct.term*
  store %struct.term* %13, %struct.term** %Term.addr, align 8
  %call19 = call i8* @stack_Top()
  %14 = bitcast i8* %call19 to %struct.LIST_HELP*
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  %15 = bitcast %struct.LIST_HELP* %call20 to i8*
  call void @stack_RplacTop(i8* %15)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.21
  %16 = load i32, i32* %stack, align 4
  %call22 = call i32 @stack_Empty(i32 %16)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot = xor i1 %tobool23, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %17
}

; Function Attrs: nounwind uwtable
define i32 @term_CheckTermIntern(%struct.term* %Term, i32 %Links) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Links.addr = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Top = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Links, i32* %Links.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsTerm(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  store i32 %call1, i32* %Top, align 4
  %2 = load i32, i32* %Top, align 4
  %call2 = call i32 @symbol_IsSignature(i32 %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* %Top, align 4
  %call4 = call i32 @symbol_Arity(i32 %3)
  %cmp = icmp ne i32 %call4, -1
  br i1 %cmp, label %land.lhs.true.5, label %if.end.11

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %Top, align 4
  %call6 = call i32 @symbol_Arity(i32 %4)
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  %call8 = call i32 @list_Length(%struct.LIST_HELP* %call7)
  %cmp9 = icmp ne i32 %call6, %call8
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true.5
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true.5, %land.lhs.true, %if.end
  %6 = load i32, i32* %Top, align 4
  %call12 = call i32 @symbol_IsVariable(i32 %6)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.19

land.lhs.true.14:                                 ; preds = %if.end.11
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call15 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.14
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.14, %if.end.11
  %8 = load i32, i32* %Links.addr, align 4
  %tobool20 = icmp ne i32 %8, 0
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.19
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call22 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.21
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call23 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool24 = icmp ne i32 %call23, 0
  %lnot = xor i1 %tobool24, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call25 to %struct.term*
  %call26 = call %struct.term* @term_Superterm(%struct.term* %12)
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp27 = icmp ne %struct.term* %call26, %13
  br i1 %cmp27, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call28 to %struct.term*
  %16 = load i32, i32* %Links.addr, align 4
  %call29 = call i32 @term_CheckTermIntern(%struct.term* %15, i32 %16)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call33 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.53

if.else:                                          ; preds = %if.end.19
  %18 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call34 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %18)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.50, %if.else
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call36 = call i32 @list_Empty(%struct.LIST_HELP* %19)
  %tobool37 = icmp ne i32 %call36, 0
  %lnot38 = xor i1 %tobool37, true
  br i1 %lnot38, label %for.body.39, label %for.end.52

for.body.39:                                      ; preds = %for.cond.35
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call40 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call40 to %struct.term*
  %call41 = call %struct.term* @term_Superterm(%struct.term* %21)
  %call42 = call %struct.term* @term_Null()
  %cmp43 = icmp ne %struct.term* %call41, %call42
  br i1 %cmp43, label %if.then.48, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %for.body.39
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call45 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call45 to %struct.term*
  %24 = load i32, i32* %Links.addr, align 4
  %call46 = call i32 @term_CheckTermIntern(%struct.term* %23, i32 %24)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %lor.lhs.false.44, %for.body.39
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %lor.lhs.false.44
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call51 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.35

for.end.52:                                       ; preds = %for.cond.35
  br label %if.end.53

if.end.53:                                        ; preds = %for.end.52, %for.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.48, %if.then.31, %if.then.18, %if.then.10, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
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

declare i32 @list_Length(%struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_Null() #2 {
entry:
  ret %struct.term* null
}

; Function Attrs: nounwind uwtable
define i32 @term_CheckTerm(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.term* @term_FirstArgument(%struct.term* %1)
  %call2 = call %struct.term* @term_Superterm(%struct.term* %call1)
  %call3 = call %struct.term* @term_Null()
  %cmp = icmp ne %struct.term* %call2, %call3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @term_CheckTermIntern(%struct.term* %2, i32 1)
  store i32 %call4, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_CheckTermIntern(%struct.term* %3, i32 0)
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
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

declare %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP*, i8* (i8*)*) #1

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

declare i32 @list_CompareMultisetsByElementDistribution(%struct.LIST_HELP*, %struct.LIST_HELP*) #1

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

; Function Attrs: noreturn nounwind
declare void @abort() #4

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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_VarIndex(i32 %ActSymbol) #2 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  ret i32 %0
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
define internal i32 @symbol_IsStandardVariable(i32 %S) #2 {
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
define internal i32 @symbol_GetInitialStandardVarCounter() #2 {
entry:
  ret i32 0
}

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

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

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
define internal i8* @list_First(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
