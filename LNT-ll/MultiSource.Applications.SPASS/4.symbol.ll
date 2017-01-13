; ModuleID = './MultiSource.Applications.SPASS/4.symbol.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }

@symbol_MASK = constant i32 3, align 4
@symbol_TYPEMASK = constant i32 3, align 4
@symbol_STATMASK = constant i32 4, align 4
@symbol_TYPESTATMASK = constant i32 7, align 4
@symbol_TYPEBITS = constant i32 2, align 4
@symbol_STATBITS = constant i32 1, align 4
@symbol_TYPESTATBITS = constant i32 3, align 4
@symbol_SIGTYPES = constant i32 4, align 4
@symbol_SKFNAME = constant [4 x i8] c"skf\00", align 1
@symbol_SKCNAME = constant [4 x i8] c"skc\00", align 1
@symbol_SKPNAME = constant [4 x i8] c"SkP\00", align 1
@symbol_SKANAME = constant [4 x i8] c"SkC\00", align 1
@symbol_SKLENGTH = constant i32 3, align 4
@symbol_ORDERING = common global i32 0, align 4
@symbol_ACTINDEX = common global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@symbol_ACTSKOLEMCINDEX = common global i32 0, align 4
@symbol_ACTSKOLEMFINDEX = common global i32 0, align 4
@symbol_ACTSKOLEMAINDEX = common global i32 0, align 4
@symbol_ACTSKOLEMPINDEX = common global i32 0, align 4
@symbol_FREEDSYMBOLS = internal global %struct.LIST_HELP* null, align 8
@symbol_SIGNATURE = common global %struct.signature** null, align 8
@symbol_VARSTRING = common global i8* null, align 8
@symbol_STANDARDVARCOUNTER = common global i32 0, align 4
@symbol_INDEXVARCOUNTER = common global i32 0, align 4
@symbol_HASSIGNATURE = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Dump:\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"\0A\09 %4d:%4d:%4d:%4d:%4d:%s:%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" > \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"set_precedence(\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c").\00", align 1
@symbol_COUNT = internal global [4000 x i64] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"X%d\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"I%d\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"x%d\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"c%s\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"f%s\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"P%s\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" Type\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c" Arity\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" Stat\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c" Prop\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c" String\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c" Con\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" Fun\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c" Pre\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c" Jun\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c" %3d\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c" Lex\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c" Mul\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@symbol_CONTEXT = common global [4000 x i32] zeroinitializer, align 16
@.str.31 = private unnamed_addr constant [57 x i8] c"\0A In symbol_SignatureCreate: No more symbols available.\0A\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"\0A In symbol_SignatureCreate: String too long.\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4

; Function Attrs: nounwind uwtable
define i32 @symbol_GetIncreasedOrderingCounter() #0 {
entry:
  %0 = load i32, i32* @symbol_ORDERING, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @symbol_ORDERING, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @symbol_MaxStringLength() #0 {
entry:
  %Index = alloca i32, align 4
  %Result = alloca i32, align 4
  %Length = alloca i32, align 4
  %Entry = alloca %struct.signature*, align 8
  store i32 0, i32* %Result, align 4
  store i32 1, i32* %Index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %Index, align 4
  %1 = load i32, i32* @symbol_ACTINDEX, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %Index, align 4
  %call = call %struct.signature* @symbol_Signature(i32 %2)
  store %struct.signature* %call, %struct.signature** %Entry, align 8
  %3 = load %struct.signature*, %struct.signature** %Entry, align 8
  %cmp1 = icmp ne %struct.signature* %3, null
  br i1 %cmp1, label %if.then, label %if.end.4

if.then:                                          ; preds = %for.body
  %4 = load %struct.signature*, %struct.signature** %Entry, align 8
  %length = getelementptr inbounds %struct.signature, %struct.signature* %4, i32 0, i32 1
  %5 = load i32, i32* %length, align 4
  store i32 %5, i32* %Length, align 4
  %6 = load i32, i32* %Length, align 4
  %7 = load i32, i32* %Result, align 4
  %cmp2 = icmp ugt i32 %6, %7
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %Length, align 4
  store i32 %8, i32* %Result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %9 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %Result, align 4
  ret i32 %10
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

; Function Attrs: nounwind uwtable
define i32 @symbol_CreateFunction(i8* %String, i32 %Arity, i32 %Status, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %String.addr = alloca i8*, align 8
  %Arity.addr = alloca i32, align 4
  %Status.addr = alloca i32, align 4
  %Precedence.addr = alloca i32*, align 8
  store i8* %String, i8** %String.addr, align 8
  store i32 %Arity, i32* %Arity.addr, align 4
  store i32 %Status, i32* %Status.addr, align 4
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load i32, i32* %Arity.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* @memory_Malloc(i32 64)
  %1 = load i8*, i8** %String.addr, align 8
  %call1 = call i8* @strcpy(i8* %call, i8* %1) #6
  %2 = load i32, i32* %Arity.addr, align 4
  %3 = load i32, i32* %Status.addr, align 4
  %4 = load i32*, i32** %Precedence.addr, align 8
  %call2 = call i32 @symbol_SignatureCreate(i8* %call1, i32 0, i32 %2, i32 %3, i32* %4)
  store i32 %call2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %call3 = call i8* @memory_Malloc(i32 64)
  %5 = load i8*, i8** %String.addr, align 8
  %call4 = call i8* @strcpy(i8* %call3, i8* %5) #6
  %6 = load i32, i32* %Arity.addr, align 4
  %7 = load i32, i32* %Status.addr, align 4
  %8 = load i32*, i32** %Precedence.addr, align 8
  %call5 = call i32 @symbol_SignatureCreate(i8* %call4, i32 1, i32 %6, i32 %7, i32* %8)
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @symbol_SignatureCreate(i8* %String, i32 %Type, i32 %Arity, i32 %Status, i32* %Precedence) #0 {
entry:
  %String.addr = alloca i8*, align 8
  %Type.addr = alloca i32, align 4
  %Arity.addr = alloca i32, align 4
  %Status.addr = alloca i32, align 4
  %Precedence.addr = alloca i32*, align 8
  %Entry = alloca %struct.signature*, align 8
  %Index = alloca i32, align 4
  store i8* %String, i8** %String.addr, align 8
  store i32 %Type, i32* %Type.addr, align 4
  store i32 %Arity, i32* %Arity.addr, align 4
  store i32 %Status, i32* %Status.addr, align 4
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load i32, i32* @symbol_ACTINDEX, align 4
  %cmp = icmp sge i32 %0, 4000
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** @symbol_FREEDSYMBOLS, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %2)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i8*, i8** %String.addr, align 8
  %call2 = call i64 @strlen(i8* %3) #7
  %cmp3 = icmp uge i64 %call2, 64
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %4)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %call7 = call %struct.signature* @symbol_GetSignature()
  store %struct.signature* %call7, %struct.signature** %Entry, align 8
  %5 = load %struct.signature*, %struct.signature** %Entry, align 8
  %weight = getelementptr inbounds %struct.signature, %struct.signature* %5, i32 0, i32 2
  store i32 1, i32* %weight, align 4
  %6 = load %struct.signature*, %struct.signature** %Entry, align 8
  %props = getelementptr inbounds %struct.signature, %struct.signature* %6, i32 0, i32 4
  store i32 0, i32* %props, align 4
  %7 = load i8*, i8** %String.addr, align 8
  %8 = load %struct.signature*, %struct.signature** %Entry, align 8
  %name = getelementptr inbounds %struct.signature, %struct.signature* %8, i32 0, i32 0
  store i8* %7, i8** %name, align 8
  %9 = load i8*, i8** %String.addr, align 8
  %call8 = call i64 @strlen(i8* %9) #7
  %conv = trunc i64 %call8 to i32
  %10 = load %struct.signature*, %struct.signature** %Entry, align 8
  %length = getelementptr inbounds %struct.signature, %struct.signature* %10, i32 0, i32 1
  store i32 %conv, i32* %length, align 4
  %11 = load i32, i32* %Arity.addr, align 4
  %12 = load %struct.signature*, %struct.signature** %Entry, align 8
  %arity = getelementptr inbounds %struct.signature, %struct.signature* %12, i32 0, i32 3
  store i32 %11, i32* %arity, align 4
  %call9 = call %struct.LIST_HELP* @list_Nil()
  %13 = load %struct.signature*, %struct.signature** %Entry, align 8
  %generatedBy = getelementptr inbounds %struct.signature, %struct.signature* %13, i32 0, i32 6
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %generatedBy, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** @symbol_FREEDSYMBOLS, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.6
  %15 = load i32, i32* @symbol_ACTINDEX, align 4
  %16 = load i32, i32* %Type.addr, align 4
  %17 = load i32, i32* %Status.addr, align 4
  %call13 = call i32 @symbol_SignatureSymbol(i32 %15, i32 %16, i32 %17)
  %18 = load %struct.signature*, %struct.signature** %Entry, align 8
  %info = getelementptr inbounds %struct.signature, %struct.signature* %18, i32 0, i32 5
  store i32 %call13, i32* %info, align 4
  %19 = load i32, i32* @symbol_ACTINDEX, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* @symbol_ACTINDEX, align 4
  %20 = load %struct.signature*, %struct.signature** %Entry, align 8
  call void @symbol_SetSignature(i32 %19, %struct.signature* %20)
  br label %if.end.19

if.else:                                          ; preds = %if.end.6
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** @symbol_FREEDSYMBOLS, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = ptrtoint i8* %call14 to i32
  store i32 %22, i32* %Index, align 4
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** @symbol_FREEDSYMBOLS, align 8
  %24 = load i32, i32* %Index, align 4
  %conv15 = sext i32 %24 to i64
  %25 = inttoptr i64 %conv15 to i8*
  %call16 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %23, i8* %25)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** @symbol_FREEDSYMBOLS, align 8
  %26 = load i32, i32* %Index, align 4
  %27 = load i32, i32* %Type.addr, align 4
  %28 = load i32, i32* %Status.addr, align 4
  %call17 = call i32 @symbol_SignatureSymbol(i32 %26, i32 %27, i32 %28)
  %29 = load %struct.signature*, %struct.signature** %Entry, align 8
  %info18 = getelementptr inbounds %struct.signature, %struct.signature* %29, i32 0, i32 5
  store i32 %call17, i32* %info18, align 4
  %30 = load i32, i32* %Index, align 4
  %31 = load %struct.signature*, %struct.signature** %Entry, align 8
  call void @symbol_SetSignature(i32 %30, %struct.signature* %31)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.12
  %32 = load i32*, i32** %Precedence.addr, align 8
  %33 = load %struct.signature*, %struct.signature** %Entry, align 8
  %info20 = getelementptr inbounds %struct.signature, %struct.signature* %33, i32 0, i32 5
  %34 = load i32, i32* %info20, align 4
  call void @symbol_SetIncreasedOrdering(i32* %32, i32 %34)
  %35 = load %struct.signature*, %struct.signature** %Entry, align 8
  %info21 = getelementptr inbounds %struct.signature, %struct.signature* %35, i32 0, i32 5
  %36 = load i32, i32* %info21, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i8* @memory_Malloc(i32) #3

; Function Attrs: nounwind uwtable
define i32 @symbol_CreateSkolemFunction(i32 %Arity, i32* %Precedence) #0 {
entry:
  %Arity.addr = alloca i32, align 4
  %Precedence.addr = alloca i32*, align 8
  %newname = alloca [10 x i8], align 1
  %Result = alloca i32, align 4
  store i32 %Arity, i32* %Arity.addr, align 4
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store i32 0, i32* %Result, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %0 = load i32, i32* %Result, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %Arity.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %newname, i32 0, i32 0
  %2 = load i32, i32* @symbol_ACTSKOLEMCINDEX, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @symbol_ACTSKOLEMCINDEX, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_SKCNAME, i32 0, i32 0), i32 %2) #6
  br label %if.end

if.else:                                          ; preds = %while.body
  %arraydecay2 = getelementptr inbounds [10 x i8], [10 x i8]* %newname, i32 0, i32 0
  %3 = load i32, i32* @symbol_ACTSKOLEMFINDEX, align 4
  %inc3 = add nsw i32 %3, 1
  store i32 %inc3, i32* @symbol_ACTSKOLEMFINDEX, align 4
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_SKFNAME, i32 0, i32 0), i32 %3) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay5 = getelementptr inbounds [10 x i8], [10 x i8]* %newname, i32 0, i32 0
  %call6 = call i32 @symbol_Lookup(i8* %arraydecay5)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %arraydecay9 = getelementptr inbounds [10 x i8], [10 x i8]* %newname, i32 0, i32 0
  %4 = load i32, i32* %Arity.addr, align 4
  %5 = load i32*, i32** %Precedence.addr, align 8
  %call10 = call i32 @symbol_CreateFunction(i8* %arraydecay9, i32 %4, i32 0, i32* %5)
  store i32 %call10, i32* %Result, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %Result, align 4
  call void @symbol_AddProperty(i32 %6, i32 1)
  %7 = load i32, i32* %Result, align 4
  ret i32 %7
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @symbol_Lookup(i8* %String) #0 {
entry:
  %retval = alloca i32, align 4
  %String.addr = alloca i8*, align 8
  %Index = alloca i32, align 4
  %S = alloca %struct.signature*, align 8
  store i8* %String, i8** %String.addr, align 8
  %call = call i32 @symbol_SignatureExists()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  store i32 1, i32* %Index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %0 = load i32, i32* %Index, align 4
  %1 = load i32, i32* @symbol_ACTINDEX, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %Index, align 4
  %call1 = call %struct.signature* @symbol_Signature(i32 %2)
  store %struct.signature* %call1, %struct.signature** %S, align 8
  %3 = load %struct.signature*, %struct.signature** %S, align 8
  %cmp2 = icmp ne %struct.signature* %3, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i8*, i8** %String.addr, align 8
  %5 = load %struct.signature*, %struct.signature** %S, align 8
  %name = getelementptr inbounds %struct.signature, %struct.signature* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %call3 = call i32 @string_Equal(i8* %4, i8* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load %struct.signature*, %struct.signature** %S, align 8
  %info = getelementptr inbounds %struct.signature, %struct.signature* %7, i32 0, i32 5
  %8 = load i32, i32* %info, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.6

if.end.6:                                         ; preds = %for.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5
  %10 = load i32, i32* %retval
  ret i32 %10
}

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

; Function Attrs: nounwind uwtable
define i32 @symbol_CreatePredicate(i8* %String, i32 %Arity, i32 %Status, i32* %Precedence) #0 {
entry:
  %String.addr = alloca i8*, align 8
  %Arity.addr = alloca i32, align 4
  %Status.addr = alloca i32, align 4
  %Precedence.addr = alloca i32*, align 8
  store i8* %String, i8** %String.addr, align 8
  store i32 %Arity, i32* %Arity.addr, align 4
  store i32 %Status, i32* %Status.addr, align 4
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call i8* @memory_Malloc(i32 64)
  %0 = load i8*, i8** %String.addr, align 8
  %call1 = call i8* @strcpy(i8* %call, i8* %0) #6
  %1 = load i32, i32* %Arity.addr, align 4
  %2 = load i32, i32* %Status.addr, align 4
  %3 = load i32*, i32** %Precedence.addr, align 8
  %call2 = call i32 @symbol_SignatureCreate(i8* %call1, i32 2, i32 %1, i32 %2, i32* %3)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define i32 @symbol_CreateSkolemPredicate(i32 %Arity, i32* %Precedence) #0 {
entry:
  %Arity.addr = alloca i32, align 4
  %Precedence.addr = alloca i32*, align 8
  %newname = alloca [10 x i8], align 1
  %Result = alloca i32, align 4
  store i32 %Arity, i32* %Arity.addr, align 4
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store i32 0, i32* %Result, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %0 = load i32, i32* %Result, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %Arity.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %newname, i32 0, i32 0
  %2 = load i32, i32* @symbol_ACTSKOLEMAINDEX, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @symbol_ACTSKOLEMAINDEX, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_SKANAME, i32 0, i32 0), i32 %2) #6
  br label %if.end

if.else:                                          ; preds = %while.body
  %arraydecay2 = getelementptr inbounds [10 x i8], [10 x i8]* %newname, i32 0, i32 0
  %3 = load i32, i32* @symbol_ACTSKOLEMPINDEX, align 4
  %inc3 = add nsw i32 %3, 1
  store i32 %inc3, i32* @symbol_ACTSKOLEMPINDEX, align 4
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_SKPNAME, i32 0, i32 0), i32 %3) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay5 = getelementptr inbounds [10 x i8], [10 x i8]* %newname, i32 0, i32 0
  %call6 = call i32 @symbol_Lookup(i8* %arraydecay5)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %arraydecay9 = getelementptr inbounds [10 x i8], [10 x i8]* %newname, i32 0, i32 0
  %4 = load i32, i32* %Arity.addr, align 4
  %5 = load i32*, i32** %Precedence.addr, align 8
  %call10 = call i32 @symbol_CreatePredicate(i8* %arraydecay9, i32 %4, i32 0, i32* %5)
  store i32 %call10, i32* %Result, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %Result, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @symbol_CreateJunctor(i8* %String, i32 %Arity, i32 %Status, i32* %Precedence) #0 {
entry:
  %String.addr = alloca i8*, align 8
  %Arity.addr = alloca i32, align 4
  %Status.addr = alloca i32, align 4
  %Precedence.addr = alloca i32*, align 8
  store i8* %String, i8** %String.addr, align 8
  store i32 %Arity, i32* %Arity.addr, align 4
  store i32 %Status, i32* %Status.addr, align 4
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call i8* @memory_Malloc(i32 64)
  %0 = load i8*, i8** %String.addr, align 8
  %call1 = call i8* @strcpy(i8* %call, i8* %0) #6
  %1 = load i32, i32* %Arity.addr, align 4
  %2 = load i32, i32* %Status.addr, align 4
  %3 = load i32*, i32** %Precedence.addr, align 8
  %call2 = call i32 @symbol_SignatureCreate(i8* %call1, i32 3, i32 %1, i32 %2, i32* %3)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define i32 @symbol_IsSymbol(i32 %Symbol) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %call = call i32 @symbol_SignatureExists()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.rhs, label %lor.end.13

lor.rhs:                                          ; preds = %entry
  %0 = load i32, i32* %Symbol.addr, align 4
  %call1 = call i32 @symbol_Equal(i32 %0, i32 0)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.end.12, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %1 = load i32, i32* %Symbol.addr, align 4
  %call3 = call i32 @symbol_IsVariable(i32 %1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true, label %lor.rhs.6

land.lhs.true:                                    ; preds = %land.rhs
  %2 = load i32, i32* %Symbol.addr, align 4
  %call5 = call i32 @symbol_MaxVars()
  %cmp = icmp slt i32 %2, %call5
  br i1 %cmp, label %lor.end, label %lor.rhs.6

lor.rhs.6:                                        ; preds = %land.lhs.true, %land.rhs
  %3 = load i32, i32* %Symbol.addr, align 4
  %call7 = call i32 @symbol_IsSignature(i32 %3)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.rhs.9, label %land.end

land.rhs.9:                                       ; preds = %lor.rhs.6
  %4 = load i32, i32* %Symbol.addr, align 4
  %call10 = call i32 @symbol_Index(i32 %4)
  %5 = load i32, i32* @symbol_ACTINDEX, align 4
  %cmp11 = icmp slt i32 %call10, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs.9, %lor.rhs.6
  %6 = phi i1 [ false, %lor.rhs.6 ], [ %cmp11, %land.rhs.9 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %7 = phi i1 [ true, %land.lhs.true ], [ %6, %land.end ]
  br label %land.end.12

land.end.12:                                      ; preds = %lor.end, %lor.rhs
  %8 = phi i1 [ false, %lor.rhs ], [ %7, %lor.end ]
  br label %lor.end.13

lor.end.13:                                       ; preds = %land.end.12, %entry
  %9 = phi i1 [ true, %entry ], [ %8, %land.end.12 ]
  %lor.ext = zext i1 %9 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @symbol_SignatureExists() #0 {
entry:
  %0 = load i32, i32* @symbol_HASSIGNATURE, align 4
  ret i32 %0
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
define internal i32 @symbol_MaxVars() #1 {
entry:
  ret i32 3001
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
define internal i32 @symbol_Index(i32 %ActSymbol) #1 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  call void @symbol_CheckNoVariable(i32 %0)
  %1 = load i32, i32* %ActSymbol.addr, align 4
  %sub = sub nsw i32 0, %1
  %shr = ashr i32 %sub, 3
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define void @symbol_Delete(i32 %Symbol) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  %Index = alloca i32, align 4
  %Entry = alloca %struct.signature*, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %0 = load i32, i32* %Symbol.addr, align 4
  %call = call i32 @symbol_IsVariable(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %Symbol.addr, align 4
  %call1 = call i32 @symbol_Index(i32 %1)
  store i32 %call1, i32* %Index, align 4
  %2 = load i32, i32* %Index, align 4
  %conv = sext i32 %2 to i64
  %3 = inttoptr i64 %conv to i8*
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** @symbol_FREEDSYMBOLS, align 8
  %call2 = call %struct.LIST_HELP* @list_Cons(i8* %3, %struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** @symbol_FREEDSYMBOLS, align 8
  %5 = load i32, i32* %Index, align 4
  %call3 = call %struct.signature* @symbol_Signature(i32 %5)
  store %struct.signature* %call3, %struct.signature** %Entry, align 8
  %6 = load i32, i32* %Index, align 4
  call void @symbol_SetSignature(i32 %6, %struct.signature* null)
  %7 = load %struct.signature*, %struct.signature** %Entry, align 8
  call void @symbol_FreeSignature(%struct.signature* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_SetSignature(i32 %ActIndex, %struct.signature* %Sig) #1 {
entry:
  %ActIndex.addr = alloca i32, align 4
  %Sig.addr = alloca %struct.signature*, align 8
  store i32 %ActIndex, i32* %ActIndex.addr, align 4
  store %struct.signature* %Sig, %struct.signature** %Sig.addr, align 8
  %0 = load i32, i32* %ActIndex.addr, align 4
  call void @symbol_CheckIndexInRange(i32 %0)
  %1 = load %struct.signature*, %struct.signature** %Sig.addr, align 8
  %2 = load i32, i32* %ActIndex.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.signature**, %struct.signature*** @symbol_SIGNATURE, align 8
  %arrayidx = getelementptr inbounds %struct.signature*, %struct.signature** %3, i64 %idxprom
  store %struct.signature* %1, %struct.signature** %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_FreeSignature(%struct.signature* %Sig) #1 {
entry:
  %Sig.addr = alloca %struct.signature*, align 8
  store %struct.signature* %Sig, %struct.signature** %Sig.addr, align 8
  %0 = load %struct.signature*, %struct.signature** %Sig.addr, align 8
  %name = getelementptr inbounds %struct.signature, %struct.signature* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call void @memory_Free(i8* %1, i32 64)
  %2 = load %struct.signature*, %struct.signature** %Sig.addr, align 8
  %generatedBy = getelementptr inbounds %struct.signature, %struct.signature* %2, i32 0, i32 6
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %generatedBy, align 8
  call void @list_Delete(%struct.LIST_HELP* %3)
  %4 = load %struct.signature*, %struct.signature** %Sig.addr, align 8
  %5 = bitcast %struct.signature* %4 to i8*
  call void @memory_Free(i8* %5, i32 40)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @symbol_GetAllSymbols() #0 {
entry:
  %Result = alloca %struct.LIST_HELP*, align 8
  %Index = alloca i32, align 4
  %S = alloca %struct.signature*, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %call1 = call i32 @symbol_SignatureExists()
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
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
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %4 = load i32, i32* %Index, align 4
  %call5 = call i32 @symbol_GetSigSymbol(i32 %4)
  %conv = sext i32 %call5 to i64
  %5 = inttoptr i64 %conv to i8*
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call6 = call %struct.LIST_HELP* @list_Cons(i8* %5, %struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.7

if.end.7:                                         ; preds = %for.end, %entry
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %8
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_GetSigSymbol(i32 %Index) #1 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  %call = call %struct.signature* @symbol_Signature(i32 %0)
  %info = getelementptr inbounds %struct.signature, %struct.signature* %call, i32 0, i32 5
  %1 = load i32, i32* %info, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @symbol_GetAllPredicates() #0 {
entry:
  %Result = alloca %struct.LIST_HELP*, align 8
  %Index = alloca i32, align 4
  %S = alloca %struct.signature*, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %call1 = call i32 @symbol_SignatureExists()
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
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
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* %Index, align 4
  %call4 = call i32 @symbol_GetSigSymbol(i32 %4)
  %call5 = call i32 @symbol_IsPredicate(i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %Index, align 4
  %call8 = call i32 @symbol_GetSigSymbol(i32 %5)
  %conv = sext i32 %call8 to i64
  %6 = inttoptr i64 %conv to i8*
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call9 = call %struct.LIST_HELP* @list_Cons(i8* %6, %struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %entry
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %9
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
define %struct.LIST_HELP* @symbol_GetAllFunctions() #0 {
entry:
  %Result = alloca %struct.LIST_HELP*, align 8
  %Index = alloca i32, align 4
  %S = alloca %struct.signature*, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %call1 = call i32 @symbol_SignatureExists()
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
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
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* %Index, align 4
  %call4 = call i32 @symbol_GetSigSymbol(i32 %4)
  %call5 = call i32 @symbol_IsFunction(i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %Index, align 4
  %call8 = call i32 @symbol_GetSigSymbol(i32 %5)
  %conv = sext i32 %call8 to i64
  %6 = inttoptr i64 %conv to i8*
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call9 = call %struct.LIST_HELP* @list_Cons(i8* %6, %struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %entry
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %9
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

; Function Attrs: nounwind uwtable
define void @symbol_FreeAllSymbols() #0 {
entry:
  %Index = alloca i32, align 4
  %S = alloca %struct.signature*, align 8
  %call = call i32 @symbol_SignatureExists()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  store i32 1, i32* %Index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %0 = load i32, i32* %Index, align 4
  %1 = load i32, i32* @symbol_ACTINDEX, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %Index, align 4
  %call1 = call %struct.signature* @symbol_Signature(i32 %2)
  store %struct.signature* %call1, %struct.signature** %S, align 8
  %3 = load %struct.signature*, %struct.signature** %S, align 8
  %cmp2 = icmp ne %struct.signature* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  %4 = load %struct.signature*, %struct.signature** %S, align 8
  call void @symbol_FreeSignature(%struct.signature* %4)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.signature**, %struct.signature*** @symbol_SIGNATURE, align 8
  %7 = bitcast %struct.signature** %6 to i8*
  call void @memory_Free(i8* %7, i32 32000)
  br label %if.end.4

if.end.4:                                         ; preds = %for.end, %entry
  %8 = load i8*, i8** @symbol_VARSTRING, align 8
  call void @memory_Free(i8* %8, i32 64)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** @symbol_FREEDSYMBOLS, align 8
  call void @list_Delete(%struct.LIST_HELP* %9)
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
define void @symbol_Init(i32 %Signature) #0 {
entry:
  %Signature.addr = alloca i32, align 4
  store i32 %Signature, i32* %Signature.addr, align 4
  call void @symbol_ResetSkolemIndex()
  call void @symbol_ContextClean()
  %0 = load i32, i32* %Signature.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @memory_Malloc(i32 32000)
  %1 = bitcast i8* %call to %struct.signature**
  store %struct.signature** %1, %struct.signature*** @symbol_SIGNATURE, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @symbol_GetInitialStandardVarCounter()
  store i32 %call1, i32* @symbol_STANDARDVARCOUNTER, align 4
  %call2 = call i32 @symbol_GetInitialIndexVarCounter()
  store i32 %call2, i32* @symbol_INDEXVARCOUNTER, align 4
  store i32 1, i32* @symbol_ACTINDEX, align 4
  store i32 1, i32* @symbol_ORDERING, align 4
  %call3 = call i8* @memory_Malloc(i32 64)
  store i8* %call3, i8** @symbol_VARSTRING, align 8
  %2 = load i32, i32* %Signature.addr, align 4
  store i32 %2, i32* @symbol_HASSIGNATURE, align 4
  %call4 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** @symbol_FREEDSYMBOLS, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_ResetSkolemIndex() #1 {
entry:
  store i32 0, i32* @symbol_ACTSKOLEMFINDEX, align 4
  store i32 0, i32* @symbol_ACTSKOLEMCINDEX, align 4
  store i32 0, i32* @symbol_ACTSKOLEMPINDEX, align 4
  store i32 0, i32* @symbol_ACTSKOLEMAINDEX, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_ContextClean() #1 {
entry:
  %i = alloca i32, align 4
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
  store i32 0, i32* %arrayidx, align 4
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
define internal i32 @symbol_GetInitialStandardVarCounter() #1 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_GetInitialIndexVarCounter() #1 {
entry:
  ret i32 2000
}

; Function Attrs: nounwind uwtable
define void @symbol_ReinitGenericNameCounters() #0 {
entry:
  %Index = alloca i32, align 4
  %Num = alloca i32, align 4
  %Info = alloca i32, align 4
  %Entry = alloca %struct.signature*, align 8
  %Name = alloca i8*, align 8
  %Subname = alloca i8*, align 8
  %call = call i32 @symbol_SignatureExists()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.60

if.then:                                          ; preds = %entry
  store i32 1, i32* %Index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %0 = load i32, i32* %Index, align 4
  %1 = load i32, i32* @symbol_ACTINDEX, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %Index, align 4
  %call1 = call %struct.signature* @symbol_Signature(i32 %2)
  store %struct.signature* %call1, %struct.signature** %Entry, align 8
  %3 = load %struct.signature*, %struct.signature** %Entry, align 8
  %cmp2 = icmp ne %struct.signature* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.59

if.then.3:                                        ; preds = %for.body
  %4 = load %struct.signature*, %struct.signature** %Entry, align 8
  %info = getelementptr inbounds %struct.signature, %struct.signature* %4, i32 0, i32 5
  %5 = load i32, i32* %info, align 4
  store i32 %5, i32* %Info, align 4
  %6 = load %struct.signature*, %struct.signature** %Entry, align 8
  %name = getelementptr inbounds %struct.signature, %struct.signature* %6, i32 0, i32 0
  %7 = load i8*, i8** %name, align 8
  store i8* %7, i8** %Name, align 8
  %8 = load i8*, i8** %Name, align 8
  %call4 = call i64 @strlen(i8* %8) #7
  %cmp5 = icmp ugt i64 %call4, 3
  br i1 %cmp5, label %if.then.6, label %if.end.58

if.then.6:                                        ; preds = %if.then.3
  %9 = load i8*, i8** %Name, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 3
  store i8* %add.ptr, i8** %Subname, align 8
  %10 = load i32, i32* %Info, align 4
  %call7 = call i32 @symbol_Type(i32 %10)
  switch i32 %call7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.17
    i32 2, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %if.then.6
  %11 = load i8*, i8** %Name, align 8
  %call8 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_SKCNAME, i32 0, i32 0), i64 3) #7
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %sw.bb
  %12 = load i8*, i8** %Subname, align 8
  %call10 = call i32 @string_StringIsNumber(i8* %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %land.lhs.true
  %13 = load i8*, i8** %Subname, align 8
  %call13 = call i32 @atoi(i8* %13) #7
  store i32 %call13, i32* %Num, align 4
  %14 = load i32, i32* %Num, align 4
  %15 = load i32, i32* @symbol_ACTSKOLEMCINDEX, align 4
  %cmp14 = icmp sge i32 %14, %15
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then.12
  %16 = load i32, i32* %Num, align 4
  %add = add nsw i32 %16, 1
  store i32 %add, i32* @symbol_ACTSKOLEMCINDEX, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then.6
  %17 = load i8*, i8** %Name, align 8
  %call18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_SKFNAME, i32 0, i32 0), i64 3) #7
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.29

land.lhs.true.20:                                 ; preds = %sw.bb.17
  %18 = load i8*, i8** %Subname, align 8
  %call21 = call i32 @string_StringIsNumber(i8* %18)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %land.lhs.true.20
  %19 = load i8*, i8** %Subname, align 8
  %call24 = call i32 @atoi(i8* %19) #7
  store i32 %call24, i32* %Num, align 4
  %20 = load i32, i32* %Num, align 4
  %21 = load i32, i32* @symbol_ACTSKOLEMFINDEX, align 4
  %cmp25 = icmp sge i32 %20, %21
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.23
  %22 = load i32, i32* %Num, align 4
  %add27 = add nsw i32 %22, 1
  store i32 %add27, i32* @symbol_ACTSKOLEMFINDEX, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.23
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %land.lhs.true.20, %sw.bb.17
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.then.6
  %23 = load %struct.signature*, %struct.signature** %Entry, align 8
  %arity = getelementptr inbounds %struct.signature, %struct.signature* %23, i32 0, i32 3
  %24 = load i32, i32* %arity, align 4
  %cmp31 = icmp eq i32 %24, 0
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %sw.bb.30
  %25 = load i8*, i8** %Name, align 8
  %call33 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_SKANAME, i32 0, i32 0), i64 3) #7
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.44

land.lhs.true.35:                                 ; preds = %if.then.32
  %26 = load i8*, i8** %Subname, align 8
  %call36 = call i32 @string_StringIsNumber(i8* %26)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.44

if.then.38:                                       ; preds = %land.lhs.true.35
  %27 = load i8*, i8** %Subname, align 8
  %call39 = call i32 @atoi(i8* %27) #7
  store i32 %call39, i32* %Num, align 4
  %28 = load i32, i32* %Num, align 4
  %29 = load i32, i32* @symbol_ACTSKOLEMAINDEX, align 4
  %cmp40 = icmp sge i32 %28, %29
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.then.38
  %30 = load i32, i32* %Num, align 4
  %add42 = add nsw i32 %30, 1
  store i32 %add42, i32* @symbol_ACTSKOLEMAINDEX, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.then.38
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %land.lhs.true.35, %if.then.32
  br label %if.end.57

if.else:                                          ; preds = %sw.bb.30
  %31 = load i8*, i8** %Name, align 8
  %call45 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @symbol_SKPNAME, i32 0, i32 0), i64 3) #7
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.56

land.lhs.true.47:                                 ; preds = %if.else
  %32 = load i8*, i8** %Subname, align 8
  %call48 = call i32 @string_StringIsNumber(i8* %32)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %land.lhs.true.47
  %33 = load i8*, i8** %Subname, align 8
  %call51 = call i32 @atoi(i8* %33) #7
  store i32 %call51, i32* %Num, align 4
  %34 = load i32, i32* %Num, align 4
  %35 = load i32, i32* @symbol_ACTSKOLEMPINDEX, align 4
  %cmp52 = icmp sge i32 %34, %35
  br i1 %cmp52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.then.50
  %36 = load i32, i32* %Num, align 4
  %add54 = add nsw i32 %36, 1
  store i32 %add54, i32* @symbol_ACTSKOLEMPINDEX, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.then.50
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true.47, %if.else
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.44
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.57, %if.then.6, %if.end.29, %if.end.16
  br label %if.end.58

if.end.58:                                        ; preds = %sw.epilog, %if.then.3
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %37 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.60

if.end.60:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Type(i32 %ActSymbol) #1 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  call void @symbol_CheckNoVariable(i32 %0)
  %1 = load i32, i32* %ActSymbol.addr, align 4
  %sub = sub nsw i32 0, %1
  %and = and i32 %sub, 3
  ret i32 %and
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare i32 @string_StringIsNumber(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

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

; Function Attrs: nounwind uwtable
define void @symbol_LowerSignature() #0 {
entry:
  %Index = alloca i32, align 4
  %Entry = alloca %struct.signature*, align 8
  %Info = alloca i32, align 4
  %String = alloca i8*, align 8
  %New = alloca i8*, align 8
  store i32 1, i32* %Index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %Index, align 4
  %1 = load i32, i32* @symbol_ACTINDEX, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %Index, align 4
  %call = call %struct.signature* @symbol_Signature(i32 %2)
  store %struct.signature* %call, %struct.signature** %Entry, align 8
  %3 = load %struct.signature*, %struct.signature** %Entry, align 8
  %cmp1 = icmp ne %struct.signature* %3, null
  br i1 %cmp1, label %if.then, label %if.end.20

if.then:                                          ; preds = %for.body
  %4 = load %struct.signature*, %struct.signature** %Entry, align 8
  %info = getelementptr inbounds %struct.signature, %struct.signature* %4, i32 0, i32 5
  %5 = load i32, i32* %info, align 4
  store i32 %5, i32* %Info, align 4
  %6 = load i32, i32* %Info, align 4
  %call2 = call i32 @symbol_IsPredicate(i32 %6)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i32, i32* %Info, align 4
  %call3 = call i32 @symbol_IsFunction(i32 %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.19

if.then.5:                                        ; preds = %lor.lhs.false, %if.then
  %8 = load %struct.signature*, %struct.signature** %Entry, align 8
  %name = getelementptr inbounds %struct.signature, %struct.signature* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  store i8* %9, i8** %String, align 8
  %10 = load i8*, i8** %String, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %cmp6 = icmp sle i32 65, %conv
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.5
  %12 = load i8*, i8** %String, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp sle i32 %conv9, 90
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %land.lhs.true
  %call13 = call i8* @memory_Malloc(i32 64)
  store i8* %call13, i8** %New, align 8
  %14 = load i8*, i8** %New, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8*, i8** %String, align 8
  %call15 = call i8* @strcpy(i8* %arrayidx14, i8* %15) #6
  %16 = load i8*, i8** %New, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 115, i8* %arrayidx16, align 1
  %17 = load i8*, i8** %New, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 115, i8* %arrayidx17, align 1
  %18 = load i8*, i8** %New, align 8
  %19 = load %struct.signature*, %struct.signature** %Entry, align 8
  %name18 = getelementptr inbounds %struct.signature, %struct.signature* %19, i32 0, i32 0
  store i8* %18, i8** %name18, align 8
  %20 = load i8*, i8** %String, align 8
  call void @memory_Free(i8* %20, i32 64)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %land.lhs.true, %if.then.5
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %lor.lhs.false
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %21 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @symbol_Dump(i32* %Precedence) #0 {
entry:
  %Precedence.addr = alloca i32*, align 8
  %Index = alloca i32, align 4
  %S = alloca %struct.signature*, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call i32 @symbol_SignatureExists()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %0)
  store i32 1, i32* %Index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %Index, align 4
  %2 = load i32, i32* @symbol_ACTINDEX, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %Index, align 4
  %call2 = call %struct.signature* @symbol_Signature(i32 %3)
  store %struct.signature* %call2, %struct.signature** %S, align 8
  %4 = load %struct.signature*, %struct.signature** %S, align 8
  %cmp3 = icmp ne %struct.signature* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %5 = load i32, i32* %Index, align 4
  %6 = load %struct.signature*, %struct.signature** %S, align 8
  %info = getelementptr inbounds %struct.signature, %struct.signature* %6, i32 0, i32 5
  %7 = load i32, i32* %info, align 4
  %8 = load %struct.signature*, %struct.signature** %S, align 8
  %weight = getelementptr inbounds %struct.signature, %struct.signature* %8, i32 0, i32 2
  %9 = load i32, i32* %weight, align 4
  %10 = load i32, i32* %Index, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32*, i32** %Precedence.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %13 = load %struct.signature*, %struct.signature** %S, align 8
  %props = getelementptr inbounds %struct.signature, %struct.signature* %13, i32 0, i32 4
  %14 = load i32, i32* %props, align 4
  %15 = load %struct.signature*, %struct.signature** %S, align 8
  %name = getelementptr inbounds %struct.signature, %struct.signature* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  %17 = load %struct.signature*, %struct.signature** %S, align 8
  %length = getelementptr inbounds %struct.signature, %struct.signature* %17, i32 0, i32 1
  %18 = load i32, i32* %length, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 %5, i32 %7, i32 %9, i32 %12, i32 %14, i8* %16, i32 %18)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.6

if.end.6:                                         ; preds = %for.end, %entry
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @symbol_SortByPrecedence(%struct.LIST_HELP* %Symbols, i32* %Precedence) #0 {
entry:
  %Symbols.addr = alloca %struct.LIST_HELP*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Min = alloca %struct.LIST_HELP*, align 8
  %Exchange = alloca i8*, align 8
  store %struct.LIST_HELP* %Symbols, %struct.LIST_HELP** %Symbols.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %Min, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot5 = xor i1 %tobool4, true
  br i1 %lnot5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %5 = load i32*, i32** %Precedence.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = ptrtoint i8* %call7 to i32
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Min, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = ptrtoint i8* %call8 to i32
  %call9 = call i32 @symbol_PrecedenceGreater(i32* %5, i32 %7, i32 %9)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Min, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %10)
  store i8* %call11, i8** %Exchange, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Min, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %12)
  call void @list_Rplaca(%struct.LIST_HELP* %11, i8* %call12)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %14 = load i8*, i8** %Exchange, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %13, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols.addr, align 8
  ret %struct.LIST_HELP* %17
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
define internal i32 @symbol_PrecedenceGreater(i32* %P, i32 %S1, i32 %S2) #1 {
entry:
  %P.addr = alloca i32*, align 8
  %S1.addr = alloca i32, align 4
  %S2.addr = alloca i32, align 4
  store i32* %P, i32** %P.addr, align 8
  store i32 %S1, i32* %S1.addr, align 4
  store i32 %S2, i32* %S2.addr, align 4
  %0 = load i32*, i32** %P.addr, align 8
  %1 = load i32, i32* %S1.addr, align 4
  %call = call i32 @symbol_Ordering(i32* %0, i32 %1)
  %2 = load i32*, i32** %P.addr, align 8
  %3 = load i32, i32* %S2.addr, align 4
  %call1 = call i32 @symbol_Ordering(i32* %2, i32 %3)
  %cmp = icmp slt i32 %call, %call1
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
define void @symbol_RearrangePrecedence(i32* %Precedence, %struct.LIST_HELP* %UserPrecedence) #0 {
entry:
  %Precedence.addr = alloca i32*, align 8
  %UserPrecedence.addr = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Precedences = alloca %struct.LIST_HELP*, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.LIST_HELP* %UserPrecedence, %struct.LIST_HELP** %UserPrecedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Precedences, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UserPrecedence.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %Precedence.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = ptrtoint i8* %call2 to i32
  %call3 = call i32 @symbol_Ordering(i32* %2, i32 %4)
  %conv = sext i32 %call3 to i64
  %5 = inttoptr i64 %conv to i8*
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Precedences, align 8
  %call4 = call %struct.LIST_HELP* @list_Cons(i8* %5, %struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Precedences, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Precedences, align 8
  %call6 = call %struct.LIST_HELP* @list_PointerSort(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Precedences, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UserPrecedence.addr, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %Scan1, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Precedences, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %Scan2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call7 = call %struct.LIST_HELP* @list_Nil()
  %cmp = icmp ne %struct.LIST_HELP* %11, %call7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call9 = call %struct.LIST_HELP* @list_Nil()
  %cmp10 = icmp ne %struct.LIST_HELP* %12, %call9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i32*, i32** %Precedence.addr, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = ptrtoint i8* %call12 to i32
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = ptrtoint i8* %call13 to i32
  call void @symbol_SetOrdering(i32* %14, i32 %16, i32 %18)
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan1, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan2, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Precedences, align 8
  call void @list_Delete(%struct.LIST_HELP* %21)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Ordering(i32* %P, i32 %ActSymbol) #1 {
entry:
  %P.addr = alloca i32*, align 8
  %ActSymbol.addr = alloca i32, align 4
  %Index = alloca i32, align 4
  store i32* %P, i32** %P.addr, align 8
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  store i32 %call, i32* %Index, align 4
  %1 = load i32, i32* %Index, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %P.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  ret i32 %3
}

declare %struct.LIST_HELP* @list_PointerSort(%struct.LIST_HELP*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_SetOrdering(i32* %P, i32 %ActSymbol, i32 %Ordering) #1 {
entry:
  %P.addr = alloca i32*, align 8
  %ActSymbol.addr = alloca i32, align 4
  %Ordering.addr = alloca i32, align 4
  %Index = alloca i32, align 4
  store i32* %P, i32** %P.addr, align 8
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  store i32 %Ordering, i32* %Ordering.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  store i32 %call, i32* %Index, align 4
  %1 = load i32, i32* %Index, align 4
  call void @symbol_CheckIndexInRange(i32 %1)
  %2 = load i32, i32* %Ordering.addr, align 4
  %3 = load i32, i32* %Index, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %P.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @symbol_PrintPrecedence(i32* %Precedence) #0 {
entry:
  %Precedence.addr = alloca i32*, align 8
  %Symbols = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Index = alloca i32, align 4
  %S = alloca %struct.signature*, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call i32 @symbol_SignatureExists()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.30

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
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.signature*, %struct.signature** %S, align 8
  %info = getelementptr inbounds %struct.signature, %struct.signature* %4, i32 0, i32 5
  %5 = load i32, i32* %info, align 4
  %call4 = call i32 @symbol_IsPredicate(i32 %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct.signature*, %struct.signature** %S, align 8
  %info6 = getelementptr inbounds %struct.signature, %struct.signature* %6, i32 0, i32 5
  %7 = load i32, i32* %info6, align 4
  %call7 = call i32 @symbol_IsFunction(i32 %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load %struct.signature*, %struct.signature** %S, align 8
  %info10 = getelementptr inbounds %struct.signature, %struct.signature* %8, i32 0, i32 5
  %9 = load i32, i32* %info10, align 4
  %conv = sext i32 %9 to i64
  %10 = inttoptr i64 %conv to i8*
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  %call11 = call %struct.LIST_HELP* @list_Cons(i8* %10, %struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Symbols, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  %14 = load i32*, i32** %Precedence.addr, align 8
  %call12 = call %struct.LIST_HELP* @symbol_SortByPrecedence(%struct.LIST_HELP* %13, i32* %14)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Symbols, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  store %struct.LIST_HELP* %15, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.27, %for.end
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot = xor i1 %tobool15, true
  br i1 %lnot, label %for.body.16, label %for.end.29

for.body.16:                                      ; preds = %for.cond.13
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = ptrtoint i8* %call17 to i32
  %call18 = call i32 @symbol_Index(i32 %18)
  %call19 = call %struct.signature* @symbol_Signature(i32 %call18)
  store %struct.signature* %call19, %struct.signature** %S, align 8
  %19 = load %struct.signature*, %struct.signature** %S, align 8
  %name = getelementptr inbounds %struct.signature, %struct.signature* %19, i32 0, i32 0
  %20 = load i8*, i8** %name, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call20 = call i32 @fputs(i8* %20, %struct._IO_FILE* %21)
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %for.body.16
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call25 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %23)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %for.body.16
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.13

for.end.29:                                       ; preds = %for.cond.13
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  call void @list_Delete(%struct.LIST_HELP* %25)
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.29, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @symbol_FPrintPrecedence(%struct._IO_FILE* %File, i32* %Precedence) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Symbols = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Index = alloca i32, align 4
  %S = alloca %struct.signature*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call i32 @symbol_SignatureExists()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.38

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
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.signature*, %struct.signature** %S, align 8
  %info = getelementptr inbounds %struct.signature, %struct.signature* %4, i32 0, i32 5
  %5 = load i32, i32* %info, align 4
  %call4 = call i32 @symbol_IsPredicate(i32 %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct.signature*, %struct.signature** %S, align 8
  %info6 = getelementptr inbounds %struct.signature, %struct.signature* %6, i32 0, i32 5
  %7 = load i32, i32* %info6, align 4
  %call7 = call i32 @symbol_IsFunction(i32 %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load %struct.signature*, %struct.signature** %S, align 8
  %info10 = getelementptr inbounds %struct.signature, %struct.signature* %8, i32 0, i32 5
  %9 = load i32, i32* %info10, align 4
  %conv = sext i32 %9 to i64
  %10 = inttoptr i64 %conv to i8*
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  %call11 = call %struct.LIST_HELP* @list_Cons(i8* %10, %struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Symbols, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  %14 = load i32*, i32** %Precedence.addr, align 8
  %call12 = call %struct.LIST_HELP* @symbol_SortByPrecedence(%struct.LIST_HELP* %13, i32* %14)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Symbols, align 8
  store i32 0, i32* %Index, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call13 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  store %struct.LIST_HELP* %16, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.34, %for.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br i1 %lnot, label %for.body.17, label %for.end.36

for.body.17:                                      ; preds = %for.cond.14
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = ptrtoint i8* %call18 to i32
  %call19 = call i32 @symbol_Index(i32 %19)
  %call20 = call %struct.signature* @symbol_Signature(i32 %call19)
  store %struct.signature* %call20, %struct.signature** %S, align 8
  %20 = load %struct.signature*, %struct.signature** %S, align 8
  %name = getelementptr inbounds %struct.signature, %struct.signature* %20, i32 0, i32 0
  %21 = load i8*, i8** %name, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call21 = call i32 @fputs(i8* %21, %struct._IO_FILE* %22)
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  %call23 = call i32 @list_Empty(%struct.LIST_HELP* %call22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.27, label %if.then.25

if.then.25:                                       ; preds = %for.body.17
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call26 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %24)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %for.body.17
  %25 = load i32, i32* %Index, align 4
  %cmp28 = icmp sgt i32 %25, 15
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.27
  store i32 0, i32* %Index, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call31 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %26)
  br label %if.end.33

if.else:                                          ; preds = %if.end.27
  %27 = load i32, i32* %Index, align 4
  %inc32 = add nsw i32 %27, 1
  store i32 %inc32, i32* %Index, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.30
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call35 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.14

for.end.36:                                       ; preds = %for.cond.14
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call37 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %29)
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  call void @list_Delete(%struct.LIST_HELP* %30)
  br label %if.end.38

if.end.38:                                        ; preds = %for.end.36, %entry
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @symbol_SetCount(i32 %Symbol, i64 %Count) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  %Count.addr = alloca i64, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store i64 %Count, i64* %Count.addr, align 8
  %0 = load i64, i64* %Count.addr, align 8
  %1 = load i32, i32* %Symbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %1)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [4000 x i64], [4000 x i64]* @symbol_COUNT, i32 0, i64 %idxprom
  store i64 %0, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @symbol_GetCount(i32 %Symbol) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %0 = load i32, i32* %Symbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [4000 x i64], [4000 x i64]* @symbol_COUNT, i32 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define void @symbol_Print(i32 %Symbol) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load i32, i32* %Symbol.addr, align 4
  call void @symbol_FPrint(%struct._IO_FILE* %0, i32 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @symbol_FPrint(%struct._IO_FILE* %File, i32 %Symbol) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Symbol.addr = alloca i32, align 4
  %NormSymbol = alloca i32, align 4
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %call = call i32 @symbol_Null()
  %0 = load i32, i32* %Symbol.addr, align 4
  %call1 = call i32 @symbol_Equal(i32 %call, i32 %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %1)
  br label %if.end.33

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %Symbol.addr, align 4
  %call3 = call i32 @symbol_IsVariable(i32 %2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else.23

if.then.5:                                        ; preds = %if.else
  %3 = load i32, i32* %Symbol.addr, align 4
  %call6 = call i32 @symbol_NormVar(i32 %3)
  store i32 %call6, i32* %NormSymbol, align 4
  %4 = load i32, i32* %Symbol.addr, align 4
  %call7 = call i32 @symbol_IsStandardVariable(i32 %4)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else.15

if.then.9:                                        ; preds = %if.then.5
  %5 = load i32, i32* %Symbol.addr, align 4
  %cmp = icmp sle i32 %5, 6
  br i1 %cmp, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.then.9
  %6 = load i8*, i8** @symbol_VARSTRING, align 8
  %7 = load i32, i32* %NormSymbol, align 4
  %add = add nsw i32 85, %7
  %sub = sub nsw i32 %add, 1
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 %sub) #6
  br label %if.end

if.else.12:                                       ; preds = %if.then.9
  %8 = load i8*, i8** @symbol_VARSTRING, align 8
  %9 = load i32, i32* %NormSymbol, align 4
  %sub13 = sub nsw i32 %9, 6
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 %sub13) #6
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.10
  br label %if.end.21

if.else.15:                                       ; preds = %if.then.5
  %10 = load i32, i32* %Symbol.addr, align 4
  %call16 = call i32 @symbol_IsIndexVariable(i32 %10)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.else.15
  %11 = load i8*, i8** @symbol_VARSTRING, align 8
  %12 = load i32, i32* %NormSymbol, align 4
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 %12) #6
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.else.15
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %13 = load i8*, i8** @symbol_VARSTRING, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call22 = call i32 @fputs(i8* %13, %struct._IO_FILE* %14)
  br label %if.end.32

if.else.23:                                       ; preds = %if.else
  %call24 = call i32 @symbol_SignatureExists()
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.else.23
  %15 = load i32, i32* %Symbol.addr, align 4
  %call27 = call i8* @symbol_Name(i32 %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call28 = call i32 @fputs(i8* %call27, %struct._IO_FILE* %16)
  br label %if.end.31

if.else.29:                                       ; preds = %if.else.23
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %18 = load i32, i32* %Symbol.addr, align 4
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 %18)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.21
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Null() #1 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_NormVar(i32 %ActSymbol) #1 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %cmp = icmp sle i32 %0, 2000
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %ActSymbol.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %ActSymbol.addr, align 4
  %sub = sub nsw i32 %2, 2000
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

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
define internal i32 @symbol_IsIndexVariable(i32 %S) #1 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp sgt i32 %0, 2000
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %S.addr, align 4
  %cmp1 = icmp sle i32 %1, 3000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @symbol_Name(i32 %ActSymbol) #1 {
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

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @symbol_FPrintOtter(%struct._IO_FILE* %File, i32 %Symbol) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Symbol.addr = alloca i32, align 4
  %NormSymbol = alloca i32, align 4
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %0 = load i32, i32* %Symbol.addr, align 4
  %call = call i32 @symbol_IsVariable(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.16

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %Symbol.addr, align 4
  %call1 = call i32 @symbol_NormVar(i32 %1)
  store i32 %call1, i32* %NormSymbol, align 4
  %2 = load i32, i32* %Symbol.addr, align 4
  %call2 = call i32 @symbol_IsStandardVariable(i32 %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else.8

if.then.4:                                        ; preds = %if.then
  %3 = load i32, i32* %Symbol.addr, align 4
  %cmp = icmp sle i32 %3, 6
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.4
  %4 = load i8*, i8** @symbol_VARSTRING, align 8
  %5 = load i32, i32* %NormSymbol, align 4
  %add = add nsw i32 116, %5
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 %add) #6
  br label %if.end

if.else:                                          ; preds = %if.then.4
  %6 = load i8*, i8** @symbol_VARSTRING, align 8
  %7 = load i32, i32* %NormSymbol, align 4
  %sub = sub nsw i32 %7, 6
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %sub) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.14

if.else.8:                                        ; preds = %if.then
  %8 = load i32, i32* %Symbol.addr, align 4
  %call9 = call i32 @symbol_IsIndexVariable(i32 %8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.else.8
  %9 = load i8*, i8** @symbol_VARSTRING, align 8
  %10 = load i32, i32* %NormSymbol, align 4
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 %10) #6
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.else.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %11 = load i8*, i8** @symbol_VARSTRING, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call15 = call i32 @fputs(i8* %11, %struct._IO_FILE* %12)
  br label %if.end.46

if.else.16:                                       ; preds = %entry
  %call17 = call i32 @symbol_SignatureExists()
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.43

if.then.19:                                       ; preds = %if.else.16
  %13 = load i32, i32* %Symbol.addr, align 4
  %call20 = call i32 @symbol_IsConstant(i32 %13)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.25

if.then.22:                                       ; preds = %if.then.19
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %15 = load i32, i32* %Symbol.addr, align 4
  %call23 = call i8* @symbol_Name(i32 %15)
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* %call23)
  br label %if.end.42

if.else.25:                                       ; preds = %if.then.19
  %16 = load i32, i32* %Symbol.addr, align 4
  %call26 = call i32 @symbol_IsFunction(i32 %16)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.31

if.then.28:                                       ; preds = %if.else.25
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %18 = load i32, i32* %Symbol.addr, align 4
  %call29 = call i8* @symbol_Name(i32 %18)
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %call29)
  br label %if.end.41

if.else.31:                                       ; preds = %if.else.25
  %19 = load i32, i32* %Symbol.addr, align 4
  %call32 = call i32 @symbol_IsPredicate(i32 %19)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %if.else.31
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %21 = load i32, i32* %Symbol.addr, align 4
  %call35 = call i8* @symbol_Name(i32 %21)
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* %call35)
  br label %if.end.40

if.else.37:                                       ; preds = %if.else.31
  %22 = load i32, i32* %Symbol.addr, align 4
  %call38 = call i8* @symbol_Name(i32 %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call39 = call i32 @fputs(i8* %call38, %struct._IO_FILE* %23)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.34
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.28
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.22
  br label %if.end.45

if.else.43:                                       ; preds = %if.else.16
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %25 = load i32, i32* %Symbol.addr, align 4
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 %25)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.end.42
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.14
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsConstant(i32 %S) #1 {
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

; Function Attrs: nounwind uwtable
define void @symbol_PrintLn(i32 %Symbol) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %0 = load i32, i32* %Symbol.addr, align 4
  call void @symbol_Print(i32 %0)
  %call = call i32 @putchar(i32 10)
  ret void
}

declare i32 @putchar(i32) #3

; Function Attrs: nounwind uwtable
define void @symbol_PrintAll() #0 {
entry:
  %symbol_TABLEBLANKS = alloca i32, align 4
  %symbol_TABLETYPE = alloca i32, align 4
  %symbol_TABLEARITY = alloca i32, align 4
  %symbol_TABLESTAT = alloca i32, align 4
  %symbol_TABLEPROP = alloca i32, align 4
  %symbol_TABLESTRING = alloca i32, align 4
  %Index = alloca i32, align 4
  %Info = alloca i32, align 4
  %Entry = alloca %struct.signature*, align 8
  %TypePos = alloca i32, align 4
  %ArityPos = alloca i32, align 4
  %StatPos = alloca i32, align 4
  %PropPos = alloca i32, align 4
  %StringPos = alloca i32, align 4
  %EndPos = alloca i32, align 4
  %ActPos = alloca i32, align 4
  store i32 2, i32* %symbol_TABLEBLANKS, align 4
  store i32 6, i32* %symbol_TABLETYPE, align 4
  store i32 7, i32* %symbol_TABLEARITY, align 4
  store i32 6, i32* %symbol_TABLESTAT, align 4
  store i32 8, i32* %symbol_TABLEPROP, align 4
  store i32 36, i32* %symbol_TABLESTRING, align 4
  %call = call i32 @symbol_SignatureExists()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.108

if.then:                                          ; preds = %entry
  store i32 2, i32* %TypePos, align 4
  %0 = load i32, i32* %TypePos, align 4
  %add = add i32 %0, 6
  %add1 = add i32 %add, 1
  store i32 %add1, i32* %ArityPos, align 4
  %1 = load i32, i32* %ArityPos, align 4
  %add2 = add i32 %1, 7
  %add3 = add i32 %add2, 1
  store i32 %add3, i32* %StatPos, align 4
  %2 = load i32, i32* %StatPos, align 4
  %add4 = add i32 %2, 6
  %add5 = add i32 %add4, 1
  store i32 %add5, i32* %PropPos, align 4
  %3 = load i32, i32* %PropPos, align 4
  %add6 = add i32 %3, 8
  %add7 = add i32 %add6, 1
  store i32 %add7, i32* %StringPos, align 4
  %4 = load i32, i32* %StringPos, align 4
  %add8 = add i32 %4, 36
  %add9 = add i32 %add8, 1
  store i32 %add9, i32* %EndPos, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), %struct._IO_FILE* %5)
  call void @misc_PrintChar(i32 2, i8 signext 32)
  %call11 = call i32 @putchar(i32 43)
  call void @misc_PrintChar(i32 6, i8 signext 45)
  %call12 = call i32 @putchar(i32 43)
  call void @misc_PrintChar(i32 7, i8 signext 45)
  %call13 = call i32 @putchar(i32 43)
  call void @misc_PrintChar(i32 6, i8 signext 45)
  %call14 = call i32 @putchar(i32 43)
  call void @misc_PrintChar(i32 8, i8 signext 45)
  %call15 = call i32 @putchar(i32 43)
  call void @misc_PrintChar(i32 36, i8 signext 45)
  %call16 = call i32 @putchar(i32 43)
  %call17 = call i32 @putchar(i32 10)
  call void @misc_PrintChar(i32 2, i8 signext 32)
  %call18 = call i32 @putchar(i32 124)
  %6 = load i32, i32* %TypePos, align 4
  %add19 = add i32 %6, 1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %7)
  %add21 = add i32 %add19, %call20
  store i32 %add21, i32* %ActPos, align 4
  %8 = load i32, i32* %ArityPos, align 4
  %9 = load i32, i32* %ActPos, align 4
  %sub = sub i32 %8, %9
  call void @misc_PrintChar(i32 %sub, i8 signext 32)
  %call22 = call i32 @putchar(i32 124)
  %10 = load i32, i32* %ArityPos, align 4
  %add23 = add i32 %10, 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %11)
  %add25 = add i32 %add23, %call24
  store i32 %add25, i32* %ActPos, align 4
  %12 = load i32, i32* %StatPos, align 4
  %13 = load i32, i32* %ActPos, align 4
  %sub26 = sub i32 %12, %13
  call void @misc_PrintChar(i32 %sub26, i8 signext 32)
  %call27 = call i32 @putchar(i32 124)
  %14 = load i32, i32* %StatPos, align 4
  %add28 = add i32 %14, 1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call29 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %15)
  %add30 = add i32 %add28, %call29
  store i32 %add30, i32* %ActPos, align 4
  %16 = load i32, i32* %PropPos, align 4
  %17 = load i32, i32* %ActPos, align 4
  %sub31 = sub i32 %16, %17
  call void @misc_PrintChar(i32 %sub31, i8 signext 32)
  %call32 = call i32 @putchar(i32 124)
  %18 = load i32, i32* %PropPos, align 4
  %add33 = add i32 %18, 1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call34 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %19)
  %add35 = add i32 %add33, %call34
  store i32 %add35, i32* %ActPos, align 4
  %20 = load i32, i32* %StringPos, align 4
  %21 = load i32, i32* %ActPos, align 4
  %sub36 = sub i32 %20, %21
  call void @misc_PrintChar(i32 %sub36, i8 signext 32)
  %call37 = call i32 @putchar(i32 124)
  %22 = load i32, i32* %StringPos, align 4
  %add38 = add i32 %22, 1
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call39 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %23)
  %add40 = add i32 %add38, %call39
  store i32 %add40, i32* %ActPos, align 4
  %24 = load i32, i32* %EndPos, align 4
  %25 = load i32, i32* %ActPos, align 4
  %sub41 = sub i32 %24, %25
  call void @misc_PrintChar(i32 %sub41, i8 signext 32)
  %call42 = call i32 @putchar(i32 124)
  %call43 = call i32 @putchar(i32 10)
  call void @misc_PrintChar(i32 2, i8 signext 32)
  %call44 = call i32 @putchar(i32 43)
  call void @misc_PrintChar(i32 6, i8 signext 45)
  %call45 = call i32 @putchar(i32 43)
  call void @misc_PrintChar(i32 7, i8 signext 45)
  %call46 = call i32 @putchar(i32 43)
  call void @misc_PrintChar(i32 6, i8 signext 45)
  %call47 = call i32 @putchar(i32 43)
  call void @misc_PrintChar(i32 8, i8 signext 45)
  %call48 = call i32 @putchar(i32 43)
  call void @misc_PrintChar(i32 36, i8 signext 45)
  %call49 = call i32 @putchar(i32 43)
  %call50 = call i32 @putchar(i32 10)
  store i32 1, i32* %Index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %26 = load i32, i32* %Index, align 4
  %27 = load i32, i32* @symbol_ACTINDEX, align 4
  %cmp = icmp slt i32 %26, %27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %Index, align 4
  %call51 = call %struct.signature* @symbol_Signature(i32 %28)
  store %struct.signature* %call51, %struct.signature** %Entry, align 8
  %29 = load %struct.signature*, %struct.signature** %Entry, align 8
  %cmp52 = icmp ne %struct.signature* %29, null
  br i1 %cmp52, label %if.then.53, label %if.end.100

if.then.53:                                       ; preds = %for.body
  %30 = load %struct.signature*, %struct.signature** %Entry, align 8
  %info = getelementptr inbounds %struct.signature, %struct.signature* %30, i32 0, i32 5
  %31 = load i32, i32* %info, align 4
  store i32 %31, i32* %Info, align 4
  call void @misc_PrintChar(i32 2, i8 signext 32)
  %call54 = call i32 @putchar(i32 124)
  %32 = load i32, i32* %TypePos, align 4
  %add55 = add i32 %32, 1
  store i32 %add55, i32* %ActPos, align 4
  %33 = load i32, i32* %Info, align 4
  %call56 = call i32 @symbol_Type(i32 %33)
  switch i32 %call56, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.59
    i32 2, label %sw.bb.62
    i32 3, label %sw.bb.65
  ]

sw.bb:                                            ; preds = %if.then.53
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call57 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %34)
  %35 = load i32, i32* %ActPos, align 4
  %add58 = add i32 %35, %call57
  store i32 %add58, i32* %ActPos, align 4
  br label %sw.epilog

sw.bb.59:                                         ; preds = %if.then.53
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call60 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %36)
  %37 = load i32, i32* %ActPos, align 4
  %add61 = add i32 %37, %call60
  store i32 %add61, i32* %ActPos, align 4
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.then.53
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call63 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), %struct._IO_FILE* %38)
  %39 = load i32, i32* %ActPos, align 4
  %add64 = add i32 %39, %call63
  store i32 %add64, i32* %ActPos, align 4
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.then.53
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call66 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %40)
  %41 = load i32, i32* %ActPos, align 4
  %add67 = add i32 %41, %call66
  store i32 %add67, i32* %ActPos, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.53, %sw.bb.65, %sw.bb.62, %sw.bb.59, %sw.bb
  %42 = load i32, i32* %ArityPos, align 4
  %43 = load i32, i32* %ActPos, align 4
  %sub68 = sub i32 %42, %43
  call void @misc_PrintChar(i32 %sub68, i8 signext 32)
  %call69 = call i32 @putchar(i32 124)
  %44 = load i32, i32* %ArityPos, align 4
  %add70 = add i32 %44, 1
  %45 = load %struct.signature*, %struct.signature** %Entry, align 8
  %arity = getelementptr inbounds %struct.signature, %struct.signature* %45, i32 0, i32 3
  %46 = load i32, i32* %arity, align 4
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 %46)
  %add72 = add i32 %add70, %call71
  store i32 %add72, i32* %ActPos, align 4
  %47 = load i32, i32* %StatPos, align 4
  %48 = load i32, i32* %ActPos, align 4
  %sub73 = sub i32 %47, %48
  call void @misc_PrintChar(i32 %sub73, i8 signext 32)
  %call74 = call i32 @putchar(i32 124)
  %49 = load i32, i32* %StatPos, align 4
  %add75 = add i32 %49, 1
  store i32 %add75, i32* %ActPos, align 4
  %50 = load i32, i32* %Info, align 4
  %call76 = call i32 @symbol_Type(i32 %50)
  %cmp77 = icmp eq i32 %call76, 1
  br i1 %cmp77, label %if.then.78, label %if.end

if.then.78:                                       ; preds = %sw.epilog
  %51 = load i32, i32* %Info, align 4
  %call79 = call i32 @symbol_Stat(i32 %51)
  switch i32 %call79, label %sw.epilog.86 [
    i32 0, label %sw.bb.80
    i32 1, label %sw.bb.83
  ]

sw.bb.80:                                         ; preds = %if.then.78
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call81 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %52)
  %53 = load i32, i32* %ActPos, align 4
  %add82 = add i32 %53, %call81
  store i32 %add82, i32* %ActPos, align 4
  br label %sw.epilog.86

sw.bb.83:                                         ; preds = %if.then.78
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call84 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %54)
  %55 = load i32, i32* %ActPos, align 4
  %add85 = add i32 %55, %call84
  store i32 %add85, i32* %ActPos, align 4
  br label %sw.epilog.86

sw.epilog.86:                                     ; preds = %if.then.78, %sw.bb.83, %sw.bb.80
  br label %if.end

if.end:                                           ; preds = %sw.epilog.86, %sw.epilog
  %56 = load i32, i32* %PropPos, align 4
  %57 = load i32, i32* %ActPos, align 4
  %sub87 = sub i32 %56, %57
  call void @misc_PrintChar(i32 %sub87, i8 signext 32)
  %call88 = call i32 @putchar(i32 124)
  %58 = load i32, i32* %PropPos, align 4
  %add89 = add i32 %58, 1
  %59 = load %struct.signature*, %struct.signature** %Entry, align 8
  %props = getelementptr inbounds %struct.signature, %struct.signature* %59, i32 0, i32 4
  %60 = load i32, i32* %props, align 4
  %call90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 %60)
  %add91 = add i32 %add89, %call90
  store i32 %add91, i32* %ActPos, align 4
  %61 = load i32, i32* %StringPos, align 4
  %62 = load i32, i32* %ActPos, align 4
  %sub92 = sub i32 %61, %62
  call void @misc_PrintChar(i32 %sub92, i8 signext 32)
  %call93 = call i32 @putchar(i32 124)
  %63 = load i32, i32* %StringPos, align 4
  %add94 = add i32 %63, 1
  %64 = load %struct.signature*, %struct.signature** %Entry, align 8
  %name = getelementptr inbounds %struct.signature, %struct.signature* %64, i32 0, i32 0
  %65 = load i8*, i8** %name, align 8
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* %65)
  %add96 = add i32 %add94, %call95
  store i32 %add96, i32* %ActPos, align 4
  %66 = load i32, i32* %EndPos, align 4
  %67 = load i32, i32* %ActPos, align 4
  %sub97 = sub i32 %66, %67
  call void @misc_PrintChar(i32 %sub97, i8 signext 32)
  %call98 = call i32 @putchar(i32 124)
  %call99 = call i32 @putchar(i32 10)
  br label %if.end.100

if.end.100:                                       ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.100
  %68 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @misc_PrintChar(i32 2, i8 signext 32)
  %call101 = call i32 @putchar(i32 43)
  call void @misc_PrintChar(i32 6, i8 signext 45)
  %call102 = call i32 @putchar(i32 43)
  call void @misc_PrintChar(i32 7, i8 signext 45)
  %call103 = call i32 @putchar(i32 43)
  call void @misc_PrintChar(i32 6, i8 signext 45)
  %call104 = call i32 @putchar(i32 43)
  call void @misc_PrintChar(i32 8, i8 signext 45)
  %call105 = call i32 @putchar(i32 124)
  call void @misc_PrintChar(i32 36, i8 signext 45)
  %call106 = call i32 @putchar(i32 43)
  %call107 = call i32 @putchar(i32 10)
  br label %if.end.108

if.end.108:                                       ; preds = %for.end, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_PrintChar(i32 %Number, i8 signext %Character) #1 {
entry:
  %Number.addr = alloca i32, align 4
  %Character.addr = alloca i8, align 1
  %Counter = alloca i32, align 4
  store i32 %Number, i32* %Number.addr, align 4
  store i8 %Character, i8* %Character.addr, align 1
  store i32 1, i32* %Counter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %Counter, align 4
  %1 = load i32, i32* %Number.addr, align 4
  %cmp = icmp ule i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8, i8* %Character.addr, align 1
  %conv = sext i8 %2 to i32
  %call = call i32 @putchar(i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %Counter, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %Counter, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Stat(i32 %ActSymbol) #1 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  call void @symbol_CheckNoVariable(i32 %0)
  %1 = load i32, i32* %ActSymbol.addr, align 4
  %sub = sub nsw i32 0, %1
  %and = and i32 %sub, 4
  %shr = ashr i32 %and, 2
  ret i32 %shr
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckIndexInRange(i32 %Index) #1 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #3

declare void @misc_UserErrorReport(i8*, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_Error() #1 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.signature* @symbol_GetSignature() #1 {
entry:
  %call = call i8* @memory_Malloc(i32 40)
  %0 = bitcast i8* %call to %struct.signature*
  ret %struct.signature* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_SignatureSymbol(i32 %ActIndex, i32 %Type, i32 %Status) #1 {
entry:
  %ActIndex.addr = alloca i32, align 4
  %Type.addr = alloca i32, align 4
  %Status.addr = alloca i32, align 4
  store i32 %ActIndex, i32* %ActIndex.addr, align 4
  store i32 %Type, i32* %Type.addr, align 4
  store i32 %Status, i32* %Status.addr, align 4
  %0 = load i32, i32* %ActIndex.addr, align 4
  %shl = shl i32 %0, 3
  %1 = load i32, i32* %Status.addr, align 4
  %shl1 = shl i32 %1, 2
  %or = or i32 %shl, %shl1
  %2 = load i32, i32* %Type.addr, align 4
  %or2 = or i32 %or, %2
  %sub = sub nsw i32 0, %or2
  ret i32 %sub
}

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_SetIncreasedOrdering(i32* %P, i32 %S) #1 {
entry:
  %P.addr = alloca i32*, align 8
  %S.addr = alloca i32, align 4
  store i32* %P, i32** %P.addr, align 8
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32*, i32** %P.addr, align 8
  %1 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_GetIncreasedOrderingCounter()
  call void @symbol_SetOrdering(i32* %0, i32 %1, i32 %call)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckNoVariable(i32 %S) #1 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
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
declare void @free(i8*) #2

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
define internal void @list_Free(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = bitcast %struct.LIST_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 16)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
