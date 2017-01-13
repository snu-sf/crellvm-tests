; ModuleID = './MultiSource.Applications.SPASS/36.sort.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.NODE_HELP = type { %struct.LIST_HELP*, i32, i32, i32, %struct.LIST_HELP*, i32 }
%struct.SORTTHEORY_HELP = type { %struct.st*, [4000 x %struct.NODE_HELP*], %struct.LIST_HELP*, %struct.LIST_HELP*, i32 }
%struct.st = type { %struct.subst*, %struct.LIST_HELP*, %struct.LIST_HELP*, i16, i16 }
%struct.subst = type { %struct.subst*, i32, %struct.term* }
%struct.CONDITION_HELP = type { i32, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP* }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }
%struct.SLINK_HELP = type { %struct.LIST_HELP*, %struct.NODE_HELP*, i32, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, %struct.CLAUSE_HELP* }

@.str = private unnamed_addr constant [3 x i8] c":[\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@symbol_ACTINDEX = external global i32, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c" Empty Theory\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\0A Subsort Clauses:\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\0A\09\09 Clause:\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\0A\09\09 Link: \00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\0A Term Declaration Clauses:\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"\0A\0A Starting Soju Search:\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\0A\0A Approx Sort Theory:\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" trivial.\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@symbol_SIGNATURE = external global %struct.signature**, align 8
@symbol_TYPEMASK = external constant i32, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"Input: (\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c") Output: \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"  C: (\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c") A: (\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c") S: (\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c") Clause: %d Card: %d Fire: %d Var: \00", align 1
@cont_LEFTCONTEXT = external global %struct.binding*, align 8
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@symbol_STANDARDVARCOUNTER = external global i32, align 4
@symbol_TYPESTATBITS = external constant i32, align 4
@stack_POINTER = external global i32, align 4
@stack_STACK = external global [10000 x i8*], align 16
@cont_BINDINGS = external global i32, align 4
@cont_STACKPOINTER = external global i32, align 4
@cont_STACK = external global [1000 x i32], align 16
@cont_CURRENTBINDING = external global %struct.binding*, align 8
@cont_LASTBINDING = external global %struct.binding*, align 8
@hash_TABLE = external global [29 x %struct.LIST_HELP*], align 16
@fol_NOT = external global i32, align 4
@fol_EQUALITY = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @sort_Delete(%struct.LIST_HELP* %Sort) #0 {
entry:
  %Sort.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Sort, %struct.LIST_HELP** %Sort.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %0)
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

; Function Attrs: nounwind uwtable
define i32 @sort_Eq(%struct.LIST_HELP* %S1, %struct.LIST_HELP* %S2) #0 {
entry:
  %retval = alloca i32, align 4
  %S1.addr = alloca %struct.LIST_HELP*, align 8
  %S2.addr = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Found = alloca i32, align 4
  store %struct.LIST_HELP* %S1, %struct.LIST_HELP** %S1.addr, align 8
  store %struct.LIST_HELP* %S2, %struct.LIST_HELP** %S2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S1.addr, align 8
  %call = call i32 @list_Length(%struct.LIST_HELP* %0)
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S2.addr, align 8
  %call1 = call i32 @list_Length(%struct.LIST_HELP* %1)
  %cmp = icmp ne i32 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S1.addr, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %if.end
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %Found, align 4
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S2.addr, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond.3
  %6 = load i32, i32* %Found, align 4
  %tobool6 = icmp ne i32 %6, 0
  %lnot7 = xor i1 %tobool6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.3
  %7 = phi i1 [ false, %for.cond.3 ], [ %lnot7, %land.rhs ]
  br i1 %7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %land.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call9 to %struct.NODE_HELP*
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call10 to %struct.NODE_HELP*
  %call11 = call i32 @sort_NodeEqual(%struct.NODE_HELP* %9, %struct.NODE_HELP* %11)
  store i32 %call11, i32* %Found, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.3

for.end:                                          ; preds = %land.end
  %13 = load i32, i32* %Found, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %for.end
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.18, %if.then.14, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @list_Length(%struct.LIST_HELP*) #2

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
define internal i32 @sort_NodeEqual(%struct.NODE_HELP* %N1, %struct.NODE_HELP* %N2) #1 {
entry:
  %N1.addr = alloca %struct.NODE_HELP*, align 8
  %N2.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.NODE_HELP* %N1, %struct.NODE_HELP** %N1.addr, align 8
  store %struct.NODE_HELP* %N2, %struct.NODE_HELP** %N2.addr, align 8
  %0 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N1.addr, align 8
  %1 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N2.addr, align 8
  %cmp = icmp eq %struct.NODE_HELP* %0, %1
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
define %struct.LIST_HELP* @sort_GetSymbolsFromSort(%struct.LIST_HELP* %Sort) #0 {
entry:
  %Sort.addr = alloca %struct.LIST_HELP*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Sort, %struct.LIST_HELP** %Sort.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort.addr, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call2 to %struct.NODE_HELP*
  %call3 = call i32 @sort_NodeSymbol(%struct.NODE_HELP* %2)
  %conv = sext i32 %call3 to i64
  %3 = inttoptr i64 %conv to i8*
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call4 = call %struct.LIST_HELP* @list_Cons(i8* %3, %struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Sort.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %6
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
define internal i32 @sort_NodeSymbol(%struct.NODE_HELP* %N) #1 {
entry:
  %N.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  %0 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %symbol = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %0, i32 0, i32 5
  %1 = load i32, i32* %symbol, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @sort_ContainsSymbol(%struct.LIST_HELP* %Sort, i32 %Symbol) #0 {
entry:
  %retval = alloca i32, align 4
  %Sort.addr = alloca %struct.LIST_HELP*, align 8
  %Symbol.addr = alloca i32, align 4
  store %struct.LIST_HELP* %Sort, %struct.LIST_HELP** %Sort.addr, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.NODE_HELP*
  %call2 = call i32 @sort_NodeSymbol(%struct.NODE_HELP* %2)
  %3 = load i32, i32* %Symbol.addr, align 4
  %call3 = call i32 @symbol_Equal(i32 %call2, i32 %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Sort.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
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
define i32 @sort_IsSort(%struct.LIST_HELP* %Sort) #0 {
entry:
  %retval = alloca i32, align 4
  %Sort.addr = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Sort, %struct.LIST_HELP** %Sort.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot5 = xor i1 %tobool4, true
  br i1 %lnot5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call7 to %struct.NODE_HELP*
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call8 to %struct.NODE_HELP*
  %call9 = call i32 @sort_NodeEqual(%struct.NODE_HELP* %5, %struct.NODE_HELP* %7)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.14, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @sort_TheorySortEqual(%struct.SORTTHEORY_HELP* %Theory, %struct.LIST_HELP* %Sort1, %struct.LIST_HELP* %Sort2) #0 {
entry:
  %retval = alloca i32, align 4
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Sort1.addr = alloca %struct.LIST_HELP*, align 8
  %Sort2.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.LIST_HELP* %Sort1, %struct.LIST_HELP** %Sort1.addr, align 8
  store %struct.LIST_HELP* %Sort2, %struct.LIST_HELP** %Sort2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort1.addr, align 8
  %call = call i32 @list_Length(%struct.LIST_HELP* %0)
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort2.addr, align 8
  %call1 = call i32 @list_Length(%struct.LIST_HELP* %1)
  %cmp = icmp ne i32 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  call void @sort_TheoryIncrementMark(%struct.SORTTHEORY_HELP* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort1.addr, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call3 to %struct.NODE_HELP*
  call void @sort_PutNodeExtraTrue(%struct.SORTTHEORY_HELP* %5, %struct.NODE_HELP* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort2.addr, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.15, %for.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot8 = xor i1 %tobool7, true
  br i1 %lnot8, label %for.body.9, label %for.end.17

for.body.9:                                       ; preds = %for.cond.5
  %11 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call10 to %struct.NODE_HELP*
  %call11 = call i32 @sort_NodeExtraValue(%struct.SORTTHEORY_HELP* %11, %struct.NODE_HELP* %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %for.body.9
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %for.body.9
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end.14
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.5

for.end.17:                                       ; preds = %for.cond.5
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.17, %if.then.13, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_TheoryIncrementMark(%struct.SORTTHEORY_HELP* %Theory) #1 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %i = alloca i32, align 4
  %Node = alloca %struct.NODE_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %mark = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %0, i32 0, i32 4
  %1 = load i32, i32* %mark, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 4000
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %basesorttable = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4000 x %struct.NODE_HELP*], [4000 x %struct.NODE_HELP*]* %basesorttable, i32 0, i64 %idxprom
  %5 = load %struct.NODE_HELP*, %struct.NODE_HELP** %arrayidx, align 8
  store %struct.NODE_HELP* %5, %struct.NODE_HELP** %Node, align 8
  %6 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %mark2 = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %6, i32 0, i32 1
  store i32 0, i32* %mark2, align 4
  %7 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %extra = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %7, i32 0, i32 3
  store i32 0, i32* %extra, align 4
  %8 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %start = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %8, i32 0, i32 2
  store i32 0, i32* %start, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %mark3 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %10, i32 0, i32 4
  store i32 0, i32* %mark3, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %11 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %mark4 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %11, i32 0, i32 4
  %12 = load i32, i32* %mark4, align 4
  %inc5 = add i32 %12, 1
  store i32 %inc5, i32* %mark4, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutNodeExtraTrue(%struct.SORTTHEORY_HELP* %S, %struct.NODE_HELP* %N) #1 {
entry:
  %S.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %N.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %S, %struct.SORTTHEORY_HELP** %S.addr, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %S.addr, align 8
  %mark = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %0, i32 0, i32 4
  %1 = load i32, i32* %mark, align 4
  %2 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %extra = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %2, i32 0, i32 3
  store i32 %1, i32* %extra, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sort_NodeExtraValue(%struct.SORTTHEORY_HELP* %S, %struct.NODE_HELP* %N) #1 {
entry:
  %S.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %N.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %S, %struct.SORTTHEORY_HELP** %S.addr, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  %0 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %extra = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %0, i32 0, i32 3
  %1 = load i32, i32* %extra, align 4
  %2 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %S.addr, align 8
  %mark = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %2, i32 0, i32 4
  %3 = load i32, i32* %mark, align 4
  %cmp = icmp eq i32 %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @sort_DeleteSortPair(%struct.LIST_HELP* %Pair) #0 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_DeleteOne(%struct.LIST_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %S, %struct.LIST_HELP** %S.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @sort_PairSort(%struct.LIST_HELP* %Pair) #1 {
entry:
  %Pair.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Pair, %struct.LIST_HELP** %Pair.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call = call i8* @list_PairFirst(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @sort_ConditionDelete(%struct.CONDITION_HELP* %C) #0 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  %0 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %cmp = icmp ne %struct.CONDITION_HELP* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %call = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %1)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call)
  %2 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %call1 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %2)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call1)
  %3 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %call2 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %3)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call2)
  %4 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %call3 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %4)
  call void @list_Delete(%struct.LIST_HELP* %call3)
  %5 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  call void @sort_ConditionFree(%struct.CONDITION_HELP* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
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
define internal void @list_PairFree(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @sort_PairPrint(%struct.LIST_HELP* %Pair) #0 {
entry:
  %Pair.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Pair, %struct.LIST_HELP** %Pair.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call = call i8* @sort_PairSort(%struct.LIST_HELP* %0)
  %1 = bitcast i8* %call to %struct.LIST_HELP*
  call void @sort_Print(%struct.LIST_HELP* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call2 = call i8* @sort_PairCondition(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call2 to %struct.CONDITION_HELP*
  call void @sort_ConditionPrint(%struct.CONDITION_HELP* %4)
  %call3 = call i32 @putchar(i32 93)
  ret void
}

; Function Attrs: nounwind uwtable
define void @sort_Print(%struct.LIST_HELP* %Sort) #0 {
entry:
  %Sort.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Sort, %struct.LIST_HELP** %Sort.addr, align 8
  %call = call i32 @putchar(i32 40)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort.addr, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call2 to %struct.NODE_HELP*
  %call3 = call i32 @sort_NodeSymbol(%struct.NODE_HELP* %2)
  call void @symbol_Print(i32 %call3)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Sort.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort.addr, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %call7 = call i32 @putchar(i32 44)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call8 = call i32 @putchar(i32 41)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @sort_ConditionPrint(%struct.CONDITION_HELP* %Cond) #0 {
entry:
  %Cond.addr = alloca %struct.CONDITION_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.CONDITION_HELP* %Cond, %struct.CONDITION_HELP** %Cond.addr, align 8
  %0 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %0)
  call void @symbol_Print(i32 %call)
  %1 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call1 = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 @putchar(i32 44)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call4 to %struct.term*
  call void @term_PrintPrefix(%struct.term* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call6 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %6)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.14, %for.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot10 = xor i1 %tobool9, true
  br i1 %lnot10, label %for.body.11, label %for.end.16

for.body.11:                                      ; preds = %for.cond.7
  %call12 = call i32 @putchar(i32 44)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call13 to %struct.term*
  call void @term_PrintPrefix(%struct.term* %9)
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.11
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.7

for.end.16:                                       ; preds = %for.cond.7
  %11 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call17 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %11)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.25, %for.end.16
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool20 = icmp ne i32 %call19, 0
  %lnot21 = xor i1 %tobool20, true
  br i1 %lnot21, label %for.body.22, label %for.end.27

for.body.22:                                      ; preds = %for.cond.18
  %call23 = call i32 @putchar(i32 44)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call24 to %struct.term*
  call void @term_PrintPrefix(%struct.term* %14)
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.22
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.18

for.end.27:                                       ; preds = %for.cond.18
  %16 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call28 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %16)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.37, %for.end.27
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call30 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool31 = icmp ne i32 %call30, 0
  %lnot32 = xor i1 %tobool31, true
  br i1 %lnot32, label %for.body.33, label %for.end.39

for.body.33:                                      ; preds = %for.cond.29
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call34 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call34 to %struct.CLAUSE_HELP*
  %call35 = call i32 @clause_Number(%struct.CLAUSE_HELP* %19)
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 %call35)
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.33
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call38 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.29

for.end.39:                                       ; preds = %for.cond.29
  ret void
}

declare i32 @putchar(i32) #2

; Function Attrs: nounwind uwtable
define i32 @sort_NodeIsTop(%struct.SORTTHEORY_HELP* %Theory, %struct.NODE_HELP* %Node) #0 {
entry:
  %retval = alloca i32, align 4
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Node.addr = alloca %struct.NODE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Link = alloca %struct.SLINK_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.NODE_HELP* %Node, %struct.NODE_HELP** %Node.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %call = call %struct.LIST_HELP* @sort_TheorySuborigcls(%struct.SORTTHEORY_HELP* %0)
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
  %3 = bitcast i8* %call2 to %struct.LIST_HELP*
  %call3 = call i8* @list_Third(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call3 to %struct.SLINK_HELP*
  store %struct.SLINK_HELP* %4, %struct.SLINK_HELP** %Link, align 8
  %5 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call4 = call %struct.LIST_HELP* @sort_LinkInput(%struct.SLINK_HELP* %5)
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node.addr, align 8
  %7 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call7 = call %struct.NODE_HELP* @sort_LinkOutput(%struct.SLINK_HELP* %7)
  %cmp = icmp eq %struct.NODE_HELP* %6, %call7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_TheorySuborigcls(%struct.SORTTHEORY_HELP* %Theory) #1 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %suborigcls = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %suborigcls, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Third(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call)
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %call1)
  ret i8* %call2
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_LinkInput(%struct.SLINK_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  %0 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %input = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %input, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.NODE_HELP* @sort_LinkOutput(%struct.SLINK_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  %0 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %output = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %0, i32 0, i32 1
  %1 = load %struct.NODE_HELP*, %struct.NODE_HELP** %output, align 8
  ret %struct.NODE_HELP* %1
}

; Function Attrs: nounwind uwtable
define void @sort_Init() #0 {
entry:
  ret void
}

declare void @symbol_Print(i32) #2

; Function Attrs: nounwind uwtable
define void @sort_Free() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.SORTTHEORY_HELP* @sort_TheoryCreate() #0 {
entry:
  %Result = alloca %struct.SORTTHEORY_HELP*, align 8
  %i = alloca i32, align 4
  %Entry = alloca %struct.signature*, align 8
  %Symbol = alloca i32, align 4
  %call = call i8* @memory_Malloc(i32 32032)
  %0 = bitcast i8* %call to %struct.SORTTHEORY_HELP*
  store %struct.SORTTHEORY_HELP* %0, %struct.SORTTHEORY_HELP** %Result, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @symbol_ACTINDEX, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Result, align 8
  %basesorttable = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4000 x %struct.NODE_HELP*], [4000 x %struct.NODE_HELP*]* %basesorttable, i32 0, i64 %idxprom
  store %struct.NODE_HELP* null, %struct.NODE_HELP** %arrayidx, align 8
  %5 = load i32, i32* %i, align 4
  %call1 = call %struct.signature* @symbol_Signature(i32 %5)
  store %struct.signature* %call1, %struct.signature** %Entry, align 8
  %6 = load %struct.signature*, %struct.signature** %Entry, align 8
  %cmp2 = icmp ne %struct.signature* %6, null
  br i1 %cmp2, label %if.then, label %if.end.10

if.then:                                          ; preds = %for.body
  %7 = load %struct.signature*, %struct.signature** %Entry, align 8
  %info = getelementptr inbounds %struct.signature, %struct.signature* %7, i32 0, i32 5
  %8 = load i32, i32* %info, align 4
  store i32 %8, i32* %Symbol, align 4
  %9 = load i32, i32* %Symbol, align 4
  %call3 = call i32 @symbol_IsPredicate(i32 %9)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %10 = load %struct.signature*, %struct.signature** %Entry, align 8
  %arity = getelementptr inbounds %struct.signature, %struct.signature* %10, i32 0, i32 3
  %11 = load i32, i32* %arity, align 4
  %cmp4 = icmp eq i32 %11, 1
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %12 = load i32, i32* %Symbol, align 4
  %call6 = call %struct.NODE_HELP* @sort_NodeCreate(i32 %12)
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Result, align 8
  %basesorttable8 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %14, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [4000 x %struct.NODE_HELP*], [4000 x %struct.NODE_HELP*]* %basesorttable8, i32 0, i64 %idxprom7
  store %struct.NODE_HELP* %call6, %struct.NODE_HELP** %arrayidx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call11 = call %struct.st* @st_IndexCreate()
  %16 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Result, align 8
  %index = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %16, i32 0, i32 0
  store %struct.st* %call11, %struct.st** %index, align 8
  %call12 = call %struct.LIST_HELP* @list_Nil()
  %17 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Result, align 8
  %suborigcls = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %17, i32 0, i32 2
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %suborigcls, align 8
  %call13 = call %struct.LIST_HELP* @list_Nil()
  %18 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Result, align 8
  %termorigcls = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %18, i32 0, i32 3
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %termorigcls, align 8
  %19 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Result, align 8
  %mark = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %19, i32 0, i32 4
  store i32 0, i32* %mark, align 4
  %20 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Result, align 8
  ret %struct.SORTTHEORY_HELP* %20
}

declare i8* @memory_Malloc(i32) #2

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

; Function Attrs: nounwind uwtable
define internal %struct.NODE_HELP* @sort_NodeCreate(i32 %S) #0 {
entry:
  %S.addr = alloca i32, align 4
  %Result = alloca %struct.NODE_HELP*, align 8
  store i32 %S, i32* %S.addr, align 4
  %call = call i8* @memory_Malloc(i32 40)
  %0 = bitcast i8* %call to %struct.NODE_HELP*
  store %struct.NODE_HELP* %0, %struct.NODE_HELP** %Result, align 8
  %1 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Result, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  call void @sort_PutNodeLinks(%struct.NODE_HELP* %1, %struct.LIST_HELP* %call1)
  %2 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Result, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  call void @sort_PutNodeConditions(%struct.NODE_HELP* %2, %struct.LIST_HELP* %call2)
  %3 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Result, align 8
  call void @sort_PutNodeMark(%struct.NODE_HELP* %3, i32 0)
  %4 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Result, align 8
  call void @sort_PutNodeStart(%struct.NODE_HELP* %4, i32 0)
  %5 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Result, align 8
  call void @sort_PutNodeExtra(%struct.NODE_HELP* %5, i32 0)
  %6 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Result, align 8
  %7 = load i32, i32* %S.addr, align 4
  call void @sort_PutNodeSymbol(%struct.NODE_HELP* %6, i32 %7)
  %8 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Result, align 8
  ret %struct.NODE_HELP* %8
}

declare %struct.st* @st_IndexCreate() #2

; Function Attrs: nounwind uwtable
define void @sort_TheoryPrint(%struct.SORTTHEORY_HELP* %Theory) #0 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %cmp = icmp eq %struct.SORTTHEORY_HELP* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %1)
  br label %for.end.23

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %2)
  %3 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %call2 = call %struct.LIST_HELP* @sort_TheorySuborigcls(%struct.SORTTHEORY_HELP* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %5)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call5 to %struct.LIST_HELP*
  %call6 = call i8* @list_Second(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call6 to %struct.CLAUSE_HELP*
  call void @clause_Print(%struct.CLAUSE_HELP* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %9)
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call8 to %struct.LIST_HELP*
  %call9 = call i8* @list_Third(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call9 to %struct.SLINK_HELP*
  call void @sort_LinkPrint(%struct.SLINK_HELP* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %14)
  %15 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %call12 = call %struct.LIST_HELP* @sort_TheoryTermorigcls(%struct.SORTTHEORY_HELP* %15)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.21, %for.end
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot16 = xor i1 %tobool15, true
  br i1 %lnot16, label %for.body.17, label %for.end.23

for.body.17:                                      ; preds = %for.cond.13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %17)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call19 to %struct.LIST_HELP*
  %call20 = call i8* @list_Second(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call20 to %struct.CLAUSE_HELP*
  call void @clause_Print(%struct.CLAUSE_HELP* %20)
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.17
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.13

for.end.23:                                       ; preds = %if.then, %for.cond.13
  ret void
}

declare void @clause_Print(%struct.CLAUSE_HELP*) #2

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

; Function Attrs: nounwind uwtable
define internal void @sort_LinkPrint(%struct.SLINK_HELP* %Link) #0 {
entry:
  %Link.addr = alloca %struct.SLINK_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.SLINK_HELP* %Link, %struct.SLINK_HELP** %Link.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call1 = call %struct.LIST_HELP* @sort_LinkInput(%struct.SLINK_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call3 to %struct.NODE_HELP*
  %call4 = call i32 @sort_NodeSymbol(%struct.NODE_HELP* %4)
  call void @symbol_Print(i32 %call4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call8 = call i32 @putchar(i32 44)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call11 = call %struct.NODE_HELP* @sort_LinkOutput(%struct.SLINK_HELP* %8)
  %call12 = call i32 @sort_NodeSymbol(%struct.NODE_HELP* %call11)
  call void @symbol_Print(i32 %call12)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %9)
  %10 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call14 = call %struct.LIST_HELP* @sort_LinkConstraint(%struct.SLINK_HELP* %10)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.27, %for.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot18 = xor i1 %tobool17, true
  br i1 %lnot18, label %for.body.19, label %for.end.29

for.body.19:                                      ; preds = %for.cond.15
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call20 to %struct.term*
  call void @term_PrintPrefix(%struct.term* %13)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %for.body.19
  %call25 = call i32 @putchar(i32 44)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %for.body.19
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.15

for.end.29:                                       ; preds = %for.cond.15
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call30 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %16)
  %17 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call31 = call %struct.LIST_HELP* @sort_LinkAntecedent(%struct.SLINK_HELP* %17)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.44, %for.end.29
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call33 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool34 = icmp ne i32 %call33, 0
  %lnot35 = xor i1 %tobool34, true
  br i1 %lnot35, label %for.body.36, label %for.end.46

for.body.36:                                      ; preds = %for.cond.32
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call37 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call37 to %struct.term*
  call void @term_PrintPrefix(%struct.term* %20)
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call38 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  %call39 = call i32 @list_Empty(%struct.LIST_HELP* %call38)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %for.body.36
  %call42 = call i32 @putchar(i32 44)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %for.body.36
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call45 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call45, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.32

for.end.46:                                       ; preds = %for.cond.32
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call47 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %23)
  %24 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call48 = call %struct.LIST_HELP* @sort_LinkSuccedent(%struct.SLINK_HELP* %24)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.61, %for.end.46
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call50 = call i32 @list_Empty(%struct.LIST_HELP* %25)
  %tobool51 = icmp ne i32 %call50, 0
  %lnot52 = xor i1 %tobool51, true
  br i1 %lnot52, label %for.body.53, label %for.end.63

for.body.53:                                      ; preds = %for.cond.49
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call54 = call i8* @list_Car(%struct.LIST_HELP* %26)
  %27 = bitcast i8* %call54 to %struct.term*
  call void @term_PrintPrefix(%struct.term* %27)
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call55 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %28)
  %call56 = call i32 @list_Empty(%struct.LIST_HELP* %call55)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %for.body.53
  %call59 = call i32 @putchar(i32 44)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %for.body.53
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call62 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %29)
  store %struct.LIST_HELP* %call62, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.49

for.end.63:                                       ; preds = %for.cond.49
  %30 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call64 = call %struct.CLAUSE_HELP* @sort_LinkClause(%struct.SLINK_HELP* %30)
  %call65 = call i32 @clause_Number(%struct.CLAUSE_HELP* %call64)
  %31 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call66 = call i32 @sort_LinkCard(%struct.SLINK_HELP* %31)
  %32 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call67 = call i32 @sort_LinkFire(%struct.SLINK_HELP* %32)
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), i32 %call65, i32 %call66, i32 %call67)
  %33 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call69 = call i32 @sort_LinkVar(%struct.SLINK_HELP* %33)
  call void @symbol_Print(i32 %call69)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_TheoryTermorigcls(%struct.SORTTHEORY_HELP* %Theory) #1 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %termorigcls = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %0, i32 0, i32 3
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termorigcls, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: nounwind uwtable
define void @sort_TheoryDelete(%struct.SORTTHEORY_HELP* %Theory) #0 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %i = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Tuple = alloca %struct.LIST_HELP*, align 8
  %Term = alloca %struct.term*, align 8
  %Atom = alloca %struct.term*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %cmp = icmp ne %struct.SORTTHEORY_HELP* %0, null
  br i1 %cmp, label %if.then, label %if.end.40

if.then:                                          ; preds = %entry
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %suborigcls = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %1, i32 0, i32 2
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %suborigcls, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call1 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %Tuple, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Tuple, align 8
  %call2 = call i8* @list_Third(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call2 to %struct.SLINK_HELP*
  call void @sort_LinkDelete(%struct.SLINK_HELP* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Tuple, align 8
  %call3 = call i8* @list_Second(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call3 to %struct.CLAUSE_HELP*
  call void @clause_Delete(%struct.CLAUSE_HELP* %9)
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Tuple, align 8
  call void @list_Delete(%struct.LIST_HELP* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %suborigcls5 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %12, i32 0, i32 2
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %suborigcls5, align 8
  call void @list_Delete(%struct.LIST_HELP* %13)
  %14 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %termorigcls = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %14, i32 0, i32 3
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termorigcls, align 8
  store %struct.LIST_HELP* %15, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.25, %for.end
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot9 = xor i1 %tobool8, true
  br i1 %lnot9, label %for.body.10, label %for.end.27

for.body.10:                                      ; preds = %for.cond.6
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call11 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %18, %struct.LIST_HELP** %Tuple, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Tuple, align 8
  %call12 = call i8* @list_Third(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call12 to %struct.term*
  store %struct.term* %20, %struct.term** %Term, align 8
  %21 = load %struct.term*, %struct.term** %Term, align 8
  %call13 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %21)
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %call13)
  %22 = bitcast i8* %call14 to %struct.term*
  store %struct.term* %22, %struct.term** %Atom, align 8
  %23 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %index = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %23, i32 0, i32 0
  %24 = load %struct.st*, %struct.st** %index, align 8
  %25 = load %struct.term*, %struct.term** %Term, align 8
  %26 = bitcast %struct.term* %25 to i8*
  %27 = load %struct.term*, %struct.term** %Term, align 8
  %call15 = call %struct.binding* @cont_LeftContext()
  %call16 = call i32 @st_EntryDelete(%struct.st* %24, i8* %26, %struct.term* %27, %struct.binding* %call15)
  %28 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %index17 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %28, i32 0, i32 0
  %29 = load %struct.st*, %struct.st** %index17, align 8
  %30 = load %struct.term*, %struct.term** %Atom, align 8
  %31 = bitcast %struct.term* %30 to i8*
  %32 = load %struct.term*, %struct.term** %Atom, align 8
  %call18 = call %struct.binding* @cont_LeftContext()
  %call19 = call i32 @st_EntryDelete(%struct.st* %29, i8* %31, %struct.term* %32, %struct.binding* %call18)
  %33 = load %struct.term*, %struct.term** %Atom, align 8
  %call20 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %33)
  call void @list_Delete(%struct.LIST_HELP* %call20)
  %34 = load %struct.term*, %struct.term** %Term, align 8
  %call21 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %34)
  call void @list_Delete(%struct.LIST_HELP* %call21)
  %35 = load %struct.term*, %struct.term** %Term, align 8
  %call22 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacSupertermList(%struct.term* %35, %struct.LIST_HELP* %call22)
  %36 = load %struct.term*, %struct.term** %Atom, align 8
  %call23 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacSupertermList(%struct.term* %36, %struct.LIST_HELP* %call23)
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Tuple, align 8
  %call24 = call i8* @list_Second(%struct.LIST_HELP* %37)
  %38 = bitcast i8* %call24 to %struct.CLAUSE_HELP*
  call void @clause_Delete(%struct.CLAUSE_HELP* %38)
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Tuple, align 8
  call void @list_Delete(%struct.LIST_HELP* %39)
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.10
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %40)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.6

for.end.27:                                       ; preds = %for.cond.6
  %41 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %termorigcls28 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %41, i32 0, i32 3
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termorigcls28, align 8
  call void @list_Delete(%struct.LIST_HELP* %42)
  %43 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %index29 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %43, i32 0, i32 0
  %44 = load %struct.st*, %struct.st** %index29, align 8
  call void @st_IndexDelete(%struct.st* %44)
  store i32 1, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.38, %for.end.27
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* @symbol_ACTINDEX, align 4
  %cmp31 = icmp slt i32 %45, %46
  br i1 %cmp31, label %for.body.32, label %for.end.39

for.body.32:                                      ; preds = %for.cond.30
  %47 = load i32, i32* %i, align 4
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %basesorttable = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %48, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4000 x %struct.NODE_HELP*], [4000 x %struct.NODE_HELP*]* %basesorttable, i32 0, i64 %idxprom
  %49 = load %struct.NODE_HELP*, %struct.NODE_HELP** %arrayidx, align 8
  %cmp33 = icmp ne %struct.NODE_HELP* %49, null
  br i1 %cmp33, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %for.body.32
  %50 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %50 to i64
  %51 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %basesorttable36 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %51, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [4000 x %struct.NODE_HELP*], [4000 x %struct.NODE_HELP*]* %basesorttable36, i32 0, i64 %idxprom35
  %52 = load %struct.NODE_HELP*, %struct.NODE_HELP** %arrayidx37, align 8
  call void @sort_NodeDelete(%struct.NODE_HELP* %52)
  br label %if.end

if.end:                                           ; preds = %if.then.34, %for.body.32
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.30

for.end.39:                                       ; preds = %for.cond.30
  %54 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %55 = bitcast %struct.SORTTHEORY_HELP* %54 to i8*
  call void @memory_Free(i8* %55, i32 32032)
  br label %if.end.40

if.end.40:                                        ; preds = %for.end.39, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_LinkDelete(%struct.SLINK_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  %0 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %call = call %struct.LIST_HELP* @sort_LinkInput(%struct.SLINK_HELP* %0)
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
  %3 = bitcast i8* %call2 to %struct.NODE_HELP*
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.NODE_HELP*
  %call4 = call %struct.LIST_HELP* @sort_NodeLinks(%struct.NODE_HELP* %5)
  %6 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %7 = bitcast %struct.SLINK_HELP* %6 to i8*
  %call5 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call4, i8* %7)
  call void @sort_PutNodeLinks(%struct.NODE_HELP* %3, %struct.LIST_HELP* %call5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %call7 = call %struct.LIST_HELP* @sort_LinkInput(%struct.SLINK_HELP* %9)
  call void @list_Delete(%struct.LIST_HELP* %call7)
  %10 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %call8 = call %struct.LIST_HELP* @sort_LinkConstraint(%struct.SLINK_HELP* %10)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call8)
  %11 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %call9 = call %struct.LIST_HELP* @sort_LinkAntecedent(%struct.SLINK_HELP* %11)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call9)
  %12 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %call10 = call %struct.LIST_HELP* @sort_LinkSuccedent(%struct.SLINK_HELP* %12)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call10)
  %13 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  call void @sort_LinkFree(%struct.SLINK_HELP* %13)
  ret void
}

declare void @clause_Delete(%struct.CLAUSE_HELP*) #2

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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LeftContext() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LEFTCONTEXT, align 8
  ret %struct.binding* %0
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

declare void @st_IndexDelete(%struct.st*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_NodeDelete(%struct.NODE_HELP* %N) #1 {
entry:
  %N.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  %0 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %links = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %links, align 8
  call void @list_Delete(%struct.LIST_HELP* %1)
  %call = call %struct.LIST_HELP* @list_Nil()
  %2 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %links1 = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %2, i32 0, i32 0
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %links1, align 8
  %3 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %conditions = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %3, i32 0, i32 4
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %conditions, align 8
  call void @sort_DeleteConditionList(%struct.LIST_HELP* %4)
  %call2 = call %struct.LIST_HELP* @list_Nil()
  %5 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %conditions3 = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %5, i32 0, i32 4
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %conditions3, align 8
  %6 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  call void @sort_NodeFree(%struct.NODE_HELP* %6)
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

; Function Attrs: nounwind uwtable
define void @sort_TheoryInsertClause(%struct.SORTTHEORY_HELP* %Theory, %struct.CLAUSE_HELP* %Origin, %struct.CLAUSE_HELP* %Clause, %struct.LITERAL_HELP* %L) #0 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Origin.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  %Term = alloca %struct.term*, align 8
  %Atom = alloca %struct.term*, align 8
  %Link = alloca %struct.SLINK_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.CLAUSE_HELP* %Origin, %struct.CLAUSE_HELP** %Origin.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %0)
  %call1 = call %struct.term* @term_FirstArgument(%struct.term* %call)
  store %struct.term* %call1, %struct.term** %Term, align 8
  %1 = load %struct.term*, %struct.term** %Term, align 8
  %call2 = call i32 @term_IsVariable(%struct.term* %1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Origin.addr, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call3 = call %struct.SLINK_HELP* @sort_TheoryLinkCreate(%struct.SORTTHEORY_HELP* %2, %struct.CLAUSE_HELP* %3, %struct.CLAUSE_HELP* %4, %struct.LITERAL_HELP* %5)
  store %struct.SLINK_HELP* %call3, %struct.SLINK_HELP** %Link, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Origin.addr, align 8
  %7 = bitcast %struct.CLAUSE_HELP* %6 to i8*
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %8)
  %9 = bitcast %struct.CLAUSE_HELP* %call4 to i8*
  %10 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %11 = bitcast %struct.SLINK_HELP* %10 to i8*
  %call5 = call %struct.LIST_HELP* @list_List(i8* %11)
  %call6 = call %struct.LIST_HELP* @list_Cons(i8* %9, %struct.LIST_HELP* %call5)
  %call7 = call %struct.LIST_HELP* @list_Cons(i8* %7, %struct.LIST_HELP* %call6)
  %12 = bitcast %struct.LIST_HELP* %call7 to i8*
  %13 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %suborigcls = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %13, i32 0, i32 2
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %suborigcls, align 8
  %call8 = call %struct.LIST_HELP* @list_Cons(i8* %12, %struct.LIST_HELP* %14)
  %15 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %suborigcls9 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %15, i32 0, i32 2
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %suborigcls9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call10 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %16)
  store %struct.term* %call10, %struct.term** %Atom, align 8
  %17 = load %struct.term*, %struct.term** %Atom, align 8
  %18 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %19 = bitcast %struct.LITERAL_HELP* %18 to i8*
  %call11 = call %struct.LIST_HELP* @list_List(i8* %19)
  call void @term_RplacSupertermList(%struct.term* %17, %struct.LIST_HELP* %call11)
  %20 = load %struct.term*, %struct.term** %Term, align 8
  %21 = load %struct.term*, %struct.term** %Atom, align 8
  %22 = bitcast %struct.term* %21 to i8*
  %call12 = call %struct.LIST_HELP* @list_List(i8* %22)
  call void @term_RplacSupertermList(%struct.term* %20, %struct.LIST_HELP* %call12)
  %23 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %index = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %23, i32 0, i32 0
  %24 = load %struct.st*, %struct.st** %index, align 8
  %25 = load %struct.term*, %struct.term** %Term, align 8
  %26 = bitcast %struct.term* %25 to i8*
  %27 = load %struct.term*, %struct.term** %Term, align 8
  %call13 = call %struct.binding* @cont_LeftContext()
  call void @st_EntryCreate(%struct.st* %24, i8* %26, %struct.term* %27, %struct.binding* %call13)
  %28 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %index14 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %28, i32 0, i32 0
  %29 = load %struct.st*, %struct.st** %index14, align 8
  %30 = load %struct.term*, %struct.term** %Atom, align 8
  %31 = bitcast %struct.term* %30 to i8*
  %32 = load %struct.term*, %struct.term** %Atom, align 8
  %call15 = call %struct.binding* @cont_LeftContext()
  call void @st_EntryCreate(%struct.st* %29, i8* %31, %struct.term* %32, %struct.binding* %call15)
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Origin.addr, align 8
  %34 = bitcast %struct.CLAUSE_HELP* %33 to i8*
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %36 = bitcast %struct.CLAUSE_HELP* %35 to i8*
  %37 = load %struct.term*, %struct.term** %Term, align 8
  %38 = bitcast %struct.term* %37 to i8*
  %call16 = call %struct.LIST_HELP* @list_List(i8* %38)
  %call17 = call %struct.LIST_HELP* @list_Cons(i8* %36, %struct.LIST_HELP* %call16)
  %call18 = call %struct.LIST_HELP* @list_Cons(i8* %34, %struct.LIST_HELP* %call17)
  %39 = bitcast %struct.LIST_HELP* %call18 to i8*
  %40 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %termorigcls = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %40, i32 0, i32 3
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termorigcls, align 8
  %call19 = call %struct.LIST_HELP* @list_Cons(i8* %39, %struct.LIST_HELP* %41)
  %42 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %termorigcls20 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %42, i32 0, i32 3
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %termorigcls20, align 8
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
define internal i32 @term_IsVariable(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsVariable(i32 %call)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal %struct.SLINK_HELP* @sort_TheoryLinkCreate(%struct.SORTTHEORY_HELP* %Theory, %struct.CLAUSE_HELP* %Origin, %struct.CLAUSE_HELP* %Clause, %struct.LITERAL_HELP* %Lit) #0 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Origin.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Lit.addr = alloca %struct.LITERAL_HELP*, align 8
  %Result = alloca %struct.SLINK_HELP*, align 8
  %Output = alloca i32, align 4
  %Var = alloca i32, align 4
  %Max = alloca i32, align 4
  %i = alloca i32, align 4
  %Input = alloca %struct.LIST_HELP*, align 8
  %Antecedent = alloca %struct.LIST_HELP*, align 8
  %Succedent = alloca %struct.LIST_HELP*, align 8
  %Constraint = alloca %struct.LIST_HELP*, align 8
  %Term = alloca %struct.term*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.CLAUSE_HELP* %Origin, %struct.CLAUSE_HELP** %Origin.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LITERAL_HELP* %Lit, %struct.LITERAL_HELP** %Lit.addr, align 8
  %call = call i8* @memory_Malloc(i32 64)
  %0 = bitcast i8* %call to %struct.SLINK_HELP*
  store %struct.SLINK_HELP* %0, %struct.SLINK_HELP** %Result, align 8
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  %call1 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %1)
  %call2 = call i32 @term_TopSymbol(%struct.term* %call1)
  store i32 %call2, i32* %Output, align 4
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  %call3 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %2)
  %call4 = call %struct.term* @term_FirstArgument(%struct.term* %call3)
  %call5 = call i32 @term_TopSymbol(%struct.term* %call4)
  store i32 %call5, i32* %Var, align 4
  %call6 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Constraint, align 8
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Succedent, align 8
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Antecedent, align 8
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Input, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call7 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %3)
  store i32 %call7, i32* %Max, align 4
  %4 = load i32, i32* %Max, align 4
  call void @term_StartMaxRenaming(i32 %4)
  %call8 = call i32 @symbol_CreateStandardVariable()
  store i32 %call8, i32* %Max, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call9 = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %5)
  store i32 %call9, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call10 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %7)
  %cmp = icmp sle i32 %6, %call10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %Var, align 4
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %10 = load i32, i32* %i, align 4
  %call11 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %9, i32 %10)
  %call12 = call %struct.term* @term_FirstArgument(%struct.term* %call11)
  %call13 = call i32 @term_TopSymbol(%struct.term* %call12)
  %call14 = call i32 @symbol_Equal(i32 %8, i32 %call13)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %13 = load i32, i32* %i, align 4
  %call15 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %12, i32 %13)
  %call16 = call i32 @term_TopSymbol(%struct.term* %call15)
  %call17 = call %struct.NODE_HELP* @sort_TheoryNode(%struct.SORTTHEORY_HELP* %11, i32 %call16)
  %14 = bitcast %struct.NODE_HELP* %call17 to i8*
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Input, align 8
  %call18 = call %struct.LIST_HELP* @list_Cons(i8* %14, %struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Input, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %17 = load i32, i32* %i, align 4
  %call19 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %16, i32 %17)
  %call20 = call %struct.term* @term_Copy(%struct.term* %call19)
  store %struct.term* %call20, %struct.term** %Term, align 8
  %18 = load %struct.term*, %struct.term** %Term, align 8
  %19 = load i32, i32* %Var, align 4
  %20 = load i32, i32* %Max, align 4
  call void @term_ExchangeVariable(%struct.term* %18, i32 %19, i32 %20)
  %21 = load %struct.term*, %struct.term** %Term, align 8
  %22 = bitcast %struct.term* %21 to i8*
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %call21 = call %struct.LIST_HELP* @list_Cons(i8* %22, %struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Constraint, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call22 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %25)
  store i32 %call22, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.30, %for.end
  %26 = load i32, i32* %i, align 4
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call24 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %27)
  %cmp25 = icmp sle i32 %26, %call24
  br i1 %cmp25, label %for.body.26, label %for.end.32

for.body.26:                                      ; preds = %for.cond.23
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %29 = load i32, i32* %i, align 4
  %call27 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %28, i32 %29)
  %call28 = call %struct.term* @term_Copy(%struct.term* %call27)
  store %struct.term* %call28, %struct.term** %Term, align 8
  %30 = load %struct.term*, %struct.term** %Term, align 8
  %31 = load i32, i32* %Var, align 4
  %32 = load i32, i32* %Max, align 4
  call void @term_ExchangeVariable(%struct.term* %30, i32 %31, i32 %32)
  %33 = load %struct.term*, %struct.term** %Term, align 8
  %34 = bitcast %struct.term* %33 to i8*
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  %call29 = call %struct.LIST_HELP* @list_Cons(i8* %34, %struct.LIST_HELP* %35)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Antecedent, align 8
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.26
  %36 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %36, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.23

for.end.32:                                       ; preds = %for.cond.23
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call33 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %37)
  store i32 %call33, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.45, %for.end.32
  %38 = load i32, i32* %i, align 4
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call35 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %39)
  %cmp36 = icmp sle i32 %38, %call35
  br i1 %cmp36, label %for.body.37, label %for.end.47

for.body.37:                                      ; preds = %for.cond.34
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %41 = load i32, i32* %i, align 4
  %call38 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %40, i32 %41)
  %42 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  %cmp39 = icmp ne %struct.LITERAL_HELP* %call38, %42
  br i1 %cmp39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %for.body.37
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %44 = load i32, i32* %i, align 4
  %call41 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %43, i32 %44)
  %call42 = call %struct.term* @term_Copy(%struct.term* %call41)
  store %struct.term* %call42, %struct.term** %Term, align 8
  %45 = load %struct.term*, %struct.term** %Term, align 8
  %46 = load i32, i32* %Var, align 4
  %47 = load i32, i32* %Max, align 4
  call void @term_ExchangeVariable(%struct.term* %45, i32 %46, i32 %47)
  %48 = load %struct.term*, %struct.term** %Term, align 8
  %49 = bitcast %struct.term* %48 to i8*
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %call43 = call %struct.LIST_HELP* @list_Cons(i8* %49, %struct.LIST_HELP* %50)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %Succedent, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %for.body.37
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %51 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %51, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.34

for.end.47:                                       ; preds = %for.cond.34
  %52 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Result, align 8
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Input, align 8
  call void @sort_PutLinkInput(%struct.SLINK_HELP* %52, %struct.LIST_HELP* %53)
  %54 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Result, align 8
  %55 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %56 = load i32, i32* %Output, align 4
  %call48 = call %struct.NODE_HELP* @sort_TheoryNode(%struct.SORTTHEORY_HELP* %55, i32 %56)
  call void @sort_PutLinkOutput(%struct.SLINK_HELP* %54, %struct.NODE_HELP* %call48)
  %57 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Result, align 8
  %58 = load i32, i32* %Max, align 4
  call void @sort_PutLinkVar(%struct.SLINK_HELP* %57, i32 %58)
  %59 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Result, align 8
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  call void @sort_PutLinkConstraint(%struct.SLINK_HELP* %59, %struct.LIST_HELP* %60)
  %61 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Result, align 8
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  call void @sort_PutLinkAntecedent(%struct.SLINK_HELP* %61, %struct.LIST_HELP* %62)
  %63 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Result, align 8
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  call void @sort_PutLinkSuccedent(%struct.SLINK_HELP* %63, %struct.LIST_HELP* %64)
  %65 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Result, align 8
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Input, align 8
  %call49 = call i32 @list_Length(%struct.LIST_HELP* %66)
  call void @sort_PutLinkCard(%struct.SLINK_HELP* %65, i32 %call49)
  %67 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Result, align 8
  call void @sort_LinkResetFire(%struct.SLINK_HELP* %67)
  %68 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Result, align 8
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Origin.addr, align 8
  call void @sort_PutLinkClause(%struct.SLINK_HELP* %68, %struct.CLAUSE_HELP* %69)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.47
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Input, align 8
  %call50 = call i32 @list_Empty(%struct.LIST_HELP* %70)
  %tobool51 = icmp ne i32 %call50, 0
  %lnot = xor i1 %tobool51, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Input, align 8
  %call52 = call i8* @list_Car(%struct.LIST_HELP* %71)
  %72 = bitcast i8* %call52 to %struct.NODE_HELP*
  %73 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Result, align 8
  %74 = bitcast %struct.SLINK_HELP* %73 to i8*
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Input, align 8
  %call53 = call i8* @list_Car(%struct.LIST_HELP* %75)
  %76 = bitcast i8* %call53 to %struct.NODE_HELP*
  %call54 = call %struct.LIST_HELP* @sort_NodeLinks(%struct.NODE_HELP* %76)
  %call55 = call %struct.LIST_HELP* @list_Cons(i8* %74, %struct.LIST_HELP* %call54)
  call void @sort_PutNodeLinks(%struct.NODE_HELP* %72, %struct.LIST_HELP* %call55)
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Input, align 8
  %call56 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %77)
  store %struct.LIST_HELP* %call56, %struct.LIST_HELP** %Input, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %78 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Result, align 8
  ret %struct.SLINK_HELP* %78
}

declare %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP*) #2

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

declare void @st_EntryCreate(%struct.st*, i8*, %struct.term*, %struct.binding*) #2

; Function Attrs: nounwind uwtable
define void @sort_TheoryDeleteClause(%struct.SORTTHEORY_HELP* %Theory, %struct.CLAUSE_HELP* %Origin) #0 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Origin.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Term = alloca %struct.term*, align 8
  %Atom = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Tuple = alloca %struct.LIST_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.CLAUSE_HELP* %Origin, %struct.CLAUSE_HELP** %Origin.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %suborigcls = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %suborigcls, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call1 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Tuple, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Tuple, align 8
  %call2 = call i8* @list_First(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call2 to %struct.CLAUSE_HELP*
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Origin.addr, align 8
  %cmp = icmp eq %struct.CLAUSE_HELP* %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %8, i8* null)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Tuple, align 8
  %call3 = call i8* @list_Third(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call3 to %struct.SLINK_HELP*
  call void @sort_LinkDelete(%struct.SLINK_HELP* %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Tuple, align 8
  %call4 = call i8* @list_Second(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call4 to %struct.CLAUSE_HELP*
  call void @clause_Delete(%struct.CLAUSE_HELP* %12)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Tuple, align 8
  call void @list_Delete(%struct.LIST_HELP* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %suborigcls6 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %15, i32 0, i32 2
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %suborigcls6, align 8
  %call7 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %16, i8* null)
  %17 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %suborigcls8 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %17, i32 0, i32 2
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %suborigcls8, align 8
  %18 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %termorigcls = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %18, i32 0, i32 3
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termorigcls, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.32, %for.end
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot12 = xor i1 %tobool11, true
  br i1 %lnot12, label %for.body.13, label %for.end.34

for.body.13:                                      ; preds = %for.cond.9
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call14 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %22, %struct.LIST_HELP** %Tuple, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Tuple, align 8
  %call15 = call i8* @list_First(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call15 to %struct.CLAUSE_HELP*
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Origin.addr, align 8
  %cmp16 = icmp eq %struct.CLAUSE_HELP* %24, %25
  br i1 %cmp16, label %if.then.17, label %if.end.31

if.then.17:                                       ; preds = %for.body.13
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %26, i8* null)
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Tuple, align 8
  %call18 = call i8* @list_Third(%struct.LIST_HELP* %27)
  %28 = bitcast i8* %call18 to %struct.term*
  store %struct.term* %28, %struct.term** %Term, align 8
  %29 = load %struct.term*, %struct.term** %Term, align 8
  %call19 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %29)
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %call19)
  %30 = bitcast i8* %call20 to %struct.term*
  store %struct.term* %30, %struct.term** %Atom, align 8
  %31 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %index = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %31, i32 0, i32 0
  %32 = load %struct.st*, %struct.st** %index, align 8
  %33 = load %struct.term*, %struct.term** %Term, align 8
  %34 = bitcast %struct.term* %33 to i8*
  %35 = load %struct.term*, %struct.term** %Term, align 8
  %call21 = call %struct.binding* @cont_LeftContext()
  %call22 = call i32 @st_EntryDelete(%struct.st* %32, i8* %34, %struct.term* %35, %struct.binding* %call21)
  %36 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %index23 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %36, i32 0, i32 0
  %37 = load %struct.st*, %struct.st** %index23, align 8
  %38 = load %struct.term*, %struct.term** %Atom, align 8
  %39 = bitcast %struct.term* %38 to i8*
  %40 = load %struct.term*, %struct.term** %Atom, align 8
  %call24 = call %struct.binding* @cont_LeftContext()
  %call25 = call i32 @st_EntryDelete(%struct.st* %37, i8* %39, %struct.term* %40, %struct.binding* %call24)
  %41 = load %struct.term*, %struct.term** %Atom, align 8
  %call26 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %41)
  call void @list_Delete(%struct.LIST_HELP* %call26)
  %42 = load %struct.term*, %struct.term** %Term, align 8
  %call27 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %42)
  call void @list_Delete(%struct.LIST_HELP* %call27)
  %43 = load %struct.term*, %struct.term** %Term, align 8
  %call28 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacSupertermList(%struct.term* %43, %struct.LIST_HELP* %call28)
  %44 = load %struct.term*, %struct.term** %Atom, align 8
  %call29 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacSupertermList(%struct.term* %44, %struct.LIST_HELP* %call29)
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Tuple, align 8
  %call30 = call i8* @list_Second(%struct.LIST_HELP* %45)
  %46 = bitcast i8* %call30 to %struct.CLAUSE_HELP*
  call void @clause_Delete(%struct.CLAUSE_HELP* %46)
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Tuple, align 8
  call void @list_Delete(%struct.LIST_HELP* %47)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.17, %for.body.13
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call33 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %48)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.9

for.end.34:                                       ; preds = %for.cond.9
  %49 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %termorigcls35 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %49, i32 0, i32 3
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termorigcls35, align 8
  %call36 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %50, i8* null)
  %51 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %termorigcls37 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %51, i32 0, i32 3
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %termorigcls37, align 8
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

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.CONDITION_HELP* @sort_ConditionCreate(i32 %Var, %struct.LIST_HELP* %Constr, %struct.LIST_HELP* %Ante, %struct.LIST_HELP* %Succ, %struct.LIST_HELP* %Clauses) #0 {
entry:
  %Var.addr = alloca i32, align 4
  %Constr.addr = alloca %struct.LIST_HELP*, align 8
  %Ante.addr = alloca %struct.LIST_HELP*, align 8
  %Succ.addr = alloca %struct.LIST_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.CONDITION_HELP*, align 8
  store i32 %Var, i32* %Var.addr, align 4
  store %struct.LIST_HELP* %Constr, %struct.LIST_HELP** %Constr.addr, align 8
  store %struct.LIST_HELP* %Ante, %struct.LIST_HELP** %Ante.addr, align 8
  store %struct.LIST_HELP* %Succ, %struct.LIST_HELP** %Succ.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %call = call i8* @memory_Malloc(i32 40)
  %0 = bitcast i8* %call to %struct.CONDITION_HELP*
  store %struct.CONDITION_HELP* %0, %struct.CONDITION_HELP** %Result, align 8
  %1 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Result, align 8
  %2 = load i32, i32* %Var.addr, align 4
  call void @sort_ConditionPutVar(%struct.CONDITION_HELP* %1, i32 %2)
  %3 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Result, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constr.addr, align 8
  call void @sort_ConditionPutConstraint(%struct.CONDITION_HELP* %3, %struct.LIST_HELP* %4)
  %5 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Result, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Ante.addr, align 8
  call void @sort_ConditionPutAntecedent(%struct.CONDITION_HELP* %5, %struct.LIST_HELP* %6)
  %7 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Result, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succ.addr, align 8
  call void @sort_ConditionPutSuccedent(%struct.CONDITION_HELP* %7, %struct.LIST_HELP* %8)
  %9 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Result, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  call void @sort_ConditionPutClauses(%struct.CONDITION_HELP* %9, %struct.LIST_HELP* %10)
  %11 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Result, align 8
  ret %struct.CONDITION_HELP* %11
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_ConditionPutVar(%struct.CONDITION_HELP* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %1 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %var = getelementptr inbounds %struct.CONDITION_HELP, %struct.CONDITION_HELP* %1, i32 0, i32 0
  store i32 %0, i32* %var, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_ConditionPutConstraint(%struct.CONDITION_HELP* %C, %struct.LIST_HELP* %Constr) #1 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  %Constr.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  store %struct.LIST_HELP* %Constr, %struct.LIST_HELP** %Constr.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constr.addr, align 8
  %1 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %constraint = getelementptr inbounds %struct.CONDITION_HELP, %struct.CONDITION_HELP* %1, i32 0, i32 1
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %constraint, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_ConditionPutAntecedent(%struct.CONDITION_HELP* %C, %struct.LIST_HELP* %Ante) #1 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  %Ante.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  store %struct.LIST_HELP* %Ante, %struct.LIST_HELP** %Ante.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Ante.addr, align 8
  %1 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %antecedent = getelementptr inbounds %struct.CONDITION_HELP, %struct.CONDITION_HELP* %1, i32 0, i32 2
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %antecedent, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_ConditionPutSuccedent(%struct.CONDITION_HELP* %C, %struct.LIST_HELP* %Succ) #1 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  %Succ.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  store %struct.LIST_HELP* %Succ, %struct.LIST_HELP** %Succ.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succ.addr, align 8
  %1 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %succedent = getelementptr inbounds %struct.CONDITION_HELP, %struct.CONDITION_HELP* %1, i32 0, i32 3
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %succedent, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_ConditionPutClauses(%struct.CONDITION_HELP* %C, %struct.LIST_HELP* %Clauses) #1 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %1 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %clauses = getelementptr inbounds %struct.CONDITION_HELP, %struct.CONDITION_HELP* %1, i32 0, i32 4
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %clauses, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.CONDITION_HELP* @sort_ConditionNormalize(%struct.CONDITION_HELP* %Cond) #0 {
entry:
  %Cond.addr = alloca %struct.CONDITION_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Old = alloca i32, align 4
  %New = alloca i32, align 4
  store %struct.CONDITION_HELP* %Cond, %struct.CONDITION_HELP** %Cond.addr, align 8
  call void @term_StartMinRenaming()
  %0 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %0)
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
  %call3 = call %struct.term* @term_Rename(%struct.term* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call5 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.13, %for.end
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot9 = xor i1 %tobool8, true
  br i1 %lnot9, label %for.body.10, label %for.end.15

for.body.10:                                      ; preds = %for.cond.6
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call11 to %struct.term*
  %call12 = call %struct.term* @term_Rename(%struct.term* %8)
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.10
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.6

for.end.15:                                       ; preds = %for.cond.6
  %10 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call16 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %10)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.24, %for.end.15
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot20 = xor i1 %tobool19, true
  br i1 %lnot20, label %for.body.21, label %for.end.26

for.body.21:                                      ; preds = %for.cond.17
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call22 to %struct.term*
  %call23 = call %struct.term* @term_Rename(%struct.term* %13)
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.21
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call25 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.17

for.end.26:                                       ; preds = %for.cond.17
  %call27 = call i32 @symbol_CreateStandardVariable()
  store i32 %call27, i32* %New, align 4
  %15 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call28 = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %15)
  %call29 = call i32 @term_GetRenamedVarSymbol(i32 %call28)
  store i32 %call29, i32* %Old, align 4
  %16 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call30 = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %16)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.37, %for.end.26
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call32 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool33 = icmp ne i32 %call32, 0
  %lnot34 = xor i1 %tobool33, true
  br i1 %lnot34, label %for.body.35, label %for.end.39

for.body.35:                                      ; preds = %for.cond.31
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call36 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call36 to %struct.term*
  %20 = load i32, i32* %Old, align 4
  %21 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %19, i32 %20, i32 %21)
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.35
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call38 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.31

for.end.39:                                       ; preds = %for.cond.31
  %23 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call40 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %23)
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.47, %for.end.39
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call42 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool43 = icmp ne i32 %call42, 0
  %lnot44 = xor i1 %tobool43, true
  br i1 %lnot44, label %for.body.45, label %for.end.49

for.body.45:                                      ; preds = %for.cond.41
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call46 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call46 to %struct.term*
  %27 = load i32, i32* %Old, align 4
  %28 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %26, i32 %27, i32 %28)
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.45
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call48 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %29)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.41

for.end.49:                                       ; preds = %for.cond.41
  %30 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call50 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %30)
  store %struct.LIST_HELP* %call50, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.57, %for.end.49
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call52 = call i32 @list_Empty(%struct.LIST_HELP* %31)
  %tobool53 = icmp ne i32 %call52, 0
  %lnot54 = xor i1 %tobool53, true
  br i1 %lnot54, label %for.body.55, label %for.end.59

for.body.55:                                      ; preds = %for.cond.51
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call56 = call i8* @list_Car(%struct.LIST_HELP* %32)
  %33 = bitcast i8* %call56 to %struct.term*
  %34 = load i32, i32* %Old, align 4
  %35 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %33, i32 %34, i32 %35)
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.55
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call58 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call58, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.51

for.end.59:                                       ; preds = %for.cond.51
  %37 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %38 = load i32, i32* %New, align 4
  call void @sort_ConditionPutVar(%struct.CONDITION_HELP* %37, i32 %38)
  %39 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  ret %struct.CONDITION_HELP* %39
}

declare void @term_StartMinRenaming() #2

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

declare %struct.term* @term_Rename(%struct.term*) #2

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
define internal i32 @symbol_CreateStandardVariable() #1 {
entry:
  %0 = load i32, i32* @symbol_STANDARDVARCOUNTER, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @symbol_STANDARDVARCOUNTER, align 4
  ret i32 %inc
}

declare i32 @term_GetRenamedVarSymbol(i32) #2

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

declare void @term_ExchangeVariable(%struct.term*, i32, i32) #2

; Function Attrs: nounwind uwtable
define %struct.CONDITION_HELP* @sort_ConditionCreateNoResidues(%struct.LIST_HELP* %Clauses) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.CONDITION_HELP*, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %call = call i8* @memory_Malloc(i32 40)
  %0 = bitcast i8* %call to %struct.CONDITION_HELP*
  store %struct.CONDITION_HELP* %0, %struct.CONDITION_HELP** %Result, align 8
  %1 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Result, align 8
  %call1 = call i32 @symbol_FirstVariable()
  call void @sort_ConditionPutVar(%struct.CONDITION_HELP* %1, i32 %call1)
  %2 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Result, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  call void @sort_ConditionPutConstraint(%struct.CONDITION_HELP* %2, %struct.LIST_HELP* %call2)
  %3 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Result, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  call void @sort_ConditionPutAntecedent(%struct.CONDITION_HELP* %3, %struct.LIST_HELP* %call3)
  %4 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Result, align 8
  %call4 = call %struct.LIST_HELP* @list_Nil()
  call void @sort_ConditionPutSuccedent(%struct.CONDITION_HELP* %4, %struct.LIST_HELP* %call4)
  %5 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Result, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  call void @sort_ConditionPutClauses(%struct.CONDITION_HELP* %5, %struct.LIST_HELP* %6)
  %7 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Result, align 8
  ret %struct.CONDITION_HELP* %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_FirstVariable() #1 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define %struct.CONDITION_HELP* @sort_ExtendConditionByLink(%struct.CONDITION_HELP* %Cond, %struct.SLINK_HELP* %Link) #0 {
entry:
  %Cond.addr = alloca %struct.CONDITION_HELP*, align 8
  %Link.addr = alloca %struct.SLINK_HELP*, align 8
  %Lits = alloca %struct.LIST_HELP*, align 8
  %Antecedent = alloca %struct.LIST_HELP*, align 8
  %Succedent = alloca %struct.LIST_HELP*, align 8
  %Constraint = alloca %struct.LIST_HELP*, align 8
  %Old = alloca i32, align 4
  %New = alloca i32, align 4
  store %struct.CONDITION_HELP* %Cond, %struct.CONDITION_HELP** %Cond.addr, align 8
  store %struct.SLINK_HELP* %Link, %struct.SLINK_HELP** %Link.addr, align 8
  %0 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %0)
  call void @term_StartMaxRenaming(i32 %call)
  %1 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call1 = call %struct.LIST_HELP* @sort_LinkConstraint(%struct.SLINK_HELP* %1)
  %call2 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Constraint, align 8
  %2 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call3 = call %struct.LIST_HELP* @sort_LinkAntecedent(%struct.SLINK_HELP* %2)
  %call4 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Antecedent, align 8
  %3 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call5 = call %struct.LIST_HELP* @sort_LinkSuccedent(%struct.SLINK_HELP* %3)
  %call6 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Succedent, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call8 to %struct.term*
  %call9 = call %struct.term* @term_Rename(%struct.term* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.18, %for.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool13 = icmp ne i32 %call12, 0
  %lnot14 = xor i1 %tobool13, true
  br i1 %lnot14, label %for.body.15, label %for.end.20

for.body.15:                                      ; preds = %for.cond.11
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call16 to %struct.term*
  %call17 = call %struct.term* @term_Rename(%struct.term* %12)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.15
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.11

for.end.20:                                       ; preds = %for.cond.11
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.28, %for.end.20
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot24 = xor i1 %tobool23, true
  br i1 %lnot24, label %for.body.25, label %for.end.30

for.body.25:                                      ; preds = %for.cond.21
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call26 to %struct.term*
  %call27 = call %struct.term* @term_Rename(%struct.term* %17)
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.25
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.21

for.end.30:                                       ; preds = %for.cond.21
  %19 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call31 = call i32 @sort_LinkVar(%struct.SLINK_HELP* %19)
  %call32 = call i32 @term_GetRenamedVarSymbol(i32 %call31)
  store i32 %call32, i32* %Old, align 4
  %call33 = call i32 @symbol_CreateStandardVariable()
  store i32 %call33, i32* %New, align 4
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  store %struct.LIST_HELP* %20, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.40, %for.end.30
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call35 = call i32 @list_Empty(%struct.LIST_HELP* %21)
  %tobool36 = icmp ne i32 %call35, 0
  %lnot37 = xor i1 %tobool36, true
  br i1 %lnot37, label %for.body.38, label %for.end.42

for.body.38:                                      ; preds = %for.cond.34
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call39 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call39 to %struct.term*
  %24 = load i32, i32* %Old, align 4
  %25 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %23, i32 %24, i32 %25)
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.38
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call41 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.34

for.end.42:                                       ; preds = %for.cond.34
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  store %struct.LIST_HELP* %27, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.49, %for.end.42
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call44 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool45 = icmp ne i32 %call44, 0
  %lnot46 = xor i1 %tobool45, true
  br i1 %lnot46, label %for.body.47, label %for.end.51

for.body.47:                                      ; preds = %for.cond.43
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call48 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = bitcast i8* %call48 to %struct.term*
  %31 = load i32, i32* %Old, align 4
  %32 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %30, i32 %31, i32 %32)
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.47
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call50 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call50, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.43

for.end.51:                                       ; preds = %for.cond.43
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  store %struct.LIST_HELP* %34, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.58, %for.end.51
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call53 = call i32 @list_Empty(%struct.LIST_HELP* %35)
  %tobool54 = icmp ne i32 %call53, 0
  %lnot55 = xor i1 %tobool54, true
  br i1 %lnot55, label %for.body.56, label %for.end.60

for.body.56:                                      ; preds = %for.cond.52
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call57 = call i8* @list_Car(%struct.LIST_HELP* %36)
  %37 = bitcast i8* %call57 to %struct.term*
  %38 = load i32, i32* %Old, align 4
  %39 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %37, i32 %38, i32 %39)
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.56
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call59 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %40)
  store %struct.LIST_HELP* %call59, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.52

for.end.60:                                       ; preds = %for.cond.52
  %41 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call61 = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %41)
  store i32 %call61, i32* %Old, align 4
  %42 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call62 = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %42)
  store %struct.LIST_HELP* %call62, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.69, %for.end.60
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call64 = call i32 @list_Empty(%struct.LIST_HELP* %43)
  %tobool65 = icmp ne i32 %call64, 0
  %lnot66 = xor i1 %tobool65, true
  br i1 %lnot66, label %for.body.67, label %for.end.71

for.body.67:                                      ; preds = %for.cond.63
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call68 = call i8* @list_Car(%struct.LIST_HELP* %44)
  %45 = bitcast i8* %call68 to %struct.term*
  %46 = load i32, i32* %Old, align 4
  %47 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %45, i32 %46, i32 %47)
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.67
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call70 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %48)
  store %struct.LIST_HELP* %call70, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.63

for.end.71:                                       ; preds = %for.cond.63
  %49 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call72 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %49)
  store %struct.LIST_HELP* %call72, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.79, %for.end.71
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call74 = call i32 @list_Empty(%struct.LIST_HELP* %50)
  %tobool75 = icmp ne i32 %call74, 0
  %lnot76 = xor i1 %tobool75, true
  br i1 %lnot76, label %for.body.77, label %for.end.81

for.body.77:                                      ; preds = %for.cond.73
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call78 = call i8* @list_Car(%struct.LIST_HELP* %51)
  %52 = bitcast i8* %call78 to %struct.term*
  %53 = load i32, i32* %Old, align 4
  %54 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %52, i32 %53, i32 %54)
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.77
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call80 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %55)
  store %struct.LIST_HELP* %call80, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.73

for.end.81:                                       ; preds = %for.cond.73
  %56 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call82 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %56)
  store %struct.LIST_HELP* %call82, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.89, %for.end.81
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call84 = call i32 @list_Empty(%struct.LIST_HELP* %57)
  %tobool85 = icmp ne i32 %call84, 0
  %lnot86 = xor i1 %tobool85, true
  br i1 %lnot86, label %for.body.87, label %for.end.91

for.body.87:                                      ; preds = %for.cond.83
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call88 = call i8* @list_Car(%struct.LIST_HELP* %58)
  %59 = bitcast i8* %call88 to %struct.term*
  %60 = load i32, i32* %Old, align 4
  %61 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %59, i32 %60, i32 %61)
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.87
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call90 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %62)
  store %struct.LIST_HELP* %call90, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.83

for.end.91:                                       ; preds = %for.cond.83
  %63 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %64 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call92 = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %64)
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %call93 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call92, %struct.LIST_HELP* %65)
  call void @sort_ConditionPutConstraint(%struct.CONDITION_HELP* %63, %struct.LIST_HELP* %call93)
  %66 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %67 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call94 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %67)
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  %call95 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call94, %struct.LIST_HELP* %68)
  call void @sort_ConditionPutAntecedent(%struct.CONDITION_HELP* %66, %struct.LIST_HELP* %call95)
  %69 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %70 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call96 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %70)
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %call97 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call96, %struct.LIST_HELP* %71)
  call void @sort_ConditionPutSuccedent(%struct.CONDITION_HELP* %69, %struct.LIST_HELP* %call97)
  %72 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %73 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call98 = call %struct.CLAUSE_HELP* @sort_LinkClause(%struct.SLINK_HELP* %73)
  %74 = bitcast %struct.CLAUSE_HELP* %call98 to i8*
  %75 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call99 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %75)
  %call100 = call %struct.LIST_HELP* @list_Cons(i8* %74, %struct.LIST_HELP* %call99)
  call void @sort_ConditionPutClauses(%struct.CONDITION_HELP* %72, %struct.LIST_HELP* %call100)
  %76 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %77 = load i32, i32* %New, align 4
  call void @sort_ConditionPutVar(%struct.CONDITION_HELP* %76, i32 %77)
  %78 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call101 = call %struct.CONDITION_HELP* @sort_ConditionNormalize(%struct.CONDITION_HELP* %78)
  %79 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  ret %struct.CONDITION_HELP* %79
}

declare void @term_StartMaxRenaming(i32) #2

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
define internal %struct.LIST_HELP* @sort_LinkConstraint(%struct.SLINK_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  %0 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %constraint = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %0, i32 0, i32 4
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %constraint, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_LinkAntecedent(%struct.SLINK_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  %0 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %antecedent = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %0, i32 0, i32 5
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %antecedent, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_LinkSuccedent(%struct.SLINK_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  %0 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %succedent = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %0, i32 0, i32 6
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %succedent, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sort_LinkVar(%struct.SLINK_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  %0 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %var = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %0, i32 0, i32 7
  %1 = load i32, i32* %var, align 4
  ret i32 %1
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
define internal %struct.CLAUSE_HELP* @sort_LinkClause(%struct.SLINK_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  %0 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %clause = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %0, i32 0, i32 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  ret %struct.CLAUSE_HELP* %1
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

; Function Attrs: nounwind uwtable
define %struct.CONDITION_HELP* @sort_ExtendConditionByCondition(%struct.CONDITION_HELP* %Cond, %struct.CONDITION_HELP* %Update) #0 {
entry:
  %Cond.addr = alloca %struct.CONDITION_HELP*, align 8
  %Update.addr = alloca %struct.CONDITION_HELP*, align 8
  %Lits = alloca %struct.LIST_HELP*, align 8
  %Antecedent = alloca %struct.LIST_HELP*, align 8
  %Succedent = alloca %struct.LIST_HELP*, align 8
  %Constraint = alloca %struct.LIST_HELP*, align 8
  %Old = alloca i32, align 4
  %New = alloca i32, align 4
  store %struct.CONDITION_HELP* %Cond, %struct.CONDITION_HELP** %Cond.addr, align 8
  store %struct.CONDITION_HELP* %Update, %struct.CONDITION_HELP** %Update.addr, align 8
  %0 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %0)
  call void @term_StartMaxRenaming(i32 %call)
  %1 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Update.addr, align 8
  %call1 = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %1)
  %call2 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Constraint, align 8
  %2 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Update.addr, align 8
  %call3 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %2)
  %call4 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Antecedent, align 8
  %3 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Update.addr, align 8
  %call5 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %3)
  %call6 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Succedent, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call8 to %struct.term*
  %call9 = call %struct.term* @term_Rename(%struct.term* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.18, %for.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool13 = icmp ne i32 %call12, 0
  %lnot14 = xor i1 %tobool13, true
  br i1 %lnot14, label %for.body.15, label %for.end.20

for.body.15:                                      ; preds = %for.cond.11
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call16 to %struct.term*
  %call17 = call %struct.term* @term_Rename(%struct.term* %12)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.15
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.11

for.end.20:                                       ; preds = %for.cond.11
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.28, %for.end.20
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot24 = xor i1 %tobool23, true
  br i1 %lnot24, label %for.body.25, label %for.end.30

for.body.25:                                      ; preds = %for.cond.21
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call26 to %struct.term*
  %call27 = call %struct.term* @term_Rename(%struct.term* %17)
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.25
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.21

for.end.30:                                       ; preds = %for.cond.21
  %19 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Update.addr, align 8
  %call31 = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %19)
  %call32 = call i32 @term_GetRenamedVarSymbol(i32 %call31)
  store i32 %call32, i32* %Old, align 4
  %call33 = call i32 @symbol_CreateStandardVariable()
  store i32 %call33, i32* %New, align 4
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  store %struct.LIST_HELP* %20, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.40, %for.end.30
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call35 = call i32 @list_Empty(%struct.LIST_HELP* %21)
  %tobool36 = icmp ne i32 %call35, 0
  %lnot37 = xor i1 %tobool36, true
  br i1 %lnot37, label %for.body.38, label %for.end.42

for.body.38:                                      ; preds = %for.cond.34
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call39 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call39 to %struct.term*
  %24 = load i32, i32* %Old, align 4
  %25 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %23, i32 %24, i32 %25)
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.38
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call41 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.34

for.end.42:                                       ; preds = %for.cond.34
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  store %struct.LIST_HELP* %27, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.49, %for.end.42
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call44 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool45 = icmp ne i32 %call44, 0
  %lnot46 = xor i1 %tobool45, true
  br i1 %lnot46, label %for.body.47, label %for.end.51

for.body.47:                                      ; preds = %for.cond.43
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call48 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = bitcast i8* %call48 to %struct.term*
  %31 = load i32, i32* %Old, align 4
  %32 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %30, i32 %31, i32 %32)
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.47
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call50 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call50, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.43

for.end.51:                                       ; preds = %for.cond.43
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  store %struct.LIST_HELP* %34, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.58, %for.end.51
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call53 = call i32 @list_Empty(%struct.LIST_HELP* %35)
  %tobool54 = icmp ne i32 %call53, 0
  %lnot55 = xor i1 %tobool54, true
  br i1 %lnot55, label %for.body.56, label %for.end.60

for.body.56:                                      ; preds = %for.cond.52
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call57 = call i8* @list_Car(%struct.LIST_HELP* %36)
  %37 = bitcast i8* %call57 to %struct.term*
  %38 = load i32, i32* %Old, align 4
  %39 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %37, i32 %38, i32 %39)
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.56
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call59 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %40)
  store %struct.LIST_HELP* %call59, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.52

for.end.60:                                       ; preds = %for.cond.52
  %41 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call61 = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %41)
  store i32 %call61, i32* %Old, align 4
  %42 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call62 = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %42)
  store %struct.LIST_HELP* %call62, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.69, %for.end.60
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call64 = call i32 @list_Empty(%struct.LIST_HELP* %43)
  %tobool65 = icmp ne i32 %call64, 0
  %lnot66 = xor i1 %tobool65, true
  br i1 %lnot66, label %for.body.67, label %for.end.71

for.body.67:                                      ; preds = %for.cond.63
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call68 = call i8* @list_Car(%struct.LIST_HELP* %44)
  %45 = bitcast i8* %call68 to %struct.term*
  %46 = load i32, i32* %Old, align 4
  %47 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %45, i32 %46, i32 %47)
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.67
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call70 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %48)
  store %struct.LIST_HELP* %call70, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.63

for.end.71:                                       ; preds = %for.cond.63
  %49 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call72 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %49)
  store %struct.LIST_HELP* %call72, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.79, %for.end.71
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call74 = call i32 @list_Empty(%struct.LIST_HELP* %50)
  %tobool75 = icmp ne i32 %call74, 0
  %lnot76 = xor i1 %tobool75, true
  br i1 %lnot76, label %for.body.77, label %for.end.81

for.body.77:                                      ; preds = %for.cond.73
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call78 = call i8* @list_Car(%struct.LIST_HELP* %51)
  %52 = bitcast i8* %call78 to %struct.term*
  %53 = load i32, i32* %Old, align 4
  %54 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %52, i32 %53, i32 %54)
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.77
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call80 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %55)
  store %struct.LIST_HELP* %call80, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.73

for.end.81:                                       ; preds = %for.cond.73
  %56 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call82 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %56)
  store %struct.LIST_HELP* %call82, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.89, %for.end.81
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call84 = call i32 @list_Empty(%struct.LIST_HELP* %57)
  %tobool85 = icmp ne i32 %call84, 0
  %lnot86 = xor i1 %tobool85, true
  br i1 %lnot86, label %for.body.87, label %for.end.91

for.body.87:                                      ; preds = %for.cond.83
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call88 = call i8* @list_Car(%struct.LIST_HELP* %58)
  %59 = bitcast i8* %call88 to %struct.term*
  %60 = load i32, i32* %Old, align 4
  %61 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %59, i32 %60, i32 %61)
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.87
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call90 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %62)
  store %struct.LIST_HELP* %call90, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.83

for.end.91:                                       ; preds = %for.cond.83
  %63 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %64 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call92 = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %64)
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %call93 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call92, %struct.LIST_HELP* %65)
  call void @sort_ConditionPutConstraint(%struct.CONDITION_HELP* %63, %struct.LIST_HELP* %call93)
  %66 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %67 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call94 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %67)
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  %call95 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call94, %struct.LIST_HELP* %68)
  call void @sort_ConditionPutAntecedent(%struct.CONDITION_HELP* %66, %struct.LIST_HELP* %call95)
  %69 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %70 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call96 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %70)
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %call97 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call96, %struct.LIST_HELP* %71)
  call void @sort_ConditionPutSuccedent(%struct.CONDITION_HELP* %69, %struct.LIST_HELP* %call97)
  %72 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %73 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Update.addr, align 8
  %call98 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %73)
  %call99 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call98)
  %74 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call100 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %74)
  %call101 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call99, %struct.LIST_HELP* %call100)
  call void @sort_ConditionPutClauses(%struct.CONDITION_HELP* %72, %struct.LIST_HELP* %call101)
  %75 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %76 = load i32, i32* %New, align 4
  call void @sort_ConditionPutVar(%struct.CONDITION_HELP* %75, i32 %76)
  %77 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  %call102 = call %struct.CONDITION_HELP* @sort_ConditionNormalize(%struct.CONDITION_HELP* %77)
  %78 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond.addr, align 8
  ret %struct.CONDITION_HELP* %78
}

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @sort_ExtendConditions(%struct.LIST_HELP* %Conditions, %struct.SLINK_HELP* %Link) #0 {
entry:
  %Conditions.addr = alloca %struct.LIST_HELP*, align 8
  %Link.addr = alloca %struct.SLINK_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Antecedent = alloca %struct.LIST_HELP*, align 8
  %Succedent = alloca %struct.LIST_HELP*, align 8
  %Constraint = alloca %struct.LIST_HELP*, align 8
  %Cond = alloca %struct.CONDITION_HELP*, align 8
  %New = alloca i32, align 4
  %Old = alloca i32, align 4
  %NewAntecedent = alloca %struct.LIST_HELP*, align 8
  %NewSuccedent = alloca %struct.LIST_HELP*, align 8
  %NewConstraint = alloca %struct.LIST_HELP*, align 8
  %Lits = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Conditions, %struct.LIST_HELP** %Conditions.addr, align 8
  store %struct.SLINK_HELP* %Link, %struct.SLINK_HELP** %Link.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conditions.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.121, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.123

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call2 to %struct.CONDITION_HELP*
  store %struct.CONDITION_HELP* %3, %struct.CONDITION_HELP** %Cond, align 8
  %4 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call3 = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %4)
  %call4 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Constraint, align 8
  %5 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call5 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %5)
  %call6 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Antecedent, align 8
  %6 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call7 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %6)
  %call8 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Succedent, align 8
  %7 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call9 = call i32 @sort_LinkNoResidues(%struct.SLINK_HELP* %7)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call11 = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %12 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call12 = call %struct.CLAUSE_HELP* @sort_LinkClause(%struct.SLINK_HELP* %12)
  %13 = bitcast %struct.CLAUSE_HELP* %call12 to i8*
  %14 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call13 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %14)
  %call14 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call13)
  %call15 = call %struct.LIST_HELP* @list_Cons(i8* %13, %struct.LIST_HELP* %call14)
  %call16 = call %struct.CONDITION_HELP* @sort_ConditionCreate(i32 %call11, %struct.LIST_HELP* %9, %struct.LIST_HELP* %10, %struct.LIST_HELP* %11, %struct.LIST_HELP* %call15)
  %15 = bitcast %struct.CONDITION_HELP* %call16 to i8*
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call17 = call %struct.LIST_HELP* @list_Cons(i8* %15, %struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %17 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call18 = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %17)
  call void @term_StartMaxRenaming(i32 %call18)
  %18 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call19 = call %struct.LIST_HELP* @sort_LinkConstraint(%struct.SLINK_HELP* %18)
  %call20 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call19)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %NewConstraint, align 8
  %19 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call21 = call %struct.LIST_HELP* @sort_LinkAntecedent(%struct.SLINK_HELP* %19)
  %call22 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call21)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %NewAntecedent, align 8
  %20 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call23 = call %struct.LIST_HELP* @sort_LinkSuccedent(%struct.SLINK_HELP* %20)
  %call24 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call23)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %NewSuccedent, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  store %struct.LIST_HELP* %21, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %if.else
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call26 = call i32 @list_Empty(%struct.LIST_HELP* %22)
  %tobool27 = icmp ne i32 %call26, 0
  %lnot28 = xor i1 %tobool27, true
  br i1 %lnot28, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.25
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call30 to %struct.term*
  %call31 = call %struct.term* @term_Rename(%struct.term* %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body.29
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewAntecedent, align 8
  store %struct.LIST_HELP* %26, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.40, %for.end
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call34 = call i32 @list_Empty(%struct.LIST_HELP* %27)
  %tobool35 = icmp ne i32 %call34, 0
  %lnot36 = xor i1 %tobool35, true
  br i1 %lnot36, label %for.body.37, label %for.end.42

for.body.37:                                      ; preds = %for.cond.33
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call38 = call i8* @list_Car(%struct.LIST_HELP* %28)
  %29 = bitcast i8* %call38 to %struct.term*
  %call39 = call %struct.term* @term_Rename(%struct.term* %29)
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.37
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call41 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %30)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.33

for.end.42:                                       ; preds = %for.cond.33
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewSuccedent, align 8
  store %struct.LIST_HELP* %31, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.50, %for.end.42
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call44 = call i32 @list_Empty(%struct.LIST_HELP* %32)
  %tobool45 = icmp ne i32 %call44, 0
  %lnot46 = xor i1 %tobool45, true
  br i1 %lnot46, label %for.body.47, label %for.end.52

for.body.47:                                      ; preds = %for.cond.43
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call48 = call i8* @list_Car(%struct.LIST_HELP* %33)
  %34 = bitcast i8* %call48 to %struct.term*
  %call49 = call %struct.term* @term_Rename(%struct.term* %34)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.47
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call51 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %35)
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.43

for.end.52:                                       ; preds = %for.cond.43
  %36 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call53 = call i32 @sort_LinkVar(%struct.SLINK_HELP* %36)
  %call54 = call i32 @term_GetRenamedVarSymbol(i32 %call53)
  store i32 %call54, i32* %Old, align 4
  %call55 = call i32 @symbol_CreateStandardVariable()
  store i32 %call55, i32* %New, align 4
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  store %struct.LIST_HELP* %37, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.62, %for.end.52
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call57 = call i32 @list_Empty(%struct.LIST_HELP* %38)
  %tobool58 = icmp ne i32 %call57, 0
  %lnot59 = xor i1 %tobool58, true
  br i1 %lnot59, label %for.body.60, label %for.end.64

for.body.60:                                      ; preds = %for.cond.56
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call61 = call i8* @list_Car(%struct.LIST_HELP* %39)
  %40 = bitcast i8* %call61 to %struct.term*
  %41 = load i32, i32* %Old, align 4
  %42 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %40, i32 %41, i32 %42)
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.60
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call63 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %43)
  store %struct.LIST_HELP* %call63, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.56

for.end.64:                                       ; preds = %for.cond.56
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewAntecedent, align 8
  store %struct.LIST_HELP* %44, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.71, %for.end.64
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call66 = call i32 @list_Empty(%struct.LIST_HELP* %45)
  %tobool67 = icmp ne i32 %call66, 0
  %lnot68 = xor i1 %tobool67, true
  br i1 %lnot68, label %for.body.69, label %for.end.73

for.body.69:                                      ; preds = %for.cond.65
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call70 = call i8* @list_Car(%struct.LIST_HELP* %46)
  %47 = bitcast i8* %call70 to %struct.term*
  %48 = load i32, i32* %Old, align 4
  %49 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %47, i32 %48, i32 %49)
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.69
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call72 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %50)
  store %struct.LIST_HELP* %call72, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.65

for.end.73:                                       ; preds = %for.cond.65
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewSuccedent, align 8
  store %struct.LIST_HELP* %51, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.80, %for.end.73
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call75 = call i32 @list_Empty(%struct.LIST_HELP* %52)
  %tobool76 = icmp ne i32 %call75, 0
  %lnot77 = xor i1 %tobool76, true
  br i1 %lnot77, label %for.body.78, label %for.end.82

for.body.78:                                      ; preds = %for.cond.74
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call79 = call i8* @list_Car(%struct.LIST_HELP* %53)
  %54 = bitcast i8* %call79 to %struct.term*
  %55 = load i32, i32* %Old, align 4
  %56 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %54, i32 %55, i32 %56)
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.78
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call81 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %57)
  store %struct.LIST_HELP* %call81, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.74

for.end.82:                                       ; preds = %for.cond.74
  %58 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call83 = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %58)
  store i32 %call83, i32* %Old, align 4
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  store %struct.LIST_HELP* %59, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.90, %for.end.82
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call85 = call i32 @list_Empty(%struct.LIST_HELP* %60)
  %tobool86 = icmp ne i32 %call85, 0
  %lnot87 = xor i1 %tobool86, true
  br i1 %lnot87, label %for.body.88, label %for.end.92

for.body.88:                                      ; preds = %for.cond.84
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call89 = call i8* @list_Car(%struct.LIST_HELP* %61)
  %62 = bitcast i8* %call89 to %struct.term*
  %63 = load i32, i32* %Old, align 4
  %64 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %62, i32 %63, i32 %64)
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.88
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call91 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %65)
  store %struct.LIST_HELP* %call91, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.84

for.end.92:                                       ; preds = %for.cond.84
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  store %struct.LIST_HELP* %66, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.99, %for.end.92
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call94 = call i32 @list_Empty(%struct.LIST_HELP* %67)
  %tobool95 = icmp ne i32 %call94, 0
  %lnot96 = xor i1 %tobool95, true
  br i1 %lnot96, label %for.body.97, label %for.end.101

for.body.97:                                      ; preds = %for.cond.93
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call98 = call i8* @list_Car(%struct.LIST_HELP* %68)
  %69 = bitcast i8* %call98 to %struct.term*
  %70 = load i32, i32* %Old, align 4
  %71 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %69, i32 %70, i32 %71)
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.97
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call100 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %72)
  store %struct.LIST_HELP* %call100, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.93

for.end.101:                                      ; preds = %for.cond.93
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  store %struct.LIST_HELP* %73, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.108, %for.end.101
  %74 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call103 = call i32 @list_Empty(%struct.LIST_HELP* %74)
  %tobool104 = icmp ne i32 %call103, 0
  %lnot105 = xor i1 %tobool104, true
  br i1 %lnot105, label %for.body.106, label %for.end.110

for.body.106:                                     ; preds = %for.cond.102
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call107 = call i8* @list_Car(%struct.LIST_HELP* %75)
  %76 = bitcast i8* %call107 to %struct.term*
  %77 = load i32, i32* %Old, align 4
  %78 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %76, i32 %77, i32 %78)
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.106
  %79 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call109 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %79)
  store %struct.LIST_HELP* %call109, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.102

for.end.110:                                      ; preds = %for.cond.102
  %80 = load i32, i32* %New, align 4
  %81 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  %call111 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %81, %struct.LIST_HELP* %82)
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewAntecedent, align 8
  %call112 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %83, %struct.LIST_HELP* %84)
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewSuccedent, align 8
  %call113 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %85, %struct.LIST_HELP* %86)
  %87 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link.addr, align 8
  %call114 = call %struct.CLAUSE_HELP* @sort_LinkClause(%struct.SLINK_HELP* %87)
  %88 = bitcast %struct.CLAUSE_HELP* %call114 to i8*
  %89 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call115 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %89)
  %call116 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call115)
  %call117 = call %struct.LIST_HELP* @list_Cons(i8* %88, %struct.LIST_HELP* %call116)
  %call118 = call %struct.CONDITION_HELP* @sort_ConditionCreate(i32 %80, %struct.LIST_HELP* %call111, %struct.LIST_HELP* %call112, %struct.LIST_HELP* %call113, %struct.LIST_HELP* %call117)
  %call119 = call %struct.CONDITION_HELP* @sort_ConditionNormalize(%struct.CONDITION_HELP* %call118)
  %90 = bitcast %struct.CONDITION_HELP* %call119 to i8*
  %91 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call120 = call %struct.LIST_HELP* @list_Cons(i8* %90, %struct.LIST_HELP* %91)
  store %struct.LIST_HELP* %call120, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %for.end.110, %if.then
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call122 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %92)
  store %struct.LIST_HELP* %call122, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end.123:                                      ; preds = %for.cond
  %93 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %93
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sort_LinkNoResidues(%struct.SLINK_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  %0 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %call = call %struct.LIST_HELP* @sort_LinkConstraint(%struct.SLINK_HELP* %0)
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %call2 = call %struct.LIST_HELP* @sort_LinkAntecedent(%struct.SLINK_HELP* %1)
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %call5 = call %struct.LIST_HELP* @sort_LinkSuccedent(%struct.SLINK_HELP* %2)
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool7, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define %struct.CONDITION_HELP* @sort_ConditionsUnion(%struct.LIST_HELP* %Conditions) #0 {
entry:
  %retval = alloca %struct.CONDITION_HELP*, align 8
  %Conditions.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Antecedent = alloca %struct.LIST_HELP*, align 8
  %Succedent = alloca %struct.LIST_HELP*, align 8
  %Constraint = alloca %struct.LIST_HELP*, align 8
  %Cond = alloca %struct.CONDITION_HELP*, align 8
  %Act = alloca i32, align 4
  %New = alloca i32, align 4
  %Old = alloca i32, align 4
  %NewAntecedent = alloca %struct.LIST_HELP*, align 8
  %NewSuccedent = alloca %struct.LIST_HELP*, align 8
  %NewConstraint = alloca %struct.LIST_HELP*, align 8
  %NewClauses = alloca %struct.LIST_HELP*, align 8
  %Lits = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Conditions, %struct.LIST_HELP** %Conditions.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conditions.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 @symbol_FirstVariable()
  %call2 = call %struct.LIST_HELP* @list_Nil()
  %call3 = call %struct.LIST_HELP* @list_Nil()
  %call4 = call %struct.LIST_HELP* @list_Nil()
  %call5 = call %struct.LIST_HELP* @list_Nil()
  %call6 = call %struct.CONDITION_HELP* @sort_ConditionCreate(i32 %call1, %struct.LIST_HELP* %call2, %struct.LIST_HELP* %call3, %struct.LIST_HELP* %call4, %struct.LIST_HELP* %call5)
  store %struct.CONDITION_HELP* %call6, %struct.CONDITION_HELP** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conditions.addr, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call7 to %struct.CONDITION_HELP*
  store %struct.CONDITION_HELP* %2, %struct.CONDITION_HELP** %Cond, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conditions.addr, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Conditions.addr, align 8
  %4 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call9 = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %4)
  store i32 %call9, i32* %Act, align 4
  %5 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call10 = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %5)
  %call11 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call10)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %NewConstraint, align 8
  %6 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call12 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %6)
  %call13 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call12)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %NewAntecedent, align 8
  %7 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call14 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %7)
  %call15 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call14)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %NewSuccedent, align 8
  %8 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call16 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %8)
  %call17 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call16)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %NewClauses, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conditions.addr, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.122, %if.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot = xor i1 %tobool19, true
  br i1 %lnot, label %for.body, label %for.end.124

for.body:                                         ; preds = %for.cond
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call20 to %struct.CONDITION_HELP*
  store %struct.CONDITION_HELP* %12, %struct.CONDITION_HELP** %Cond, align 8
  %13 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call21 = call i32 @sort_ConditionNoResidues(%struct.CONDITION_HELP* %13)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.118, label %if.then.23

if.then.23:                                       ; preds = %for.body
  %14 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call24 = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %14)
  %call25 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call24)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Constraint, align 8
  %15 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call26 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %15)
  %call27 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call26)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %Antecedent, align 8
  %16 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call28 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %16)
  %call29 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call28)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Succedent, align 8
  %17 = load i32, i32* %Act, align 4
  call void @term_StartMaxRenaming(i32 %17)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  store %struct.LIST_HELP* %18, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %if.then.23
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call31 = call i32 @list_Empty(%struct.LIST_HELP* %19)
  %tobool32 = icmp ne i32 %call31, 0
  %lnot33 = xor i1 %tobool32, true
  br i1 %lnot33, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.30
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call35 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call35 to %struct.term*
  %call36 = call %struct.term* @term_Rename(%struct.term* %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body.34
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call37 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  store %struct.LIST_HELP* %23, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.45, %for.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call39 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool40 = icmp ne i32 %call39, 0
  %lnot41 = xor i1 %tobool40, true
  br i1 %lnot41, label %for.body.42, label %for.end.47

for.body.42:                                      ; preds = %for.cond.38
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call43 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call43 to %struct.term*
  %call44 = call %struct.term* @term_Rename(%struct.term* %26)
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.42
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call46 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.38

for.end.47:                                       ; preds = %for.cond.38
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  store %struct.LIST_HELP* %28, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.55, %for.end.47
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call49 = call i32 @list_Empty(%struct.LIST_HELP* %29)
  %tobool50 = icmp ne i32 %call49, 0
  %lnot51 = xor i1 %tobool50, true
  br i1 %lnot51, label %for.body.52, label %for.end.57

for.body.52:                                      ; preds = %for.cond.48
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call53 = call i8* @list_Car(%struct.LIST_HELP* %30)
  %31 = bitcast i8* %call53 to %struct.term*
  %call54 = call %struct.term* @term_Rename(%struct.term* %31)
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.52
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call56 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %32)
  store %struct.LIST_HELP* %call56, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.48

for.end.57:                                       ; preds = %for.cond.48
  %33 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call58 = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %33)
  %call59 = call i32 @term_GetRenamedVarSymbol(i32 %call58)
  store i32 %call59, i32* %Old, align 4
  %call60 = call i32 @symbol_CreateStandardVariable()
  store i32 %call60, i32* %New, align 4
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  store %struct.LIST_HELP* %34, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.67, %for.end.57
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call62 = call i32 @list_Empty(%struct.LIST_HELP* %35)
  %tobool63 = icmp ne i32 %call62, 0
  %lnot64 = xor i1 %tobool63, true
  br i1 %lnot64, label %for.body.65, label %for.end.69

for.body.65:                                      ; preds = %for.cond.61
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call66 = call i8* @list_Car(%struct.LIST_HELP* %36)
  %37 = bitcast i8* %call66 to %struct.term*
  %38 = load i32, i32* %Old, align 4
  %39 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %37, i32 %38, i32 %39)
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.65
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call68 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %40)
  store %struct.LIST_HELP* %call68, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.61

for.end.69:                                       ; preds = %for.cond.61
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  store %struct.LIST_HELP* %41, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.76, %for.end.69
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call71 = call i32 @list_Empty(%struct.LIST_HELP* %42)
  %tobool72 = icmp ne i32 %call71, 0
  %lnot73 = xor i1 %tobool72, true
  br i1 %lnot73, label %for.body.74, label %for.end.78

for.body.74:                                      ; preds = %for.cond.70
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call75 = call i8* @list_Car(%struct.LIST_HELP* %43)
  %44 = bitcast i8* %call75 to %struct.term*
  %45 = load i32, i32* %Old, align 4
  %46 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %44, i32 %45, i32 %46)
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.74
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call77 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call77, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.70

for.end.78:                                       ; preds = %for.cond.70
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  store %struct.LIST_HELP* %48, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.85, %for.end.78
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call80 = call i32 @list_Empty(%struct.LIST_HELP* %49)
  %tobool81 = icmp ne i32 %call80, 0
  %lnot82 = xor i1 %tobool81, true
  br i1 %lnot82, label %for.body.83, label %for.end.87

for.body.83:                                      ; preds = %for.cond.79
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call84 = call i8* @list_Car(%struct.LIST_HELP* %50)
  %51 = bitcast i8* %call84 to %struct.term*
  %52 = load i32, i32* %Old, align 4
  %53 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %51, i32 %52, i32 %53)
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.83
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call86 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %54)
  store %struct.LIST_HELP* %call86, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.79

for.end.87:                                       ; preds = %for.cond.79
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  store %struct.LIST_HELP* %55, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.94, %for.end.87
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call89 = call i32 @list_Empty(%struct.LIST_HELP* %56)
  %tobool90 = icmp ne i32 %call89, 0
  %lnot91 = xor i1 %tobool90, true
  br i1 %lnot91, label %for.body.92, label %for.end.96

for.body.92:                                      ; preds = %for.cond.88
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call93 = call i8* @list_Car(%struct.LIST_HELP* %57)
  %58 = bitcast i8* %call93 to %struct.term*
  %59 = load i32, i32* %Act, align 4
  %60 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %58, i32 %59, i32 %60)
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.92
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call95 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %61)
  store %struct.LIST_HELP* %call95, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.88

for.end.96:                                       ; preds = %for.cond.88
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewAntecedent, align 8
  store %struct.LIST_HELP* %62, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.103, %for.end.96
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call98 = call i32 @list_Empty(%struct.LIST_HELP* %63)
  %tobool99 = icmp ne i32 %call98, 0
  %lnot100 = xor i1 %tobool99, true
  br i1 %lnot100, label %for.body.101, label %for.end.105

for.body.101:                                     ; preds = %for.cond.97
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call102 = call i8* @list_Car(%struct.LIST_HELP* %64)
  %65 = bitcast i8* %call102 to %struct.term*
  %66 = load i32, i32* %Act, align 4
  %67 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %65, i32 %66, i32 %67)
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.101
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call104 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %68)
  store %struct.LIST_HELP* %call104, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.97

for.end.105:                                      ; preds = %for.cond.97
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewSuccedent, align 8
  store %struct.LIST_HELP* %69, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.112, %for.end.105
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call107 = call i32 @list_Empty(%struct.LIST_HELP* %70)
  %tobool108 = icmp ne i32 %call107, 0
  %lnot109 = xor i1 %tobool108, true
  br i1 %lnot109, label %for.body.110, label %for.end.114

for.body.110:                                     ; preds = %for.cond.106
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call111 = call i8* @list_Car(%struct.LIST_HELP* %71)
  %72 = bitcast i8* %call111 to %struct.term*
  %73 = load i32, i32* %Act, align 4
  %74 = load i32, i32* %New, align 4
  call void @term_ExchangeVariable(%struct.term* %72, i32 %73, i32 %74)
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.110
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call113 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %75)
  store %struct.LIST_HELP* %call113, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.106

for.end.114:                                      ; preds = %for.cond.106
  %76 = load i32, i32* %New, align 4
  store i32 %76, i32* %Act, align 4
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  %call115 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %77, %struct.LIST_HELP* %78)
  store %struct.LIST_HELP* %call115, %struct.LIST_HELP** %NewConstraint, align 8
  %79 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewAntecedent, align 8
  %call116 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %79, %struct.LIST_HELP* %80)
  store %struct.LIST_HELP* %call116, %struct.LIST_HELP** %NewAntecedent, align 8
  %81 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewSuccedent, align 8
  %call117 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %81, %struct.LIST_HELP* %82)
  store %struct.LIST_HELP* %call117, %struct.LIST_HELP** %NewSuccedent, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %for.end.114, %for.body
  %83 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call119 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %83)
  %call120 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call119)
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  %call121 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call120, %struct.LIST_HELP* %84)
  store %struct.LIST_HELP* %call121, %struct.LIST_HELP** %NewClauses, align 8
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.118
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call123 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %85)
  store %struct.LIST_HELP* %call123, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end.124:                                      ; preds = %for.cond
  %86 = load i32, i32* %Act, align 4
  %87 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewAntecedent, align 8
  %89 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewSuccedent, align 8
  %90 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  %call125 = call %struct.CONDITION_HELP* @sort_ConditionCreate(i32 %86, %struct.LIST_HELP* %87, %struct.LIST_HELP* %88, %struct.LIST_HELP* %89, %struct.LIST_HELP* %90)
  %call126 = call %struct.CONDITION_HELP* @sort_ConditionNormalize(%struct.CONDITION_HELP* %call125)
  store %struct.CONDITION_HELP* %call126, %struct.CONDITION_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.124, %if.then
  %91 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %retval
  ret %struct.CONDITION_HELP* %91
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sort_ConditionNoResidues(%struct.CONDITION_HELP* %C) #1 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  %0 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %call = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %0)
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %call2 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %1)
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %call5 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %2)
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool7, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  ret i32 %land.ext
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
define internal void @sort_ConditionFree(%struct.CONDITION_HELP* %C) #1 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  %0 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %1 = bitcast %struct.CONDITION_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 40)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.CONDITION_HELP* @sort_ConditionCopy(%struct.CONDITION_HELP* %C) #0 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  %0 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %call = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %0)
  %1 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %call1 = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %1)
  %call2 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call1)
  %2 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %call3 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %2)
  %call4 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call3)
  %3 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %call5 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %3)
  %call6 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call5)
  %4 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %call7 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %4)
  %call8 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call7)
  %call9 = call %struct.CONDITION_HELP* @sort_ConditionCreate(i32 %call, %struct.LIST_HELP* %call2, %struct.LIST_HELP* %call4, %struct.LIST_HELP* %call6, %struct.LIST_HELP* %call8)
  ret %struct.CONDITION_HELP* %call9
}

; Function Attrs: nounwind uwtable
define i32 @sort_IsBaseSortSymbol(i32 %Symbol) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %0 = load i32, i32* %Symbol.addr, align 4
  %call = call i32 @symbol_IsPredicate(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %Symbol.addr, align 4
  %call1 = call i32 @symbol_Arity(i32 %1)
  %cmp = icmp eq i32 %call1, 1
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %Theory, i32 %Symbol) #0 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Symbol.addr = alloca i32, align 4
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %1 = load i32, i32* %Symbol.addr, align 4
  %call = call %struct.NODE_HELP* @sort_TheoryNode(%struct.SORTTHEORY_HELP* %0, i32 %1)
  %2 = bitcast %struct.NODE_HELP* %call to i8*
  %call1 = call %struct.LIST_HELP* @list_List(i8* %2)
  ret %struct.LIST_HELP* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.NODE_HELP* @sort_TheoryNode(%struct.SORTTHEORY_HELP* %Theory, i32 %S) #1 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %S.addr = alloca i32, align 4
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %idxprom = sext i32 %call to i64
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %basesorttable = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4000 x %struct.NODE_HELP*], [4000 x %struct.NODE_HELP*]* %basesorttable, i32 0, i64 %idxprom
  %2 = load %struct.NODE_HELP*, %struct.NODE_HELP** %arrayidx, align 8
  ret %struct.NODE_HELP* %2
}

; Function Attrs: nounwind uwtable
define %struct.CONDITION_HELP* @sort_TheoryIsSubsortOfNoResidues(%struct.SORTTHEORY_HELP* %Theory, %struct.LIST_HELP* %Sort1, %struct.LIST_HELP* %Sort2) #0 {
entry:
  %retval = alloca %struct.CONDITION_HELP*, align 8
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Sort1.addr = alloca %struct.LIST_HELP*, align 8
  %Sort2.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Clauses = alloca %struct.LIST_HELP*, align 8
  %Link = alloca %struct.SLINK_HELP*, align 8
  %Node = alloca %struct.NODE_HELP*, align 8
  %Top = alloca %struct.LIST_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.LIST_HELP* %Sort1, %struct.LIST_HELP** %Sort1.addr, align 8
  store %struct.LIST_HELP* %Sort2, %struct.LIST_HELP** %Sort2.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  call void @sort_TheoryIncrementMark(%struct.SORTTHEORY_HELP* %0)
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %call = call %struct.LIST_HELP* @sort_TheorySuborigcls(%struct.SORTTHEORY_HELP* %1)
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
  %4 = bitcast i8* %call2 to %struct.LIST_HELP*
  %call3 = call i8* @list_Third(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.SLINK_HELP*
  store %struct.SLINK_HELP* %5, %struct.SLINK_HELP** %Link, align 8
  %6 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  call void @sort_LinkResetFire(%struct.SLINK_HELP* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort1.addr, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.19, %for.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot8 = xor i1 %tobool7, true
  br i1 %lnot8, label %for.body.9, label %for.end.21

for.body.9:                                       ; preds = %for.cond.5
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call10 to %struct.NODE_HELP*
  store %struct.NODE_HELP* %11, %struct.NODE_HELP** %Node, align 8
  %12 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call11 = call %struct.LIST_HELP* @sort_NodeConditions(%struct.NODE_HELP* %12)
  call void @sort_DeleteConditionList(%struct.LIST_HELP* %call11)
  %13 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call12 = call i32 @symbol_FirstVariable()
  %call13 = call %struct.LIST_HELP* @list_Nil()
  %call14 = call %struct.LIST_HELP* @list_Nil()
  %call15 = call %struct.LIST_HELP* @list_Nil()
  %call16 = call %struct.LIST_HELP* @list_Nil()
  %call17 = call %struct.CONDITION_HELP* @sort_ConditionCreate(i32 %call12, %struct.LIST_HELP* %call13, %struct.LIST_HELP* %call14, %struct.LIST_HELP* %call15, %struct.LIST_HELP* %call16)
  %14 = bitcast %struct.CONDITION_HELP* %call17 to i8*
  %call18 = call %struct.LIST_HELP* @list_List(i8* %14)
  call void @sort_PutNodeConditions(%struct.NODE_HELP* %13, %struct.LIST_HELP* %call18)
  %15 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %16 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  call void @sort_PutNodeTrue(%struct.SORTTHEORY_HELP* %15, %struct.NODE_HELP* %16)
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.9
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.5

for.end.21:                                       ; preds = %for.cond.5
  %call22 = call %struct.LIST_HELP* @sort_TopSort()
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Top, align 8
  %18 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %call23 = call %struct.LIST_HELP* @sort_TheorySuborigcls(%struct.SORTTHEORY_HELP* %18)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.43, %for.end.21
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call25 = call i32 @list_Empty(%struct.LIST_HELP* %19)
  %tobool26 = icmp ne i32 %call25, 0
  %lnot27 = xor i1 %tobool26, true
  br i1 %lnot27, label %for.body.28, label %for.end.45

for.body.28:                                      ; preds = %for.cond.24
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call29 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call29 to %struct.LIST_HELP*
  %call30 = call i8* @list_Third(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call30 to %struct.SLINK_HELP*
  store %struct.SLINK_HELP* %22, %struct.SLINK_HELP** %Link, align 8
  %23 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call31 = call %struct.LIST_HELP* @sort_LinkInput(%struct.SLINK_HELP* %23)
  %call32 = call i32 @list_Empty(%struct.LIST_HELP* %call31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.28
  %24 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call34 = call i32 @sort_LinkNoResidues(%struct.SLINK_HELP* %24)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %25 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call36 = call %struct.NODE_HELP* @sort_LinkOutput(%struct.SLINK_HELP* %25)
  store %struct.NODE_HELP* %call36, %struct.NODE_HELP** %Node, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Top, align 8
  %27 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call37 = call %struct.LIST_HELP* @sort_AddBaseNode(%struct.LIST_HELP* %26, %struct.NODE_HELP* %27)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %Top, align 8
  %28 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call38 = call %struct.LIST_HELP* @sort_NodeConditions(%struct.NODE_HELP* %28)
  call void @sort_DeleteConditionList(%struct.LIST_HELP* %call38)
  %29 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %30 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call39 = call %struct.CLAUSE_HELP* @sort_LinkClause(%struct.SLINK_HELP* %30)
  %31 = bitcast %struct.CLAUSE_HELP* %call39 to i8*
  %call40 = call %struct.LIST_HELP* @list_List(i8* %31)
  %call41 = call %struct.CONDITION_HELP* @sort_ConditionCreateNoResidues(%struct.LIST_HELP* %call40)
  %32 = bitcast %struct.CONDITION_HELP* %call41 to i8*
  %call42 = call %struct.LIST_HELP* @list_List(i8* %32)
  call void @sort_PutNodeConditions(%struct.NODE_HELP* %29, %struct.LIST_HELP* %call42)
  %33 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %34 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  call void @sort_PutNodeTrue(%struct.SORTTHEORY_HELP* %33, %struct.NODE_HELP* %34)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.28
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call44 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %35)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.24

for.end.45:                                       ; preds = %for.cond.24
  %36 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Top, align 8
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort1.addr, align 8
  %call46 = call %struct.LIST_HELP* @sort_Copy(%struct.LIST_HELP* %38)
  %call47 = call %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %37, %struct.LIST_HELP* %call46)
  call void @sort_EvalSubsortNoResidues(%struct.SORTTHEORY_HELP* %36, %struct.LIST_HELP* %call47)
  %call48 = call %struct.LIST_HELP* @sort_TopSort()
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %Top, align 8
  %call49 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %Clauses, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort2.addr, align 8
  store %struct.LIST_HELP* %39, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.70, %for.end.45
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call51 = call i32 @list_Empty(%struct.LIST_HELP* %40)
  %tobool52 = icmp ne i32 %call51, 0
  %lnot53 = xor i1 %tobool52, true
  br i1 %lnot53, label %for.body.54, label %for.end.72

for.body.54:                                      ; preds = %for.cond.50
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call55 = call i8* @list_Car(%struct.LIST_HELP* %41)
  %42 = bitcast i8* %call55 to %struct.NODE_HELP*
  store %struct.NODE_HELP* %42, %struct.NODE_HELP** %Node, align 8
  %43 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %44 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call56 = call i32 @sort_NodeValue(%struct.SORTTHEORY_HELP* %43, %struct.NODE_HELP* %44)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.else, label %if.then.58

if.then.58:                                       ; preds = %for.body.54
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  call void @list_Delete(%struct.LIST_HELP* %45)
  store %struct.CONDITION_HELP* null, %struct.CONDITION_HELP** %retval
  br label %return

if.else:                                          ; preds = %for.body.54
  %46 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call59 = call %struct.LIST_HELP* @sort_NodeConditions(%struct.NODE_HELP* %46)
  %call60 = call i32 @list_Empty(%struct.LIST_HELP* %call59)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.68, label %if.then.62

if.then.62:                                       ; preds = %if.else
  %47 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call63 = call %struct.LIST_HELP* @sort_NodeConditions(%struct.NODE_HELP* %47)
  %call64 = call i8* @list_Car(%struct.LIST_HELP* %call63)
  %48 = bitcast i8* %call64 to %struct.CONDITION_HELP*
  %call65 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %48)
  %call66 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call65)
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call67 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call66, %struct.LIST_HELP* %49)
  store %struct.LIST_HELP* %call67, %struct.LIST_HELP** %Clauses, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.62, %if.else
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call71 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %50)
  store %struct.LIST_HELP* %call71, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.50

for.end.72:                                       ; preds = %for.cond.50
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call73 = call %struct.CONDITION_HELP* @sort_ConditionCreateNoResidues(%struct.LIST_HELP* %51)
  store %struct.CONDITION_HELP* %call73, %struct.CONDITION_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.72, %if.then.58
  %52 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %retval
  ret %struct.CONDITION_HELP* %52
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_LinkResetFire(%struct.SLINK_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  %0 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %card = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %0, i32 0, i32 2
  %1 = load i32, i32* %card, align 4
  %2 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %fire = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %2, i32 0, i32 3
  store i32 %1, i32* %fire, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_DeleteConditionList(%struct.LIST_HELP* %List) #1 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %0, void (i8*)* bitcast (void (%struct.CONDITION_HELP*)* @sort_ConditionDelete to void (i8*)*))
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_NodeConditions(%struct.NODE_HELP* %N) #1 {
entry:
  %N.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  %0 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %conditions = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %0, i32 0, i32 4
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %conditions, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutNodeConditions(%struct.NODE_HELP* %N, %struct.LIST_HELP* %C) #1 {
entry:
  %N.addr = alloca %struct.NODE_HELP*, align 8
  %C.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  store %struct.LIST_HELP* %C, %struct.LIST_HELP** %C.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %C.addr, align 8
  %1 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %conditions = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %1, i32 0, i32 4
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %conditions, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutNodeTrue(%struct.SORTTHEORY_HELP* %S, %struct.NODE_HELP* %N) #1 {
entry:
  %S.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %N.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %S, %struct.SORTTHEORY_HELP** %S.addr, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %S.addr, align 8
  %mark = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %0, i32 0, i32 4
  %1 = load i32, i32* %mark, align 4
  %2 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %mark1 = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %2, i32 0, i32 1
  store i32 %1, i32* %mark1, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_TopSort() #1 {
entry:
  %call = call %struct.LIST_HELP* @list_Nil()
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_AddBaseNode(%struct.LIST_HELP* %S, %struct.NODE_HELP* %N) #1 {
entry:
  %S.addr = alloca %struct.LIST_HELP*, align 8
  %N.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.LIST_HELP* %S, %struct.LIST_HELP** %S.addr, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  %0 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %1 = bitcast %struct.NODE_HELP* %0 to i8*
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cons(i8* %1, %struct.LIST_HELP* %2)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: nounwind uwtable
define internal void @sort_EvalSubsortNoResidues(%struct.SORTTHEORY_HELP* %Theory, %struct.LIST_HELP* %Nodes) #0 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Nodes.addr = alloca %struct.LIST_HELP*, align 8
  %Node = alloca %struct.NODE_HELP*, align 8
  %Head = alloca %struct.NODE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Help = alloca %struct.LIST_HELP*, align 8
  %Clauses = alloca %struct.LIST_HELP*, align 8
  %Link = alloca %struct.SLINK_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.LIST_HELP* %Nodes, %struct.LIST_HELP** %Nodes.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.43, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.NODE_HELP*
  store %struct.NODE_HELP* %2, %struct.NODE_HELP** %Node, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %Scan, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Nodes.addr, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Free(%struct.LIST_HELP* %5)
  %6 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call3 = call %struct.LIST_HELP* @sort_NodeLinks(%struct.NODE_HELP* %6)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %while.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot6 = xor i1 %tobool5, true
  br i1 %lnot6, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call7 to %struct.SLINK_HELP*
  store %struct.SLINK_HELP* %9, %struct.SLINK_HELP** %Link, align 8
  %10 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call8 = call i32 @sort_LinkNoResidues(%struct.SLINK_HELP* %10)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %for.body
  %11 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call10 = call i32 @sort_LinkDecrementFire(%struct.SLINK_HELP* %11)
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %if.then, label %if.end.40

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call11 = call %struct.NODE_HELP* @sort_LinkOutput(%struct.SLINK_HELP* %12)
  store %struct.NODE_HELP* %call11, %struct.NODE_HELP** %Head, align 8
  %13 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %14 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Head, align 8
  %call12 = call i32 @sort_NodeValue(%struct.SORTTHEORY_HELP* %13, %struct.NODE_HELP* %14)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.39, label %if.then.14

if.then.14:                                       ; preds = %if.then
  %15 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call15 = call %struct.CLAUSE_HELP* @sort_LinkClause(%struct.SLINK_HELP* %15)
  %16 = bitcast %struct.CLAUSE_HELP* %call15 to i8*
  %call16 = call %struct.LIST_HELP* @list_List(i8* %16)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Clauses, align 8
  %17 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call17 = call %struct.LIST_HELP* @sort_LinkInput(%struct.SLINK_HELP* %17)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Help, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %if.then.14
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool20 = icmp ne i32 %call19, 0
  %lnot21 = xor i1 %tobool20, true
  br i1 %lnot21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.18
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call23 to %struct.NODE_HELP*
  %call24 = call %struct.LIST_HELP* @sort_NodeConditions(%struct.NODE_HELP* %20)
  %call25 = call i32 @list_Empty(%struct.LIST_HELP* %call24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end, label %if.then.27

if.then.27:                                       ; preds = %for.body.22
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call28 to %struct.NODE_HELP*
  %call29 = call %struct.LIST_HELP* @sort_NodeConditions(%struct.NODE_HELP* %22)
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %call29)
  %23 = bitcast i8* %call30 to %struct.CONDITION_HELP*
  %call31 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %23)
  %call32 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call31)
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call33 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call32, %struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %Clauses, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.27, %for.body.22
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %Help, align 8
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %26 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Head, align 8
  %call35 = call %struct.LIST_HELP* @sort_NodeConditions(%struct.NODE_HELP* %26)
  call void @sort_DeleteConditionList(%struct.LIST_HELP* %call35)
  %27 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Head, align 8
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call36 = call %struct.CONDITION_HELP* @sort_ConditionCreateNoResidues(%struct.LIST_HELP* %28)
  %29 = bitcast %struct.CONDITION_HELP* %call36 to i8*
  %call37 = call %struct.LIST_HELP* @list_List(i8* %29)
  call void @sort_PutNodeConditions(%struct.NODE_HELP* %27, %struct.LIST_HELP* %call37)
  %30 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %31 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Head, align 8
  call void @sort_PutNodeTrue(%struct.SORTTHEORY_HELP* %30, %struct.NODE_HELP* %31)
  %32 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Head, align 8
  %33 = bitcast %struct.NODE_HELP* %32 to i8*
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  %call38 = call %struct.LIST_HELP* @list_Cons(i8* %33, %struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %Nodes.addr, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %for.end, %if.then
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true, %for.body
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call42 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %35)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_Copy(%struct.LIST_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %S, %struct.LIST_HELP** %S.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S.addr, align 8
  %call = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %0)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sort_NodeValue(%struct.SORTTHEORY_HELP* %S, %struct.NODE_HELP* %N) #1 {
entry:
  %S.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %N.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %S, %struct.SORTTHEORY_HELP** %S.addr, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  %0 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %mark = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %0, i32 0, i32 1
  %1 = load i32, i32* %mark, align 4
  %2 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %S.addr, align 8
  %mark1 = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %2, i32 0, i32 4
  %3 = load i32, i32* %mark1, align 4
  %cmp = icmp eq i32 %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @sort_TheoryIsSubsortOf(%struct.SORTTHEORY_HELP* %Theory, %struct.LIST_HELP* %Sort1, %struct.LIST_HELP* %Sort2) #0 {
entry:
  %retval = alloca i32, align 4
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Sort1.addr = alloca %struct.LIST_HELP*, align 8
  %Sort2.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Link = alloca %struct.SLINK_HELP*, align 8
  %Node = alloca %struct.NODE_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.LIST_HELP* %Sort1, %struct.LIST_HELP** %Sort1.addr, align 8
  store %struct.LIST_HELP* %Sort2, %struct.LIST_HELP** %Sort2.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  call void @sort_TheoryIncrementMark(%struct.SORTTHEORY_HELP* %0)
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %call = call %struct.LIST_HELP* @sort_TheorySuborigcls(%struct.SORTTHEORY_HELP* %1)
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
  %4 = bitcast i8* %call2 to %struct.LIST_HELP*
  %call3 = call i8* @list_Third(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.SLINK_HELP*
  store %struct.SLINK_HELP* %5, %struct.SLINK_HELP** %Link, align 8
  %6 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  call void @sort_LinkResetFire(%struct.SLINK_HELP* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort1.addr, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.11, %for.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot8 = xor i1 %tobool7, true
  br i1 %lnot8, label %for.body.9, label %for.end.13

for.body.9:                                       ; preds = %for.cond.5
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call10 to %struct.NODE_HELP*
  store %struct.NODE_HELP* %11, %struct.NODE_HELP** %Node, align 8
  %12 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %13 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  call void @sort_PutNodeTrue(%struct.SORTTHEORY_HELP* %12, %struct.NODE_HELP* %13)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.9
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.5

for.end.13:                                       ; preds = %for.cond.5
  %15 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort1.addr, align 8
  %call14 = call %struct.LIST_HELP* @sort_Copy(%struct.LIST_HELP* %16)
  call void @sort_EvalSubsortSpecial(%struct.SORTTHEORY_HELP* %15, %struct.LIST_HELP* %call14)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort2.addr, align 8
  store %struct.LIST_HELP* %17, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.23, %for.end.13
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot18 = xor i1 %tobool17, true
  br i1 %lnot18, label %for.body.19, label %for.end.25

for.body.19:                                      ; preds = %for.cond.15
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call20 to %struct.NODE_HELP*
  store %struct.NODE_HELP* %20, %struct.NODE_HELP** %Node, align 8
  %21 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %22 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call21 = call i32 @sort_NodeValue(%struct.SORTTHEORY_HELP* %21, %struct.NODE_HELP* %22)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.19
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.19
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.15

for.end.25:                                       ; preds = %for.cond.15
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.25, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal void @sort_EvalSubsortSpecial(%struct.SORTTHEORY_HELP* %Theory, %struct.LIST_HELP* %Nodes) #0 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Nodes.addr = alloca %struct.LIST_HELP*, align 8
  %Node = alloca %struct.NODE_HELP*, align 8
  %Head = alloca %struct.NODE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Link = alloca %struct.SLINK_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.LIST_HELP* %Nodes, %struct.LIST_HELP** %Nodes.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i8* @list_NCar(%struct.LIST_HELP** %Nodes.addr)
  %1 = bitcast i8* %call1 to %struct.NODE_HELP*
  store %struct.NODE_HELP* %1, %struct.NODE_HELP** %Node, align 8
  %2 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call2 = call %struct.LIST_HELP* @sort_NodeLinks(%struct.NODE_HELP* %2)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot5 = xor i1 %tobool4, true
  br i1 %lnot5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call6 to %struct.SLINK_HELP*
  store %struct.SLINK_HELP* %5, %struct.SLINK_HELP** %Link, align 8
  %6 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call7 = call i32 @sort_LinkDecrementFire(%struct.SLINK_HELP* %6)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %for.body
  %7 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call8 = call %struct.NODE_HELP* @sort_LinkOutput(%struct.SLINK_HELP* %7)
  store %struct.NODE_HELP* %call8, %struct.NODE_HELP** %Head, align 8
  %8 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %9 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Head, align 8
  %call9 = call i32 @sort_NodeValue(%struct.SORTTHEORY_HELP* %8, %struct.NODE_HELP* %9)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then
  %10 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %11 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Head, align 8
  call void @sort_PutNodeTrue(%struct.SORTTHEORY_HELP* %10, %struct.NODE_HELP* %11)
  %12 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Head, align 8
  %13 = bitcast %struct.NODE_HELP* %12 to i8*
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  %call12 = call %struct.LIST_HELP* @list_Cons(i8* %13, %struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Nodes.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sort_TheoryIsSubsortOfExtra(%struct.SORTTHEORY_HELP* %Theory, %struct.LIST_HELP* %Extra, %struct.LIST_HELP* %Sort1, %struct.LIST_HELP* %Sort2) #0 {
entry:
  %retval = alloca i32, align 4
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Extra.addr = alloca %struct.LIST_HELP*, align 8
  %Sort1.addr = alloca %struct.LIST_HELP*, align 8
  %Sort2.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Link = alloca %struct.SLINK_HELP*, align 8
  %Node = alloca %struct.NODE_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.LIST_HELP* %Extra, %struct.LIST_HELP** %Extra.addr, align 8
  store %struct.LIST_HELP* %Sort1, %struct.LIST_HELP** %Sort1.addr, align 8
  store %struct.LIST_HELP* %Sort2, %struct.LIST_HELP** %Sort2.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  call void @sort_TheoryIncrementMark(%struct.SORTTHEORY_HELP* %0)
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %call = call %struct.LIST_HELP* @sort_TheorySuborigcls(%struct.SORTTHEORY_HELP* %1)
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
  %4 = bitcast i8* %call2 to %struct.LIST_HELP*
  %call3 = call i8* @list_Third(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.SLINK_HELP*
  store %struct.SLINK_HELP* %5, %struct.SLINK_HELP** %Link, align 8
  %6 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  call void @sort_LinkResetFire(%struct.SLINK_HELP* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort1.addr, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.11, %for.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot8 = xor i1 %tobool7, true
  br i1 %lnot8, label %for.body.9, label %for.end.13

for.body.9:                                       ; preds = %for.cond.5
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call10 to %struct.NODE_HELP*
  store %struct.NODE_HELP* %11, %struct.NODE_HELP** %Node, align 8
  %12 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %13 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  call void @sort_PutNodeTrue(%struct.SORTTHEORY_HELP* %12, %struct.NODE_HELP* %13)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.9
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.5

for.end.13:                                       ; preds = %for.cond.5
  %15 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort1.addr, align 8
  %call14 = call %struct.LIST_HELP* @sort_Copy(%struct.LIST_HELP* %16)
  call void @sort_EvalSubsortSpecial(%struct.SORTTHEORY_HELP* %15, %struct.LIST_HELP* %call14)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort2.addr, align 8
  store %struct.LIST_HELP* %17, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.23, %for.end.13
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot18 = xor i1 %tobool17, true
  br i1 %lnot18, label %for.body.19, label %for.end.25

for.body.19:                                      ; preds = %for.cond.15
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call20 to %struct.NODE_HELP*
  store %struct.NODE_HELP* %20, %struct.NODE_HELP** %Node, align 8
  %21 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %22 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call21 = call i32 @sort_NodeValue(%struct.SORTTHEORY_HELP* %21, %struct.NODE_HELP* %22)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.19
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.19
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.15

for.end.25:                                       ; preds = %for.cond.15
  %24 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Extra.addr, align 8
  %call26 = call %struct.LIST_HELP* @sort_Copy(%struct.LIST_HELP* %25)
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort2.addr, align 8
  %call27 = call i32 @sort_TestSubsortSpecial(%struct.SORTTHEORY_HELP* %24, %struct.LIST_HELP* %call26, %struct.LIST_HELP* %26)
  store i32 %call27, i32* %retval
  br label %return

return:                                           ; preds = %for.end.25, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @sort_TestSubsortSpecial(%struct.SORTTHEORY_HELP* %Theory, %struct.LIST_HELP* %Nodes, %struct.LIST_HELP* %Goal) #0 {
entry:
  %retval = alloca i32, align 4
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Nodes.addr = alloca %struct.LIST_HELP*, align 8
  %Goal.addr = alloca %struct.LIST_HELP*, align 8
  %Node = alloca %struct.NODE_HELP*, align 8
  %Head = alloca %struct.NODE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Link = alloca %struct.SLINK_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.LIST_HELP* %Nodes, %struct.LIST_HELP** %Nodes.addr, align 8
  store %struct.LIST_HELP* %Goal, %struct.LIST_HELP** %Goal.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i8* @list_NCar(%struct.LIST_HELP** %Nodes.addr)
  %1 = bitcast i8* %call1 to %struct.NODE_HELP*
  store %struct.NODE_HELP* %1, %struct.NODE_HELP** %Node, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Goal.addr, align 8
  %3 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %4 = bitcast %struct.NODE_HELP* %3 to i8*
  %call2 = call i32 @list_PointerMember(%struct.LIST_HELP* %2, i8* %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %5)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call4 = call %struct.LIST_HELP* @sort_NodeLinks(%struct.NODE_HELP* %6)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot7 = xor i1 %tobool6, true
  br i1 %lnot7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call8 to %struct.SLINK_HELP*
  store %struct.SLINK_HELP* %9, %struct.SLINK_HELP** %Link, align 8
  %10 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call9 = call i32 @sort_LinkFire(%struct.SLINK_HELP* %10)
  %cmp = icmp eq i32 %call9, 0
  br i1 %cmp, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %for.body
  %11 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call11 = call %struct.NODE_HELP* @sort_LinkOutput(%struct.SLINK_HELP* %11)
  store %struct.NODE_HELP* %call11, %struct.NODE_HELP** %Head, align 8
  %12 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Head, align 8
  %13 = bitcast %struct.NODE_HELP* %12 to i8*
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  %call12 = call %struct.LIST_HELP* @list_Cons(i8* %13, %struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Nodes.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @sort_TheoryComputeAllSubsortHits(%struct.SORTTHEORY_HELP* %Theory, %struct.LIST_HELP* %Sort1, %struct.LIST_HELP* %Sort2) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Sort1.addr = alloca %struct.LIST_HELP*, align 8
  %Sort2.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %Search = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Visited = alloca %struct.LIST_HELP*, align 8
  %Link = alloca %struct.SLINK_HELP*, align 8
  %Node = alloca %struct.NODE_HELP*, align 8
  %Cand = alloca %struct.LIST_HELP*, align 8
  %Valid = alloca i32, align 4
  %ValidStart = alloca i32, align 4
  %StartMark = alloca i32, align 4
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.LIST_HELP* %Sort1, %struct.LIST_HELP** %Sort1.addr, align 8
  store %struct.LIST_HELP* %Sort2, %struct.LIST_HELP** %Sort2.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  call void @sort_TheoryIncrementMark(%struct.SORTTHEORY_HELP* %0)
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %call = call i32 @sort_TheoryMark(%struct.SORTTHEORY_HELP* %1)
  store i32 %call, i32* %StartMark, align 4
  %2 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %call1 = call %struct.LIST_HELP* @sort_TheorySuborigcls(%struct.SORTTHEORY_HELP* %2)
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
  %5 = bitcast i8* %call3 to %struct.LIST_HELP*
  %call4 = call i8* @list_Third(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call4 to %struct.SLINK_HELP*
  store %struct.SLINK_HELP* %6, %struct.SLINK_HELP** %Link, align 8
  %7 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  call void @sort_LinkResetFire(%struct.SLINK_HELP* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort1.addr, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.20, %for.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot9 = xor i1 %tobool8, true
  br i1 %lnot9, label %for.body.10, label %for.end.22

for.body.10:                                      ; preds = %for.cond.6
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call11 to %struct.NODE_HELP*
  store %struct.NODE_HELP* %12, %struct.NODE_HELP** %Node, align 8
  %13 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call12 = call %struct.LIST_HELP* @sort_NodeConditions(%struct.NODE_HELP* %13)
  call void @sort_DeleteConditionList(%struct.LIST_HELP* %call12)
  %14 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call13 = call i32 @symbol_FirstVariable()
  %call14 = call %struct.LIST_HELP* @list_Nil()
  %call15 = call %struct.LIST_HELP* @list_Nil()
  %call16 = call %struct.LIST_HELP* @list_Nil()
  %call17 = call %struct.LIST_HELP* @list_Nil()
  %call18 = call %struct.CONDITION_HELP* @sort_ConditionCreate(i32 %call13, %struct.LIST_HELP* %call14, %struct.LIST_HELP* %call15, %struct.LIST_HELP* %call16, %struct.LIST_HELP* %call17)
  %15 = bitcast %struct.CONDITION_HELP* %call18 to i8*
  %call19 = call %struct.LIST_HELP* @list_List(i8* %15)
  call void @sort_PutNodeConditions(%struct.NODE_HELP* %14, %struct.LIST_HELP* %call19)
  %16 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %17 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  call void @sort_PutNodeTrue(%struct.SORTTHEORY_HELP* %16, %struct.NODE_HELP* %17)
  %18 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %19 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  call void @sort_PutNodeStartTrue(%struct.SORTTHEORY_HELP* %18, %struct.NODE_HELP* %19)
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.10
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.6

for.end.22:                                       ; preds = %for.cond.6
  %21 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort1.addr, align 8
  %call23 = call %struct.LIST_HELP* @sort_Copy(%struct.LIST_HELP* %22)
  call void @sort_EvalSubsort(%struct.SORTTHEORY_HELP* %21, %struct.LIST_HELP* %call23)
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort2.addr, align 8
  store %struct.LIST_HELP* %23, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.33, %for.end.22
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call25 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool26 = icmp ne i32 %call25, 0
  %lnot27 = xor i1 %tobool26, true
  br i1 %lnot27, label %for.body.28, label %for.end.35

for.body.28:                                      ; preds = %for.cond.24
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call29 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call29 to %struct.NODE_HELP*
  store %struct.NODE_HELP* %26, %struct.NODE_HELP** %Node, align 8
  %27 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %28 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call30 = call i32 @sort_NodeValue(%struct.SORTTHEORY_HELP* %27, %struct.NODE_HELP* %28)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.28
  %call32 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %for.body.28
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %29)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.24

for.end.35:                                       ; preds = %for.cond.24
  %call36 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %Result, align 8
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort2.addr, align 8
  %call37 = call %struct.LIST_HELP* @sort_Copy(%struct.LIST_HELP* %30)
  %call38 = call %struct.LIST_HELP* @list_Nil()
  %call39 = call %struct.CONDITION_HELP* @sort_ConditionCreateNoResidues(%struct.LIST_HELP* %call38)
  %call40 = call %struct.LIST_HELP* @sort_PairCreate(%struct.LIST_HELP* %call37, %struct.CONDITION_HELP* %call39)
  %31 = bitcast %struct.LIST_HELP* %call40 to i8*
  %call41 = call %struct.LIST_HELP* @list_List(i8* %31)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %Search, align 8
  %call42 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %Visited, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call43 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %32)
  br label %while.cond

while.cond:                                       ; preds = %if.end.123, %for.end.35
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Search, align 8
  %call44 = call i32 @list_Empty(%struct.LIST_HELP* %33)
  %tobool45 = icmp ne i32 %call44, 0
  %lnot46 = xor i1 %tobool45, true
  br i1 %lnot46, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Search, align 8
  %call47 = call i8* @list_Car(%struct.LIST_HELP* %34)
  %35 = bitcast i8* %call47 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %35, %struct.LIST_HELP** %Cand, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Search, align 8
  store %struct.LIST_HELP* %36, %struct.LIST_HELP** %Scan, align 8
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Search, align 8
  %call48 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %37)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %Search, align 8
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Free(%struct.LIST_HELP* %38)
  %call49 = call i32 @putchar(i32 10)
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cand, align 8
  call void @sort_PairPrint(%struct.LIST_HELP* %39)
  %40 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Visited, align 8
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cand, align 8
  %call50 = call i8* @sort_PairSort(%struct.LIST_HELP* %42)
  %43 = bitcast i8* %call50 to %struct.LIST_HELP*
  %call51 = call i32 @sort_TheorySortMember(%struct.SORTTHEORY_HELP* %40, %struct.LIST_HELP* %41, %struct.LIST_HELP* %43)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.123, label %if.then.53

if.then.53:                                       ; preds = %while.body
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cand, align 8
  %call54 = call i8* @sort_PairSort(%struct.LIST_HELP* %44)
  %45 = bitcast i8* %call54 to %struct.LIST_HELP*
  %call55 = call %struct.LIST_HELP* @sort_Copy(%struct.LIST_HELP* %45)
  %46 = bitcast %struct.LIST_HELP* %call55 to i8*
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Visited, align 8
  %call56 = call %struct.LIST_HELP* @list_Cons(i8* %46, %struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call56, %struct.LIST_HELP** %Visited, align 8
  store i32 1, i32* %ValidStart, align 4
  store i32 1, i32* %Valid, align 4
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cand, align 8
  %call57 = call i8* @sort_PairSort(%struct.LIST_HELP* %48)
  %49 = bitcast i8* %call57 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %49, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.72, %if.then.53
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call59 = call i32 @list_Empty(%struct.LIST_HELP* %50)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond.58
  %51 = load i32, i32* %ValidStart, align 4
  %tobool61 = icmp ne i32 %51, 0
  br i1 %tobool61, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %52 = load i32, i32* %Valid, align 4
  %tobool62 = icmp ne i32 %52, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %53 = phi i1 [ true, %land.rhs ], [ %tobool62, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond.58
  %54 = phi i1 [ false, %for.cond.58 ], [ %53, %lor.end ]
  br i1 %54, label %for.body.63, label %for.end.74

for.body.63:                                      ; preds = %land.end
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call64 = call i8* @list_Car(%struct.LIST_HELP* %55)
  %56 = bitcast i8* %call64 to %struct.NODE_HELP*
  store %struct.NODE_HELP* %56, %struct.NODE_HELP** %Node, align 8
  %57 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call65 = call i32 @sort_NodeMark(%struct.NODE_HELP* %57)
  %58 = load i32, i32* %StartMark, align 4
  %cmp = icmp ne i32 %call65, %58
  br i1 %cmp, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %for.body.63
  store i32 0, i32* %Valid, align 4
  store i32 0, i32* %ValidStart, align 4
  br label %if.end.71

if.else:                                          ; preds = %for.body.63
  %59 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call67 = call i32 @sort_NodeStart(%struct.NODE_HELP* %59)
  %60 = load i32, i32* %StartMark, align 4
  %cmp68 = icmp ne i32 %call67, %60
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.else
  store i32 0, i32* %ValidStart, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.else
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.66
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call73 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %61)
  store %struct.LIST_HELP* %call73, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.58

for.end.74:                                       ; preds = %land.end
  %62 = load i32, i32* %Valid, align 4
  %tobool75 = icmp ne i32 %62, 0
  br i1 %tobool75, label %if.then.76, label %if.end.122

if.then.76:                                       ; preds = %for.end.74
  %63 = load i32, i32* %ValidStart, align 4
  %tobool77 = icmp ne i32 %63, 0
  br i1 %tobool77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %if.then.76
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cand, align 8
  %call79 = call %struct.LIST_HELP* @sort_PairCopy(%struct.LIST_HELP* %64)
  %65 = bitcast %struct.LIST_HELP* %call79 to i8*
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call80 = call %struct.LIST_HELP* @list_Cons(i8* %65, %struct.LIST_HELP* %66)
  store %struct.LIST_HELP* %call80, %struct.LIST_HELP** %Result, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %if.then.76
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cand, align 8
  %call82 = call i8* @sort_PairSort(%struct.LIST_HELP* %67)
  %68 = bitcast i8* %call82 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %68, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.119, %if.end.81
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call84 = call i32 @list_Empty(%struct.LIST_HELP* %69)
  %tobool85 = icmp ne i32 %call84, 0
  %lnot86 = xor i1 %tobool85, true
  br i1 %lnot86, label %for.body.87, label %for.end.121

for.body.87:                                      ; preds = %for.cond.83
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call88 = call i8* @list_Car(%struct.LIST_HELP* %70)
  %71 = bitcast i8* %call88 to %struct.NODE_HELP*
  store %struct.NODE_HELP* %71, %struct.NODE_HELP** %Node, align 8
  %72 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %call89 = call %struct.LIST_HELP* @sort_TheorySuborigcls(%struct.SORTTHEORY_HELP* %72)
  store %struct.LIST_HELP* %call89, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.116, %for.body.87
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call91 = call i32 @list_Empty(%struct.LIST_HELP* %73)
  %tobool92 = icmp ne i32 %call91, 0
  %lnot93 = xor i1 %tobool92, true
  br i1 %lnot93, label %for.body.94, label %for.end.118

for.body.94:                                      ; preds = %for.cond.90
  %74 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call95 = call i8* @list_Car(%struct.LIST_HELP* %74)
  %75 = bitcast i8* %call95 to %struct.LIST_HELP*
  %call96 = call i8* @list_Third(%struct.LIST_HELP* %75)
  %76 = bitcast i8* %call96 to %struct.SLINK_HELP*
  store %struct.SLINK_HELP* %76, %struct.SLINK_HELP** %Link, align 8
  %77 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call97 = call %struct.NODE_HELP* @sort_LinkOutput(%struct.SLINK_HELP* %77)
  %78 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %cmp98 = icmp eq %struct.NODE_HELP* %call97, %78
  br i1 %cmp98, label %land.lhs.true, label %if.end.115

land.lhs.true:                                    ; preds = %for.body.94
  %79 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call99 = call %struct.LIST_HELP* @sort_LinkInput(%struct.SLINK_HELP* %79)
  %call100 = call i32 @list_Empty(%struct.LIST_HELP* %call99)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.end.115, label %if.then.102

if.then.102:                                      ; preds = %land.lhs.true
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cand, align 8
  %call103 = call i8* @sort_PairSort(%struct.LIST_HELP* %80)
  %81 = bitcast i8* %call103 to %struct.LIST_HELP*
  %call104 = call %struct.LIST_HELP* @sort_Copy(%struct.LIST_HELP* %81)
  %82 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call105 = call %struct.LIST_HELP* @sort_DeleteBaseNode(%struct.LIST_HELP* %call104, %struct.NODE_HELP* %82)
  %83 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call106 = call %struct.LIST_HELP* @sort_LinkInput(%struct.SLINK_HELP* %83)
  %call107 = call %struct.LIST_HELP* @sort_Copy(%struct.LIST_HELP* %call106)
  %call108 = call %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %call105, %struct.LIST_HELP* %call107)
  %call109 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %call108)
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cand, align 8
  %call110 = call i8* @sort_PairCondition(%struct.LIST_HELP* %84)
  %85 = bitcast i8* %call110 to %struct.CONDITION_HELP*
  %call111 = call %struct.CONDITION_HELP* @sort_ConditionCopy(%struct.CONDITION_HELP* %85)
  %86 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call112 = call %struct.CONDITION_HELP* @sort_ExtendConditionByLink(%struct.CONDITION_HELP* %call111, %struct.SLINK_HELP* %86)
  %call113 = call %struct.LIST_HELP* @sort_PairCreate(%struct.LIST_HELP* %call109, %struct.CONDITION_HELP* %call112)
  %87 = bitcast %struct.LIST_HELP* %call113 to i8*
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Search, align 8
  %call114 = call %struct.LIST_HELP* @list_Cons(i8* %87, %struct.LIST_HELP* %88)
  store %struct.LIST_HELP* %call114, %struct.LIST_HELP** %Search, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.102, %land.lhs.true, %for.body.94
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115
  %89 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call117 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %89)
  store %struct.LIST_HELP* %call117, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.90

for.end.118:                                      ; preds = %for.cond.90
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.end.118
  %90 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call120 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %90)
  store %struct.LIST_HELP* %call120, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.83

for.end.121:                                      ; preds = %for.cond.83
  br label %if.end.122

if.end.122:                                       ; preds = %for.end.121, %for.end.74
  %91 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cand, align 8
  call void @sort_PairDelete(%struct.LIST_HELP* %91)
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Visited, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %92, void (i8*)* bitcast (void (%struct.LIST_HELP*)* @sort_Delete to void (i8*)*))
  %93 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %93, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %94 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %94
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sort_TheoryMark(%struct.SORTTHEORY_HELP* %Theory) #1 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %mark = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %0, i32 0, i32 4
  %1 = load i32, i32* %mark, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutNodeStartTrue(%struct.SORTTHEORY_HELP* %S, %struct.NODE_HELP* %N) #1 {
entry:
  %S.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %N.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %S, %struct.SORTTHEORY_HELP** %S.addr, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %S.addr, align 8
  %mark = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %0, i32 0, i32 4
  %1 = load i32, i32* %mark, align 4
  %2 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %start = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %2, i32 0, i32 2
  store i32 %1, i32* %start, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sort_EvalSubsort(%struct.SORTTHEORY_HELP* %Theory, %struct.LIST_HELP* %Nodes) #0 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Nodes.addr = alloca %struct.LIST_HELP*, align 8
  %Node = alloca %struct.NODE_HELP*, align 8
  %Head = alloca %struct.NODE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Help = alloca %struct.LIST_HELP*, align 8
  %Link = alloca %struct.SLINK_HELP*, align 8
  %Cond = alloca %struct.CONDITION_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.LIST_HELP* %Nodes, %struct.LIST_HELP** %Nodes.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.43, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.NODE_HELP*
  store %struct.NODE_HELP* %2, %struct.NODE_HELP** %Node, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %Scan, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Nodes.addr, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Free(%struct.LIST_HELP* %5)
  %6 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Node, align 8
  %call3 = call %struct.LIST_HELP* @sort_NodeLinks(%struct.NODE_HELP* %6)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %while.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot6 = xor i1 %tobool5, true
  br i1 %lnot6, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call7 to %struct.SLINK_HELP*
  store %struct.SLINK_HELP* %9, %struct.SLINK_HELP** %Link, align 8
  %10 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call8 = call i32 @sort_LinkDecrementFire(%struct.SLINK_HELP* %10)
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then, label %if.end.40

if.then:                                          ; preds = %for.body
  %11 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call9 = call %struct.NODE_HELP* @sort_LinkOutput(%struct.SLINK_HELP* %11)
  store %struct.NODE_HELP* %call9, %struct.NODE_HELP** %Head, align 8
  %12 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %13 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Head, align 8
  %call10 = call i32 @sort_NodeValue(%struct.SORTTHEORY_HELP* %12, %struct.NODE_HELP* %13)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.39, label %if.then.12

if.then.12:                                       ; preds = %if.then
  %call13 = call i32 @symbol_FirstVariable()
  %call14 = call %struct.LIST_HELP* @list_Nil()
  %call15 = call %struct.LIST_HELP* @list_Nil()
  %call16 = call %struct.LIST_HELP* @list_Nil()
  %call17 = call %struct.LIST_HELP* @list_Nil()
  %call18 = call %struct.CONDITION_HELP* @sort_ConditionCreate(i32 %call13, %struct.LIST_HELP* %call14, %struct.LIST_HELP* %call15, %struct.LIST_HELP* %call16, %struct.LIST_HELP* %call17)
  store %struct.CONDITION_HELP* %call18, %struct.CONDITION_HELP** %Cond, align 8
  %14 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call19 = call %struct.LIST_HELP* @sort_LinkInput(%struct.SLINK_HELP* %14)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Help, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %if.then.12
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  %call21 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool22 = icmp ne i32 %call21, 0
  %lnot23 = xor i1 %tobool22, true
  br i1 %lnot23, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.20
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call25 to %struct.NODE_HELP*
  %call26 = call %struct.LIST_HELP* @sort_NodeConditions(%struct.NODE_HELP* %17)
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %call26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end, label %if.then.29

if.then.29:                                       ; preds = %for.body.24
  %18 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call30 to %struct.NODE_HELP*
  %call31 = call %struct.LIST_HELP* @sort_NodeConditions(%struct.NODE_HELP* %20)
  %call32 = call i8* @list_Car(%struct.LIST_HELP* %call31)
  %21 = bitcast i8* %call32 to %struct.CONDITION_HELP*
  %call33 = call %struct.CONDITION_HELP* @sort_ExtendConditionByCondition(%struct.CONDITION_HELP* %18, %struct.CONDITION_HELP* %21)
  store %struct.CONDITION_HELP* %call33, %struct.CONDITION_HELP** %Cond, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.29, %for.body.24
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %Help, align 8
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  %23 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %24 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %Link, align 8
  %call35 = call %struct.CONDITION_HELP* @sort_ExtendConditionByLink(%struct.CONDITION_HELP* %23, %struct.SLINK_HELP* %24)
  %25 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Head, align 8
  %call36 = call %struct.LIST_HELP* @sort_NodeConditions(%struct.NODE_HELP* %25)
  call void @sort_DeleteConditionList(%struct.LIST_HELP* %call36)
  %26 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Head, align 8
  %27 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %28 = bitcast %struct.CONDITION_HELP* %27 to i8*
  %call37 = call %struct.LIST_HELP* @list_List(i8* %28)
  call void @sort_PutNodeConditions(%struct.NODE_HELP* %26, %struct.LIST_HELP* %call37)
  %29 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %30 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Head, align 8
  call void @sort_PutNodeTrue(%struct.SORTTHEORY_HELP* %29, %struct.NODE_HELP* %30)
  %31 = load %struct.NODE_HELP*, %struct.NODE_HELP** %Head, align 8
  %32 = bitcast %struct.NODE_HELP* %31 to i8*
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Nodes.addr, align 8
  %call38 = call %struct.LIST_HELP* @list_Cons(i8* %32, %struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %Nodes.addr, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %for.end, %if.then
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %for.body
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call42 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_PairCreate(%struct.LIST_HELP* %S, %struct.CONDITION_HELP* %Just) #1 {
entry:
  %S.addr = alloca %struct.LIST_HELP*, align 8
  %Just.addr = alloca %struct.CONDITION_HELP*, align 8
  store %struct.LIST_HELP* %S, %struct.LIST_HELP** %S.addr, align 8
  store %struct.CONDITION_HELP* %Just, %struct.CONDITION_HELP** %Just.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S.addr, align 8
  %1 = bitcast %struct.LIST_HELP* %0 to i8*
  %2 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Just.addr, align 8
  %3 = bitcast %struct.CONDITION_HELP* %2 to i8*
  %call = call %struct.LIST_HELP* @list_PairCreate(i8* %1, i8* %3)
  ret %struct.LIST_HELP* %call
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

; Function Attrs: nounwind uwtable
define internal i32 @sort_TheorySortMember(%struct.SORTTHEORY_HELP* %Theory, %struct.LIST_HELP* %List, %struct.LIST_HELP* %Sort) #0 {
entry:
  %retval = alloca i32, align 4
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Sort.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %Sort, %struct.LIST_HELP** %Sort.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.LIST_HELP*
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort.addr, align 8
  %call2 = call i32 @sort_TheorySortEqual(%struct.SORTTHEORY_HELP* %1, %struct.LIST_HELP* %3, %struct.LIST_HELP* %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sort_NodeMark(%struct.NODE_HELP* %N) #1 {
entry:
  %N.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  %0 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %mark = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %0, i32 0, i32 1
  %1 = load i32, i32* %mark, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sort_NodeStart(%struct.NODE_HELP* %N) #1 {
entry:
  %N.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  %0 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %start = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %0, i32 0, i32 2
  %1 = load i32, i32* %start, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_PairCopy(%struct.LIST_HELP* %Pair) #1 {
entry:
  %Pair.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Pair, %struct.LIST_HELP** %Pair.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call = call i8* @sort_PairSort(%struct.LIST_HELP* %0)
  %1 = bitcast i8* %call to %struct.LIST_HELP*
  %call1 = call %struct.LIST_HELP* @sort_Copy(%struct.LIST_HELP* %1)
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call2 = call i8* @sort_PairCondition(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call2 to %struct.CONDITION_HELP*
  %call3 = call %struct.CONDITION_HELP* @sort_ConditionCopy(%struct.CONDITION_HELP* %3)
  %call4 = call %struct.LIST_HELP* @sort_PairCreate(%struct.LIST_HELP* %call1, %struct.CONDITION_HELP* %call3)
  ret %struct.LIST_HELP* %call4
}

declare %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_DeleteBaseNode(%struct.LIST_HELP* %S, %struct.NODE_HELP* %N) #1 {
entry:
  %S.addr = alloca %struct.LIST_HELP*, align 8
  %N.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.LIST_HELP* %S, %struct.LIST_HELP** %S.addr, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S.addr, align 8
  %1 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %2 = bitcast %struct.NODE_HELP* %1 to i8*
  %call = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %0, i8* %2)
  ret %struct.LIST_HELP* %call
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

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @sort_ComputeSortNoResidues(%struct.SORTTHEORY_HELP* %Theory, %struct.term* %Term, %struct.CLAUSE_HELP* %Clause, i32 %i, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %SubtermStack = alloca i32, align 4
  %SortPair = alloca %struct.LIST_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.LIST_HELP* null, %struct.LIST_HELP** %SortPair, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %SubtermStack, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @sharing_PushOnStack(%struct.term* %0)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %SubtermStack, align 4
  %call1 = call i32 @stack_Empty(i32 %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @stack_PopResult()
  %2 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %2, %struct.term** %Term.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %4 = bitcast %struct.term* %3 to i8*
  %call3 = call i8* @hash_Get(i8* %4)
  %5 = bitcast i8* %call3 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %SortPair, align 8
  %tobool4 = icmp ne %struct.LIST_HELP* %5, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %6 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = load i32, i32* %i.addr, align 4
  %10 = load i32*, i32** %Flags.addr, align 8
  %11 = load i32*, i32** %Precedence.addr, align 8
  %call5 = call %struct.LIST_HELP* @sort_ComputeSortInternNoResidues(%struct.SORTTHEORY_HELP* %6, %struct.term* %7, %struct.CLAUSE_HELP* %8, i32 %9, i32* %10, i32* %11)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %SortPair, align 8
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %13 = bitcast %struct.term* %12 to i8*
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SortPair, align 8
  %15 = bitcast %struct.LIST_HELP* %14 to i8*
  call void @hash_Put(i8* %13, i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SortPair, align 8
  %call6 = call %struct.LIST_HELP* @sort_PairCopy(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %SortPair, align 8
  call void @hash_ResetWithValue(void (i8*)* bitcast (void (%struct.LIST_HELP*)* @sort_DeleteSortPair to void (i8*)*))
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SortPair, align 8
  ret %struct.LIST_HELP* %17
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Bottom() #1 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  ret i32 %0
}

declare void @sharing_PushOnStack(%struct.term*) #2

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

declare i8* @hash_Get(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @sort_ComputeSortInternNoResidues(%struct.SORTTHEORY_HELP* %Theory, %struct.term* %Term, %struct.CLAUSE_HELP* %Clause, i32 %i, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Sort = alloca %struct.LIST_HELP*, align 8
  %HelpList = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Clauses = alloca %struct.LIST_HELP*, align 8
  %QueryTerm = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %ActClause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @sort_TopSort()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Sort, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Clauses, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %2)
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i.addr, align 4
  %call4 = call %struct.LIST_HELP* @sort_VarSort(%struct.SORTTHEORY_HELP* %1, i32 %call3, %struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Sort, align 8
  br label %if.end.33

if.else:                                          ; preds = %entry
  %call5 = call %struct.binding* @cont_LeftContext()
  %5 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %call6 = call %struct.st* @sort_TheoryIndex(%struct.SORTTHEORY_HELP* %5)
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.LIST_HELP* @st_GetGen(%struct.binding* %call5, %struct.st* %call6, %struct.term* %6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %HelpList, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i8* @list_First(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call10 to %struct.term*
  store %struct.term* %10, %struct.term** %QueryTerm, align 8
  %11 = load %struct.term*, %struct.term** %QueryTerm, align 8
  %call11 = call i32 @term_IsVariable(%struct.term* %11)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.31, label %if.then.13

if.then.13:                                       ; preds = %for.body
  %12 = load %struct.term*, %struct.term** %QueryTerm, align 8
  %call14 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %12)
  %call15 = call i8* @list_First(%struct.LIST_HELP* %call14)
  %13 = bitcast i8* %call15 to %struct.term*
  store %struct.term* %13, %struct.term** %Atom, align 8
  %14 = load %struct.term*, %struct.term** %Atom, align 8
  %call16 = call i32 @term_TopSymbol(%struct.term* %14)
  store i32 %call16, i32* %Top, align 4
  %15 = load %struct.term*, %struct.term** %Atom, align 8
  %call17 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %15)
  %call18 = call i8* @list_First(%struct.LIST_HELP* %call17)
  %16 = bitcast i8* %call18 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %16, %struct.LITERAL_HELP** %ActLit, align 8
  %17 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call19 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %17)
  store %struct.CLAUSE_HELP* %call19, %struct.CLAUSE_HELP** %ActClause, align 8
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ActClause, align 8
  %19 = load i32*, i32** %Flags.addr, align 8
  %20 = load i32*, i32** %Precedence.addr, align 8
  %call20 = call i32 @clause_IsSortTheoryClause(%struct.CLAUSE_HELP* %18, i32* %19, i32* %20)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.13
  %21 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %22 = load %struct.term*, %struct.term** %QueryTerm, align 8
  %23 = load %struct.term*, %struct.term** %Term.addr, align 8
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ActClause, align 8
  %call22 = call i32 @sort_MatchNoResidues(%struct.SORTTHEORY_HELP* %21, %struct.term* %22, %struct.term* %23, %struct.CLAUSE_HELP* %24, %struct.LIST_HELP** %Clauses)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort, align 8
  %26 = load i32, i32* %Top, align 4
  %call25 = call i32 @sort_ContainsSymbol(%struct.LIST_HELP* %25, i32 %26)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true.24
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort, align 8
  %28 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %29 = load i32, i32* %Top, align 4
  %call28 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %28, i32 %29)
  %call29 = call %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %27, %struct.LIST_HELP* %call28)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Sort, align 8
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ActClause, align 8
  %31 = bitcast %struct.CLAUSE_HELP* %30 to i8*
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call30 = call %struct.LIST_HELP* @list_Cons(i8* %31, %struct.LIST_HELP* %32)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %Clauses, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.27, %land.lhs.true.24, %land.lhs.true, %if.then.13
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  call void @list_Delete(%struct.LIST_HELP* %34)
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %if.then
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sort, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call34 = call %struct.CONDITION_HELP* @sort_ConditionCreateNoResidues(%struct.LIST_HELP* %36)
  %call35 = call %struct.LIST_HELP* @sort_PairCreate(%struct.LIST_HELP* %35, %struct.CONDITION_HELP* %call34)
  ret %struct.LIST_HELP* %call35
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @hash_Put(i8* %Key, i8* %Value) #1 {
entry:
  %Key.addr = alloca i8*, align 8
  %Value.addr = alloca i8*, align 8
  store i8* %Key, i8** %Key.addr, align 8
  store i8* %Value, i8** %Value.addr, align 8
  %0 = load i8*, i8** %Key.addr, align 8
  %call = call i32 @hash_Index(i8* %0)
  %1 = load i8*, i8** %Key.addr, align 8
  %2 = load i8*, i8** %Value.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_PairCreate(i8* %1, i8* %2)
  %3 = bitcast %struct.LIST_HELP* %call1 to i8*
  %4 = load i8*, i8** %Key.addr, align 8
  %call2 = call i32 @hash_Index(i8* %4)
  %call3 = call %struct.LIST_HELP* @hash_List(i32 %call2)
  %call4 = call %struct.LIST_HELP* @list_Cons(i8* %3, %struct.LIST_HELP* %call3)
  call void @hash_PutList(i32 %call, %struct.LIST_HELP* %call4)
  ret void
}

declare void @hash_ResetWithValue(void (i8*)*) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @sort_ApproxMaxDeclClauses(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %NewConstraint = alloca %struct.LIST_HELP*, align 8
  %NewSuccedent = alloca %struct.LIST_HELP*, align 8
  %NewClause = alloca %struct.CLAUSE_HELP*, align 8
  %LitK = alloca %struct.LITERAL_HELP*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %j = alloca i32, align 4
  %lc = alloca i32, align 4
  %pli = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %length, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %LitK, align 8
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %LitK, align 8
  %call4 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %6)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %LitK, align 8
  %call5 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %7)
  %call6 = call i32 @term_TopSymbol(%struct.term* %call5)
  %call7 = call i32 @symbol_IsBaseSort(i32 %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.end.37

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %pli, align 4
  %9 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %LitK, align 8
  %call9 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %9)
  %call10 = call %struct.term* @term_Copy(%struct.term* %call9)
  %10 = bitcast %struct.term* %call10 to i8*
  %call11 = call %struct.LIST_HELP* @list_List(i8* %10)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %NewSuccedent, align 8
  %call12 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %NewConstraint, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call13 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %11)
  store i32 %call13, i32* %lc, align 4
  %call14 = call i32 @clause_FirstLitIndex()
  store i32 %call14, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.then
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %lc, align 4
  %cmp16 = icmp sle i32 %12, %13
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %14 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %LitK, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %16 = load i32, i32* %j, align 4
  %call18 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %15, i32 %16)
  %call19 = call i32 @clause_LitsHaveCommonVar(%struct.LITERAL_HELP* %14, %struct.LITERAL_HELP* %call18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %for.body.17
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %18 = load i32, i32* %j, align 4
  %call22 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %17, i32 %18)
  %call23 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call22)
  %call24 = call %struct.term* @term_Copy(%struct.term* %call23)
  %19 = bitcast %struct.term* %call24 to i8*
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  %call25 = call %struct.LIST_HELP* @list_Cons(i8* %19, %struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %NewConstraint, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.21, %for.body.17
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  %call26 = call i32 @list_Empty(%struct.LIST_HELP* %22)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.32, label %if.then.28

if.then.28:                                       ; preds = %for.end
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewSuccedent, align 8
  %call29 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call29 to %struct.term*
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call30 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %26)
  %call31 = call %struct.LIST_HELP* @sort_ApproxPseudoLinear(%struct.LIST_HELP* %23, %struct.term* %25, i32 %call30)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %NewConstraint, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %for.end
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  %call33 = call %struct.LIST_HELP* @list_Nil()
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewSuccedent, align 8
  %29 = load i32*, i32** %Flags.addr, align 8
  %30 = load i32*, i32** %Precedence.addr, align 8
  %call34 = call %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP* %27, %struct.LIST_HELP* %call33, %struct.LIST_HELP* %28, i32* %29, i32* %30)
  store %struct.CLAUSE_HELP* %call34, %struct.CLAUSE_HELP** %NewClause, align 8
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetSplitLevel(%struct.CLAUSE_HELP* %31, i32 0)
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %32, i32 1)
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromClauseDeletion(%struct.CLAUSE_HELP* %33)
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %36 = bitcast %struct.CLAUSE_HELP* %35 to i8*
  %call35 = call %struct.LIST_HELP* @list_List(i8* %36)
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %34, %struct.LIST_HELP* %call35)
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %38 = load i32, i32* %pli, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %37, i32 %38)
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  call void @list_Delete(%struct.LIST_HELP* %39)
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewSuccedent, align 8
  call void @list_Delete(%struct.LIST_HELP* %40)
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %42 = bitcast %struct.CLAUSE_HELP* %41 to i8*
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call36 = call %struct.LIST_HELP* @list_Cons(i8* %42, %struct.LIST_HELP* %43)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %Result, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.32, %land.lhs.true, %for.body
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %44 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %44, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %45
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
define internal i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %0, i32 1)
  ret i32 %call
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
define internal i32 @term_TopSymbol(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %symbol = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 0
  %1 = load i32, i32* %symbol, align 4
  ret i32 %1
}

declare %struct.term* @term_Copy(%struct.term*) #2

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
define internal i32 @clause_FirstLitIndex() #1 {
entry:
  ret i32 0
}

declare i32 @clause_LitsHaveCommonVar(%struct.LITERAL_HELP*, %struct.LITERAL_HELP*) #2

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
define internal %struct.LIST_HELP* @sort_ApproxPseudoLinear(%struct.LIST_HELP* %Constraint, %struct.term* %Head, i32 %Var) #0 {
entry:
  %Constraint.addr = alloca %struct.LIST_HELP*, align 8
  %Head.addr = alloca %struct.term*, align 8
  %Var.addr = alloca i32, align 4
  %Atom = alloca %struct.term*, align 8
  %RenVars = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Lits = alloca %struct.LIST_HELP*, align 8
  %OldVar = alloca i32, align 4
  %NewVar = alloca i32, align 4
  store %struct.LIST_HELP* %Constraint, %struct.LIST_HELP** %Constraint.addr, align 8
  store %struct.term* %Head, %struct.term** %Head.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load %struct.term*, %struct.term** %Head.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %call = call %struct.LIST_HELP* @term_RenamePseudoLinear(%struct.term* %0, i32 %1)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %RenVars, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Lits, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RenVars, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.LIST_HELP*
  %call4 = call i8* @list_PairFirst(%struct.LIST_HELP* %5)
  %6 = ptrtoint i8* %call4 to i32
  store i32 %6, i32* %OldVar, align 4
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call5 to %struct.LIST_HELP*
  %call6 = call i8* @list_PairSecond(%struct.LIST_HELP* %8)
  %9 = ptrtoint i8* %call6 to i32
  store i32 %9, i32* %NewVar, align 4
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call7 to %struct.LIST_HELP*
  call void @list_PairFree(%struct.LIST_HELP* %11)
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint.addr, align 8
  store %struct.LIST_HELP* %12, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot11 = xor i1 %tobool10, true
  br i1 %lnot11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint.addr, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call13 to %struct.term*
  store %struct.term* %15, %struct.term** %Atom, align 8
  %16 = load %struct.term*, %struct.term** %Atom, align 8
  %call14 = call %struct.term* @term_FirstArgument(%struct.term* %16)
  %call15 = call i32 @term_TopSymbol(%struct.term* %call14)
  %17 = load i32, i32* %OldVar, align 4
  %call16 = call i32 @symbol_Equal(i32 %call15, i32 %17)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.12
  %18 = load %struct.term*, %struct.term** %Atom, align 8
  %call18 = call i32 @term_TopSymbol(%struct.term* %18)
  %19 = load i32, i32* %NewVar, align 4
  %call19 = call %struct.LIST_HELP* @list_Nil()
  %call20 = call %struct.term* @term_Create(i32 %19, %struct.LIST_HELP* %call19)
  %20 = bitcast %struct.term* %call20 to i8*
  %call21 = call %struct.LIST_HELP* @list_List(i8* %20)
  %call22 = call %struct.term* @term_Create(i32 %call18, %struct.LIST_HELP* %call21)
  %21 = bitcast %struct.term* %call22 to i8*
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call23 = call %struct.LIST_HELP* @list_Cons(i8* %21, %struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %Lits, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.12
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RenVars, align 8
  call void @list_Delete(%struct.LIST_HELP* %25)
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint.addr, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call28 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %26, %struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Lits, align 8
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  ret %struct.LIST_HELP* %28
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

declare %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, i32*, i32*) #2

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
define internal void @clause_SetFromClauseDeletion(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 0, i32* %origin, align 4
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @sort_EliminateSubsumedClauses(%struct.LIST_HELP* %Clauses) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %RedundantClauses = alloca %struct.LIST_HELP*, align 8
  %Iter = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Kept = alloca i32, align 4
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %RedundantClauses, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %Kept, align 4
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond.2
  %4 = load i32, i32* %Kept, align 4
  %tobool5 = icmp ne i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.2
  %5 = phi i1 [ false, %for.cond.2 ], [ %tobool5, %land.rhs ]
  br i1 %5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %land.end
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %cmp = icmp ne i8* %call7, %call8
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.6
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RedundantClauses, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %call10 = call i32 @list_PointerMember(%struct.LIST_HELP* %8, i8* %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call13 to %struct.CLAUSE_HELP*
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call14 to %struct.CLAUSE_HELP*
  %call15 = call i32 @subs_NoException()
  %call16 = call i32 @subs_NoException()
  %call17 = call i32 @subs_Subsumes(%struct.CLAUSE_HELP* %11, %struct.CLAUSE_HELP* %13, i32 %call15, i32 %call16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.12
  store i32 0, i32* %Kept, align 4
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RedundantClauses, align 8
  %call20 = call %struct.LIST_HELP* @list_Cons(i8* %call19, %struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %RedundantClauses, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.12, %land.lhs.true, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond.2

for.end:                                          ; preds = %land.end
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call23 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RedundantClauses, align 8
  %call25 = call %struct.LIST_HELP* @list_NPointerDifference(%struct.LIST_HELP* %18, %struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Clauses.addr, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RedundantClauses, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %20)
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  ret %struct.LIST_HELP* %21
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

declare i32 @subs_Subsumes(%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @subs_NoException() #1 {
entry:
  ret i32 -1
}

declare %struct.LIST_HELP* @list_NPointerDifference(%struct.LIST_HELP*, %struct.LIST_HELP*) #2

declare void @clause_DeleteClauseList(%struct.LIST_HELP*) #2

; Function Attrs: nounwind uwtable
define %struct.SORTTHEORY_HELP* @sort_ApproxStaticSortTheory(%struct.LIST_HELP* %Clauses, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %ApproxClauses = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca %struct.SORTTHEORY_HELP*, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.SORTTHEORY_HELP* @sort_TheoryCreate()
  store %struct.SORTTHEORY_HELP* %call, %struct.SORTTHEORY_HELP** %Result, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %1 = load i32*, i32** %Flags.addr, align 8
  %2 = load i32*, i32** %Precedence.addr, align 8
  %call1 = call %struct.LIST_HELP* @sort_ApproxClauses(%struct.LIST_HELP* %0, i32* %1, i32* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %ApproxClauses, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxClauses, align 8
  %call2 = call %struct.LIST_HELP* @sort_EliminateSubsumedClauses(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %ApproxClauses, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxClauses, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call4 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %7, %struct.CLAUSE_HELP** %Clause, align 8
  %8 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Result, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call5 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %12)
  %call6 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %11, i32 %call5)
  call void @sort_TheoryInsertClause(%struct.SORTTHEORY_HELP* %8, %struct.CLAUSE_HELP* %9, %struct.CLAUSE_HELP* %10, %struct.LITERAL_HELP* %call6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Result, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxClauses, align 8
  %call8 = call i32 @sort_SortTheoryIsTrivial(%struct.SORTTHEORY_HELP* %14, %struct.LIST_HELP* %15)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %16 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Result, align 8
  call void @sort_TheoryDelete(%struct.SORTTHEORY_HELP* %16)
  store %struct.SORTTHEORY_HELP* null, %struct.SORTTHEORY_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %17 = load i32*, i32** %Flags.addr, align 8
  %call10 = call i32 @flag_GetFlagValue(i32* %17, i32 8)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %if.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %18)
  %19 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Result, align 8
  %tobool14 = icmp ne %struct.SORTTHEORY_HELP* %19, null
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.12
  %call16 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %20 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Result, align 8
  call void @sort_TheoryPrint(%struct.SORTTHEORY_HELP* %20)
  br label %if.end.18

if.else:                                          ; preds = %if.then.12
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call17 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %21)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxClauses, align 8
  call void @list_Delete(%struct.LIST_HELP* %22)
  %23 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Result, align 8
  ret %struct.SORTTHEORY_HELP* %23
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @sort_ApproxClauses(%struct.LIST_HELP* %Clauses, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %ApproxClauses = alloca %struct.LIST_HELP*, align 8
  %ActClause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call2 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %2, %struct.CLAUSE_HELP** %ActClause, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ActClause, align 8
  %4 = load i32*, i32** %Flags.addr, align 8
  %5 = load i32*, i32** %Precedence.addr, align 8
  %call3 = call %struct.LIST_HELP* @sort_ApproxHornClauses(%struct.CLAUSE_HELP* %3, i32* %4, i32* %5)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %ApproxClauses, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxClauses, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call4 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %6, %struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Result, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %9
}

; Function Attrs: nounwind uwtable
define internal i32 @sort_SortTheoryIsTrivial(%struct.SORTTHEORY_HELP* %Theory, %struct.LIST_HELP* %Clauses) #0 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Sorts = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %Cond = alloca %struct.CONDITION_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Sorts, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call2 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %2, %struct.CLAUSE_HELP** %Clause, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call3 = call i32 @clause_Length(%struct.CLAUSE_HELP* %3)
  store i32 %call3, i32* %n, align 4
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Clauses.addr, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call5 = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %5)
  store i32 %call5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %9 = load i32, i32* %i, align 4
  %call6 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %8, i32 %9)
  %call7 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call6)
  %call8 = call i32 @term_TopSymbol(%struct.term* %call7)
  %conv = sext i32 %call8 to i64
  %10 = inttoptr i64 %conv to i8*
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sorts, align 8
  %call9 = call %struct.LIST_HELP* @list_Cons(i8* %10, %struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Sorts, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sorts, align 8
  %call10 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Sorts, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sorts, align 8
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.15, %while.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool13 = icmp ne i32 %call12, 0
  %lnot14 = xor i1 %tobool13, true
  br i1 %lnot14, label %while.body.15, label %while.end.19

while.body.15:                                    ; preds = %while.cond.11
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %17 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = ptrtoint i8* %call16 to i32
  %call17 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %17, i32 %19)
  %20 = bitcast %struct.LIST_HELP* %call17 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %16, i8* %20)
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %while.cond.11

while.end.19:                                     ; preds = %while.cond.11
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sorts, align 8
  %call20 = call i32 @list_Length(%struct.LIST_HELP* %22)
  store i32 %call20, i32* %n, align 4
  store i32 0, i32* %i, align 4
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sorts, align 8
  store %struct.LIST_HELP* %23, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %while.cond.21

while.cond.21:                                    ; preds = %if.end, %while.end.19
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot24 = xor i1 %tobool23, true
  br i1 %lnot24, label %while.body.25, label %while.end.33

while.body.25:                                    ; preds = %while.cond.21
  %25 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %call26 = call %struct.LIST_HELP* @sort_TopSort()
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %26)
  %27 = bitcast i8* %call27 to %struct.LIST_HELP*
  %call28 = call %struct.CONDITION_HELP* @sort_TheoryIsSubsortOfNoResidues(%struct.SORTTHEORY_HELP* %25, %struct.LIST_HELP* %call26, %struct.LIST_HELP* %27)
  store %struct.CONDITION_HELP* %call28, %struct.CONDITION_HELP** %Cond, align 8
  %tobool29 = icmp ne %struct.CONDITION_HELP* %call28, null
  br i1 %tobool29, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.25
  %28 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  call void @sort_ConditionDelete(%struct.CONDITION_HELP* %28)
  %29 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %29, 1
  store i32 %inc30, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.25
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call31 = call i8* @list_Car(%struct.LIST_HELP* %30)
  %31 = bitcast i8* %call31 to %struct.LIST_HELP*
  call void @sort_DeleteOne(%struct.LIST_HELP* %31)
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %32)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %while.cond.21

while.end.33:                                     ; preds = %while.cond.21
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sorts, align 8
  call void @list_Delete(%struct.LIST_HELP* %33)
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %n, align 4
  %cmp34 = icmp eq i32 %34, %35
  %conv35 = zext i1 %cmp34 to i32
  ret i32 %conv35
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

declare i32 @puts(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.SORTTHEORY_HELP* @sort_ApproxDynamicSortTheory(%struct.LIST_HELP* %Clauses) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  ret %struct.SORTTHEORY_HELP* null
}

; Function Attrs: nounwind uwtable
define i32 @sort_AnalyzeSortStructure(%struct.LIST_HELP* %Clauses, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Theory = alloca %struct.SORTTHEORY_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %Atom = alloca %struct.term*, align 8
  %Left = alloca %struct.term*, align 8
  %Right = alloca %struct.term*, align 8
  %SojuLeft = alloca %struct.LIST_HELP*, align 8
  %SojuRight = alloca %struct.LIST_HELP*, align 8
  %Cond = alloca %struct.CONDITION_HELP*, align 8
  %ManySorted = alloca i32, align 4
  %Decreasing = alloca i32, align 4
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.SORTTHEORY_HELP* @sort_TheoryCreate()
  store %struct.SORTTHEORY_HELP* %call, %struct.SORTTHEORY_HELP** %Theory, align 8
  store i32 1, i32* %ManySorted, align 4
  store i32 1, i32* %Decreasing, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
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
  %3 = bitcast i8* %call2 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %3, %struct.CLAUSE_HELP** %Clause, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %5 = load i32*, i32** %Flags.addr, align 8
  %6 = load i32*, i32** %Precedence.addr, align 8
  %call3 = call i32 @clause_IsPotentialSortTheoryClause(%struct.CLAUSE_HELP* %4, i32* %5, i32* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call5 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %7)
  store %struct.CLAUSE_HELP* %call5, %struct.CLAUSE_HELP** %Copy, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call6 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %9)
  %call7 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %8, i32 %call6)
  %call8 = call i32 @term_TopSymbol(%struct.term* %call7)
  call void @symbol_AddProperty(i32 %call8, i32 32)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call9 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %10)
  call void @list_Delete(%struct.LIST_HELP* %call9)
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call10 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %11, %struct.LIST_HELP* %call10)
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call11 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %12)
  call void @list_Delete(%struct.LIST_HELP* %call11)
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call12 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %13, %struct.LIST_HELP* %call12)
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call13 = call i32 @clause_Number(%struct.CLAUSE_HELP* %15)
  call void @clause_SetNumber(%struct.CLAUSE_HELP* %14, i32 %call13)
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %17 = load i32*, i32** %Flags.addr, align 8
  %18 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_SetSortConstraint(%struct.CLAUSE_HELP* %16, i32 0, i32* %17, i32* %18)
  %19 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory, align 8
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call14 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %23)
  %call15 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %22, i32 %call14)
  call void @sort_TheoryInsertClause(%struct.SORTTHEORY_HELP* %19, %struct.CLAUSE_HELP* %20, %struct.CLAUSE_HELP* %21, %struct.LITERAL_HELP* %call15)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %25, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.71, %for.end
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %26)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond.17
  %27 = load i32, i32* %Decreasing, align 4
  %tobool20 = icmp ne i32 %27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.17
  %28 = phi i1 [ false, %for.cond.17 ], [ %tobool20, %land.rhs ]
  br i1 %28, label %for.body.21, label %for.end.73

for.body.21:                                      ; preds = %land.end
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = bitcast i8* %call22 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %30, %struct.CLAUSE_HELP** %Clause, align 8
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call23 = call i32 @clause_Length(%struct.CLAUSE_HELP* %31)
  store i32 %call23, i32* %l, align 4
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call24 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %32)
  store i32 %call24, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.69, %for.body.21
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %l, align 4
  %cmp = icmp slt i32 %33, %34
  br i1 %cmp, label %land.rhs.26, label %land.end.28

land.rhs.26:                                      ; preds = %for.cond.25
  %35 = load i32, i32* %Decreasing, align 4
  %tobool27 = icmp ne i32 %35, 0
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.26, %for.cond.25
  %36 = phi i1 [ false, %for.cond.25 ], [ %tobool27, %land.rhs.26 ]
  br i1 %36, label %for.body.29, label %for.end.70

for.body.29:                                      ; preds = %land.end.28
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %38 = load i32, i32* %i, align 4
  %call30 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %37, i32 %38)
  store %struct.term* %call30, %struct.term** %Atom, align 8
  %39 = load %struct.term*, %struct.term** %Atom, align 8
  %call31 = call i32 @fol_IsEquality(%struct.term* %39)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.68

if.then.33:                                       ; preds = %for.body.29
  %40 = load %struct.term*, %struct.term** %Atom, align 8
  %call34 = call %struct.term* @term_FirstArgument(%struct.term* %40)
  store %struct.term* %call34, %struct.term** %Left, align 8
  %41 = load %struct.term*, %struct.term** %Atom, align 8
  %call35 = call %struct.term* @term_SecondArgument(%struct.term* %41)
  store %struct.term* %call35, %struct.term** %Right, align 8
  %42 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory, align 8
  %43 = load %struct.term*, %struct.term** %Left, align 8
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %45 = load i32, i32* %i, align 4
  %46 = load i32*, i32** %Flags.addr, align 8
  %47 = load i32*, i32** %Precedence.addr, align 8
  %call36 = call %struct.LIST_HELP* @sort_ComputeSortNoResidues(%struct.SORTTHEORY_HELP* %42, %struct.term* %43, %struct.CLAUSE_HELP* %44, i32 %45, i32* %46, i32* %47)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %SojuLeft, align 8
  %48 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory, align 8
  %49 = load %struct.term*, %struct.term** %Right, align 8
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %51 = load i32, i32* %i, align 4
  %52 = load i32*, i32** %Flags.addr, align 8
  %53 = load i32*, i32** %Precedence.addr, align 8
  %call37 = call %struct.LIST_HELP* @sort_ComputeSortNoResidues(%struct.SORTTHEORY_HELP* %48, %struct.term* %49, %struct.CLAUSE_HELP* %50, i32 %51, i32* %52, i32* %53)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %SojuRight, align 8
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SojuRight, align 8
  %call38 = call i8* @sort_PairSort(%struct.LIST_HELP* %54)
  %55 = bitcast i8* %call38 to %struct.LIST_HELP*
  %call39 = call i32 @sort_IsTopSort(%struct.LIST_HELP* %55)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.33
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SojuLeft, align 8
  %call41 = call i8* @sort_PairSort(%struct.LIST_HELP* %56)
  %57 = bitcast i8* %call41 to %struct.LIST_HELP*
  %call42 = call i32 @sort_IsTopSort(%struct.LIST_HELP* %57)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %lor.lhs.false, %if.then.33
  store i32 0, i32* %ManySorted, align 4
  store i32 0, i32* %Decreasing, align 4
  br label %if.end.67

if.else:                                          ; preds = %lor.lhs.false
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SojuRight, align 8
  %call45 = call i8* @sort_PairSort(%struct.LIST_HELP* %58)
  %59 = bitcast i8* %call45 to %struct.LIST_HELP*
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SojuLeft, align 8
  %call46 = call i8* @sort_PairSort(%struct.LIST_HELP* %60)
  %61 = bitcast i8* %call46 to %struct.LIST_HELP*
  %call47 = call i32 @sort_Eq(%struct.LIST_HELP* %59, %struct.LIST_HELP* %61)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.66, label %if.then.49

if.then.49:                                       ; preds = %if.else
  store i32 0, i32* %ManySorted, align 4
  %62 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory, align 8
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SojuRight, align 8
  %call50 = call i8* @sort_PairSort(%struct.LIST_HELP* %63)
  %64 = bitcast i8* %call50 to %struct.LIST_HELP*
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SojuLeft, align 8
  %call51 = call i8* @sort_PairSort(%struct.LIST_HELP* %65)
  %66 = bitcast i8* %call51 to %struct.LIST_HELP*
  %call52 = call %struct.CONDITION_HELP* @sort_TheoryIsSubsortOfNoResidues(%struct.SORTTHEORY_HELP* %62, %struct.LIST_HELP* %64, %struct.LIST_HELP* %66)
  store %struct.CONDITION_HELP* %call52, %struct.CONDITION_HELP** %Cond, align 8
  %67 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %tobool53 = icmp ne %struct.CONDITION_HELP* %67, null
  br i1 %tobool53, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %if.then.49
  %68 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %69 = load i32, i32* %i, align 4
  %call54 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %68, i32 %69)
  %call55 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call54)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.61, label %if.then.57

if.then.57:                                       ; preds = %land.lhs.true
  %70 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  call void @sort_ConditionDelete(%struct.CONDITION_HELP* %70)
  %71 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory, align 8
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SojuLeft, align 8
  %call58 = call i8* @sort_PairSort(%struct.LIST_HELP* %72)
  %73 = bitcast i8* %call58 to %struct.LIST_HELP*
  %74 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SojuRight, align 8
  %call59 = call i8* @sort_PairSort(%struct.LIST_HELP* %74)
  %75 = bitcast i8* %call59 to %struct.LIST_HELP*
  %call60 = call %struct.CONDITION_HELP* @sort_TheoryIsSubsortOfNoResidues(%struct.SORTTHEORY_HELP* %71, %struct.LIST_HELP* %73, %struct.LIST_HELP* %75)
  store %struct.CONDITION_HELP* %call60, %struct.CONDITION_HELP** %Cond, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %land.lhs.true, %if.then.49
  %76 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %tobool62 = icmp ne %struct.CONDITION_HELP* %76, null
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.61
  %77 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  call void @sort_ConditionDelete(%struct.CONDITION_HELP* %77)
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.61
  store i32 0, i32* %Decreasing, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.64, %if.then.63
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.else
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.44
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SojuLeft, align 8
  call void @sort_PairDelete(%struct.LIST_HELP* %78)
  %79 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SojuRight, align 8
  call void @sort_PairDelete(%struct.LIST_HELP* %79)
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %for.body.29
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %80 = load i32, i32* %i, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.25

for.end.70:                                       ; preds = %land.end.28
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.end.70
  %81 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call72 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %81)
  store %struct.LIST_HELP* %call72, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.17

for.end.73:                                       ; preds = %land.end
  %82 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory, align 8
  call void @sort_TheoryDelete(%struct.SORTTHEORY_HELP* %82)
  %83 = load i32, i32* %ManySorted, align 4
  %tobool74 = icmp ne i32 %83, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.end.73
  store i32 3, i32* %retval
  br label %return

if.end.76:                                        ; preds = %for.end.73
  %84 = load i32, i32* %Decreasing, align 4
  %tobool77 = icmp ne i32 %84, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.76
  store i32 2, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.end.76
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.79, %if.then.78, %if.then.75
  %85 = load i32, i32* %retval
  ret i32 %85
}

declare i32 @clause_IsPotentialSortTheoryClause(%struct.CLAUSE_HELP*, i32*, i32*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_AddProperty(i32 %ActSymbol, i32 %Property) #1 {
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
define internal void @clause_SetNumber(%struct.CLAUSE_HELP* %Clause, i32 %Number) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Number.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Number, i32* %Number.addr, align 4
  %0 = load i32, i32* %Number.addr, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %clausenumber = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 0
  store i32 %0, i32* %clausenumber, align 4
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

declare void @clause_SetSortConstraint(%struct.CLAUSE_HELP*, i32, i32*, i32*) #2

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
define internal i32 @sort_IsTopSort(%struct.LIST_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %S, %struct.LIST_HELP** %S.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  ret i32 %call
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

declare void @term_PrintPrefix(%struct.term*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckIndexInRange(i32 %Index) #1 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
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
define internal void @sort_PutNodeLinks(%struct.NODE_HELP* %N, %struct.LIST_HELP* %C) #1 {
entry:
  %N.addr = alloca %struct.NODE_HELP*, align 8
  %C.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  store %struct.LIST_HELP* %C, %struct.LIST_HELP** %C.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %C.addr, align 8
  %1 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %links = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %1, i32 0, i32 0
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %links, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutNodeMark(%struct.NODE_HELP* %N, i32 %M) #1 {
entry:
  %N.addr = alloca %struct.NODE_HELP*, align 8
  %M.addr = alloca i32, align 4
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  %0 = load i32, i32* %M.addr, align 4
  %1 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %mark = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %1, i32 0, i32 1
  store i32 %0, i32* %mark, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutNodeStart(%struct.NODE_HELP* %N, i32 %S) #1 {
entry:
  %N.addr = alloca %struct.NODE_HELP*, align 8
  %S.addr = alloca i32, align 4
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %1 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %start = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %1, i32 0, i32 2
  store i32 %0, i32* %start, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutNodeExtra(%struct.NODE_HELP* %N, i32 %M) #1 {
entry:
  %N.addr = alloca %struct.NODE_HELP*, align 8
  %M.addr = alloca i32, align 4
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  %0 = load i32, i32* %M.addr, align 4
  %1 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %extra = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %1, i32 0, i32 3
  store i32 %0, i32* %extra, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutNodeSymbol(%struct.NODE_HELP* %N, i32 %S) #1 {
entry:
  %N.addr = alloca %struct.NODE_HELP*, align 8
  %S.addr = alloca i32, align 4
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %1 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %symbol = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %1, i32 0, i32 5
  store i32 %0, i32* %symbol, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sort_LinkCard(%struct.SLINK_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  %0 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %card = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %0, i32 0, i32 2
  %1 = load i32, i32* %card, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sort_LinkFire(%struct.SLINK_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  %0 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %fire = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %0, i32 0, i32 3
  %1 = load i32, i32* %fire, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_NodeLinks(%struct.NODE_HELP* %N) #1 {
entry:
  %N.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  %0 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %links = getelementptr inbounds %struct.NODE_HELP, %struct.NODE_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %links, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_LinkFree(%struct.SLINK_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  %0 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %1 = bitcast %struct.SLINK_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 64)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_NodeFree(%struct.NODE_HELP* %N) #1 {
entry:
  %N.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.NODE_HELP* %N, %struct.NODE_HELP** %N.addr, align 8
  %0 = load %struct.NODE_HELP*, %struct.NODE_HELP** %N.addr, align 8
  %1 = bitcast %struct.NODE_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 40)
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
define internal i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  ret i32 0
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
define internal void @sort_PutLinkInput(%struct.SLINK_HELP* %S, %struct.LIST_HELP* %T) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  %T.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  store %struct.LIST_HELP* %T, %struct.LIST_HELP** %T.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %T.addr, align 8
  %1 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %input = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %1, i32 0, i32 0
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %input, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutLinkOutput(%struct.SLINK_HELP* %S, %struct.NODE_HELP* %H) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  %H.addr = alloca %struct.NODE_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  store %struct.NODE_HELP* %H, %struct.NODE_HELP** %H.addr, align 8
  %0 = load %struct.NODE_HELP*, %struct.NODE_HELP** %H.addr, align 8
  %1 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %output = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %1, i32 0, i32 1
  store %struct.NODE_HELP* %0, %struct.NODE_HELP** %output, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutLinkVar(%struct.SLINK_HELP* %S, i32 %V) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  %V.addr = alloca i32, align 4
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  store i32 %V, i32* %V.addr, align 4
  %0 = load i32, i32* %V.addr, align 4
  %1 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %var = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %1, i32 0, i32 7
  store i32 %0, i32* %var, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutLinkConstraint(%struct.SLINK_HELP* %S, %struct.LIST_HELP* %T) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  %T.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  store %struct.LIST_HELP* %T, %struct.LIST_HELP** %T.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %T.addr, align 8
  %1 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %constraint = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %1, i32 0, i32 4
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %constraint, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutLinkAntecedent(%struct.SLINK_HELP* %S, %struct.LIST_HELP* %T) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  %T.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  store %struct.LIST_HELP* %T, %struct.LIST_HELP** %T.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %T.addr, align 8
  %1 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %antecedent = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %1, i32 0, i32 5
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %antecedent, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutLinkSuccedent(%struct.SLINK_HELP* %S, %struct.LIST_HELP* %T) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  %T.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  store %struct.LIST_HELP* %T, %struct.LIST_HELP** %T.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %T.addr, align 8
  %1 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %succedent = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %1, i32 0, i32 6
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %succedent, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutLinkCard(%struct.SLINK_HELP* %S, i32 %L) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  %L.addr = alloca i32, align 4
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  %0 = load i32, i32* %L.addr, align 4
  %1 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %card = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %1, i32 0, i32 2
  store i32 %0, i32* %card, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_PutLinkClause(%struct.SLINK_HELP* %S, %struct.CLAUSE_HELP* %C) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %1 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %clause = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %1, i32 0, i32 8
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %clause, align 8
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

declare %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP*, i8* (i8*)*) #2

declare void @term_Delete(%struct.term*) #2

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
define internal i32 @sort_LinkDecrementFire(%struct.SLINK_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.SLINK_HELP*, align 8
  store %struct.SLINK_HELP* %S, %struct.SLINK_HELP** %S.addr, align 8
  %0 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %fire = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %0, i32 0, i32 3
  %1 = load i32, i32* %fire, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %fire, align 4
  %2 = load %struct.SLINK_HELP*, %struct.SLINK_HELP** %S.addr, align 8
  %fire1 = getelementptr inbounds %struct.SLINK_HELP, %struct.SLINK_HELP* %2, i32 0, i32 3
  %3 = load i32, i32* %fire1, align 4
  ret i32 %3
}

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
define internal %struct.LIST_HELP* @sort_VarSort(%struct.SORTTHEORY_HELP* %Theory, i32 %Var, %struct.CLAUSE_HELP* %Clause, i32 %i) #0 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Var.addr = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %j = alloca i32, align 4
  %Atom = alloca %struct.term*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %call = call %struct.LIST_HELP* @sort_TopSort()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %2)
  %cmp = icmp sle i32 %1, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %i.addr, align 4
  %cmp3 = icmp ne i32 %3, %4
  br i1 %cmp3, label %if.then, label %if.end.15

if.then:                                          ; preds = %for.body
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load i32, i32* %j, align 4
  %call4 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %5, i32 %6)
  %call5 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call4)
  store %struct.term* %call5, %struct.term** %Atom, align 8
  %7 = load %struct.term*, %struct.term** %Atom, align 8
  %call6 = call i32 @term_TopSymbol(%struct.term* %7)
  %call7 = call i32 @symbol_IsBaseSort(i32 %call6)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct.term*, %struct.term** %Atom, align 8
  %call8 = call %struct.term* @term_FirstArgument(%struct.term* %8)
  %call9 = call i32 @term_TopSymbol(%struct.term* %call8)
  %9 = load i32, i32* %Var.addr, align 4
  %cmp10 = icmp eq i32 %call9, %9
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %11 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %12 = load %struct.term*, %struct.term** %Atom, align 8
  %call12 = call i32 @term_TopSymbol(%struct.term* %12)
  %call13 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %11, i32 %call12)
  %call14 = call %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %10, %struct.LIST_HELP* %call13)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true, %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %14
}

declare %struct.LIST_HELP* @st_GetGen(%struct.binding*, %struct.st*, %struct.term*) #2

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

declare i32 @clause_IsSortTheoryClause(%struct.CLAUSE_HELP*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sort_MatchNoResidues(%struct.SORTTHEORY_HELP* %Theory, %struct.term* %Term1, %struct.term* %Term2, %struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP** %Clauses) #0 {
entry:
  %retval = alloca i32, align 4
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP**, align 8
  %l = alloca i32, align 4
  %subst = alloca %struct.subst*, align 8
  %scan = alloca %struct.subst*, align 8
  %varsort = alloca %struct.LIST_HELP*, align 8
  %NewClauses = alloca %struct.LIST_HELP*, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  %Cond = alloca %struct.CONDITION_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP** %Clauses, %struct.LIST_HELP*** %Clauses.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %l, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %NewClauses, align 8
  call void @cont_StartBinding()
  %call2 = call %struct.binding* @cont_LeftContext()
  %1 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %2 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call3 = call i32 @unify_Match(%struct.binding* %call2, %struct.term* %1, %struct.term* %2)
  %call4 = call %struct.subst* @subst_ExtractMatcher()
  store %struct.subst* %call4, %struct.subst** %subst, align 8
  %call5 = call i32 @cont_BackTrack()
  %3 = load %struct.subst*, %struct.subst** %subst, align 8
  store %struct.subst* %3, %struct.subst** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.subst*, %struct.subst** %scan, align 8
  %call6 = call i32 @subst_Empty(%struct.subst* %4)
  %tobool = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %6 = load %struct.subst*, %struct.subst** %scan, align 8
  %call7 = call i32 @subst_Dom(%struct.subst* %6)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %8 = load i32, i32* %l, align 4
  %call8 = call %struct.LIST_HELP* @sort_VarSort(%struct.SORTTHEORY_HELP* %5, i32 %call7, %struct.CLAUSE_HELP* %7, i32 %8)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %varsort, align 8
  %9 = load %struct.subst*, %struct.subst** %scan, align 8
  %call9 = call %struct.term* @subst_Cod(%struct.subst* %9)
  %10 = bitcast %struct.term* %call9 to i8*
  %call10 = call i8* @hash_Get(i8* %10)
  %11 = bitcast i8* %call10 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %Pair, align 8
  %12 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call11 = call i8* @sort_PairSort(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call11 to %struct.LIST_HELP*
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varsort, align 8
  %call12 = call %struct.CONDITION_HELP* @sort_TheoryIsSubsortOfNoResidues(%struct.SORTTHEORY_HELP* %12, %struct.LIST_HELP* %14, %struct.LIST_HELP* %15)
  store %struct.CONDITION_HELP* %call12, %struct.CONDITION_HELP** %Cond, align 8
  %cmp = icmp eq %struct.CONDITION_HELP* %call12, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varsort, align 8
  call void @sort_DeleteOne(%struct.LIST_HELP* %16)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  call void @list_Delete(%struct.LIST_HELP* %17)
  %18 = load %struct.subst*, %struct.subst** %subst, align 8
  call void @subst_Free(%struct.subst* %18)
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %for.body
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call13 = call i8* @sort_PairCondition(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call13 to %struct.CONDITION_HELP*
  %call14 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %21)
  %call15 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call14)
  %call16 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %19, %struct.LIST_HELP* %call15)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %NewClauses, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  %23 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call17 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %23)
  %call18 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %22, %struct.LIST_HELP* %call17)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %NewClauses, align 8
  %24 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call19 = call %struct.LIST_HELP* @list_Nil()
  call void @sort_ConditionPutClauses(%struct.CONDITION_HELP* %24, %struct.LIST_HELP* %call19)
  %25 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  call void @sort_ConditionDelete(%struct.CONDITION_HELP* %25)
  br label %if.end

if.end:                                           ; preds = %if.else
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varsort, align 8
  call void @sort_DeleteOne(%struct.LIST_HELP* %26)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load %struct.subst*, %struct.subst** %scan, align 8
  %call20 = call %struct.subst* @subst_Next(%struct.subst* %27)
  store %struct.subst* %call20, %struct.subst** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.subst*, %struct.subst** %subst, align 8
  call void @subst_Free(%struct.subst* %28)
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  %30 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %30, align 8
  %call21 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %29, %struct.LIST_HELP* %31)
  %32 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %32, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
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

declare %struct.subst* @subst_ExtractMatcher() #2

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
define internal %struct.term* @subst_Cod(%struct.subst* %S) #1 {
entry:
  %S.addr = alloca %struct.subst*, align 8
  store %struct.subst* %S, %struct.subst** %S.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %S.addr, align 8
  %codomain = getelementptr inbounds %struct.subst, %struct.subst* %0, i32 0, i32 2
  %1 = load %struct.term*, %struct.term** %codomain, align 8
  ret %struct.term* %1
}

declare void @subst_Free(%struct.subst*) #2

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
define internal %struct.subst* @subst_Nil() #1 {
entry:
  ret %struct.subst* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @hash_PutList(i32 %Index, %struct.LIST_HELP* %List) #1 {
entry:
  %Index.addr = alloca i32, align 4
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store i32 %Index, i32* %Index.addr, align 4
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %1 = load i32, i32* %Index.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [29 x %struct.LIST_HELP*], [29 x %struct.LIST_HELP*]* @hash_TABLE, i32 0, i64 %idxprom
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @hash_Index(i8* %Key) #1 {
entry:
  %Key.addr = alloca i8*, align 8
  store i8* %Key, i8** %Key.addr, align 8
  %0 = load i8*, i8** %Key.addr, align 8
  %1 = ptrtoint i8* %0 to i32
  %rem = urem i32 %1, 29
  ret i32 %rem
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @hash_List(i32 %Index) #1 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [29 x %struct.LIST_HELP*], [29 x %struct.LIST_HELP*]* @hash_TABLE, i32 0, i64 %idxprom
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx, align 8
  ret %struct.LIST_HELP* %1
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
define internal i32 @fol_Not() #1 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
}

declare %struct.LIST_HELP* @term_RenamePseudoLinear(%struct.term*, i32) #2

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #2

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @sort_ApproxHornClauses(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %NewConstraint = alloca %struct.LIST_HELP*, align 8
  %NewSuccedent = alloca %struct.LIST_HELP*, align 8
  %NewClause = alloca %struct.CLAUSE_HELP*, align 8
  %LitK = alloca %struct.LITERAL_HELP*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %j = alloca i32, align 4
  %lc = alloca i32, align 4
  %pli = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load i32*, i32** %Flags.addr, align 8
  %2 = load i32*, i32** %Precedence.addr, align 8
  %call1 = call i32 @clause_HasOnlyVarsInConstraint(%struct.CLAUSE_HELP* %0, i32* %1, i32* %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32*, i32** %Flags.addr, align 8
  %5 = load i32*, i32** %Precedence.addr, align 8
  %call2 = call i32 @clause_HasSortInSuccedent(%struct.CLAUSE_HELP* %3, i32* %4, i32* %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end.45

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_Length(%struct.CLAUSE_HELP* %6)
  store i32 %call4, i32* %length, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call5 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %7)
  store i32 %call5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %if.then
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.44

for.body:                                         ; preds = %for.cond
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %11 = load i32, i32* %i, align 4
  %call6 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %10, i32 %11)
  store %struct.LITERAL_HELP* %call6, %struct.LITERAL_HELP** %LitK, align 8
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %LitK, align 8
  %call7 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %12)
  %call8 = call i32 @term_TopSymbol(%struct.term* %call7)
  %call9 = call i32 @symbol_Arity(i32 %call8)
  %cmp10 = icmp eq i32 %call9, 1
  br i1 %cmp10, label %if.then.11, label %if.end.41

if.then.11:                                       ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  store i32 %13, i32* %pli, align 4
  %14 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %LitK, align 8
  %call12 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %14)
  %call13 = call %struct.term* @term_Copy(%struct.term* %call12)
  %15 = bitcast %struct.term* %call13 to i8*
  %call14 = call %struct.LIST_HELP* @list_List(i8* %15)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %NewSuccedent, align 8
  %call15 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %NewConstraint, align 8
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call16 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %16)
  store i32 %call16, i32* %lc, align 4
  %call17 = call i32 @clause_FirstLitIndex()
  store i32 %call17, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %if.then.11
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %lc, align 4
  %cmp19 = icmp sle i32 %17, %18
  br i1 %cmp19, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.18
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %LitK, align 8
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %21 = load i32, i32* %j, align 4
  %call21 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %20, i32 %21)
  %call22 = call i32 @clause_LitsHaveCommonVar(%struct.LITERAL_HELP* %19, %struct.LITERAL_HELP* %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %for.body.20
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %23 = load i32, i32* %j, align 4
  %call25 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %22, i32 %23)
  %call26 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call25)
  %call27 = call %struct.term* @term_Copy(%struct.term* %call26)
  %24 = bitcast %struct.term* %call27 to i8*
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  %call28 = call %struct.LIST_HELP* @list_Cons(i8* %24, %struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %NewConstraint, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.24, %for.body.20
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  %call29 = call i32 @list_Empty(%struct.LIST_HELP* %27)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.35, label %if.then.31

if.then.31:                                       ; preds = %for.end
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewSuccedent, align 8
  %call32 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = bitcast i8* %call32 to %struct.term*
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call33 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %31)
  %call34 = call %struct.LIST_HELP* @sort_ApproxPseudoLinear(%struct.LIST_HELP* %28, %struct.term* %30, i32 %call33)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %NewConstraint, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %for.end
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  %call36 = call %struct.LIST_HELP* @list_Nil()
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewSuccedent, align 8
  %34 = load i32*, i32** %Flags.addr, align 8
  %35 = load i32*, i32** %Precedence.addr, align 8
  %call37 = call %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP* %32, %struct.LIST_HELP* %call36, %struct.LIST_HELP* %33, i32* %34, i32* %35)
  store %struct.CLAUSE_HELP* %call37, %struct.CLAUSE_HELP** %NewClause, align 8
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetSplitLevel(%struct.CLAUSE_HELP* %36, i32 0)
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %37, i32 1)
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromClauseDeletion(%struct.CLAUSE_HELP* %38)
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call38 = call i32 @clause_Number(%struct.CLAUSE_HELP* %40)
  %conv = sext i32 %call38 to i64
  %41 = inttoptr i64 %conv to i8*
  %call39 = call %struct.LIST_HELP* @list_List(i8* %41)
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %39, %struct.LIST_HELP* %call39)
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %43 = load i32, i32* %pli, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %42, i32 %43)
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewConstraint, align 8
  call void @list_Delete(%struct.LIST_HELP* %44)
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewSuccedent, align 8
  call void @list_Delete(%struct.LIST_HELP* %45)
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %47 = bitcast %struct.CLAUSE_HELP* %46 to i8*
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call40 = call %struct.LIST_HELP* @list_Cons(i8* %47, %struct.LIST_HELP* %48)
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %Result, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.35, %for.body
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %49 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %49, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond

for.end.44:                                       ; preds = %for.cond
  br label %if.end.45

if.end.45:                                        ; preds = %for.end.44, %land.lhs.true, %entry
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %50
}

declare i32 @clause_HasOnlyVarsInConstraint(%struct.CLAUSE_HELP*, i32*, i32*) #2

declare i32 @clause_HasSortInSuccedent(%struct.CLAUSE_HELP*, i32*, i32*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagIdInRange(i32 %FlagId) #1 {
entry:
  %FlagId.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
