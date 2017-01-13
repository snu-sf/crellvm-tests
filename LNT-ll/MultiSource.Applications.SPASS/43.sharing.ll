; ModuleID = './MultiSource.Applications.SPASS/43.sharing.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.SHARED_INDEX_NODE = type { %struct.st*, [3001 x %struct.term*], [4000 x %struct.term*], i32 }
%struct.st = type { %struct.subst*, %struct.LIST_HELP*, %struct.LIST_HELP*, i16, i16 }
%struct.subst = type { %struct.subst*, i32, %struct.term* }

@sharing_STACK = internal global [500 x %struct.LIST_HELP*] zeroinitializer, align 16
@sharing_STACKPOINTER = internal global %struct.LIST_HELP** getelementptr inbounds ([500 x %struct.LIST_HELP*], [500 x %struct.LIST_HELP*]* @sharing_STACK, i32 0, i32 0), align 8
@sharing_DATALIST = internal global %struct.LIST_HELP* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"\0A X%d   :  \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\0A c%d   :  \00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"   has the direct superterms : \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\0A x%d   :  \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"------------------------\00", align 1
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@stack_POINTER = external global i32, align 4
@stack_STACK = external global [10000 x i8*], align 16
@term_STAMP = external global i32, align 4
@symbol_TYPESTATBITS = external constant i32, align 4
@symbol_TYPEMASK = external constant i32, align 4
@cont_LEFTCONTEXT = external global %struct.binding*, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"]\00", align 1

; Function Attrs: nounwind uwtable
define %struct.SHARED_INDEX_NODE* @sharing_IndexCreate() #0 {
entry:
  %Result = alloca %struct.SHARED_INDEX_NODE*, align 8
  %i = alloca i32, align 4
  %call = call i8* @memory_Malloc(i32 56024)
  %0 = bitcast i8* %call to %struct.SHARED_INDEX_NODE*
  store %struct.SHARED_INDEX_NODE* %0, %struct.SHARED_INDEX_NODE** %Result, align 8
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Result, align 8
  %call1 = call %struct.st* @st_IndexCreate()
  call void @sharing_SetIndex(%struct.SHARED_INDEX_NODE* %1, %struct.st* %call1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %call2 = call i32 @symbol_MaxVars()
  %cmp = icmp slt i32 %2, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Result, align 8
  %4 = load i32, i32* %i, align 4
  call void @sharing_SetVartableEntry(%struct.SHARED_INDEX_NODE* %3, i32 %4, %struct.term* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.7, %for.end
  %6 = load i32, i32* %i, align 4
  %call4 = call i32 @symbol_MaxConsts()
  %cmp5 = icmp slt i32 %6, %call4
  br i1 %cmp5, label %for.body.6, label %for.end.9

for.body.6:                                       ; preds = %for.cond.3
  %7 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Result, align 8
  %8 = load i32, i32* %i, align 4
  call void @sharing_SetConsttableEntry(%struct.SHARED_INDEX_NODE* %7, i32 %8, %struct.term* null)
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.body.6
  %9 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond.3

for.end.9:                                        ; preds = %for.cond.3
  %10 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Result, align 8
  %call10 = call i32 @term_GetStampID()
  call void @sharing_SetStampID(%struct.SHARED_INDEX_NODE* %10, i32 %call10)
  %11 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Result, align 8
  ret %struct.SHARED_INDEX_NODE* %11
}

declare i8* @memory_Malloc(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @sharing_SetIndex(%struct.SHARED_INDEX_NODE* %ShIndex, %struct.st* %ST) #2 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %ST.addr = alloca %struct.st*, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store %struct.st* %ST, %struct.st** %ST.addr, align 8
  %0 = load %struct.st*, %struct.st** %ST.addr, align 8
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %index = getelementptr inbounds %struct.SHARED_INDEX_NODE, %struct.SHARED_INDEX_NODE* %1, i32 0, i32 0
  store %struct.st* %0, %struct.st** %index, align 8
  ret void
}

declare %struct.st* @st_IndexCreate() #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_MaxVars() #2 {
entry:
  ret i32 3001
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sharing_SetVartableEntry(%struct.SHARED_INDEX_NODE* %ShIndex, i32 %Index, %struct.term* %Term) #2 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Index.addr = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %Index, i32* %Index.addr, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = load i32, i32* %Index.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %vartable = getelementptr inbounds %struct.SHARED_INDEX_NODE, %struct.SHARED_INDEX_NODE* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3001 x %struct.term*], [3001 x %struct.term*]* %vartable, i32 0, i64 %idxprom
  store %struct.term* %0, %struct.term** %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_MaxConsts() #2 {
entry:
  ret i32 4000
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sharing_SetConsttableEntry(%struct.SHARED_INDEX_NODE* %ShIndex, i32 %Index, %struct.term* %Term) #2 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Index.addr = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %Index, i32* %Index.addr, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = load i32, i32* %Index.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %consttable = getelementptr inbounds %struct.SHARED_INDEX_NODE, %struct.SHARED_INDEX_NODE* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4000 x %struct.term*], [4000 x %struct.term*]* %consttable, i32 0, i64 %idxprom
  store %struct.term* %0, %struct.term** %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sharing_SetStampID(%struct.SHARED_INDEX_NODE* %ShIndex, i32 %Stamp) #2 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Stamp.addr = alloca i32, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %Stamp, i32* %Stamp.addr, align 4
  %0 = load i32, i32* %Stamp.addr, align 4
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %stampId = getelementptr inbounds %struct.SHARED_INDEX_NODE, %struct.SHARED_INDEX_NODE* %1, i32 0, i32 3
  store i32 %0, i32* %stampId, align 4
  ret void
}

declare i32 @term_GetStampID() #1

; Function Attrs: nounwind uwtable
define void @sharing_IndexDelete(%struct.SHARED_INDEX_NODE* %ShIndex) #0 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %0)
  call void @st_IndexDelete(%struct.st* %call)
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %2 = bitcast %struct.SHARED_INDEX_NODE* %1 to i8*
  call void @memory_Free(i8* %2, i32 56024)
  ret void
}

declare void @st_IndexDelete(%struct.st*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %ShIndex) #2 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %index = getelementptr inbounds %struct.SHARED_INDEX_NODE, %struct.SHARED_INDEX_NODE* %0, i32 0, i32 0
  %1 = load %struct.st*, %struct.st** %index, align 8
  ret %struct.st* %1
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

; Function Attrs: nounwind uwtable
define void @sharing_PushOnStack(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %ArgList = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @stack_Push(i8* %1)
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %ArgList, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call2 to %struct.term*
  call void @sharing_PushOnStack(%struct.term* %5)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %ArgList, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
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
define void @sharing_PushReverseOnStack(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %ArgList = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %ArgList, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call4 to %struct.term*
  call void @sharing_PushReverseOnStack(%struct.term* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %ArgList, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %7 = bitcast %struct.term* %6 to i8*
  call void @stack_Push(i8* %7)
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
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
define void @sharing_PushReverseOnStackExcept(%struct.term* %Term, %struct.LIST_HELP* %DontTermList) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %DontTermList.addr = alloca %struct.LIST_HELP*, align 8
  %ArgList = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.LIST_HELP* %DontTermList, %struct.LIST_HELP** %DontTermList.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DontTermList.addr, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_ListContainsTerm(%struct.LIST_HELP* %1, %struct.term* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %ArgList, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call6 to %struct.term*
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DontTermList.addr, align 8
  call void @sharing_PushReverseOnStackExcept(%struct.term* %6, %struct.LIST_HELP* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %ArgList, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %10 = bitcast %struct.term* %9 to i8*
  call void @stack_Push(i8* %10)
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_ListContainsTerm(%struct.LIST_HELP* %List, %struct.term* %Term) #2 {
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

; Function Attrs: nounwind uwtable
define void @sharing_PushOnStackNoStamps(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %ArgList = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_HasTermStamp(%struct.term* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %3 = bitcast %struct.term* %2 to i8*
  call void @stack_Push(i8* %3)
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %ArgList, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call6 to %struct.term*
  call void @sharing_PushOnStackNoStamps(%struct.term* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %ArgList, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_HasTermStamp(%struct.term* %T) #2 {
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

; Function Attrs: nounwind uwtable
define void @sharing_PushListOnStack(%struct.LIST_HELP* %TermList) #0 {
entry:
  %TermList.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %TermList, %struct.LIST_HELP** %TermList.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.term*
  call void @sharing_PushOnStack(%struct.term* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %TermList.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sharing_PushListReverseOnStack(%struct.LIST_HELP* %TermList) #0 {
entry:
  %TermList.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %TermList, %struct.LIST_HELP** %TermList.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.term*
  call void @sharing_PushReverseOnStack(%struct.term* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %TermList.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sharing_PushListReverseOnStackExcept(%struct.LIST_HELP* %TermList, %struct.LIST_HELP* %DontPushList) #0 {
entry:
  %TermList.addr = alloca %struct.LIST_HELP*, align 8
  %DontPushList.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %TermList, %struct.LIST_HELP** %TermList.addr, align 8
  store %struct.LIST_HELP* %DontPushList, %struct.LIST_HELP** %DontPushList.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.term*
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DontPushList.addr, align 8
  call void @sharing_PushReverseOnStackExcept(%struct.term* %2, %struct.LIST_HELP* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %TermList.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sharing_PushListOnStackNoStamps(%struct.LIST_HELP* %TermList) #0 {
entry:
  %TermList.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %TermList, %struct.LIST_HELP** %TermList.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.term*
  call void @sharing_PushOnStackNoStamps(%struct.term* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %TermList.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.term* @sharing_Insert(i8* %Data, %struct.term* %Atom, %struct.SHARED_INDEX_NODE* %SharedIndex) #0 {
entry:
  %Data.addr = alloca i8*, align 8
  %Atom.addr = alloca %struct.term*, align 8
  %SharedIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  store i8* %Data, i8** %Data.addr, align 8
  store %struct.term* %Atom, %struct.term** %Atom.addr, align 8
  store %struct.SHARED_INDEX_NODE* %SharedIndex, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %0 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %call = call %struct.term* @sharing_InsertIntoSharing(%struct.term* %0, %struct.SHARED_INDEX_NODE* %1)
  store %struct.term* %call, %struct.term** %Atom.addr, align 8
  %2 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %3 = load i8*, i8** %Data.addr, align 8
  %4 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %4)
  %call2 = call %struct.LIST_HELP* @list_Cons(i8* %3, %struct.LIST_HELP* %call1)
  call void @term_RplacSupertermList(%struct.term* %2, %struct.LIST_HELP* %call2)
  %5 = load %struct.term*, %struct.term** %Atom.addr, align 8
  ret %struct.term* %5
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @sharing_InsertIntoSharing(%struct.term* %Term, %struct.SHARED_INDEX_NODE* %SharedIndex) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %SharedIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %B_Stack = alloca i32, align 4
  %InsTerm = alloca %struct.term*, align 8
  %SharedDuplicate = alloca %struct.term*, align 8
  %HelpList = alloca %struct.LIST_HELP*, align 8
  %DuplCandHasSameArgs = alloca i32, align 4
  %OrigHelpArgList = alloca %struct.LIST_HELP*, align 8
  %DuplHelpArgList = alloca %struct.LIST_HELP*, align 8
  %SharedArg = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.SHARED_INDEX_NODE* %SharedIndex, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %B_Stack, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @sharing_PushOnStack(%struct.term* %0)
  %call1 = call i8* @stack_Top()
  %1 = bitcast i8* %call1 to %struct.term*
  store %struct.term* %1, %struct.term** %InsTerm, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.104, %entry
  %2 = load i32, i32* %B_Stack, align 4
  %call2 = call i32 @stack_Empty(i32 %2)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end.105

while.body:                                       ; preds = %while.cond
  %call3 = call i8* @stack_PopResult()
  %3 = bitcast i8* %call3 to %struct.term*
  store %struct.term* %3, %struct.term** %InsTerm, align 8
  %4 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call4 = call i32 @term_IsVariable(%struct.term* %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load %struct.term*, %struct.term** %InsTerm, align 8
  %6 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %call6 = call i32 @sharing_IsSharedVar(%struct.term* %5, %struct.SHARED_INDEX_NODE* %6)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %7 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %8 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call9 = call i32 @sharing_VariableIndex(%struct.term* %8)
  %9 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %9)
  %call11 = call %struct.LIST_HELP* @list_Nil()
  %call12 = call %struct.term* @term_Create(i32 %call10, %struct.LIST_HELP* %call11)
  call void @sharing_SetVartableEntry(%struct.SHARED_INDEX_NODE* %7, i32 %call9, %struct.term* %call12)
  %10 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %call13 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %10)
  %11 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %12 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call14 = call i32 @sharing_VariableIndex(%struct.term* %12)
  %call15 = call %struct.term* @sharing_VartableEntry(%struct.SHARED_INDEX_NODE* %11, i32 %call14)
  %13 = bitcast %struct.term* %call15 to i8*
  %14 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %15 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call16 = call i32 @sharing_VariableIndex(%struct.term* %15)
  %call17 = call %struct.term* @sharing_VartableEntry(%struct.SHARED_INDEX_NODE* %14, i32 %call16)
  %call18 = call %struct.binding* @cont_LeftContext()
  call void @st_EntryCreate(%struct.st* %call13, i8* %13, %struct.term* %call17, %struct.binding* %call18)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %16 = load %struct.term*, %struct.term** %InsTerm, align 8
  %17 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %18 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call19 = call i32 @sharing_VariableIndex(%struct.term* %18)
  %call20 = call %struct.term* @sharing_VartableEntry(%struct.SHARED_INDEX_NODE* %17, i32 %call19)
  call void @sharing_RememberSharedTermCopy(%struct.term* %16, %struct.term* %call20)
  br label %if.end.104

if.else:                                          ; preds = %while.body
  %19 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call21 = call i32 @term_IsConstant(%struct.term* %19)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.40

if.then.23:                                       ; preds = %if.else
  %20 = load %struct.term*, %struct.term** %InsTerm, align 8
  %21 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %call24 = call i32 @sharing_IsSharedConst(%struct.term* %20, %struct.SHARED_INDEX_NODE* %21)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.37, label %if.then.26

if.then.26:                                       ; preds = %if.then.23
  %22 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %23 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call27 = call i32 @sharing_ConstantIndex(%struct.term* %23)
  %24 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call28 = call i32 @term_TopSymbol(%struct.term* %24)
  %call29 = call %struct.LIST_HELP* @list_Nil()
  %call30 = call %struct.term* @term_Create(i32 %call28, %struct.LIST_HELP* %call29)
  call void @sharing_SetConsttableEntry(%struct.SHARED_INDEX_NODE* %22, i32 %call27, %struct.term* %call30)
  %25 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %call31 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %25)
  %26 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %27 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call32 = call i32 @sharing_ConstantIndex(%struct.term* %27)
  %call33 = call %struct.term* @sharing_ConsttableEntry(%struct.SHARED_INDEX_NODE* %26, i32 %call32)
  %28 = bitcast %struct.term* %call33 to i8*
  %29 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %30 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call34 = call i32 @sharing_ConstantIndex(%struct.term* %30)
  %call35 = call %struct.term* @sharing_ConsttableEntry(%struct.SHARED_INDEX_NODE* %29, i32 %call34)
  %call36 = call %struct.binding* @cont_LeftContext()
  call void @st_EntryCreate(%struct.st* %call31, i8* %28, %struct.term* %call35, %struct.binding* %call36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.26, %if.then.23
  %31 = load %struct.term*, %struct.term** %InsTerm, align 8
  %32 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %33 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call38 = call i32 @sharing_ConstantIndex(%struct.term* %33)
  %call39 = call %struct.term* @sharing_ConsttableEntry(%struct.SHARED_INDEX_NODE* %32, i32 %call38)
  call void @sharing_RememberSharedTermCopy(%struct.term* %31, %struct.term* %call39)
  br label %if.end.103

if.else.40:                                       ; preds = %if.else
  store %struct.term* null, %struct.term** %SharedDuplicate, align 8
  %34 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call41 = call %struct.term* @term_FirstArgument(%struct.term* %34)
  %call42 = call %struct.term* @sharing_SharedTermCopy(%struct.term* %call41)
  %call43 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %call42)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %HelpList, align 8
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call44 = call i32 @list_Empty(%struct.LIST_HELP* %35)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.else.50

if.then.46:                                       ; preds = %if.else.40
  %36 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call47 = call i32 @term_TopSymbol(%struct.term* %36)
  %call48 = call %struct.LIST_HELP* @list_Nil()
  %call49 = call %struct.term* @term_Create(i32 %call47, %struct.LIST_HELP* %call48)
  store %struct.term* %call49, %struct.term** %SharedDuplicate, align 8
  store i32 0, i32* %DuplCandHasSameArgs, align 4
  br label %if.end.84

if.else.50:                                       ; preds = %if.else.40
  store i32 0, i32* %DuplCandHasSameArgs, align 4
  br label %while.cond.51

while.cond.51:                                    ; preds = %if.end.75, %if.else.50
  %37 = load i32, i32* %DuplCandHasSameArgs, align 4
  %tobool52 = icmp ne i32 %37, 0
  br i1 %tobool52, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond.51
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call53 = call i32 @list_Empty(%struct.LIST_HELP* %38)
  %tobool54 = icmp ne i32 %call53, 0
  %lnot55 = xor i1 %tobool54, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.51
  %39 = phi i1 [ false, %while.cond.51 ], [ %lnot55, %land.rhs ]
  br i1 %39, label %while.body.56, label %while.end.77

while.body.56:                                    ; preds = %land.end
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call57 = call i8* @list_First(%struct.LIST_HELP* %40)
  %41 = bitcast i8* %call57 to %struct.term*
  store %struct.term* %41, %struct.term** %SharedDuplicate, align 8
  %42 = load %struct.term*, %struct.term** %SharedDuplicate, align 8
  %call58 = call i32 @term_TopSymbol(%struct.term* %42)
  %43 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call59 = call i32 @term_TopSymbol(%struct.term* %43)
  %cmp = icmp eq i32 %call58, %call59
  br i1 %cmp, label %if.then.60, label %if.end.75

if.then.60:                                       ; preds = %while.body.56
  %44 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call61 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %44)
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %OrigHelpArgList, align 8
  %45 = load %struct.term*, %struct.term** %SharedDuplicate, align 8
  %call62 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %45)
  store %struct.LIST_HELP* %call62, %struct.LIST_HELP** %DuplHelpArgList, align 8
  br label %while.cond.63

while.cond.63:                                    ; preds = %while.body.72, %if.then.60
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %OrigHelpArgList, align 8
  %call64 = call i32 @list_Empty(%struct.LIST_HELP* %46)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %land.end.71, label %land.rhs.66

land.rhs.66:                                      ; preds = %while.cond.63
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %OrigHelpArgList, align 8
  %call67 = call i8* @list_First(%struct.LIST_HELP* %47)
  %48 = bitcast i8* %call67 to %struct.term*
  %call68 = call %struct.term* @sharing_SharedTermCopy(%struct.term* %48)
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DuplHelpArgList, align 8
  %call69 = call i8* @list_First(%struct.LIST_HELP* %49)
  %50 = bitcast i8* %call69 to %struct.term*
  %cmp70 = icmp eq %struct.term* %call68, %50
  %conv = zext i1 %cmp70 to i32
  store i32 %conv, i32* %DuplCandHasSameArgs, align 4
  br label %land.end.71

land.end.71:                                      ; preds = %land.rhs.66, %while.cond.63
  %51 = phi i1 [ false, %while.cond.63 ], [ %cmp70, %land.rhs.66 ]
  br i1 %51, label %while.body.72, label %while.end

while.body.72:                                    ; preds = %land.end.71
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DuplHelpArgList, align 8
  %call73 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %52)
  store %struct.LIST_HELP* %call73, %struct.LIST_HELP** %DuplHelpArgList, align 8
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %OrigHelpArgList, align 8
  %call74 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %53)
  store %struct.LIST_HELP* %call74, %struct.LIST_HELP** %OrigHelpArgList, align 8
  br label %while.cond.63

while.end:                                        ; preds = %land.end.71
  br label %if.end.75

if.end.75:                                        ; preds = %while.end, %while.body.56
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call76 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %54)
  store %struct.LIST_HELP* %call76, %struct.LIST_HELP** %HelpList, align 8
  br label %while.cond.51

while.end.77:                                     ; preds = %land.end
  %55 = load i32, i32* %DuplCandHasSameArgs, align 4
  %tobool78 = icmp ne i32 %55, 0
  br i1 %tobool78, label %if.end.83, label %if.then.79

if.then.79:                                       ; preds = %while.end.77
  %56 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call80 = call i32 @term_TopSymbol(%struct.term* %56)
  %call81 = call %struct.LIST_HELP* @list_Nil()
  %call82 = call %struct.term* @term_Create(i32 %call80, %struct.LIST_HELP* %call81)
  store %struct.term* %call82, %struct.term** %SharedDuplicate, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.79, %while.end.77
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.46
  %57 = load i32, i32* %DuplCandHasSameArgs, align 4
  %tobool85 = icmp ne i32 %57, 0
  br i1 %tobool85, label %if.end.102, label %if.then.86

if.then.86:                                       ; preds = %if.end.84
  %58 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call87 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %58)
  store %struct.LIST_HELP* %call87, %struct.LIST_HELP** %HelpList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.86
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call88 = call i32 @list_Empty(%struct.LIST_HELP* %59)
  %tobool89 = icmp ne i32 %call88, 0
  %lnot90 = xor i1 %tobool89, true
  br i1 %lnot90, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call91 = call i8* @list_First(%struct.LIST_HELP* %60)
  %61 = bitcast i8* %call91 to %struct.term*
  %call92 = call %struct.term* @sharing_SharedTermCopy(%struct.term* %61)
  store %struct.term* %call92, %struct.term** %SharedArg, align 8
  %62 = load %struct.term*, %struct.term** %SharedDuplicate, align 8
  %63 = load %struct.term*, %struct.term** %SharedArg, align 8
  %64 = bitcast %struct.term* %63 to i8*
  %65 = load %struct.term*, %struct.term** %SharedDuplicate, align 8
  %call93 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %65)
  %call94 = call %struct.LIST_HELP* @list_Cons(i8* %64, %struct.LIST_HELP* %call93)
  call void @term_RplacArgumentList(%struct.term* %62, %struct.LIST_HELP* %call94)
  %66 = load %struct.term*, %struct.term** %SharedArg, align 8
  %67 = load %struct.term*, %struct.term** %SharedDuplicate, align 8
  %68 = bitcast %struct.term* %67 to i8*
  %69 = load %struct.term*, %struct.term** %SharedArg, align 8
  %call95 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %69)
  %call96 = call %struct.LIST_HELP* @list_Cons(i8* %68, %struct.LIST_HELP* %call95)
  call void @term_RplacSupertermList(%struct.term* %66, %struct.LIST_HELP* %call96)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call97 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %70)
  store %struct.LIST_HELP* %call97, %struct.LIST_HELP** %HelpList, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %71 = load %struct.term*, %struct.term** %SharedDuplicate, align 8
  %72 = load %struct.term*, %struct.term** %SharedDuplicate, align 8
  %call98 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %72)
  %call99 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %call98)
  call void @term_RplacArgumentList(%struct.term* %71, %struct.LIST_HELP* %call99)
  %73 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %call100 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %73)
  %74 = load %struct.term*, %struct.term** %SharedDuplicate, align 8
  %75 = bitcast %struct.term* %74 to i8*
  %76 = load %struct.term*, %struct.term** %SharedDuplicate, align 8
  %call101 = call %struct.binding* @cont_LeftContext()
  call void @st_EntryCreate(%struct.st* %call100, i8* %75, %struct.term* %76, %struct.binding* %call101)
  br label %if.end.102

if.end.102:                                       ; preds = %for.end, %if.end.84
  %77 = load %struct.term*, %struct.term** %InsTerm, align 8
  %78 = load %struct.term*, %struct.term** %SharedDuplicate, align 8
  call void @sharing_RememberSharedTermCopy(%struct.term* %77, %struct.term* %78)
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.37
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end
  br label %while.cond

while.end.105:                                    ; preds = %while.cond
  %79 = load %struct.term*, %struct.term** %InsTerm, align 8
  %call106 = call %struct.term* @sharing_SharedTermCopy(%struct.term* %79)
  ret %struct.term* %call106
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_RplacSupertermList(%struct.term* %T, %struct.LIST_HELP* %L) #2 {
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
define internal %struct.LIST_HELP* @term_SupertermList(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %super = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 1
  %termlist = bitcast %union.anon* %super to %struct.LIST_HELP**
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: nounwind uwtable
define void @sharing_Delete(i8* %Data, %struct.term* %Atom, %struct.SHARED_INDEX_NODE* %SharedIndex) #0 {
entry:
  %Data.addr = alloca i8*, align 8
  %Atom.addr = alloca %struct.term*, align 8
  %SharedIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  store i8* %Data, i8** %Data.addr, align 8
  store %struct.term* %Atom, %struct.term** %Atom.addr, align 8
  store %struct.SHARED_INDEX_NODE* %SharedIndex, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %0 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %1 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %1)
  %2 = load i8*, i8** %Data.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call, i8* %2)
  call void @term_RplacSupertermList(%struct.term* %0, %struct.LIST_HELP* %call1)
  %3 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call2 = call i32 @sharing_IsNoMoreUsed(%struct.term* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %5 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  call void @sharing_DeleteFromSharing(%struct.term* %4, %struct.SHARED_INDEX_NODE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sharing_IsNoMoreUsed(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %0)
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %call)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal void @sharing_DeleteFromSharing(%struct.term* %Term, %struct.SHARED_INDEX_NODE* %SharedIndex) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %SharedIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %IsIndexed = alloca i32, align 4
  %Args = alloca %struct.LIST_HELP*, align 8
  %NextArg = alloca %struct.term*, align 8
  %Help = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.SHARED_INDEX_NODE* %SharedIndex, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %call = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %0)
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %2 = bitcast %struct.term* %1 to i8*
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.binding* @cont_LeftContext()
  %call2 = call i32 @st_EntryDelete(%struct.st* %call, i8* %2, %struct.term* %3, %struct.binding* %call1)
  store i32 %call2, i32* %IsIndexed, align 4
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_IsComplex(%struct.term* %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Args, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %Help, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call7 = call i8* @list_First(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call7 to %struct.term*
  store %struct.term* %9, %struct.term** %NextArg, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Args, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  call void @list_Free(%struct.LIST_HELP* %11)
  %12 = load %struct.term*, %struct.term** %NextArg, align 8
  %13 = load %struct.term*, %struct.term** %NextArg, align 8
  %call9 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %13)
  %14 = load %struct.term*, %struct.term** %Term.addr, align 8
  %15 = bitcast %struct.term* %14 to i8*
  %call10 = call %struct.LIST_HELP* @list_PointerDeleteOneElement(%struct.LIST_HELP* %call9, i8* %15)
  call void @term_RplacSupertermList(%struct.term* %12, %struct.LIST_HELP* %call10)
  %16 = load %struct.term*, %struct.term** %NextArg, align 8
  %call11 = call i32 @sharing_IsNoMoreUsed(%struct.term* %16)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %while.body
  %17 = load %struct.term*, %struct.term** %NextArg, align 8
  %18 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  call void @sharing_DeleteFromSharing(%struct.term* %17, %struct.SHARED_INDEX_NODE* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.21

if.else:                                          ; preds = %entry
  %19 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call14 = call i32 @term_IsConstant(%struct.term* %19)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else
  %20 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %21 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call17 = call i32 @sharing_ConstantIndex(%struct.term* %21)
  call void @sharing_SetConsttableEntry(%struct.SHARED_INDEX_NODE* %20, i32 %call17, %struct.term* null)
  br label %if.end.20

if.else.18:                                       ; preds = %if.else
  %22 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %23 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call19 = call i32 @sharing_VariableIndex(%struct.term* %23)
  call void @sharing_SetVartableEntry(%struct.SHARED_INDEX_NODE* %22, i32 %call19, %struct.term* null)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %while.end
  %24 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call22 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %24)
  call void @list_Delete(%struct.LIST_HELP* %call22)
  %25 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_Free(%struct.term* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @sharing_GetDataList(%struct.term* %Term, %struct.SHARED_INDEX_NODE* %SharedIndex) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %SharedIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.SHARED_INDEX_NODE* %SharedIndex, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %call1 = call i32 @sharing_StampID(%struct.SHARED_INDEX_NODE* %0)
  %call2 = call i32 @term_StampOverflow(i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  call void @sharing_ResetAllTermStamps(%struct.SHARED_INDEX_NODE* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @term_StartStamp()
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.LIST_HELP* @sharing_InternGetDataList(%struct.term* %2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Result, align 8
  call void @term_StopStamp()
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #2 {
entry:
  ret %struct.LIST_HELP* null
}

declare i32 @term_StampOverflow(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sharing_StampID(%struct.SHARED_INDEX_NODE* %ShIndex) #2 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %stampId = getelementptr inbounds %struct.SHARED_INDEX_NODE, %struct.SHARED_INDEX_NODE* %0, i32 0, i32 3
  %1 = load i32, i32* %stampId, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @sharing_ResetAllTermStamps(%struct.SHARED_INDEX_NODE* %SharedIndex) #0 {
entry:
  %SharedIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %term = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  store %struct.SHARED_INDEX_NODE* %SharedIndex, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %call = call i32 @symbol_MaxVars()
  %cmp = icmp slt i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %2 = load i32, i32* %i, align 4
  %call1 = call %struct.term* @sharing_VartableEntry(%struct.SHARED_INDEX_NODE* %1, i32 %2)
  store %struct.term* %call1, %struct.term** %term, align 8
  %3 = load %struct.term*, %struct.term** %term, align 8
  %cmp2 = icmp ne %struct.term* %3, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct.term*, %struct.term** %term, align 8
  call void @sharing_ResetTermStamp(%struct.term* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.11, %for.end
  %6 = load i32, i32* %i, align 4
  %call4 = call i32 @symbol_MaxConsts()
  %cmp5 = icmp slt i32 %6, %call4
  br i1 %cmp5, label %for.body.6, label %for.end.13

for.body.6:                                       ; preds = %for.cond.3
  %7 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call7 = call %struct.term* @sharing_ConsttableEntry(%struct.SHARED_INDEX_NODE* %7, i32 %8)
  store %struct.term* %call7, %struct.term** %term, align 8
  %9 = load %struct.term*, %struct.term** %term, align 8
  %cmp8 = icmp ne %struct.term* %9, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body.6
  %10 = load %struct.term*, %struct.term** %term, align 8
  call void @sharing_ResetTermStamp(%struct.term* %10)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %for.body.6
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end.10
  %11 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.3

for.end.13:                                       ; preds = %for.cond.3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_StartStamp() #2 {
entry:
  %0 = load i32, i32* @term_STAMP, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @term_STAMP, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @sharing_InternGetDataList(%struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %SuperList = alloca %struct.LIST_HELP*, align 8
  %DataList = alloca %struct.LIST_HELP*, align 8
  %superterm = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsAtom(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_AtomsLiterals(%struct.term* %1)
  %call2 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %DataList, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %2)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %SuperList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SuperList, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SuperList, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call7 to %struct.term*
  store %struct.term* %5, %struct.term** %superterm, align 8
  %6 = load %struct.term*, %struct.term** %superterm, align 8
  %call8 = call i32 @term_AlreadyVisited(%struct.term* %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %for.body
  %7 = load %struct.term*, %struct.term** %superterm, align 8
  %call11 = call %struct.LIST_HELP* @sharing_InternGetDataList(%struct.term* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DataList, align 8
  %call12 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call11, %struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %DataList, align 8
  %9 = load %struct.term*, %struct.term** %superterm, align 8
  call void @term_SetTermStamp(%struct.term* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SuperList, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %SuperList, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DataList, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_StopStamp() #2 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @sharing_StartDataIterator(%struct.term* %Term, %struct.SHARED_INDEX_NODE* %SharedIndex) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %SharedIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.SHARED_INDEX_NODE* %SharedIndex, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %call = call i32 @sharing_StampID(%struct.SHARED_INDEX_NODE* %0)
  %call1 = call i32 @term_StampOverflow(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  call void @sharing_ResetAllTermStamps(%struct.SHARED_INDEX_NODE* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @term_StartStamp()
  store %struct.LIST_HELP** getelementptr inbounds ([500 x %struct.LIST_HELP*], [500 x %struct.LIST_HELP*]* @sharing_STACK, i32 0, i32 0), %struct.LIST_HELP*** @sharing_STACKPOINTER, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_IsAtom(%struct.term* %2)
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %3)
  %4 = load %struct.LIST_HELP**, %struct.LIST_HELP*** @sharing_STACKPOINTER, align 8
  %incdec.ptr = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %4, i32 1
  store %struct.LIST_HELP** %incdec.ptr, %struct.LIST_HELP*** @sharing_STACKPOINTER, align 8
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %4, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %5)
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %call5)
  %6 = bitcast i8* %call6 to %struct.term*
  store %struct.term* %6, %struct.term** %Term.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.LIST_HELP* @term_AtomsLiterals(%struct.term* %7)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** @sharing_DATALIST, align 8
  ret void
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
define internal %struct.LIST_HELP* @term_AtomsLiterals(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %super = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 1
  %termlist = bitcast %union.anon* %super to %struct.LIST_HELP**
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: nounwind uwtable
define i8* @sharing_GetNextData() #0 {
entry:
  %Result = alloca i8*, align 8
  %superlist = alloca %struct.LIST_HELP*, align 8
  store i8* null, i8** %Result, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @sharing_DATALIST, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** @sharing_DATALIST, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  store i8* %call1, i8** %Result, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** @sharing_DATALIST, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %2)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** @sharing_DATALIST, align 8
  br label %if.end.54

if.else:                                          ; preds = %entry
  store %struct.LIST_HELP* null, %struct.LIST_HELP** %superlist, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end.44, %if.else
  %3 = load %struct.LIST_HELP**, %struct.LIST_HELP*** @sharing_STACKPOINTER, align 8
  %cmp = icmp ugt %struct.LIST_HELP** %3, getelementptr inbounds ([500 x %struct.LIST_HELP*], [500 x %struct.LIST_HELP*]* @sharing_STACK, i32 0, i32 0)
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool4, %land.rhs ]
  br i1 %5, label %while.body, label %while.end.45

while.body:                                       ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %land.end.20, %while.body
  %6 = load %struct.LIST_HELP**, %struct.LIST_HELP*** @sharing_STACKPOINTER, align 8
  %incdec.ptr = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %6, i32 -1
  store %struct.LIST_HELP** %incdec.ptr, %struct.LIST_HELP*** @sharing_STACKPOINTER, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %incdec.ptr, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %superlist, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call5 to %struct.term*
  call void @term_SetTermStamp(%struct.term* %9)
  br label %do.body.6

do.body.6:                                        ; preds = %land.end.14, %do.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %superlist, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.6
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.end.14, label %land.rhs.10

land.rhs.10:                                      ; preds = %do.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call11 to %struct.term*
  %call12 = call i32 @term_AlreadyVisited(%struct.term* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br label %land.end.14

land.end.14:                                      ; preds = %land.rhs.10, %do.cond
  %14 = phi i1 [ false, %do.cond ], [ %tobool13, %land.rhs.10 ]
  br i1 %14, label %do.body.6, label %do.end

do.end:                                           ; preds = %land.end.14
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.end
  %15 = load %struct.LIST_HELP**, %struct.LIST_HELP*** @sharing_STACKPOINTER, align 8
  %cmp16 = icmp ugt %struct.LIST_HELP** %15, getelementptr inbounds ([500 x %struct.LIST_HELP*], [500 x %struct.LIST_HELP*]* @sharing_STACK, i32 0, i32 0)
  br i1 %cmp16, label %land.rhs.17, label %land.end.20

land.rhs.17:                                      ; preds = %do.cond.15
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool19 = icmp ne i32 %call18, 0
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.17, %do.cond.15
  %17 = phi i1 [ false, %do.cond.15 ], [ %tobool19, %land.rhs.17 ]
  br i1 %17, label %do.body, label %do.end.21

do.end.21:                                        ; preds = %land.end.20
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.end, %do.end.21
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %call23 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.end.29, label %land.rhs.25

land.rhs.25:                                      ; preds = %while.cond.22
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call26 to %struct.term*
  %call27 = call i32 @term_IsAtom(%struct.term* %20)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot = xor i1 %tobool28, true
  br label %land.end.29

land.end.29:                                      ; preds = %land.rhs.25, %while.cond.22
  %21 = phi i1 [ false, %while.cond.22 ], [ %lnot, %land.rhs.25 ]
  br i1 %21, label %while.body.30, label %while.end.44

while.body.30:                                    ; preds = %land.end.29
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %23 = load %struct.LIST_HELP**, %struct.LIST_HELP*** @sharing_STACKPOINTER, align 8
  %incdec.ptr31 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %23, i32 1
  store %struct.LIST_HELP** %incdec.ptr31, %struct.LIST_HELP*** @sharing_STACKPOINTER, align 8
  store %struct.LIST_HELP* %22, %struct.LIST_HELP** %23, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %call32 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call32 to %struct.term*
  %call33 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %25)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %superlist, align 8
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.42, %while.body.30
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %call35 = call i32 @list_Empty(%struct.LIST_HELP* %26)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.end.41, label %land.rhs.37

land.rhs.37:                                      ; preds = %while.cond.34
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %call38 = call i8* @list_Car(%struct.LIST_HELP* %27)
  %28 = bitcast i8* %call38 to %struct.term*
  %call39 = call i32 @term_AlreadyVisited(%struct.term* %28)
  %tobool40 = icmp ne i32 %call39, 0
  br label %land.end.41

land.end.41:                                      ; preds = %land.rhs.37, %while.cond.34
  %29 = phi i1 [ false, %while.cond.34 ], [ %tobool40, %land.rhs.37 ]
  br i1 %29, label %while.body.42, label %while.end

while.body.42:                                    ; preds = %land.end.41
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %call43 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %30)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %superlist, align 8
  br label %while.cond.34

while.end:                                        ; preds = %land.end.41
  br label %while.cond.22

while.end.44:                                     ; preds = %land.end.29
  br label %while.cond

while.end.45:                                     ; preds = %land.end
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %call46 = call i32 @list_Empty(%struct.LIST_HELP* %31)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end, label %if.then.48

if.then.48:                                       ; preds = %while.end.45
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %33 = load %struct.LIST_HELP**, %struct.LIST_HELP*** @sharing_STACKPOINTER, align 8
  %incdec.ptr49 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %33, i32 1
  store %struct.LIST_HELP** %incdec.ptr49, %struct.LIST_HELP*** @sharing_STACKPOINTER, align 8
  store %struct.LIST_HELP* %32, %struct.LIST_HELP** %33, align 8
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superlist, align 8
  %call50 = call i8* @list_Car(%struct.LIST_HELP* %34)
  %35 = bitcast i8* %call50 to %struct.term*
  %call51 = call %struct.LIST_HELP* @term_AtomsLiterals(%struct.term* %35)
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** @sharing_DATALIST, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** @sharing_DATALIST, align 8
  %call52 = call i8* @list_Car(%struct.LIST_HELP* %36)
  store i8* %call52, i8** %Result, align 8
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** @sharing_DATALIST, align 8
  %call53 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %37)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** @sharing_DATALIST, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.48, %while.end.45
  br label %if.end.54

if.end.54:                                        ; preds = %if.end, %if.then
  %38 = load i8*, i8** %Result, align 8
  ret i8* %38
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_AlreadyVisited(%struct.term* %T) #2 {
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

; Function Attrs: nounwind uwtable
define void @sharing_StopDataIterator() #0 {
entry:
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** @sharing_DATALIST, align 8
  call void @term_StopStamp()
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %Atom) #0 {
entry:
  %Atom.addr = alloca %struct.term*, align 8
  store %struct.term* %Atom, %struct.term** %Atom.addr, align 8
  %0 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call = call %struct.LIST_HELP* @term_AtomsLiterals(%struct.term* %0)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @sharing_GetAllSuperTerms(%struct.SHARED_INDEX_NODE* %Index) #0 {
entry:
  %Index.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %i = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %term = alloca %struct.term*, align 8
  store %struct.SHARED_INDEX_NODE* %Index, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  %call1 = call i32 @sharing_StampID(%struct.SHARED_INDEX_NODE* %0)
  %call2 = call i32 @term_StampOverflow(i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  call void @sharing_ResetAllTermStamps(%struct.SHARED_INDEX_NODE* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @term_StartStamp()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %call3 = call i32 @symbol_MaxVars()
  %cmp = icmp slt i32 %2, %call3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call4 = call %struct.term* @sharing_VartableEntry(%struct.SHARED_INDEX_NODE* %3, i32 %4)
  store %struct.term* %call4, %struct.term** %term, align 8
  %5 = load %struct.term*, %struct.term** %term, align 8
  %cmp5 = icmp ne %struct.term* %5, null
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %for.body
  %6 = load %struct.term*, %struct.term** %term, align 8
  %call7 = call %struct.LIST_HELP* @sharing_InternGetDataList(%struct.term* %6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call8 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call7, %struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Result, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.20, %for.end
  %9 = load i32, i32* %i, align 4
  %call11 = call i32 @symbol_MaxConsts()
  %cmp12 = icmp slt i32 %9, %call11
  br i1 %cmp12, label %for.body.13, label %for.end.22

for.body.13:                                      ; preds = %for.cond.10
  %10 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  %11 = load i32, i32* %i, align 4
  %call14 = call %struct.term* @sharing_ConsttableEntry(%struct.SHARED_INDEX_NODE* %10, i32 %11)
  store %struct.term* %call14, %struct.term** %term, align 8
  %12 = load %struct.term*, %struct.term** %term, align 8
  %cmp15 = icmp ne %struct.term* %12, null
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %for.body.13
  %13 = load %struct.term*, %struct.term** %term, align 8
  %call17 = call %struct.LIST_HELP* @sharing_InternGetDataList(%struct.term* %13)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call18 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call17, %struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Result, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %for.body.13
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end.19
  %15 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %15, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.10

for.end.22:                                       ; preds = %for.cond.10
  call void @term_StopStamp()
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %16
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @sharing_VartableEntry(%struct.SHARED_INDEX_NODE* %ShIndex, i32 %Index) #2 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Index.addr = alloca i32, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %vartable = getelementptr inbounds %struct.SHARED_INDEX_NODE, %struct.SHARED_INDEX_NODE* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3001 x %struct.term*], [3001 x %struct.term*]* %vartable, i32 0, i64 %idxprom
  %2 = load %struct.term*, %struct.term** %arrayidx, align 8
  ret %struct.term* %2
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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @sharing_ConsttableEntry(%struct.SHARED_INDEX_NODE* %ShIndex, i32 %Index) #2 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Index.addr = alloca i32, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %consttable = getelementptr inbounds %struct.SHARED_INDEX_NODE, %struct.SHARED_INDEX_NODE* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4000 x %struct.term*], [4000 x %struct.term*]* %consttable, i32 0, i64 %idxprom
  %2 = load %struct.term*, %struct.term** %arrayidx, align 8
  ret %struct.term* %2
}

; Function Attrs: nounwind uwtable
define internal void @sharing_ResetTermStamp(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %SuperList = alloca %struct.LIST_HELP*, align 8
  %SuperTerm = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsAtom(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %SuperList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SuperList, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SuperList, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call4 to %struct.term*
  store %struct.term* %4, %struct.term** %SuperTerm, align 8
  %5 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call5 = call i32 @term_StampAlreadyReset(%struct.term* %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %for.body
  %6 = load %struct.term*, %struct.term** %SuperTerm, align 8
  call void @sharing_ResetTermStamp(%struct.term* %6)
  %7 = load %struct.term*, %struct.term** %SuperTerm, align 8
  call void @term_ResetTermStamp(%struct.term* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SuperList, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %SuperList, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sharing_GetNumberOfOccurances(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Result = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsAtom(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_AtomsLiterals(%struct.term* %1)
  %call2 = call i32 @list_Length(%struct.LIST_HELP* %call1)
  store i32 %call2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %Result, align 4
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call6 to %struct.term*
  %call7 = call i32 @sharing_GetNumberOfOccurances(%struct.term* %5)
  %6 = load i32, i32* %Result, align 4
  %add = add i32 %6, %call7
  store i32 %add, i32* %Result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %Result, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @list_Length(%struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define i32 @sharing_GetNumberOfInstances(%struct.term* %Term, %struct.SHARED_INDEX_NODE* %Index) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Index.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Result = alloca i32, align 4
  %Instance = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.SHARED_INDEX_NODE* %Index, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  store i32 0, i32* %Result, align 4
  %call = call %struct.binding* @cont_LeftContext()
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  %call1 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %0)
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i8* @st_ExistInstance(%struct.binding* %call, %struct.st* %call1, %struct.term* %1)
  %2 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %2, %struct.term** %Instance, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.term*, %struct.term** %Instance, align 8
  %cmp = icmp ne %struct.term* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.term*, %struct.term** %Instance, align 8
  %call3 = call i32 @sharing_GetNumberOfOccurances(%struct.term* %4)
  %5 = load i32, i32* %Result, align 4
  %add = add i32 %5, %call3
  store i32 %add, i32* %Result, align 4
  %call4 = call i8* @st_NextCandidate()
  %6 = bitcast i8* %call4 to %struct.term*
  store %struct.term* %6, %struct.term** %Instance, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %Result, align 4
  ret i32 %7
}

declare i8* @st_ExistInstance(%struct.binding*, %struct.st*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LeftContext() #2 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LEFTCONTEXT, align 8
  ret %struct.binding* %0
}

declare i8* @st_NextCandidate() #1

; Function Attrs: nounwind uwtable
define void @sharing_PrintVartable(%struct.SHARED_INDEX_NODE* %SharedIndex) #0 {
entry:
  %SharedIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %i = alloca i32, align 4
  store %struct.SHARED_INDEX_NODE* %SharedIndex, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %call = call i32 @symbol_MaxVars()
  %cmp = icmp slt i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %2 = load i32, i32* %i, align 4
  %call1 = call %struct.term* @sharing_VartableEntry(%struct.SHARED_INDEX_NODE* %1, i32 %2)
  %cmp2 = icmp ne %struct.term* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %3)
  %4 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call4 = call %struct.term* @sharing_VartableEntry(%struct.SHARED_INDEX_NODE* %4, i32 %5)
  call void @term_Print(%struct.term* %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

declare void @term_Print(%struct.term*) #1

; Function Attrs: nounwind uwtable
define void @sharing_PrintConsttable(%struct.SHARED_INDEX_NODE* %SharedIndex) #0 {
entry:
  %SharedIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %i = alloca i32, align 4
  store %struct.SHARED_INDEX_NODE* %SharedIndex, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %call = call i32 @symbol_MaxConsts()
  %cmp = icmp slt i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %2 = load i32, i32* %i, align 4
  %call1 = call %struct.term* @sharing_ConsttableEntry(%struct.SHARED_INDEX_NODE* %1, i32 %2)
  %cmp2 = icmp ne %struct.term* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %3)
  %4 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call4 = call %struct.term* @sharing_ConsttableEntry(%struct.SHARED_INDEX_NODE* %4, i32 %5)
  call void @term_Print(%struct.term* %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sharing_PrintSharingConstterms1(%struct.SHARED_INDEX_NODE* %SharedIndex) #0 {
entry:
  %SharedIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %term = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  store %struct.SHARED_INDEX_NODE* %SharedIndex, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %call = call i32 @symbol_MaxConsts()
  %cmp = icmp slt i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %2 = load i32, i32* %i, align 4
  %call1 = call %struct.term* @sharing_ConsttableEntry(%struct.SHARED_INDEX_NODE* %1, i32 %2)
  store %struct.term* %call1, %struct.term** %term, align 8
  %3 = load %struct.term*, %struct.term** %term, align 8
  %cmp2 = icmp ne %struct.term* %3, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %4)
  %5 = load %struct.term*, %struct.term** %term, align 8
  call void @term_Print(%struct.term* %5)
  %call4 = call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  %6 = load %struct.term*, %struct.term** %term, align 8
  %call5 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %6)
  call void @term_TermListPrint(%struct.LIST_HELP* %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @puts(i8*) #1

declare void @term_TermListPrint(%struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define void @sharing_PrintSharingVarterms1(%struct.SHARED_INDEX_NODE* %SharedIndex) #0 {
entry:
  %SharedIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %term = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  store %struct.SHARED_INDEX_NODE* %SharedIndex, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %call = call i32 @symbol_MaxVars()
  %cmp = icmp slt i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %2 = load i32, i32* %i, align 4
  %call1 = call %struct.term* @sharing_VartableEntry(%struct.SHARED_INDEX_NODE* %1, i32 %2)
  store %struct.term* %call1, %struct.term** %term, align 8
  %3 = load %struct.term*, %struct.term** %term, align 8
  %cmp2 = icmp ne %struct.term* %3, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %4)
  %5 = load %struct.term*, %struct.term** %term, align 8
  call void @term_Print(%struct.term* %5)
  %call4 = call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  %6 = load %struct.term*, %struct.term** %term, align 8
  %call5 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %6)
  call void @term_TermListPrint(%struct.LIST_HELP* %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sharing_PrintSharing(%struct.SHARED_INDEX_NODE* %SharedIndex) #0 {
entry:
  %SharedIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %i = alloca i32, align 4
  store %struct.SHARED_INDEX_NODE* %SharedIndex, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %call = call i32 @symbol_MaxConsts()
  %cmp = icmp slt i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %2 = load i32, i32* %i, align 4
  %call1 = call %struct.term* @sharing_ConsttableEntry(%struct.SHARED_INDEX_NODE* %1, i32 %2)
  %cmp2 = icmp ne %struct.term* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call3 = call %struct.term* @sharing_ConsttableEntry(%struct.SHARED_INDEX_NODE* %3, i32 %4)
  call void @sharing_PrintWithSuperterms(%struct.term* %call3)
  %call4 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call5 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.16, %for.end
  %6 = load i32, i32* %i, align 4
  %call7 = call i32 @symbol_MaxVars()
  %cmp8 = icmp slt i32 %6, %call7
  br i1 %cmp8, label %for.body.9, label %for.end.18

for.body.9:                                       ; preds = %for.cond.6
  %7 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call10 = call %struct.term* @sharing_VartableEntry(%struct.SHARED_INDEX_NODE* %7, i32 %8)
  %cmp11 = icmp ne %struct.term* %call10, null
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %for.body.9
  %9 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %SharedIndex.addr, align 8
  %10 = load i32, i32* %i, align 4
  %call13 = call %struct.term* @sharing_VartableEntry(%struct.SHARED_INDEX_NODE* %9, i32 %10)
  call void @sharing_PrintWithSuperterms(%struct.term* %call13)
  %call14 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %for.body.9
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %11 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %11, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond.6

for.end.18:                                       ; preds = %for.cond.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sharing_PrintWithSuperterms(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %HelpList = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsAtom(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_Print(%struct.term* %1)
  %call1 = call i32 @putchar(i32 10)
  br label %if.end.12

if.else:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_Print(%struct.term* %2)
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %HelpList, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %call6 = call i32 @putchar(i32 91)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  call void @term_TermListPrint(%struct.LIST_HELP* %5)
  %call7 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.5
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call10 to %struct.term*
  call void @sharing_PrintWithSuperterms(%struct.term* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %HelpList, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @sharing_PrintSameLevelTerms(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %HelpList = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %HelpList, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call2 = call i8* @list_First(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call2 to %struct.term*
  %call3 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %3)
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %call3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call6 = call i8* @list_First(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call6 to %struct.term*
  %call7 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %5)
  call void @term_TermListPrint(%struct.LIST_HELP* %call7)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %HelpList, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %HelpList, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
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

; Function Attrs: nounwind uwtable
define void @sharing_PrintStack() #0 {
entry:
  %term = alloca %struct.term*, align 8
  %ptr = alloca %struct.LIST_HELP**, align 8
  %0 = load %struct.LIST_HELP**, %struct.LIST_HELP*** @sharing_STACKPOINTER, align 8
  store %struct.LIST_HELP** %0, %struct.LIST_HELP*** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ptr, align 8
  %cmp = icmp ugt %struct.LIST_HELP** %1, getelementptr inbounds ([500 x %struct.LIST_HELP*], [500 x %struct.LIST_HELP*]* @sharing_STACK, i32 0, i32 0)
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %2, i32 -1
  store %struct.LIST_HELP** %incdec.ptr, %struct.LIST_HELP*** %ptr, align 8
  %3 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ptr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call to %struct.term*
  store %struct.term* %5, %struct.term** %term, align 8
  %6 = load %struct.term*, %struct.term** %term, align 8
  call void @term_Print(%struct.term* %6)
  %call1 = call i32 @putchar(i32 10)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @putchar(i32) #1

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
define internal i32 @list_Member(%struct.LIST_HELP* %List, i8* %Element, i32 (i8*, i8*)* %Test) #2 {
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

declare i32 @term_Equal(%struct.term*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Bottom() #2 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  ret i32 %0
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
define internal i8* @stack_PopResult() #2 {
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
define internal i32 @sharing_IsSharedVar(%struct.term* %T, %struct.SHARED_INDEX_NODE* %ShIndex) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @sharing_VariableIndex(%struct.term* %1)
  %call1 = call %struct.term* @sharing_VartableEntry(%struct.SHARED_INDEX_NODE* %0, i32 %call)
  %cmp = icmp ne %struct.term* %call1, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sharing_VariableIndex(%struct.term* %Term) #2 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_VarIndex(i32 %call)
  ret i32 %call1
}

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #1

declare void @st_EntryCreate(%struct.st*, i8*, %struct.term*, %struct.binding*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @sharing_RememberSharedTermCopy(%struct.term* %Term, %struct.term* %Copy) #2 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Copy.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %Copy, %struct.term** %Copy.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = load %struct.term*, %struct.term** %Copy.addr, align 8
  call void @term_RplacSuperterm(%struct.term* %0, %struct.term* %1)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsConstant(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %call1 = call i32 @term_IsVariable(%struct.term* %1)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sharing_IsSharedConst(%struct.term* %T, %struct.SHARED_INDEX_NODE* %ShIndex) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @sharing_ConstantIndex(%struct.term* %1)
  %call1 = call %struct.term* @sharing_ConsttableEntry(%struct.SHARED_INDEX_NODE* %0, i32 %call)
  %cmp = icmp ne %struct.term* %call1, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sharing_ConstantIndex(%struct.term* %Term) #2 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_Index(i32 %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @sharing_SharedTermCopy(%struct.term* %Term) #2 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %0)
  ret %struct.term* %call
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_VarIndex(i32 %ActSymbol) #2 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  ret i32 %0
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
define internal void @symbol_CheckNoVariable(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  ret void
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

declare i32 @st_EntryDelete(%struct.st*, i8*, %struct.term*, %struct.binding*) #1

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

declare %struct.LIST_HELP* @list_PointerDeleteOneElement(%struct.LIST_HELP*, i8*) #1

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

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #1

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
define internal i32 @term_StampAlreadyReset(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %stamp = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 3
  %1 = load i32, i32* %stamp, align 4
  %cmp = icmp eq i32 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_ResetTermStamp(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %stamp = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 3
  store i32 0, i32* %stamp, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
