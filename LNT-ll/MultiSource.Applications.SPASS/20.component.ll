; ModuleID = './MultiSource.Applications.SPASS/20.component.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.cliteral = type { i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.litptr = type { %struct.cliteral**, i32 }

@.str = private unnamed_addr constant [23 x i8] c"\0Alength of LITPTR: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Entries of literal %d : \0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"----------------------\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"used:\09\09\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"litindex:\09%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"litvarlist:\09\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"No entries in litptr structure\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"\0Aj = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"\0Aj == %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"lit = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"i   = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"hasinter = TRUE\00", align 1
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4

; Function Attrs: nounwind uwtable
define %struct.cliteral* @literal_Create(i32 %used, i32 %index, %struct.LIST_HELP* %varlist) #0 {
entry:
  %used.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %varlist.addr = alloca %struct.LIST_HELP*, align 8
  %literal = alloca %struct.cliteral*, align 8
  store i32 %used, i32* %used.addr, align 4
  store i32 %index, i32* %index.addr, align 4
  store %struct.LIST_HELP* %varlist, %struct.LIST_HELP** %varlist.addr, align 8
  %call = call i8* @memory_Malloc(i32 16)
  %0 = bitcast i8* %call to %struct.cliteral*
  store %struct.cliteral* %0, %struct.cliteral** %literal, align 8
  %1 = load %struct.cliteral*, %struct.cliteral** %literal, align 8
  %2 = load i32, i32* %used.addr, align 4
  call void @literal_PutUsed(%struct.cliteral* %1, i32 %2)
  %3 = load %struct.cliteral*, %struct.cliteral** %literal, align 8
  %4 = load i32, i32* %index.addr, align 4
  call void @literal_PutLitIndex(%struct.cliteral* %3, i32 %4)
  %5 = load %struct.cliteral*, %struct.cliteral** %literal, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist.addr, align 8
  call void @literal_PutLitVarList(%struct.cliteral* %5, %struct.LIST_HELP* %6)
  %7 = load %struct.cliteral*, %struct.cliteral** %literal, align 8
  ret %struct.cliteral* %7
}

declare i8* @memory_Malloc(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @literal_PutUsed(%struct.cliteral* %C, i32 %Bool) #2 {
entry:
  %C.addr = alloca %struct.cliteral*, align 8
  %Bool.addr = alloca i32, align 4
  store %struct.cliteral* %C, %struct.cliteral** %C.addr, align 8
  store i32 %Bool, i32* %Bool.addr, align 4
  %0 = load i32, i32* %Bool.addr, align 4
  %1 = load %struct.cliteral*, %struct.cliteral** %C.addr, align 8
  %used = getelementptr inbounds %struct.cliteral, %struct.cliteral* %1, i32 0, i32 0
  store i32 %0, i32* %used, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @literal_PutLitIndex(%struct.cliteral* %C, i32 %I) #2 {
entry:
  %C.addr = alloca %struct.cliteral*, align 8
  %I.addr = alloca i32, align 4
  store %struct.cliteral* %C, %struct.cliteral** %C.addr, align 8
  store i32 %I, i32* %I.addr, align 4
  %0 = load i32, i32* %I.addr, align 4
  %1 = load %struct.cliteral*, %struct.cliteral** %C.addr, align 8
  %litindex = getelementptr inbounds %struct.cliteral, %struct.cliteral* %1, i32 0, i32 1
  store i32 %0, i32* %litindex, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @literal_PutLitVarList(%struct.cliteral* %C, %struct.LIST_HELP* %L) #2 {
entry:
  %C.addr = alloca %struct.cliteral*, align 8
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.cliteral* %C, %struct.cliteral** %C.addr, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = load %struct.cliteral*, %struct.cliteral** %C.addr, align 8
  %litvarlist = getelementptr inbounds %struct.cliteral, %struct.cliteral* %1, i32 0, i32 2
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %litvarlist, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @literal_Delete(%struct.cliteral* %literal) #0 {
entry:
  %literal.addr = alloca %struct.cliteral*, align 8
  store %struct.cliteral* %literal, %struct.cliteral** %literal.addr, align 8
  %0 = load %struct.cliteral*, %struct.cliteral** %literal.addr, align 8
  %call = call %struct.LIST_HELP* @literal_GetLitVarList(%struct.cliteral* %0)
  call void @list_Delete(%struct.LIST_HELP* %call)
  %1 = load %struct.cliteral*, %struct.cliteral** %literal.addr, align 8
  call void @literal_Free(%struct.cliteral* %1)
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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @literal_GetLitVarList(%struct.cliteral* %C) #2 {
entry:
  %C.addr = alloca %struct.cliteral*, align 8
  store %struct.cliteral* %C, %struct.cliteral** %C.addr, align 8
  %0 = load %struct.cliteral*, %struct.cliteral** %C.addr, align 8
  %litvarlist = getelementptr inbounds %struct.cliteral, %struct.cliteral* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litvarlist, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @literal_Free(%struct.cliteral* %Lit) #2 {
entry:
  %Lit.addr = alloca %struct.cliteral*, align 8
  store %struct.cliteral* %Lit, %struct.cliteral** %Lit.addr, align 8
  %0 = load %struct.cliteral*, %struct.cliteral** %Lit.addr, align 8
  %1 = bitcast %struct.cliteral* %0 to i8*
  call void @memory_Free(i8* %1, i32 16)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.litptr* @litptr_Create(%struct.LIST_HELP* %Indexlist, %struct.LIST_HELP* %Termsymblist) #0 {
entry:
  %Indexlist.addr = alloca %struct.LIST_HELP*, align 8
  %Termsymblist.addr = alloca %struct.LIST_HELP*, align 8
  %lit_ptr = alloca %struct.litptr*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %varlist = alloca %struct.LIST_HELP*, align 8
  %literal = alloca %struct.cliteral*, align 8
  %index = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.LIST_HELP* %Indexlist, %struct.LIST_HELP** %Indexlist.addr, align 8
  store %struct.LIST_HELP* %Termsymblist, %struct.LIST_HELP** %Termsymblist.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexlist.addr, align 8
  %call = call i32 @list_Length(%struct.LIST_HELP* %0)
  store i32 %call, i32* %n, align 4
  %call1 = call i8* @memory_Malloc(i32 16)
  %1 = bitcast i8* %call1 to %struct.litptr*
  store %struct.litptr* %1, %struct.litptr** %lit_ptr, align 8
  %2 = load %struct.litptr*, %struct.litptr** %lit_ptr, align 8
  %3 = load i32, i32* %n, align 4
  call void @litptr_SetLength(%struct.litptr* %2, i32 %3)
  %4 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %n, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 8
  %conv2 = trunc i64 %mul to i32
  %call3 = call i8* @memory_Malloc(i32 %conv2)
  %6 = bitcast i8* %call3 to %struct.cliteral**
  %7 = load %struct.litptr*, %struct.litptr** %lit_ptr, align 8
  %litptr = getelementptr inbounds %struct.litptr, %struct.litptr* %7, i32 0, i32 0
  store %struct.cliteral** %6, %struct.cliteral*** %litptr, align 8
  store i32 0, i32* %k, align 4
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexlist.addr, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = ptrtoint i8* %call5 to i32
  store i32 %11, i32* %index, align 4
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Termsymblist.addr, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call6 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %13, %struct.LIST_HELP** %varlist, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Termsymblist.addr, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Termsymblist.addr, align 8
  %15 = load i32, i32* %index, align 4
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  %call8 = call %struct.cliteral* @literal_Create(i32 0, i32 %15, %struct.LIST_HELP* %16)
  store %struct.cliteral* %call8, %struct.cliteral** %literal, align 8
  %17 = load %struct.litptr*, %struct.litptr** %lit_ptr, align 8
  %18 = load i32, i32* %k, align 4
  %19 = load %struct.cliteral*, %struct.cliteral** %literal, align 8
  call void @litptr_SetLiteral(%struct.litptr* %17, i32 %18, %struct.cliteral* %19)
  %20 = load i32, i32* %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load %struct.litptr*, %struct.litptr** %lit_ptr, align 8
  %litptr10 = getelementptr inbounds %struct.litptr, %struct.litptr* %22, i32 0, i32 0
  store %struct.cliteral** null, %struct.cliteral*** %litptr10, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %23 = load %struct.litptr*, %struct.litptr** %lit_ptr, align 8
  ret %struct.litptr* %23
}

declare i32 @list_Length(%struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @litptr_SetLength(%struct.litptr* %C, i32 %n) #2 {
entry:
  %C.addr = alloca %struct.litptr*, align 8
  %n.addr = alloca i32, align 4
  store %struct.litptr* %C, %struct.litptr** %C.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load %struct.litptr*, %struct.litptr** %C.addr, align 8
  %length = getelementptr inbounds %struct.litptr, %struct.litptr* %1, i32 0, i32 1
  store i32 %0, i32* %length, align 4
  ret void
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

; Function Attrs: inlinehint nounwind uwtable
define internal void @litptr_SetLiteral(%struct.litptr* %LP, i32 %I, %struct.cliteral* %CL) #2 {
entry:
  %LP.addr = alloca %struct.litptr*, align 8
  %I.addr = alloca i32, align 4
  %CL.addr = alloca %struct.cliteral*, align 8
  store %struct.litptr* %LP, %struct.litptr** %LP.addr, align 8
  store i32 %I, i32* %I.addr, align 4
  store %struct.cliteral* %CL, %struct.cliteral** %CL.addr, align 8
  %0 = load %struct.cliteral*, %struct.cliteral** %CL.addr, align 8
  %1 = load i32, i32* %I.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.litptr*, %struct.litptr** %LP.addr, align 8
  %litptr = getelementptr inbounds %struct.litptr, %struct.litptr* %2, i32 0, i32 0
  %3 = load %struct.cliteral**, %struct.cliteral*** %litptr, align 8
  %arrayidx = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %3, i64 %idxprom
  store %struct.cliteral* %0, %struct.cliteral** %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @litptr_Delete(%struct.litptr* %lit_ptr) #0 {
entry:
  %lit_ptr.addr = alloca %struct.litptr*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.litptr* %lit_ptr, %struct.litptr** %lit_ptr.addr, align 8
  %0 = load %struct.litptr*, %struct.litptr** %lit_ptr.addr, align 8
  %call = call i32 @litptr_Length(%struct.litptr* %0)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.litptr*, %struct.litptr** %lit_ptr.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call2 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %4, i32 %5)
  call void @literal_Delete(%struct.cliteral* %call2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.litptr*, %struct.litptr** %lit_ptr.addr, align 8
  %litptr = getelementptr inbounds %struct.litptr, %struct.litptr* %7, i32 0, i32 0
  %8 = load %struct.cliteral**, %struct.cliteral*** %litptr, align 8
  %9 = bitcast %struct.cliteral** %8 to i8*
  %10 = load i32, i32* %n, align 4
  %conv = sext i32 %10 to i64
  %mul = mul i64 8, %conv
  %conv3 = trunc i64 %mul to i32
  call void @memory_Free(i8* %9, i32 %conv3)
  %11 = load %struct.litptr*, %struct.litptr** %lit_ptr.addr, align 8
  %12 = bitcast %struct.litptr* %11 to i8*
  call void @memory_Free(i8* %12, i32 16)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.litptr*, %struct.litptr** %lit_ptr.addr, align 8
  %14 = bitcast %struct.litptr* %13 to i8*
  call void @memory_Free(i8* %14, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @litptr_Length(%struct.litptr* %C) #2 {
entry:
  %C.addr = alloca %struct.litptr*, align 8
  store %struct.litptr* %C, %struct.litptr** %C.addr, align 8
  %0 = load %struct.litptr*, %struct.litptr** %C.addr, align 8
  %length = getelementptr inbounds %struct.litptr, %struct.litptr* %0, i32 0, i32 1
  %1 = load i32, i32* %length, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.cliteral* @litptr_Literal(%struct.litptr* %C, i32 %I) #2 {
entry:
  %C.addr = alloca %struct.litptr*, align 8
  %I.addr = alloca i32, align 4
  store %struct.litptr* %C, %struct.litptr** %C.addr, align 8
  store i32 %I, i32* %I.addr, align 4
  %0 = load i32, i32* %I.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.litptr*, %struct.litptr** %C.addr, align 8
  %litptr = getelementptr inbounds %struct.litptr, %struct.litptr* %1, i32 0, i32 0
  %2 = load %struct.cliteral**, %struct.cliteral*** %litptr, align 8
  %arrayidx = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %2, i64 %idxprom
  %3 = load %struct.cliteral*, %struct.cliteral** %arrayidx, align 8
  ret %struct.cliteral* %3
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
define void @litptr_Print(%struct.litptr* %lit_ptr) #0 {
entry:
  %lit_ptr.addr = alloca %struct.litptr*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.litptr* %lit_ptr, %struct.litptr** %lit_ptr.addr, align 8
  %0 = load %struct.litptr*, %struct.litptr** %lit_ptr.addr, align 8
  %call = call i32 @litptr_Length(%struct.litptr* %0)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else.18

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 %5)
  %call4 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load %struct.litptr*, %struct.litptr** %lit_ptr.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call6 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %7, i32 %8)
  %call7 = call i32 @literal_GetUsed(%struct.cliteral* %call6)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body
  %call9 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %for.body
  %call10 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  %9 = load %struct.litptr*, %struct.litptr** %lit_ptr.addr, align 8
  %10 = load i32, i32* %i, align 4
  %call11 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %9, i32 %10)
  %call12 = call i32 @literal_GetLitIndex(%struct.cliteral* %call11)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %call12)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %11)
  %12 = load %struct.litptr*, %struct.litptr** %lit_ptr.addr, align 8
  %13 = load i32, i32* %i, align 4
  %call15 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %12, i32 %13)
  %call16 = call %struct.LIST_HELP* @literal_GetLitVarList(%struct.cliteral* %call15)
  call void @list_Apply(void (i8*)* bitcast (void (i32)* @symbol_Print to void (i8*)*), %struct.LIST_HELP* %call16)
  %call17 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.20

if.else.18:                                       ; preds = %entry
  %call19 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %for.end
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @puts(i8*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @literal_GetUsed(%struct.cliteral* %C) #2 {
entry:
  %C.addr = alloca %struct.cliteral*, align 8
  store %struct.cliteral* %C, %struct.cliteral** %C.addr, align 8
  %0 = load %struct.cliteral*, %struct.cliteral** %C.addr, align 8
  %used = getelementptr inbounds %struct.cliteral, %struct.cliteral* %0, i32 0, i32 0
  %1 = load i32, i32* %used, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @literal_GetLitIndex(%struct.cliteral* %C) #2 {
entry:
  %C.addr = alloca %struct.cliteral*, align 8
  store %struct.cliteral* %C, %struct.cliteral** %C.addr, align 8
  %0 = load %struct.cliteral*, %struct.cliteral** %C.addr, align 8
  %litindex = getelementptr inbounds %struct.cliteral, %struct.cliteral* %0, i32 0, i32 1
  %1 = load i32, i32* %litindex, align 4
  ret i32 %1
}

declare void @list_Apply(void (i8*)*, %struct.LIST_HELP*) #1

declare void @symbol_Print(i32) #1

; Function Attrs: nounwind uwtable
define i32 @litptr_AllUsed(%struct.litptr* %lit_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %lit_ptr.addr = alloca %struct.litptr*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.litptr* %lit_ptr, %struct.litptr** %lit_ptr.addr, align 8
  %0 = load %struct.litptr*, %struct.litptr** %lit_ptr.addr, align 8
  %call = call i32 @litptr_Length(%struct.litptr* %0)
  store i32 %call, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.litptr*, %struct.litptr** %lit_ptr.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call1 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %3, i32 %4)
  %call2 = call i32 @literal_GetUsed(%struct.cliteral* %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @subs_CompList(%struct.litptr* %litptr) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %litptr.addr = alloca %struct.litptr*, align 8
  %found = alloca i32, align 4
  %hasinter = alloca i32, align 4
  %scan = alloca %struct.LIST_HELP*, align 8
  %complist = alloca %struct.LIST_HELP*, align 8
  %compindexlist = alloca %struct.LIST_HELP*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lit = alloca i32, align 4
  store %struct.litptr* %litptr, %struct.litptr** %litptr.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %compindexlist, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %complist, align 8
  %0 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %call2 = call i32 @litptr_Length(%struct.litptr* %0)
  store i32 %call2, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.66

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %4)
  %5 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %6 = load i32, i32* %j, align 4
  %call5 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %5, i32 %6)
  %call6 = call i32 @literal_GetUsed(%struct.cliteral* %call5)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %for.body
  %call8 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %complist, align 8
  %7 = load i32, i32* %j, align 4
  %conv = sext i32 %7 to i64
  %8 = inttoptr i64 %conv to i8*
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %complist, align 8
  %call9 = call %struct.LIST_HELP* @list_Cons(i8* %8, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %complist, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %litptr10 = getelementptr inbounds %struct.litptr, %struct.litptr* %11, i32 0, i32 0
  %12 = load %struct.cliteral**, %struct.cliteral*** %litptr10, align 8
  %arrayidx = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %12, i64 %idxprom
  %13 = load %struct.cliteral*, %struct.cliteral** %arrayidx, align 8
  %litindex = getelementptr inbounds %struct.cliteral, %struct.cliteral* %13, i32 0, i32 1
  %14 = load i32, i32* %litindex, align 4
  %conv11 = sext i32 %14 to i64
  %15 = inttoptr i64 %conv11 to i8*
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %compindexlist, align 8
  %call12 = call %struct.LIST_HELP* @list_Cons(i8* %15, %struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %compindexlist, align 8
  %17 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %18 = load i32, i32* %j, align 4
  %call13 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %17, i32 %18)
  call void @literal_PutUsed(%struct.cliteral* %call13, i32 1)
  %19 = load i32, i32* %n, align 4
  %add = add nsw i32 %19, 1
  store i32 %add, i32* %j, align 4
  %20 = load i32, i32* %j, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %n, align 4
  %cmp15 = icmp eq i32 %22, %23
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %complist, align 8
  call void @list_Delete(%struct.LIST_HELP* %24)
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %compindexlist, align 8
  store %struct.LIST_HELP* %25, %struct.LIST_HELP** %retval
  br label %return

if.end.18:                                        ; preds = %for.end
  store i32 1, i32* %found, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.65, %if.end.18
  %26 = load i32, i32* %found, align 4
  %tobool19 = icmp ne i32 %26, 0
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %found, align 4
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %complist, align 8
  store %struct.LIST_HELP* %27, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.60, %while.body
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call21 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool22 = icmp ne i32 %call21, 0
  %lnot = xor i1 %tobool22, true
  br i1 %lnot, label %for.body.23, label %for.end.62

for.body.23:                                      ; preds = %for.cond.20
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = ptrtoint i8* %call24 to i32
  store i32 %30, i32* %lit, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.57, %for.body.23
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %n, align 4
  %cmp26 = icmp slt i32 %31, %32
  br i1 %cmp26, label %for.body.28, label %for.end.59

for.body.28:                                      ; preds = %for.cond.25
  %33 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %34 = load i32, i32* %i, align 4
  %call29 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %33, i32 %34)
  %call30 = call i32 @literal_GetUsed(%struct.cliteral* %call29)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.56, label %if.then.32

if.then.32:                                       ; preds = %for.body.28
  %35 = load i32, i32* %lit, align 4
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 %35)
  %36 = load i32, i32* %i, align 4
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 %36)
  %37 = load i32, i32* %lit, align 4
  %idxprom35 = sext i32 %37 to i64
  %38 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %litptr36 = getelementptr inbounds %struct.litptr, %struct.litptr* %38, i32 0, i32 0
  %39 = load %struct.cliteral**, %struct.cliteral*** %litptr36, align 8
  %arrayidx37 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %39, i64 %idxprom35
  %40 = load %struct.cliteral*, %struct.cliteral** %arrayidx37, align 8
  %litvarlist = getelementptr inbounds %struct.cliteral, %struct.cliteral* %40, i32 0, i32 2
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litvarlist, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %42 to i64
  %43 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %litptr39 = getelementptr inbounds %struct.litptr, %struct.litptr* %43, i32 0, i32 0
  %44 = load %struct.cliteral**, %struct.cliteral*** %litptr39, align 8
  %arrayidx40 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %44, i64 %idxprom38
  %45 = load %struct.cliteral*, %struct.cliteral** %arrayidx40, align 8
  %litvarlist41 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %45, i32 0, i32 2
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litvarlist41, align 8
  %call42 = call i32 @list_HasIntersection(%struct.LIST_HELP* %41, %struct.LIST_HELP* %46)
  store i32 %call42, i32* %hasinter, align 4
  %47 = load i32, i32* %hasinter, align 4
  %tobool43 = icmp ne i32 %47, 0
  br i1 %tobool43, label %if.then.44, label %if.end.55

if.then.44:                                       ; preds = %if.then.32
  %call45 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0))
  %48 = load i32, i32* %i, align 4
  %conv46 = sext i32 %48 to i64
  %49 = inttoptr i64 %conv46 to i8*
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %complist, align 8
  %call47 = call %struct.LIST_HELP* @list_Cons(i8* %49, %struct.LIST_HELP* %50)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %complist, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %51 to i64
  %52 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %litptr49 = getelementptr inbounds %struct.litptr, %struct.litptr* %52, i32 0, i32 0
  %53 = load %struct.cliteral**, %struct.cliteral*** %litptr49, align 8
  %arrayidx50 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %53, i64 %idxprom48
  %54 = load %struct.cliteral*, %struct.cliteral** %arrayidx50, align 8
  %litindex51 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %54, i32 0, i32 1
  %55 = load i32, i32* %litindex51, align 4
  %conv52 = sext i32 %55 to i64
  %56 = inttoptr i64 %conv52 to i8*
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %compindexlist, align 8
  %call53 = call %struct.LIST_HELP* @list_Cons(i8* %56, %struct.LIST_HELP* %57)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %compindexlist, align 8
  %58 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %59 = load i32, i32* %i, align 4
  %call54 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %58, i32 %59)
  call void @literal_PutUsed(%struct.cliteral* %call54, i32 1)
  store i32 1, i32* %found, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.44, %if.then.32
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %for.body.28
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %60 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %60, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.25

for.end.59:                                       ; preds = %for.cond.25
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.59
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call61 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %61)
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.20

for.end.62:                                       ; preds = %for.cond.20
  %62 = load i32, i32* %found, align 4
  %tobool63 = icmp ne i32 %62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %for.end.62
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %complist, align 8
  call void @list_Delete(%struct.LIST_HELP* %63)
  store i32 0, i32* %found, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %for.end.62
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.66

if.end.66:                                        ; preds = %while.end, %entry
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %compindexlist, align 8
  store %struct.LIST_HELP* %64, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.then.17
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %65
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #2 {
entry:
  ret %struct.LIST_HELP* null
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

declare i32 @list_HasIntersection(%struct.LIST_HELP*, %struct.LIST_HELP*) #1

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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
