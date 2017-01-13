; ModuleID = './MultiSource.Applications.SPASS/27.table.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.table = type { %struct.termarray*, %struct.termarray**, i32*, i32, i32, i32, i32 }
%struct.termarray = type { %struct.term*, i32, %struct.termarray* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }

@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@symbol_TYPESTATBITS = external constant i32, align 4

; Function Attrs: nounwind uwtable
define %struct.table* @table_Null() #0 {
entry:
  ret %struct.table* null
}

; Function Attrs: nounwind uwtable
define %struct.table* @table_Create(i32 %opbound, i32 %varbound, i32 %termbound) #0 {
entry:
  %opbound.addr = alloca i32, align 4
  %varbound.addr = alloca i32, align 4
  %termbound.addr = alloca i32, align 4
  %result = alloca %struct.table*, align 8
  store i32 %opbound, i32* %opbound.addr, align 4
  store i32 %varbound, i32* %varbound.addr, align 4
  store i32 %termbound, i32* %termbound.addr, align 4
  %call = call i8* @memory_Malloc(i32 40)
  %0 = bitcast i8* %call to %struct.table*
  store %struct.table* %0, %struct.table** %result, align 8
  %1 = load %struct.table*, %struct.table** %result, align 8
  %2 = load i32, i32* %opbound.addr, align 4
  %3 = load i32, i32* %varbound.addr, align 4
  %add = add nsw i32 %2, %3
  %add1 = add nsw i32 %add, 1
  %call2 = call i8* @memory_Calloc(i32 %add1, i32 24)
  %4 = bitcast i8* %call2 to %struct.termarray*
  %5 = load i32, i32* %varbound.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.termarray, %struct.termarray* %4, i64 %idx.ext
  %call3 = call %struct.table* @table_SetTermarray(%struct.table* %1, %struct.termarray* %add.ptr)
  %6 = load %struct.table*, %struct.table** %result, align 8
  %7 = load i32, i32* %termbound.addr, align 4
  %add4 = add nsw i32 %7, 1
  %conv = sext i32 %add4 to i64
  %mul = mul i64 %conv, 8
  %conv5 = trunc i64 %mul to i32
  %call6 = call i8* @memory_Malloc(i32 %conv5)
  %8 = bitcast i8* %call6 to %struct.termarray**
  %call7 = call %struct.table* @table_SetPoss(%struct.table* %6, %struct.termarray** %8)
  %9 = load %struct.table*, %struct.table** %result, align 8
  %10 = load i32, i32* %termbound.addr, align 4
  %add8 = add nsw i32 %10, 1
  %call9 = call i8* @memory_Calloc(i32 %add8, i32 4)
  %11 = bitcast i8* %call9 to i32*
  %call10 = call %struct.table* @table_SetPosstamps(%struct.table* %9, i32* %11)
  %12 = load %struct.table*, %struct.table** %result, align 8
  %13 = load i32, i32* %opbound.addr, align 4
  %call11 = call %struct.table* @table_SetOpbound(%struct.table* %12, i32 %13)
  %14 = load %struct.table*, %struct.table** %result, align 8
  %15 = load i32, i32* %varbound.addr, align 4
  %call12 = call %struct.table* @table_SetVarbound(%struct.table* %14, i32 %15)
  %16 = load %struct.table*, %struct.table** %result, align 8
  %17 = load i32, i32* %termbound.addr, align 4
  %call13 = call %struct.table* @table_SetTermbound(%struct.table* %16, i32 %17)
  %18 = load %struct.table*, %struct.table** %result, align 8
  %call14 = call %struct.table* @table_SetStampcounter(%struct.table* %18, i32 1)
  %19 = load %struct.table*, %struct.table** %result, align 8
  ret %struct.table* %19
}

declare i8* @memory_Malloc(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.table* @table_SetTermarray(%struct.table* %table, %struct.termarray* %ta) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %ta.addr = alloca %struct.termarray*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store %struct.termarray* %ta, %struct.termarray** %ta.addr, align 8
  %0 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %ta1 = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 0
  store %struct.termarray* %0, %struct.termarray** %ta1, align 8
  %2 = load %struct.table*, %struct.table** %table.addr, align 8
  ret %struct.table* %2
}

declare i8* @memory_Calloc(i32, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.table* @table_SetPoss(%struct.table* %table, %struct.termarray** %ref) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %ref.addr = alloca %struct.termarray**, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store %struct.termarray** %ref, %struct.termarray*** %ref.addr, align 8
  %0 = load %struct.termarray**, %struct.termarray*** %ref.addr, align 8
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %pos = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 1
  store %struct.termarray** %0, %struct.termarray*** %pos, align 8
  %2 = load %struct.table*, %struct.table** %table.addr, align 8
  ret %struct.table* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.table* @table_SetPosstamps(%struct.table* %table, i32* %ref) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %ref.addr = alloca i32*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i32* %ref, i32** %ref.addr, align 8
  %0 = load i32*, i32** %ref.addr, align 8
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %posstamp = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 2
  store i32* %0, i32** %posstamp, align 8
  %2 = load %struct.table*, %struct.table** %table.addr, align 8
  ret %struct.table* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.table* @table_SetOpbound(%struct.table* %table, i32 %opbound) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %opbound.addr = alloca i32, align 4
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i32 %opbound, i32* %opbound.addr, align 4
  %0 = load i32, i32* %opbound.addr, align 4
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %opbound1 = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 4
  store i32 %0, i32* %opbound1, align 4
  %2 = load %struct.table*, %struct.table** %table.addr, align 8
  ret %struct.table* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.table* @table_SetVarbound(%struct.table* %table, i32 %varbound) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %varbound.addr = alloca i32, align 4
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i32 %varbound, i32* %varbound.addr, align 4
  %0 = load i32, i32* %varbound.addr, align 4
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %varbound1 = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 5
  store i32 %0, i32* %varbound1, align 4
  %2 = load %struct.table*, %struct.table** %table.addr, align 8
  ret %struct.table* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.table* @table_SetTermbound(%struct.table* %table, i32 %termbound) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %termbound.addr = alloca i32, align 4
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i32 %termbound, i32* %termbound.addr, align 4
  %0 = load i32, i32* %termbound.addr, align 4
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %termbound1 = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 6
  store i32 %0, i32* %termbound1, align 4
  %2 = load %struct.table*, %struct.table** %table.addr, align 8
  ret %struct.table* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.table* @table_SetStampcounter(%struct.table* %table, i32 %stampcounter) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %stampcounter.addr = alloca i32, align 4
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i32 %stampcounter, i32* %stampcounter.addr, align 4
  %0 = load i32, i32* %stampcounter.addr, align 4
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %stampcounter1 = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 3
  store i32 %0, i32* %stampcounter1, align 4
  %2 = load %struct.table*, %struct.table** %table.addr, align 8
  ret %struct.table* %2
}

; Function Attrs: nounwind uwtable
define void @table_Free(%struct.table* %table) #0 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %i = alloca i32, align 4
  store %struct.table* %table, %struct.table** %table.addr, align 8
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %call = call %struct.table* @table_Null()
  %cmp = icmp ne %struct.table* %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %call1 = call i32 @table_GetVarbound(%struct.table* %1)
  %sub = sub nsw i32 0, %call1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.table*, %struct.table** %table.addr, align 8
  %call2 = call i32 @table_GetOpbound(%struct.table* %3)
  %cmp3 = icmp sle i32 %2, %call2
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.table*, %struct.table** %table.addr, align 8
  %call4 = call %struct.termarray* @table_GetTermarray(%struct.table* %4)
  %5 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.termarray, %struct.termarray* %call4, i64 %idx.ext
  %call5 = call %struct.termarray* @table_GetChild(%struct.termarray* %add.ptr)
  %6 = load %struct.table*, %struct.table** %table.addr, align 8
  %call6 = call i32 @table_GetTermbound(%struct.table* %6)
  %add = add nsw i32 %call6, 1
  call void @table_FreeTermarray(%struct.termarray* %call5, i32 %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.table*, %struct.table** %table.addr, align 8
  %call7 = call %struct.termarray* @table_GetTermarray(%struct.table* %8)
  %9 = load %struct.table*, %struct.table** %table.addr, align 8
  %call8 = call i32 @table_GetVarbound(%struct.table* %9)
  %idx.ext9 = sext i32 %call8 to i64
  %idx.neg = sub i64 0, %idx.ext9
  %add.ptr10 = getelementptr inbounds %struct.termarray, %struct.termarray* %call7, i64 %idx.neg
  %10 = bitcast %struct.termarray* %add.ptr10 to i8*
  %11 = load %struct.table*, %struct.table** %table.addr, align 8
  %call11 = call i32 @table_GetOpbound(%struct.table* %11)
  %12 = load %struct.table*, %struct.table** %table.addr, align 8
  %call12 = call i32 @table_GetVarbound(%struct.table* %12)
  %add13 = add nsw i32 %call11, %call12
  %add14 = add nsw i32 %add13, 1
  %conv = sext i32 %add14 to i64
  %mul = mul i64 %conv, 24
  %conv15 = trunc i64 %mul to i32
  call void @memory_Free(i8* %10, i32 %conv15)
  %13 = load %struct.table*, %struct.table** %table.addr, align 8
  %call16 = call %struct.termarray** @table_GetPoss(%struct.table* %13)
  %14 = bitcast %struct.termarray** %call16 to i8*
  %15 = load %struct.table*, %struct.table** %table.addr, align 8
  %call17 = call i32 @table_GetTermbound(%struct.table* %15)
  %add18 = add nsw i32 %call17, 1
  %conv19 = sext i32 %add18 to i64
  %mul20 = mul i64 %conv19, 8
  %conv21 = trunc i64 %mul20 to i32
  call void @memory_Free(i8* %14, i32 %conv21)
  %16 = load %struct.table*, %struct.table** %table.addr, align 8
  %call22 = call i32* @table_GetPosstamps(%struct.table* %16)
  %17 = bitcast i32* %call22 to i8*
  %18 = load %struct.table*, %struct.table** %table.addr, align 8
  %call23 = call i32 @table_GetTermbound(%struct.table* %18)
  %add24 = add nsw i32 %call23, 1
  %conv25 = sext i32 %add24 to i64
  %mul26 = mul i64 %conv25, 4
  %conv27 = trunc i64 %mul26 to i32
  call void @memory_Free(i8* %17, i32 %conv27)
  %19 = load %struct.table*, %struct.table** %table.addr, align 8
  %20 = bitcast %struct.table* %19 to i8*
  call void @memory_Free(i8* %20, i32 40)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @table_GetVarbound(%struct.table* %table) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %varbound = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 5
  %1 = load i32, i32* %varbound, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @table_GetOpbound(%struct.table* %table) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %opbound = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 4
  %1 = load i32, i32* %opbound, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal void @table_FreeTermarray(%struct.termarray* %ta, i32 %size) #0 {
entry:
  %ta.addr = alloca %struct.termarray*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.termarray* %ta, %struct.termarray** %ta.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %tobool = icmp ne %struct.termarray* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.termarray, %struct.termarray* %3, i64 %idx.ext
  %call = call %struct.termarray* @table_GetChild(%struct.termarray* %add.ptr)
  %5 = load i32, i32* %size.addr, align 4
  call void @table_FreeTermarray(%struct.termarray* %call, i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %8 = bitcast %struct.termarray* %7 to i8*
  %9 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %9 to i64
  %mul = mul i64 %conv, 24
  %conv1 = trunc i64 %mul to i32
  call void @memory_Free(i8* %8, i32 %conv1)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.termarray* @table_GetChild(%struct.termarray* %ta) #2 {
entry:
  %ta.addr = alloca %struct.termarray*, align 8
  store %struct.termarray* %ta, %struct.termarray** %ta.addr, align 8
  %0 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %child = getelementptr inbounds %struct.termarray, %struct.termarray* %0, i32 0, i32 2
  %1 = load %struct.termarray*, %struct.termarray** %child, align 8
  ret %struct.termarray* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.termarray* @table_GetTermarray(%struct.table* %table) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %ta = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 0
  %1 = load %struct.termarray*, %struct.termarray** %ta, align 8
  ret %struct.termarray* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @table_GetTermbound(%struct.table* %table) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %termbound = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 6
  %1 = load i32, i32* %termbound, align 4
  ret i32 %1
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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.termarray** @table_GetPoss(%struct.table* %table) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %pos = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 1
  %1 = load %struct.termarray**, %struct.termarray*** %pos, align 8
  ret %struct.termarray** %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @table_GetPosstamps(%struct.table* %table) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %posstamp = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 2
  %1 = load i32*, i32** %posstamp, align 8
  ret i32* %1
}

; Function Attrs: nounwind uwtable
define %struct.table* @table_Init(%struct.table* %table, i32 %opbound, i32 %varbound, i32 %termbound) #0 {
entry:
  %retval = alloca %struct.table*, align 8
  %table.addr = alloca %struct.table*, align 8
  %opbound.addr = alloca i32, align 4
  %varbound.addr = alloca i32, align 4
  %termbound.addr = alloca i32, align 4
  %opmax = alloca i32, align 4
  %varmax = alloca i32, align 4
  %termmax = alloca i32, align 4
  %i = alloca i32, align 4
  %old = alloca %struct.termarray*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i32 %opbound, i32* %opbound.addr, align 4
  store i32 %varbound, i32* %varbound.addr, align 4
  store i32 %termbound, i32* %termbound.addr, align 4
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %call = call i32 @table_GetOpbound(%struct.table* %0)
  %1 = load i32, i32* %opbound.addr, align 4
  %cmp = icmp sgt i32 %call, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.table*, %struct.table** %table.addr, align 8
  %call1 = call i32 @table_GetOpbound(%struct.table* %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %opbound.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, i32* %opmax, align 4
  %4 = load %struct.table*, %struct.table** %table.addr, align 8
  %call2 = call i32 @table_GetVarbound(%struct.table* %4)
  %5 = load i32, i32* %varbound.addr, align 4
  %cmp3 = icmp sgt i32 %call2, %5
  br i1 %cmp3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.end
  %6 = load %struct.table*, %struct.table** %table.addr, align 8
  %call5 = call i32 @table_GetVarbound(%struct.table* %6)
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  %7 = load i32, i32* %varbound.addr, align 4
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.4
  %cond8 = phi i32 [ %call5, %cond.true.4 ], [ %7, %cond.false.6 ]
  store i32 %cond8, i32* %varmax, align 4
  %8 = load %struct.table*, %struct.table** %table.addr, align 8
  %call9 = call i32 @table_GetTermbound(%struct.table* %8)
  %9 = load i32, i32* %termbound.addr, align 4
  %cmp10 = icmp sgt i32 %call9, %9
  br i1 %cmp10, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %cond.end.7
  %10 = load %struct.table*, %struct.table** %table.addr, align 8
  %call12 = call i32 @table_GetTermbound(%struct.table* %10)
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end.7
  %11 = load i32, i32* %termbound.addr, align 4
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.11
  %cond15 = phi i32 [ %call12, %cond.true.11 ], [ %11, %cond.false.13 ]
  store i32 %cond15, i32* %termmax, align 4
  %12 = load %struct.table*, %struct.table** %table.addr, align 8
  %13 = load %struct.table*, %struct.table** %table.addr, align 8
  %call16 = call i32 @table_GetStampcounter(%struct.table* %13)
  %add = add nsw i32 %call16, 1
  %call17 = call %struct.table* @table_SetStampcounter(%struct.table* %12, i32 %add)
  %14 = load %struct.table*, %struct.table** %table.addr, align 8
  %call18 = call i32 @table_GetStampcounter(%struct.table* %14)
  %cmp19 = icmp sle i32 %call18, 0
  br i1 %cmp19, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.14
  %15 = load i32, i32* %termbound.addr, align 4
  %16 = load %struct.table*, %struct.table** %table.addr, align 8
  %call20 = call i32 @table_GetTermbound(%struct.table* %16)
  %cmp21 = icmp sgt i32 %15, %call20
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %cond.end.14
  %17 = load %struct.table*, %struct.table** %table.addr, align 8
  call void @table_Free(%struct.table* %17)
  %18 = load i32, i32* %opmax, align 4
  %19 = load i32, i32* %varmax, align 4
  %20 = load i32, i32* %termmax, align 4
  %call22 = call %struct.table* @table_Create(i32 %18, i32 %19, i32 %20)
  store %struct.table* %call22, %struct.table** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %21 = load i32, i32* %opbound.addr, align 4
  %22 = load i32, i32* %varbound.addr, align 4
  %add23 = add nsw i32 %21, %22
  %23 = load %struct.table*, %struct.table** %table.addr, align 8
  %call24 = call i32 @table_GetOpbound(%struct.table* %23)
  %24 = load %struct.table*, %struct.table** %table.addr, align 8
  %call25 = call i32 @table_GetVarbound(%struct.table* %24)
  %add26 = add nsw i32 %call24, %call25
  %cmp27 = icmp sgt i32 %add23, %add26
  br i1 %cmp27, label %if.then.28, label %if.else.54

if.then.28:                                       ; preds = %if.else
  %25 = load %struct.table*, %struct.table** %table.addr, align 8
  %call29 = call %struct.termarray* @table_GetTermarray(%struct.table* %25)
  store %struct.termarray* %call29, %struct.termarray** %old, align 8
  %26 = load %struct.table*, %struct.table** %table.addr, align 8
  %27 = load i32, i32* %opmax, align 4
  %28 = load i32, i32* %varmax, align 4
  %add30 = add nsw i32 %27, %28
  %add31 = add nsw i32 %add30, 1
  %call32 = call i8* @memory_Calloc(i32 %add31, i32 24)
  %29 = bitcast i8* %call32 to %struct.termarray*
  %30 = load i32, i32* %varmax, align 4
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds %struct.termarray, %struct.termarray* %29, i64 %idx.ext
  %call33 = call %struct.table* @table_SetTermarray(%struct.table* %26, %struct.termarray* %add.ptr)
  %31 = load %struct.table*, %struct.table** %table.addr, align 8
  %call34 = call i32 @table_GetVarbound(%struct.table* %31)
  %sub = sub nsw i32 0, %call34
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.28
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.table*, %struct.table** %table.addr, align 8
  %call35 = call i32 @table_GetOpbound(%struct.table* %33)
  %cmp36 = icmp sle i32 %32, %call35
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.table*, %struct.table** %table.addr, align 8
  %call37 = call %struct.termarray* @table_GetTermarray(%struct.table* %34)
  %35 = load i32, i32* %i, align 4
  %idx.ext38 = sext i32 %35 to i64
  %add.ptr39 = getelementptr inbounds %struct.termarray, %struct.termarray* %call37, i64 %idx.ext38
  %36 = load %struct.termarray*, %struct.termarray** %old, align 8
  %37 = load i32, i32* %i, align 4
  %idx.ext40 = sext i32 %37 to i64
  %add.ptr41 = getelementptr inbounds %struct.termarray, %struct.termarray* %36, i64 %idx.ext40
  %call42 = call %struct.termarray* @table_GetChild(%struct.termarray* %add.ptr41)
  %call43 = call %struct.termarray* @table_SetChild(%struct.termarray* %add.ptr39, %struct.termarray* %call42)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.termarray*, %struct.termarray** %old, align 8
  %40 = load %struct.table*, %struct.table** %table.addr, align 8
  %call44 = call i32 @table_GetVarbound(%struct.table* %40)
  %idx.ext45 = sext i32 %call44 to i64
  %idx.neg = sub i64 0, %idx.ext45
  %add.ptr46 = getelementptr inbounds %struct.termarray, %struct.termarray* %39, i64 %idx.neg
  %41 = bitcast %struct.termarray* %add.ptr46 to i8*
  %42 = load %struct.table*, %struct.table** %table.addr, align 8
  %call47 = call i32 @table_GetOpbound(%struct.table* %42)
  %43 = load %struct.table*, %struct.table** %table.addr, align 8
  %call48 = call i32 @table_GetVarbound(%struct.table* %43)
  %add49 = add nsw i32 %call47, %call48
  %add50 = add nsw i32 %add49, 1
  %conv = sext i32 %add50 to i64
  %mul = mul i64 %conv, 24
  %conv51 = trunc i64 %mul to i32
  call void @memory_Free(i8* %41, i32 %conv51)
  %44 = load %struct.table*, %struct.table** %table.addr, align 8
  %45 = load i32, i32* %opmax, align 4
  %call52 = call %struct.table* @table_SetOpbound(%struct.table* %44, i32 %45)
  %46 = load %struct.table*, %struct.table** %table.addr, align 8
  %47 = load i32, i32* %varmax, align 4
  %call53 = call %struct.table* @table_SetVarbound(%struct.table* %46, i32 %47)
  %48 = load %struct.table*, %struct.table** %table.addr, align 8
  store %struct.table* %48, %struct.table** %retval
  br label %return

if.else.54:                                       ; preds = %if.else
  %49 = load %struct.table*, %struct.table** %table.addr, align 8
  %50 = load %struct.table*, %struct.table** %table.addr, align 8
  %call55 = call %struct.termarray* @table_GetTermarray(%struct.table* %50)
  %51 = load %struct.table*, %struct.table** %table.addr, align 8
  %call56 = call i32 @table_GetOpbound(%struct.table* %51)
  %idx.ext57 = sext i32 %call56 to i64
  %add.ptr58 = getelementptr inbounds %struct.termarray, %struct.termarray* %call55, i64 %idx.ext57
  %52 = load i32, i32* %opbound.addr, align 4
  %idx.ext59 = sext i32 %52 to i64
  %idx.neg60 = sub i64 0, %idx.ext59
  %add.ptr61 = getelementptr inbounds %struct.termarray, %struct.termarray* %add.ptr58, i64 %idx.neg60
  %call62 = call %struct.table* @table_SetTermarray(%struct.table* %49, %struct.termarray* %add.ptr61)
  %53 = load %struct.table*, %struct.table** %table.addr, align 8
  %54 = load %struct.table*, %struct.table** %table.addr, align 8
  %call63 = call i32 @table_GetOpbound(%struct.table* %54)
  %55 = load %struct.table*, %struct.table** %table.addr, align 8
  %call64 = call i32 @table_GetVarbound(%struct.table* %55)
  %add65 = add nsw i32 %call63, %call64
  %56 = load i32, i32* %opbound.addr, align 4
  %sub66 = sub nsw i32 %add65, %56
  %call67 = call %struct.table* @table_SetVarbound(%struct.table* %53, i32 %sub66)
  %57 = load %struct.table*, %struct.table** %table.addr, align 8
  %58 = load i32, i32* %opbound.addr, align 4
  %call68 = call %struct.table* @table_SetOpbound(%struct.table* %57, i32 %58)
  %59 = load %struct.table*, %struct.table** %table.addr, align 8
  store %struct.table* %59, %struct.table** %retval
  br label %return

return:                                           ; preds = %if.else.54, %for.end, %if.then
  %60 = load %struct.table*, %struct.table** %retval
  ret %struct.table* %60
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @table_GetStampcounter(%struct.table* %table) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %stampcounter = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 3
  %1 = load i32, i32* %stampcounter, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.termarray* @table_SetChild(%struct.termarray* %ta, %struct.termarray* %child) #2 {
entry:
  %ta.addr = alloca %struct.termarray*, align 8
  %child.addr = alloca %struct.termarray*, align 8
  store %struct.termarray* %ta, %struct.termarray** %ta.addr, align 8
  store %struct.termarray* %child, %struct.termarray** %child.addr, align 8
  %0 = load %struct.termarray*, %struct.termarray** %child.addr, align 8
  %1 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %child1 = getelementptr inbounds %struct.termarray, %struct.termarray* %1, i32 0, i32 2
  store %struct.termarray* %0, %struct.termarray** %child1, align 8
  %2 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  ret %struct.termarray* %2
}

; Function Attrs: nounwind uwtable
define %struct.term* @table_QueryAndEnter(%struct.table* %table, i32* %p, %struct.term* %term) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %table.addr = alloca %struct.table*, align 8
  %p.addr = alloca i32*, align 8
  %term.addr = alloca %struct.term*, align 8
  %ta = alloca %struct.termarray*, align 8
  %terms = alloca %struct.LIST_HELP*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i32* %p, i32** %p.addr, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %call = call %struct.termarray* @table_GetTermarray(%struct.table* %0)
  %1 = load %struct.term*, %struct.term** %term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  %call2 = call i32 @table_Index(i32 %call1)
  %idx.ext = sext i32 %call2 to i64
  %add.ptr = getelementptr inbounds %struct.termarray, %struct.termarray* %call, i64 %idx.ext
  store %struct.termarray* %add.ptr, %struct.termarray** %ta, align 8
  %2 = load %struct.term*, %struct.term** %term.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %terms, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %terms, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.termarray*, %struct.termarray** %ta, align 8
  %call5 = call %struct.termarray* @table_GetChild(%struct.termarray* %4)
  %tobool6 = icmp ne %struct.termarray* %call5, null
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load %struct.termarray*, %struct.termarray** %ta, align 8
  %6 = load %struct.table*, %struct.table** %table.addr, align 8
  %call7 = call i32 @table_GetTermbound(%struct.table* %6)
  %add = add nsw i32 %call7, 1
  %call8 = call i8* @memory_Calloc(i32 %add, i32 24)
  %7 = bitcast i8* %call8 to %struct.termarray*
  %call9 = call %struct.termarray* @table_SetChild(%struct.termarray* %5, %struct.termarray* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load %struct.termarray*, %struct.termarray** %ta, align 8
  %call10 = call %struct.termarray* @table_GetChild(%struct.termarray* %8)
  %9 = load i32*, i32** %p.addr, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %terms, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call11 to %struct.term*
  %call12 = call i32 @term_Size(%struct.term* %11)
  %call13 = call i32 @part_Find(i32* %9, i32 %call12)
  %idx.ext14 = sext i32 %call13 to i64
  %add.ptr15 = getelementptr inbounds %struct.termarray, %struct.termarray* %call10, i64 %idx.ext14
  store %struct.termarray* %add.ptr15, %struct.termarray** %ta, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %terms, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %terms, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.table*, %struct.table** %table.addr, align 8
  %14 = load %struct.termarray*, %struct.termarray** %ta, align 8
  %call17 = call %struct.termarray* @table_DelayedInit(%struct.table* %13, %struct.termarray* %14)
  %15 = load %struct.termarray*, %struct.termarray** %ta, align 8
  %call18 = call %struct.term* @table_GetTerm(%struct.termarray* %15)
  %tobool19 = icmp ne %struct.term* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.end
  %16 = load %struct.termarray*, %struct.termarray** %ta, align 8
  %call21 = call %struct.term* @table_GetTerm(%struct.termarray* %16)
  store %struct.term* %call21, %struct.term** %retval
  br label %return

if.else:                                          ; preds = %for.end
  %17 = load %struct.termarray*, %struct.termarray** %ta, align 8
  %18 = load %struct.term*, %struct.term** %term.addr, align 8
  %call22 = call %struct.termarray* @table_SetTerm(%struct.termarray* %17, %struct.term* %18)
  %19 = load %struct.table*, %struct.table** %table.addr, align 8
  %20 = load %struct.table*, %struct.table** %table.addr, align 8
  %21 = load %struct.term*, %struct.term** %term.addr, align 8
  %call23 = call i32 @term_Size(%struct.term* %21)
  %call24 = call i32 @table_DelayedPosInit(%struct.table* %20, i32 %call23)
  %22 = load %struct.termarray*, %struct.termarray** %ta, align 8
  %call25 = call %struct.table* @table_SetPos(%struct.table* %19, i32 %call24, %struct.termarray* %22)
  %call26 = call %struct.term* @term_Null()
  store %struct.term* %call26, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.20
  %23 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %23
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @table_Index(i32 %symbol) #2 {
entry:
  %retval = alloca i32, align 4
  %symbol.addr = alloca i32, align 4
  store i32 %symbol, i32* %symbol.addr, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %call = call i32 @symbol_IsVariable(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %symbol.addr, align 4
  %sub = sub nsw i32 0, %1
  store i32 %sub, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %symbol.addr, align 4
  %call1 = call i32 @symbol_Index(i32 %2)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
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

declare i32 @part_Find(i32*, i32) #1

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
define internal %struct.termarray* @table_DelayedInit(%struct.table* %table, %struct.termarray* %ta) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %ta.addr = alloca %struct.termarray*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store %struct.termarray* %ta, %struct.termarray** %ta.addr, align 8
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %1 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %call = call i32 @table_Stamped(%struct.table* %0, %struct.termarray* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %call1 = call %struct.term* @term_Null()
  %call2 = call %struct.termarray* @table_SetTerm(%struct.termarray* %2, %struct.term* %call1)
  %3 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %4 = load %struct.table*, %struct.table** %table.addr, align 8
  %call3 = call i32 @table_GetStampcounter(%struct.table* %4)
  %call4 = call %struct.termarray* @table_SetStamp(%struct.termarray* %3, i32 %call3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  ret %struct.termarray* %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @table_GetTerm(%struct.termarray* %ta) #2 {
entry:
  %ta.addr = alloca %struct.termarray*, align 8
  store %struct.termarray* %ta, %struct.termarray** %ta.addr, align 8
  %0 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %term = getelementptr inbounds %struct.termarray, %struct.termarray* %0, i32 0, i32 0
  %1 = load %struct.term*, %struct.term** %term, align 8
  ret %struct.term* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.termarray* @table_SetTerm(%struct.termarray* %ta, %struct.term* %term) #2 {
entry:
  %ta.addr = alloca %struct.termarray*, align 8
  %term.addr = alloca %struct.term*, align 8
  store %struct.termarray* %ta, %struct.termarray** %ta.addr, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %1 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %term1 = getelementptr inbounds %struct.termarray, %struct.termarray* %1, i32 0, i32 0
  store %struct.term* %0, %struct.term** %term1, align 8
  %2 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  ret %struct.termarray* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.table* @table_SetPos(%struct.table* %table, i32 %index, %struct.termarray* %ta) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %index.addr = alloca i32, align 4
  %ta.addr = alloca %struct.termarray*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store %struct.termarray* %ta, %struct.termarray** %ta.addr, align 8
  %0 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %1 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.table*, %struct.table** %table.addr, align 8
  %call = call %struct.termarray** @table_GetPoss(%struct.table* %2)
  %arrayidx = getelementptr inbounds %struct.termarray*, %struct.termarray** %call, i64 %idxprom
  store %struct.termarray* %0, %struct.termarray** %arrayidx, align 8
  %3 = load %struct.table*, %struct.table** %table.addr, align 8
  ret %struct.table* %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @table_DelayedPosInit(%struct.table* %table, i32 %index) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %index.addr = alloca i32, align 4
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %1 = load i32, i32* %index.addr, align 4
  %call = call i32 @table_PosStamped(%struct.table* %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.table*, %struct.table** %table.addr, align 8
  %3 = load i32, i32* %index.addr, align 4
  %call1 = call %struct.table* @table_SetPos(%struct.table* %2, i32 %3, %struct.termarray* null)
  %4 = load %struct.table*, %struct.table** %table.addr, align 8
  %5 = load i32, i32* %index.addr, align 4
  %6 = load %struct.table*, %struct.table** %table.addr, align 8
  %call2 = call i32 @table_GetStampcounter(%struct.table* %6)
  %call3 = call %struct.table* @table_SetPosstamp(%struct.table* %4, i32 %5, i32 %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %index.addr, align 4
  ret i32 %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_Null() #2 {
entry:
  ret %struct.term* null
}

; Function Attrs: nounwind uwtable
define %struct.table* @table_Delete(%struct.table* %table, %struct.term* %term) #0 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %term.addr = alloca %struct.term*, align 8
  %no = alloca i32, align 4
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %call = call i32 @term_Size(%struct.term* %0)
  store i32 %call, i32* %no, align 4
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %2 = load i32, i32* %no, align 4
  %call1 = call i32 @table_DelayedPosInit(%struct.table* %1, i32 %2)
  %3 = load %struct.table*, %struct.table** %table.addr, align 8
  %4 = load i32, i32* %no, align 4
  %call2 = call %struct.termarray* @table_GetPos(%struct.table* %3, i32 %4)
  %tobool = icmp ne %struct.termarray* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.table*, %struct.table** %table.addr, align 8
  %6 = load i32, i32* %no, align 4
  %call3 = call %struct.termarray* @table_GetPos(%struct.table* %5, i32 %6)
  %call4 = call %struct.term* @term_Null()
  %call5 = call %struct.termarray* @table_SetTerm(%struct.termarray* %call3, %struct.term* %call4)
  %7 = load %struct.table*, %struct.table** %table.addr, align 8
  %8 = load i32, i32* %no, align 4
  %call6 = call %struct.table* @table_SetPos(%struct.table* %7, i32 %8, %struct.termarray* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.table*, %struct.table** %table.addr, align 8
  ret %struct.table* %9
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.termarray* @table_GetPos(%struct.table* %table, i32 %index) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %index.addr = alloca i32, align 4
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %call = call %struct.termarray** @table_GetPoss(%struct.table* %1)
  %arrayidx = getelementptr inbounds %struct.termarray*, %struct.termarray** %call, i64 %idxprom
  %2 = load %struct.termarray*, %struct.termarray** %arrayidx, align 8
  ret %struct.termarray* %2
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
define internal i32 @table_Stamped(%struct.table* %table, %struct.termarray* %ta) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %ta.addr = alloca %struct.termarray*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store %struct.termarray* %ta, %struct.termarray** %ta.addr, align 8
  %0 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %call = call i32 @table_GetStamp(%struct.termarray* %0)
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %call1 = call i32 @table_GetStampcounter(%struct.table* %1)
  %cmp = icmp eq i32 %call, %call1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.termarray* @table_SetStamp(%struct.termarray* %ta, i32 %stamp) #2 {
entry:
  %ta.addr = alloca %struct.termarray*, align 8
  %stamp.addr = alloca i32, align 4
  store %struct.termarray* %ta, %struct.termarray** %ta.addr, align 8
  store i32 %stamp, i32* %stamp.addr, align 4
  %0 = load i32, i32* %stamp.addr, align 4
  %1 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %stamp1 = getelementptr inbounds %struct.termarray, %struct.termarray* %1, i32 0, i32 1
  store i32 %0, i32* %stamp1, align 4
  %2 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  ret %struct.termarray* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @table_GetStamp(%struct.termarray* %ta) #2 {
entry:
  %ta.addr = alloca %struct.termarray*, align 8
  store %struct.termarray* %ta, %struct.termarray** %ta.addr, align 8
  %0 = load %struct.termarray*, %struct.termarray** %ta.addr, align 8
  %stamp = getelementptr inbounds %struct.termarray, %struct.termarray* %0, i32 0, i32 1
  %1 = load i32, i32* %stamp, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @table_PosStamped(%struct.table* %table, i32 %index) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %index.addr = alloca i32, align 4
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %1 = load i32, i32* %index.addr, align 4
  %call = call i32 @table_GetPosstamp(%struct.table* %0, i32 %1)
  %2 = load %struct.table*, %struct.table** %table.addr, align 8
  %call1 = call i32 @table_GetStampcounter(%struct.table* %2)
  %cmp = icmp eq i32 %call, %call1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.table* @table_SetPosstamp(%struct.table* %table, i32 %index, i32 %stamp) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %index.addr = alloca i32, align 4
  %stamp.addr = alloca i32, align 4
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i32 %stamp, i32* %stamp.addr, align 4
  %0 = load i32, i32* %stamp.addr, align 4
  %1 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.table*, %struct.table** %table.addr, align 8
  %call = call i32* @table_GetPosstamps(%struct.table* %2)
  %arrayidx = getelementptr inbounds i32, i32* %call, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  %3 = load %struct.table*, %struct.table** %table.addr, align 8
  ret %struct.table* %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @table_GetPosstamp(%struct.table* %table, i32 %index) #2 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %index.addr = alloca i32, align 4
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %call = call i32* @table_GetPosstamps(%struct.table* %1)
  %arrayidx = getelementptr inbounds i32, i32* %call, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  ret i32 %2
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
