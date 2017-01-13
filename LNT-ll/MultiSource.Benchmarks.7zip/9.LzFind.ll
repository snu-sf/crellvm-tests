; ModuleID = './MultiSource.Benchmarks.7zip/9.LzFind.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CMatchFinder = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i8*, %struct.ISeqInStream*, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [256 x i32] }
%struct.ISeqInStream = type { i32 (i8*, i8*, i64*)* }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct._IMatchFinder = type { void (i8*)*, i8 (i8*, i32)*, i32 (i8*)*, i8* (i8*)*, i32 (i8*, i32*)*, void (i8*, i32)* }

; Function Attrs: nounwind uwtable
define i8* @MatchFinder_GetPointerToCurrentPos(%struct._CMatchFinder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define zeroext i8 @MatchFinder_GetIndexByte(%struct._CMatchFinder* %p, i32 %index) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %index.addr = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %1, i32 0, i32 0
  %2 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define i32 @MatchFinder_GetNumAvailableBytes(%struct._CMatchFinder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 3
  %1 = load i32, i32* %streamPos, align 4
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %2, i32 0, i32 1
  %3 = load i32, i32* %pos, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define void @MatchFinder_ReduceOffsets(%struct._CMatchFinder* %p, i32 %subValue) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %subValue.addr = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32 %subValue, i32* %subValue.addr, align 4
  %0 = load i32, i32* %subValue.addr, align 4
  %1 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %1, i32 0, i32 2
  %2 = load i32, i32* %posLimit, align 4
  %sub = sub i32 %2, %0
  store i32 %sub, i32* %posLimit, align 4
  %3 = load i32, i32* %subValue.addr, align 4
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 1
  %5 = load i32, i32* %pos, align 4
  %sub1 = sub i32 %5, %3
  store i32 %sub1, i32* %pos, align 4
  %6 = load i32, i32* %subValue.addr, align 4
  %7 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %7, i32 0, i32 3
  %8 = load i32, i32* %streamPos, align 4
  %sub2 = sub i32 %8, %6
  store i32 %sub2, i32* %streamPos, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @MatchFinder_MoveBlock(%struct._CMatchFinder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %bufferBase = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 12
  %1 = load i8*, i8** %bufferBase, align 8
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %2, i32 0, i32 0
  %3 = load i8*, i8** %buffer, align 8
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %keepSizeBefore = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 16
  %5 = load i32, i32* %keepSizeBefore, align 4
  %idx.ext = zext i32 %5 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.neg
  %6 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %6, i32 0, i32 3
  %7 = load i32, i32* %streamPos, align 4
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %8, i32 0, i32 1
  %9 = load i32, i32* %pos, align 4
  %sub = sub i32 %7, %9
  %10 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %keepSizeBefore1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %10, i32 0, i32 16
  %11 = load i32, i32* %keepSizeBefore1, align 4
  %add = add i32 %sub, %11
  %conv = zext i32 %add to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %1, i8* %add.ptr, i64 %conv, i32 1, i1 false)
  %12 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %bufferBase2 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %12, i32 0, i32 12
  %13 = load i8*, i8** %bufferBase2, align 8
  %14 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %keepSizeBefore3 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %14, i32 0, i32 16
  %15 = load i32, i32* %keepSizeBefore3, align 4
  %idx.ext4 = zext i32 %15 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %13, i64 %idx.ext4
  %16 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer6 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %16, i32 0, i32 0
  store i8* %add.ptr5, i8** %buffer6, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @MatchFinder_NeedMove(%struct._CMatchFinder* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._CMatchFinder*, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %directInput = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 19
  %1 = load i32, i32* %directInput, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %bufferBase = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %2, i32 0, i32 12
  %3 = load i8*, i8** %bufferBase, align 8
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %blockSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 15
  %5 = load i32, i32* %blockSize, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %6 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %6, i32 0, i32 0
  %7 = load i8*, i8** %buffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %keepSizeAfter = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %8, i32 0, i32 17
  %9 = load i32, i32* %keepSizeAfter, align 4
  %conv = zext i32 %9 to i64
  %cmp = icmp ule i64 %sub.ptr.sub, %conv
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @MatchFinder_ReadIfRequired(%struct._CMatchFinder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamEndWasReached = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 14
  %1 = load i32, i32* %streamEndWasReached, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.2

if.end:                                           ; preds = %entry
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %keepSizeAfter = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %2, i32 0, i32 17
  %3 = load i32, i32* %keepSizeAfter, align 4
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 3
  %5 = load i32, i32* %streamPos, align 4
  %6 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %6, i32 0, i32 1
  %7 = load i32, i32* %pos, align 4
  %sub = sub i32 %5, %7
  %cmp = icmp uge i32 %3, %sub
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_ReadBlock(%struct._CMatchFinder* %8)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then, %if.then.1, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MatchFinder_ReadBlock(%struct._CMatchFinder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %curSize = alloca i32, align 4
  %dest = alloca i8*, align 8
  %size = alloca i64, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamEndWasReached = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 14
  %1 = load i32, i32* %streamEndWasReached, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %result = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %2, i32 0, i32 27
  %3 = load i32, i32* %result, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %directInput = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 19
  %5 = load i32, i32* %directInput, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then.2, label %if.end.19

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %6, i32 0, i32 3
  %7 = load i32, i32* %streamPos, align 4
  %sub = sub i32 -1, %7
  store i32 %sub, i32* %curSize, align 4
  %8 = load i32, i32* %curSize, align 4
  %conv = zext i32 %8 to i64
  %9 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %directInputRem = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %9, i32 0, i32 20
  %10 = load i64, i64* %directInputRem, align 8
  %cmp3 = icmp ugt i64 %conv, %10
  br i1 %cmp3, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.then.2
  %11 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %directInputRem6 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %11, i32 0, i32 20
  %12 = load i64, i64* %directInputRem6, align 8
  %conv7 = trunc i64 %12 to i32
  store i32 %conv7, i32* %curSize, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.then.2
  %13 = load i32, i32* %curSize, align 4
  %conv9 = zext i32 %13 to i64
  %14 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %directInputRem10 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %14, i32 0, i32 20
  %15 = load i64, i64* %directInputRem10, align 8
  %sub11 = sub i64 %15, %conv9
  store i64 %sub11, i64* %directInputRem10, align 8
  %16 = load i32, i32* %curSize, align 4
  %17 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamPos12 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %17, i32 0, i32 3
  %18 = load i32, i32* %streamPos12, align 4
  %add = add i32 %18, %16
  store i32 %add, i32* %streamPos12, align 4
  %19 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %directInputRem13 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %19, i32 0, i32 20
  %20 = load i64, i64* %directInputRem13, align 8
  %cmp14 = icmp eq i64 %20, 0
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.8
  %21 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamEndWasReached17 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %21, i32 0, i32 14
  store i32 1, i32* %streamEndWasReached17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.8
  br label %return

if.end.19:                                        ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.end.49, %if.end.19
  %22 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %22, i32 0, i32 0
  %23 = load i8*, i8** %buffer, align 8
  %24 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamPos20 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %24, i32 0, i32 3
  %25 = load i32, i32* %streamPos20, align 4
  %26 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %26, i32 0, i32 1
  %27 = load i32, i32* %pos, align 4
  %sub21 = sub i32 %25, %27
  %idx.ext = zext i32 %sub21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  %28 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %bufferBase = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %28, i32 0, i32 12
  %29 = load i8*, i8** %bufferBase, align 8
  %30 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %blockSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %30, i32 0, i32 15
  %31 = load i32, i32* %blockSize, align 4
  %idx.ext22 = zext i32 %31 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %29, i64 %idx.ext22
  %32 = load i8*, i8** %dest, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %size, align 8
  %33 = load i64, i64* %size, align 8
  %cmp24 = icmp eq i64 %33, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.cond
  br label %return

if.end.27:                                        ; preds = %for.cond
  %34 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %stream = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %34, i32 0, i32 13
  %35 = load %struct.ISeqInStream*, %struct.ISeqInStream** %stream, align 8
  %Read = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %35, i32 0, i32 0
  %36 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %Read, align 8
  %37 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %stream28 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %37, i32 0, i32 13
  %38 = load %struct.ISeqInStream*, %struct.ISeqInStream** %stream28, align 8
  %39 = bitcast %struct.ISeqInStream* %38 to i8*
  %40 = load i8*, i8** %dest, align 8
  %call = call i32 %36(i8* %39, i8* %40, i64* %size)
  %41 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %result29 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %41, i32 0, i32 27
  store i32 %call, i32* %result29, align 4
  %42 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %result30 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %42, i32 0, i32 27
  %43 = load i32, i32* %result30, align 4
  %cmp31 = icmp ne i32 %43, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.27
  br label %return

if.end.34:                                        ; preds = %if.end.27
  %44 = load i64, i64* %size, align 8
  %cmp35 = icmp eq i64 %44, 0
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.34
  %45 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamEndWasReached38 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %45, i32 0, i32 14
  store i32 1, i32* %streamEndWasReached38, align 4
  br label %return

if.end.39:                                        ; preds = %if.end.34
  %46 = load i64, i64* %size, align 8
  %conv40 = trunc i64 %46 to i32
  %47 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamPos41 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %47, i32 0, i32 3
  %48 = load i32, i32* %streamPos41, align 4
  %add42 = add i32 %48, %conv40
  store i32 %add42, i32* %streamPos41, align 4
  %49 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamPos43 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %49, i32 0, i32 3
  %50 = load i32, i32* %streamPos43, align 4
  %51 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos44 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %51, i32 0, i32 1
  %52 = load i32, i32* %pos44, align 4
  %sub45 = sub i32 %50, %52
  %53 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %keepSizeAfter = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %53, i32 0, i32 17
  %54 = load i32, i32* %keepSizeAfter, align 4
  %cmp46 = icmp ugt i32 %sub45, %54
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.39
  br label %return

if.end.49:                                        ; preds = %if.end.39
  br label %for.cond

return:                                           ; preds = %if.then.48, %if.then.37, %if.then.33, %if.then.26, %if.end.18, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @MatchFinder_Construct(%struct._CMatchFinder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %bufferBase = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 12
  store i8* null, i8** %bufferBase, align 8
  %1 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %directInput = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %1, i32 0, i32 19
  store i32 0, i32* %directInput, align 4
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %2, i32 0, i32 8
  store i32* null, i32** %hash, align 8
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_SetDefaultSettings(%struct._CMatchFinder* %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %4, 256
  br i1 %cmp, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %r, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %6, 8
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %r, align 4
  %shr = lshr i32 %7, 1
  %8 = load i32, i32* %r, align 4
  %and = and i32 %8, 1
  %sub = sub i32 %and, 1
  %neg = xor i32 %sub, -1
  %and4 = and i32 -306674912, %neg
  %xor = xor i32 %shr, %and4
  store i32 %xor, i32* %r, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %10 = load i32, i32* %r, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom = zext i32 %11 to i64
  %12 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %12, i32 0, i32 28
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %crc, i32 0, i64 %idxprom
  store i32 %10, i32* %arrayidx, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc6 = add i32 %13, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MatchFinder_SetDefaultSettings(%struct._CMatchFinder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cutValue = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 11
  store i32 32, i32* %cutValue, align 4
  %1 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %btMode = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %1, i32 0, i32 21
  store i32 1, i32* %btMode, align 4
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %numHashBytes = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %2, i32 0, i32 18
  store i32 4, i32* %numHashBytes, align 4
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %bigHash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %3, i32 0, i32 22
  store i32 0, i32* %bigHash, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @MatchFinder_Free(%struct._CMatchFinder* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %1 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @MatchFinder_FreeThisClassMemory(%struct._CMatchFinder* %0, %struct.ISzAlloc* %1)
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %3 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @LzInWindow_Free(%struct._CMatchFinder* %2, %struct.ISzAlloc* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MatchFinder_FreeThisClassMemory(%struct._CMatchFinder* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %0, i32 0, i32 1
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = bitcast %struct.ISzAlloc* %2 to i8*
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 8
  %5 = load i32*, i32** %hash, align 8
  %6 = bitcast i32* %5 to i8*
  call void %1(i8* %3, i8* %6)
  %7 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %7, i32 0, i32 8
  store i32* null, i32** %hash1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LzInWindow_Free(%struct._CMatchFinder* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %directInput = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 19
  %1 = load i32, i32* %directInput, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %2, i32 0, i32 1
  %3 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %4 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %5 = bitcast %struct.ISzAlloc* %4 to i8*
  %6 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %bufferBase = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %6, i32 0, i32 12
  %7 = load i8*, i8** %bufferBase, align 8
  call void %3(i8* %5, i8* %7)
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %bufferBase1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %8, i32 0, i32 12
  store i8* null, i8** %bufferBase1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @MatchFinder_Create(%struct._CMatchFinder* %p, i32 %historySize, i32 %keepAddBufferBefore, i32 %matchMaxLen, i32 %keepAddBufferAfter, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %historySize.addr = alloca i32, align 4
  %keepAddBufferBefore.addr = alloca i32, align 4
  %matchMaxLen.addr = alloca i32, align 4
  %keepAddBufferAfter.addr = alloca i32, align 4
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %sizeReserv = alloca i32, align 4
  %newCyclicBufferSize = alloca i32, align 4
  %hs = alloca i32, align 4
  %prevSize = alloca i32, align 4
  %newSize = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32 %historySize, i32* %historySize.addr, align 4
  store i32 %keepAddBufferBefore, i32* %keepAddBufferBefore.addr, align 4
  store i32 %matchMaxLen, i32* %matchMaxLen.addr, align 4
  store i32 %keepAddBufferAfter, i32* %keepAddBufferAfter.addr, align 4
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load i32, i32* %historySize.addr, align 4
  %cmp = icmp ugt i32 %0, -1073741824
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @MatchFinder_Free(%struct._CMatchFinder* %1, %struct.ISzAlloc* %2)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %historySize.addr, align 4
  %shr = lshr i32 %3, 1
  store i32 %shr, i32* %sizeReserv, align 4
  %4 = load i32, i32* %historySize.addr, align 4
  %cmp1 = icmp ugt i32 %4, -2147483648
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %historySize.addr, align 4
  %shr3 = lshr i32 %5, 2
  store i32 %shr3, i32* %sizeReserv, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %6 = load i32, i32* %keepAddBufferBefore.addr, align 4
  %7 = load i32, i32* %matchMaxLen.addr, align 4
  %add = add i32 %6, %7
  %8 = load i32, i32* %keepAddBufferAfter.addr, align 4
  %add5 = add i32 %add, %8
  %div = udiv i32 %add5, 2
  %add6 = add i32 %div, 524288
  %9 = load i32, i32* %sizeReserv, align 4
  %add7 = add i32 %9, %add6
  store i32 %add7, i32* %sizeReserv, align 4
  %10 = load i32, i32* %historySize.addr, align 4
  %11 = load i32, i32* %keepAddBufferBefore.addr, align 4
  %add8 = add i32 %10, %11
  %add9 = add i32 %add8, 1
  %12 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %keepSizeBefore = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %12, i32 0, i32 16
  store i32 %add9, i32* %keepSizeBefore, align 4
  %13 = load i32, i32* %matchMaxLen.addr, align 4
  %14 = load i32, i32* %keepAddBufferAfter.addr, align 4
  %add10 = add i32 %13, %14
  %15 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %keepSizeAfter = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %15, i32 0, i32 17
  store i32 %add10, i32* %keepSizeAfter, align 4
  %16 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %17 = load i32, i32* %sizeReserv, align 4
  %18 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call = call i32 @LzInWindow_Create(%struct._CMatchFinder* %16, i32 %17, %struct.ISzAlloc* %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.11, label %if.end.75

if.then.11:                                       ; preds = %if.end.4
  %19 = load i32, i32* %historySize.addr, align 4
  %add12 = add i32 %19, 1
  store i32 %add12, i32* %newCyclicBufferSize, align 4
  %20 = load i32, i32* %matchMaxLen.addr, align 4
  %21 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %matchMaxLen13 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %21, i32 0, i32 7
  store i32 %20, i32* %matchMaxLen13, align 4
  %22 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %fixedHashSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %22, i32 0, i32 24
  store i32 0, i32* %fixedHashSize, align 4
  %23 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %numHashBytes = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %23, i32 0, i32 18
  %24 = load i32, i32* %numHashBytes, align 4
  %cmp14 = icmp eq i32 %24, 2
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.11
  store i32 65535, i32* %hs, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.then.11
  %25 = load i32, i32* %historySize.addr, align 4
  %sub = sub i32 %25, 1
  store i32 %sub, i32* %hs, align 4
  %26 = load i32, i32* %hs, align 4
  %shr16 = lshr i32 %26, 1
  %27 = load i32, i32* %hs, align 4
  %or = or i32 %27, %shr16
  store i32 %or, i32* %hs, align 4
  %28 = load i32, i32* %hs, align 4
  %shr17 = lshr i32 %28, 2
  %29 = load i32, i32* %hs, align 4
  %or18 = or i32 %29, %shr17
  store i32 %or18, i32* %hs, align 4
  %30 = load i32, i32* %hs, align 4
  %shr19 = lshr i32 %30, 4
  %31 = load i32, i32* %hs, align 4
  %or20 = or i32 %31, %shr19
  store i32 %or20, i32* %hs, align 4
  %32 = load i32, i32* %hs, align 4
  %shr21 = lshr i32 %32, 8
  %33 = load i32, i32* %hs, align 4
  %or22 = or i32 %33, %shr21
  store i32 %or22, i32* %hs, align 4
  %34 = load i32, i32* %hs, align 4
  %shr23 = lshr i32 %34, 1
  store i32 %shr23, i32* %hs, align 4
  %35 = load i32, i32* %hs, align 4
  %or24 = or i32 %35, 65535
  store i32 %or24, i32* %hs, align 4
  %36 = load i32, i32* %hs, align 4
  %cmp25 = icmp ugt i32 %36, 16777216
  br i1 %cmp25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %if.else
  %37 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %numHashBytes27 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %37, i32 0, i32 18
  %38 = load i32, i32* %numHashBytes27, align 4
  %cmp28 = icmp eq i32 %38, 3
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.then.26
  store i32 16777215, i32* %hs, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %if.then.26
  %39 = load i32, i32* %hs, align 4
  %shr31 = lshr i32 %39, 1
  store i32 %shr31, i32* %hs, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.15
  %40 = load i32, i32* %hs, align 4
  %41 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hashMask = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %41, i32 0, i32 10
  store i32 %40, i32* %hashMask, align 4
  %42 = load i32, i32* %hs, align 4
  %inc = add i32 %42, 1
  store i32 %inc, i32* %hs, align 4
  %43 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %numHashBytes35 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %43, i32 0, i32 18
  %44 = load i32, i32* %numHashBytes35, align 4
  %cmp36 = icmp ugt i32 %44, 2
  br i1 %cmp36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.34
  %45 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %fixedHashSize38 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %45, i32 0, i32 24
  %46 = load i32, i32* %fixedHashSize38, align 4
  %add39 = add i32 %46, 1024
  store i32 %add39, i32* %fixedHashSize38, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.end.34
  %47 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %numHashBytes41 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %47, i32 0, i32 18
  %48 = load i32, i32* %numHashBytes41, align 4
  %cmp42 = icmp ugt i32 %48, 3
  br i1 %cmp42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.end.40
  %49 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %fixedHashSize44 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %49, i32 0, i32 24
  %50 = load i32, i32* %fixedHashSize44, align 4
  %add45 = add i32 %50, 65536
  store i32 %add45, i32* %fixedHashSize44, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.end.40
  %51 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %numHashBytes47 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %51, i32 0, i32 18
  %52 = load i32, i32* %numHashBytes47, align 4
  %cmp48 = icmp ugt i32 %52, 4
  br i1 %cmp48, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.end.46
  %53 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %fixedHashSize50 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %53, i32 0, i32 24
  %54 = load i32, i32* %fixedHashSize50, align 4
  %add51 = add i32 %54, 1048576
  store i32 %add51, i32* %fixedHashSize50, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %if.end.46
  %55 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %fixedHashSize53 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %55, i32 0, i32 24
  %56 = load i32, i32* %fixedHashSize53, align 4
  %57 = load i32, i32* %hs, align 4
  %add54 = add i32 %57, %56
  store i32 %add54, i32* %hs, align 4
  %58 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hashSizeSum = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %58, i32 0, i32 25
  %59 = load i32, i32* %hashSizeSum, align 4
  %60 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %numSons = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %60, i32 0, i32 26
  %61 = load i32, i32* %numSons, align 4
  %add55 = add i32 %59, %61
  store i32 %add55, i32* %prevSize, align 4
  %62 = load i32, i32* %historySize.addr, align 4
  %63 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %historySize56 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %63, i32 0, i32 23
  store i32 %62, i32* %historySize56, align 4
  %64 = load i32, i32* %hs, align 4
  %65 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hashSizeSum57 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %65, i32 0, i32 25
  store i32 %64, i32* %hashSizeSum57, align 4
  %66 = load i32, i32* %newCyclicBufferSize, align 4
  %67 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %67, i32 0, i32 6
  store i32 %66, i32* %cyclicBufferSize, align 4
  %68 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %btMode = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %68, i32 0, i32 21
  %69 = load i32, i32* %btMode, align 4
  %tobool58 = icmp ne i32 %69, 0
  br i1 %tobool58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.52
  %70 = load i32, i32* %newCyclicBufferSize, align 4
  %mul = mul i32 %70, 2
  br label %cond.end

cond.false:                                       ; preds = %if.end.52
  %71 = load i32, i32* %newCyclicBufferSize, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %71, %cond.false ]
  %72 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %numSons59 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %72, i32 0, i32 26
  store i32 %cond, i32* %numSons59, align 4
  %73 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hashSizeSum60 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %73, i32 0, i32 25
  %74 = load i32, i32* %hashSizeSum60, align 4
  %75 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %numSons61 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %75, i32 0, i32 26
  %76 = load i32, i32* %numSons61, align 4
  %add62 = add i32 %74, %76
  store i32 %add62, i32* %newSize, align 4
  %77 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %77, i32 0, i32 8
  %78 = load i32*, i32** %hash, align 8
  %cmp63 = icmp ne i32* %78, null
  br i1 %cmp63, label %land.lhs.true, label %if.end.66

land.lhs.true:                                    ; preds = %cond.end
  %79 = load i32, i32* %prevSize, align 4
  %80 = load i32, i32* %newSize, align 4
  %cmp64 = icmp eq i32 %79, %80
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.66:                                        ; preds = %land.lhs.true, %cond.end
  %81 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %82 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @MatchFinder_FreeThisClassMemory(%struct._CMatchFinder* %81, %struct.ISzAlloc* %82)
  %83 = load i32, i32* %newSize, align 4
  %84 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call67 = call i32* @AllocRefs(i32 %83, %struct.ISzAlloc* %84)
  %85 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash68 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %85, i32 0, i32 8
  store i32* %call67, i32** %hash68, align 8
  %86 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash69 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %86, i32 0, i32 8
  %87 = load i32*, i32** %hash69, align 8
  %cmp70 = icmp ne i32* %87, null
  br i1 %cmp70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %if.end.66
  %88 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash72 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %88, i32 0, i32 8
  %89 = load i32*, i32** %hash72, align 8
  %90 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hashSizeSum73 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %90, i32 0, i32 25
  %91 = load i32, i32* %hashSizeSum73, align 4
  %idx.ext = zext i32 %91 to i64
  %add.ptr = getelementptr inbounds i32, i32* %89, i64 %idx.ext
  %92 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %92, i32 0, i32 9
  store i32* %add.ptr, i32** %son, align 8
  store i32 1, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.66
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.4
  %93 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %94 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @MatchFinder_Free(%struct._CMatchFinder* %93, %struct.ISzAlloc* %94)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.75, %if.then.71, %if.then.65, %if.then
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal i32 @LzInWindow_Create(%struct._CMatchFinder* %p, i32 %keepSizeReserv, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %keepSizeReserv.addr = alloca i32, align 4
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %blockSize = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32 %keepSizeReserv, i32* %keepSizeReserv.addr, align 4
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %keepSizeBefore = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 16
  %1 = load i32, i32* %keepSizeBefore, align 4
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %keepSizeAfter = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %2, i32 0, i32 17
  %3 = load i32, i32* %keepSizeAfter, align 4
  %add = add i32 %1, %3
  %4 = load i32, i32* %keepSizeReserv.addr, align 4
  %add1 = add i32 %add, %4
  store i32 %add1, i32* %blockSize, align 4
  %5 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %directInput = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %5, i32 0, i32 19
  %6 = load i32, i32* %directInput, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %blockSize, align 4
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %blockSize2 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %8, i32 0, i32 15
  store i32 %7, i32* %blockSize2, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %bufferBase = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %9, i32 0, i32 12
  %10 = load i8*, i8** %bufferBase, align 8
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %blockSize3 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %11, i32 0, i32 15
  %12 = load i32, i32* %blockSize3, align 4
  %13 = load i32, i32* %blockSize, align 4
  %cmp4 = icmp ne i32 %12, %13
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %14 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %15 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @LzInWindow_Free(%struct._CMatchFinder* %14, %struct.ISzAlloc* %15)
  %16 = load i32, i32* %blockSize, align 4
  %17 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %blockSize6 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %17, i32 0, i32 15
  store i32 %16, i32* %blockSize6, align 4
  %18 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %18, i32 0, i32 0
  %19 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %20 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %21 = bitcast %struct.ISzAlloc* %20 to i8*
  %22 = load i32, i32* %blockSize, align 4
  %conv = zext i32 %22 to i64
  %call = call i8* %19(i8* %21, i64 %conv)
  %23 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %bufferBase7 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %23, i32 0, i32 12
  store i8* %call, i8** %bufferBase7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %lor.lhs.false
  %24 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %bufferBase9 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %24, i32 0, i32 12
  %25 = load i8*, i8** %bufferBase9, align 8
  %cmp10 = icmp ne i8* %25, null
  %conv11 = zext i1 %cmp10 to i32
  store i32 %conv11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32* @AllocRefs(i32 %num, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32*, align 8
  %num.addr = alloca i32, align 4
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %sizeInBytes = alloca i64, align 8
  store i32 %num, i32* %num.addr, align 4
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load i32, i32* %num.addr, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, 4
  store i64 %mul, i64* %sizeInBytes, align 8
  %1 = load i64, i64* %sizeInBytes, align 8
  %div = udiv i64 %1, 4
  %2 = load i32, i32* %num.addr, align 4
  %conv1 = zext i32 %2 to i64
  %cmp = icmp ne i64 %div, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %3, i32 0, i32 0
  %4 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %5 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %6 = bitcast %struct.ISzAlloc* %5 to i8*
  %7 = load i64, i64* %sizeInBytes, align 8
  %call = call i8* %4(i8* %6, i64 %7)
  %8 = bitcast i8* %call to i32*
  store i32* %8, i32** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32*, i32** %retval
  ret i32* %9
}

; Function Attrs: nounwind uwtable
define void @MatchFinder_Init(%struct._CMatchFinder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %i = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hashSizeSum = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %1, i32 0, i32 25
  %2 = load i32, i32* %hashSizeSum, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 8
  %5 = load i32*, i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %7, i32 0, i32 5
  store i32 0, i32* %cyclicBufferPos, align 4
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %bufferBase = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %8, i32 0, i32 12
  %9 = load i8*, i8** %bufferBase, align 8
  %10 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %10, i32 0, i32 0
  store i8* %9, i8** %buffer, align 8
  %11 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %11, i32 0, i32 6
  %12 = load i32, i32* %cyclicBufferSize, align 4
  %13 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %13, i32 0, i32 3
  store i32 %12, i32* %streamPos, align 4
  %14 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %14, i32 0, i32 1
  store i32 %12, i32* %pos, align 4
  %15 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %result = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %15, i32 0, i32 27
  store i32 0, i32* %result, align 4
  %16 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamEndWasReached = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %16, i32 0, i32 14
  store i32 0, i32* %streamEndWasReached, align 4
  %17 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_ReadBlock(%struct._CMatchFinder* %17)
  %18 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_SetLimits(%struct._CMatchFinder* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MatchFinder_SetLimits(%struct._CMatchFinder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %limit = alloca i32, align 4
  %limit2 = alloca i32, align 4
  %lenLimit = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 1
  %1 = load i32, i32* %pos, align 4
  %sub = sub i32 -1, %1
  store i32 %sub, i32* %limit, align 4
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %2, i32 0, i32 6
  %3 = load i32, i32* %cyclicBufferSize, align 4
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 5
  %5 = load i32, i32* %cyclicBufferPos, align 4
  %sub1 = sub i32 %3, %5
  store i32 %sub1, i32* %limit2, align 4
  %6 = load i32, i32* %limit2, align 4
  %7 = load i32, i32* %limit, align 4
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %limit2, align 4
  store i32 %8, i32* %limit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %9, i32 0, i32 3
  %10 = load i32, i32* %streamPos, align 4
  %11 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos2 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %11, i32 0, i32 1
  %12 = load i32, i32* %pos2, align 4
  %sub3 = sub i32 %10, %12
  store i32 %sub3, i32* %limit2, align 4
  %13 = load i32, i32* %limit2, align 4
  %14 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %keepSizeAfter = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %14, i32 0, i32 17
  %15 = load i32, i32* %keepSizeAfter, align 4
  %cmp4 = icmp ule i32 %13, %15
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %16 = load i32, i32* %limit2, align 4
  %cmp6 = icmp ugt i32 %16, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  store i32 1, i32* %limit2, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %17 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %keepSizeAfter9 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %17, i32 0, i32 17
  %18 = load i32, i32* %keepSizeAfter9, align 4
  %19 = load i32, i32* %limit2, align 4
  %sub10 = sub i32 %19, %18
  store i32 %sub10, i32* %limit2, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end.8
  %20 = load i32, i32* %limit2, align 4
  %21 = load i32, i32* %limit, align 4
  %cmp12 = icmp ult i32 %20, %21
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %22 = load i32, i32* %limit2, align 4
  store i32 %22, i32* %limit, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %23 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamPos15 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %23, i32 0, i32 3
  %24 = load i32, i32* %streamPos15, align 4
  %25 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos16 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %25, i32 0, i32 1
  %26 = load i32, i32* %pos16, align 4
  %sub17 = sub i32 %24, %26
  store i32 %sub17, i32* %lenLimit, align 4
  %27 = load i32, i32* %lenLimit, align 4
  %28 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %matchMaxLen = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %28, i32 0, i32 7
  %29 = load i32, i32* %matchMaxLen, align 4
  %cmp18 = icmp ugt i32 %27, %29
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.14
  %30 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %matchMaxLen20 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %30, i32 0, i32 7
  %31 = load i32, i32* %matchMaxLen20, align 4
  store i32 %31, i32* %lenLimit, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.14
  %32 = load i32, i32* %lenLimit, align 4
  %33 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %lenLimit22 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %33, i32 0, i32 4
  store i32 %32, i32* %lenLimit22, align 4
  %34 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos23 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %34, i32 0, i32 1
  %35 = load i32, i32* %pos23, align 4
  %36 = load i32, i32* %limit, align 4
  %add = add i32 %35, %36
  %37 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %37, i32 0, i32 2
  store i32 %add, i32* %posLimit, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @MatchFinder_Normalize3(i32 %subValue, i32* %items, i32 %numItems) #0 {
entry:
  %subValue.addr = alloca i32, align 4
  %items.addr = alloca i32*, align 8
  %numItems.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %subValue, i32* %subValue.addr, align 4
  store i32* %items, i32** %items.addr, align 8
  store i32 %numItems, i32* %numItems.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %numItems.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i32*, i32** %items.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %value, align 4
  %5 = load i32, i32* %value, align 4
  %6 = load i32, i32* %subValue.addr, align 4
  %cmp1 = icmp ule i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, i32* %value, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %7 = load i32, i32* %subValue.addr, align 4
  %8 = load i32, i32* %value, align 4
  %sub = sub i32 %8, %7
  store i32 %sub, i32* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %value, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %10 to i64
  %11 = load i32*, i32** %items.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %11, i64 %idxprom2
  store i32 %9, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32* @GetMatchesSpec1(i32 %lenLimit, i32 %curMatch, i32 %pos, i8* %cur, i32* %son, i32 %_cyclicBufferPos, i32 %_cyclicBufferSize, i32 %cutValue, i32* %distances, i32 %maxLen) #0 {
entry:
  %retval = alloca i32*, align 8
  %lenLimit.addr = alloca i32, align 4
  %curMatch.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %cur.addr = alloca i8*, align 8
  %son.addr = alloca i32*, align 8
  %_cyclicBufferPos.addr = alloca i32, align 4
  %_cyclicBufferSize.addr = alloca i32, align 4
  %cutValue.addr = alloca i32, align 4
  %distances.addr = alloca i32*, align 8
  %maxLen.addr = alloca i32, align 4
  %ptr0 = alloca i32*, align 8
  %ptr1 = alloca i32*, align 8
  %len0 = alloca i32, align 4
  %len1 = alloca i32, align 4
  %delta = alloca i32, align 4
  %pair = alloca i32*, align 8
  %pb = alloca i8*, align 8
  %len = alloca i32, align 4
  store i32 %lenLimit, i32* %lenLimit.addr, align 4
  store i32 %curMatch, i32* %curMatch.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i8* %cur, i8** %cur.addr, align 8
  store i32* %son, i32** %son.addr, align 8
  store i32 %_cyclicBufferPos, i32* %_cyclicBufferPos.addr, align 4
  store i32 %_cyclicBufferSize, i32* %_cyclicBufferSize.addr, align 4
  store i32 %cutValue, i32* %cutValue.addr, align 4
  store i32* %distances, i32** %distances.addr, align 8
  store i32 %maxLen, i32* %maxLen.addr, align 4
  %0 = load i32*, i32** %son.addr, align 8
  %1 = load i32, i32* %_cyclicBufferPos.addr, align 4
  %shl = shl i32 %1, 1
  %idx.ext = zext i32 %shl to i64
  %add.ptr = getelementptr inbounds i32, i32* %0, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i32, i32* %add.ptr, i64 1
  store i32* %add.ptr1, i32** %ptr0, align 8
  %2 = load i32*, i32** %son.addr, align 8
  %3 = load i32, i32* %_cyclicBufferPos.addr, align 4
  %shl2 = shl i32 %3, 1
  %idx.ext3 = zext i32 %shl2 to i64
  %add.ptr4 = getelementptr inbounds i32, i32* %2, i64 %idx.ext3
  store i32* %add.ptr4, i32** %ptr1, align 8
  store i32 0, i32* %len0, align 4
  store i32 0, i32* %len1, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.72, %entry
  %4 = load i32, i32* %pos.addr, align 4
  %5 = load i32, i32* %curMatch.addr, align 4
  %sub = sub i32 %4, %5
  store i32 %sub, i32* %delta, align 4
  %6 = load i32, i32* %cutValue.addr, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %cutValue.addr, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %7 = load i32, i32* %delta, align 4
  %8 = load i32, i32* %_cyclicBufferSize.addr, align 4
  %cmp5 = icmp uge i32 %7, %8
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  %9 = load i32*, i32** %ptr1, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %ptr0, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %distances.addr, align 8
  store i32* %11, i32** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i32*, i32** %son.addr, align 8
  %13 = load i32, i32* %_cyclicBufferPos.addr, align 4
  %14 = load i32, i32* %delta, align 4
  %sub6 = sub i32 %13, %14
  %15 = load i32, i32* %delta, align 4
  %16 = load i32, i32* %_cyclicBufferPos.addr, align 4
  %cmp7 = icmp ugt i32 %15, %16
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load i32, i32* %_cyclicBufferSize.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 0, %cond.false ]
  %add = add i32 %sub6, %cond
  %shl8 = shl i32 %add, 1
  %idx.ext9 = zext i32 %shl8 to i64
  %add.ptr10 = getelementptr inbounds i32, i32* %12, i64 %idx.ext9
  store i32* %add.ptr10, i32** %pair, align 8
  %18 = load i8*, i8** %cur.addr, align 8
  %19 = load i32, i32* %delta, align 4
  %idx.ext11 = zext i32 %19 to i64
  %idx.neg = sub i64 0, %idx.ext11
  %add.ptr12 = getelementptr inbounds i8, i8* %18, i64 %idx.neg
  store i8* %add.ptr12, i8** %pb, align 8
  %20 = load i32, i32* %len0, align 4
  %21 = load i32, i32* %len1, align 4
  %cmp13 = icmp ult i32 %20, %21
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end
  %22 = load i32, i32* %len0, align 4
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end
  %23 = load i32, i32* %len1, align 4
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi i32 [ %22, %cond.true.14 ], [ %23, %cond.false.15 ]
  store i32 %cond17, i32* %len, align 4
  %24 = load i32, i32* %len, align 4
  %idxprom = zext i32 %24 to i64
  %25 = load i8*, i8** %pb, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %idxprom
  %26 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %26 to i32
  %27 = load i32, i32* %len, align 4
  %idxprom18 = zext i32 %27 to i64
  %28 = load i8*, i8** %cur.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %28, i64 %idxprom18
  %29 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %29 to i32
  %cmp21 = icmp eq i32 %conv, %conv20
  br i1 %cmp21, label %if.then.23, label %if.end.61

if.then.23:                                       ; preds = %cond.end.16
  %30 = load i32, i32* %len, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %len, align 4
  %31 = load i32, i32* %lenLimit.addr, align 4
  %cmp24 = icmp ne i32 %inc, %31
  br i1 %cmp24, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.then.23
  %32 = load i32, i32* %len, align 4
  %idxprom26 = zext i32 %32 to i64
  %33 = load i8*, i8** %pb, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %33, i64 %idxprom26
  %34 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %34 to i32
  %35 = load i32, i32* %len, align 4
  %idxprom29 = zext i32 %35 to i64
  %36 = load i8*, i8** %cur.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %36, i64 %idxprom29
  %37 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %37 to i32
  %cmp32 = icmp eq i32 %conv28, %conv31
  br i1 %cmp32, label %if.then.34, label %if.end.48

if.then.34:                                       ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %if.then.34
  %38 = load i32, i32* %len, align 4
  %inc35 = add i32 %38, 1
  store i32 %inc35, i32* %len, align 4
  %39 = load i32, i32* %lenLimit.addr, align 4
  %cmp36 = icmp ne i32 %inc35, %39
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load i32, i32* %len, align 4
  %idxprom38 = zext i32 %40 to i64
  %41 = load i8*, i8** %pb, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %41, i64 %idxprom38
  %42 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %42 to i32
  %43 = load i32, i32* %len, align 4
  %idxprom41 = zext i32 %43 to i64
  %44 = load i8*, i8** %cur.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %44, i64 %idxprom41
  %45 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %45 to i32
  %cmp44 = icmp ne i32 %conv40, %conv43
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %while.body
  br label %while.end

if.end.47:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.46, %while.cond
  br label %if.end.48

if.end.48:                                        ; preds = %while.end, %land.lhs.true, %if.then.23
  %46 = load i32, i32* %maxLen.addr, align 4
  %47 = load i32, i32* %len, align 4
  %cmp49 = icmp ult i32 %46, %47
  br i1 %cmp49, label %if.then.51, label %if.end.60

if.then.51:                                       ; preds = %if.end.48
  %48 = load i32, i32* %len, align 4
  store i32 %48, i32* %maxLen.addr, align 4
  %49 = load i32*, i32** %distances.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %incdec.ptr, i32** %distances.addr, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %delta, align 4
  %sub52 = sub i32 %50, 1
  %51 = load i32*, i32** %distances.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %incdec.ptr53, i32** %distances.addr, align 8
  store i32 %sub52, i32* %51, align 4
  %52 = load i32, i32* %len, align 4
  %53 = load i32, i32* %lenLimit.addr, align 4
  %cmp54 = icmp eq i32 %52, %53
  br i1 %cmp54, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.then.51
  %54 = load i32*, i32** %pair, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %54, i64 0
  %55 = load i32, i32* %arrayidx57, align 4
  %56 = load i32*, i32** %ptr1, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %pair, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %57, i64 1
  %58 = load i32, i32* %arrayidx58, align 4
  %59 = load i32*, i32** %ptr0, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %distances.addr, align 8
  store i32* %60, i32** %retval
  br label %return

if.end.59:                                        ; preds = %if.then.51
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.48
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %cond.end.16
  %61 = load i32, i32* %len, align 4
  %idxprom62 = zext i32 %61 to i64
  %62 = load i8*, i8** %pb, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %62, i64 %idxprom62
  %63 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %63 to i32
  %64 = load i32, i32* %len, align 4
  %idxprom65 = zext i32 %64 to i64
  %65 = load i8*, i8** %cur.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %65, i64 %idxprom65
  %66 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %66 to i32
  %cmp68 = icmp slt i32 %conv64, %conv67
  br i1 %cmp68, label %if.then.70, label %if.else

if.then.70:                                       ; preds = %if.end.61
  %67 = load i32, i32* %curMatch.addr, align 4
  %68 = load i32*, i32** %ptr1, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %pair, align 8
  %add.ptr71 = getelementptr inbounds i32, i32* %69, i64 1
  store i32* %add.ptr71, i32** %ptr1, align 8
  %70 = load i32*, i32** %ptr1, align 8
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %curMatch.addr, align 4
  %72 = load i32, i32* %len, align 4
  store i32 %72, i32* %len1, align 4
  br label %if.end.72

if.else:                                          ; preds = %if.end.61
  %73 = load i32, i32* %curMatch.addr, align 4
  %74 = load i32*, i32** %ptr0, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %pair, align 8
  store i32* %75, i32** %ptr0, align 8
  %76 = load i32*, i32** %ptr0, align 8
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %curMatch.addr, align 4
  %78 = load i32, i32* %len, align 4
  store i32 %78, i32* %len0, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.else, %if.then.70
  br label %for.cond

return:                                           ; preds = %if.then.56, %if.then
  %79 = load i32*, i32** %retval
  ret i32* %79
}

; Function Attrs: nounwind uwtable
define i32 @Bt3Zip_MatchFinder_GetMatches(%struct._CMatchFinder* %p, i32* %distances) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %distances.addr = alloca i32*, align 8
  %offset = alloca i32, align 4
  %lenLimit = alloca i32, align 4
  %hashValue = alloca i32, align 4
  %cur = alloca i8*, align 8
  %curMatch = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32* %distances, i32** %distances.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %lenLimit1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 4
  %1 = load i32, i32* %lenLimit1, align 4
  store i32 %1, i32* %lenLimit, align 4
  %2 = load i32, i32* %lenLimit, align 4
  %cmp = icmp ult i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_MovePos(%struct._CMatchFinder* %3)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %cur, align 8
  %6 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i8*, i8** %cur, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %9 to i32
  %shl = shl i32 %conv3, 8
  %or = or i32 %conv, %shl
  %10 = load i8*, i8** %cur, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx4, align 1
  %idxprom = zext i8 %11 to i64
  %12 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %12, i32 0, i32 28
  %arrayidx5 = getelementptr inbounds [256 x i32], [256 x i32]* %crc, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx5, align 4
  %xor = xor i32 %or, %13
  %and = and i32 %xor, 65535
  store i32 %and, i32* %hashValue, align 4
  %14 = load i32, i32* %hashValue, align 4
  %idxprom6 = zext i32 %14 to i64
  %15 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %15, i32 0, i32 8
  %16 = load i32*, i32** %hash, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %16, i64 %idxprom6
  %17 = load i32, i32* %arrayidx7, align 4
  store i32 %17, i32* %curMatch, align 4
  %18 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %18, i32 0, i32 1
  %19 = load i32, i32* %pos, align 4
  %20 = load i32, i32* %hashValue, align 4
  %idxprom8 = zext i32 %20 to i64
  %21 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash9 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %21, i32 0, i32 8
  %22 = load i32*, i32** %hash9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %22, i64 %idxprom8
  store i32 %19, i32* %arrayidx10, align 4
  store i32 0, i32* %offset, align 4
  %23 = load i32, i32* %lenLimit, align 4
  %24 = load i32, i32* %curMatch, align 4
  %25 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos11 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %25, i32 0, i32 1
  %26 = load i32, i32* %pos11, align 4
  %27 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer12 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %27, i32 0, i32 0
  %28 = load i8*, i8** %buffer12, align 8
  %29 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %29, i32 0, i32 9
  %30 = load i32*, i32** %son, align 8
  %31 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %31, i32 0, i32 5
  %32 = load i32, i32* %cyclicBufferPos, align 4
  %33 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %33, i32 0, i32 6
  %34 = load i32, i32* %cyclicBufferSize, align 4
  %35 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cutValue = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %35, i32 0, i32 11
  %36 = load i32, i32* %cutValue, align 4
  %37 = load i32*, i32** %distances.addr, align 8
  %38 = load i32, i32* %offset, align 4
  %idx.ext = zext i32 %38 to i64
  %add.ptr = getelementptr inbounds i32, i32* %37, i64 %idx.ext
  %call = call i32* @GetMatchesSpec1(i32 %23, i32 %24, i32 %26, i8* %28, i32* %30, i32 %32, i32 %34, i32 %36, i32* %add.ptr, i32 2)
  %39 = load i32*, i32** %distances.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv13 = trunc i64 %sub.ptr.div to i32
  store i32 %conv13, i32* %offset, align 4
  %40 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos14 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %40, i32 0, i32 5
  %41 = load i32, i32* %cyclicBufferPos14, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* %cyclicBufferPos14, align 4
  %42 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer15 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %42, i32 0, i32 0
  %43 = load i8*, i8** %buffer15, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr, i8** %buffer15, align 8
  %44 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos16 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %44, i32 0, i32 1
  %45 = load i32, i32* %pos16, align 4
  %inc17 = add i32 %45, 1
  store i32 %inc17, i32* %pos16, align 4
  %46 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %46, i32 0, i32 2
  %47 = load i32, i32* %posLimit, align 4
  %cmp18 = icmp eq i32 %inc17, %47
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  %48 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %48)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end
  %49 = load i32, i32* %offset, align 4
  store i32 %49, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal void @MatchFinder_MovePos(%struct._CMatchFinder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 5
  %1 = load i32, i32* %cyclicBufferPos, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %cyclicBufferPos, align 4
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %2, i32 0, i32 0
  %3 = load i8*, i8** %buffer, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %buffer, align 8
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 1
  %5 = load i32, i32* %pos, align 4
  %inc1 = add i32 %5, 1
  store i32 %inc1, i32* %pos, align 4
  %6 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %6, i32 0, i32 2
  %7 = load i32, i32* %posLimit, align 4
  %cmp = icmp eq i32 %inc1, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MatchFinder_CheckLimits(%struct._CMatchFinder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 1
  %1 = load i32, i32* %pos, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_Normalize(%struct._CMatchFinder* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamEndWasReached = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %3, i32 0, i32 14
  %4 = load i32, i32* %streamEndWasReached, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %keepSizeAfter = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %5, i32 0, i32 17
  %6 = load i32, i32* %keepSizeAfter, align 4
  %7 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %streamPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %7, i32 0, i32 3
  %8 = load i32, i32* %streamPos, align 4
  %9 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %9, i32 0, i32 1
  %10 = load i32, i32* %pos1, align 4
  %sub = sub i32 %8, %10
  %cmp2 = icmp eq i32 %6, %sub
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %11 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckAndMoveAndRead(%struct._CMatchFinder* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %12 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %12, i32 0, i32 5
  %13 = load i32, i32* %cyclicBufferPos, align 4
  %14 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %14, i32 0, i32 6
  %15 = load i32, i32* %cyclicBufferSize, align 4
  %cmp5 = icmp eq i32 %13, %15
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %16 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos7 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %16, i32 0, i32 5
  store i32 0, i32* %cyclicBufferPos7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %17 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_SetLimits(%struct._CMatchFinder* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Hc3Zip_MatchFinder_GetMatches(%struct._CMatchFinder* %p, i32* %distances) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %distances.addr = alloca i32*, align 8
  %offset = alloca i32, align 4
  %lenLimit = alloca i32, align 4
  %hashValue = alloca i32, align 4
  %cur = alloca i8*, align 8
  %curMatch = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32* %distances, i32** %distances.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %lenLimit1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 4
  %1 = load i32, i32* %lenLimit1, align 4
  store i32 %1, i32* %lenLimit, align 4
  %2 = load i32, i32* %lenLimit, align 4
  %cmp = icmp ult i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_MovePos(%struct._CMatchFinder* %3)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %cur, align 8
  %6 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i8*, i8** %cur, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %9 to i32
  %shl = shl i32 %conv3, 8
  %or = or i32 %conv, %shl
  %10 = load i8*, i8** %cur, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx4, align 1
  %idxprom = zext i8 %11 to i64
  %12 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %12, i32 0, i32 28
  %arrayidx5 = getelementptr inbounds [256 x i32], [256 x i32]* %crc, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx5, align 4
  %xor = xor i32 %or, %13
  %and = and i32 %xor, 65535
  store i32 %and, i32* %hashValue, align 4
  %14 = load i32, i32* %hashValue, align 4
  %idxprom6 = zext i32 %14 to i64
  %15 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %15, i32 0, i32 8
  %16 = load i32*, i32** %hash, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %16, i64 %idxprom6
  %17 = load i32, i32* %arrayidx7, align 4
  store i32 %17, i32* %curMatch, align 4
  %18 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %18, i32 0, i32 1
  %19 = load i32, i32* %pos, align 4
  %20 = load i32, i32* %hashValue, align 4
  %idxprom8 = zext i32 %20 to i64
  %21 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash9 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %21, i32 0, i32 8
  %22 = load i32*, i32** %hash9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %22, i64 %idxprom8
  store i32 %19, i32* %arrayidx10, align 4
  %23 = load i32, i32* %lenLimit, align 4
  %24 = load i32, i32* %curMatch, align 4
  %25 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos11 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %25, i32 0, i32 1
  %26 = load i32, i32* %pos11, align 4
  %27 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer12 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %27, i32 0, i32 0
  %28 = load i8*, i8** %buffer12, align 8
  %29 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %29, i32 0, i32 9
  %30 = load i32*, i32** %son, align 8
  %31 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %31, i32 0, i32 5
  %32 = load i32, i32* %cyclicBufferPos, align 4
  %33 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %33, i32 0, i32 6
  %34 = load i32, i32* %cyclicBufferSize, align 4
  %35 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cutValue = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %35, i32 0, i32 11
  %36 = load i32, i32* %cutValue, align 4
  %37 = load i32*, i32** %distances.addr, align 8
  %call = call i32* @Hc_GetMatchesSpec(i32 %23, i32 %24, i32 %26, i8* %28, i32* %30, i32 %32, i32 %34, i32 %36, i32* %37, i32 2)
  %38 = load i32*, i32** %distances.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %38 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv13 = trunc i64 %sub.ptr.div to i32
  store i32 %conv13, i32* %offset, align 4
  %39 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos14 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %39, i32 0, i32 5
  %40 = load i32, i32* %cyclicBufferPos14, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %cyclicBufferPos14, align 4
  %41 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer15 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %41, i32 0, i32 0
  %42 = load i8*, i8** %buffer15, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %buffer15, align 8
  %43 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos16 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %43, i32 0, i32 1
  %44 = load i32, i32* %pos16, align 4
  %inc17 = add i32 %44, 1
  store i32 %inc17, i32* %pos16, align 4
  %45 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %45, i32 0, i32 2
  %46 = load i32, i32* %posLimit, align 4
  %cmp18 = icmp eq i32 %inc17, %46
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  %47 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %47)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end
  %48 = load i32, i32* %offset, align 4
  store i32 %48, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32* @Hc_GetMatchesSpec(i32 %lenLimit, i32 %curMatch, i32 %pos, i8* %cur, i32* %son, i32 %_cyclicBufferPos, i32 %_cyclicBufferSize, i32 %cutValue, i32* %distances, i32 %maxLen) #0 {
entry:
  %retval = alloca i32*, align 8
  %lenLimit.addr = alloca i32, align 4
  %curMatch.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %cur.addr = alloca i8*, align 8
  %son.addr = alloca i32*, align 8
  %_cyclicBufferPos.addr = alloca i32, align 4
  %_cyclicBufferSize.addr = alloca i32, align 4
  %cutValue.addr = alloca i32, align 4
  %distances.addr = alloca i32*, align 8
  %maxLen.addr = alloca i32, align 4
  %delta = alloca i32, align 4
  %pb = alloca i8*, align 8
  %len = alloca i32, align 4
  store i32 %lenLimit, i32* %lenLimit.addr, align 4
  store i32 %curMatch, i32* %curMatch.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i8* %cur, i8** %cur.addr, align 8
  store i32* %son, i32** %son.addr, align 8
  store i32 %_cyclicBufferPos, i32* %_cyclicBufferPos.addr, align 4
  store i32 %_cyclicBufferSize, i32* %_cyclicBufferSize.addr, align 4
  store i32 %cutValue, i32* %cutValue.addr, align 4
  store i32* %distances, i32** %distances.addr, align 8
  store i32 %maxLen, i32* %maxLen.addr, align 4
  %0 = load i32, i32* %curMatch.addr, align 4
  %1 = load i32, i32* %_cyclicBufferPos.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load i32*, i32** %son.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.40, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %4 = load i32, i32* %curMatch.addr, align 4
  %sub = sub i32 %3, %4
  store i32 %sub, i32* %delta, align 4
  %5 = load i32, i32* %cutValue.addr, align 4
  %dec = add i32 %5, -1
  store i32 %dec, i32* %cutValue.addr, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %6 = load i32, i32* %delta, align 4
  %7 = load i32, i32* %_cyclicBufferSize.addr, align 4
  %cmp1 = icmp uge i32 %6, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  %8 = load i32*, i32** %distances.addr, align 8
  store i32* %8, i32** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i8*, i8** %cur.addr, align 8
  %10 = load i32, i32* %delta, align 4
  %idx.ext = zext i32 %10 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.neg
  store i8* %add.ptr, i8** %pb, align 8
  %11 = load i32, i32* %_cyclicBufferPos.addr, align 4
  %12 = load i32, i32* %delta, align 4
  %sub2 = sub i32 %11, %12
  %13 = load i32, i32* %delta, align 4
  %14 = load i32, i32* %_cyclicBufferPos.addr, align 4
  %cmp3 = icmp ugt i32 %13, %14
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load i32, i32* %_cyclicBufferSize.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ 0, %cond.false ]
  %add = add i32 %sub2, %cond
  %idxprom4 = zext i32 %add to i64
  %16 = load i32*, i32** %son.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %16, i64 %idxprom4
  %17 = load i32, i32* %arrayidx5, align 4
  store i32 %17, i32* %curMatch.addr, align 4
  %18 = load i32, i32* %maxLen.addr, align 4
  %idxprom6 = zext i32 %18 to i64
  %19 = load i8*, i8** %pb, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %19, i64 %idxprom6
  %20 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %20 to i32
  %21 = load i32, i32* %maxLen.addr, align 4
  %idxprom8 = zext i32 %21 to i64
  %22 = load i8*, i8** %cur.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %22, i64 %idxprom8
  %23 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %23 to i32
  %cmp11 = icmp eq i32 %conv, %conv10
  br i1 %cmp11, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %cond.end
  %24 = load i8*, i8** %pb, align 8
  %25 = load i8, i8* %24, align 1
  %conv13 = zext i8 %25 to i32
  %26 = load i8*, i8** %cur.addr, align 8
  %27 = load i8, i8* %26, align 1
  %conv14 = zext i8 %27 to i32
  %cmp15 = icmp eq i32 %conv13, %conv14
  br i1 %cmp15, label %if.then.17, label %if.end.40

if.then.17:                                       ; preds = %land.lhs.true
  store i32 0, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.29, %if.then.17
  %28 = load i32, i32* %len, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %len, align 4
  %29 = load i32, i32* %lenLimit.addr, align 4
  %cmp18 = icmp ne i32 %inc, %29
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load i32, i32* %len, align 4
  %idxprom20 = zext i32 %30 to i64
  %31 = load i8*, i8** %pb, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %31, i64 %idxprom20
  %32 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %32 to i32
  %33 = load i32, i32* %len, align 4
  %idxprom23 = zext i32 %33 to i64
  %34 = load i8*, i8** %cur.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %34, i64 %idxprom23
  %35 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %35 to i32
  %cmp26 = icmp ne i32 %conv22, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %while.body
  br label %while.end

if.end.29:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.28, %while.cond
  %36 = load i32, i32* %maxLen.addr, align 4
  %37 = load i32, i32* %len, align 4
  %cmp30 = icmp ult i32 %36, %37
  br i1 %cmp30, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %while.end
  %38 = load i32, i32* %len, align 4
  store i32 %38, i32* %maxLen.addr, align 4
  %39 = load i32*, i32** %distances.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %incdec.ptr, i32** %distances.addr, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %delta, align 4
  %sub33 = sub i32 %40, 1
  %41 = load i32*, i32** %distances.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %incdec.ptr34, i32** %distances.addr, align 8
  store i32 %sub33, i32* %41, align 4
  %42 = load i32, i32* %len, align 4
  %43 = load i32, i32* %lenLimit.addr, align 4
  %cmp35 = icmp eq i32 %42, %43
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.32
  %44 = load i32*, i32** %distances.addr, align 8
  store i32* %44, i32** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %while.end
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true, %cond.end
  br label %for.cond

return:                                           ; preds = %if.then.37, %if.then
  %45 = load i32*, i32** %retval
  ret i32* %45
}

; Function Attrs: nounwind uwtable
define void @Bt3Zip_MatchFinder_Skip(%struct._CMatchFinder* %p, i32 %num) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %num.addr = alloca i32, align 4
  %lenLimit = alloca i32, align 4
  %hashValue = alloca i32, align 4
  %cur = alloca i8*, align 8
  %curMatch = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %lenLimit1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 4
  %1 = load i32, i32* %lenLimit1, align 4
  store i32 %1, i32* %lenLimit, align 4
  %2 = load i32, i32* %lenLimit, align 4
  %cmp = icmp ult i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_MovePos(%struct._CMatchFinder* %3)
  br label %do.cond

if.end:                                           ; preds = %do.body
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %cur, align 8
  %6 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i8*, i8** %cur, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %9 to i32
  %shl = shl i32 %conv3, 8
  %or = or i32 %conv, %shl
  %10 = load i8*, i8** %cur, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx4, align 1
  %idxprom = zext i8 %11 to i64
  %12 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %12, i32 0, i32 28
  %arrayidx5 = getelementptr inbounds [256 x i32], [256 x i32]* %crc, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx5, align 4
  %xor = xor i32 %or, %13
  %and = and i32 %xor, 65535
  store i32 %and, i32* %hashValue, align 4
  %14 = load i32, i32* %hashValue, align 4
  %idxprom6 = zext i32 %14 to i64
  %15 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %15, i32 0, i32 8
  %16 = load i32*, i32** %hash, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %16, i64 %idxprom6
  %17 = load i32, i32* %arrayidx7, align 4
  store i32 %17, i32* %curMatch, align 4
  %18 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %18, i32 0, i32 1
  %19 = load i32, i32* %pos, align 4
  %20 = load i32, i32* %hashValue, align 4
  %idxprom8 = zext i32 %20 to i64
  %21 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash9 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %21, i32 0, i32 8
  %22 = load i32*, i32** %hash9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %22, i64 %idxprom8
  store i32 %19, i32* %arrayidx10, align 4
  %23 = load i32, i32* %lenLimit, align 4
  %24 = load i32, i32* %curMatch, align 4
  %25 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos11 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %25, i32 0, i32 1
  %26 = load i32, i32* %pos11, align 4
  %27 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer12 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %27, i32 0, i32 0
  %28 = load i8*, i8** %buffer12, align 8
  %29 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %29, i32 0, i32 9
  %30 = load i32*, i32** %son, align 8
  %31 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %31, i32 0, i32 5
  %32 = load i32, i32* %cyclicBufferPos, align 4
  %33 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %33, i32 0, i32 6
  %34 = load i32, i32* %cyclicBufferSize, align 4
  %35 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cutValue = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %35, i32 0, i32 11
  %36 = load i32, i32* %cutValue, align 4
  call void @SkipMatchesSpec(i32 %23, i32 %24, i32 %26, i8* %28, i32* %30, i32 %32, i32 %34, i32 %36)
  %37 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos13 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %37, i32 0, i32 5
  %38 = load i32, i32* %cyclicBufferPos13, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %cyclicBufferPos13, align 4
  %39 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer14 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %39, i32 0, i32 0
  %40 = load i8*, i8** %buffer14, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %buffer14, align 8
  %41 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos15 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %41, i32 0, i32 1
  %42 = load i32, i32* %pos15, align 4
  %inc16 = add i32 %42, 1
  store i32 %inc16, i32* %pos15, align 4
  %43 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %43, i32 0, i32 2
  %44 = load i32, i32* %posLimit, align 4
  %cmp17 = icmp eq i32 %inc16, %44
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  %45 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %45)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.20, %if.then
  %46 = load i32, i32* %num.addr, align 4
  %dec = add i32 %46, -1
  store i32 %dec, i32* %num.addr, align 4
  %cmp21 = icmp ne i32 %dec, 0
  br i1 %cmp21, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SkipMatchesSpec(i32 %lenLimit, i32 %curMatch, i32 %pos, i8* %cur, i32* %son, i32 %_cyclicBufferPos, i32 %_cyclicBufferSize, i32 %cutValue) #0 {
entry:
  %lenLimit.addr = alloca i32, align 4
  %curMatch.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %cur.addr = alloca i8*, align 8
  %son.addr = alloca i32*, align 8
  %_cyclicBufferPos.addr = alloca i32, align 4
  %_cyclicBufferSize.addr = alloca i32, align 4
  %cutValue.addr = alloca i32, align 4
  %ptr0 = alloca i32*, align 8
  %ptr1 = alloca i32*, align 8
  %len0 = alloca i32, align 4
  %len1 = alloca i32, align 4
  %delta = alloca i32, align 4
  %pair = alloca i32*, align 8
  %pb = alloca i8*, align 8
  %len = alloca i32, align 4
  store i32 %lenLimit, i32* %lenLimit.addr, align 4
  store i32 %curMatch, i32* %curMatch.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i8* %cur, i8** %cur.addr, align 8
  store i32* %son, i32** %son.addr, align 8
  store i32 %_cyclicBufferPos, i32* %_cyclicBufferPos.addr, align 4
  store i32 %_cyclicBufferSize, i32* %_cyclicBufferSize.addr, align 4
  store i32 %cutValue, i32* %cutValue.addr, align 4
  %0 = load i32*, i32** %son.addr, align 8
  %1 = load i32, i32* %_cyclicBufferPos.addr, align 4
  %shl = shl i32 %1, 1
  %idx.ext = zext i32 %shl to i64
  %add.ptr = getelementptr inbounds i32, i32* %0, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i32, i32* %add.ptr, i64 1
  store i32* %add.ptr1, i32** %ptr0, align 8
  %2 = load i32*, i32** %son.addr, align 8
  %3 = load i32, i32* %_cyclicBufferPos.addr, align 4
  %shl2 = shl i32 %3, 1
  %idx.ext3 = zext i32 %shl2 to i64
  %add.ptr4 = getelementptr inbounds i32, i32* %2, i64 %idx.ext3
  store i32* %add.ptr4, i32** %ptr1, align 8
  store i32 0, i32* %len0, align 4
  store i32 0, i32* %len1, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.53, %entry
  %4 = load i32, i32* %pos.addr, align 4
  %5 = load i32, i32* %curMatch.addr, align 4
  %sub = sub i32 %4, %5
  store i32 %sub, i32* %delta, align 4
  %6 = load i32, i32* %cutValue.addr, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %cutValue.addr, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %7 = load i32, i32* %delta, align 4
  %8 = load i32, i32* %_cyclicBufferSize.addr, align 4
  %cmp5 = icmp uge i32 %7, %8
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  %9 = load i32*, i32** %ptr1, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %ptr0, align 8
  store i32 0, i32* %10, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %11 = load i32*, i32** %son.addr, align 8
  %12 = load i32, i32* %_cyclicBufferPos.addr, align 4
  %13 = load i32, i32* %delta, align 4
  %sub6 = sub i32 %12, %13
  %14 = load i32, i32* %delta, align 4
  %15 = load i32, i32* %_cyclicBufferPos.addr, align 4
  %cmp7 = icmp ugt i32 %14, %15
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load i32, i32* %_cyclicBufferSize.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ 0, %cond.false ]
  %add = add i32 %sub6, %cond
  %shl8 = shl i32 %add, 1
  %idx.ext9 = zext i32 %shl8 to i64
  %add.ptr10 = getelementptr inbounds i32, i32* %11, i64 %idx.ext9
  store i32* %add.ptr10, i32** %pair, align 8
  %17 = load i8*, i8** %cur.addr, align 8
  %18 = load i32, i32* %delta, align 4
  %idx.ext11 = zext i32 %18 to i64
  %idx.neg = sub i64 0, %idx.ext11
  %add.ptr12 = getelementptr inbounds i8, i8* %17, i64 %idx.neg
  store i8* %add.ptr12, i8** %pb, align 8
  %19 = load i32, i32* %len0, align 4
  %20 = load i32, i32* %len1, align 4
  %cmp13 = icmp ult i32 %19, %20
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end
  %21 = load i32, i32* %len0, align 4
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end
  %22 = load i32, i32* %len1, align 4
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi i32 [ %21, %cond.true.14 ], [ %22, %cond.false.15 ]
  store i32 %cond17, i32* %len, align 4
  %23 = load i32, i32* %len, align 4
  %idxprom = zext i32 %23 to i64
  %24 = load i8*, i8** %pb, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %25 to i32
  %26 = load i32, i32* %len, align 4
  %idxprom18 = zext i32 %26 to i64
  %27 = load i8*, i8** %cur.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %27, i64 %idxprom18
  %28 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %28 to i32
  %cmp21 = icmp eq i32 %conv, %conv20
  br i1 %cmp21, label %if.then.23, label %if.end.42

if.then.23:                                       ; preds = %cond.end.16
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %if.then.23
  %29 = load i32, i32* %len, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %len, align 4
  %30 = load i32, i32* %lenLimit.addr, align 4
  %cmp24 = icmp ne i32 %inc, %30
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load i32, i32* %len, align 4
  %idxprom26 = zext i32 %31 to i64
  %32 = load i8*, i8** %pb, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %32, i64 %idxprom26
  %33 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %33 to i32
  %34 = load i32, i32* %len, align 4
  %idxprom29 = zext i32 %34 to i64
  %35 = load i8*, i8** %cur.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %35, i64 %idxprom29
  %36 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %36 to i32
  %cmp32 = icmp ne i32 %conv28, %conv31
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %while.body
  br label %while.end

if.end.35:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.34, %while.cond
  %37 = load i32, i32* %len, align 4
  %38 = load i32, i32* %lenLimit.addr, align 4
  %cmp36 = icmp eq i32 %37, %38
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %while.end
  %39 = load i32*, i32** %pair, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %39, i64 0
  %40 = load i32, i32* %arrayidx39, align 4
  %41 = load i32*, i32** %ptr1, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %pair, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %42, i64 1
  %43 = load i32, i32* %arrayidx40, align 4
  %44 = load i32*, i32** %ptr0, align 8
  store i32 %43, i32* %44, align 4
  br label %return

if.end.41:                                        ; preds = %while.end
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %cond.end.16
  %45 = load i32, i32* %len, align 4
  %idxprom43 = zext i32 %45 to i64
  %46 = load i8*, i8** %pb, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %46, i64 %idxprom43
  %47 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %47 to i32
  %48 = load i32, i32* %len, align 4
  %idxprom46 = zext i32 %48 to i64
  %49 = load i8*, i8** %cur.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %49, i64 %idxprom46
  %50 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %50 to i32
  %cmp49 = icmp slt i32 %conv45, %conv48
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.end.42
  %51 = load i32, i32* %curMatch.addr, align 4
  %52 = load i32*, i32** %ptr1, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %pair, align 8
  %add.ptr52 = getelementptr inbounds i32, i32* %53, i64 1
  store i32* %add.ptr52, i32** %ptr1, align 8
  %54 = load i32*, i32** %ptr1, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %curMatch.addr, align 4
  %56 = load i32, i32* %len, align 4
  store i32 %56, i32* %len1, align 4
  br label %if.end.53

if.else:                                          ; preds = %if.end.42
  %57 = load i32, i32* %curMatch.addr, align 4
  %58 = load i32*, i32** %ptr0, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %pair, align 8
  store i32* %59, i32** %ptr0, align 8
  %60 = load i32*, i32** %ptr0, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %curMatch.addr, align 4
  %62 = load i32, i32* %len, align 4
  store i32 %62, i32* %len0, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.51
  br label %for.cond

return:                                           ; preds = %if.then.38, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @Hc3Zip_MatchFinder_Skip(%struct._CMatchFinder* %p, i32 %num) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %num.addr = alloca i32, align 4
  %lenLimit = alloca i32, align 4
  %hashValue = alloca i32, align 4
  %cur = alloca i8*, align 8
  %curMatch = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %lenLimit1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 4
  %1 = load i32, i32* %lenLimit1, align 4
  store i32 %1, i32* %lenLimit, align 4
  %2 = load i32, i32* %lenLimit, align 4
  %cmp = icmp ult i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_MovePos(%struct._CMatchFinder* %3)
  br label %do.cond

if.end:                                           ; preds = %do.body
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %cur, align 8
  %6 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i8*, i8** %cur, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %9 to i32
  %shl = shl i32 %conv3, 8
  %or = or i32 %conv, %shl
  %10 = load i8*, i8** %cur, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx4, align 1
  %idxprom = zext i8 %11 to i64
  %12 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %12, i32 0, i32 28
  %arrayidx5 = getelementptr inbounds [256 x i32], [256 x i32]* %crc, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx5, align 4
  %xor = xor i32 %or, %13
  %and = and i32 %xor, 65535
  store i32 %and, i32* %hashValue, align 4
  %14 = load i32, i32* %hashValue, align 4
  %idxprom6 = zext i32 %14 to i64
  %15 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %15, i32 0, i32 8
  %16 = load i32*, i32** %hash, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %16, i64 %idxprom6
  %17 = load i32, i32* %arrayidx7, align 4
  store i32 %17, i32* %curMatch, align 4
  %18 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %18, i32 0, i32 1
  %19 = load i32, i32* %pos, align 4
  %20 = load i32, i32* %hashValue, align 4
  %idxprom8 = zext i32 %20 to i64
  %21 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash9 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %21, i32 0, i32 8
  %22 = load i32*, i32** %hash9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %22, i64 %idxprom8
  store i32 %19, i32* %arrayidx10, align 4
  %23 = load i32, i32* %curMatch, align 4
  %24 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %24, i32 0, i32 5
  %25 = load i32, i32* %cyclicBufferPos, align 4
  %idxprom11 = zext i32 %25 to i64
  %26 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %26, i32 0, i32 9
  %27 = load i32*, i32** %son, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %27, i64 %idxprom11
  store i32 %23, i32* %arrayidx12, align 4
  %28 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos13 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %28, i32 0, i32 5
  %29 = load i32, i32* %cyclicBufferPos13, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %cyclicBufferPos13, align 4
  %30 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer14 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %30, i32 0, i32 0
  %31 = load i8*, i8** %buffer14, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %buffer14, align 8
  %32 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos15 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %32, i32 0, i32 1
  %33 = load i32, i32* %pos15, align 4
  %inc16 = add i32 %33, 1
  store i32 %inc16, i32* %pos15, align 4
  %34 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %34, i32 0, i32 2
  %35 = load i32, i32* %posLimit, align 4
  %cmp17 = icmp eq i32 %inc16, %35
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  %36 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %36)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.20, %if.then
  %37 = load i32, i32* %num.addr, align 4
  %dec = add i32 %37, -1
  store i32 %dec, i32* %num.addr, align 4
  %cmp21 = icmp ne i32 %dec, 0
  br i1 %cmp21, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @MatchFinder_CreateVTable(%struct._CMatchFinder* %p, %struct._IMatchFinder* %vTable) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %vTable.addr = alloca %struct._IMatchFinder*, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store %struct._IMatchFinder* %vTable, %struct._IMatchFinder** %vTable.addr, align 8
  %0 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %Init = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %0, i32 0, i32 0
  store void (i8*)* bitcast (void (%struct._CMatchFinder*)* @MatchFinder_Init to void (i8*)*), void (i8*)** %Init, align 8
  %1 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %GetIndexByte = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %1, i32 0, i32 1
  store i8 (i8*, i32)* bitcast (i8 (%struct._CMatchFinder*, i32)* @MatchFinder_GetIndexByte to i8 (i8*, i32)*), i8 (i8*, i32)** %GetIndexByte, align 8
  %2 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %GetNumAvailableBytes = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %2, i32 0, i32 2
  store i32 (i8*)* bitcast (i32 (%struct._CMatchFinder*)* @MatchFinder_GetNumAvailableBytes to i32 (i8*)*), i32 (i8*)** %GetNumAvailableBytes, align 8
  %3 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %GetPointerToCurrentPos = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %3, i32 0, i32 3
  store i8* (i8*)* bitcast (i8* (%struct._CMatchFinder*)* @MatchFinder_GetPointerToCurrentPos to i8* (i8*)*), i8* (i8*)** %GetPointerToCurrentPos, align 8
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %btMode = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 21
  %5 = load i32, i32* %btMode, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %GetMatches = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %6, i32 0, i32 4
  store i32 (i8*, i32*)* bitcast (i32 (%struct._CMatchFinder*, i32*)* @Hc4_MatchFinder_GetMatches to i32 (i8*, i32*)*), i32 (i8*, i32*)** %GetMatches, align 8
  %7 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %Skip = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %7, i32 0, i32 5
  store void (i8*, i32)* bitcast (void (%struct._CMatchFinder*, i32)* @Hc4_MatchFinder_Skip to void (i8*, i32)*), void (i8*, i32)** %Skip, align 8
  br label %if.end.14

if.else:                                          ; preds = %entry
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %numHashBytes = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %8, i32 0, i32 18
  %9 = load i32, i32* %numHashBytes, align 4
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.then.1, label %if.else.4

if.then.1:                                        ; preds = %if.else
  %10 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %GetMatches2 = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %10, i32 0, i32 4
  store i32 (i8*, i32*)* bitcast (i32 (%struct._CMatchFinder*, i32*)* @Bt2_MatchFinder_GetMatches to i32 (i8*, i32*)*), i32 (i8*, i32*)** %GetMatches2, align 8
  %11 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %Skip3 = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %11, i32 0, i32 5
  store void (i8*, i32)* bitcast (void (%struct._CMatchFinder*, i32)* @Bt2_MatchFinder_Skip to void (i8*, i32)*), void (i8*, i32)** %Skip3, align 8
  br label %if.end.13

if.else.4:                                        ; preds = %if.else
  %12 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %numHashBytes5 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %12, i32 0, i32 18
  %13 = load i32, i32* %numHashBytes5, align 4
  %cmp6 = icmp eq i32 %13, 3
  br i1 %cmp6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.else.4
  %14 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %GetMatches8 = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %14, i32 0, i32 4
  store i32 (i8*, i32*)* bitcast (i32 (%struct._CMatchFinder*, i32*)* @Bt3_MatchFinder_GetMatches to i32 (i8*, i32*)*), i32 (i8*, i32*)** %GetMatches8, align 8
  %15 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %Skip9 = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %15, i32 0, i32 5
  store void (i8*, i32)* bitcast (void (%struct._CMatchFinder*, i32)* @Bt3_MatchFinder_Skip to void (i8*, i32)*), void (i8*, i32)** %Skip9, align 8
  br label %if.end

if.else.10:                                       ; preds = %if.else.4
  %16 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %GetMatches11 = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %16, i32 0, i32 4
  store i32 (i8*, i32*)* bitcast (i32 (%struct._CMatchFinder*, i32*)* @Bt4_MatchFinder_GetMatches to i32 (i8*, i32*)*), i32 (i8*, i32*)** %GetMatches11, align 8
  %17 = load %struct._IMatchFinder*, %struct._IMatchFinder** %vTable.addr, align 8
  %Skip12 = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %17, i32 0, i32 5
  store void (i8*, i32)* bitcast (void (%struct._CMatchFinder*, i32)* @Bt4_MatchFinder_Skip to void (i8*, i32)*), void (i8*, i32)** %Skip12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.1
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Hc4_MatchFinder_GetMatches(%struct._CMatchFinder* %p, i32* %distances) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %distances.addr = alloca i32*, align 8
  %hash2Value = alloca i32, align 4
  %hash3Value = alloca i32, align 4
  %delta2 = alloca i32, align 4
  %delta3 = alloca i32, align 4
  %maxLen = alloca i32, align 4
  %offset = alloca i32, align 4
  %lenLimit = alloca i32, align 4
  %hashValue = alloca i32, align 4
  %cur = alloca i8*, align 8
  %curMatch = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32* %distances, i32** %distances.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %lenLimit1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 4
  %1 = load i32, i32* %lenLimit1, align 4
  store i32 %1, i32* %lenLimit, align 4
  %2 = load i32, i32* %lenLimit, align 4
  %cmp = icmp ult i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_MovePos(%struct._CMatchFinder* %3)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %cur, align 8
  %6 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %7 to i64
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %8, i32 0, i32 28
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %crc, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i8*, i8** %cur, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %11 to i32
  %xor = xor i32 %9, %conv
  store i32 %xor, i32* %temp, align 4
  %12 = load i32, i32* %temp, align 4
  %and = and i32 %12, 1023
  store i32 %and, i32* %hash2Value, align 4
  %13 = load i32, i32* %temp, align 4
  %14 = load i8*, i8** %cur, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %15 to i32
  %shl = shl i32 %conv5, 8
  %xor6 = xor i32 %13, %shl
  %and7 = and i32 %xor6, 65535
  store i32 %and7, i32* %hash3Value, align 4
  %16 = load i32, i32* %temp, align 4
  %17 = load i8*, i8** %cur, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %18 to i32
  %shl10 = shl i32 %conv9, 8
  %xor11 = xor i32 %16, %shl10
  %19 = load i8*, i8** %cur, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %19, i64 3
  %20 = load i8, i8* %arrayidx12, align 1
  %idxprom13 = zext i8 %20 to i64
  %21 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc14 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %21, i32 0, i32 28
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* %crc14, i32 0, i64 %idxprom13
  %22 = load i32, i32* %arrayidx15, align 4
  %shl16 = shl i32 %22, 5
  %xor17 = xor i32 %xor11, %shl16
  %23 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hashMask = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %23, i32 0, i32 10
  %24 = load i32, i32* %hashMask, align 4
  %and18 = and i32 %xor17, %24
  store i32 %and18, i32* %hashValue, align 4
  %25 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %25, i32 0, i32 1
  %26 = load i32, i32* %pos, align 4
  %27 = load i32, i32* %hash2Value, align 4
  %idxprom19 = zext i32 %27 to i64
  %28 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %28, i32 0, i32 8
  %29 = load i32*, i32** %hash, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %29, i64 %idxprom19
  %30 = load i32, i32* %arrayidx20, align 4
  %sub = sub i32 %26, %30
  store i32 %sub, i32* %delta2, align 4
  %31 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos21 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %31, i32 0, i32 1
  %32 = load i32, i32* %pos21, align 4
  %33 = load i32, i32* %hash3Value, align 4
  %add = add i32 1024, %33
  %idxprom22 = zext i32 %add to i64
  %34 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash23 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %34, i32 0, i32 8
  %35 = load i32*, i32** %hash23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %35, i64 %idxprom22
  %36 = load i32, i32* %arrayidx24, align 4
  %sub25 = sub i32 %32, %36
  store i32 %sub25, i32* %delta3, align 4
  %37 = load i32, i32* %hashValue, align 4
  %add26 = add i32 66560, %37
  %idxprom27 = zext i32 %add26 to i64
  %38 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash28 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %38, i32 0, i32 8
  %39 = load i32*, i32** %hash28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %39, i64 %idxprom27
  %40 = load i32, i32* %arrayidx29, align 4
  store i32 %40, i32* %curMatch, align 4
  %41 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos30 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %41, i32 0, i32 1
  %42 = load i32, i32* %pos30, align 4
  %43 = load i32, i32* %hashValue, align 4
  %add31 = add i32 66560, %43
  %idxprom32 = zext i32 %add31 to i64
  %44 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash33 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %44, i32 0, i32 8
  %45 = load i32*, i32** %hash33, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %45, i64 %idxprom32
  store i32 %42, i32* %arrayidx34, align 4
  %46 = load i32, i32* %hash3Value, align 4
  %add35 = add i32 1024, %46
  %idxprom36 = zext i32 %add35 to i64
  %47 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash37 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %47, i32 0, i32 8
  %48 = load i32*, i32** %hash37, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %48, i64 %idxprom36
  store i32 %42, i32* %arrayidx38, align 4
  %49 = load i32, i32* %hash2Value, align 4
  %idxprom39 = zext i32 %49 to i64
  %50 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash40 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %50, i32 0, i32 8
  %51 = load i32*, i32** %hash40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %51, i64 %idxprom39
  store i32 %42, i32* %arrayidx41, align 4
  store i32 1, i32* %maxLen, align 4
  store i32 0, i32* %offset, align 4
  %52 = load i32, i32* %delta2, align 4
  %53 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %53, i32 0, i32 6
  %54 = load i32, i32* %cyclicBufferSize, align 4
  %cmp42 = icmp ult i32 %52, %54
  br i1 %cmp42, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.end
  %55 = load i8*, i8** %cur, align 8
  %56 = load i32, i32* %delta2, align 4
  %idx.ext = zext i32 %56 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 %idx.neg
  %57 = load i8, i8* %add.ptr, align 1
  %conv44 = zext i8 %57 to i32
  %58 = load i8*, i8** %cur, align 8
  %59 = load i8, i8* %58, align 1
  %conv45 = zext i8 %59 to i32
  %cmp46 = icmp eq i32 %conv44, %conv45
  br i1 %cmp46, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %land.lhs.true
  store i32 2, i32* %maxLen, align 4
  %60 = load i32*, i32** %distances.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 2, i32* %arrayidx49, align 4
  %61 = load i32, i32* %delta2, align 4
  %sub50 = sub i32 %61, 1
  %62 = load i32*, i32** %distances.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %sub50, i32* %arrayidx51, align 4
  store i32 2, i32* %offset, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %land.lhs.true, %if.end
  %63 = load i32, i32* %delta2, align 4
  %64 = load i32, i32* %delta3, align 4
  %cmp53 = icmp ne i32 %63, %64
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.73

land.lhs.true.55:                                 ; preds = %if.end.52
  %65 = load i32, i32* %delta3, align 4
  %66 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize56 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %66, i32 0, i32 6
  %67 = load i32, i32* %cyclicBufferSize56, align 4
  %cmp57 = icmp ult i32 %65, %67
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.73

land.lhs.true.59:                                 ; preds = %land.lhs.true.55
  %68 = load i8*, i8** %cur, align 8
  %69 = load i32, i32* %delta3, align 4
  %idx.ext60 = zext i32 %69 to i64
  %idx.neg61 = sub i64 0, %idx.ext60
  %add.ptr62 = getelementptr inbounds i8, i8* %68, i64 %idx.neg61
  %70 = load i8, i8* %add.ptr62, align 1
  %conv63 = zext i8 %70 to i32
  %71 = load i8*, i8** %cur, align 8
  %72 = load i8, i8* %71, align 1
  %conv64 = zext i8 %72 to i32
  %cmp65 = icmp eq i32 %conv63, %conv64
  br i1 %cmp65, label %if.then.67, label %if.end.73

if.then.67:                                       ; preds = %land.lhs.true.59
  store i32 3, i32* %maxLen, align 4
  %73 = load i32, i32* %delta3, align 4
  %sub68 = sub i32 %73, 1
  %74 = load i32, i32* %offset, align 4
  %add69 = add i32 %74, 1
  %idxprom70 = zext i32 %add69 to i64
  %75 = load i32*, i32** %distances.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %75, i64 %idxprom70
  store i32 %sub68, i32* %arrayidx71, align 4
  %76 = load i32, i32* %offset, align 4
  %add72 = add i32 %76, 2
  store i32 %add72, i32* %offset, align 4
  %77 = load i32, i32* %delta3, align 4
  store i32 %77, i32* %delta2, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.67, %land.lhs.true.59, %land.lhs.true.55, %if.end.52
  %78 = load i32, i32* %offset, align 4
  %cmp74 = icmp ne i32 %78, 0
  br i1 %cmp74, label %if.then.76, label %if.end.109

if.then.76:                                       ; preds = %if.end.73
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.76
  %79 = load i32, i32* %maxLen, align 4
  %80 = load i32, i32* %lenLimit, align 4
  %cmp77 = icmp ne i32 %79, %80
  br i1 %cmp77, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %81 = load i32, i32* %maxLen, align 4
  %conv79 = zext i32 %81 to i64
  %82 = load i32, i32* %delta2, align 4
  %conv80 = zext i32 %82 to i64
  %sub81 = sub nsw i64 %conv79, %conv80
  %83 = load i8*, i8** %cur, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %83, i64 %sub81
  %84 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %84 to i32
  %85 = load i32, i32* %maxLen, align 4
  %idxprom84 = zext i32 %85 to i64
  %86 = load i8*, i8** %cur, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %86, i64 %idxprom84
  %87 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %87 to i32
  %cmp87 = icmp ne i32 %conv83, %conv86
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %for.body
  br label %for.end

if.end.90:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.90
  %88 = load i32, i32* %maxLen, align 4
  %inc = add i32 %88, 1
  store i32 %inc, i32* %maxLen, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.89, %for.cond
  %89 = load i32, i32* %maxLen, align 4
  %90 = load i32, i32* %offset, align 4
  %sub91 = sub i32 %90, 2
  %idxprom92 = zext i32 %sub91 to i64
  %91 = load i32*, i32** %distances.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %91, i64 %idxprom92
  store i32 %89, i32* %arrayidx93, align 4
  %92 = load i32, i32* %maxLen, align 4
  %93 = load i32, i32* %lenLimit, align 4
  %cmp94 = icmp eq i32 %92, %93
  br i1 %cmp94, label %if.then.96, label %if.end.108

if.then.96:                                       ; preds = %for.end
  %94 = load i32, i32* %curMatch, align 4
  %95 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %95, i32 0, i32 5
  %96 = load i32, i32* %cyclicBufferPos, align 4
  %idxprom97 = zext i32 %96 to i64
  %97 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %97, i32 0, i32 9
  %98 = load i32*, i32** %son, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %98, i64 %idxprom97
  store i32 %94, i32* %arrayidx98, align 4
  %99 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos99 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %99, i32 0, i32 5
  %100 = load i32, i32* %cyclicBufferPos99, align 4
  %inc100 = add i32 %100, 1
  store i32 %inc100, i32* %cyclicBufferPos99, align 4
  %101 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer101 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %101, i32 0, i32 0
  %102 = load i8*, i8** %buffer101, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr, i8** %buffer101, align 8
  %103 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos102 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %103, i32 0, i32 1
  %104 = load i32, i32* %pos102, align 4
  %inc103 = add i32 %104, 1
  store i32 %inc103, i32* %pos102, align 4
  %105 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %105, i32 0, i32 2
  %106 = load i32, i32* %posLimit, align 4
  %cmp104 = icmp eq i32 %inc103, %106
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.then.96
  %107 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %107)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.then.96
  %108 = load i32, i32* %offset, align 4
  store i32 %108, i32* %retval
  br label %return

if.end.108:                                       ; preds = %for.end
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.73
  %109 = load i32, i32* %maxLen, align 4
  %cmp110 = icmp ult i32 %109, 3
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.109
  store i32 3, i32* %maxLen, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.end.109
  %110 = load i32, i32* %lenLimit, align 4
  %111 = load i32, i32* %curMatch, align 4
  %112 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos114 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %112, i32 0, i32 1
  %113 = load i32, i32* %pos114, align 4
  %114 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer115 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %114, i32 0, i32 0
  %115 = load i8*, i8** %buffer115, align 8
  %116 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son116 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %116, i32 0, i32 9
  %117 = load i32*, i32** %son116, align 8
  %118 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos117 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %118, i32 0, i32 5
  %119 = load i32, i32* %cyclicBufferPos117, align 4
  %120 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize118 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %120, i32 0, i32 6
  %121 = load i32, i32* %cyclicBufferSize118, align 4
  %122 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cutValue = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %122, i32 0, i32 11
  %123 = load i32, i32* %cutValue, align 4
  %124 = load i32*, i32** %distances.addr, align 8
  %125 = load i32, i32* %offset, align 4
  %idx.ext119 = zext i32 %125 to i64
  %add.ptr120 = getelementptr inbounds i32, i32* %124, i64 %idx.ext119
  %126 = load i32, i32* %maxLen, align 4
  %call = call i32* @Hc_GetMatchesSpec(i32 %110, i32 %111, i32 %113, i8* %115, i32* %117, i32 %119, i32 %121, i32 %123, i32* %add.ptr120, i32 %126)
  %127 = load i32*, i32** %distances.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %127 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv121 = trunc i64 %sub.ptr.div to i32
  store i32 %conv121, i32* %offset, align 4
  %128 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos122 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %128, i32 0, i32 5
  %129 = load i32, i32* %cyclicBufferPos122, align 4
  %inc123 = add i32 %129, 1
  store i32 %inc123, i32* %cyclicBufferPos122, align 4
  %130 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer124 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %130, i32 0, i32 0
  %131 = load i8*, i8** %buffer124, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr125, i8** %buffer124, align 8
  %132 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos126 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %132, i32 0, i32 1
  %133 = load i32, i32* %pos126, align 4
  %inc127 = add i32 %133, 1
  store i32 %inc127, i32* %pos126, align 4
  %134 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit128 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %134, i32 0, i32 2
  %135 = load i32, i32* %posLimit128, align 4
  %cmp129 = icmp eq i32 %inc127, %135
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.113
  %136 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %136)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %if.end.113
  %137 = load i32, i32* %offset, align 4
  store i32 %137, i32* %retval
  br label %return

return:                                           ; preds = %if.end.132, %if.end.107, %if.then
  %138 = load i32, i32* %retval
  ret i32 %138
}

; Function Attrs: nounwind uwtable
define internal void @Hc4_MatchFinder_Skip(%struct._CMatchFinder* %p, i32 %num) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %num.addr = alloca i32, align 4
  %hash2Value = alloca i32, align 4
  %hash3Value = alloca i32, align 4
  %lenLimit = alloca i32, align 4
  %hashValue = alloca i32, align 4
  %cur = alloca i8*, align 8
  %curMatch = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %lenLimit1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 4
  %1 = load i32, i32* %lenLimit1, align 4
  store i32 %1, i32* %lenLimit, align 4
  %2 = load i32, i32* %lenLimit, align 4
  %cmp = icmp ult i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_MovePos(%struct._CMatchFinder* %3)
  br label %do.cond

if.end:                                           ; preds = %do.body
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %cur, align 8
  %6 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %7 to i64
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %8, i32 0, i32 28
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %crc, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i8*, i8** %cur, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %11 to i32
  %xor = xor i32 %9, %conv
  store i32 %xor, i32* %temp, align 4
  %12 = load i32, i32* %temp, align 4
  %and = and i32 %12, 1023
  store i32 %and, i32* %hash2Value, align 4
  %13 = load i32, i32* %temp, align 4
  %14 = load i8*, i8** %cur, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %15 to i32
  %shl = shl i32 %conv5, 8
  %xor6 = xor i32 %13, %shl
  %and7 = and i32 %xor6, 65535
  store i32 %and7, i32* %hash3Value, align 4
  %16 = load i32, i32* %temp, align 4
  %17 = load i8*, i8** %cur, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %18 to i32
  %shl10 = shl i32 %conv9, 8
  %xor11 = xor i32 %16, %shl10
  %19 = load i8*, i8** %cur, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %19, i64 3
  %20 = load i8, i8* %arrayidx12, align 1
  %idxprom13 = zext i8 %20 to i64
  %21 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc14 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %21, i32 0, i32 28
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* %crc14, i32 0, i64 %idxprom13
  %22 = load i32, i32* %arrayidx15, align 4
  %shl16 = shl i32 %22, 5
  %xor17 = xor i32 %xor11, %shl16
  %23 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hashMask = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %23, i32 0, i32 10
  %24 = load i32, i32* %hashMask, align 4
  %and18 = and i32 %xor17, %24
  store i32 %and18, i32* %hashValue, align 4
  %25 = load i32, i32* %hashValue, align 4
  %add = add i32 66560, %25
  %idxprom19 = zext i32 %add to i64
  %26 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %26, i32 0, i32 8
  %27 = load i32*, i32** %hash, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %27, i64 %idxprom19
  %28 = load i32, i32* %arrayidx20, align 4
  store i32 %28, i32* %curMatch, align 4
  %29 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %29, i32 0, i32 1
  %30 = load i32, i32* %pos, align 4
  %31 = load i32, i32* %hashValue, align 4
  %add21 = add i32 66560, %31
  %idxprom22 = zext i32 %add21 to i64
  %32 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash23 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %32, i32 0, i32 8
  %33 = load i32*, i32** %hash23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %33, i64 %idxprom22
  store i32 %30, i32* %arrayidx24, align 4
  %34 = load i32, i32* %hash3Value, align 4
  %add25 = add i32 1024, %34
  %idxprom26 = zext i32 %add25 to i64
  %35 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash27 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %35, i32 0, i32 8
  %36 = load i32*, i32** %hash27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %36, i64 %idxprom26
  store i32 %30, i32* %arrayidx28, align 4
  %37 = load i32, i32* %hash2Value, align 4
  %idxprom29 = zext i32 %37 to i64
  %38 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash30 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %38, i32 0, i32 8
  %39 = load i32*, i32** %hash30, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %39, i64 %idxprom29
  store i32 %30, i32* %arrayidx31, align 4
  %40 = load i32, i32* %curMatch, align 4
  %41 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %41, i32 0, i32 5
  %42 = load i32, i32* %cyclicBufferPos, align 4
  %idxprom32 = zext i32 %42 to i64
  %43 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %43, i32 0, i32 9
  %44 = load i32*, i32** %son, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %44, i64 %idxprom32
  store i32 %40, i32* %arrayidx33, align 4
  %45 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos34 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %45, i32 0, i32 5
  %46 = load i32, i32* %cyclicBufferPos34, align 4
  %inc = add i32 %46, 1
  store i32 %inc, i32* %cyclicBufferPos34, align 4
  %47 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer35 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %47, i32 0, i32 0
  %48 = load i8*, i8** %buffer35, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr, i8** %buffer35, align 8
  %49 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos36 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %49, i32 0, i32 1
  %50 = load i32, i32* %pos36, align 4
  %inc37 = add i32 %50, 1
  store i32 %inc37, i32* %pos36, align 4
  %51 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %51, i32 0, i32 2
  %52 = load i32, i32* %posLimit, align 4
  %cmp38 = icmp eq i32 %inc37, %52
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end
  %53 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %53)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.41, %if.then
  %54 = load i32, i32* %num.addr, align 4
  %dec = add i32 %54, -1
  store i32 %dec, i32* %num.addr, align 4
  %cmp42 = icmp ne i32 %dec, 0
  br i1 %cmp42, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Bt2_MatchFinder_GetMatches(%struct._CMatchFinder* %p, i32* %distances) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %distances.addr = alloca i32*, align 8
  %offset = alloca i32, align 4
  %lenLimit = alloca i32, align 4
  %hashValue = alloca i32, align 4
  %cur = alloca i8*, align 8
  %curMatch = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32* %distances, i32** %distances.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %lenLimit1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 4
  %1 = load i32, i32* %lenLimit1, align 4
  store i32 %1, i32* %lenLimit, align 4
  %2 = load i32, i32* %lenLimit, align 4
  %cmp = icmp ult i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_MovePos(%struct._CMatchFinder* %3)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %cur, align 8
  %6 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i8*, i8** %cur, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %9 to i32
  %shl = shl i32 %conv3, 8
  %or = or i32 %conv, %shl
  store i32 %or, i32* %hashValue, align 4
  %10 = load i32, i32* %hashValue, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %11, i32 0, i32 8
  %12 = load i32*, i32** %hash, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %13 = load i32, i32* %arrayidx4, align 4
  store i32 %13, i32* %curMatch, align 4
  %14 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %14, i32 0, i32 1
  %15 = load i32, i32* %pos, align 4
  %16 = load i32, i32* %hashValue, align 4
  %idxprom5 = zext i32 %16 to i64
  %17 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash6 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %17, i32 0, i32 8
  %18 = load i32*, i32** %hash6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %18, i64 %idxprom5
  store i32 %15, i32* %arrayidx7, align 4
  store i32 0, i32* %offset, align 4
  %19 = load i32, i32* %lenLimit, align 4
  %20 = load i32, i32* %curMatch, align 4
  %21 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos8 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %21, i32 0, i32 1
  %22 = load i32, i32* %pos8, align 4
  %23 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer9 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %23, i32 0, i32 0
  %24 = load i8*, i8** %buffer9, align 8
  %25 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %25, i32 0, i32 9
  %26 = load i32*, i32** %son, align 8
  %27 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %27, i32 0, i32 5
  %28 = load i32, i32* %cyclicBufferPos, align 4
  %29 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %29, i32 0, i32 6
  %30 = load i32, i32* %cyclicBufferSize, align 4
  %31 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cutValue = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %31, i32 0, i32 11
  %32 = load i32, i32* %cutValue, align 4
  %33 = load i32*, i32** %distances.addr, align 8
  %34 = load i32, i32* %offset, align 4
  %idx.ext = zext i32 %34 to i64
  %add.ptr = getelementptr inbounds i32, i32* %33, i64 %idx.ext
  %call = call i32* @GetMatchesSpec1(i32 %19, i32 %20, i32 %22, i8* %24, i32* %26, i32 %28, i32 %30, i32 %32, i32* %add.ptr, i32 1)
  %35 = load i32*, i32** %distances.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv10 = trunc i64 %sub.ptr.div to i32
  store i32 %conv10, i32* %offset, align 4
  %36 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos11 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %36, i32 0, i32 5
  %37 = load i32, i32* %cyclicBufferPos11, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %cyclicBufferPos11, align 4
  %38 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer12 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %38, i32 0, i32 0
  %39 = load i8*, i8** %buffer12, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %buffer12, align 8
  %40 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos13 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %40, i32 0, i32 1
  %41 = load i32, i32* %pos13, align 4
  %inc14 = add i32 %41, 1
  store i32 %inc14, i32* %pos13, align 4
  %42 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %42, i32 0, i32 2
  %43 = load i32, i32* %posLimit, align 4
  %cmp15 = icmp eq i32 %inc14, %43
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  %44 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %44)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end
  %45 = load i32, i32* %offset, align 4
  store i32 %45, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal void @Bt2_MatchFinder_Skip(%struct._CMatchFinder* %p, i32 %num) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %num.addr = alloca i32, align 4
  %lenLimit = alloca i32, align 4
  %hashValue = alloca i32, align 4
  %cur = alloca i8*, align 8
  %curMatch = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %lenLimit1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 4
  %1 = load i32, i32* %lenLimit1, align 4
  store i32 %1, i32* %lenLimit, align 4
  %2 = load i32, i32* %lenLimit, align 4
  %cmp = icmp ult i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_MovePos(%struct._CMatchFinder* %3)
  br label %do.cond

if.end:                                           ; preds = %do.body
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %cur, align 8
  %6 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i8*, i8** %cur, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %9 to i32
  %shl = shl i32 %conv3, 8
  %or = or i32 %conv, %shl
  store i32 %or, i32* %hashValue, align 4
  %10 = load i32, i32* %hashValue, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %11, i32 0, i32 8
  %12 = load i32*, i32** %hash, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %13 = load i32, i32* %arrayidx4, align 4
  store i32 %13, i32* %curMatch, align 4
  %14 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %14, i32 0, i32 1
  %15 = load i32, i32* %pos, align 4
  %16 = load i32, i32* %hashValue, align 4
  %idxprom5 = zext i32 %16 to i64
  %17 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash6 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %17, i32 0, i32 8
  %18 = load i32*, i32** %hash6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %18, i64 %idxprom5
  store i32 %15, i32* %arrayidx7, align 4
  %19 = load i32, i32* %lenLimit, align 4
  %20 = load i32, i32* %curMatch, align 4
  %21 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos8 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %21, i32 0, i32 1
  %22 = load i32, i32* %pos8, align 4
  %23 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer9 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %23, i32 0, i32 0
  %24 = load i8*, i8** %buffer9, align 8
  %25 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %25, i32 0, i32 9
  %26 = load i32*, i32** %son, align 8
  %27 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %27, i32 0, i32 5
  %28 = load i32, i32* %cyclicBufferPos, align 4
  %29 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %29, i32 0, i32 6
  %30 = load i32, i32* %cyclicBufferSize, align 4
  %31 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cutValue = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %31, i32 0, i32 11
  %32 = load i32, i32* %cutValue, align 4
  call void @SkipMatchesSpec(i32 %19, i32 %20, i32 %22, i8* %24, i32* %26, i32 %28, i32 %30, i32 %32)
  %33 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos10 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %33, i32 0, i32 5
  %34 = load i32, i32* %cyclicBufferPos10, align 4
  %inc = add i32 %34, 1
  store i32 %inc, i32* %cyclicBufferPos10, align 4
  %35 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer11 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %35, i32 0, i32 0
  %36 = load i8*, i8** %buffer11, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %buffer11, align 8
  %37 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos12 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %37, i32 0, i32 1
  %38 = load i32, i32* %pos12, align 4
  %inc13 = add i32 %38, 1
  store i32 %inc13, i32* %pos12, align 4
  %39 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %39, i32 0, i32 2
  %40 = load i32, i32* %posLimit, align 4
  %cmp14 = icmp eq i32 %inc13, %40
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  %41 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %41)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.17, %if.then
  %42 = load i32, i32* %num.addr, align 4
  %dec = add i32 %42, -1
  store i32 %dec, i32* %num.addr, align 4
  %cmp18 = icmp ne i32 %dec, 0
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Bt3_MatchFinder_GetMatches(%struct._CMatchFinder* %p, i32* %distances) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %distances.addr = alloca i32*, align 8
  %hash2Value = alloca i32, align 4
  %delta2 = alloca i32, align 4
  %maxLen = alloca i32, align 4
  %offset = alloca i32, align 4
  %lenLimit = alloca i32, align 4
  %hashValue = alloca i32, align 4
  %cur = alloca i8*, align 8
  %curMatch = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32* %distances, i32** %distances.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %lenLimit1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 4
  %1 = load i32, i32* %lenLimit1, align 4
  store i32 %1, i32* %lenLimit, align 4
  %2 = load i32, i32* %lenLimit, align 4
  %cmp = icmp ult i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_MovePos(%struct._CMatchFinder* %3)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %cur, align 8
  %6 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %7 to i64
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %8, i32 0, i32 28
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %crc, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i8*, i8** %cur, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %11 to i32
  %xor = xor i32 %9, %conv
  store i32 %xor, i32* %temp, align 4
  %12 = load i32, i32* %temp, align 4
  %and = and i32 %12, 1023
  store i32 %and, i32* %hash2Value, align 4
  %13 = load i32, i32* %temp, align 4
  %14 = load i8*, i8** %cur, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %15 to i32
  %shl = shl i32 %conv5, 8
  %xor6 = xor i32 %13, %shl
  %16 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hashMask = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %16, i32 0, i32 10
  %17 = load i32, i32* %hashMask, align 4
  %and7 = and i32 %xor6, %17
  store i32 %and7, i32* %hashValue, align 4
  %18 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %18, i32 0, i32 1
  %19 = load i32, i32* %pos, align 4
  %20 = load i32, i32* %hash2Value, align 4
  %idxprom8 = zext i32 %20 to i64
  %21 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %21, i32 0, i32 8
  %22 = load i32*, i32** %hash, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %22, i64 %idxprom8
  %23 = load i32, i32* %arrayidx9, align 4
  %sub = sub i32 %19, %23
  store i32 %sub, i32* %delta2, align 4
  %24 = load i32, i32* %hashValue, align 4
  %add = add i32 1024, %24
  %idxprom10 = zext i32 %add to i64
  %25 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash11 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %25, i32 0, i32 8
  %26 = load i32*, i32** %hash11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %26, i64 %idxprom10
  %27 = load i32, i32* %arrayidx12, align 4
  store i32 %27, i32* %curMatch, align 4
  %28 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos13 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %28, i32 0, i32 1
  %29 = load i32, i32* %pos13, align 4
  %30 = load i32, i32* %hashValue, align 4
  %add14 = add i32 1024, %30
  %idxprom15 = zext i32 %add14 to i64
  %31 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash16 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %31, i32 0, i32 8
  %32 = load i32*, i32** %hash16, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %32, i64 %idxprom15
  store i32 %29, i32* %arrayidx17, align 4
  %33 = load i32, i32* %hash2Value, align 4
  %idxprom18 = zext i32 %33 to i64
  %34 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash19 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %34, i32 0, i32 8
  %35 = load i32*, i32** %hash19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %35, i64 %idxprom18
  store i32 %29, i32* %arrayidx20, align 4
  store i32 2, i32* %maxLen, align 4
  store i32 0, i32* %offset, align 4
  %36 = load i32, i32* %delta2, align 4
  %37 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %37, i32 0, i32 6
  %38 = load i32, i32* %cyclicBufferSize, align 4
  %cmp21 = icmp ult i32 %36, %38
  br i1 %cmp21, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %if.end
  %39 = load i8*, i8** %cur, align 8
  %40 = load i32, i32* %delta2, align 4
  %idx.ext = zext i32 %40 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.neg
  %41 = load i8, i8* %add.ptr, align 1
  %conv23 = zext i8 %41 to i32
  %42 = load i8*, i8** %cur, align 8
  %43 = load i8, i8* %42, align 1
  %conv24 = zext i8 %43 to i32
  %cmp25 = icmp eq i32 %conv23, %conv24
  br i1 %cmp25, label %if.then.27, label %if.end.61

if.then.27:                                       ; preds = %land.lhs.true
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.27
  %44 = load i32, i32* %maxLen, align 4
  %45 = load i32, i32* %lenLimit, align 4
  %cmp28 = icmp ne i32 %44, %45
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load i32, i32* %maxLen, align 4
  %conv30 = zext i32 %46 to i64
  %47 = load i32, i32* %delta2, align 4
  %conv31 = zext i32 %47 to i64
  %sub32 = sub nsw i64 %conv30, %conv31
  %48 = load i8*, i8** %cur, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %48, i64 %sub32
  %49 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %49 to i32
  %50 = load i32, i32* %maxLen, align 4
  %idxprom35 = zext i32 %50 to i64
  %51 = load i8*, i8** %cur, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %51, i64 %idxprom35
  %52 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %52 to i32
  %cmp38 = icmp ne i32 %conv34, %conv37
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.body
  br label %for.end

if.end.41:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %53 = load i32, i32* %maxLen, align 4
  %inc = add i32 %53, 1
  store i32 %inc, i32* %maxLen, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.40, %for.cond
  %54 = load i32, i32* %maxLen, align 4
  %55 = load i32*, i32** %distances.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %54, i32* %arrayidx42, align 4
  %56 = load i32, i32* %delta2, align 4
  %sub43 = sub i32 %56, 1
  %57 = load i32*, i32** %distances.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %sub43, i32* %arrayidx44, align 4
  store i32 2, i32* %offset, align 4
  %58 = load i32, i32* %maxLen, align 4
  %59 = load i32, i32* %lenLimit, align 4
  %cmp45 = icmp eq i32 %58, %59
  br i1 %cmp45, label %if.then.47, label %if.end.60

if.then.47:                                       ; preds = %for.end
  %60 = load i32, i32* %lenLimit, align 4
  %61 = load i32, i32* %curMatch, align 4
  %62 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos48 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %62, i32 0, i32 1
  %63 = load i32, i32* %pos48, align 4
  %64 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer49 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %64, i32 0, i32 0
  %65 = load i8*, i8** %buffer49, align 8
  %66 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %66, i32 0, i32 9
  %67 = load i32*, i32** %son, align 8
  %68 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %68, i32 0, i32 5
  %69 = load i32, i32* %cyclicBufferPos, align 4
  %70 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize50 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %70, i32 0, i32 6
  %71 = load i32, i32* %cyclicBufferSize50, align 4
  %72 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cutValue = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %72, i32 0, i32 11
  %73 = load i32, i32* %cutValue, align 4
  call void @SkipMatchesSpec(i32 %60, i32 %61, i32 %63, i8* %65, i32* %67, i32 %69, i32 %71, i32 %73)
  %74 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos51 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %74, i32 0, i32 5
  %75 = load i32, i32* %cyclicBufferPos51, align 4
  %inc52 = add i32 %75, 1
  store i32 %inc52, i32* %cyclicBufferPos51, align 4
  %76 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer53 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %76, i32 0, i32 0
  %77 = load i8*, i8** %buffer53, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr, i8** %buffer53, align 8
  %78 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos54 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %78, i32 0, i32 1
  %79 = load i32, i32* %pos54, align 4
  %inc55 = add i32 %79, 1
  store i32 %inc55, i32* %pos54, align 4
  %80 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %80, i32 0, i32 2
  %81 = load i32, i32* %posLimit, align 4
  %cmp56 = icmp eq i32 %inc55, %81
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.47
  %82 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %82)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.then.47
  %83 = load i32, i32* %offset, align 4
  store i32 %83, i32* %retval
  br label %return

if.end.60:                                        ; preds = %for.end
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true, %if.end
  %84 = load i32, i32* %lenLimit, align 4
  %85 = load i32, i32* %curMatch, align 4
  %86 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos62 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %86, i32 0, i32 1
  %87 = load i32, i32* %pos62, align 4
  %88 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer63 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %88, i32 0, i32 0
  %89 = load i8*, i8** %buffer63, align 8
  %90 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son64 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %90, i32 0, i32 9
  %91 = load i32*, i32** %son64, align 8
  %92 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos65 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %92, i32 0, i32 5
  %93 = load i32, i32* %cyclicBufferPos65, align 4
  %94 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize66 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %94, i32 0, i32 6
  %95 = load i32, i32* %cyclicBufferSize66, align 4
  %96 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cutValue67 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %96, i32 0, i32 11
  %97 = load i32, i32* %cutValue67, align 4
  %98 = load i32*, i32** %distances.addr, align 8
  %99 = load i32, i32* %offset, align 4
  %idx.ext68 = zext i32 %99 to i64
  %add.ptr69 = getelementptr inbounds i32, i32* %98, i64 %idx.ext68
  %100 = load i32, i32* %maxLen, align 4
  %call = call i32* @GetMatchesSpec1(i32 %84, i32 %85, i32 %87, i8* %89, i32* %91, i32 %93, i32 %95, i32 %97, i32* %add.ptr69, i32 %100)
  %101 = load i32*, i32** %distances.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %101 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv70 = trunc i64 %sub.ptr.div to i32
  store i32 %conv70, i32* %offset, align 4
  %102 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos71 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %102, i32 0, i32 5
  %103 = load i32, i32* %cyclicBufferPos71, align 4
  %inc72 = add i32 %103, 1
  store i32 %inc72, i32* %cyclicBufferPos71, align 4
  %104 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer73 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %104, i32 0, i32 0
  %105 = load i8*, i8** %buffer73, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr74, i8** %buffer73, align 8
  %106 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos75 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %106, i32 0, i32 1
  %107 = load i32, i32* %pos75, align 4
  %inc76 = add i32 %107, 1
  store i32 %inc76, i32* %pos75, align 4
  %108 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit77 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %108, i32 0, i32 2
  %109 = load i32, i32* %posLimit77, align 4
  %cmp78 = icmp eq i32 %inc76, %109
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.61
  %110 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %110)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.end.61
  %111 = load i32, i32* %offset, align 4
  store i32 %111, i32* %retval
  br label %return

return:                                           ; preds = %if.end.81, %if.end.59, %if.then
  %112 = load i32, i32* %retval
  ret i32 %112
}

; Function Attrs: nounwind uwtable
define internal void @Bt3_MatchFinder_Skip(%struct._CMatchFinder* %p, i32 %num) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %num.addr = alloca i32, align 4
  %hash2Value = alloca i32, align 4
  %lenLimit = alloca i32, align 4
  %hashValue = alloca i32, align 4
  %cur = alloca i8*, align 8
  %curMatch = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %lenLimit1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 4
  %1 = load i32, i32* %lenLimit1, align 4
  store i32 %1, i32* %lenLimit, align 4
  %2 = load i32, i32* %lenLimit, align 4
  %cmp = icmp ult i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_MovePos(%struct._CMatchFinder* %3)
  br label %do.cond

if.end:                                           ; preds = %do.body
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %cur, align 8
  %6 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %7 to i64
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %8, i32 0, i32 28
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %crc, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i8*, i8** %cur, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %11 to i32
  %xor = xor i32 %9, %conv
  store i32 %xor, i32* %temp, align 4
  %12 = load i32, i32* %temp, align 4
  %and = and i32 %12, 1023
  store i32 %and, i32* %hash2Value, align 4
  %13 = load i32, i32* %temp, align 4
  %14 = load i8*, i8** %cur, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %15 to i32
  %shl = shl i32 %conv5, 8
  %xor6 = xor i32 %13, %shl
  %16 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hashMask = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %16, i32 0, i32 10
  %17 = load i32, i32* %hashMask, align 4
  %and7 = and i32 %xor6, %17
  store i32 %and7, i32* %hashValue, align 4
  %18 = load i32, i32* %hashValue, align 4
  %add = add i32 1024, %18
  %idxprom8 = zext i32 %add to i64
  %19 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %19, i32 0, i32 8
  %20 = load i32*, i32** %hash, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %20, i64 %idxprom8
  %21 = load i32, i32* %arrayidx9, align 4
  store i32 %21, i32* %curMatch, align 4
  %22 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %22, i32 0, i32 1
  %23 = load i32, i32* %pos, align 4
  %24 = load i32, i32* %hashValue, align 4
  %add10 = add i32 1024, %24
  %idxprom11 = zext i32 %add10 to i64
  %25 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash12 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %25, i32 0, i32 8
  %26 = load i32*, i32** %hash12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %26, i64 %idxprom11
  store i32 %23, i32* %arrayidx13, align 4
  %27 = load i32, i32* %hash2Value, align 4
  %idxprom14 = zext i32 %27 to i64
  %28 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash15 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %28, i32 0, i32 8
  %29 = load i32*, i32** %hash15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %29, i64 %idxprom14
  store i32 %23, i32* %arrayidx16, align 4
  %30 = load i32, i32* %lenLimit, align 4
  %31 = load i32, i32* %curMatch, align 4
  %32 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos17 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %32, i32 0, i32 1
  %33 = load i32, i32* %pos17, align 4
  %34 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer18 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %34, i32 0, i32 0
  %35 = load i8*, i8** %buffer18, align 8
  %36 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %36, i32 0, i32 9
  %37 = load i32*, i32** %son, align 8
  %38 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %38, i32 0, i32 5
  %39 = load i32, i32* %cyclicBufferPos, align 4
  %40 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %40, i32 0, i32 6
  %41 = load i32, i32* %cyclicBufferSize, align 4
  %42 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cutValue = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %42, i32 0, i32 11
  %43 = load i32, i32* %cutValue, align 4
  call void @SkipMatchesSpec(i32 %30, i32 %31, i32 %33, i8* %35, i32* %37, i32 %39, i32 %41, i32 %43)
  %44 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos19 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %44, i32 0, i32 5
  %45 = load i32, i32* %cyclicBufferPos19, align 4
  %inc = add i32 %45, 1
  store i32 %inc, i32* %cyclicBufferPos19, align 4
  %46 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer20 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %46, i32 0, i32 0
  %47 = load i8*, i8** %buffer20, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %buffer20, align 8
  %48 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos21 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %48, i32 0, i32 1
  %49 = load i32, i32* %pos21, align 4
  %inc22 = add i32 %49, 1
  store i32 %inc22, i32* %pos21, align 4
  %50 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %50, i32 0, i32 2
  %51 = load i32, i32* %posLimit, align 4
  %cmp23 = icmp eq i32 %inc22, %51
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  %52 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %52)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.26, %if.then
  %53 = load i32, i32* %num.addr, align 4
  %dec = add i32 %53, -1
  store i32 %dec, i32* %num.addr, align 4
  %cmp27 = icmp ne i32 %dec, 0
  br i1 %cmp27, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Bt4_MatchFinder_GetMatches(%struct._CMatchFinder* %p, i32* %distances) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %distances.addr = alloca i32*, align 8
  %hash2Value = alloca i32, align 4
  %hash3Value = alloca i32, align 4
  %delta2 = alloca i32, align 4
  %delta3 = alloca i32, align 4
  %maxLen = alloca i32, align 4
  %offset = alloca i32, align 4
  %lenLimit = alloca i32, align 4
  %hashValue = alloca i32, align 4
  %cur = alloca i8*, align 8
  %curMatch = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32* %distances, i32** %distances.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %lenLimit1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 4
  %1 = load i32, i32* %lenLimit1, align 4
  store i32 %1, i32* %lenLimit, align 4
  %2 = load i32, i32* %lenLimit, align 4
  %cmp = icmp ult i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_MovePos(%struct._CMatchFinder* %3)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %cur, align 8
  %6 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %7 to i64
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %8, i32 0, i32 28
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %crc, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i8*, i8** %cur, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %11 to i32
  %xor = xor i32 %9, %conv
  store i32 %xor, i32* %temp, align 4
  %12 = load i32, i32* %temp, align 4
  %and = and i32 %12, 1023
  store i32 %and, i32* %hash2Value, align 4
  %13 = load i32, i32* %temp, align 4
  %14 = load i8*, i8** %cur, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %15 to i32
  %shl = shl i32 %conv5, 8
  %xor6 = xor i32 %13, %shl
  %and7 = and i32 %xor6, 65535
  store i32 %and7, i32* %hash3Value, align 4
  %16 = load i32, i32* %temp, align 4
  %17 = load i8*, i8** %cur, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %18 to i32
  %shl10 = shl i32 %conv9, 8
  %xor11 = xor i32 %16, %shl10
  %19 = load i8*, i8** %cur, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %19, i64 3
  %20 = load i8, i8* %arrayidx12, align 1
  %idxprom13 = zext i8 %20 to i64
  %21 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc14 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %21, i32 0, i32 28
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* %crc14, i32 0, i64 %idxprom13
  %22 = load i32, i32* %arrayidx15, align 4
  %shl16 = shl i32 %22, 5
  %xor17 = xor i32 %xor11, %shl16
  %23 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hashMask = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %23, i32 0, i32 10
  %24 = load i32, i32* %hashMask, align 4
  %and18 = and i32 %xor17, %24
  store i32 %and18, i32* %hashValue, align 4
  %25 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %25, i32 0, i32 1
  %26 = load i32, i32* %pos, align 4
  %27 = load i32, i32* %hash2Value, align 4
  %idxprom19 = zext i32 %27 to i64
  %28 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %28, i32 0, i32 8
  %29 = load i32*, i32** %hash, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %29, i64 %idxprom19
  %30 = load i32, i32* %arrayidx20, align 4
  %sub = sub i32 %26, %30
  store i32 %sub, i32* %delta2, align 4
  %31 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos21 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %31, i32 0, i32 1
  %32 = load i32, i32* %pos21, align 4
  %33 = load i32, i32* %hash3Value, align 4
  %add = add i32 1024, %33
  %idxprom22 = zext i32 %add to i64
  %34 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash23 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %34, i32 0, i32 8
  %35 = load i32*, i32** %hash23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %35, i64 %idxprom22
  %36 = load i32, i32* %arrayidx24, align 4
  %sub25 = sub i32 %32, %36
  store i32 %sub25, i32* %delta3, align 4
  %37 = load i32, i32* %hashValue, align 4
  %add26 = add i32 66560, %37
  %idxprom27 = zext i32 %add26 to i64
  %38 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash28 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %38, i32 0, i32 8
  %39 = load i32*, i32** %hash28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %39, i64 %idxprom27
  %40 = load i32, i32* %arrayidx29, align 4
  store i32 %40, i32* %curMatch, align 4
  %41 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos30 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %41, i32 0, i32 1
  %42 = load i32, i32* %pos30, align 4
  %43 = load i32, i32* %hashValue, align 4
  %add31 = add i32 66560, %43
  %idxprom32 = zext i32 %add31 to i64
  %44 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash33 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %44, i32 0, i32 8
  %45 = load i32*, i32** %hash33, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %45, i64 %idxprom32
  store i32 %42, i32* %arrayidx34, align 4
  %46 = load i32, i32* %hash3Value, align 4
  %add35 = add i32 1024, %46
  %idxprom36 = zext i32 %add35 to i64
  %47 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash37 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %47, i32 0, i32 8
  %48 = load i32*, i32** %hash37, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %48, i64 %idxprom36
  store i32 %42, i32* %arrayidx38, align 4
  %49 = load i32, i32* %hash2Value, align 4
  %idxprom39 = zext i32 %49 to i64
  %50 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash40 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %50, i32 0, i32 8
  %51 = load i32*, i32** %hash40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %51, i64 %idxprom39
  store i32 %42, i32* %arrayidx41, align 4
  store i32 1, i32* %maxLen, align 4
  store i32 0, i32* %offset, align 4
  %52 = load i32, i32* %delta2, align 4
  %53 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %53, i32 0, i32 6
  %54 = load i32, i32* %cyclicBufferSize, align 4
  %cmp42 = icmp ult i32 %52, %54
  br i1 %cmp42, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.end
  %55 = load i8*, i8** %cur, align 8
  %56 = load i32, i32* %delta2, align 4
  %idx.ext = zext i32 %56 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 %idx.neg
  %57 = load i8, i8* %add.ptr, align 1
  %conv44 = zext i8 %57 to i32
  %58 = load i8*, i8** %cur, align 8
  %59 = load i8, i8* %58, align 1
  %conv45 = zext i8 %59 to i32
  %cmp46 = icmp eq i32 %conv44, %conv45
  br i1 %cmp46, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %land.lhs.true
  store i32 2, i32* %maxLen, align 4
  %60 = load i32*, i32** %distances.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 2, i32* %arrayidx49, align 4
  %61 = load i32, i32* %delta2, align 4
  %sub50 = sub i32 %61, 1
  %62 = load i32*, i32** %distances.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %sub50, i32* %arrayidx51, align 4
  store i32 2, i32* %offset, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %land.lhs.true, %if.end
  %63 = load i32, i32* %delta2, align 4
  %64 = load i32, i32* %delta3, align 4
  %cmp53 = icmp ne i32 %63, %64
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.73

land.lhs.true.55:                                 ; preds = %if.end.52
  %65 = load i32, i32* %delta3, align 4
  %66 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize56 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %66, i32 0, i32 6
  %67 = load i32, i32* %cyclicBufferSize56, align 4
  %cmp57 = icmp ult i32 %65, %67
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.73

land.lhs.true.59:                                 ; preds = %land.lhs.true.55
  %68 = load i8*, i8** %cur, align 8
  %69 = load i32, i32* %delta3, align 4
  %idx.ext60 = zext i32 %69 to i64
  %idx.neg61 = sub i64 0, %idx.ext60
  %add.ptr62 = getelementptr inbounds i8, i8* %68, i64 %idx.neg61
  %70 = load i8, i8* %add.ptr62, align 1
  %conv63 = zext i8 %70 to i32
  %71 = load i8*, i8** %cur, align 8
  %72 = load i8, i8* %71, align 1
  %conv64 = zext i8 %72 to i32
  %cmp65 = icmp eq i32 %conv63, %conv64
  br i1 %cmp65, label %if.then.67, label %if.end.73

if.then.67:                                       ; preds = %land.lhs.true.59
  store i32 3, i32* %maxLen, align 4
  %73 = load i32, i32* %delta3, align 4
  %sub68 = sub i32 %73, 1
  %74 = load i32, i32* %offset, align 4
  %add69 = add i32 %74, 1
  %idxprom70 = zext i32 %add69 to i64
  %75 = load i32*, i32** %distances.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %75, i64 %idxprom70
  store i32 %sub68, i32* %arrayidx71, align 4
  %76 = load i32, i32* %offset, align 4
  %add72 = add i32 %76, 2
  store i32 %add72, i32* %offset, align 4
  %77 = load i32, i32* %delta3, align 4
  store i32 %77, i32* %delta2, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.67, %land.lhs.true.59, %land.lhs.true.55, %if.end.52
  %78 = load i32, i32* %offset, align 4
  %cmp74 = icmp ne i32 %78, 0
  br i1 %cmp74, label %if.then.76, label %if.end.110

if.then.76:                                       ; preds = %if.end.73
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.76
  %79 = load i32, i32* %maxLen, align 4
  %80 = load i32, i32* %lenLimit, align 4
  %cmp77 = icmp ne i32 %79, %80
  br i1 %cmp77, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %81 = load i32, i32* %maxLen, align 4
  %conv79 = zext i32 %81 to i64
  %82 = load i32, i32* %delta2, align 4
  %conv80 = zext i32 %82 to i64
  %sub81 = sub nsw i64 %conv79, %conv80
  %83 = load i8*, i8** %cur, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %83, i64 %sub81
  %84 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %84 to i32
  %85 = load i32, i32* %maxLen, align 4
  %idxprom84 = zext i32 %85 to i64
  %86 = load i8*, i8** %cur, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %86, i64 %idxprom84
  %87 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %87 to i32
  %cmp87 = icmp ne i32 %conv83, %conv86
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %for.body
  br label %for.end

if.end.90:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.90
  %88 = load i32, i32* %maxLen, align 4
  %inc = add i32 %88, 1
  store i32 %inc, i32* %maxLen, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.89, %for.cond
  %89 = load i32, i32* %maxLen, align 4
  %90 = load i32, i32* %offset, align 4
  %sub91 = sub i32 %90, 2
  %idxprom92 = zext i32 %sub91 to i64
  %91 = load i32*, i32** %distances.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %91, i64 %idxprom92
  store i32 %89, i32* %arrayidx93, align 4
  %92 = load i32, i32* %maxLen, align 4
  %93 = load i32, i32* %lenLimit, align 4
  %cmp94 = icmp eq i32 %92, %93
  br i1 %cmp94, label %if.then.96, label %if.end.109

if.then.96:                                       ; preds = %for.end
  %94 = load i32, i32* %lenLimit, align 4
  %95 = load i32, i32* %curMatch, align 4
  %96 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos97 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %96, i32 0, i32 1
  %97 = load i32, i32* %pos97, align 4
  %98 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer98 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %98, i32 0, i32 0
  %99 = load i8*, i8** %buffer98, align 8
  %100 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %100, i32 0, i32 9
  %101 = load i32*, i32** %son, align 8
  %102 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %102, i32 0, i32 5
  %103 = load i32, i32* %cyclicBufferPos, align 4
  %104 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize99 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %104, i32 0, i32 6
  %105 = load i32, i32* %cyclicBufferSize99, align 4
  %106 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cutValue = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %106, i32 0, i32 11
  %107 = load i32, i32* %cutValue, align 4
  call void @SkipMatchesSpec(i32 %94, i32 %95, i32 %97, i8* %99, i32* %101, i32 %103, i32 %105, i32 %107)
  %108 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos100 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %108, i32 0, i32 5
  %109 = load i32, i32* %cyclicBufferPos100, align 4
  %inc101 = add i32 %109, 1
  store i32 %inc101, i32* %cyclicBufferPos100, align 4
  %110 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer102 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %110, i32 0, i32 0
  %111 = load i8*, i8** %buffer102, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr, i8** %buffer102, align 8
  %112 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos103 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %112, i32 0, i32 1
  %113 = load i32, i32* %pos103, align 4
  %inc104 = add i32 %113, 1
  store i32 %inc104, i32* %pos103, align 4
  %114 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %114, i32 0, i32 2
  %115 = load i32, i32* %posLimit, align 4
  %cmp105 = icmp eq i32 %inc104, %115
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.then.96
  %116 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %116)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.then.96
  %117 = load i32, i32* %offset, align 4
  store i32 %117, i32* %retval
  br label %return

if.end.109:                                       ; preds = %for.end
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.73
  %118 = load i32, i32* %maxLen, align 4
  %cmp111 = icmp ult i32 %118, 3
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.110
  store i32 3, i32* %maxLen, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %if.end.110
  %119 = load i32, i32* %lenLimit, align 4
  %120 = load i32, i32* %curMatch, align 4
  %121 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos115 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %121, i32 0, i32 1
  %122 = load i32, i32* %pos115, align 4
  %123 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer116 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %123, i32 0, i32 0
  %124 = load i8*, i8** %buffer116, align 8
  %125 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son117 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %125, i32 0, i32 9
  %126 = load i32*, i32** %son117, align 8
  %127 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos118 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %127, i32 0, i32 5
  %128 = load i32, i32* %cyclicBufferPos118, align 4
  %129 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize119 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %129, i32 0, i32 6
  %130 = load i32, i32* %cyclicBufferSize119, align 4
  %131 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cutValue120 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %131, i32 0, i32 11
  %132 = load i32, i32* %cutValue120, align 4
  %133 = load i32*, i32** %distances.addr, align 8
  %134 = load i32, i32* %offset, align 4
  %idx.ext121 = zext i32 %134 to i64
  %add.ptr122 = getelementptr inbounds i32, i32* %133, i64 %idx.ext121
  %135 = load i32, i32* %maxLen, align 4
  %call = call i32* @GetMatchesSpec1(i32 %119, i32 %120, i32 %122, i8* %124, i32* %126, i32 %128, i32 %130, i32 %132, i32* %add.ptr122, i32 %135)
  %136 = load i32*, i32** %distances.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %136 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv123 = trunc i64 %sub.ptr.div to i32
  store i32 %conv123, i32* %offset, align 4
  %137 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos124 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %137, i32 0, i32 5
  %138 = load i32, i32* %cyclicBufferPos124, align 4
  %inc125 = add i32 %138, 1
  store i32 %inc125, i32* %cyclicBufferPos124, align 4
  %139 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer126 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %139, i32 0, i32 0
  %140 = load i8*, i8** %buffer126, align 8
  %incdec.ptr127 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr127, i8** %buffer126, align 8
  %141 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos128 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %141, i32 0, i32 1
  %142 = load i32, i32* %pos128, align 4
  %inc129 = add i32 %142, 1
  store i32 %inc129, i32* %pos128, align 4
  %143 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit130 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %143, i32 0, i32 2
  %144 = load i32, i32* %posLimit130, align 4
  %cmp131 = icmp eq i32 %inc129, %144
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.114
  %145 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %145)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %if.end.114
  %146 = load i32, i32* %offset, align 4
  store i32 %146, i32* %retval
  br label %return

return:                                           ; preds = %if.end.134, %if.end.108, %if.then
  %147 = load i32, i32* %retval
  ret i32 %147
}

; Function Attrs: nounwind uwtable
define internal void @Bt4_MatchFinder_Skip(%struct._CMatchFinder* %p, i32 %num) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %num.addr = alloca i32, align 4
  %hash2Value = alloca i32, align 4
  %hash3Value = alloca i32, align 4
  %lenLimit = alloca i32, align 4
  %hashValue = alloca i32, align 4
  %cur = alloca i8*, align 8
  %curMatch = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %lenLimit1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 4
  %1 = load i32, i32* %lenLimit1, align 4
  store i32 %1, i32* %lenLimit, align 4
  %2 = load i32, i32* %lenLimit, align 4
  %cmp = icmp ult i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_MovePos(%struct._CMatchFinder* %3)
  br label %do.cond

if.end:                                           ; preds = %do.body
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %cur, align 8
  %6 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %7 to i64
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %8, i32 0, i32 28
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %crc, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i8*, i8** %cur, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %11 to i32
  %xor = xor i32 %9, %conv
  store i32 %xor, i32* %temp, align 4
  %12 = load i32, i32* %temp, align 4
  %and = and i32 %12, 1023
  store i32 %and, i32* %hash2Value, align 4
  %13 = load i32, i32* %temp, align 4
  %14 = load i8*, i8** %cur, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %15 to i32
  %shl = shl i32 %conv5, 8
  %xor6 = xor i32 %13, %shl
  %and7 = and i32 %xor6, 65535
  store i32 %and7, i32* %hash3Value, align 4
  %16 = load i32, i32* %temp, align 4
  %17 = load i8*, i8** %cur, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %18 to i32
  %shl10 = shl i32 %conv9, 8
  %xor11 = xor i32 %16, %shl10
  %19 = load i8*, i8** %cur, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %19, i64 3
  %20 = load i8, i8* %arrayidx12, align 1
  %idxprom13 = zext i8 %20 to i64
  %21 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %crc14 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %21, i32 0, i32 28
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* %crc14, i32 0, i64 %idxprom13
  %22 = load i32, i32* %arrayidx15, align 4
  %shl16 = shl i32 %22, 5
  %xor17 = xor i32 %xor11, %shl16
  %23 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hashMask = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %23, i32 0, i32 10
  %24 = load i32, i32* %hashMask, align 4
  %and18 = and i32 %xor17, %24
  store i32 %and18, i32* %hashValue, align 4
  %25 = load i32, i32* %hashValue, align 4
  %add = add i32 66560, %25
  %idxprom19 = zext i32 %add to i64
  %26 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %26, i32 0, i32 8
  %27 = load i32*, i32** %hash, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %27, i64 %idxprom19
  %28 = load i32, i32* %arrayidx20, align 4
  store i32 %28, i32* %curMatch, align 4
  %29 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %29, i32 0, i32 1
  %30 = load i32, i32* %pos, align 4
  %31 = load i32, i32* %hash3Value, align 4
  %add21 = add i32 1024, %31
  %idxprom22 = zext i32 %add21 to i64
  %32 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash23 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %32, i32 0, i32 8
  %33 = load i32*, i32** %hash23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %33, i64 %idxprom22
  store i32 %30, i32* %arrayidx24, align 4
  %34 = load i32, i32* %hash2Value, align 4
  %idxprom25 = zext i32 %34 to i64
  %35 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash26 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %35, i32 0, i32 8
  %36 = load i32*, i32** %hash26, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %36, i64 %idxprom25
  store i32 %30, i32* %arrayidx27, align 4
  %37 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos28 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %37, i32 0, i32 1
  %38 = load i32, i32* %pos28, align 4
  %39 = load i32, i32* %hashValue, align 4
  %add29 = add i32 66560, %39
  %idxprom30 = zext i32 %add29 to i64
  %40 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash31 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %40, i32 0, i32 8
  %41 = load i32*, i32** %hash31, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %41, i64 %idxprom30
  store i32 %38, i32* %arrayidx32, align 4
  %42 = load i32, i32* %lenLimit, align 4
  %43 = load i32, i32* %curMatch, align 4
  %44 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos33 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %44, i32 0, i32 1
  %45 = load i32, i32* %pos33, align 4
  %46 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer34 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %46, i32 0, i32 0
  %47 = load i8*, i8** %buffer34, align 8
  %48 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %son = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %48, i32 0, i32 9
  %49 = load i32*, i32** %son, align 8
  %50 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %50, i32 0, i32 5
  %51 = load i32, i32* %cyclicBufferPos, align 4
  %52 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferSize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %52, i32 0, i32 6
  %53 = load i32, i32* %cyclicBufferSize, align 4
  %54 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cutValue = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %54, i32 0, i32 11
  %55 = load i32, i32* %cutValue, align 4
  call void @SkipMatchesSpec(i32 %42, i32 %43, i32 %45, i8* %47, i32* %49, i32 %51, i32 %53, i32 %55)
  %56 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %cyclicBufferPos35 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %56, i32 0, i32 5
  %57 = load i32, i32* %cyclicBufferPos35, align 4
  %inc = add i32 %57, 1
  store i32 %inc, i32* %cyclicBufferPos35, align 4
  %58 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %buffer36 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %58, i32 0, i32 0
  %59 = load i8*, i8** %buffer36, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr, i8** %buffer36, align 8
  %60 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos37 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %60, i32 0, i32 1
  %61 = load i32, i32* %pos37, align 4
  %inc38 = add i32 %61, 1
  store i32 %inc38, i32* %pos37, align 4
  %62 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %posLimit = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %62, i32 0, i32 2
  %63 = load i32, i32* %posLimit, align 4
  %cmp39 = icmp eq i32 %inc38, %63
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end
  %64 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_CheckLimits(%struct._CMatchFinder* %64)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.42, %if.then
  %65 = load i32, i32* %num.addr, align 4
  %dec = add i32 %65, -1
  store i32 %dec, i32* %num.addr, align 4
  %cmp43 = icmp ne i32 %dec, 0
  br i1 %cmp43, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MatchFinder_Normalize(%struct._CMatchFinder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  %subValue = alloca i32, align 4
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %call = call i32 @MatchFinder_GetSubValue(%struct._CMatchFinder* %0)
  store i32 %call, i32* %subValue, align 4
  %1 = load i32, i32* %subValue, align 4
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %2, i32 0, i32 8
  %3 = load i32*, i32** %hash, align 8
  %4 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %hashSizeSum = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %4, i32 0, i32 25
  %5 = load i32, i32* %hashSizeSum, align 4
  %6 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %numSons = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %6, i32 0, i32 26
  %7 = load i32, i32* %numSons, align 4
  %add = add i32 %5, %7
  call void @MatchFinder_Normalize3(i32 %1, i32* %3, i32 %add)
  %8 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %9 = load i32, i32* %subValue, align 4
  call void @MatchFinder_ReduceOffsets(%struct._CMatchFinder* %8, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MatchFinder_CheckAndMoveAndRead(%struct._CMatchFinder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %call = call i32 @MatchFinder_NeedMove(%struct._CMatchFinder* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_MoveBlock(%struct._CMatchFinder* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  call void @MatchFinder_ReadBlock(%struct._CMatchFinder* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @MatchFinder_GetSubValue(%struct._CMatchFinder* %p) #0 {
entry:
  %p.addr = alloca %struct._CMatchFinder*, align 8
  store %struct._CMatchFinder* %p, %struct._CMatchFinder** %p.addr, align 8
  %0 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %pos = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %0, i32 0, i32 1
  %1 = load i32, i32* %pos, align 4
  %2 = load %struct._CMatchFinder*, %struct._CMatchFinder** %p.addr, align 8
  %historySize = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %2, i32 0, i32 23
  %3 = load i32, i32* %historySize, align 4
  %sub = sub i32 %1, %3
  %sub1 = sub i32 %sub, 1
  %and = and i32 %sub1, -1024
  ret i32 %and
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
