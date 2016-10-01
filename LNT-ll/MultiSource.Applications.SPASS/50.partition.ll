; ModuleID = './MultiSource.Applications.SPASS/50.partition.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }

@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4

; Function Attrs: nounwind uwtable
define i32* @part_Create(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %result = alloca i32*, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %0, 3
  %add = add nsw i32 %mul, 3
  %call = call i8* @memory_Calloc(i32 %add, i32 4)
  %1 = bitcast i8* %call to i32*
  %2 = load i32, i32* %size.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i32, i32* %add.ptr, i64 3
  store i32* %add.ptr1, i32** %result, align 8
  %3 = load i32, i32* %size.addr, align 4
  %4 = load i32*, i32** %result, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 -1
  store i32 %3, i32* %arrayidx, align 4
  %5 = load i32, i32* %size.addr, align 4
  %mul2 = mul nsw i32 %5, 3
  %add3 = add nsw i32 %mul2, 3
  %6 = load i32*, i32** %result, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 -2
  store i32 %add3, i32* %arrayidx4, align 4
  %7 = load i32*, i32** %result, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 -3
  store i32 1, i32* %arrayidx5, align 4
  %8 = load i32*, i32** %result, align 8
  ret i32* %8
}

declare i8* @memory_Calloc(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32* @part_Init(i32* %p, i32 %size) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %alloc = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 -2
  %1 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %1, 3
  %div = sdiv i32 %sub, 3
  store i32 %div, i32* %alloc, align 4
  %2 = load i32, i32* %size.addr, align 4
  %3 = load i32, i32* %alloc, align 4
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %p.addr, align 8
  call void @part_Free(i32* %4)
  %5 = load i32, i32* %size.addr, align 4
  %call = call i32* @part_Create(i32 %5)
  store i32* %call, i32** %p.addr, align 8
  br label %if.end.10

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %size.addr, align 4
  %7 = load i32*, i32** %p.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %7, i64 -1
  store i32 %6, i32* %arrayidx1, align 4
  %8 = load i32*, i32** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 -3
  %9 = load i32, i32* %arrayidx2, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %arrayidx2, align 4
  %10 = load i32*, i32** %p.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 -3
  %11 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp sle i32 %11, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %alloc, align 4
  %cmp6 = icmp slt i32 %12, %13
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32*, i32** %p.addr, align 8
  %15 = load i32, i32* %i, align 4
  %call7 = call i32* @part_SetStamp(i32* %14, i32 %15, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %16, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32*, i32** %p.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 -3
  store i32 1, i32* %arrayidx9, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %18 = load i32*, i32** %p.addr, align 8
  ret i32* %18
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @part_Free(i32* %p) #2 {
entry:
  %p.addr = alloca i32*, align 8
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %p.addr, align 8
  %2 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 -2
  %3 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %3, 3
  %div = sdiv i32 %sub, 3
  %idx.ext = sext i32 %div to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %idx.neg
  %add.ptr1 = getelementptr inbounds i32, i32* %add.ptr, i64 -3
  %4 = bitcast i32* %add.ptr1 to i8*
  %5 = load i32*, i32** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 -2
  %6 = load i32, i32* %arrayidx2, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 4
  %conv3 = trunc i64 %mul to i32
  call void @memory_Free(i8* %4, i32 %conv3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @part_SetStamp(i32* %p, i32 %e, i32 %stamp) #2 {
entry:
  %p.addr = alloca i32*, align 8
  %e.addr = alloca i32, align 4
  %stamp.addr = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %e, i32* %e.addr, align 4
  store i32 %stamp, i32* %stamp.addr, align 4
  %0 = load i32, i32* %stamp.addr, align 4
  %1 = load i32, i32* %e.addr, align 4
  %sub = sub nsw i32 -4, %1
  %idxprom = sext i32 %sub to i64
  %2 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  %3 = load i32*, i32** %p.addr, align 8
  ret i32* %3
}

; Function Attrs: nounwind uwtable
define i32 @part_Find(i32* %p, i32 %e) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %e.addr = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %e, i32* %e.addr, align 4
  %0 = load i32*, i32** %p.addr, align 8
  %1 = load i32*, i32** %p.addr, align 8
  %2 = load i32, i32* %e.addr, align 4
  %call = call i32 @part_NF(i32* %1, i32 %2)
  %call1 = call i32 @part_GetClass(i32* %0, i32 %call)
  %sub = sub nsw i32 0, %call1
  %sub2 = sub nsw i32 %sub, 1
  ret i32 %sub2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @part_GetClass(i32* %p, i32 %e) #2 {
entry:
  %p.addr = alloca i32*, align 8
  %e.addr = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %e, i32* %e.addr, align 4
  %0 = load i32, i32* %e.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @part_NF(i32* %p, i32 %e) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %e.addr = alloca i32, align 4
  %nf = alloca i32, align 4
  %aux = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %e, i32* %e.addr, align 4
  %0 = load i32, i32* %e.addr, align 4
  store i32 %0, i32* %nf, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32*, i32** %p.addr, align 8
  %2 = load i32*, i32** %p.addr, align 8
  %3 = load i32, i32* %nf, align 4
  %call = call i32 @part_DelayedInit(i32* %2, i32 %3)
  %call1 = call i32 @part_GetClass(i32* %1, i32 %call)
  %cmp = icmp sge i32 %call1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32*, i32** %p.addr, align 8
  %5 = load i32, i32* %nf, align 4
  %call2 = call i32 @part_GetClass(i32* %4, i32 %5)
  store i32 %call2, i32* %nf, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.5, %while.end
  %6 = load i32, i32* %e.addr, align 4
  %7 = load i32, i32* %nf, align 4
  %cmp4 = icmp ne i32 %6, %7
  br i1 %cmp4, label %while.body.5, label %while.end.8

while.body.5:                                     ; preds = %while.cond.3
  %8 = load i32*, i32** %p.addr, align 8
  %9 = load i32, i32* %e.addr, align 4
  %call6 = call i32 @part_GetClass(i32* %8, i32 %9)
  store i32 %call6, i32* %aux, align 4
  %10 = load i32*, i32** %p.addr, align 8
  %11 = load i32, i32* %e.addr, align 4
  %12 = load i32, i32* %nf, align 4
  %call7 = call i32* @part_SetClass(i32* %10, i32 %11, i32 %12)
  %13 = load i32, i32* %aux, align 4
  store i32 %13, i32* %e.addr, align 4
  br label %while.cond.3

while.end.8:                                      ; preds = %while.cond.3
  %14 = load i32, i32* %nf, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32* @part_Union(i32* %p, i32 %c1, i32 %c2) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %nf1 = alloca i32, align 4
  %nf2 = alloca i32, align 4
  %aux = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %c1, i32* %c1.addr, align 4
  store i32 %c2, i32* %c2.addr, align 4
  %0 = load i32*, i32** %p.addr, align 8
  %1 = load i32, i32* %c1.addr, align 4
  %call = call i32 @part_NF(i32* %0, i32 %1)
  store i32 %call, i32* %nf1, align 4
  %2 = load i32*, i32** %p.addr, align 8
  %3 = load i32, i32* %c2.addr, align 4
  %call1 = call i32 @part_NF(i32* %2, i32 %3)
  store i32 %call1, i32* %nf2, align 4
  %4 = load i32, i32* %nf1, align 4
  %5 = load i32, i32* %nf2, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %6 = load i32*, i32** %p.addr, align 8
  %7 = load i32, i32* %nf1, align 4
  %call2 = call i32 @part_GetClassSize(i32* %6, i32 %7)
  %8 = load i32*, i32** %p.addr, align 8
  %9 = load i32, i32* %nf2, align 4
  %call3 = call i32 @part_GetClassSize(i32* %8, i32 %9)
  %cmp4 = icmp slt i32 %call2, %call3
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %10 = load i32, i32* %nf1, align 4
  store i32 %10, i32* %aux, align 4
  %11 = load i32, i32* %nf2, align 4
  store i32 %11, i32* %nf1, align 4
  %12 = load i32, i32* %aux, align 4
  store i32 %12, i32* %nf2, align 4
  %13 = load i32*, i32** %p.addr, align 8
  %14 = load i32, i32* %nf1, align 4
  %15 = load i32*, i32** %p.addr, align 8
  %16 = load i32, i32* %nf2, align 4
  %call6 = call i32 @part_GetClass(i32* %15, i32 %16)
  %call7 = call i32* @part_SetClass(i32* %13, i32 %14, i32 %call6)
  %17 = load i32*, i32** %p.addr, align 8
  %18 = load i32*, i32** %p.addr, align 8
  %19 = load i32, i32* %nf2, align 4
  %call8 = call i32 @part_GetClass(i32* %18, i32 %19)
  %sub = sub nsw i32 0, %call8
  %sub9 = sub nsw i32 %sub, 1
  %20 = load i32, i32* %nf1, align 4
  %call10 = call i32* @part_SetClass(i32* %17, i32 %sub9, i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %21 = load i32*, i32** %p.addr, align 8
  %22 = load i32, i32* %nf2, align 4
  %23 = load i32, i32* %nf1, align 4
  %call11 = call i32* @part_SetClass(i32* %21, i32 %22, i32 %23)
  %24 = load i32*, i32** %p.addr, align 8
  %25 = load i32, i32* %nf1, align 4
  %26 = load i32*, i32** %p.addr, align 8
  %27 = load i32, i32* %nf1, align 4
  %call12 = call i32 @part_GetClassSize(i32* %26, i32 %27)
  %28 = load i32*, i32** %p.addr, align 8
  %29 = load i32, i32* %nf2, align 4
  %call13 = call i32 @part_GetClassSize(i32* %28, i32 %29)
  %add = add nsw i32 %call12, %call13
  %call14 = call i32* @part_SetClassSize(i32* %24, i32 %25, i32 %add)
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  %30 = load i32*, i32** %p.addr, align 8
  ret i32* %30
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @part_GetClassSize(i32* %p, i32 %e) #2 {
entry:
  %p.addr = alloca i32*, align 8
  %e.addr = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %e, i32* %e.addr, align 4
  %0 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 -1
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32, i32* %e.addr, align 4
  %add = add nsw i32 %1, %2
  %idxprom = sext i32 %add to i64
  %3 = load i32*, i32** %p.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx1, align 4
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @part_SetClass(i32* %p, i32 %e, i32 %c) #2 {
entry:
  %p.addr = alloca i32*, align 8
  %e.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %e, i32* %e.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %1 = load i32, i32* %e.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  %3 = load i32*, i32** %p.addr, align 8
  ret i32* %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @part_SetClassSize(i32* %p, i32 %e, i32 %classsize) #2 {
entry:
  %p.addr = alloca i32*, align 8
  %e.addr = alloca i32, align 4
  %classsize.addr = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %e, i32* %e.addr, align 4
  store i32 %classsize, i32* %classsize.addr, align 4
  %0 = load i32, i32* %classsize.addr, align 4
  %1 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 -1
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %e.addr, align 4
  %add = add nsw i32 %2, %3
  %idxprom = sext i32 %add to i64
  %4 = load i32*, i32** %p.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 %0, i32* %arrayidx1, align 4
  %5 = load i32*, i32** %p.addr, align 8
  ret i32* %5
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
define internal i32 @part_DelayedInit(i32* %p, i32 %e) #2 {
entry:
  %p.addr = alloca i32*, align 8
  %e.addr = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %e, i32* %e.addr, align 4
  %0 = load i32*, i32** %p.addr, align 8
  %1 = load i32, i32* %e.addr, align 4
  %call = call i32 @part_Stamped(i32* %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %p.addr, align 8
  %3 = load i32, i32* %e.addr, align 4
  %4 = load i32, i32* %e.addr, align 4
  %sub = sub nsw i32 0, %4
  %sub1 = sub nsw i32 %sub, 1
  %call2 = call i32* @part_SetClass(i32* %2, i32 %3, i32 %sub1)
  %5 = load i32*, i32** %p.addr, align 8
  %6 = load i32, i32* %e.addr, align 4
  %call3 = call i32* @part_SetClassSize(i32* %5, i32 %6, i32 1)
  %7 = load i32*, i32** %p.addr, align 8
  %8 = load i32, i32* %e.addr, align 4
  %9 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 -3
  %10 = load i32, i32* %arrayidx, align 4
  %call4 = call i32* @part_SetStamp(i32* %7, i32 %8, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %e.addr, align 4
  ret i32 %11
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @part_Stamped(i32* %p, i32 %e) #2 {
entry:
  %p.addr = alloca i32*, align 8
  %e.addr = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %e, i32* %e.addr, align 4
  %0 = load i32*, i32** %p.addr, align 8
  %1 = load i32, i32* %e.addr, align 4
  %call = call i32 @part_GetStamp(i32* %0, i32 %1)
  %2 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 -3
  %3 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %call, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @part_GetStamp(i32* %p, i32 %e) #2 {
entry:
  %p.addr = alloca i32*, align 8
  %e.addr = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %e, i32* %e.addr, align 4
  %0 = load i32, i32* %e.addr, align 4
  %sub = sub nsw i32 -4, %0
  %idxprom = sext i32 %sub to i64
  %1 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
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
