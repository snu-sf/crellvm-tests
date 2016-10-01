; ModuleID = './MultiSource.Applications.SPASS/44.list.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }

@NumberFunction = internal global i32 (i8*)* null, align 8
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %List) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Copy = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %call3 = call %struct.LIST_HELP* @list_List(i8* %call2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Copy, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Copy, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %Scan1, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %call8 = call %struct.LIST_HELP* @list_List(i8* %call7)
  call void @list_Rplacd(%struct.LIST_HELP* %5, %struct.LIST_HELP* %call8)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan1, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan2, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Copy, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %10
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
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP* %List, i8* (i8*)* %CopyElement) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %CopyElement.addr = alloca i8* (i8*)*, align 8
  %Copy = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* (i8*)* %CopyElement, i8* (i8*)** %CopyElement.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*)*, i8* (i8*)** %CopyElement.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %call3 = call i8* %1(i8* %call2)
  %call4 = call %struct.LIST_HELP* @list_List(i8* %call3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Copy, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Copy, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %Scan1, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %7 = load i8* (i8*)*, i8* (i8*)** %CopyElement.addr, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %call9 = call i8* %7(i8* %call8)
  %call10 = call %struct.LIST_HELP* @list_List(i8* %call9)
  call void @list_Rplacd(%struct.LIST_HELP* %6, %struct.LIST_HELP* %call10)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Scan1, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Scan2, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Copy, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %12
}

; Function Attrs: nounwind uwtable
define void @list_InsertNext(%struct.LIST_HELP* %List, i8* %Pointer) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Pointer.addr = alloca i8*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* %Pointer, i8** %Pointer.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %1 = load i8*, i8** %Pointer.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %2)
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %1, %struct.LIST_HELP* %call)
  call void @list_Rplacd(%struct.LIST_HELP* %0, %struct.LIST_HELP* %call1)
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

; Function Attrs: nounwind uwtable
define void @list_NMapCar(%struct.LIST_HELP* %List, i8* (i8*)* %ElementFunc) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %ElementFunc.addr = alloca i8* (i8*)*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* (i8*)* %ElementFunc, i8* (i8*)** %ElementFunc.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %3 = load i8* (i8*)*, i8* (i8*)** %ElementFunc.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %call2 = call i8* %3(i8* %call1)
  call void @list_Rplaca(%struct.LIST_HELP* %2, i8* %call2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Scan, align 8
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

; Function Attrs: nounwind uwtable
define void @list_Apply(void (i8*)* %Function, %struct.LIST_HELP* %List) #0 {
entry:
  %Function.addr = alloca void (i8*)*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store void (i8*)* %Function, void (i8*)** %Function.addr, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load void (i8*)*, void (i8*)** %Function.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  call void %1(i8* %call1)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* %List) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %ReverseList = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %ReverseList, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
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
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReverseList, align 8
  %call3 = call %struct.LIST_HELP* @list_Cons(i8* %call2, %struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %ReverseList, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReverseList, align 8
  ret %struct.LIST_HELP* %5
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %List) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %ReverseList = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %ReverseList, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReverseList, align 8
  %call3 = call %struct.LIST_HELP* @list_Cons(i8* %call2, %struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %ReverseList, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %Scan1, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReverseList, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.11, %for.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot8 = xor i1 %tobool7, true
  br i1 %lnot8, label %for.body.9, label %for.end.14

for.body.9:                                       ; preds = %for.cond.5
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %9)
  call void @list_Rplaca(%struct.LIST_HELP* %8, i8* %call10)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.9
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Scan1, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.5

for.end.14:                                       ; preds = %for.cond.5
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReverseList, align 8
  call void @list_Delete(%struct.LIST_HELP* %12)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  ret %struct.LIST_HELP* %13
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
define %struct.LIST_HELP* @list_PointerSort(%struct.LIST_HELP* %List) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP* %0, i32 (i8*, i8*)* @list_PointerLower)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP* %List, i32 (i8*, i8*)* %Test) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %call = call %struct.LIST_HELP* @list_MergeSort(%struct.LIST_HELP* %0, i32 (i8*, i8*)* %1)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_PointerLower(i8* %A, i8* %B) #1 {
entry:
  %A.addr = alloca i8*, align 8
  %B.addr = alloca i8*, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %B, i8** %B.addr, align 8
  %0 = load i8*, i8** %A.addr, align 8
  %1 = ptrtoint i8* %0 to i32
  %2 = load i8*, i8** %B.addr, align 8
  %3 = ptrtoint i8* %2 to i32
  %cmp = icmp ult i32 %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @list_SortedInOrder(%struct.LIST_HELP* %L, i32 (i8*, i8*)* %Test) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %1)
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.18, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %Scan1, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan2, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %4 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %call7 = call i32 %4(i8* %call5, i8* %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %7 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %call11 = call i32 %7(i8* %call9, i8* %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %do.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan1, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan2, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot = xor i1 %tobool17, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.18

if.end.18:                                        ; preds = %do.end, %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.13
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_Merge(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2, i32 (i8*, i8*)* %Test) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %ResultStart = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
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
  %4 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %call7 = call i32 %4(i8* %call5, i8* %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.4
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %ResultStart, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan1, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %Scan2, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.end.4
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %ResultStart, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %Scan1, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Scan2, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.9
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ResultStart, align 8
  store %struct.LIST_HELP* %13, %struct.LIST_HELP** %Result, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %if.end.12
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call13 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %call19 = call i32 %17(i8* %call17, i8* %call18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %while.body
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  call void @list_Rplacd(%struct.LIST_HELP* %20, %struct.LIST_HELP* %21)
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.25

if.else.23:                                       ; preds = %while.body
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  call void @list_Rplacd(%struct.LIST_HELP* %23, %struct.LIST_HELP* %24)
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Scan2, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.21
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Result, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %27)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %while.end
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  call void @list_Rplacd(%struct.LIST_HELP* %28, %struct.LIST_HELP* %29)
  br label %if.end.31

if.else.30:                                       ; preds = %while.end
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  call void @list_Rplacd(%struct.LIST_HELP* %30, %struct.LIST_HELP* %31)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ResultStart, align 8
  store %struct.LIST_HELP* %32, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.3, %if.then
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %33
}

; Function Attrs: nounwind uwtable
define void @list_Split(%struct.LIST_HELP* %L, %struct.LIST_HELP** %Half1, %struct.LIST_HELP** %Half2) #0 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Half1.addr = alloca %struct.LIST_HELP**, align 8
  %Half2.addr = alloca %struct.LIST_HELP**, align 8
  %SingleStep = alloca %struct.LIST_HELP*, align 8
  %DoubleStep = alloca %struct.LIST_HELP*, align 8
  %Prev = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP** %Half1, %struct.LIST_HELP*** %Half1.addr, align 8
  store %struct.LIST_HELP** %Half2, %struct.LIST_HELP*** %Half2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %1)
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = call %struct.LIST_HELP* @list_Nil()
  %2 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Half1.addr, align 8
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %4 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Half2.addr, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %4, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %Prev, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %SingleStep, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SingleStep, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %DoubleStep, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DoubleStep, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DoubleStep, align 8
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %call9)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SingleStep, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %Prev, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SingleStep, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %SingleStep, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DoubleStep, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call13)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %DoubleStep, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %15 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Half1.addr, align 8
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %15, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SingleStep, align 8
  %17 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Half2.addr, align 8
  store %struct.LIST_HELP* %16, %struct.LIST_HELP** %17, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Prev, align 8
  %call15 = call %struct.LIST_HELP* @list_Nil()
  call void @list_Rplacd(%struct.LIST_HELP* %18, %struct.LIST_HELP* %call15)
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_MergeSort(%struct.LIST_HELP* %L, i32 (i8*, i8*)* %Test) #0 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %lowerhalf = alloca %struct.LIST_HELP*, align 8
  %greaterhalf = alloca %struct.LIST_HELP*, align 8
  %lowerhalfptr = alloca %struct.LIST_HELP**, align 8
  %greaterhalfptr = alloca %struct.LIST_HELP**, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %1)
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct.LIST_HELP** %lowerhalf, %struct.LIST_HELP*** %lowerhalfptr, align 8
  store %struct.LIST_HELP** %greaterhalf, %struct.LIST_HELP*** %greaterhalfptr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %3 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %lowerhalfptr, align 8
  %4 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %greaterhalfptr, align 8
  call void @list_Split(%struct.LIST_HELP* %2, %struct.LIST_HELP** %3, %struct.LIST_HELP** %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %lowerhalf, align 8
  %6 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_MergeSort(%struct.LIST_HELP* %5, i32 (i8*, i8*)* %6)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %lowerhalf, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %greaterhalf, align 8
  %8 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_MergeSort(%struct.LIST_HELP* %7, i32 (i8*, i8*)* %8)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %greaterhalf, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %lowerhalf, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %greaterhalf, align 8
  %11 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %call6 = call %struct.LIST_HELP* @list_Merge(%struct.LIST_HELP* %9, %struct.LIST_HELP* %10, i32 (i8*, i8*)* %11)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %12, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %13
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_InsertionSort(%struct.LIST_HELP* %List, i32 (i8*, i8*)* %Test) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Min = alloca %struct.LIST_HELP*, align 8
  %Exchange = alloca i8*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
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
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Min, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %call9 = call i32 %5(i8* %call7, i8* %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Min, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %8)
  store i8* %call11, i8** %Exchange, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Min, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %10)
  call void @list_Rplaca(%struct.LIST_HELP* %9, i8* %call12)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %12 = load i8*, i8** %Exchange, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %11, i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  ret %struct.LIST_HELP* %15
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_NumberSort(%struct.LIST_HELP* %List, i32 (i8*)* %Number) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Number.addr = alloca i32 (i8*)*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32 (i8*)* %Number, i32 (i8*)** %Number.addr, align 8
  %0 = load i32 (i8*)*, i32 (i8*)** %Number.addr, align 8
  store i32 (i8*)* %0, i32 (i8*)** @NumberFunction, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP* %1, i32 (i8*, i8*)* @list_PointerNumberedLower)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_PointerNumberedLower(i8* %A, i8* %B) #1 {
entry:
  %A.addr = alloca i8*, align 8
  %B.addr = alloca i8*, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %B, i8** %B.addr, align 8
  %0 = load i32 (i8*)*, i32 (i8*)** @NumberFunction, align 8
  %1 = load i8*, i8** %A.addr, align 8
  %call = call i32 %0(i8* %1)
  %2 = load i32 (i8*)*, i32 (i8*)** @NumberFunction, align 8
  %3 = load i8*, i8** %B.addr, align 8
  %call1 = call i32 %2(i8* %3)
  %cmp = icmp ult i32 %call, %call1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_GreaterNumberSort(%struct.LIST_HELP* %List, i32 (i8*)* %Number) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Number.addr = alloca i32 (i8*)*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32 (i8*)* %Number, i32 (i8*)** %Number.addr, align 8
  %0 = load i32 (i8*)*, i32 (i8*)** %Number.addr, align 8
  store i32 (i8*)* %0, i32 (i8*)** @NumberFunction, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP* %1, i32 (i8*, i8*)* @list_PointerNumberedGreater)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_PointerNumberedGreater(i8* %A, i8* %B) #1 {
entry:
  %A.addr = alloca i8*, align 8
  %B.addr = alloca i8*, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %B, i8** %B.addr, align 8
  %0 = load i32 (i8*)*, i32 (i8*)** @NumberFunction, align 8
  %1 = load i8*, i8** %A.addr, align 8
  %call = call i32 %0(i8* %1)
  %2 = load i32 (i8*)*, i32 (i8*)** @NumberFunction, align 8
  %3 = load i8*, i8** %B.addr, align 8
  %call1 = call i32 %2(i8* %3)
  %cmp = icmp ugt i32 %call, %call1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_NNumberMerge(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2, i32 (i8*)* %Number) #0 {
entry:
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Number.addr = alloca i32 (i8*)*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  store i32 (i8*)* %Number, i32 (i8*)** %Number.addr, align 8
  %0 = load i32 (i8*)*, i32 (i8*)** %Number.addr, align 8
  store i32 (i8*)* %0, i32 (i8*)** @NumberFunction, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %call = call %struct.LIST_HELP* @list_Merge(%struct.LIST_HELP* %1, %struct.LIST_HELP* %2, i32 (i8*, i8*)* @list_PointerNumberedLowerOrEqual)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_PointerNumberedLowerOrEqual(i8* %A, i8* %B) #1 {
entry:
  %A.addr = alloca i8*, align 8
  %B.addr = alloca i8*, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %B, i8** %B.addr, align 8
  %0 = load i32 (i8*)*, i32 (i8*)** @NumberFunction, align 8
  %1 = load i8*, i8** %A.addr, align 8
  %call = call i32 %0(i8* %1)
  %2 = load i32 (i8*)*, i32 (i8*)** @NumberFunction, align 8
  %3 = load i8*, i8** %B.addr, align 8
  %call1 = call i32 %2(i8* %3)
  %cmp = icmp ule i32 %call, %call1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i8* @list_DequeueNext(%struct.LIST_HELP* %List) #0 {
entry:
  %retval = alloca i8*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Pointer = alloca i8*, align 8
  %Memo = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Memo, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Memo, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Memo, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %3)
  store i8* %call6, i8** %Pointer, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Memo, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %5, i32 0, i32 0
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %cdr, align 8
  call void @list_Rplacd(%struct.LIST_HELP* %4, %struct.LIST_HELP* %6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Memo, align 8
  call void @list_Free(%struct.LIST_HELP* %7)
  %8 = load i8*, i8** %Pointer, align 8
  store i8* %8, i8** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
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
define i8* @list_NthElement(%struct.LIST_HELP* %List, i32 %Number) #0 {
entry:
  %retval = alloca i8*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Number.addr = alloca i32, align 4
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32 %Number, i32* %Number.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %Number.addr, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %Number.addr, align 4
  %cmp = icmp ugt i32 %dec, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %while.end
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %5)
  store i8* %call4, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define void @list_DeleteWithElement(%struct.LIST_HELP* %List, void (i8*)* %ElementDelete) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %ElementDelete.addr = alloca void (i8*)*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store void (i8*)* %ElementDelete, void (i8*)** %ElementDelete.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan, align 8
  %2 = load void (i8*)*, void (i8*)** %ElementDelete.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %3)
  call void %2(i8* %call2)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @list_DeleteWithElementCount(%struct.LIST_HELP* %List, void (i8*)* %ElementDelete) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %ElementDelete.addr = alloca void (i8*)*, align 8
  %Result = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store void (i8*)* %ElementDelete, void (i8*)** %ElementDelete.addr, align 8
  store i32 0, i32* %Result, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan, align 8
  %2 = load void (i8*)*, void (i8*)** %ElementDelete.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %3)
  call void %2(i8* %call2)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %List.addr, align 8
  %6 = load i32, i32* %Result, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %Result, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %Result, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_DeleteElement(%struct.LIST_HELP* %List, i8* %Element, i32 (i8*, i8*)* %Test) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Element.addr = alloca i8*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* %Element, i8** %Element.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %2 = load i8*, i8** %Element.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %call2 = call i32 %1(i8* %2, i8* %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan1, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call7 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %Scan2, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end.20, %if.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %while.body.12, label %while.end.21

while.body.12:                                    ; preds = %while.cond.9
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %13 = load i8*, i8** %Element.addr, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %call14 = call i32 %12(i8* %13, i8* %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %while.body.12
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  call void @list_Rplacd(%struct.LIST_HELP* %15, %struct.LIST_HELP* %call17)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  call void @list_Free(%struct.LIST_HELP* %17)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.20

if.else:                                          ; preds = %while.body.12
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %Scan2, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.16
  br label %while.cond.9

while.end.21:                                     ; preds = %while.cond.9
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %21, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end.21, %if.then
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %22
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_DeleteElementIf(%struct.LIST_HELP* %List, i32 (i8*)* %Test) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Test.addr = alloca i32 (i8*)*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32 (i8*)* %Test, i32 (i8*)** %Test.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load i32 (i8*)*, i32 (i8*)** %Test.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %call2 = call i32 %1(i8* %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan1, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %5)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call7 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %Scan2, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end.20, %if.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %while.body.12, label %while.end.21

while.body.12:                                    ; preds = %while.cond.9
  %11 = load i32 (i8*)*, i32 (i8*)** %Test.addr, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %call14 = call i32 %11(i8* %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %while.body.12
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  call void @list_Rplacd(%struct.LIST_HELP* %13, %struct.LIST_HELP* %call17)
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  call void @list_Free(%struct.LIST_HELP* %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.20

if.else:                                          ; preds = %while.body.12
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %17, %struct.LIST_HELP** %Scan2, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.16
  br label %while.cond.9

while.end.21:                                     ; preds = %while.cond.9
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end.21, %if.then
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %20
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_DeleteElementIfFree(%struct.LIST_HELP* %List, i32 (i8*)* %Test, void (i8*)* %Delete) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Test.addr = alloca i32 (i8*)*, align 8
  %Delete.addr = alloca void (i8*)*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32 (i8*)* %Test, i32 (i8*)** %Test.addr, align 8
  store void (i8*)* %Delete, void (i8*)** %Delete.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load i32 (i8*)*, i32 (i8*)** %Test.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %call2 = call i32 %1(i8* %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan1, align 8
  %5 = load void (i8*)*, void (i8*)** %Delete.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %6)
  call void %5(i8* %call5)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call8 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %Scan2, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond.10

while.cond.10:                                    ; preds = %if.end.22, %if.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %while.body.13, label %while.end.23

while.body.13:                                    ; preds = %while.cond.10
  %13 = load i32 (i8*)*, i32 (i8*)** %Test.addr, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %call15 = call i32 %13(i8* %call14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %while.body.13
  %15 = load void (i8*)*, void (i8*)** %Delete.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %16)
  call void %15(i8* %call18)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  call void @list_Rplacd(%struct.LIST_HELP* %17, %struct.LIST_HELP* %call19)
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  call void @list_Free(%struct.LIST_HELP* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.22

if.else:                                          ; preds = %while.body.13
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %21, %struct.LIST_HELP** %Scan2, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.17
  br label %while.cond.10

while.end.23:                                     ; preds = %while.cond.10
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %23, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end.23, %if.then
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %24
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_DeleteElementFree(%struct.LIST_HELP* %List, i8* %Element, i32 (i8*, i8*)* %Test, void (i8*)* %Free) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Element.addr = alloca i8*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %Free.addr = alloca void (i8*)*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* %Element, i8** %Element.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  store void (i8*)* %Free, void (i8*)** %Free.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %2 = load i8*, i8** %Element.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %call2 = call i32 %1(i8* %2, i8* %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan1, align 8
  %6 = load void (i8*)*, void (i8*)** %Free.addr, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %7)
  call void %6(i8* %call5)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call8 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %Scan2, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond.10

while.cond.10:                                    ; preds = %if.end.22, %if.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %while.body.13, label %while.end.23

while.body.13:                                    ; preds = %while.cond.10
  %14 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %15 = load i8*, i8** %Element.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %call15 = call i32 %14(i8* %15, i8* %call14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %while.body.13
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  call void @list_Rplacd(%struct.LIST_HELP* %17, %struct.LIST_HELP* %call18)
  %19 = load void (i8*)*, void (i8*)** %Free.addr, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %20)
  call void %19(i8* %call19)
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  call void @list_Free(%struct.LIST_HELP* %21)
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.22

if.else:                                          ; preds = %while.body.13
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %23, %struct.LIST_HELP** %Scan2, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.17
  br label %while.cond.10

while.end.23:                                     ; preds = %while.cond.10
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %25, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end.23, %if.then
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %26
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_DeleteOneElement(%struct.LIST_HELP* %List, i8* %Element, i32 (i8*, i8*)* %Test) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Element.addr = alloca i8*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %scan1 = alloca %struct.LIST_HELP*, align 8
  %scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* %Element, i8** %Element.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %3 = load i8*, i8** %Element.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %call2 = call i32 %2(i8* %3, i8* %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %scan2, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %10 = load i8*, i8** %Element.addr, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %call11 = call i32 %9(i8* %10, i8* %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %for.body
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  call void @list_Rplacd(%struct.LIST_HELP* %12, %struct.LIST_HELP* %call14)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  call void @list_Free(%struct.LIST_HELP* %14)
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %scan1, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %16, %struct.LIST_HELP** %retval
  br label %return

if.end.16:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  store %struct.LIST_HELP* %17, %struct.LIST_HELP** %scan2, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.13, %if.then.4, %if.then
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %20
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
define %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %List, i8* %Element) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Element.addr = alloca i8*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* %Element, i8** %Element.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load i8*, i8** %Element.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %cmp = icmp eq i8* %1, %call1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan1, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %5)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call5 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %Scan2, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond.7

while.cond.7:                                     ; preds = %if.end.17, %if.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br i1 %lnot, label %while.body.10, label %while.end.18

while.body.10:                                    ; preds = %while.cond.7
  %11 = load i8*, i8** %Element.addr, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %cmp12 = icmp eq i8* %11, %call11
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %while.body.10
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  call void @list_Rplacd(%struct.LIST_HELP* %13, %struct.LIST_HELP* %call14)
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  call void @list_Free(%struct.LIST_HELP* %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.17

if.else:                                          ; preds = %while.body.10
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %17, %struct.LIST_HELP** %Scan2, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.13
  br label %while.cond.7

while.end.18:                                     ; preds = %while.cond.7
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end.18, %if.then
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %20
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_PointerDeleteElementFree(%struct.LIST_HELP* %List, i8* %Element, void (i8*)* %Free) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Element.addr = alloca i8*, align 8
  %Free.addr = alloca void (i8*)*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* %Element, i8** %Element.addr, align 8
  store void (i8*)* %Free, void (i8*)** %Free.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load i8*, i8** %Element.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %cmp = icmp eq i8* %1, %call1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan1, align 8
  %5 = load void (i8*)*, void (i8*)** %Free.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %6)
  call void %5(i8* %call3)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call6 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %Scan2, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond.8

while.cond.8:                                     ; preds = %if.end.19, %if.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool10, true
  br i1 %lnot, label %while.body.11, label %while.end.20

while.body.11:                                    ; preds = %while.cond.8
  %13 = load i8*, i8** %Element.addr, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %cmp13 = icmp eq i8* %13, %call12
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %while.body.11
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  call void @list_Rplacd(%struct.LIST_HELP* %15, %struct.LIST_HELP* %call15)
  %17 = load void (i8*)*, void (i8*)** %Free.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %18)
  call void %17(i8* %call16)
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  call void @list_Free(%struct.LIST_HELP* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.19

if.else:                                          ; preds = %while.body.11
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %21, %struct.LIST_HELP** %Scan2, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.14
  br label %while.cond.8

while.end.20:                                     ; preds = %while.cond.8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %23, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end.20, %if.then
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %24
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_PointerDeleteOneElement(%struct.LIST_HELP* %List, i8* %Element) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Element.addr = alloca i8*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* %Element, i8** %Element.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %Element.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %cmp = icmp eq i8* %2, %call1
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call3 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %Scan2, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.end.4
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %Element.addr, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %cmp9 = icmp eq i8* %8, %call8
  br i1 %cmp9, label %if.then.10, label %if.else.13

if.then.10:                                       ; preds = %while.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  call void @list_Rplacd(%struct.LIST_HELP* %10, %struct.LIST_HELP* %call11)
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  call void @list_Free(%struct.LIST_HELP* %12)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Scan1, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %retval
  br label %return

if.else.13:                                       ; preds = %while.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %15, %struct.LIST_HELP** %Scan2, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %17, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.10, %if.then.2, %if.then
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %18
}

; Function Attrs: nounwind uwtable
define i32 @list_DeleteFromList(%struct.LIST_HELP** %List, i8* %Element) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP**, align 8
  %Element.addr = alloca i8*, align 8
  %Found = alloca i32, align 4
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP** %List, %struct.LIST_HELP*** %List.addr, align 8
  store i8* %Element, i8** %Element.addr, align 8
  store i32 0, i32* %Found, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %0, align 8
  %call = call i32 @list_Exist(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %Element.addr, align 8
  %3 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %cmp = icmp eq i8* %2, %call1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan1, align 8
  %8 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  call void @list_Free(%struct.LIST_HELP* %9)
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %11 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %11, align 8
  store i32 1, i32* %Found, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %call3 = call i32 @list_Exist(%struct.LIST_HELP* %13)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end.17

if.then:                                          ; preds = %while.end
  %14 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %14, align 8
  store %struct.LIST_HELP* %15, %struct.LIST_HELP** %Scan2, align 8
  %16 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %16, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond.6

while.cond.6:                                     ; preds = %if.end, %if.then
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call7 = call i32 @list_Exist(%struct.LIST_HELP* %18)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %while.body.9, label %while.end.16

while.body.9:                                     ; preds = %while.cond.6
  %19 = load i8*, i8** %Element.addr, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %cmp11 = icmp eq i8* %19, %call10
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %while.body.9
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  call void @list_Rplacd(%struct.LIST_HELP* %21, %struct.LIST_HELP* %call13)
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  call void @list_Free(%struct.LIST_HELP* %23)
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan1, align 8
  store i32 1, i32* %Found, align 4
  br label %if.end

if.else:                                          ; preds = %while.body.9
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %25, %struct.LIST_HELP** %Scan2, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %while.cond.6

while.end.16:                                     ; preds = %while.cond.6
  br label %if.end.17

if.end.17:                                        ; preds = %while.end.16, %while.end
  %27 = load i32, i32* %Found, align 4
  ret i32 %27
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

; Function Attrs: nounwind uwtable
define i32 @list_DeleteOneFromList(%struct.LIST_HELP** %List, i8* %Element) #0 {
entry:
  %retval = alloca i32, align 4
  %List.addr = alloca %struct.LIST_HELP**, align 8
  %Element.addr = alloca i8*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP** %List, %struct.LIST_HELP*** %List.addr, align 8
  store i8* %Element, i8** %Element.addr, align 8
  %0 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %0, align 8
  %call = call i32 @list_Exist(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %Element.addr, align 8
  %3 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %cmp = icmp eq i8* %2, %call1
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %5, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Scan1, align 8
  %7 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  call void @list_Free(%struct.LIST_HELP* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %10 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %10, align 8
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %11 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  store %struct.LIST_HELP* %12, %struct.LIST_HELP** %Scan2, align 8
  %13 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %List.addr, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %if.else
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call5 = call i32 @list_Exist(%struct.LIST_HELP* %15)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %Element.addr, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %cmp8 = icmp eq i8* %16, %call7
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %for.body
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  call void @list_Rplacd(%struct.LIST_HELP* %18, %struct.LIST_HELP* %call10)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  call void @list_Free(%struct.LIST_HELP* %20)
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Scan1, align 8
  store i32 1, i32* %retval
  br label %return

if.else.12:                                       ; preds = %for.body
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %22, %struct.LIST_HELP** %Scan2, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.14

if.end.14:                                        ; preds = %for.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.9, %if.then.2
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @list_IsSetOfPointers(%struct.LIST_HELP* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %1)
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %call3 = call i32 @list_PointerMember(%struct.LIST_HELP* %call1, i8* %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %L.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_DeleteDuplicates(%struct.LIST_HELP* %List, i32 (i8*, i8*)* %Test) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %call3 = call %struct.LIST_HELP* @list_DeleteElement(%struct.LIST_HELP* %call1, i8* %call2, i32 (i8*, i8*)* %5)
  call void @list_Rplacd(%struct.LIST_HELP* %2, %struct.LIST_HELP* %call3)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  ret %struct.LIST_HELP* %7
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_DeleteDuplicatesFree(%struct.LIST_HELP* %List, i32 (i8*, i8*)* %Test, void (i8*)* %Free) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %Free.addr = alloca void (i8*)*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  store void (i8*)* %Free, void (i8*)** %Free.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %6 = load void (i8*)*, void (i8*)** %Free.addr, align 8
  %call3 = call %struct.LIST_HELP* @list_DeleteElementFree(%struct.LIST_HELP* %call1, i8* %call2, i32 (i8*, i8*)* %5, void (i8*)* %6)
  call void @list_Rplacd(%struct.LIST_HELP* %2, %struct.LIST_HELP* %call3)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  ret %struct.LIST_HELP* %8
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %List) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %call3 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call1, i8* %call2)
  call void @list_Rplacd(%struct.LIST_HELP* %2, %struct.LIST_HELP* %call3)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  ret %struct.LIST_HELP* %6
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_NPointerUnion(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #0 {
entry:
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %0, %struct.LIST_HELP* %1)
  %call1 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %call)
  ret %struct.LIST_HELP* %call1
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_NUnion(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2, i32 (i8*, i8*)* %Test) #0 {
entry:
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %0, %struct.LIST_HELP* %1)
  %2 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_DeleteDuplicates(%struct.LIST_HELP* %call, i32 (i8*, i8*)* %2)
  ret %struct.LIST_HELP* %call1
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_NListTimes(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #0 {
entry:
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br i1 %lnot, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot7 = xor i1 %tobool6, true
  br i1 %lnot7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.4
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call9 to %struct.LIST_HELP*
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call10 to %struct.LIST_HELP*
  %call11 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %8)
  %call12 = call %struct.LIST_HELP* @list_Append(%struct.LIST_HELP* %6, %struct.LIST_HELP* %call11)
  %9 = bitcast %struct.LIST_HELP* %call12 to i8*
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call13 = call %struct.LIST_HELP* @list_Cons(i8* %9, %struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end.17, %entry
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %13, void (i8*)* bitcast (void (%struct.LIST_HELP*)* @list_Delete to void (i8*)*))
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %14, void (i8*)* bitcast (void (%struct.LIST_HELP*)* @list_Delete to void (i8*)*))
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %15
}

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
define %struct.LIST_HELP* @list_NIntersect(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2, i32 (i8*, i8*)* %Test) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %call2 = call i32 @list_Member(%struct.LIST_HELP* %1, i8* %call1, i32 (i8*, i8*)* %3)
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan1, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %List1.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %Scan1, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan2, align 8
  br label %while.cond.8

while.cond.8:                                     ; preds = %if.end.21, %if.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot11 = xor i1 %tobool10, true
  br i1 %lnot11, label %while.body.12, label %while.end.22

while.body.12:                                    ; preds = %while.cond.8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %call14 = call i32 @list_Member(%struct.LIST_HELP* %13, i8* %call13, i32 (i8*, i8*)* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %while.body.12
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan2, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.21

if.else:                                          ; preds = %while.body.12
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  call void @list_Rplacd(%struct.LIST_HELP* %18, %struct.LIST_HELP* %call19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  call void @list_Free(%struct.LIST_HELP* %20)
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Scan2, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.16
  br label %while.cond.8

while.end.22:                                     ; preds = %while.cond.8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %22, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end.22, %if.then
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %23
}

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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_NPointerIntersect(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %call2 = call i32 @list_PointerMember(%struct.LIST_HELP* %1, i8* %call1)
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan1, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %5)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %List1.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %Scan1, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan2, align 8
  br label %while.cond.8

while.cond.8:                                     ; preds = %if.end.21, %if.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot11 = xor i1 %tobool10, true
  br i1 %lnot11, label %while.body.12, label %while.end.22

while.body.12:                                    ; preds = %while.cond.8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %call14 = call i32 @list_PointerMember(%struct.LIST_HELP* %12, i8* %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %while.body.12
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan2, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end.21

if.else:                                          ; preds = %while.body.12
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  call void @list_Rplacd(%struct.LIST_HELP* %16, %struct.LIST_HELP* %call19)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  call void @list_Free(%struct.LIST_HELP* %18)
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Scan2, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.16
  br label %while.cond.8

while.end.22:                                     ; preds = %while.cond.8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %20, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end.22, %if.then
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %21
}

; Function Attrs: nounwind uwtable
define void @list_NInsert(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #0 {
entry:
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Help = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Help, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  call void @list_Rplacd(%struct.LIST_HELP* %1, %struct.LIST_HELP* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %List2.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %call1)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %List2.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  call void @list_Rplacd(%struct.LIST_HELP* %6, %struct.LIST_HELP* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @list_HasIntersection(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #0 {
entry:
  %retval = alloca i32, align 4
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.8, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %call4 = call i32 @list_PointerMember(%struct.LIST_HELP* %3, i8* %call3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_NPointerDifference(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #0 {
entry:
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %call4 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %3, i8* %call3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %List1.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  ret %struct.LIST_HELP* %6
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_NDifference(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2, i32 (i8*, i8*)* %Test) #0 {
entry:
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_DeleteElement(%struct.LIST_HELP* %3, i8* %call3, i32 (i8*, i8*)* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %List1.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  ret %struct.LIST_HELP* %7
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_NMultisetDifference(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2, i32 (i8*, i8*)* %Test) #0 {
entry:
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_DeleteOneElement(%struct.LIST_HELP* %3, i8* %call3, i32 (i8*, i8*)* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %List1.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  ret %struct.LIST_HELP* %7
}

; Function Attrs: nounwind uwtable
define i32 @list_PointerReplaceMember(%struct.LIST_HELP* %List, i8* %Old, i8* %New) #0 {
entry:
  %retval = alloca i32, align 4
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Old.addr = alloca i8*, align 8
  %New.addr = alloca i8*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* %Old, i8** %Old.addr, align 8
  store i8* %New, i8** %New.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %Old.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %cmp = icmp eq i8* %1, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %4 = load i8*, i8** %New.addr, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %3, i8* %4)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @list_DeleteAssocListWithValues(%struct.LIST_HELP* %List, void (i8*)* %ValueDelete) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %ValueDelete.addr = alloca void (i8*)*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store void (i8*)* %ValueDelete, void (i8*)** %ValueDelete.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load void (i8*)*, void (i8*)** %ValueDelete.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call1 to %struct.LIST_HELP*
  %call2 = call i8* @list_PairSecond(%struct.LIST_HELP* %4)
  call void %2(i8* %call2)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call3 to %struct.LIST_HELP*
  call void @list_PairFree(%struct.LIST_HELP* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %8)
  ret void
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
define internal void @list_PairFree(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @list_AssocListValue(%struct.LIST_HELP* %List, i8* %Key) #0 {
entry:
  %retval = alloca i8*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Key.addr = alloca i8*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* %Key, i8** %Key.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %Key.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call1 to %struct.LIST_HELP*
  %call2 = call i8* @list_PairFirst(%struct.LIST_HELP* %4)
  %cmp = icmp eq i8* %2, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call3 to %struct.LIST_HELP*
  %call4 = call i8* @list_PairSecond(%struct.LIST_HELP* %6)
  store i8* %call4, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_AssocListPair(%struct.LIST_HELP* %List, i8* %Key) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Key.addr = alloca i8*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* %Key, i8** %Key.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %Key.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call1 to %struct.LIST_HELP*
  %call2 = call i8* @list_PairFirst(%struct.LIST_HELP* %4)
  %cmp = icmp eq i8* %2, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call3 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call5 = call %struct.LIST_HELP* @list_PairNull()
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %8
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_PairNull() #1 {
entry:
  %call = call %struct.LIST_HELP* @list_Nil()
  ret %struct.LIST_HELP* %call
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @list_MultisetDistribution(%struct.LIST_HELP* %Multiset) #0 {
entry:
  %Multiset.addr = alloca %struct.LIST_HELP*, align 8
  %Distribution = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Count = alloca %struct.LIST_HELP*, align 8
  %Element = alloca i8*, align 8
  %Occurences = alloca i32, align 4
  store %struct.LIST_HELP* %Multiset, %struct.LIST_HELP** %Multiset.addr, align 8
  %call = call %struct.LIST_HELP* @list_PairNull()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Distribution, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Multiset.addr, align 8
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
  store i8* %call2, i8** %Element, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Distribution, align 8
  %4 = load i8*, i8** %Element, align 8
  %call3 = call %struct.LIST_HELP* @list_AssocListPair(%struct.LIST_HELP* %3, i8* %4)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Count, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Count, align 8
  %call4 = call %struct.LIST_HELP* @list_PairNull()
  %cmp = icmp ne %struct.LIST_HELP* %5, %call4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Count, align 8
  %call5 = call i8* @list_PairSecond(%struct.LIST_HELP* %6)
  %7 = ptrtoint i8* %call5 to i32
  store i32 %7, i32* %Occurences, align 4
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Count, align 8
  %9 = load i32, i32* %Occurences, align 4
  %add = add nsw i32 %9, 1
  %conv = sext i32 %add to i64
  %10 = inttoptr i64 %conv to i8*
  call void @list_PairRplacSecond(%struct.LIST_HELP* %8, i8* %10)
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Distribution, align 8
  %12 = load i8*, i8** %Element, align 8
  %call6 = call %struct.LIST_HELP* @list_AssocCons(%struct.LIST_HELP* %11, i8* %12, i8* inttoptr (i64 1 to i8*))
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Distribution, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Distribution, align 8
  ret %struct.LIST_HELP* %14
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_PairRplacSecond(%struct.LIST_HELP* %L, i8* %P) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %P.addr = alloca i8*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = load i8*, i8** %P.addr, align 8
  %2 = bitcast i8* %1 to %struct.LIST_HELP*
  call void @list_Rplacd(%struct.LIST_HELP* %0, %struct.LIST_HELP* %2)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_AssocCons(%struct.LIST_HELP* %L, i8* %Key, i8* %Value) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Key.addr = alloca i8*, align 8
  %Value.addr = alloca i8*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  store i8* %Key, i8** %Key.addr, align 8
  store i8* %Value, i8** %Value.addr, align 8
  %0 = load i8*, i8** %Key.addr, align 8
  %1 = load i8*, i8** %Value.addr, align 8
  %call = call %struct.LIST_HELP* @list_PairCreate(i8* %0, i8* %1)
  %2 = bitcast %struct.LIST_HELP* %call to i8*
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %2, %struct.LIST_HELP* %3)
  ret %struct.LIST_HELP* %call1
}

; Function Attrs: nounwind uwtable
define i32 @list_CompareElementDistribution(%struct.LIST_HELP* %LeftPair, %struct.LIST_HELP* %RightPair) #0 {
entry:
  %retval = alloca i32, align 4
  %LeftPair.addr = alloca %struct.LIST_HELP*, align 8
  %RightPair.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %LeftPair, %struct.LIST_HELP** %LeftPair.addr, align 8
  store %struct.LIST_HELP* %RightPair, %struct.LIST_HELP** %RightPair.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LeftPair.addr, align 8
  %call = call i8* @list_PairSecond(%struct.LIST_HELP* %0)
  %1 = ptrtoint i8* %call to i32
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RightPair.addr, align 8
  %call1 = call i8* @list_PairSecond(%struct.LIST_HELP* %2)
  %3 = ptrtoint i8* %call1 to i32
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LeftPair.addr, align 8
  %call2 = call i8* @list_PairSecond(%struct.LIST_HELP* %4)
  %5 = ptrtoint i8* %call2 to i32
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RightPair.addr, align 8
  %call3 = call i8* @list_PairSecond(%struct.LIST_HELP* %6)
  %7 = ptrtoint i8* %call3 to i32
  %cmp4 = icmp sgt i32 %5, %7
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @list_CompareElementDistributionLEQ(%struct.LIST_HELP* %LeftPair, %struct.LIST_HELP* %RightPair) #0 {
entry:
  %LeftPair.addr = alloca %struct.LIST_HELP*, align 8
  %RightPair.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %LeftPair, %struct.LIST_HELP** %LeftPair.addr, align 8
  store %struct.LIST_HELP* %RightPair, %struct.LIST_HELP** %RightPair.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LeftPair.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RightPair.addr, align 8
  %call = call i32 @list_CompareElementDistribution(%struct.LIST_HELP* %0, %struct.LIST_HELP* %1)
  %cmp = icmp sle i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @list_CompareMultisetsByElementDistribution(%struct.LIST_HELP* %Left, %struct.LIST_HELP* %Right) #0 {
entry:
  %Left.addr = alloca %struct.LIST_HELP*, align 8
  %Right.addr = alloca %struct.LIST_HELP*, align 8
  %lmsd = alloca %struct.LIST_HELP*, align 8
  %rmsd = alloca %struct.LIST_HELP*, align 8
  %result = alloca i32, align 4
  store %struct.LIST_HELP* %Left, %struct.LIST_HELP** %Left.addr, align 8
  store %struct.LIST_HELP* %Right, %struct.LIST_HELP** %Right.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Left.addr, align 8
  %call = call %struct.LIST_HELP* @list_MultisetDistribution(%struct.LIST_HELP* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %lmsd, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Right.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_MultisetDistribution(%struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %rmsd, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %lmsd, align 8
  %call2 = call %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP* %2, i32 (i8*, i8*)* bitcast (i32 (%struct.LIST_HELP*, %struct.LIST_HELP*)* @list_CompareElementDistributionLEQ to i32 (i8*, i8*)*))
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %lmsd, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rmsd, align 8
  %call3 = call %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP* %3, i32 (i8*, i8*)* bitcast (i32 (%struct.LIST_HELP*, %struct.LIST_HELP*)* @list_CompareElementDistributionLEQ to i32 (i8*, i8*)*))
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %rmsd, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %lmsd, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rmsd, align 8
  %call4 = call i32 @list_CompareDistributions(%struct.LIST_HELP* %4, %struct.LIST_HELP* %5)
  store i32 %call4, i32* %result, align 4
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %lmsd, align 8
  call void @list_DeleteDistribution(%struct.LIST_HELP* %6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rmsd, align 8
  call void @list_DeleteDistribution(%struct.LIST_HELP* %7)
  %8 = load i32, i32* %result, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @list_CompareDistributions(%struct.LIST_HELP* %Left, %struct.LIST_HELP* %Right) #0 {
entry:
  %Left.addr = alloca %struct.LIST_HELP*, align 8
  %Right.addr = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %scan2 = alloca %struct.LIST_HELP*, align 8
  %result = alloca i32, align 4
  store %struct.LIST_HELP* %Left, %struct.LIST_HELP** %Left.addr, align 8
  store %struct.LIST_HELP* %Right, %struct.LIST_HELP** %Right.addr, align 8
  store i32 0, i32* %result, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Left.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %scan, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Right.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %scan2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %4 = phi i1 [ true, %while.cond ], [ %tobool2, %lor.rhs ]
  %lnot = xor i1 %4, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call3 to %struct.LIST_HELP*
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call4 to %struct.LIST_HELP*
  %call5 = call i32 @list_CompareElementDistribution(%struct.LIST_HELP* %6, %struct.LIST_HELP* %8)
  store i32 %call5, i32* %result, align 4
  %9 = load i32, i32* %result, align 4
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %scan, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %scan2, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %lor.end
  %12 = load i32, i32* %result, align 4
  %cmp8 = icmp eq i32 %12, 0
  br i1 %cmp8, label %if.then.9, label %if.end.23

if.then.9:                                        ; preds = %while.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.9
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %result, align 4
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %if.then.9
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.21, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %if.else
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.17
  store i32 1, i32* %result, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true.17, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.14
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %while.end
  %17 = load i32, i32* %result, align 4
  ret i32 %17
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_DeleteDistribution(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  call void @list_DeletePairList(%struct.LIST_HELP* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @list_Length(%struct.LIST_HELP* %List) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca i32, align 4
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32 0, i32* %Result, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %Result, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %Result, align 4
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %Result, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @list_Bytes(%struct.LIST_HELP* %List) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Length(%struct.LIST_HELP* %0)
  %conv = zext i32 %call to i64
  %mul = mul i64 %conv, 16
  %conv1 = trunc i64 %mul to i32
  ret i32 %conv1
}

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

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_DeletePairList(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %0, void (i8*)* bitcast (void (%struct.LIST_HELP*)* @list_PairFree to void (i8*)*))
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
