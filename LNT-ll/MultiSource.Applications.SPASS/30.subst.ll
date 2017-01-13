; ModuleID = './MultiSource.Applications.SPASS/30.subst.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.subst = type { %struct.subst*, i32, %struct.term* }

@.str = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@cont_BINDINGS = external global i32, align 4
@cont_CURRENTBINDING = external global %struct.binding*, align 8
@cont_LASTBINDING = external global %struct.binding*, align 8
@cont_INSTANCECONTEXT = external global %struct.binding*, align 8

; Function Attrs: nounwind uwtable
define %struct.subst* @subst_Add(i32 %Symbol, %struct.term* %Codomain, %struct.subst* %Subst) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  %Codomain.addr = alloca %struct.term*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  %Result = alloca %struct.subst*, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store %struct.term* %Codomain, %struct.term** %Codomain.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  %call = call %struct.subst* @subst_Get()
  store %struct.subst* %call, %struct.subst** %Result, align 8
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %1 = load %struct.subst*, %struct.subst** %Result, align 8
  %next = getelementptr inbounds %struct.subst, %struct.subst* %1, i32 0, i32 0
  store %struct.subst* %0, %struct.subst** %next, align 8
  %2 = load i32, i32* %Symbol.addr, align 4
  %3 = load %struct.subst*, %struct.subst** %Result, align 8
  %dom = getelementptr inbounds %struct.subst, %struct.subst* %3, i32 0, i32 1
  store i32 %2, i32* %dom, align 4
  %4 = load %struct.term*, %struct.term** %Codomain.addr, align 8
  %5 = load %struct.subst*, %struct.subst** %Result, align 8
  %codomain = getelementptr inbounds %struct.subst, %struct.subst* %5, i32 0, i32 2
  store %struct.term* %4, %struct.term** %codomain, align 8
  %6 = load %struct.subst*, %struct.subst** %Result, align 8
  ret %struct.subst* %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.subst* @subst_Get() #1 {
entry:
  %call = call i8* @memory_Malloc(i32 24)
  %0 = bitcast i8* %call to %struct.subst*
  ret %struct.subst* %0
}

; Function Attrs: nounwind uwtable
define void @subst_Delete(%struct.subst* %Subst) #0 {
entry:
  %Subst.addr = alloca %struct.subst*, align 8
  %Next = alloca %struct.subst*, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call i32 @subst_Exist(%struct.subst* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call1 = call %struct.subst* @subst_Next(%struct.subst* %1)
  store %struct.subst* %call1, %struct.subst** %Next, align 8
  %2 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call2 = call %struct.term* @subst_Cod(%struct.subst* %2)
  %tobool3 = icmp ne %struct.term* %call2, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call4 = call %struct.term* @subst_Cod(%struct.subst* %3)
  call void @term_Delete(%struct.term* %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %4 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  call void @subst_FreeOneNode(%struct.subst* %4)
  %5 = load %struct.subst*, %struct.subst** %Next, align 8
  store %struct.subst* %5, %struct.subst** %Subst.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
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
define internal %struct.term* @subst_Cod(%struct.subst* %S) #1 {
entry:
  %S.addr = alloca %struct.subst*, align 8
  store %struct.subst* %S, %struct.subst** %S.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %S.addr, align 8
  %codomain = getelementptr inbounds %struct.subst, %struct.subst* %0, i32 0, i32 2
  %1 = load %struct.term*, %struct.term** %codomain, align 8
  ret %struct.term* %1
}

declare void @term_Delete(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @subst_FreeOneNode(%struct.subst* %SL) #1 {
entry:
  %SL.addr = alloca %struct.subst*, align 8
  store %struct.subst* %SL, %struct.subst** %SL.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %SL.addr, align 8
  %1 = bitcast %struct.subst* %0 to i8*
  call void @memory_Free(i8* %1, i32 24)
  ret void
}

; Function Attrs: nounwind uwtable
define void @subst_Free(%struct.subst* %Subst) #0 {
entry:
  %Subst.addr = alloca %struct.subst*, align 8
  %Next = alloca %struct.subst*, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call i32 @subst_Exist(%struct.subst* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call1 = call %struct.subst* @subst_Next(%struct.subst* %1)
  store %struct.subst* %call1, %struct.subst** %Next, align 8
  %2 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  call void @subst_FreeOneNode(%struct.subst* %2)
  %3 = load %struct.subst*, %struct.subst** %Next, align 8
  store %struct.subst* %3, %struct.subst** %Subst.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.term* @subst_Term(i32 %Symbol, %struct.subst* %Subst) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Symbol.addr = alloca i32, align 4
  %Subst.addr = alloca %struct.subst*, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call i32 @subst_Exist(%struct.subst* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %Symbol.addr, align 4
  %2 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call1 = call i32 @subst_Dom(%struct.subst* %2)
  %call2 = call i32 @symbol_Equal(i32 %1, i32 %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call4 = call %struct.term* @subst_Cod(%struct.subst* %3)
  store %struct.term* %call4, %struct.term** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call5 = call %struct.subst* @subst_Next(%struct.subst* %4)
  store %struct.subst* %call5, %struct.subst** %Subst.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.term* null, %struct.term** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %5
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
define internal i32 @subst_Dom(%struct.subst* %S) #1 {
entry:
  %S.addr = alloca %struct.subst*, align 8
  store %struct.subst* %S, %struct.subst** %S.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %S.addr, align 8
  %dom = getelementptr inbounds %struct.subst, %struct.subst* %0, i32 0, i32 1
  %1 = load i32, i32* %dom, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define %struct.term* @subst_Apply(%struct.subst* %Subst, %struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  %Term.addr = alloca %struct.term*, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call i32 @subst_Empty(%struct.subst* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %1, %struct.term** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.term* @subst_ApplyIntern(%struct.subst* %2, %struct.term* %3)
  store %struct.term* %call1, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %4
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

; Function Attrs: nounwind uwtable
define internal %struct.term* @subst_ApplyIntern(%struct.subst* %Subst, %struct.term* %Term) #0 {
entry:
  %Subst.addr = alloca %struct.subst*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %RplacTerm = alloca %struct.term*, align 8
  %Arglist = alloca %struct.LIST_HELP*, align 8
  %Top = alloca i32, align 4
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load i32, i32* %Top, align 4
  %call1 = call i32 @symbol_IsVariable(i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %Top, align 4
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call2 = call %struct.term* @subst_Term(i32 %2, %struct.subst* %3)
  store %struct.term* %call2, %struct.term** %RplacTerm, align 8
  %tobool3 = icmp ne %struct.term* %call2, null
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.term*, %struct.term** %RplacTerm, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  %call5 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call4)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Arglist, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %6 = load %struct.term*, %struct.term** %RplacTerm, align 8
  %call6 = call i32 @term_TopSymbol(%struct.term* %6)
  call void @term_RplacTop(%struct.term* %5, i32 %call6)
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call7)
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arglist, align 8
  call void @term_RplacArgumentList(%struct.term* %8, %struct.LIST_HELP* %9)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %10)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Arglist, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arglist, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool10, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arglist, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call11 to %struct.term*
  %call12 = call %struct.term* @subst_ApplyIntern(%struct.subst* %12, %struct.term* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arglist, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Arglist, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %16 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %16
}

; Function Attrs: nounwind uwtable
define %struct.subst* @subst_Merge(%struct.subst* %Source, %struct.subst* %Drain) #0 {
entry:
  %Source.addr = alloca %struct.subst*, align 8
  %Drain.addr = alloca %struct.subst*, align 8
  %Scan = alloca %struct.subst*, align 8
  %Changed = alloca i32, align 4
  store %struct.subst* %Source, %struct.subst** %Source.addr, align 8
  store %struct.subst* %Drain, %struct.subst** %Drain.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %0 = load %struct.subst*, %struct.subst** %Source.addr, align 8
  %call = call i32 @subst_Exist(%struct.subst* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %Changed, align 4
  %1 = load %struct.subst*, %struct.subst** %Drain.addr, align 8
  store %struct.subst* %1, %struct.subst** %Scan, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load %struct.subst*, %struct.subst** %Scan, align 8
  %call2 = call i32 @subst_Exist(%struct.subst* %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %3 = load %struct.subst*, %struct.subst** %Source.addr, align 8
  %dom = getelementptr inbounds %struct.subst, %struct.subst* %3, i32 0, i32 1
  %4 = load i32, i32* %dom, align 4
  %5 = load %struct.subst*, %struct.subst** %Source.addr, align 8
  %codomain = getelementptr inbounds %struct.subst, %struct.subst* %5, i32 0, i32 2
  %6 = load %struct.term*, %struct.term** %codomain, align 8
  %7 = load %struct.subst*, %struct.subst** %Scan, align 8
  %codomain5 = getelementptr inbounds %struct.subst, %struct.subst* %7, i32 0, i32 2
  %call6 = call i32 @term_SubstituteVariable(i32 %4, %struct.term* %6, %struct.term** %codomain5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  store i32 1, i32* %Changed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.subst*, %struct.subst** %Scan, align 8
  %call8 = call %struct.subst* @subst_Next(%struct.subst* %8)
  store %struct.subst* %call8, %struct.subst** %Scan, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %9 = load i32, i32* %Changed, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.end.15, label %if.then.10

if.then.10:                                       ; preds = %for.end
  %10 = load %struct.subst*, %struct.subst** %Source.addr, align 8
  %dom11 = getelementptr inbounds %struct.subst, %struct.subst* %10, i32 0, i32 1
  %11 = load i32, i32* %dom11, align 4
  %12 = load %struct.subst*, %struct.subst** %Source.addr, align 8
  %codomain12 = getelementptr inbounds %struct.subst, %struct.subst* %12, i32 0, i32 2
  %13 = load %struct.term*, %struct.term** %codomain12, align 8
  %call13 = call %struct.term* @term_Copy(%struct.term* %13)
  %14 = load %struct.subst*, %struct.subst** %Drain.addr, align 8
  %call14 = call %struct.subst* @subst_Add(i32 %11, %struct.term* %call13, %struct.subst* %14)
  store %struct.subst* %call14, %struct.subst** %Drain.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %for.end
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %15 = load %struct.subst*, %struct.subst** %Source.addr, align 8
  %call17 = call %struct.subst* @subst_Next(%struct.subst* %15)
  store %struct.subst* %call17, %struct.subst** %Source.addr, align 8
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  %16 = load %struct.subst*, %struct.subst** %Drain.addr, align 8
  ret %struct.subst* %16
}

declare i32 @term_SubstituteVariable(i32, %struct.term*, %struct.term**) #2

declare %struct.term* @term_Copy(%struct.term*) #2

; Function Attrs: nounwind uwtable
define %struct.subst* @subst_Compose(%struct.subst* %Outer, %struct.subst* %Inner) #0 {
entry:
  %Outer.addr = alloca %struct.subst*, align 8
  %Inner.addr = alloca %struct.subst*, align 8
  %Scan1 = alloca %struct.subst*, align 8
  %Scan2 = alloca %struct.subst*, align 8
  %New = alloca %struct.subst*, align 8
  store %struct.subst* %Outer, %struct.subst** %Outer.addr, align 8
  store %struct.subst* %Inner, %struct.subst** %Inner.addr, align 8
  %call = call %struct.subst* @subst_Nil()
  store %struct.subst* %call, %struct.subst** %New, align 8
  %0 = load %struct.subst*, %struct.subst** %Outer.addr, align 8
  store %struct.subst* %0, %struct.subst** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %1 = load %struct.subst*, %struct.subst** %Scan1, align 8
  %call1 = call i32 @subst_Exist(%struct.subst* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %2 = load %struct.subst*, %struct.subst** %Inner.addr, align 8
  store %struct.subst* %2, %struct.subst** %Scan2, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load %struct.subst*, %struct.subst** %Scan2, align 8
  %call3 = call i32 @subst_Exist(%struct.subst* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %4 = load %struct.subst*, %struct.subst** %Scan1, align 8
  %call6 = call i32 @subst_Dom(%struct.subst* %4)
  %5 = load %struct.subst*, %struct.subst** %Scan1, align 8
  %call7 = call %struct.term* @subst_Cod(%struct.subst* %5)
  %6 = load %struct.subst*, %struct.subst** %Scan2, align 8
  %codomain = getelementptr inbounds %struct.subst, %struct.subst* %6, i32 0, i32 2
  %call8 = call i32 @term_SubstituteVariable(i32 %call6, %struct.term* %call7, %struct.term** %codomain)
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %7 = load %struct.subst*, %struct.subst** %Scan2, align 8
  %call9 = call %struct.subst* @subst_Next(%struct.subst* %7)
  store %struct.subst* %call9, %struct.subst** %Scan2, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %8 = load %struct.subst*, %struct.subst** %Scan1, align 8
  %call10 = call i32 @subst_Dom(%struct.subst* %8)
  %9 = load %struct.subst*, %struct.subst** %Inner.addr, align 8
  %call11 = call i32 @subst_BindVar(i32 %call10, %struct.subst* %9)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %10 = load %struct.subst*, %struct.subst** %Scan1, align 8
  %call13 = call i32 @subst_Dom(%struct.subst* %10)
  %11 = load %struct.subst*, %struct.subst** %Scan1, align 8
  %call14 = call %struct.term* @subst_Cod(%struct.subst* %11)
  %call15 = call %struct.term* @term_Copy(%struct.term* %call14)
  %12 = load %struct.subst*, %struct.subst** %New, align 8
  %call16 = call %struct.subst* @subst_Add(i32 %call13, %struct.term* %call15, %struct.subst* %12)
  store %struct.subst* %call16, %struct.subst** %New, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end
  %13 = load %struct.subst*, %struct.subst** %Scan1, align 8
  %call18 = call %struct.subst* @subst_Next(%struct.subst* %13)
  store %struct.subst* %call18, %struct.subst** %Scan1, align 8
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  %14 = load %struct.subst*, %struct.subst** %Inner.addr, align 8
  %15 = load %struct.subst*, %struct.subst** %New, align 8
  %call20 = call %struct.subst* @subst_NUnion(%struct.subst* %14, %struct.subst* %15)
  ret %struct.subst* %call20
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.subst* @subst_Nil() #1 {
entry:
  ret %struct.subst* null
}

; Function Attrs: nounwind uwtable
define i32 @subst_BindVar(i32 %Var, %struct.subst* %Subst) #0 {
entry:
  %retval = alloca i32, align 4
  %Var.addr = alloca i32, align 4
  %Subst.addr = alloca %struct.subst*, align 8
  %Scan = alloca %struct.subst*, align 8
  store i32 %Var, i32* %Var.addr, align 4
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  store %struct.subst* %0, %struct.subst** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.subst*, %struct.subst** %Scan, align 8
  %call = call i32 @subst_Exist(%struct.subst* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.subst*, %struct.subst** %Scan, align 8
  %call1 = call i32 @subst_Dom(%struct.subst* %2)
  %3 = load i32, i32* %Var.addr, align 4
  %call2 = call i32 @symbol_Equal(i32 %call1, i32 %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load %struct.subst*, %struct.subst** %Scan, align 8
  %call4 = call %struct.subst* @subst_Next(%struct.subst* %4)
  store %struct.subst* %call4, %struct.subst** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.subst* @subst_NUnion(%struct.subst* %S1, %struct.subst* %S2) #1 {
entry:
  %retval = alloca %struct.subst*, align 8
  %S1.addr = alloca %struct.subst*, align 8
  %S2.addr = alloca %struct.subst*, align 8
  %Result = alloca %struct.subst*, align 8
  store %struct.subst* %S1, %struct.subst** %S1.addr, align 8
  store %struct.subst* %S2, %struct.subst** %S2.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %S1.addr, align 8
  %cmp = icmp eq %struct.subst* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.subst*, %struct.subst** %S2.addr, align 8
  store %struct.subst* %1, %struct.subst** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.subst*, %struct.subst** %S2.addr, align 8
  %cmp1 = icmp eq %struct.subst* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.subst*, %struct.subst** %S1.addr, align 8
  store %struct.subst* %3, %struct.subst** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.subst*, %struct.subst** %S1.addr, align 8
  store %struct.subst* %4, %struct.subst** %Result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %5 = load %struct.subst*, %struct.subst** %S1.addr, align 8
  %next = getelementptr inbounds %struct.subst, %struct.subst* %5, i32 0, i32 0
  %6 = load %struct.subst*, %struct.subst** %next, align 8
  %cmp4 = icmp ne %struct.subst* %6, null
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.subst*, %struct.subst** %S1.addr, align 8
  %next5 = getelementptr inbounds %struct.subst, %struct.subst* %7, i32 0, i32 0
  %8 = load %struct.subst*, %struct.subst** %next5, align 8
  store %struct.subst* %8, %struct.subst** %S1.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.subst*, %struct.subst** %S2.addr, align 8
  %10 = load %struct.subst*, %struct.subst** %S1.addr, align 8
  %next6 = getelementptr inbounds %struct.subst, %struct.subst* %10, i32 0, i32 0
  store %struct.subst* %9, %struct.subst** %next6, align 8
  %11 = load %struct.subst*, %struct.subst** %Result, align 8
  store %struct.subst* %11, %struct.subst** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.2, %if.then
  %12 = load %struct.subst*, %struct.subst** %retval
  ret %struct.subst* %12
}

; Function Attrs: nounwind uwtable
define %struct.subst* @subst_Copy(%struct.subst* %Subst) #0 {
entry:
  %Subst.addr = alloca %struct.subst*, align 8
  %Copy = alloca %struct.subst*, align 8
  %Result = alloca %struct.subst*, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  %call = call %struct.subst* @subst_Nil()
  store %struct.subst* %call, %struct.subst** %Result, align 8
  %call1 = call %struct.subst* @subst_Nil()
  store %struct.subst* %call1, %struct.subst** %Copy, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call2 = call i32 @subst_Exist(%struct.subst* %0)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.subst*, %struct.subst** %Result, align 8
  %call3 = call i32 @subst_Exist(%struct.subst* %1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %2 = load %struct.subst*, %struct.subst** %Copy, align 8
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call5 = call i32 @subst_Dom(%struct.subst* %3)
  %4 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call6 = call %struct.term* @subst_Cod(%struct.subst* %4)
  %call7 = call %struct.term* @term_Copy(%struct.term* %call6)
  %call8 = call %struct.subst* @subst_Nil()
  %call9 = call %struct.subst* @subst_Add(i32 %call5, %struct.term* %call7, %struct.subst* %call8)
  call void @subst_SetNext(%struct.subst* %2, %struct.subst* %call9)
  %5 = load %struct.subst*, %struct.subst** %Copy, align 8
  %call10 = call %struct.subst* @subst_Next(%struct.subst* %5)
  store %struct.subst* %call10, %struct.subst** %Copy, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %6 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call11 = call i32 @subst_Dom(%struct.subst* %6)
  %7 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call12 = call %struct.term* @subst_Cod(%struct.subst* %7)
  %call13 = call %struct.term* @term_Copy(%struct.term* %call12)
  %call14 = call %struct.subst* @subst_Nil()
  %call15 = call %struct.subst* @subst_Add(i32 %call11, %struct.term* %call13, %struct.subst* %call14)
  store %struct.subst* %call15, %struct.subst** %Result, align 8
  %8 = load %struct.subst*, %struct.subst** %Result, align 8
  store %struct.subst* %8, %struct.subst** %Copy, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call16 = call %struct.subst* @subst_Next(%struct.subst* %9)
  store %struct.subst* %call16, %struct.subst** %Subst.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.subst*, %struct.subst** %Result, align 8
  ret %struct.subst* %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @subst_SetNext(%struct.subst* %S, %struct.subst* %N) #1 {
entry:
  %S.addr = alloca %struct.subst*, align 8
  %N.addr = alloca %struct.subst*, align 8
  store %struct.subst* %S, %struct.subst** %S.addr, align 8
  store %struct.subst* %N, %struct.subst** %N.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %N.addr, align 8
  %1 = load %struct.subst*, %struct.subst** %S.addr, align 8
  %next = getelementptr inbounds %struct.subst, %struct.subst* %1, i32 0, i32 0
  store %struct.subst* %0, %struct.subst** %next, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @subst_MatchTops(%struct.binding* %Context, %struct.subst* %Subst) #0 {
entry:
  %retval = alloca i32, align 4
  %Context.addr = alloca %struct.binding*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call i32 @subst_Exist(%struct.subst* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %2 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call1 = call i32 @subst_Dom(%struct.subst* %2)
  %call2 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %1, i32 %call1)
  %tobool3 = icmp ne %struct.term* %call2, null
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %3 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %4 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call4 = call i32 @subst_Dom(%struct.subst* %4)
  %call5 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %3, i32 %call4)
  %5 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call6 = call %struct.term* @subst_Cod(%struct.subst* %5)
  %call7 = call i32 @term_EqualTopSymbols(%struct.term* %call5, %struct.term* %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call9 = call %struct.subst* @subst_Next(%struct.subst* %6)
  store %struct.subst* %call9, %struct.subst** %Subst.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
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
define i32 @subst_Unify(%struct.binding* %IndexContext, %struct.subst* %Subst) #0 {
entry:
  %retval = alloca i32, align 4
  %IndexContext.addr = alloca %struct.binding*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %entry
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call i32 @subst_Exist(%struct.subst* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %2 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call1 = call i32 @subst_Dom(%struct.subst* %2)
  %call2 = call i32 @cont_VarIsBound(%struct.binding* %1, i32 %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else.12, label %if.then

if.then:                                          ; preds = %while.body
  %3 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %4 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call4 = call i32 @subst_Dom(%struct.subst* %4)
  %5 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %6 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call5 = call %struct.term* @subst_Cod(%struct.subst* %6)
  %call6 = call i32 @unify_OccurCheck(%struct.binding* %3, i32 %call4, %struct.binding* %5, %struct.term* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %7 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %8 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call9 = call i32 @subst_Dom(%struct.subst* %8)
  %9 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %10 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call10 = call %struct.term* @subst_Cod(%struct.subst* %10)
  %call11 = call i32 @cont_CreateBinding(%struct.binding* %7, i32 %call9, %struct.binding* %9, %struct.term* %call10)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.22

if.else.12:                                       ; preds = %while.body
  %11 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %12 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %13 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call13 = call %struct.term* @subst_Cod(%struct.subst* %13)
  %14 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %15 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call14 = call i32 @subst_Dom(%struct.subst* %15)
  %call15 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %14, i32 %call14)
  %16 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %17 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call16 = call i32 @subst_Dom(%struct.subst* %17)
  %call17 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %16, i32 %call16)
  %call18 = call i32 @unify_UnifyAllOC(%struct.binding* %11, %struct.binding* %12, %struct.term* %call13, %struct.binding* %call15, %struct.term* %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.else.12
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.else.12
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  %18 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call23 = call %struct.subst* @subst_Next(%struct.subst* %18)
  store %struct.subst* %call23, %struct.subst** %Subst.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.20, %if.then.8
  %19 = load i32, i32* %retval
  ret i32 %19
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

declare i32 @unify_OccurCheck(%struct.binding*, i32, %struct.binding*, %struct.term*) #2

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

declare i32 @unify_UnifyAllOC(%struct.binding*, %struct.binding*, %struct.term*, %struct.binding*, %struct.term*) #2

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

; Function Attrs: nounwind uwtable
define i32 @subst_IsShallow(%struct.subst* %Subst) #0 {
entry:
  %retval = alloca i32, align 4
  %Subst.addr = alloca %struct.subst*, align 8
  %SubstScan = alloca %struct.subst*, align 8
  %Codomain = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  store %struct.subst* %0, %struct.subst** %SubstScan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %1 = load %struct.subst*, %struct.subst** %SubstScan, align 8
  %call = call %struct.subst* @subst_Nil()
  %cmp = icmp ne %struct.subst* %1, %call
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %2 = load %struct.subst*, %struct.subst** %SubstScan, align 8
  %call1 = call %struct.term* @subst_Cod(%struct.subst* %2)
  store %struct.term* %call1, %struct.term** %Codomain, align 8
  %3 = load %struct.term*, %struct.term** %Codomain, align 8
  %call2 = call i32 @term_IsVariable(%struct.term* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.19, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.term*, %struct.term** %Codomain, align 8
  %call3 = call i32 @term_IsGround(%struct.term* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.19, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.term*, %struct.term** %Codomain, align 8
  %call5 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.then
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Nil()
  %cmp8 = icmp ne %struct.LIST_HELP* %6, %call7
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call10 to %struct.term*
  %call11 = call i32 @term_IsVariable(%struct.term* %8)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end, label %land.lhs.true.13

land.lhs.true.13:                                 ; preds = %for.body.9
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call14 to %struct.term*
  %call15 = call i32 @term_IsGround(%struct.term* %10)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.13
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.13, %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end.19
  %12 = load %struct.subst*, %struct.subst** %SubstScan, align 8
  %call21 = call %struct.subst* @subst_Next(%struct.subst* %12)
  store %struct.subst* %call21, %struct.subst** %SubstScan, align 8
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.22, %if.then.17
  %13 = load i32, i32* %retval
  ret i32 %13
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

declare i32 @term_IsGround(%struct.term*) #2

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
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
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
define i32 @subst_Match(%struct.binding* %Context, %struct.subst* %Subst) #0 {
entry:
  %retval = alloca i32, align 4
  %Context.addr = alloca %struct.binding*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call i32 @subst_Exist(%struct.subst* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %2 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call1 = call i32 @subst_Dom(%struct.subst* %2)
  %call2 = call i32 @cont_VarIsBound(%struct.binding* %1, i32 %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %3 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %4 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call4 = call %struct.term* @subst_Cod(%struct.subst* %4)
  %5 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %6 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call5 = call i32 @subst_Dom(%struct.subst* %6)
  %call6 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %5, i32 %call5)
  %call7 = call i32 @unify_Match(%struct.binding* %3, %struct.term* %call4, %struct.term* %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call9 = call %struct.subst* @subst_Next(%struct.subst* %7)
  store %struct.subst* %call9, %struct.subst** %Subst.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @unify_Match(%struct.binding*, %struct.term*, %struct.term*) #2

; Function Attrs: nounwind uwtable
define i32 @subst_MatchReverse(%struct.binding* %IndexContext, %struct.subst* %Subst) #0 {
entry:
  %retval = alloca i32, align 4
  %IndexContext.addr = alloca %struct.binding*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %entry
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call i32 @subst_Exist(%struct.subst* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %2 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call1 = call i32 @subst_Dom(%struct.subst* %2)
  %call2 = call i32 @cont_VarIsBound(%struct.binding* %1, i32 %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else.12, label %if.then

if.then:                                          ; preds = %while.body
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call4 = call i32 @subst_Dom(%struct.subst* %3)
  %call5 = call i32 @symbol_IsIndexVariable(i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %4 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %5 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call8 = call i32 @subst_Dom(%struct.subst* %5)
  %call9 = call %struct.binding* @cont_InstanceContext()
  %6 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call10 = call %struct.term* @subst_Cod(%struct.subst* %6)
  %call11 = call i32 @cont_CreateBinding(%struct.binding* %4, i32 %call8, %struct.binding* %call9, %struct.term* %call10)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  br label %if.end.22

if.else.12:                                       ; preds = %while.body
  %7 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %8 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call13 = call %struct.term* @subst_Cod(%struct.subst* %8)
  %9 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %10 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call14 = call i32 @subst_Dom(%struct.subst* %10)
  %call15 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %9, i32 %call14)
  %11 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %12 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call16 = call i32 @subst_Dom(%struct.subst* %12)
  %call17 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %11, i32 %call16)
  %call18 = call i32 @unify_MatchReverse(%struct.binding* %7, %struct.term* %call13, %struct.binding* %call15, %struct.term* %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.else.12
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.else.12
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  %13 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call23 = call %struct.subst* @subst_Next(%struct.subst* %13)
  store %struct.subst* %call23, %struct.subst** %Subst.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.20, %if.else
  %14 = load i32, i32* %retval
  ret i32 %14
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

declare i32 @unify_MatchReverse(%struct.binding*, %struct.term*, %struct.binding*, %struct.term*) #2

; Function Attrs: nounwind uwtable
define i32 @subst_Variation(%struct.binding* %Context, %struct.subst* %Subst) #0 {
entry:
  %retval = alloca i32, align 4
  %Context.addr = alloca %struct.binding*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call i32 @subst_Exist(%struct.subst* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %2 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call1 = call i32 @subst_Dom(%struct.subst* %2)
  %call2 = call i32 @cont_VarIsBound(%struct.binding* %1, i32 %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %3 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %4 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call4 = call %struct.term* @subst_Cod(%struct.subst* %4)
  %5 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %6 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call5 = call i32 @subst_Dom(%struct.subst* %6)
  %call6 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %5, i32 %call5)
  %call7 = call i32 @unify_Variation(%struct.binding* %3, %struct.term* %call4, %struct.term* %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call9 = call %struct.subst* @subst_Next(%struct.subst* %7)
  store %struct.subst* %call9, %struct.subst** %Subst.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @unify_Variation(%struct.binding*, %struct.term*, %struct.term*) #2

; Function Attrs: nounwind uwtable
define %struct.subst* @subst_ComGen(%struct.binding* %Context, %struct.subst* %Subst, %struct.subst** %SubstOld, %struct.subst** %SubstNew) #0 {
entry:
  %Context.addr = alloca %struct.binding*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  %SubstOld.addr = alloca %struct.subst**, align 8
  %SubstNew.addr = alloca %struct.subst**, align 8
  %Result = alloca %struct.subst*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store %struct.subst** %SubstOld, %struct.subst*** %SubstOld.addr, align 8
  store %struct.subst** %SubstNew, %struct.subst*** %SubstNew.addr, align 8
  %0 = load %struct.subst**, %struct.subst*** %SubstNew.addr, align 8
  store %struct.subst* null, %struct.subst** %0, align 8
  %1 = load %struct.subst**, %struct.subst*** %SubstOld.addr, align 8
  store %struct.subst* null, %struct.subst** %1, align 8
  store %struct.subst* null, %struct.subst** %Result, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call i32 @subst_Dom(%struct.subst* %3)
  %call1 = call i32 @cont_VarIsBound(%struct.binding* %2, i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %4 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call2 = call i32 @subst_Dom(%struct.subst* %4)
  %5 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call3 = call %struct.term* @subst_Cod(%struct.subst* %5)
  %call4 = call %struct.term* @term_Copy(%struct.term* %call3)
  %6 = load %struct.subst**, %struct.subst*** %SubstOld.addr, align 8
  %7 = load %struct.subst*, %struct.subst** %6, align 8
  %call5 = call %struct.subst* @subst_Add(i32 %call2, %struct.term* %call4, %struct.subst* %7)
  %8 = load %struct.subst**, %struct.subst*** %SubstOld.addr, align 8
  store %struct.subst* %call5, %struct.subst** %8, align 8
  br label %if.end.42

if.else:                                          ; preds = %do.body
  %9 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %10 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call6 = call i32 @subst_Dom(%struct.subst* %10)
  %call7 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %9, i32 %call6)
  %11 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call8 = call %struct.term* @subst_Cod(%struct.subst* %11)
  %call9 = call i32 @term_Equal(%struct.term* %call7, %struct.term* %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.16

if.then.11:                                       ; preds = %if.else
  %12 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call12 = call i32 @subst_Dom(%struct.subst* %12)
  %13 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call13 = call %struct.term* @subst_Cod(%struct.subst* %13)
  %call14 = call %struct.term* @term_Copy(%struct.term* %call13)
  %14 = load %struct.subst*, %struct.subst** %Result, align 8
  %call15 = call %struct.subst* @subst_Add(i32 %call12, %struct.term* %call14, %struct.subst* %14)
  store %struct.subst* %call15, %struct.subst** %Result, align 8
  br label %if.end.41

if.else.16:                                       ; preds = %if.else
  %15 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %16 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call17 = call i32 @subst_Dom(%struct.subst* %16)
  %call18 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %15, i32 %call17)
  %call19 = call i32 @term_TopSymbol(%struct.term* %call18)
  %17 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call20 = call %struct.term* @subst_Cod(%struct.subst* %17)
  %call21 = call i32 @term_TopSymbol(%struct.term* %call20)
  %call22 = call i32 @symbol_Equal(i32 %call19, i32 %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else.34, label %if.then.24

if.then.24:                                       ; preds = %if.else.16
  %18 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call25 = call i32 @subst_Dom(%struct.subst* %18)
  %19 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call26 = call %struct.term* @subst_Cod(%struct.subst* %19)
  %call27 = call %struct.term* @term_Copy(%struct.term* %call26)
  %20 = load %struct.subst**, %struct.subst*** %SubstOld.addr, align 8
  %21 = load %struct.subst*, %struct.subst** %20, align 8
  %call28 = call %struct.subst* @subst_Add(i32 %call25, %struct.term* %call27, %struct.subst* %21)
  %22 = load %struct.subst**, %struct.subst*** %SubstOld.addr, align 8
  store %struct.subst* %call28, %struct.subst** %22, align 8
  %23 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call29 = call i32 @subst_Dom(%struct.subst* %23)
  %24 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %25 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call30 = call i32 @subst_Dom(%struct.subst* %25)
  %call31 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %24, i32 %call30)
  %call32 = call %struct.term* @term_Copy(%struct.term* %call31)
  %26 = load %struct.subst**, %struct.subst*** %SubstNew.addr, align 8
  %27 = load %struct.subst*, %struct.subst** %26, align 8
  %call33 = call %struct.subst* @subst_Add(i32 %call29, %struct.term* %call32, %struct.subst* %27)
  %28 = load %struct.subst**, %struct.subst*** %SubstNew.addr, align 8
  store %struct.subst* %call33, %struct.subst** %28, align 8
  br label %if.end

if.else.34:                                       ; preds = %if.else.16
  %29 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call35 = call i32 @subst_Dom(%struct.subst* %29)
  %30 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %31 = load %struct.subst**, %struct.subst*** %SubstNew.addr, align 8
  %32 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %33 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call36 = call i32 @subst_Dom(%struct.subst* %33)
  %call37 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %32, i32 %call36)
  %34 = load %struct.subst**, %struct.subst*** %SubstOld.addr, align 8
  %35 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call38 = call %struct.term* @subst_Cod(%struct.subst* %35)
  %call39 = call %struct.term* @unify_ComGenLinear(%struct.binding* %30, %struct.subst** %31, %struct.term* %call37, %struct.subst** %34, %struct.term* %call38)
  %36 = load %struct.subst*, %struct.subst** %Result, align 8
  %call40 = call %struct.subst* @subst_Add(i32 %call35, %struct.term* %call39, %struct.subst* %36)
  store %struct.subst* %call40, %struct.subst** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.34, %if.then.24
  br label %if.end.41

if.end.41:                                        ; preds = %if.end, %if.then.11
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then
  %37 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %38 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call43 = call i32 @subst_Dom(%struct.subst* %38)
  call void @cont_CloseBinding(%struct.binding* %37, i32 %call43)
  %39 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call44 = call %struct.subst* @subst_Next(%struct.subst* %39)
  store %struct.subst* %call44, %struct.subst** %Subst.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.42
  %40 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call45 = call i32 @subst_Exist(%struct.subst* %40)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %41 = load %struct.subst*, %struct.subst** %Result, align 8
  ret %struct.subst* %41
}

declare i32 @term_Equal(%struct.term*, %struct.term*) #2

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

declare %struct.term* @unify_ComGenLinear(%struct.binding*, %struct.subst**, %struct.term*, %struct.subst**, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_CloseBinding(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  call void @cont_CloseBindingHelp(%struct.binding* %0, i32 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @subst_CloseVariables(%struct.binding* %Context, %struct.subst* %Subst) #0 {
entry:
  %Context.addr = alloca %struct.binding*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call i32 @subst_Exist(%struct.subst* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %2 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call1 = call i32 @subst_Dom(%struct.subst* %2)
  call void @cont_CloseBinding(%struct.binding* %1, i32 %call1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call2 = call %struct.subst* @subst_Next(%struct.subst* %3)
  store %struct.subst* %call2, %struct.subst** %Subst.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.subst* @subst_CloseOpenVariables(%struct.subst* %Result) #0 {
entry:
  %Result.addr = alloca %struct.subst*, align 8
  store %struct.subst* %Result, %struct.subst** %Result.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call %struct.binding* @cont_LastBinding()
  %tobool = icmp ne %struct.binding* %call, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 @cont_LastIsBound()
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %call3 = call i32 @cont_LastBindingSymbol()
  %call4 = call %struct.term* @cont_LastBindingTerm()
  %call5 = call %struct.term* @term_Copy(%struct.term* %call4)
  %0 = load %struct.subst*, %struct.subst** %Result.addr, align 8
  %call6 = call %struct.subst* @subst_Add(i32 %call3, %struct.term* %call5, %struct.subst* %0)
  store %struct.subst* %call6, %struct.subst** %Result.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  call void @cont_BackTrackLastBinding()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1 = load %struct.subst*, %struct.subst** %Result.addr, align 8
  ret %struct.subst* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LastBinding() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LASTBINDING, align 8
  ret %struct.binding* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_LastIsBound() #1 {
entry:
  %call = call %struct.binding* @cont_LastBinding()
  %call1 = call i32 @cont_BindingIsBound(%struct.binding* %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_LastBindingSymbol() #1 {
entry:
  %call = call %struct.binding* @cont_LastBinding()
  %call1 = call i32 @cont_BindingSymbol(%struct.binding* %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @cont_LastBindingTerm() #1 {
entry:
  %call = call %struct.binding* @cont_LastBinding()
  %call1 = call %struct.term* @cont_BindingTerm(%struct.binding* %call)
  ret %struct.term* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_BackTrackLastBinding() #1 {
entry:
  call void @cont_BackTrackLastBindingHelp()
  ret void
}

; Function Attrs: nounwind uwtable
define void @subst_ExtractUnifier(%struct.binding* %CL, %struct.subst** %LeftSubst, %struct.binding* %CR, %struct.subst** %RightSubst) #0 {
entry:
  %CL.addr = alloca %struct.binding*, align 8
  %LeftSubst.addr = alloca %struct.subst**, align 8
  %CR.addr = alloca %struct.binding*, align 8
  %RightSubst.addr = alloca %struct.subst**, align 8
  %Scan = alloca %struct.binding*, align 8
  store %struct.binding* %CL, %struct.binding** %CL.addr, align 8
  store %struct.subst** %LeftSubst, %struct.subst*** %LeftSubst.addr, align 8
  store %struct.binding* %CR, %struct.binding** %CR.addr, align 8
  store %struct.subst** %RightSubst, %struct.subst*** %RightSubst.addr, align 8
  %call = call %struct.subst* @subst_Nil()
  %0 = load %struct.subst**, %struct.subst*** %LeftSubst.addr, align 8
  store %struct.subst* %call, %struct.subst** %0, align 8
  %call1 = call %struct.subst* @subst_Nil()
  %1 = load %struct.subst**, %struct.subst*** %RightSubst.addr, align 8
  store %struct.subst* %call1, %struct.subst** %1, align 8
  %call2 = call %struct.binding* @cont_LastBinding()
  store %struct.binding* %call2, %struct.binding** %Scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %entry
  %2 = load %struct.binding*, %struct.binding** %Scan, align 8
  %tobool = icmp ne %struct.binding* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.binding*, %struct.binding** %CL.addr, align 8
  %4 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call3 = call i32 @cont_BindingSymbol(%struct.binding* %4)
  %5 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call4 = call i32 @cont_IsInContext(%struct.binding* %3, i32 %call3, %struct.binding* %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call6 = call i32 @cont_BindingSymbol(%struct.binding* %6)
  %7 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call7 = call %struct.binding* @cont_BindingContext(%struct.binding* %7)
  %8 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call8 = call %struct.term* @cont_BindingTerm(%struct.binding* %8)
  %call9 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* %call7, %struct.term* %call8)
  %9 = load %struct.subst**, %struct.subst*** %LeftSubst.addr, align 8
  %10 = load %struct.subst*, %struct.subst** %9, align 8
  %call10 = call %struct.subst* @subst_Add(i32 %call6, %struct.term* %call9, %struct.subst* %10)
  %11 = load %struct.subst**, %struct.subst*** %LeftSubst.addr, align 8
  store %struct.subst* %call10, %struct.subst** %11, align 8
  br label %if.end.20

if.else:                                          ; preds = %while.body
  %12 = load %struct.binding*, %struct.binding** %CR.addr, align 8
  %13 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call11 = call i32 @cont_BindingSymbol(%struct.binding* %13)
  %14 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call12 = call i32 @cont_IsInContext(%struct.binding* %12, i32 %call11, %struct.binding* %14)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.else
  %15 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call15 = call i32 @cont_BindingSymbol(%struct.binding* %15)
  %16 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call16 = call %struct.binding* @cont_BindingContext(%struct.binding* %16)
  %17 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call17 = call %struct.term* @cont_BindingTerm(%struct.binding* %17)
  %call18 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* %call16, %struct.term* %call17)
  %18 = load %struct.subst**, %struct.subst*** %RightSubst.addr, align 8
  %19 = load %struct.subst*, %struct.subst** %18, align 8
  %call19 = call %struct.subst* @subst_Add(i32 %call15, %struct.term* %call18, %struct.subst* %19)
  %20 = load %struct.subst**, %struct.subst*** %RightSubst.addr, align 8
  store %struct.subst* %call19, %struct.subst** %20, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then
  %21 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call21 = call %struct.binding* @cont_BindingLink(%struct.binding* %21)
  store %struct.binding* %call21, %struct.binding** %Scan, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_IsInContext(%struct.binding* %C, i32 %Var, %struct.binding* %B) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  %B.addr = alloca %struct.binding*, align 8
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %call = call %struct.binding* @cont_Binding(%struct.binding* %0, i32 %1)
  %2 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %cmp = icmp eq %struct.binding* %call, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
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

declare %struct.term* @cont_CopyAndApplyBindings(%struct.binding*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_BindingContext(%struct.binding* %B) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %context = getelementptr inbounds %struct.binding, %struct.binding* %0, i32 0, i32 3
  %1 = load %struct.binding*, %struct.binding** %context, align 8
  ret %struct.binding* %1
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
define void @subst_ExtractUnifierCom(%struct.binding* %Context, %struct.subst** %Subst) #0 {
entry:
  %Context.addr = alloca %struct.binding*, align 8
  %Subst.addr = alloca %struct.subst**, align 8
  %Scan = alloca %struct.binding*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.subst** %Subst, %struct.subst*** %Subst.addr, align 8
  %call = call %struct.subst* @subst_Nil()
  %0 = load %struct.subst**, %struct.subst*** %Subst.addr, align 8
  store %struct.subst* %call, %struct.subst** %0, align 8
  %call1 = call %struct.binding* @cont_LastBinding()
  store %struct.binding* %call1, %struct.binding** %Scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.binding*, %struct.binding** %Scan, align 8
  %tobool = icmp ne %struct.binding* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call2 = call i32 @cont_BindingSymbol(%struct.binding* %2)
  %3 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %4 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call3 = call %struct.term* @cont_BindingTerm(%struct.binding* %4)
  %call4 = call %struct.term* @cont_CopyAndApplyBindingsCom(%struct.binding* %3, %struct.term* %call3)
  %5 = load %struct.subst**, %struct.subst*** %Subst.addr, align 8
  %6 = load %struct.subst*, %struct.subst** %5, align 8
  %call5 = call %struct.subst* @subst_Add(i32 %call2, %struct.term* %call4, %struct.subst* %6)
  %7 = load %struct.subst**, %struct.subst*** %Subst.addr, align 8
  store %struct.subst* %call5, %struct.subst** %7, align 8
  %8 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call6 = call %struct.binding* @cont_BindingLink(%struct.binding* %8)
  store %struct.binding* %call6, %struct.binding** %Scan, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare %struct.term* @cont_CopyAndApplyBindingsCom(%struct.binding*, %struct.term*) #2

; Function Attrs: nounwind uwtable
define %struct.subst* @subst_ExtractMatcher() #0 {
entry:
  %Scan = alloca %struct.binding*, align 8
  %Result = alloca %struct.subst*, align 8
  %call = call %struct.binding* @cont_LastBinding()
  store %struct.binding* %call, %struct.binding** %Scan, align 8
  %call1 = call %struct.subst* @subst_Nil()
  store %struct.subst* %call1, %struct.subst** %Result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.binding*, %struct.binding** %Scan, align 8
  %tobool = icmp ne %struct.binding* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call2 = call i32 @cont_BindingSymbol(%struct.binding* %1)
  %2 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call3 = call %struct.term* @cont_BindingTerm(%struct.binding* %2)
  %3 = load %struct.subst*, %struct.subst** %Result, align 8
  %call4 = call %struct.subst* @subst_Add(i32 %call2, %struct.term* %call3, %struct.subst* %3)
  store %struct.subst* %call4, %struct.subst** %Result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.binding*, %struct.binding** %Scan, align 8
  %call5 = call %struct.binding* @cont_BindingLink(%struct.binding* %4)
  store %struct.binding* %call5, %struct.binding** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.subst*, %struct.subst** %Result, align 8
  ret %struct.subst* %5
}

; Function Attrs: nounwind uwtable
define void @subst_Print(%struct.subst* %Subst) #0 {
entry:
  %Subst.addr = alloca %struct.subst*, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %0)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call1 = call i32 @subst_Exist(%struct.subst* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call2 = call i32 @subst_Dom(%struct.subst* %2)
  call void @symbol_Print(i32 %call2)
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call3 = call %struct.term* @subst_Cod(%struct.subst* %3)
  %tobool4 = icmp ne %struct.term* %call3, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %4)
  %5 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call6 = call %struct.term* @subst_Cod(%struct.subst* %5)
  call void @term_PrintPrefix(%struct.term* %call6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call7 = call %struct.subst* @subst_Next(%struct.subst* %6)
  %tobool8 = icmp ne %struct.subst* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %7)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %8 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call12 = call %struct.subst* @subst_Next(%struct.subst* %8)
  store %struct.subst* %call12, %struct.subst** %Subst.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %9)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare void @symbol_Print(i32) #2

declare void @term_PrintPrefix(%struct.term*) #2

declare i8* @memory_Malloc(i32) #2

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

declare %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP*, i8* (i8*)*) #2

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #2

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
define internal void @cont_SetLastBinding(%struct.binding* %B) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %B.addr, align 8
  store %struct.binding* %0, %struct.binding** @cont_LASTBINDING, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_CloseBindingHelp(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  call void @cont_SetContextBindingTerm(%struct.binding* %0, i32 %1, %struct.term* null)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetContextBindingTerm(%struct.binding* %C, i32 %Var, %struct.term* %t) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  %t.addr = alloca %struct.term*, align 8
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  store %struct.term* %t, %struct.term** %t.addr, align 8
  %0 = load %struct.term*, %struct.term** %t.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %arrayidx = getelementptr inbounds %struct.binding, %struct.binding* %2, i64 %idxprom
  %term = getelementptr inbounds %struct.binding, %struct.binding* %arrayidx, i32 0, i32 2
  store %struct.term* %0, %struct.term** %term, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_BindingIsBound(%struct.binding* %B) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %call = call %struct.term* @cont_BindingTerm(%struct.binding* %0)
  %cmp = icmp ne %struct.term* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
