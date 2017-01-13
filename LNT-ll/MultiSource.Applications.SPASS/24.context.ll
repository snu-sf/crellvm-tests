; ModuleID = './MultiSource.Applications.SPASS/24.context.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }

@cont_LASTBINDING = common global %struct.binding* null, align 8
@cont_NOOFCONTEXTS = common global i32 0, align 4
@cont_LISTOFCONTEXTS = common global %struct.LIST_HELP* null, align 8
@cont_BINDINGS = common global i32 0, align 4
@cont_INSTANCECONTEXT = common global %struct.binding* null, align 8
@cont_LEFTCONTEXT = common global %struct.binding* null, align 8
@cont_RIGHTCONTEXT = common global %struct.binding* null, align 8
@cont_INDEXVARSCANNER = common global i32 0, align 4
@cont_CURRENTBINDING = common global %struct.binding* null, align 8
@cont_STACK = common global [1000 x i32] zeroinitializer, align 16
@cont_STACKPOINTER = common global i32 0, align 4
@cont_CHECKSTACK = common global [1000 x i8*] zeroinitializer, align 16
@cont_CHECKSTACKPOINTER = common global i32 0, align 4
@cont_STATELASTBINDING = common global %struct.binding* null, align 8
@cont_STATEBINDINGS = common global i32 0, align 4
@cont_STATESTACK = common global i32 0, align 4
@cont_STATETOPSTACK = common global i32 0, align 4
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4

; Function Attrs: nounwind uwtable
define void @cont_Init() #0 {
entry:
  store %struct.binding* null, %struct.binding** @cont_LASTBINDING, align 8
  call void @cont_ResetIndexVarScanner()
  store i32 0, i32* @cont_NOOFCONTEXTS, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** @cont_LISTOFCONTEXTS, align 8
  store i32 0, i32* @cont_BINDINGS, align 4
  %call1 = call i8* @memory_Malloc(i32 32)
  %0 = bitcast i8* %call1 to %struct.binding*
  store %struct.binding* %0, %struct.binding** @cont_INSTANCECONTEXT, align 8
  %call2 = call %struct.binding* @cont_Create()
  store %struct.binding* %call2, %struct.binding** @cont_LEFTCONTEXT, align 8
  %call3 = call %struct.binding* @cont_Create()
  store %struct.binding* %call3, %struct.binding** @cont_RIGHTCONTEXT, align 8
  call void @cont_StackInit()
  call void @cont_StackPush(i32 0)
  call void @cont_StackPop()
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
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
}

declare i8* @memory_Malloc(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_Create() #1 {
entry:
  %Result = alloca %struct.binding*, align 8
  %call = call i8* @memory_Malloc(i32 96032)
  %0 = bitcast i8* %call to %struct.binding*
  store %struct.binding* %0, %struct.binding** %Result, align 8
  %1 = load %struct.binding*, %struct.binding** %Result, align 8
  call void @cont_InitContext(%struct.binding* %1)
  %2 = load %struct.binding*, %struct.binding** %Result, align 8
  %3 = bitcast %struct.binding* %2 to i8*
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** @cont_LISTOFCONTEXTS, align 8
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %3, %struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** @cont_LISTOFCONTEXTS, align 8
  %5 = load i32, i32* @cont_NOOFCONTEXTS, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @cont_NOOFCONTEXTS, align 4
  %6 = load %struct.binding*, %struct.binding** %Result, align 8
  ret %struct.binding* %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_StackInit() #1 {
entry:
  store i32 1, i32* @cont_STACKPOINTER, align 4
  ret void
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
define internal void @cont_StackPop() #1 {
entry:
  %0 = load i32, i32* @cont_STACKPOINTER, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @cont_STACKPOINTER, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @cont_Check() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @cont_Free() #0 {
entry:
  call void @cont_Check()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @cont_NOOFCONTEXTS, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** @cont_LISTOFCONTEXTS, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call to %struct.binding*
  call void @cont_Delete(%struct.binding* %2)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* @cont_BINDINGS, align 4
  %3 = load %struct.binding*, %struct.binding** @cont_INSTANCECONTEXT, align 8
  %4 = bitcast %struct.binding* %3 to i8*
  call void @memory_Free(i8* %4, i32 32)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_Delete(%struct.binding* %C) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @cont_LISTOFCONTEXTS, align 8
  %1 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %2 = bitcast %struct.binding* %1 to i8*
  %call = call %struct.LIST_HELP* @list_PointerDeleteOneElement(%struct.LIST_HELP* %0, i8* %2)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** @cont_LISTOFCONTEXTS, align 8
  %3 = load i32, i32* @cont_NOOFCONTEXTS, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* @cont_NOOFCONTEXTS, align 4
  %4 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %5 = bitcast %struct.binding* %4 to i8*
  call void @memory_Free(i8* %5, i32 96032)
  ret void
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
define i32 @cont_TermEqual(%struct.binding* %Context1, %struct.term* %Term1, %struct.binding* %Context2, %struct.term* %Term2) #0 {
entry:
  %retval = alloca i32, align 4
  %Context1.addr = alloca %struct.binding*, align 8
  %Term1.addr = alloca %struct.term*, align 8
  %Context2.addr = alloca %struct.binding*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %Context1, %struct.binding** %Context1.addr, align 8
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.binding* %Context2, %struct.binding** %Context2.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call = call %struct.term* @cont_Deref(%struct.binding** %Context1.addr, %struct.term* %0)
  store %struct.term* %call, %struct.term** %Term1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call1 = call %struct.term* @cont_Deref(%struct.binding** %Context2.addr, %struct.term* %1)
  store %struct.term* %call1, %struct.term** %Term2.addr, align 8
  %2 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call2 = call i32 @term_EqualTopSymbols(%struct.term* %2, %struct.term* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  %tobool4 = icmp ne %struct.LIST_HELP* %call3, null
  br i1 %tobool4, label %if.then.5, label %if.else.22

if.then.5:                                        ; preds = %if.else
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
  %10 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call12 to %struct.term*
  %13 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call13 to %struct.term*
  %call14 = call i32 @cont_TermEqual(%struct.binding* %10, %struct.term* %12, %struct.binding* %13, %struct.term* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan1, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call21 = call i32 @list_Empty(%struct.LIST_HELP* %19)
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call21, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.else.22:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.22, %cond.end, %if.then.16, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @cont_Deref(%struct.binding** %Context, %struct.term* %Term) #1 {
entry:
  %retval = alloca %struct.term*, align 8
  %Context.addr = alloca %struct.binding**, align 8
  %Term.addr = alloca %struct.term*, align 8
  %TermTop = alloca i32, align 4
  %HelpContext = alloca %struct.binding*, align 8
  store %struct.binding** %Context, %struct.binding*** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.binding**, %struct.binding*** %Context.addr, align 8
  %2 = load %struct.binding*, %struct.binding** %1, align 8
  %call1 = call %struct.binding* @cont_InstanceContext()
  %cmp = icmp ne %struct.binding* %2, %call1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %4)
  store i32 %call2, i32* %TermTop, align 4
  %5 = load %struct.binding**, %struct.binding*** %Context.addr, align 8
  %6 = load %struct.binding*, %struct.binding** %5, align 8
  %7 = load i32, i32* %TermTop, align 4
  %call3 = call i32 @cont_VarIsBound(%struct.binding* %6, i32 %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load %struct.binding**, %struct.binding*** %Context.addr, align 8
  %9 = load %struct.binding*, %struct.binding** %8, align 8
  %10 = load i32, i32* %TermTop, align 4
  %call5 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %9, i32 %10)
  store %struct.binding* %call5, %struct.binding** %HelpContext, align 8
  %11 = load %struct.binding**, %struct.binding*** %Context.addr, align 8
  %12 = load %struct.binding*, %struct.binding** %11, align 8
  %13 = load i32, i32* %TermTop, align 4
  %call6 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %12, i32 %13)
  store %struct.term* %call6, %struct.term** %Term.addr, align 8
  %14 = load %struct.binding*, %struct.binding** %HelpContext, align 8
  %15 = load %struct.binding**, %struct.binding*** %Context.addr, align 8
  store %struct.binding* %14, %struct.binding** %15, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %16 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %16, %struct.term** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %17, %struct.term** %retval
  br label %return

return:                                           ; preds = %while.end, %if.else
  %18 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %18
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
define internal i32 @list_Empty(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cmp = icmp eq %struct.LIST_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @cont_TermEqualModuloBindings(%struct.binding* %IndexContext, %struct.binding* %CtL, %struct.term* %TermL, %struct.binding* %CtR, %struct.term* %TermR) #0 {
entry:
  %retval = alloca i32, align 4
  %IndexContext.addr = alloca %struct.binding*, align 8
  %CtL.addr = alloca %struct.binding*, align 8
  %TermL.addr = alloca %struct.term*, align 8
  %CtR.addr = alloca %struct.binding*, align 8
  %TermR.addr = alloca %struct.term*, align 8
  %TermTop = alloca i32, align 4
  %CHelp = alloca %struct.binding*, align 8
  %TermTop18 = alloca i32, align 4
  %CHelp32 = alloca %struct.binding*, align 8
  %ScanL = alloca %struct.LIST_HELP*, align 8
  %ScanR = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.binding* %CtL, %struct.binding** %CtL.addr, align 8
  store %struct.term* %TermL, %struct.term** %TermL.addr, align 8
  store %struct.binding* %CtR, %struct.binding** %CtR.addr, align 8
  store %struct.term* %TermR, %struct.term** %TermR.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %entry
  %0 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  store i32 %call1, i32* %TermTop, align 4
  %2 = load i32, i32* %TermTop, align 4
  %call2 = call i32 @symbol_IsIndexVariable(i32 %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  store %struct.binding* %3, %struct.binding** %CtL.addr, align 8
  br label %if.end.6

if.else:                                          ; preds = %while.body
  %4 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %call4 = call %struct.binding* @cont_InstanceContext()
  %cmp = icmp eq %struct.binding* %4, %call4
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  br label %while.end

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %5 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %6 = load i32, i32* %TermTop, align 4
  %call7 = call i32 @cont_VarIsBound(%struct.binding* %5, i32 %6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.end.6
  %7 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %8 = load i32, i32* %TermTop, align 4
  %call10 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %7, i32 %8)
  store %struct.binding* %call10, %struct.binding** %CHelp, align 8
  %9 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %10 = load i32, i32* %TermTop, align 4
  %call11 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %9, i32 %10)
  store %struct.term* %call11, %struct.term** %TermL.addr, align 8
  %11 = load %struct.binding*, %struct.binding** %CHelp, align 8
  store %struct.binding* %11, %struct.binding** %CtL.addr, align 8
  br label %if.end.13

if.else.12:                                       ; preds = %if.end.6
  br label %while.end

if.end.13:                                        ; preds = %if.then.9
  br label %while.cond

while.end:                                        ; preds = %if.else.12, %if.then.5, %while.cond
  br label %while.cond.14

while.cond.14:                                    ; preds = %if.end.36, %while.end
  %12 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call15 = call i32 @term_IsVariable(%struct.term* %12)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %while.body.17, label %while.end.37

while.body.17:                                    ; preds = %while.cond.14
  %13 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call19 = call i32 @term_TopSymbol(%struct.term* %13)
  store i32 %call19, i32* %TermTop18, align 4
  %14 = load i32, i32* %TermTop18, align 4
  %call20 = call i32 @symbol_IsIndexVariable(i32 %14)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %while.body.17
  %15 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  store %struct.binding* %15, %struct.binding** %CtR.addr, align 8
  br label %if.end.28

if.else.23:                                       ; preds = %while.body.17
  %16 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %call24 = call %struct.binding* @cont_InstanceContext()
  %cmp25 = icmp eq %struct.binding* %16, %call24
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.else.23
  br label %while.end.37

if.end.27:                                        ; preds = %if.else.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.22
  %17 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %18 = load i32, i32* %TermTop18, align 4
  %call29 = call i32 @cont_VarIsBound(%struct.binding* %17, i32 %18)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.else.35

if.then.31:                                       ; preds = %if.end.28
  %19 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %20 = load i32, i32* %TermTop18, align 4
  %call33 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %19, i32 %20)
  store %struct.binding* %call33, %struct.binding** %CHelp32, align 8
  %21 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %22 = load i32, i32* %TermTop18, align 4
  %call34 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %21, i32 %22)
  store %struct.term* %call34, %struct.term** %TermR.addr, align 8
  %23 = load %struct.binding*, %struct.binding** %CHelp32, align 8
  store %struct.binding* %23, %struct.binding** %CtR.addr, align 8
  br label %if.end.36

if.else.35:                                       ; preds = %if.end.28
  br label %while.end.37

if.end.36:                                        ; preds = %if.then.31
  br label %while.cond.14

while.end.37:                                     ; preds = %if.else.35, %if.then.26, %while.cond.14
  %24 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %25 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call38 = call i32 @term_EqualTopSymbols(%struct.term* %24, %struct.term* %25)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.else.41, label %if.then.40

if.then.40:                                       ; preds = %while.end.37
  store i32 0, i32* %retval
  br label %return

if.else.41:                                       ; preds = %while.end.37
  %26 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call42 = call i32 @term_IsVariable(%struct.term* %26)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.48

if.then.44:                                       ; preds = %if.else.41
  %27 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %28 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %cmp45 = icmp eq %struct.binding* %27, %28
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.then.44
  store i32 1, i32* %retval
  br label %return

if.else.47:                                       ; preds = %if.then.44
  store i32 0, i32* %retval
  br label %return

if.else.48:                                       ; preds = %if.else.41
  %29 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call49 = call i32 @term_IsComplex(%struct.term* %29)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.else.69

if.then.51:                                       ; preds = %if.else.48
  %30 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call52 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %30)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %ScanL, align 8
  %31 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call53 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %31)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %ScanR, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.51
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanL, align 8
  %call54 = call i32 @list_Exist(%struct.LIST_HELP* %32)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanR, align 8
  %call56 = call i32 @list_Exist(%struct.LIST_HELP* %33)
  %tobool57 = icmp ne i32 %call56, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %34 = phi i1 [ false, %for.cond ], [ %tobool57, %land.rhs ]
  br i1 %34, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %35 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %36 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanL, align 8
  %call58 = call i8* @list_Car(%struct.LIST_HELP* %37)
  %38 = bitcast i8* %call58 to %struct.term*
  %39 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanR, align 8
  %call59 = call i8* @list_Car(%struct.LIST_HELP* %40)
  %41 = bitcast i8* %call59 to %struct.term*
  %call60 = call i32 @cont_TermEqualModuloBindings(%struct.binding* %35, %struct.binding* %36, %struct.term* %38, %struct.binding* %39, %struct.term* %41)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.63:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.63
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanL, align 8
  %call64 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %42)
  store %struct.LIST_HELP* %call64, %struct.LIST_HELP** %ScanL, align 8
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanR, align 8
  %call65 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %43)
  store %struct.LIST_HELP* %call65, %struct.LIST_HELP** %ScanR, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanL, align 8
  %call66 = call i32 @list_Empty(%struct.LIST_HELP* %44)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanR, align 8
  %call68 = call i32 @list_Empty(%struct.LIST_HELP* %45)
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call68, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.else.69:                                       ; preds = %if.else.48
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.69, %cond.end, %if.then.62, %if.else.47, %if.then.46, %if.then.40
  %46 = load i32, i32* %retval
  ret i32 %46
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
define internal %struct.binding* @cont_InstanceContext() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_INSTANCECONTEXT, align 8
  ret %struct.binding* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_VarIsBound(%struct.binding* %C, i32 %Var) #1 {
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
define internal %struct.term* @cont_ContextBindingTerm(%struct.binding* %C, i32 %Var) #1 {
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

; Function Attrs: nounwind uwtable
define %struct.term* @cont_CopyAndApplyBindings(%struct.binding* %TermContext, %struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %TermContext.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %TermTop = alloca i32, align 4
  %HelpContext = alloca %struct.binding*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %ArgumentList = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %TermContext, %struct.binding** %TermContext.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  store i32 %call1, i32* %TermTop, align 4
  %2 = load %struct.binding*, %struct.binding** %TermContext.addr, align 8
  %3 = load i32, i32* %TermTop, align 4
  %call2 = call i32 @cont_VarIsBound(%struct.binding* %2, i32 %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load %struct.binding*, %struct.binding** %TermContext.addr, align 8
  %5 = load i32, i32* %TermTop, align 4
  %call4 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %4, i32 %5)
  store %struct.binding* %call4, %struct.binding** %HelpContext, align 8
  %6 = load %struct.binding*, %struct.binding** %TermContext.addr, align 8
  %7 = load i32, i32* %TermTop, align 4
  %call5 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %6, i32 %7)
  store %struct.term* %call5, %struct.term** %Term.addr, align 8
  %8 = load %struct.binding*, %struct.binding** %HelpContext, align 8
  store %struct.binding* %8, %struct.binding** %TermContext.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %while.cond

while.end:                                        ; preds = %if.else, %while.cond
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call i32 @term_IsComplex(%struct.term* %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.18

if.then.8:                                        ; preds = %while.end
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %10)
  %call10 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call9)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %ArgumentList, align 8
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %13 = load %struct.binding*, %struct.binding** %TermContext.addr, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call13 to %struct.term*
  %call14 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* %13, %struct.term* %15)
  %16 = bitcast %struct.term* %call14 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %12, i8* %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call16 = call i32 @term_TopSymbol(%struct.term* %18)
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgumentList, align 8
  %call17 = call %struct.term* @term_Create(i32 %call16, %struct.LIST_HELP* %19)
  store %struct.term* %call17, %struct.term** %retval
  br label %return

if.else.18:                                       ; preds = %while.end
  %20 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call19 = call i32 @term_TopSymbol(%struct.term* %20)
  %call20 = call %struct.LIST_HELP* @list_Nil()
  %call21 = call %struct.term* @term_Create(i32 %call19, %struct.LIST_HELP* %call20)
  store %struct.term* %call21, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.else.18, %for.end
  %21 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %21
}

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #2

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

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #2

; Function Attrs: nounwind uwtable
define %struct.term* @cont_CopyAndApplyBindingsCom(%struct.binding* %Context, %struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Context.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %ArgumentList = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %2)
  %call2 = call i32 @cont_VarIsBound(%struct.binding* %1, i32 %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %5)
  %call5 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %4, i32 %call4)
  store %struct.term* %call5, %struct.term** %Term.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call i32 @term_IsComplex(%struct.term* %6)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  %call9 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call8)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %ArgumentList, align 8
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %10 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call12 to %struct.term*
  %call13 = call %struct.term* @cont_CopyAndApplyBindingsCom(%struct.binding* %10, %struct.term* %12)
  %13 = bitcast %struct.term* %call13 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %9, i8* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call15 = call i32 @term_TopSymbol(%struct.term* %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgumentList, align 8
  %call16 = call %struct.term* @term_Create(i32 %call15, %struct.LIST_HELP* %16)
  store %struct.term* %call16, %struct.term** %retval
  br label %return

if.else:                                          ; preds = %while.end
  %17 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call17 = call i32 @term_TopSymbol(%struct.term* %17)
  %call18 = call %struct.LIST_HELP* @list_Nil()
  %call19 = call %struct.term* @term_Create(i32 %call17, %struct.LIST_HELP* %call18)
  store %struct.term* %call19, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.else, %for.end
  %18 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %18
}

; Function Attrs: nounwind uwtable
define %struct.term* @cont_ApplyBindingsModuloMatching(%struct.binding* %Context, %struct.term* %Term, i32 %VarCheck) #0 {
entry:
  %Context.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %VarCheck.addr = alloca i32, align 4
  %RplacTerm = alloca %struct.term*, align 8
  %Arglist = alloca %struct.LIST_HELP*, align 8
  %Top = alloca i32, align 4
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %VarCheck, i32* %VarCheck.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load i32, i32* %Top, align 4
  %call1 = call i32 @symbol_IsVariable(i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %3 = load i32, i32* %Top, align 4
  %call2 = call i32 @cont_VarIsBound(%struct.binding* %2, i32 %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %4 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %5 = load i32, i32* %Top, align 4
  %call5 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %4, i32 %5)
  store %struct.term* %call5, %struct.term** %RplacTerm, align 8
  %6 = load %struct.term*, %struct.term** %RplacTerm, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  %call7 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Arglist, align 8
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %8 = load %struct.term*, %struct.term** %RplacTerm, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %8)
  call void @term_RplacTop(%struct.term* %7, i32 %call8)
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call9)
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arglist, align 8
  call void @term_RplacArgumentList(%struct.term* %10, %struct.LIST_HELP* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.16

if.else:                                          ; preds = %entry
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call10 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Arglist, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arglist, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arglist, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call13 to %struct.term*
  %17 = load i32, i32* %VarCheck.addr, align 4
  %call14 = call %struct.term* @cont_ApplyBindingsModuloMatching(%struct.binding* %14, %struct.term* %16, i32 %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arglist, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Arglist, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %if.end
  %19 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %19
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
define internal %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %List) #1 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP* %0, i8* (i8*)* bitcast (%struct.term* (%struct.term*)* @term_Copy to i8* (i8*)*))
  ret %struct.LIST_HELP* %call
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
define internal void @term_DeleteTermList(%struct.LIST_HELP* %List) #1 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %0, void (i8*)* bitcast (void (%struct.term*)* @term_Delete to void (i8*)*))
  ret void
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

; Function Attrs: nounwind uwtable
define %struct.term* @cont_ApplyBindingsModuloMatchingReverse(%struct.binding* %Context, %struct.term* %Term) #0 {
entry:
  %Context.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %RplacTerm = alloca %struct.term*, align 8
  %Arglist = alloca %struct.LIST_HELP*, align 8
  %Top = alloca i32, align 4
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load i32, i32* %Top, align 4
  %call1 = call i32 @symbol_IsVariable(i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %3 = load i32, i32* %Top, align 4
  %call2 = call i32 @cont_VarIsBound(%struct.binding* %2, i32 %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %4 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %5 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %6 = load i32, i32* %Top, align 4
  %call5 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %5, i32 %6)
  %call6 = call %struct.term* @cont_CopyAndApplyIndexVariableBindings(%struct.binding* %4, %struct.term* %call5)
  store %struct.term* %call6, %struct.term** %RplacTerm, align 8
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %8 = load %struct.term*, %struct.term** %RplacTerm, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %8)
  call void @term_RplacTop(%struct.term* %7, i32 %call7)
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call8)
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %11 = load %struct.term*, %struct.term** %RplacTerm, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %11)
  call void @term_RplacArgumentList(%struct.term* %10, %struct.LIST_HELP* %call9)
  %12 = load %struct.term*, %struct.term** %RplacTerm, align 8
  call void @term_Free(%struct.term* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.16

if.else:                                          ; preds = %entry
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call10 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %13)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Arglist, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arglist, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arglist, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call13 to %struct.term*
  %call14 = call %struct.term* @cont_ApplyBindingsModuloMatchingReverse(%struct.binding* %15, %struct.term* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arglist, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Arglist, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %if.end
  %19 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %19
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cont_CopyAndApplyIndexVariableBindings(%struct.binding* %Context, %struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Context.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %TermTop = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %ArgumentList = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %TermTop, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %TermTop, align 4
  %call1 = call i32 @symbol_IsIndexVariable(i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %3 = load i32, i32* %TermTop, align 4
  %call2 = call i32 @cont_VarIsBound(%struct.binding* %2, i32 %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %5 = load i32, i32* %TermTop, align 4
  %call4 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %4, i32 %5)
  store %struct.term* %call4, %struct.term** %Term.addr, align 8
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %6)
  store i32 %call5, i32* %TermTop, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call i32 @term_IsComplex(%struct.term* %7)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %while.end
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %8)
  %call10 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call9)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %ArgumentList, align 8
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %11 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call13 to %struct.term*
  %call14 = call %struct.term* @cont_CopyAndApplyIndexVariableBindings(%struct.binding* %11, %struct.term* %13)
  %14 = bitcast %struct.term* %call14 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %10, i8* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %TermTop, align 4
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgumentList, align 8
  %call16 = call %struct.term* @term_Create(i32 %16, %struct.LIST_HELP* %17)
  store %struct.term* %call16, %struct.term** %retval
  br label %return

if.else:                                          ; preds = %while.end
  %18 = load i32, i32* %TermTop, align 4
  %call17 = call %struct.LIST_HELP* @list_Nil()
  %call18 = call %struct.term* @term_Create(i32 %18, %struct.LIST_HELP* %call17)
  store %struct.term* %call18, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.else, %for.end
  %19 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %19
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

; Function Attrs: nounwind uwtable
define i32 @cont_BindingsAreRenamingModuloMatching(%struct.binding* %RenamingContext) #0 {
entry:
  %retval = alloca i32, align 4
  %RenamingContext.addr = alloca %struct.binding*, align 8
  %Context = alloca %struct.binding*, align 8
  %CodomainSymbol = alloca i32, align 4
  store %struct.binding* %RenamingContext, %struct.binding** %RenamingContext.addr, align 8
  call void @cont_StartBinding()
  %call = call %struct.binding* @cont_LastBinding()
  store %struct.binding* %call, %struct.binding** %Context, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %entry
  %0 = load %struct.binding*, %struct.binding** %Context, align 8
  %tobool = icmp ne %struct.binding* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.binding*, %struct.binding** %Context, align 8
  %call1 = call i32 @cont_BindingSymbol(%struct.binding* %1)
  %call2 = call i32 @symbol_IsIndexVariable(i32 %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.17, label %if.then

if.then:                                          ; preds = %while.body
  %2 = load %struct.binding*, %struct.binding** %Context, align 8
  %call4 = call %struct.term* @cont_BindingTerm(%struct.binding* %2)
  %call5 = call i32 @term_TopSymbol(%struct.term* %call4)
  store i32 %call5, i32* %CodomainSymbol, align 4
  %3 = load i32, i32* %CodomainSymbol, align 4
  %call6 = call i32 @symbol_IsVariable(i32 %3)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.14

if.then.8:                                        ; preds = %if.then
  %4 = load %struct.binding*, %struct.binding** %RenamingContext.addr, align 8
  %5 = load i32, i32* %CodomainSymbol, align 4
  %call9 = call i32 @cont_VarIsRenamed(%struct.binding* %4, i32 %5)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.8
  %call12 = call i32 @cont_BackTrack()
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.8
  %6 = load %struct.binding*, %struct.binding** %RenamingContext.addr, align 8
  %7 = load i32, i32* %CodomainSymbol, align 4
  %call13 = call i32 @cont_CreateBinding(%struct.binding* %6, i32 %7, %struct.binding* null, %struct.term* null)
  %8 = load %struct.binding*, %struct.binding** %RenamingContext.addr, align 8
  %9 = load i32, i32* %CodomainSymbol, align 4
  %10 = load i32, i32* %CodomainSymbol, align 4
  call void @cont_SetContextBindingRenaming(%struct.binding* %8, i32 %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.16

if.else.14:                                       ; preds = %if.then
  %call15 = call i32 @cont_BackTrack()
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %while.body
  %11 = load %struct.binding*, %struct.binding** %Context, align 8
  %call18 = call %struct.binding* @cont_BindingLink(%struct.binding* %11)
  store %struct.binding* %call18, %struct.binding** %Context, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call19 = call i32 @cont_BackTrack()
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.14, %if.then.11
  %12 = load i32, i32* %retval
  ret i32 %12
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
define internal %struct.binding* @cont_LastBinding() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LASTBINDING, align 8
  ret %struct.binding* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_BindingSymbol(%struct.binding* %B) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %symbol = getelementptr inbounds %struct.binding, %struct.binding* %0, i32 0, i32 0
  %1 = load i32, i32* %symbol, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @cont_BindingTerm(%struct.binding* %B) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %term = getelementptr inbounds %struct.binding, %struct.binding* %0, i32 0, i32 2
  %1 = load %struct.term*, %struct.term** %term, align 8
  ret %struct.term* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_VarIsRenamed(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %call = call i32 @cont_ContextBindingRenaming(%struct.binding* %0, i32 %1)
  %call1 = call i32 @symbol_Null()
  %cmp = icmp ne i32 %call, %call1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
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
define internal void @cont_SetContextBindingRenaming(%struct.binding* %C, i32 %Var, i32 %R) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  %R.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  store i32 %R, i32* %R.addr, align 4
  %0 = load i32, i32* %R.addr, align 4
  %1 = load i32, i32* %Var.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %arrayidx = getelementptr inbounds %struct.binding, %struct.binding* %2, i64 %idxprom
  %renaming = getelementptr inbounds %struct.binding, %struct.binding* %arrayidx, i32 0, i32 1
  store i32 %0, i32* %renaming, align 4
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

; Function Attrs: nounwind uwtable
define i32 @cont_TermMaxVar(%struct.binding* %Context, %struct.term* %Term) #0 {
entry:
  %Context.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %result = alloca i32, align 4
  %max = alloca i32, align 4
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @cont_Deref(%struct.binding** %Context.addr, %struct.term* %0)
  store %struct.term* %call, %struct.term** %Term.addr, align 8
  %call1 = call i32 @symbol_Null()
  store i32 %call1, i32* %result, align 4
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_IsStandardVariable(%struct.term* %1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %2)
  %3 = load i32, i32* %result, align 4
  %cmp = icmp sgt i32 %call3, %3
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %4)
  store i32 %call5, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.15

if.else:                                          ; preds = %entry
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call9 to %struct.term*
  %call10 = call i32 @cont_TermMaxVar(%struct.binding* %7, %struct.term* %9)
  store i32 %call10, i32* %max, align 4
  %10 = load i32, i32* %max, align 4
  %11 = load i32, i32* %result, align 4
  %cmp11 = icmp sgt i32 %10, %11
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  %12 = load i32, i32* %max, align 4
  store i32 %12, i32* %result, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %if.end
  %14 = load i32, i32* %result, align 4
  ret i32 %14
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Null() #1 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsStandardVariable(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsStandardVariable(i32 %call)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @cont_TermSize(%struct.binding* %Context, %struct.term* %Term) #0 {
entry:
  %Context.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %result = alloca i32, align 4
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @cont_Deref(%struct.binding** %Context.addr, %struct.term* %0)
  store %struct.term* %call, %struct.term** %Term.addr, align 8
  store i32 1, i32* %result, align 4
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.term*
  %call4 = call i32 @cont_TermSize(%struct.binding* %3, %struct.term* %5)
  %6 = load i32, i32* %result, align 4
  %add = add i32 %6, %call4
  store i32 %add, i32* %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %result, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @cont_TermContainsSymbol(%struct.binding* %Context, %struct.term* %Term, i32 %Symbol) #0 {
entry:
  %retval = alloca i32, align 4
  %Context.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Symbol.addr = alloca i32, align 4
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @cont_Deref(%struct.binding** %Context.addr, %struct.term* %0)
  store %struct.term* %call, %struct.term** %Term.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  %2 = load i32, i32* %Symbol.addr, align 4
  %call2 = call i32 @symbol_Equal(i32 %call1, i32 %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call6 to %struct.term*
  %8 = load i32, i32* %Symbol.addr, align 4
  %call7 = call i32 @cont_TermContainsSymbol(%struct.binding* %5, %struct.term* %7, i32 %8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.11

if.end.11:                                        ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.9, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
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
define void @cont_TermPrintPrefix(%struct.binding* %Context, %struct.term* %Term) #0 {
entry:
  %Context.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %List = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @cont_Deref(%struct.binding** %Context.addr, %struct.term* %0)
  store %struct.term* %call, %struct.term** %Term.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  call void @symbol_Print(i32 %call1)
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_IsComplex(%struct.term* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %call3 = call i32 @putchar(i32 40)
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %List, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call7 to %struct.term*
  call void @cont_TermPrintPrefix(%struct.binding* %5, %struct.term* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %for.body
  %call12 = call i32 @putchar(i32 44)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %List, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call14 = call i32 @putchar(i32 41)
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %entry
  ret void
}

declare void @symbol_Print(i32) #2

declare i32 @putchar(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_GetInitialIndexVarCounter() #1 {
entry:
  ret i32 2000
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_InitContext(%struct.binding* %C) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %i = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3001
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %2 = load i32, i32* %i, align 4
  call void @cont_InitBinding(%struct.binding* %1, i32 %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
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
define internal void @cont_InitBinding(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %call = call %struct.binding* @cont_Binding(%struct.binding* %0, i32 %1)
  store %struct.binding* %call, %struct.binding** @cont_CURRENTBINDING, align 8
  %2 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingLink(%struct.binding* %2, %struct.binding* null)
  %3 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingTerm(%struct.binding* %3, %struct.term* null)
  %4 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %5 = load i32, i32* %Var.addr, align 4
  call void @cont_SetBindingSymbol(%struct.binding* %4, i32 %5)
  %6 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %call1 = call i32 @symbol_Null()
  call void @cont_SetBindingRenaming(%struct.binding* %6, i32 %call1)
  %7 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingContext(%struct.binding* %7, %struct.binding* null)
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
define internal void @cont_SetBindingSymbol(%struct.binding* %B, i32 %S) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  %S.addr = alloca i32, align 4
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %1 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %symbol = getelementptr inbounds %struct.binding, %struct.binding* %1, i32 0, i32 0
  store i32 %0, i32* %symbol, align 4
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

declare %struct.LIST_HELP* @list_PointerDeleteOneElement(%struct.LIST_HELP*, i8*) #2

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

declare %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP*, i8* (i8*)*) #2

declare %struct.term* @term_Copy(%struct.term*) #2

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #2

declare void @term_Delete(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_ContextBindingRenaming(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %arrayidx = getelementptr inbounds %struct.binding, %struct.binding* %1, i64 %idxprom
  %renaming = getelementptr inbounds %struct.binding, %struct.binding* %arrayidx, i32 0, i32 1
  %2 = load i32, i32* %renaming, align 4
  ret i32 %2
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
define internal void @cont_SetLastBinding(%struct.binding* %B) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %B.addr, align 8
  store %struct.binding* %0, %struct.binding** @cont_LASTBINDING, align 8
  ret void
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
