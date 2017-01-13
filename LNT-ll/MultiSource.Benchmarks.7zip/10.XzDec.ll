; ModuleID = './MultiSource.Benchmarks.7zip/10.XzDec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct.CBraState = type { i64, i64, i64, i32, i32, i32, i32, i32, [256 x i8], [16384 x i8] }
%struct._IStateCoder = type { i8*, void (i8*, %struct.ISzAlloc*)*, i32 (i8*, i8*, i64, %struct.ISzAlloc*)*, void (i8*)*, i32 (i8*, i8*, i64*, i8*, i64*, i32, i32, i32*)* }
%struct.CMixCoder = type { %struct.ISzAlloc*, i8*, i32, [3 x i32], [3 x i64], [3 x i64], [4 x i64], [4 x %struct._IStateCoder] }
%struct.CLzma2Dec = type { %struct.CLzmaDec, i32, i32, i32, i8, i32, i32, i32 }
%struct.CLzmaDec = type { %struct._CLzmaProps, i16*, i8*, i8*, i32, i32, i64, i64, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, [20 x i8] }
%struct._CLzmaProps = type { i32, i32, i32, i32 }
%struct.CXzBlock = type { i64, i64, i8, [4 x %struct.CXzFilter] }
%struct.CXzFilter = type { i64, i32, [20 x i8] }
%struct.CXzUnpacker = type { i32, i32, i32, i32, i16, i32, i64, i64, i64, i64, i64, i64, i64, i32, %struct.CMixCoder, %struct.CXzBlock, %struct.CXzCheck, %struct.CSha256, [32 x i8], [1024 x i8] }
%struct.CXzCheck = type { i32, i32, i64, %struct.CSha256 }
%struct.CSha256 = type { [8 x i32], i64, [64 x i8] }

@XZ_SIG = external global [6 x i8], align 1
@g_CrcTable = external global [0 x i32], align 4
@XZ_FOOTER_SIG = external global [2 x i8], align 1

; Function Attrs: nounwind uwtable
define i32 @Xz_ReadVarInt(i8* %p, i64 %maxSize, i64* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %maxSize.addr = alloca i64, align 8
  %value.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  %limit = alloca i32, align 4
  %b = alloca i8, align 1
  store i8* %p, i8** %p.addr, align 8
  store i64 %maxSize, i64* %maxSize.addr, align 8
  store i64* %value, i64** %value.addr, align 8
  %0 = load i64*, i64** %value.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load i64, i64* %maxSize.addr, align 8
  %cmp = icmp ugt i64 %1, 9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i64, i64* %maxSize.addr, align 8
  %conv = trunc i64 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %limit, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %cond.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %limit, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  store i8 %7, i8* %b, align 1
  %8 = load i8, i8* %b, align 1
  %conv3 = zext i8 %8 to i32
  %and = and i32 %conv3, 127
  %conv4 = sext i32 %and to i64
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  %mul = mul nsw i32 7, %9
  %sh_prom = zext i32 %mul to i64
  %shl = shl i64 %conv4, %sh_prom
  %10 = load i64*, i64** %value.addr, align 8
  %11 = load i64, i64* %10, align 8
  %or = or i64 %11, %shl
  store i64 %or, i64* %10, align 8
  %12 = load i8, i8* %b, align 1
  %conv5 = zext i8 %12 to i32
  %and6 = and i32 %conv5, 128
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i8, i8* %b, align 1
  %conv9 = zext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %land.lhs.true, label %cond.false.15

land.lhs.true:                                    ; preds = %if.then
  %14 = load i32, i32* %i, align 4
  %cmp12 = icmp ne i32 %14, 1
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %land.lhs.true
  br label %cond.end.16

cond.false.15:                                    ; preds = %land.lhs.true, %if.then
  %15 = load i32, i32* %i, align 4
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi i32 [ 0, %cond.true.14 ], [ %15, %cond.false.15 ]
  store i32 %cond17, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %cond.end.16
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @BraState_Free(i8* %pp, %struct.ISzAlloc* %alloc) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %0, i32 0, i32 1
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = bitcast %struct.ISzAlloc* %2 to i8*
  %4 = load i8*, i8** %pp.addr, align 8
  call void %1(i8* %3, i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @BraState_SetProps(i8* %pp, i8* %props, i64 %propSize, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i8*, align 8
  %props.addr = alloca i8*, align 8
  %propSize.addr = alloca i64, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %p = alloca %struct.CBraState*, align 8
  %v = alloca i32, align 4
  store i8* %pp, i8** %pp.addr, align 8
  store i8* %props, i8** %props.addr, align 8
  store i64 %propSize, i64* %propSize.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CBraState*
  store %struct.CBraState* %1, %struct.CBraState** %p, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  store %struct.ISzAlloc* %2, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %encodeMode = getelementptr inbounds %struct.CBraState, %struct.CBraState* %3, i32 0, i32 4
  store i32 0, i32* %encodeMode, align 4
  %4 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %ip = getelementptr inbounds %struct.CBraState, %struct.CBraState* %4, i32 0, i32 6
  store i32 0, i32* %ip, align 4
  %5 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %methodId = getelementptr inbounds %struct.CBraState, %struct.CBraState* %5, i32 0, i32 3
  %6 = load i32, i32* %methodId, align 4
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %propSize.addr, align 8
  %cmp1 = icmp ne i64 %7, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 4, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load i8*, i8** %props.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %add = add i32 %conv, 1
  %10 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %delta = getelementptr inbounds %struct.CBraState, %struct.CBraState* %10, i32 0, i32 5
  store i32 %add, i32* %delta, align 4
  br label %if.end.30

if.else:                                          ; preds = %entry
  %11 = load i64, i64* %propSize.addr, align 8
  %cmp3 = icmp eq i64 %11, 4
  br i1 %cmp3, label %if.then.5, label %if.else.24

if.then.5:                                        ; preds = %if.else
  %12 = load i8*, i8** %props.addr, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %v, align 4
  %15 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %methodId6 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %15, i32 0, i32 3
  %16 = load i32, i32* %methodId6, align 4
  switch i32 %16, label %sw.epilog [
    i32 5, label %sw.bb
    i32 7, label %sw.bb
    i32 9, label %sw.bb
    i32 8, label %sw.bb.11
    i32 6, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %if.then.5, %if.then.5, %if.then.5
  %17 = load i32, i32* %v, align 4
  %and = and i32 %17, 3
  %cmp7 = icmp ne i32 %and, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.bb
  store i32 4, i32* %retval
  br label %return

if.end.10:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then.5
  %18 = load i32, i32* %v, align 4
  %and12 = and i32 %18, 1
  %cmp13 = icmp ne i32 %and12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.11
  store i32 4, i32* %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb.11
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then.5
  %19 = load i32, i32* %v, align 4
  %and18 = and i32 %19, 15
  %cmp19 = icmp ne i32 %and18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %sw.bb.17
  store i32 4, i32* %retval
  br label %return

if.end.22:                                        ; preds = %sw.bb.17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.5, %if.end.22, %if.end.16, %if.end.10
  %20 = load i32, i32* %v, align 4
  %21 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %ip23 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %21, i32 0, i32 6
  store i32 %20, i32* %ip23, align 4
  br label %if.end.29

if.else.24:                                       ; preds = %if.else
  %22 = load i64, i64* %propSize.addr, align 8
  %cmp25 = icmp ne i64 %22, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else.24
  store i32 4, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.else.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %sw.epilog
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.27, %if.then.21, %if.then.15, %if.then.9, %if.then.2
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define void @BraState_Init(i8* %pp) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %p = alloca %struct.CBraState*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CBraState*
  store %struct.CBraState* %1, %struct.CBraState** %p, align 8
  %2 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal = getelementptr inbounds %struct.CBraState, %struct.CBraState* %2, i32 0, i32 2
  store i64 0, i64* %bufTotal, align 8
  %3 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufConv = getelementptr inbounds %struct.CBraState, %struct.CBraState* %3, i32 0, i32 1
  store i64 0, i64* %bufConv, align 8
  %4 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufPos = getelementptr inbounds %struct.CBraState, %struct.CBraState* %4, i32 0, i32 0
  store i64 0, i64* %bufPos, align 8
  %5 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %x86State = getelementptr inbounds %struct.CBraState, %struct.CBraState* %5, i32 0, i32 7
  store i32 0, i32* %x86State, align 4
  %6 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %methodId = getelementptr inbounds %struct.CBraState, %struct.CBraState* %6, i32 0, i32 3
  %7 = load i32, i32* %methodId, align 4
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %deltaState = getelementptr inbounds %struct.CBraState, %struct.CBraState* %8, i32 0, i32 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %deltaState, i32 0, i32 0
  call void @Delta_Init(i8* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @Delta_Init(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @BraState_SetFromMethod(%struct._IStateCoder* %p, i64 %id, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._IStateCoder*, align 8
  %id.addr = alloca i64, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %decoder = alloca %struct.CBraState*, align 8
  store %struct._IStateCoder* %p, %struct._IStateCoder** %p.addr, align 8
  store i64 %id, i64* %id.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load i64, i64* %id.addr, align 8
  %cmp = icmp ne i64 %0, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %id.addr, align 8
  %cmp1 = icmp ne i64 %1, 4
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i64, i64* %id.addr, align 8
  %cmp3 = icmp ne i64 %2, 5
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %3 = load i64, i64* %id.addr, align 8
  %cmp5 = icmp ne i64 %3, 6
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %4 = load i64, i64* %id.addr, align 8
  %cmp7 = icmp ne i64 %4, 7
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %5 = load i64, i64* %id.addr, align 8
  %cmp9 = icmp ne i64 %5, 8
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %6 = load i64, i64* %id.addr, align 8
  %cmp11 = icmp ne i64 %6, 9
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.10
  store i32 4, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.10, %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  %7 = load %struct._IStateCoder*, %struct._IStateCoder** %p.addr, align 8
  %p12 = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %7, i32 0, i32 0
  store i8* null, i8** %p12, align 8
  %8 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %8, i32 0, i32 0
  %9 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %10 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %11 = bitcast %struct.ISzAlloc* %10 to i8*
  %call = call i8* %9(i8* %11, i64 16688)
  %12 = bitcast i8* %call to %struct.CBraState*
  store %struct.CBraState* %12, %struct.CBraState** %decoder, align 8
  %13 = load %struct.CBraState*, %struct.CBraState** %decoder, align 8
  %cmp13 = icmp eq %struct.CBraState* %13, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 2, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %14 = load i64, i64* %id.addr, align 8
  %conv = trunc i64 %14 to i32
  %15 = load %struct.CBraState*, %struct.CBraState** %decoder, align 8
  %methodId = getelementptr inbounds %struct.CBraState, %struct.CBraState* %15, i32 0, i32 3
  store i32 %conv, i32* %methodId, align 4
  %16 = load %struct.CBraState*, %struct.CBraState** %decoder, align 8
  %17 = bitcast %struct.CBraState* %16 to i8*
  %18 = load %struct._IStateCoder*, %struct._IStateCoder** %p.addr, align 8
  %p16 = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %18, i32 0, i32 0
  store i8* %17, i8** %p16, align 8
  %19 = load %struct._IStateCoder*, %struct._IStateCoder** %p.addr, align 8
  %Free = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %19, i32 0, i32 1
  store void (i8*, %struct.ISzAlloc*)* @BraState_Free, void (i8*, %struct.ISzAlloc*)** %Free, align 8
  %20 = load %struct._IStateCoder*, %struct._IStateCoder** %p.addr, align 8
  %SetProps = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %20, i32 0, i32 2
  store i32 (i8*, i8*, i64, %struct.ISzAlloc*)* @BraState_SetProps, i32 (i8*, i8*, i64, %struct.ISzAlloc*)** %SetProps, align 8
  %21 = load %struct._IStateCoder*, %struct._IStateCoder** %p.addr, align 8
  %Init = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %21, i32 0, i32 3
  store void (i8*)* @BraState_Init, void (i8*)** %Init, align 8
  %22 = load %struct._IStateCoder*, %struct._IStateCoder** %p.addr, align 8
  %Code = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %22, i32 0, i32 4
  store i32 (i8*, i8*, i64*, i8*, i64*, i32, i32, i32*)* @BraState_Code, i32 (i8*, i8*, i64*, i8*, i64*, i32, i32, i32*)** %Code, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @BraState_Code(i8* %pp, i8* %dest, i64* %destLen, i8* %src, i64* %srcLen, i32 %srcWasFinished, i32 %finishMode, i32* %wasFinished) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i64*, align 8
  %src.addr = alloca i8*, align 8
  %srcLen.addr = alloca i64*, align 8
  %srcWasFinished.addr = alloca i32, align 4
  %finishMode.addr = alloca i32, align 4
  %wasFinished.addr = alloca i32*, align 8
  %p = alloca %struct.CBraState*, align 8
  %destLenOrig = alloca i64, align 8
  %srcLenOrig = alloca i64, align 8
  %curSize = alloca i64, align 8
  %curSize22 = alloca i64, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64* %destLen, i64** %destLen.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64* %srcLen, i64** %srcLen.addr, align 8
  store i32 %srcWasFinished, i32* %srcWasFinished.addr, align 4
  store i32 %finishMode, i32* %finishMode.addr, align 4
  store i32* %wasFinished, i32** %wasFinished.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CBraState*
  store %struct.CBraState* %1, %struct.CBraState** %p, align 8
  %2 = load i64*, i64** %destLen.addr, align 8
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* %destLenOrig, align 8
  %4 = load i64*, i64** %srcLen.addr, align 8
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %srcLenOrig, align 8
  %6 = load i64*, i64** %destLen.addr, align 8
  store i64 0, i64* %6, align 8
  %7 = load i64*, i64** %srcLen.addr, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %finishMode.addr, align 4
  store i32 %8, i32* %finishMode.addr, align 4
  %9 = load i32*, i32** %wasFinished.addr, align 8
  store i32 0, i32* %9, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.113, %if.end, %entry
  %10 = load i64, i64* %destLenOrig, align 8
  %cmp = icmp ugt i64 %10, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufPos = getelementptr inbounds %struct.CBraState, %struct.CBraState* %11, i32 0, i32 0
  %12 = load i64, i64* %bufPos, align 8
  %13 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufConv = getelementptr inbounds %struct.CBraState, %struct.CBraState* %13, i32 0, i32 1
  %14 = load i64, i64* %bufConv, align 8
  %cmp1 = icmp ne i64 %12, %14
  br i1 %cmp1, label %if.then, label %if.end.11

if.then:                                          ; preds = %while.body
  %15 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufConv2 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %15, i32 0, i32 1
  %16 = load i64, i64* %bufConv2, align 8
  %17 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufPos3 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %17, i32 0, i32 0
  %18 = load i64, i64* %bufPos3, align 8
  %sub = sub i64 %16, %18
  store i64 %sub, i64* %curSize, align 8
  %19 = load i64, i64* %curSize, align 8
  %20 = load i64, i64* %destLenOrig, align 8
  %cmp4 = icmp ugt i64 %19, %20
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %21 = load i64, i64* %destLenOrig, align 8
  store i64 %21, i64* %curSize, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %22 = load i8*, i8** %dest.addr, align 8
  %23 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %buf = getelementptr inbounds %struct.CBraState, %struct.CBraState* %23, i32 0, i32 9
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf, i32 0, i32 0
  %24 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufPos6 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %24, i32 0, i32 0
  %25 = load i64, i64* %bufPos6, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %25
  %26 = load i64, i64* %curSize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %add.ptr, i64 %26, i32 1, i1 false)
  %27 = load i64, i64* %curSize, align 8
  %28 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufPos7 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %28, i32 0, i32 0
  %29 = load i64, i64* %bufPos7, align 8
  %add = add i64 %29, %27
  store i64 %add, i64* %bufPos7, align 8
  %30 = load i64, i64* %curSize, align 8
  %31 = load i64*, i64** %destLen.addr, align 8
  %32 = load i64, i64* %31, align 8
  %add8 = add i64 %32, %30
  store i64 %add8, i64* %31, align 8
  %33 = load i64, i64* %curSize, align 8
  %34 = load i8*, i8** %dest.addr, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %add.ptr9, i8** %dest.addr, align 8
  %35 = load i64, i64* %curSize, align 8
  %36 = load i64, i64* %destLenOrig, align 8
  %sub10 = sub i64 %36, %35
  store i64 %sub10, i64* %destLenOrig, align 8
  br label %while.cond

if.end.11:                                        ; preds = %while.body
  %37 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufPos12 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %37, i32 0, i32 0
  %38 = load i64, i64* %bufPos12, align 8
  %39 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal = getelementptr inbounds %struct.CBraState, %struct.CBraState* %39, i32 0, i32 2
  %40 = load i64, i64* %bufTotal, align 8
  %sub13 = sub i64 %40, %38
  store i64 %sub13, i64* %bufTotal, align 8
  %41 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %buf14 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %41, i32 0, i32 9
  %42 = bitcast [16384 x i8]* %buf14 to i8*
  %43 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %buf15 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %43, i32 0, i32 9
  %arraydecay16 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf15, i32 0, i32 0
  %44 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufPos17 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %44, i32 0, i32 0
  %45 = load i64, i64* %bufPos17, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %arraydecay16, i64 %45
  %46 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal19 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %46, i32 0, i32 2
  %47 = load i64, i64* %bufTotal19, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %42, i8* %add.ptr18, i64 %47, i32 1, i1 false)
  %48 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufPos20 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %48, i32 0, i32 0
  store i64 0, i64* %bufPos20, align 8
  %49 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufConv21 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %49, i32 0, i32 1
  store i64 0, i64* %bufConv21, align 8
  %50 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal23 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %50, i32 0, i32 2
  %51 = load i64, i64* %bufTotal23, align 8
  %sub24 = sub i64 16384, %51
  store i64 %sub24, i64* %curSize22, align 8
  %52 = load i64, i64* %curSize22, align 8
  %53 = load i64, i64* %srcLenOrig, align 8
  %cmp25 = icmp ugt i64 %52, %53
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.11
  %54 = load i64, i64* %srcLenOrig, align 8
  store i64 %54, i64* %curSize22, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.11
  %55 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %buf28 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %55, i32 0, i32 9
  %arraydecay29 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf28, i32 0, i32 0
  %56 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal30 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %56, i32 0, i32 2
  %57 = load i64, i64* %bufTotal30, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %arraydecay29, i64 %57
  %58 = load i8*, i8** %src.addr, align 8
  %59 = load i64, i64* %curSize22, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr31, i8* %58, i64 %59, i32 1, i1 false)
  %60 = load i64, i64* %curSize22, align 8
  %61 = load i64*, i64** %srcLen.addr, align 8
  %62 = load i64, i64* %61, align 8
  %add32 = add i64 %62, %60
  store i64 %add32, i64* %61, align 8
  %63 = load i64, i64* %curSize22, align 8
  %64 = load i8*, i8** %src.addr, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %64, i64 %63
  store i8* %add.ptr33, i8** %src.addr, align 8
  %65 = load i64, i64* %curSize22, align 8
  %66 = load i64, i64* %srcLenOrig, align 8
  %sub34 = sub i64 %66, %65
  store i64 %sub34, i64* %srcLenOrig, align 8
  %67 = load i64, i64* %curSize22, align 8
  %68 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal35 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %68, i32 0, i32 2
  %69 = load i64, i64* %bufTotal35, align 8
  %add36 = add i64 %69, %67
  store i64 %add36, i64* %bufTotal35, align 8
  %70 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal37 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %70, i32 0, i32 2
  %71 = load i64, i64* %bufTotal37, align 8
  %cmp38 = icmp eq i64 %71, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.27
  br label %while.end

if.end.40:                                        ; preds = %if.end.27
  %72 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %methodId = getelementptr inbounds %struct.CBraState, %struct.CBraState* %72, i32 0, i32 3
  %73 = load i32, i32* %methodId, align 4
  switch i32 %73, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.55
    i32 5, label %sw.bb.61
    i32 6, label %sw.bb.69
    i32 7, label %sw.bb.77
    i32 8, label %sw.bb.85
    i32 9, label %sw.bb.93
  ]

sw.bb:                                            ; preds = %if.end.40
  %74 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %encodeMode = getelementptr inbounds %struct.CBraState, %struct.CBraState* %74, i32 0, i32 4
  %75 = load i32, i32* %encodeMode, align 4
  %tobool = icmp ne i32 %75, 0
  br i1 %tobool, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %sw.bb
  %76 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %deltaState = getelementptr inbounds %struct.CBraState, %struct.CBraState* %76, i32 0, i32 8
  %arraydecay42 = getelementptr inbounds [256 x i8], [256 x i8]* %deltaState, i32 0, i32 0
  %77 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %delta = getelementptr inbounds %struct.CBraState, %struct.CBraState* %77, i32 0, i32 5
  %78 = load i32, i32* %delta, align 4
  %79 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %buf43 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %79, i32 0, i32 9
  %arraydecay44 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf43, i32 0, i32 0
  %80 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal45 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %80, i32 0, i32 2
  %81 = load i64, i64* %bufTotal45, align 8
  call void @Delta_Encode(i8* %arraydecay42, i32 %78, i8* %arraydecay44, i64 %81)
  br label %if.end.52

if.else:                                          ; preds = %sw.bb
  %82 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %deltaState46 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %82, i32 0, i32 8
  %arraydecay47 = getelementptr inbounds [256 x i8], [256 x i8]* %deltaState46, i32 0, i32 0
  %83 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %delta48 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %83, i32 0, i32 5
  %84 = load i32, i32* %delta48, align 4
  %85 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %buf49 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %85, i32 0, i32 9
  %arraydecay50 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf49, i32 0, i32 0
  %86 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal51 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %86, i32 0, i32 2
  %87 = load i64, i64* %bufTotal51, align 8
  call void @Delta_Decode(i8* %arraydecay47, i32 %84, i8* %arraydecay50, i64 %87)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.41
  %88 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal53 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %88, i32 0, i32 2
  %89 = load i64, i64* %bufTotal53, align 8
  %90 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufConv54 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %90, i32 0, i32 1
  store i64 %89, i64* %bufConv54, align 8
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.40
  %91 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %buf56 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %91, i32 0, i32 9
  %arraydecay57 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf56, i32 0, i32 0
  %92 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal58 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %92, i32 0, i32 2
  %93 = load i64, i64* %bufTotal58, align 8
  %94 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %ip = getelementptr inbounds %struct.CBraState, %struct.CBraState* %94, i32 0, i32 6
  %95 = load i32, i32* %ip, align 4
  %96 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %x86State = getelementptr inbounds %struct.CBraState, %struct.CBraState* %96, i32 0, i32 7
  %97 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %encodeMode59 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %97, i32 0, i32 4
  %98 = load i32, i32* %encodeMode59, align 4
  %call = call i64 @x86_Convert(i8* %arraydecay57, i64 %93, i32 %95, i32* %x86State, i32 %98)
  %99 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufConv60 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %99, i32 0, i32 1
  store i64 %call, i64* %bufConv60, align 8
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.end.40
  %100 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %buf62 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %100, i32 0, i32 9
  %arraydecay63 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf62, i32 0, i32 0
  %101 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal64 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %101, i32 0, i32 2
  %102 = load i64, i64* %bufTotal64, align 8
  %103 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %ip65 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %103, i32 0, i32 6
  %104 = load i32, i32* %ip65, align 4
  %105 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %encodeMode66 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %105, i32 0, i32 4
  %106 = load i32, i32* %encodeMode66, align 4
  %call67 = call i64 @PPC_Convert(i8* %arraydecay63, i64 %102, i32 %104, i32 %106)
  %107 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufConv68 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %107, i32 0, i32 1
  store i64 %call67, i64* %bufConv68, align 8
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.end.40
  %108 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %buf70 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %108, i32 0, i32 9
  %arraydecay71 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf70, i32 0, i32 0
  %109 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal72 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %109, i32 0, i32 2
  %110 = load i64, i64* %bufTotal72, align 8
  %111 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %ip73 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %111, i32 0, i32 6
  %112 = load i32, i32* %ip73, align 4
  %113 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %encodeMode74 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %113, i32 0, i32 4
  %114 = load i32, i32* %encodeMode74, align 4
  %call75 = call i64 @IA64_Convert(i8* %arraydecay71, i64 %110, i32 %112, i32 %114)
  %115 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufConv76 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %115, i32 0, i32 1
  store i64 %call75, i64* %bufConv76, align 8
  br label %sw.epilog

sw.bb.77:                                         ; preds = %if.end.40
  %116 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %buf78 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %116, i32 0, i32 9
  %arraydecay79 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf78, i32 0, i32 0
  %117 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal80 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %117, i32 0, i32 2
  %118 = load i64, i64* %bufTotal80, align 8
  %119 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %ip81 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %119, i32 0, i32 6
  %120 = load i32, i32* %ip81, align 4
  %121 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %encodeMode82 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %121, i32 0, i32 4
  %122 = load i32, i32* %encodeMode82, align 4
  %call83 = call i64 @ARM_Convert(i8* %arraydecay79, i64 %118, i32 %120, i32 %122)
  %123 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufConv84 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %123, i32 0, i32 1
  store i64 %call83, i64* %bufConv84, align 8
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.end.40
  %124 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %buf86 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %124, i32 0, i32 9
  %arraydecay87 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf86, i32 0, i32 0
  %125 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal88 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %125, i32 0, i32 2
  %126 = load i64, i64* %bufTotal88, align 8
  %127 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %ip89 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %127, i32 0, i32 6
  %128 = load i32, i32* %ip89, align 4
  %129 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %encodeMode90 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %129, i32 0, i32 4
  %130 = load i32, i32* %encodeMode90, align 4
  %call91 = call i64 @ARMT_Convert(i8* %arraydecay87, i64 %126, i32 %128, i32 %130)
  %131 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufConv92 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %131, i32 0, i32 1
  store i64 %call91, i64* %bufConv92, align 8
  br label %sw.epilog

sw.bb.93:                                         ; preds = %if.end.40
  %132 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %buf94 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %132, i32 0, i32 9
  %arraydecay95 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf94, i32 0, i32 0
  %133 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal96 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %133, i32 0, i32 2
  %134 = load i64, i64* %bufTotal96, align 8
  %135 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %ip97 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %135, i32 0, i32 6
  %136 = load i32, i32* %ip97, align 4
  %137 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %encodeMode98 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %137, i32 0, i32 4
  %138 = load i32, i32* %encodeMode98, align 4
  %call99 = call i64 @SPARC_Convert(i8* %arraydecay95, i64 %134, i32 %136, i32 %138)
  %139 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufConv100 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %139, i32 0, i32 1
  store i64 %call99, i64* %bufConv100, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.40
  store i32 4, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.93, %sw.bb.85, %sw.bb.77, %sw.bb.69, %sw.bb.61, %sw.bb.55, %if.end.52
  %140 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufConv101 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %140, i32 0, i32 1
  %141 = load i64, i64* %bufConv101, align 8
  %conv = trunc i64 %141 to i32
  %142 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %ip102 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %142, i32 0, i32 6
  %143 = load i32, i32* %ip102, align 4
  %add103 = add i32 %143, %conv
  store i32 %add103, i32* %ip102, align 4
  %144 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufConv104 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %144, i32 0, i32 1
  %145 = load i64, i64* %bufConv104, align 8
  %cmp105 = icmp eq i64 %145, 0
  br i1 %cmp105, label %if.then.107, label %if.end.113

if.then.107:                                      ; preds = %sw.epilog
  %146 = load i32, i32* %srcWasFinished.addr, align 4
  %tobool108 = icmp ne i32 %146, 0
  br i1 %tobool108, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %if.then.107
  br label %while.end

if.end.110:                                       ; preds = %if.then.107
  %147 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal111 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %147, i32 0, i32 2
  %148 = load i64, i64* %bufTotal111, align 8
  %149 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufConv112 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %149, i32 0, i32 1
  store i64 %148, i64* %bufConv112, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.110, %sw.epilog
  br label %while.cond

while.end:                                        ; preds = %if.then.109, %if.then.39, %while.cond
  %150 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufTotal114 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %150, i32 0, i32 2
  %151 = load i64, i64* %bufTotal114, align 8
  %152 = load %struct.CBraState*, %struct.CBraState** %p, align 8
  %bufPos115 = getelementptr inbounds %struct.CBraState, %struct.CBraState* %152, i32 0, i32 0
  %153 = load i64, i64* %bufPos115, align 8
  %cmp116 = icmp eq i64 %151, %153
  br i1 %cmp116, label %land.lhs.true, label %if.end.123

land.lhs.true:                                    ; preds = %while.end
  %154 = load i64, i64* %srcLenOrig, align 8
  %cmp118 = icmp eq i64 %154, 0
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.123

land.lhs.true.120:                                ; preds = %land.lhs.true
  %155 = load i32, i32* %srcWasFinished.addr, align 4
  %tobool121 = icmp ne i32 %155, 0
  br i1 %tobool121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %land.lhs.true.120
  %156 = load i32*, i32** %wasFinished.addr, align 8
  store i32 1, i32* %156, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %land.lhs.true.120, %land.lhs.true, %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.123, %sw.default
  %157 = load i32, i32* %retval
  ret i32 %157
}

; Function Attrs: nounwind uwtable
define void @MixCoder_Construct(%struct.CMixCoder* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct.CMixCoder*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %i = alloca i32, align 4
  store %struct.CMixCoder* %p, %struct.CMixCoder** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %1 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %alloc1 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %1, i32 0, i32 0
  store %struct.ISzAlloc* %0, %struct.ISzAlloc** %alloc1, align 8
  %2 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %buf = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %2, i32 0, i32 1
  store i8* null, i8** %buf, align 8
  %3 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %numCoders = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %3, i32 0, i32 2
  store i32 0, i32* %numCoders, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %coders = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %6, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x %struct._IStateCoder], [4 x %struct._IStateCoder]* %coders, i32 0, i64 %idxprom
  %p2 = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %arrayidx, i32 0, i32 0
  store i8* null, i8** %p2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @MixCoder_Free(%struct.CMixCoder* %p) #0 {
entry:
  %p.addr = alloca %struct.CMixCoder*, align 8
  %i = alloca i32, align 4
  %sc = alloca %struct._IStateCoder*, align 8
  store %struct.CMixCoder* %p, %struct.CMixCoder** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %numCoders = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %1, i32 0, i32 2
  %2 = load i32, i32* %numCoders, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %coders = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %4, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x %struct._IStateCoder], [4 x %struct._IStateCoder]* %coders, i32 0, i64 %idxprom
  store %struct._IStateCoder* %arrayidx, %struct._IStateCoder** %sc, align 8
  %5 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %alloc = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %5, i32 0, i32 0
  %6 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc, align 8
  %tobool = icmp ne %struct.ISzAlloc* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct._IStateCoder*, %struct._IStateCoder** %sc, align 8
  %p1 = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %7, i32 0, i32 0
  %8 = load i8*, i8** %p1, align 8
  %tobool2 = icmp ne i8* %8, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._IStateCoder*, %struct._IStateCoder** %sc, align 8
  %Free = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %9, i32 0, i32 1
  %10 = load void (i8*, %struct.ISzAlloc*)*, void (i8*, %struct.ISzAlloc*)** %Free, align 8
  %11 = load %struct._IStateCoder*, %struct._IStateCoder** %sc, align 8
  %p3 = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %11, i32 0, i32 0
  %12 = load i8*, i8** %p3, align 8
  %13 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %alloc4 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %13, i32 0, i32 0
  %14 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc4, align 8
  call void %10(i8* %12, %struct.ISzAlloc* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %numCoders5 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %16, i32 0, i32 2
  store i32 0, i32* %numCoders5, align 4
  %17 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %buf = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %17, i32 0, i32 1
  %18 = load i8*, i8** %buf, align 8
  %tobool6 = icmp ne i8* %18, null
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %for.end
  %19 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %alloc8 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %19, i32 0, i32 0
  %20 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc8, align 8
  %Free9 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %20, i32 0, i32 1
  %21 = load void (i8*, i8*)*, void (i8*, i8*)** %Free9, align 8
  %22 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %alloc10 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %22, i32 0, i32 0
  %23 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc10, align 8
  %24 = bitcast %struct.ISzAlloc* %23 to i8*
  %25 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %buf11 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %25, i32 0, i32 1
  %26 = load i8*, i8** %buf11, align 8
  call void %21(i8* %24, i8* %26)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @MixCoder_Init(%struct.CMixCoder* %p) #0 {
entry:
  %p.addr = alloca %struct.CMixCoder*, align 8
  %i = alloca i32, align 4
  %coder = alloca %struct._IStateCoder*, align 8
  store %struct.CMixCoder* %p, %struct.CMixCoder** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %numCoders = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %1, i32 0, i32 2
  %2 = load i32, i32* %numCoders, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %size = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %4, i32 0, i32 5
  %arrayidx = getelementptr inbounds [3 x i64], [3 x i64]* %size, i32 0, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %pos = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %6, i32 0, i32 4
  %arrayidx2 = getelementptr inbounds [3 x i64], [3 x i64]* %pos, i32 0, i64 %idxprom1
  store i64 0, i64* %arrayidx2, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %finished = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %8, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %finished, i32 0, i64 %idxprom3
  store i32 0, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.12, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %numCoders6 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %11, i32 0, i32 2
  %12 = load i32, i32* %numCoders6, align 4
  %cmp7 = icmp slt i32 %10, %12
  br i1 %cmp7, label %for.body.8, label %for.end.14

for.body.8:                                       ; preds = %for.cond.5
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %coders = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %14, i32 0, i32 7
  %arrayidx10 = getelementptr inbounds [4 x %struct._IStateCoder], [4 x %struct._IStateCoder]* %coders, i32 0, i64 %idxprom9
  store %struct._IStateCoder* %arrayidx10, %struct._IStateCoder** %coder, align 8
  %15 = load %struct._IStateCoder*, %struct._IStateCoder** %coder, align 8
  %Init = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %15, i32 0, i32 3
  %16 = load void (i8*)*, void (i8*)** %Init, align 8
  %17 = load %struct._IStateCoder*, %struct._IStateCoder** %coder, align 8
  %p11 = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %17, i32 0, i32 0
  %18 = load i8*, i8** %p11, align 8
  call void %16(i8* %18)
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.8
  %19 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond.5

for.end.14:                                       ; preds = %for.cond.5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @MixCoder_SetFromMethod(%struct.CMixCoder* %p, i32 %coderIndex, i64 %methodId) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CMixCoder*, align 8
  %coderIndex.addr = alloca i32, align 4
  %methodId.addr = alloca i64, align 8
  %sc = alloca %struct._IStateCoder*, align 8
  store %struct.CMixCoder* %p, %struct.CMixCoder** %p.addr, align 8
  store i32 %coderIndex, i32* %coderIndex.addr, align 4
  store i64 %methodId, i64* %methodId.addr, align 8
  %0 = load i32, i32* %coderIndex.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %coders = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %1, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x %struct._IStateCoder], [4 x %struct._IStateCoder]* %coders, i32 0, i64 %idxprom
  store %struct._IStateCoder* %arrayidx, %struct._IStateCoder** %sc, align 8
  %2 = load i64, i64* %methodId.addr, align 8
  %3 = load i32, i32* %coderIndex.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %ids = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %4, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [4 x i64], [4 x i64]* %ids, i32 0, i64 %idxprom1
  store i64 %2, i64* %arrayidx2, align 8
  %5 = load i64, i64* %methodId.addr, align 8
  switch i64 %5, label %sw.epilog [
    i64 33, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct._IStateCoder*, %struct._IStateCoder** %sc, align 8
  %7 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %alloc = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %7, i32 0, i32 0
  %8 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc, align 8
  %call = call i32 @Lzma2State_SetFromMethod(%struct._IStateCoder* %6, %struct.ISzAlloc* %8)
  store i32 %call, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %9 = load i32, i32* %coderIndex.addr, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i32 4, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %10 = load %struct._IStateCoder*, %struct._IStateCoder** %sc, align 8
  %11 = load i64, i64* %methodId.addr, align 8
  %12 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %alloc3 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %12, i32 0, i32 0
  %13 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc3, align 8
  %call4 = call i32 @BraState_SetFromMethod(%struct._IStateCoder* %10, i64 %11, %struct.ISzAlloc* %13)
  store i32 %call4, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then, %sw.bb
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @Lzma2State_SetFromMethod(%struct._IStateCoder* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._IStateCoder*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %decoder = alloca %struct.CLzma2Dec*, align 8
  store %struct._IStateCoder* %p, %struct._IStateCoder** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %0, i32 0, i32 0
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = bitcast %struct.ISzAlloc* %2 to i8*
  %call = call i8* %1(i8* %3, i64 168)
  %4 = bitcast i8* %call to %struct.CLzma2Dec*
  store %struct.CLzma2Dec* %4, %struct.CLzma2Dec** %decoder, align 8
  %5 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %decoder, align 8
  %6 = bitcast %struct.CLzma2Dec* %5 to i8*
  %7 = load %struct._IStateCoder*, %struct._IStateCoder** %p.addr, align 8
  %p1 = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %7, i32 0, i32 0
  store i8* %6, i8** %p1, align 8
  %8 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %decoder, align 8
  %cmp = icmp eq %struct.CLzma2Dec* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._IStateCoder*, %struct._IStateCoder** %p.addr, align 8
  %Free = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %9, i32 0, i32 1
  store void (i8*, %struct.ISzAlloc*)* @Lzma2State_Free, void (i8*, %struct.ISzAlloc*)** %Free, align 8
  %10 = load %struct._IStateCoder*, %struct._IStateCoder** %p.addr, align 8
  %SetProps = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %10, i32 0, i32 2
  store i32 (i8*, i8*, i64, %struct.ISzAlloc*)* @Lzma2State_SetProps, i32 (i8*, i8*, i64, %struct.ISzAlloc*)** %SetProps, align 8
  %11 = load %struct._IStateCoder*, %struct._IStateCoder** %p.addr, align 8
  %Init = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %11, i32 0, i32 3
  store void (i8*)* @Lzma2State_Init, void (i8*)** %Init, align 8
  %12 = load %struct._IStateCoder*, %struct._IStateCoder** %p.addr, align 8
  %Code = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %12, i32 0, i32 4
  store i32 (i8*, i8*, i64*, i8*, i64*, i32, i32, i32*)* @Lzma2State_Code, i32 (i8*, i8*, i64*, i8*, i64*, i32, i32, i32*)** %Code, align 8
  %13 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %decoder, align 8
  %decoder2 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %13, i32 0, i32 0
  %dic = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder2, i32 0, i32 2
  store i8* null, i8** %dic, align 8
  %14 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %decoder, align 8
  %decoder3 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %14, i32 0, i32 0
  %probs = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder3, i32 0, i32 1
  store i16* null, i16** %probs, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @MixCoder_Code(%struct.CMixCoder* %p, i8* %dest, i64* %destLen, i8* %src, i64* %srcLen, i32 %srcWasFinished, i32 %finishMode, i32* %status) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CMixCoder*, align 8
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i64*, align 8
  %src.addr = alloca i8*, align 8
  %srcLen.addr = alloca i64*, align 8
  %srcWasFinished.addr = alloca i32, align 4
  %finishMode.addr = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %destLenOrig = alloca i64, align 8
  %srcLenOrig = alloca i64, align 8
  %allFinished = alloca i32, align 4
  %processed = alloca i32, align 4
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  %coder = alloca %struct._IStateCoder*, align 8
  %destCur = alloca i8*, align 8
  %destLenCur = alloca i64, align 8
  %srcLenCur = alloca i64, align 8
  %srcCur = alloca i8*, align 8
  %srcFinishedCur = alloca i32, align 4
  %encodingWasFinished = alloca i32, align 4
  store %struct.CMixCoder* %p, %struct.CMixCoder** %p.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64* %destLen, i64** %destLen.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64* %srcLen, i64** %srcLen.addr, align 8
  store i32 %srcWasFinished, i32* %srcWasFinished.addr, align 4
  store i32 %finishMode, i32* %finishMode.addr, align 4
  store i32* %status, i32** %status.addr, align 8
  %0 = load i64*, i64** %destLen.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %destLenOrig, align 8
  %2 = load i64*, i64** %srcLen.addr, align 8
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* %srcLenOrig, align 8
  store i32 1, i32* %allFinished, align 4
  %4 = load i64*, i64** %destLen.addr, align 8
  store i64 0, i64* %4, align 8
  %5 = load i64*, i64** %srcLen.addr, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32*, i32** %status.addr, align 8
  store i32 2, i32* %6, align 4
  %7 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %buf = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %7, i32 0, i32 1
  %8 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %8, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %9 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %alloc = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %9, i32 0, i32 0
  %10 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %10, i32 0, i32 0
  %11 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %12 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %alloc1 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %12, i32 0, i32 0
  %13 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc1, align 8
  %14 = bitcast %struct.ISzAlloc* %13 to i8*
  %call = call i8* %11(i8* %14, i64 393216)
  %15 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %buf2 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %15, i32 0, i32 1
  store i8* %call, i8** %buf2, align 8
  %16 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %buf3 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %16, i32 0, i32 1
  %17 = load i8*, i8** %buf3, align 8
  %cmp4 = icmp eq i8* %17, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %18 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %numCoders = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %18, i32 0, i32 2
  %19 = load i32, i32* %numCoders, align 4
  %cmp7 = icmp ne i32 %19, 1
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store i32 0, i32* %finishMode.addr, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  br label %for.cond

for.cond:                                         ; preds = %if.end.93, %if.end.9
  store i32 0, i32* %processed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.cond
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %numCoders11 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %21, i32 0, i32 2
  %22 = load i32, i32* %numCoders11, align 4
  %cmp12 = icmp slt i32 %20, %22
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.10
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %coders = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %24, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x %struct._IStateCoder], [4 x %struct._IStateCoder]* %coders, i32 0, i64 %idxprom
  store %struct._IStateCoder* %arrayidx, %struct._IStateCoder** %coder, align 8
  %25 = load i32, i32* %i, align 4
  %cmp13 = icmp eq i32 %25, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body
  %26 = load i8*, i8** %src.addr, align 8
  store i8* %26, i8** %srcCur, align 8
  %27 = load i64, i64* %srcLenOrig, align 8
  %28 = load i64*, i64** %srcLen.addr, align 8
  %29 = load i64, i64* %28, align 8
  %sub = sub i64 %27, %29
  store i64 %sub, i64* %srcLenCur, align 8
  %30 = load i32, i32* %srcWasFinished.addr, align 4
  store i32 %30, i32* %srcFinishedCur, align 4
  br label %if.end.32

if.else:                                          ; preds = %for.body
  %31 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %buf15 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %31, i32 0, i32 1
  %32 = load i8*, i8** %buf15, align 8
  %33 = load i32, i32* %i, align 4
  %sub16 = sub nsw i32 %33, 1
  %mul = mul nsw i32 131072, %sub16
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  %34 = load i32, i32* %i, align 4
  %sub17 = sub nsw i32 %34, 1
  %idxprom18 = sext i32 %sub17 to i64
  %35 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %pos = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %35, i32 0, i32 4
  %arrayidx19 = getelementptr inbounds [3 x i64], [3 x i64]* %pos, i32 0, i64 %idxprom18
  %36 = load i64, i64* %arrayidx19, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr, i64 %36
  store i8* %add.ptr20, i8** %srcCur, align 8
  %37 = load i32, i32* %i, align 4
  %sub21 = sub nsw i32 %37, 1
  %idxprom22 = sext i32 %sub21 to i64
  %38 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %size = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %38, i32 0, i32 5
  %arrayidx23 = getelementptr inbounds [3 x i64], [3 x i64]* %size, i32 0, i64 %idxprom22
  %39 = load i64, i64* %arrayidx23, align 8
  %40 = load i32, i32* %i, align 4
  %sub24 = sub nsw i32 %40, 1
  %idxprom25 = sext i32 %sub24 to i64
  %41 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %pos26 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %41, i32 0, i32 4
  %arrayidx27 = getelementptr inbounds [3 x i64], [3 x i64]* %pos26, i32 0, i64 %idxprom25
  %42 = load i64, i64* %arrayidx27, align 8
  %sub28 = sub i64 %39, %42
  store i64 %sub28, i64* %srcLenCur, align 8
  %43 = load i32, i32* %i, align 4
  %sub29 = sub nsw i32 %43, 1
  %idxprom30 = sext i32 %sub29 to i64
  %44 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %finished = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %44, i32 0, i32 3
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %finished, i32 0, i64 %idxprom30
  %45 = load i32, i32* %arrayidx31, align 4
  store i32 %45, i32* %srcFinishedCur, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.14
  %46 = load i32, i32* %i, align 4
  %47 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %numCoders33 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %47, i32 0, i32 2
  %48 = load i32, i32* %numCoders33, align 4
  %sub34 = sub nsw i32 %48, 1
  %cmp35 = icmp eq i32 %46, %sub34
  br i1 %cmp35, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.end.32
  %49 = load i8*, i8** %dest.addr, align 8
  store i8* %49, i8** %destCur, align 8
  %50 = load i64, i64* %destLenOrig, align 8
  %51 = load i64*, i64** %destLen.addr, align 8
  %52 = load i64, i64* %51, align 8
  %sub37 = sub i64 %50, %52
  store i64 %sub37, i64* %destLenCur, align 8
  br label %if.end.52

if.else.38:                                       ; preds = %if.end.32
  %53 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %53 to i64
  %54 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %pos40 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %54, i32 0, i32 4
  %arrayidx41 = getelementptr inbounds [3 x i64], [3 x i64]* %pos40, i32 0, i64 %idxprom39
  %55 = load i64, i64* %arrayidx41, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %56 to i64
  %57 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %size43 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %57, i32 0, i32 5
  %arrayidx44 = getelementptr inbounds [3 x i64], [3 x i64]* %size43, i32 0, i64 %idxprom42
  %58 = load i64, i64* %arrayidx44, align 8
  %cmp45 = icmp ne i64 %55, %58
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.else.38
  br label %for.inc

if.end.47:                                        ; preds = %if.else.38
  %59 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %buf48 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %59, i32 0, i32 1
  %60 = load i8*, i8** %buf48, align 8
  %61 = load i32, i32* %i, align 4
  %mul49 = mul nsw i32 131072, %61
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %60, i64 %idx.ext50
  store i8* %add.ptr51, i8** %destCur, align 8
  store i64 131072, i64* %destLenCur, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.47, %if.then.36
  %62 = load %struct._IStateCoder*, %struct._IStateCoder** %coder, align 8
  %Code = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %62, i32 0, i32 4
  %63 = load i32 (i8*, i8*, i64*, i8*, i64*, i32, i32, i32*)*, i32 (i8*, i8*, i64*, i8*, i64*, i32, i32, i32*)** %Code, align 8
  %64 = load %struct._IStateCoder*, %struct._IStateCoder** %coder, align 8
  %p53 = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %64, i32 0, i32 0
  %65 = load i8*, i8** %p53, align 8
  %66 = load i8*, i8** %destCur, align 8
  %67 = load i8*, i8** %srcCur, align 8
  %68 = load i32, i32* %srcFinishedCur, align 4
  %69 = load i32, i32* %finishMode.addr, align 4
  %call54 = call i32 %63(i8* %65, i8* %66, i64* %destLenCur, i8* %67, i64* %srcLenCur, i32 %68, i32 %69, i32* %encodingWasFinished)
  store i32 %call54, i32* %res, align 4
  %70 = load i32, i32* %encodingWasFinished, align 4
  %tobool = icmp ne i32 %70, 0
  br i1 %tobool, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %if.end.52
  store i32 0, i32* %allFinished, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.52
  %71 = load i32, i32* %i, align 4
  %cmp57 = icmp eq i32 %71, 0
  br i1 %cmp57, label %if.then.58, label %if.else.60

if.then.58:                                       ; preds = %if.end.56
  %72 = load i64, i64* %srcLenCur, align 8
  %73 = load i64*, i64** %srcLen.addr, align 8
  %74 = load i64, i64* %73, align 8
  %add = add i64 %74, %72
  store i64 %add, i64* %73, align 8
  %75 = load i64, i64* %srcLenCur, align 8
  %76 = load i8*, i8** %src.addr, align 8
  %add.ptr59 = getelementptr inbounds i8, i8* %76, i64 %75
  store i8* %add.ptr59, i8** %src.addr, align 8
  br label %if.end.66

if.else.60:                                       ; preds = %if.end.56
  %77 = load i64, i64* %srcLenCur, align 8
  %78 = load i32, i32* %i, align 4
  %sub61 = sub nsw i32 %78, 1
  %idxprom62 = sext i32 %sub61 to i64
  %79 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %pos63 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %79, i32 0, i32 4
  %arrayidx64 = getelementptr inbounds [3 x i64], [3 x i64]* %pos63, i32 0, i64 %idxprom62
  %80 = load i64, i64* %arrayidx64, align 8
  %add65 = add i64 %80, %77
  store i64 %add65, i64* %arrayidx64, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.60, %if.then.58
  %81 = load i32, i32* %i, align 4
  %82 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %numCoders67 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %82, i32 0, i32 2
  %83 = load i32, i32* %numCoders67, align 4
  %sub68 = sub nsw i32 %83, 1
  %cmp69 = icmp eq i32 %81, %sub68
  br i1 %cmp69, label %if.then.70, label %if.else.73

if.then.70:                                       ; preds = %if.end.66
  %84 = load i64, i64* %destLenCur, align 8
  %85 = load i64*, i64** %destLen.addr, align 8
  %86 = load i64, i64* %85, align 8
  %add71 = add i64 %86, %84
  store i64 %add71, i64* %85, align 8
  %87 = load i64, i64* %destLenCur, align 8
  %88 = load i8*, i8** %dest.addr, align 8
  %add.ptr72 = getelementptr inbounds i8, i8* %88, i64 %87
  store i8* %add.ptr72, i8** %dest.addr, align 8
  br label %if.end.83

if.else.73:                                       ; preds = %if.end.66
  %89 = load i64, i64* %destLenCur, align 8
  %90 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %90 to i64
  %91 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %size75 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %91, i32 0, i32 5
  %arrayidx76 = getelementptr inbounds [3 x i64], [3 x i64]* %size75, i32 0, i64 %idxprom74
  store i64 %89, i64* %arrayidx76, align 8
  %92 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %92 to i64
  %93 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %pos78 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %93, i32 0, i32 4
  %arrayidx79 = getelementptr inbounds [3 x i64], [3 x i64]* %pos78, i32 0, i64 %idxprom77
  store i64 0, i64* %arrayidx79, align 8
  %94 = load i32, i32* %encodingWasFinished, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %95 to i64
  %96 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %finished81 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %96, i32 0, i32 3
  %arrayidx82 = getelementptr inbounds [3 x i32], [3 x i32]* %finished81, i32 0, i64 %idxprom80
  store i32 %94, i32* %arrayidx82, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.73, %if.then.70
  %97 = load i32, i32* %res, align 4
  %cmp84 = icmp ne i32 %97, 0
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.83
  %98 = load i32, i32* %res, align 4
  store i32 %98, i32* %retval
  br label %return

if.end.86:                                        ; preds = %if.end.83
  %99 = load i64, i64* %destLenCur, align 8
  %cmp87 = icmp ne i64 %99, 0
  br i1 %cmp87, label %if.then.89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.86
  %100 = load i64, i64* %srcLenCur, align 8
  %cmp88 = icmp ne i64 %100, 0
  br i1 %cmp88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %lor.lhs.false, %if.end.86
  store i32 1, i32* %processed, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.90, %if.then.46
  %101 = load i32, i32* %i, align 4
  %inc = add nsw i32 %101, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %102 = load i32, i32* %processed, align 4
  %tobool91 = icmp ne i32 %102, 0
  br i1 %tobool91, label %if.end.93, label %if.then.92

if.then.92:                                       ; preds = %for.end
  br label %for.end.94

if.end.93:                                        ; preds = %for.end
  br label %for.cond

for.end.94:                                       ; preds = %if.then.92
  %103 = load i32, i32* %allFinished, align 4
  %tobool95 = icmp ne i32 %103, 0
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %for.end.94
  %104 = load i32*, i32** %status.addr, align 8
  store i32 1, i32* %104, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %for.end.94
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.97, %if.then.85, %if.then.5
  %105 = load i32, i32* %retval
  ret i32 %105
}

; Function Attrs: nounwind uwtable
define i32 @Xz_ParseHeader(i16* %p, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i16*, align 8
  %buf.addr = alloca i8*, align 8
  store i16* %p, i16** %p.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 6
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %buf.addr, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %2, i64 6
  %arrayidx3 = getelementptr inbounds i8, i8* %add.ptr2, i64 1
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %or = or i32 %shl, %conv4
  %conv5 = trunc i32 %or to i16
  %4 = load i16*, i16** %p.addr, align 8
  store i16 %conv5, i16* %4, align 2
  %5 = load i8*, i8** %buf.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %5, i64 6
  %call = call i32 @CrcCalc(i8* %add.ptr6, i64 2)
  %6 = load i8*, i8** %buf.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %6, i64 6
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr7, i64 2
  %7 = bitcast i8* %add.ptr8 to i32*
  %8 = load i32, i32* %7, align 4
  %cmp = icmp ne i32 %call, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i16*, i16** %p.addr, align 8
  %10 = load i16, i16* %9, align 2
  %conv10 = zext i16 %10 to i32
  %cmp11 = icmp sle i32 %conv10, 15
  %cond = select i1 %cmp11, i32 0, i32 4
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @CrcCalc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @XzBlock_Parse(%struct.CXzBlock* %p, i8* %header) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CXzBlock*, align 8
  %header.addr = alloca i8*, align 8
  %pos = alloca i32, align 4
  %numFilters = alloca i32, align 4
  %i = alloca i32, align 4
  %headerSize = alloca i32, align 4
  %s = alloca i32, align 4
  %s38 = alloca i32, align 4
  %filter = alloca %struct.CXzFilter*, align 8
  %size = alloca i64, align 8
  %s58 = alloca i32, align 4
  %s69 = alloca i32, align 4
  store %struct.CXzBlock* %p, %struct.CXzBlock** %p.addr, align 8
  store i8* %header, i8** %header.addr, align 8
  %0 = load i8*, i8** %header.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 2
  store i32 %shl, i32* %headerSize, align 4
  %2 = load i8*, i8** %header.addr, align 8
  %3 = load i32, i32* %headerSize, align 4
  %conv1 = zext i32 %3 to i64
  %call = call i32 @CrcCalc(i8* %2, i64 %conv1)
  %4 = load i8*, i8** %header.addr, align 8
  %5 = load i32, i32* %headerSize, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = bitcast i8* %add.ptr to i32*
  %7 = load i32, i32* %6, align 4
  %cmp = icmp ne i32 %call, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %pos, align 4
  %8 = load i32, i32* %pos, align 4
  %9 = load i32, i32* %headerSize, align 4
  %cmp3 = icmp eq i32 %8, %9
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 16, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load i32, i32* %pos, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %pos, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load i8*, i8** %header.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx7, align 1
  %13 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %flags = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %13, i32 0, i32 2
  store i8 %12, i8* %flags, align 1
  %14 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %flags8 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %14, i32 0, i32 2
  %15 = load i8, i8* %flags8, align 1
  %conv9 = zext i8 %15 to i32
  %and = and i32 %conv9, 64
  %cmp10 = icmp ne i32 %and, 0
  br i1 %cmp10, label %if.then.12, label %if.end.31

if.then.12:                                       ; preds = %if.end.6
  %16 = load i8*, i8** %header.addr, align 8
  %17 = load i32, i32* %pos, align 4
  %idx.ext13 = zext i32 %17 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %16, i64 %idx.ext13
  %18 = load i32, i32* %headerSize, align 4
  %19 = load i32, i32* %pos, align 4
  %sub = sub i32 %18, %19
  %conv15 = zext i32 %sub to i64
  %20 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %packSize = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %20, i32 0, i32 0
  %call16 = call i32 @Xz_ReadVarInt(i8* %add.ptr14, i64 %conv15, i64* %packSize)
  store i32 %call16, i32* %s, align 4
  %21 = load i32, i32* %s, align 4
  %cmp17 = icmp eq i32 %21, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.12
  store i32 16, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.12
  %22 = load i32, i32* %s, align 4
  %23 = load i32, i32* %pos, align 4
  %add = add i32 %23, %22
  store i32 %add, i32* %pos, align 4
  %24 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %packSize21 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %24, i32 0, i32 0
  %25 = load i64, i64* %packSize21, align 8
  %cmp22 = icmp eq i64 %25, 0
  br i1 %cmp22, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %26 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %packSize24 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %26, i32 0, i32 0
  %27 = load i64, i64* %packSize24, align 8
  %28 = load i32, i32* %headerSize, align 4
  %conv25 = zext i32 %28 to i64
  %add26 = add i64 %27, %conv25
  %cmp27 = icmp uge i64 %add26, -9223372036854775808
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 16, i32* %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.6
  %29 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %flags32 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %29, i32 0, i32 2
  %30 = load i8, i8* %flags32, align 1
  %conv33 = zext i8 %30 to i32
  %and34 = and i32 %conv33, 128
  %cmp35 = icmp ne i32 %and34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.49

if.then.37:                                       ; preds = %if.end.31
  %31 = load i8*, i8** %header.addr, align 8
  %32 = load i32, i32* %pos, align 4
  %idx.ext39 = zext i32 %32 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %31, i64 %idx.ext39
  %33 = load i32, i32* %headerSize, align 4
  %34 = load i32, i32* %pos, align 4
  %sub41 = sub i32 %33, %34
  %conv42 = zext i32 %sub41 to i64
  %35 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %unpackSize = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %35, i32 0, i32 1
  %call43 = call i32 @Xz_ReadVarInt(i8* %add.ptr40, i64 %conv42, i64* %unpackSize)
  store i32 %call43, i32* %s38, align 4
  %36 = load i32, i32* %s38, align 4
  %cmp44 = icmp eq i32 %36, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.37
  store i32 16, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.then.37
  %37 = load i32, i32* %s38, align 4
  %38 = load i32, i32* %pos, align 4
  %add48 = add i32 %38, %37
  store i32 %add48, i32* %pos, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.47, %if.end.31
  %39 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %flags50 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %39, i32 0, i32 2
  %40 = load i8, i8* %flags50, align 1
  %conv51 = zext i8 %40 to i32
  %and52 = and i32 %conv51, 3
  %add53 = add nsw i32 %and52, 1
  store i32 %add53, i32* %numFilters, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.49
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %numFilters, align 4
  %cmp54 = icmp slt i32 %41, %42
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %filters = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %43, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x %struct.CXzFilter], [4 x %struct.CXzFilter]* %filters, i32 0, i32 0
  %44 = load i32, i32* %i, align 4
  %idx.ext56 = sext i32 %44 to i64
  %add.ptr57 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %arraydecay, i64 %idx.ext56
  store %struct.CXzFilter* %add.ptr57, %struct.CXzFilter** %filter, align 8
  %45 = load i8*, i8** %header.addr, align 8
  %46 = load i32, i32* %pos, align 4
  %idx.ext59 = zext i32 %46 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %45, i64 %idx.ext59
  %47 = load i32, i32* %headerSize, align 4
  %48 = load i32, i32* %pos, align 4
  %sub61 = sub i32 %47, %48
  %conv62 = zext i32 %sub61 to i64
  %49 = load %struct.CXzFilter*, %struct.CXzFilter** %filter, align 8
  %id = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %49, i32 0, i32 0
  %call63 = call i32 @Xz_ReadVarInt(i8* %add.ptr60, i64 %conv62, i64* %id)
  store i32 %call63, i32* %s58, align 4
  %50 = load i32, i32* %s58, align 4
  %cmp64 = icmp eq i32 %50, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %for.body
  store i32 16, i32* %retval
  br label %return

if.end.67:                                        ; preds = %for.body
  %51 = load i32, i32* %s58, align 4
  %52 = load i32, i32* %pos, align 4
  %add68 = add i32 %52, %51
  store i32 %add68, i32* %pos, align 4
  %53 = load i8*, i8** %header.addr, align 8
  %54 = load i32, i32* %pos, align 4
  %idx.ext70 = zext i32 %54 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %53, i64 %idx.ext70
  %55 = load i32, i32* %headerSize, align 4
  %56 = load i32, i32* %pos, align 4
  %sub72 = sub i32 %55, %56
  %conv73 = zext i32 %sub72 to i64
  %call74 = call i32 @Xz_ReadVarInt(i8* %add.ptr71, i64 %conv73, i64* %size)
  store i32 %call74, i32* %s69, align 4
  %57 = load i32, i32* %s69, align 4
  %cmp75 = icmp eq i32 %57, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.67
  store i32 16, i32* %retval
  br label %return

if.end.78:                                        ; preds = %if.end.67
  %58 = load i32, i32* %s69, align 4
  %59 = load i32, i32* %pos, align 4
  %add79 = add i32 %59, %58
  store i32 %add79, i32* %pos, align 4
  %60 = load i64, i64* %size, align 8
  %61 = load i32, i32* %headerSize, align 4
  %62 = load i32, i32* %pos, align 4
  %sub80 = sub i32 %61, %62
  %conv81 = zext i32 %sub80 to i64
  %cmp82 = icmp ugt i64 %60, %conv81
  br i1 %cmp82, label %if.then.87, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %if.end.78
  %63 = load i64, i64* %size, align 8
  %cmp85 = icmp ugt i64 %63, 20
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %lor.lhs.false.84, %if.end.78
  store i32 16, i32* %retval
  br label %return

if.end.88:                                        ; preds = %lor.lhs.false.84
  %64 = load i64, i64* %size, align 8
  %conv89 = trunc i64 %64 to i32
  %65 = load %struct.CXzFilter*, %struct.CXzFilter** %filter, align 8
  %propsSize = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %65, i32 0, i32 1
  store i32 %conv89, i32* %propsSize, align 4
  %66 = load %struct.CXzFilter*, %struct.CXzFilter** %filter, align 8
  %props = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %66, i32 0, i32 2
  %67 = bitcast [20 x i8]* %props to i8*
  %68 = load i8*, i8** %header.addr, align 8
  %69 = load i32, i32* %pos, align 4
  %idx.ext90 = zext i32 %69 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %68, i64 %idx.ext90
  %70 = load i64, i64* %size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %add.ptr91, i64 %70, i32 1, i1 false)
  %71 = load i64, i64* %size, align 8
  %conv92 = trunc i64 %71 to i32
  %72 = load i32, i32* %pos, align 4
  %add93 = add i32 %72, %conv92
  store i32 %add93, i32* %pos, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %73 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %73, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.104, %for.end
  %74 = load i32, i32* %pos, align 4
  %75 = load i32, i32* %headerSize, align 4
  %cmp95 = icmp ult i32 %74, %75
  br i1 %cmp95, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %76 = load i32, i32* %pos, align 4
  %inc97 = add i32 %76, 1
  store i32 %inc97, i32* %pos, align 4
  %idxprom98 = zext i32 %76 to i64
  %77 = load i8*, i8** %header.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %77, i64 %idxprom98
  %78 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %78 to i32
  %cmp101 = icmp ne i32 %conv100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %while.body
  store i32 16, i32* %retval
  br label %return

if.end.104:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.103, %if.then.87, %if.then.77, %if.then.66, %if.then.46, %if.then.29, %if.then.19, %if.then.5, %if.then
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @XzDec_Init(%struct.CMixCoder* %p, %struct.CXzBlock* %block) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CMixCoder*, align 8
  %block.addr = alloca %struct.CXzBlock*, align 8
  %i = alloca i32, align 4
  %needReInit = alloca i32, align 4
  %numFilters = alloca i32, align 4
  %f = alloca %struct.CXzFilter*, align 8
  %__result__ = alloca i32, align 4
  %f37 = alloca %struct.CXzFilter*, align 8
  %sc = alloca %struct._IStateCoder*, align 8
  %__result__45 = alloca i32, align 4
  store %struct.CMixCoder* %p, %struct.CMixCoder** %p.addr, align 8
  store %struct.CXzBlock* %block, %struct.CXzBlock** %block.addr, align 8
  store i32 1, i32* %needReInit, align 4
  %0 = load %struct.CXzBlock*, %struct.CXzBlock** %block.addr, align 8
  %flags = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %0, i32 0, i32 2
  %1 = load i8, i8* %flags, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 3
  %add = add nsw i32 %and, 1
  store i32 %add, i32* %numFilters, align 4
  %2 = load i32, i32* %numFilters, align 4
  %3 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %numCoders = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %3, i32 0, i32 2
  %4 = load i32, i32* %numCoders, align 4
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %numFilters, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %ids = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %8, i32 0, i32 6
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %ids, i32 0, i64 %idxprom
  %9 = load i64, i64* %arrayidx, align 8
  %10 = load i32, i32* %numFilters, align 4
  %sub = sub nsw i32 %10, 1
  %11 = load i32, i32* %i, align 4
  %sub4 = sub nsw i32 %sub, %11
  %idxprom5 = sext i32 %sub4 to i64
  %12 = load %struct.CXzBlock*, %struct.CXzBlock** %block.addr, align 8
  %filters = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %12, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [4 x %struct.CXzFilter], [4 x %struct.CXzFilter]* %filters, i32 0, i64 %idxprom5
  %id = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %arrayidx6, i32 0, i32 0
  %13 = load i64, i64* %id, align 8
  %cmp7 = icmp ne i64 %9, %13
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %numFilters, align 4
  %cmp10 = icmp ne i32 %15, %16
  %conv11 = zext i1 %cmp10 to i32
  store i32 %conv11, i32* %needReInit, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %entry
  %17 = load i32, i32* %needReInit, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.13, label %if.end.32

if.then.13:                                       ; preds = %if.end.12
  %18 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  call void @MixCoder_Free(%struct.CMixCoder* %18)
  %19 = load i32, i32* %numFilters, align 4
  %20 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %numCoders14 = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %20, i32 0, i32 2
  store i32 %19, i32* %numCoders14, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.29, %if.then.13
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %numFilters, align 4
  %cmp16 = icmp slt i32 %21, %22
  br i1 %cmp16, label %for.body.18, label %for.end.31

for.body.18:                                      ; preds = %for.cond.15
  %23 = load i32, i32* %numFilters, align 4
  %sub19 = sub nsw i32 %23, 1
  %24 = load i32, i32* %i, align 4
  %sub20 = sub nsw i32 %sub19, %24
  %idxprom21 = sext i32 %sub20 to i64
  %25 = load %struct.CXzBlock*, %struct.CXzBlock** %block.addr, align 8
  %filters22 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %25, i32 0, i32 3
  %arrayidx23 = getelementptr inbounds [4 x %struct.CXzFilter], [4 x %struct.CXzFilter]* %filters22, i32 0, i64 %idxprom21
  store %struct.CXzFilter* %arrayidx23, %struct.CXzFilter** %f, align 8
  %26 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.CXzFilter*, %struct.CXzFilter** %f, align 8
  %id24 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %28, i32 0, i32 0
  %29 = load i64, i64* %id24, align 8
  %call = call i32 @MixCoder_SetFromMethod(%struct.CMixCoder* %26, i32 %27, i64 %29)
  store i32 %call, i32* %__result__, align 4
  %30 = load i32, i32* %__result__, align 4
  %cmp25 = icmp ne i32 %30, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body.18
  %31 = load i32, i32* %__result__, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.28:                                        ; preds = %for.body.18
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %32 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %32, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.15

for.end.31:                                       ; preds = %for.cond.15
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.31, %if.end.12
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.53, %if.end.32
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %numFilters, align 4
  %cmp34 = icmp slt i32 %33, %34
  br i1 %cmp34, label %for.body.36, label %for.end.55

for.body.36:                                      ; preds = %for.cond.33
  %35 = load i32, i32* %numFilters, align 4
  %sub38 = sub nsw i32 %35, 1
  %36 = load i32, i32* %i, align 4
  %sub39 = sub nsw i32 %sub38, %36
  %idxprom40 = sext i32 %sub39 to i64
  %37 = load %struct.CXzBlock*, %struct.CXzBlock** %block.addr, align 8
  %filters41 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %37, i32 0, i32 3
  %arrayidx42 = getelementptr inbounds [4 x %struct.CXzFilter], [4 x %struct.CXzFilter]* %filters41, i32 0, i64 %idxprom40
  store %struct.CXzFilter* %arrayidx42, %struct.CXzFilter** %f37, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %38 to i64
  %39 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %coders = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %39, i32 0, i32 7
  %arrayidx44 = getelementptr inbounds [4 x %struct._IStateCoder], [4 x %struct._IStateCoder]* %coders, i32 0, i64 %idxprom43
  store %struct._IStateCoder* %arrayidx44, %struct._IStateCoder** %sc, align 8
  %40 = load %struct._IStateCoder*, %struct._IStateCoder** %sc, align 8
  %SetProps = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %40, i32 0, i32 2
  %41 = load i32 (i8*, i8*, i64, %struct.ISzAlloc*)*, i32 (i8*, i8*, i64, %struct.ISzAlloc*)** %SetProps, align 8
  %42 = load %struct._IStateCoder*, %struct._IStateCoder** %sc, align 8
  %p46 = getelementptr inbounds %struct._IStateCoder, %struct._IStateCoder* %42, i32 0, i32 0
  %43 = load i8*, i8** %p46, align 8
  %44 = load %struct.CXzFilter*, %struct.CXzFilter** %f37, align 8
  %props = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %44, i32 0, i32 2
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %props, i32 0, i32 0
  %45 = load %struct.CXzFilter*, %struct.CXzFilter** %f37, align 8
  %propsSize = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %45, i32 0, i32 1
  %46 = load i32, i32* %propsSize, align 4
  %conv47 = zext i32 %46 to i64
  %47 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  %alloc = getelementptr inbounds %struct.CMixCoder, %struct.CMixCoder* %47, i32 0, i32 0
  %48 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc, align 8
  %call48 = call i32 %41(i8* %43, i8* %arraydecay, i64 %conv47, %struct.ISzAlloc* %48)
  store i32 %call48, i32* %__result__45, align 4
  %49 = load i32, i32* %__result__45, align 4
  %cmp49 = icmp ne i32 %49, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.body.36
  %50 = load i32, i32* %__result__45, align 4
  store i32 %50, i32* %retval
  br label %return

if.end.52:                                        ; preds = %for.body.36
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %51 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %51, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.33

for.end.55:                                       ; preds = %for.cond.33
  %52 = load %struct.CMixCoder*, %struct.CMixCoder** %p.addr, align 8
  call void @MixCoder_Init(%struct.CMixCoder* %52)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.55, %if.then.51, %if.then.27
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define i32 @XzUnpacker_Create(%struct.CXzUnpacker* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct.CXzUnpacker*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct.CXzUnpacker* %p, %struct.CXzUnpacker** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %decoder = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %0, i32 0, i32 14
  %1 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @MixCoder_Construct(%struct.CMixCoder* %decoder, %struct.ISzAlloc* %1)
  %2 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %state = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %2, i32 0, i32 0
  store i32 0, i32* %state, align 4
  %3 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %3, i32 0, i32 1
  store i32 0, i32* %pos, align 4
  %4 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %numStreams = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %4, i32 0, i32 12
  store i64 0, i64* %numStreams, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @XzUnpacker_Free(%struct.CXzUnpacker* %p) #0 {
entry:
  %p.addr = alloca %struct.CXzUnpacker*, align 8
  store %struct.CXzUnpacker* %p, %struct.CXzUnpacker** %p.addr, align 8
  %0 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %decoder = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %0, i32 0, i32 14
  call void @MixCoder_Free(%struct.CMixCoder* %decoder)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @XzUnpacker_Code(%struct.CXzUnpacker* %p, i8* %dest, i64* %destLen, i8* %src, i64* %srcLen, i32 %finishMode, i32* %status) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CXzUnpacker*, align 8
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i64*, align 8
  %src.addr = alloca i8*, align 8
  %srcLen.addr = alloca i64*, align 8
  %finishMode.addr = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %destLenOrig = alloca i64, align 8
  %srcLenOrig = alloca i64, align 8
  %srcRem = alloca i64, align 8
  %destLen2 = alloca i64, align 8
  %srcLen2 = alloca i64, align 8
  %res = alloca i32, align 4
  %__result__ = alloca i32, align 4
  %temp = alloca [32 x i8], align 16
  %num = alloca i32, align 4
  %__result__66 = alloca i32, align 4
  %cur = alloca i32, align 4
  %__result__154 = alloca i32, align 4
  %__result__168 = alloca i32, align 4
  %checkSize = alloca i32, align 4
  %cur199 = alloca i32, align 4
  %digest = alloca [64 x i8], align 16
  %cur266 = alloca i64, align 8
  %b = alloca i8, align 1
  %digest308 = alloca [32 x i8], align 16
  %cur351 = alloca i32, align 4
  store %struct.CXzUnpacker* %p, %struct.CXzUnpacker** %p.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64* %destLen, i64** %destLen.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64* %srcLen, i64** %srcLen.addr, align 8
  store i32 %finishMode, i32* %finishMode.addr, align 4
  store i32* %status, i32** %status.addr, align 8
  %0 = load i64*, i64** %destLen.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %destLenOrig, align 8
  %2 = load i64*, i64** %srcLen.addr, align 8
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* %srcLenOrig, align 8
  %4 = load i64*, i64** %destLen.addr, align 8
  store i64 0, i64* %4, align 8
  %5 = load i64*, i64** %srcLen.addr, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32*, i32** %status.addr, align 8
  store i32 0, i32* %6, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.end.38, %entry
  %7 = load i64, i64* %srcLenOrig, align 8
  %8 = load i64*, i64** %srcLen.addr, align 8
  %9 = load i64, i64* %8, align 8
  %sub = sub i64 %7, %9
  store i64 %sub, i64* %srcRem, align 8
  %10 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %state = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %10, i32 0, i32 0
  %11 = load i32, i32* %state, align 4
  %cmp = icmp eq i32 %11, 6
  br i1 %cmp, label %if.then, label %if.end.39

if.then:                                          ; preds = %for.cond
  %12 = load i64, i64* %destLenOrig, align 8
  %13 = load i64*, i64** %destLen.addr, align 8
  %14 = load i64, i64* %13, align 8
  %sub1 = sub i64 %12, %14
  store i64 %sub1, i64* %destLen2, align 8
  %15 = load i64, i64* %srcLenOrig, align 8
  %16 = load i64*, i64** %srcLen.addr, align 8
  %17 = load i64, i64* %16, align 8
  %sub2 = sub i64 %15, %17
  store i64 %sub2, i64* %srcLen2, align 8
  %18 = load i64, i64* %srcLen2, align 8
  %cmp3 = icmp eq i64 %18, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %19 = load i64, i64* %destLen2, align 8
  %cmp4 = icmp eq i64 %19, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %20 = load i32*, i32** %status.addr, align 8
  store i32 2, i32* %20, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %21 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %decoder = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %21, i32 0, i32 14
  %22 = load i8*, i8** %dest.addr, align 8
  %23 = load i8*, i8** %src.addr, align 8
  %24 = load i32, i32* %finishMode.addr, align 4
  %25 = load i32*, i32** %status.addr, align 8
  %call = call i32 @MixCoder_Code(%struct.CMixCoder* %decoder, i8* %22, i64* %destLen2, i8* %23, i64* %srcLen2, i32 0, i32 %24, i32* %25)
  store i32 %call, i32* %res, align 4
  %26 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %check = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %26, i32 0, i32 16
  %27 = load i8*, i8** %dest.addr, align 8
  %28 = load i64, i64* %destLen2, align 8
  call void @XzCheck_Update(%struct.CXzCheck* %check, i8* %27, i64 %28)
  %29 = load i64, i64* %srcLen2, align 8
  %30 = load i64*, i64** %srcLen.addr, align 8
  %31 = load i64, i64* %30, align 8
  %add = add i64 %31, %29
  store i64 %add, i64* %30, align 8
  %32 = load i64, i64* %srcLen2, align 8
  %33 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %32
  store i8* %add.ptr, i8** %src.addr, align 8
  %34 = load i64, i64* %srcLen2, align 8
  %35 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %packSize = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %35, i32 0, i32 6
  %36 = load i64, i64* %packSize, align 8
  %add6 = add i64 %36, %34
  store i64 %add6, i64* %packSize, align 8
  %37 = load i64, i64* %destLen2, align 8
  %38 = load i64*, i64** %destLen.addr, align 8
  %39 = load i64, i64* %38, align 8
  %add7 = add i64 %39, %37
  store i64 %add7, i64* %38, align 8
  %40 = load i64, i64* %destLen2, align 8
  %41 = load i8*, i8** %dest.addr, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %add.ptr8, i8** %dest.addr, align 8
  %42 = load i64, i64* %destLen2, align 8
  %43 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %unpackSize = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %43, i32 0, i32 7
  %44 = load i64, i64* %unpackSize, align 8
  %add9 = add i64 %44, %42
  store i64 %add9, i64* %unpackSize, align 8
  %45 = load i32, i32* %res, align 4
  store i32 %45, i32* %__result__, align 4
  %46 = load i32, i32* %__result__, align 4
  %cmp10 = icmp ne i32 %46, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %47 = load i32, i32* %__result__, align 4
  store i32 %47, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %48 = load i32*, i32** %status.addr, align 8
  %49 = load i32, i32* %48, align 4
  %cmp13 = icmp eq i32 %49, 1
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.12
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %temp, i32 0, i32 0
  %50 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %packSize15 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %50, i32 0, i32 6
  %51 = load i64, i64* %packSize15, align 8
  %52 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %blockHeaderSize = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %52, i32 0, i32 5
  %53 = load i32, i32* %blockHeaderSize, align 4
  %conv = zext i32 %53 to i64
  %add16 = add i64 %51, %conv
  %54 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %streamFlags = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %54, i32 0, i32 4
  %55 = load i16, i16* %streamFlags, align 2
  %call17 = call i32 @XzFlags_GetCheckSize(i16 zeroext %55)
  %conv18 = zext i32 %call17 to i64
  %add19 = add i64 %add16, %conv18
  %call20 = call i32 @Xz_WriteVarInt(i8* %arraydecay, i64 %add19)
  store i32 %call20, i32* %num, align 4
  %arraydecay21 = getelementptr inbounds [32 x i8], [32 x i8]* %temp, i32 0, i32 0
  %56 = load i32, i32* %num, align 4
  %idx.ext = zext i32 %56 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %arraydecay21, i64 %idx.ext
  %57 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %unpackSize23 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %57, i32 0, i32 7
  %58 = load i64, i64* %unpackSize23, align 8
  %call24 = call i32 @Xz_WriteVarInt(i8* %add.ptr22, i64 %58)
  %59 = load i32, i32* %num, align 4
  %add25 = add i32 %59, %call24
  store i32 %add25, i32* %num, align 4
  %60 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %sha = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %60, i32 0, i32 17
  %arraydecay26 = getelementptr inbounds [32 x i8], [32 x i8]* %temp, i32 0, i32 0
  %61 = load i32, i32* %num, align 4
  %conv27 = zext i32 %61 to i64
  call void @Sha256_Update(%struct.CSha256* %sha, i8* %arraydecay26, i64 %conv27)
  %62 = load i32, i32* %num, align 4
  %conv28 = zext i32 %62 to i64
  %63 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexSize = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %63, i32 0, i32 9
  %64 = load i64, i64* %indexSize, align 8
  %add29 = add i64 %64, %conv28
  store i64 %add29, i64* %indexSize, align 8
  %65 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %numBlocks = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %65, i32 0, i32 8
  %66 = load i64, i64* %numBlocks, align 8
  %inc = add i64 %66, 1
  store i64 %inc, i64* %numBlocks, align 8
  %67 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %state30 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %67, i32 0, i32 0
  store i32 7, i32* %state30, align 4
  %68 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %68, i32 0, i32 1
  store i32 0, i32* %pos, align 4
  %69 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %alignPos = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %69, i32 0, i32 2
  store i32 0, i32* %alignPos, align 4
  br label %if.end.38

if.else:                                          ; preds = %if.end.12
  %70 = load i64, i64* %srcLen2, align 8
  %cmp31 = icmp eq i64 %70, 0
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.37

land.lhs.true.33:                                 ; preds = %if.else
  %71 = load i64, i64* %destLen2, align 8
  %cmp34 = icmp eq i64 %71, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %land.lhs.true.33
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %land.lhs.true.33, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.14
  br label %for.cond

if.end.39:                                        ; preds = %for.cond
  %72 = load i64, i64* %srcRem, align 8
  %cmp40 = icmp eq i64 %72, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  %73 = load i32*, i32** %status.addr, align 8
  store i32 3, i32* %73, align 4
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.39
  %74 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %state44 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %74, i32 0, i32 0
  %75 = load i32, i32* %state44, align 4
  switch i32 %75, label %sw.epilog [
    i32 0, label %sw.bb
    i32 5, label %sw.bb.81
    i32 7, label %sw.bb.178
    i32 1, label %sw.bb.241
    i32 2, label %sw.bb.326
    i32 3, label %sw.bb.350
    i32 4, label %sw.bb.387
    i32 6, label %sw.bb.407
  ]

sw.bb:                                            ; preds = %if.end.43
  %76 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos45 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %76, i32 0, i32 1
  %77 = load i32, i32* %pos45, align 4
  %cmp46 = icmp ult i32 %77, 12
  br i1 %cmp46, label %if.then.48, label %if.else.65

if.then.48:                                       ; preds = %sw.bb
  %78 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos49 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %78, i32 0, i32 1
  %79 = load i32, i32* %pos49, align 4
  %cmp50 = icmp ult i32 %79, 6
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.59

land.lhs.true.52:                                 ; preds = %if.then.48
  %80 = load i8*, i8** %src.addr, align 8
  %81 = load i8, i8* %80, align 1
  %conv53 = zext i8 %81 to i32
  %82 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos54 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %82, i32 0, i32 1
  %83 = load i32, i32* %pos54, align 4
  %idxprom = zext i32 %83 to i64
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* @XZ_SIG, i32 0, i64 %idxprom
  %84 = load i8, i8* %arrayidx, align 1
  %conv55 = zext i8 %84 to i32
  %cmp56 = icmp ne i32 %conv53, %conv55
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true.52
  store i32 17, i32* %retval
  br label %return

if.end.59:                                        ; preds = %land.lhs.true.52, %if.then.48
  %85 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %86 = load i8, i8* %85, align 1
  %87 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos60 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %87, i32 0, i32 1
  %88 = load i32, i32* %pos60, align 4
  %inc61 = add i32 %88, 1
  store i32 %inc61, i32* %pos60, align 4
  %idxprom62 = zext i32 %88 to i64
  %89 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %89, i32 0, i32 19
  %arrayidx63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i64 %idxprom62
  store i8 %86, i8* %arrayidx63, align 1
  %90 = load i64*, i64** %srcLen.addr, align 8
  %91 = load i64, i64* %90, align 8
  %inc64 = add i64 %91, 1
  store i64 %inc64, i64* %90, align 8
  br label %if.end.80

if.else.65:                                       ; preds = %sw.bb
  %92 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %streamFlags67 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %92, i32 0, i32 4
  %93 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf68 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %93, i32 0, i32 19
  %arraydecay69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf68, i32 0, i32 0
  %call70 = call i32 @Xz_ParseHeader(i16* %streamFlags67, i8* %arraydecay69)
  store i32 %call70, i32* %__result__66, align 4
  %94 = load i32, i32* %__result__66, align 4
  %cmp71 = icmp ne i32 %94, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.else.65
  %95 = load i32, i32* %__result__66, align 4
  store i32 %95, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.else.65
  %96 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %state75 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %96, i32 0, i32 0
  store i32 5, i32* %state75, align 4
  %97 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %sha76 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %97, i32 0, i32 17
  call void @Sha256_Init(%struct.CSha256* %sha76)
  %98 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexSize77 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %98, i32 0, i32 9
  store i64 0, i64* %indexSize77, align 8
  %99 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %numBlocks78 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %99, i32 0, i32 8
  store i64 0, i64* %numBlocks78, align 8
  %100 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos79 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %100, i32 0, i32 1
  store i32 0, i32* %pos79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.74, %if.end.59
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.end.43
  %101 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos82 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %101, i32 0, i32 1
  %102 = load i32, i32* %pos82, align 4
  %cmp83 = icmp eq i32 %102, 0
  br i1 %cmp83, label %if.then.85, label %if.else.126

if.then.85:                                       ; preds = %sw.bb.81
  %103 = load i8*, i8** %src.addr, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr86, i8** %src.addr, align 8
  %104 = load i8, i8* %103, align 1
  %105 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos87 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %105, i32 0, i32 1
  %106 = load i32, i32* %pos87, align 4
  %inc88 = add i32 %106, 1
  store i32 %inc88, i32* %pos87, align 4
  %idxprom89 = zext i32 %106 to i64
  %107 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf90 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %107, i32 0, i32 19
  %arrayidx91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf90, i32 0, i64 %idxprom89
  store i8 %104, i8* %arrayidx91, align 1
  %108 = load i64*, i64** %srcLen.addr, align 8
  %109 = load i64, i64* %108, align 8
  %inc92 = add i64 %109, 1
  store i64 %inc92, i64* %108, align 8
  %110 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf93 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %110, i32 0, i32 19
  %arrayidx94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf93, i32 0, i64 0
  %111 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %111 to i32
  %cmp96 = icmp eq i32 %conv95, 0
  br i1 %cmp96, label %if.then.98, label %if.end.120

if.then.98:                                       ; preds = %if.then.85
  %112 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf99 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %112, i32 0, i32 19
  %arraydecay100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf99, i32 0, i32 0
  %add.ptr101 = getelementptr inbounds i8, i8* %arraydecay100, i64 1
  %113 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %numBlocks102 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %113, i32 0, i32 8
  %114 = load i64, i64* %numBlocks102, align 8
  %call103 = call i32 @Xz_WriteVarInt(i8* %add.ptr101, i64 %114)
  %add104 = add i32 1, %call103
  %115 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexPreSize = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %115, i32 0, i32 3
  store i32 %add104, i32* %indexPreSize, align 4
  %116 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexPreSize105 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %116, i32 0, i32 3
  %117 = load i32, i32* %indexPreSize105, align 4
  %conv106 = zext i32 %117 to i64
  %118 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexPos = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %118, i32 0, i32 10
  store i64 %conv106, i64* %indexPos, align 8
  %119 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexPreSize107 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %119, i32 0, i32 3
  %120 = load i32, i32* %indexPreSize107, align 4
  %conv108 = zext i32 %120 to i64
  %121 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexSize109 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %121, i32 0, i32 9
  %122 = load i64, i64* %indexSize109, align 8
  %add110 = add i64 %122, %conv108
  store i64 %add110, i64* %indexSize109, align 8
  %123 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %sha111 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %123, i32 0, i32 17
  %124 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %shaDigest = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %124, i32 0, i32 18
  %arraydecay112 = getelementptr inbounds [32 x i8], [32 x i8]* %shaDigest, i32 0, i32 0
  call void @Sha256_Final(%struct.CSha256* %sha111, i8* %arraydecay112)
  %125 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %sha113 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %125, i32 0, i32 17
  call void @Sha256_Init(%struct.CSha256* %sha113)
  %126 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf114 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %126, i32 0, i32 19
  %arraydecay115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf114, i32 0, i32 0
  %127 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexPreSize116 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %127, i32 0, i32 3
  %128 = load i32, i32* %indexPreSize116, align 4
  %conv117 = zext i32 %128 to i64
  %call118 = call i32 @CrcUpdate(i32 -1, i8* %arraydecay115, i64 %conv117)
  %129 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %crc = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %129, i32 0, i32 13
  store i32 %call118, i32* %crc, align 4
  %130 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %state119 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %130, i32 0, i32 0
  store i32 1, i32* %state119, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.98, %if.then.85
  %131 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf121 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %131, i32 0, i32 19
  %arrayidx122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf121, i32 0, i64 0
  %132 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %132 to i32
  %shl = shl i32 %conv123, 2
  %add124 = add i32 %shl, 4
  %133 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %blockHeaderSize125 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %133, i32 0, i32 5
  store i32 %add124, i32* %blockHeaderSize125, align 4
  br label %if.end.177

if.else.126:                                      ; preds = %sw.bb.81
  %134 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos127 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %134, i32 0, i32 1
  %135 = load i32, i32* %pos127, align 4
  %136 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %blockHeaderSize128 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %136, i32 0, i32 5
  %137 = load i32, i32* %blockHeaderSize128, align 4
  %cmp129 = icmp ne i32 %135, %137
  br i1 %cmp129, label %if.then.131, label %if.else.153

if.then.131:                                      ; preds = %if.else.126
  %138 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %blockHeaderSize132 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %138, i32 0, i32 5
  %139 = load i32, i32* %blockHeaderSize132, align 4
  %140 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos133 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %140, i32 0, i32 1
  %141 = load i32, i32* %pos133, align 4
  %sub134 = sub i32 %139, %141
  store i32 %sub134, i32* %cur, align 4
  %142 = load i32, i32* %cur, align 4
  %conv135 = zext i32 %142 to i64
  %143 = load i64, i64* %srcRem, align 8
  %cmp136 = icmp ugt i64 %conv135, %143
  br i1 %cmp136, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %if.then.131
  %144 = load i64, i64* %srcRem, align 8
  %conv139 = trunc i64 %144 to i32
  store i32 %conv139, i32* %cur, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %if.then.131
  %145 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf141 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %145, i32 0, i32 19
  %arraydecay142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf141, i32 0, i32 0
  %146 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos143 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %146, i32 0, i32 1
  %147 = load i32, i32* %pos143, align 4
  %idx.ext144 = zext i32 %147 to i64
  %add.ptr145 = getelementptr inbounds i8, i8* %arraydecay142, i64 %idx.ext144
  %148 = load i8*, i8** %src.addr, align 8
  %149 = load i32, i32* %cur, align 4
  %conv146 = zext i32 %149 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr145, i8* %148, i64 %conv146, i32 1, i1 false)
  %150 = load i32, i32* %cur, align 4
  %151 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos147 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %151, i32 0, i32 1
  %152 = load i32, i32* %pos147, align 4
  %add148 = add i32 %152, %150
  store i32 %add148, i32* %pos147, align 4
  %153 = load i32, i32* %cur, align 4
  %conv149 = zext i32 %153 to i64
  %154 = load i64*, i64** %srcLen.addr, align 8
  %155 = load i64, i64* %154, align 8
  %add150 = add i64 %155, %conv149
  store i64 %add150, i64* %154, align 8
  %156 = load i32, i32* %cur, align 4
  %157 = load i8*, i8** %src.addr, align 8
  %idx.ext151 = zext i32 %156 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %157, i64 %idx.ext151
  store i8* %add.ptr152, i8** %src.addr, align 8
  br label %if.end.176

if.else.153:                                      ; preds = %if.else.126
  %158 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %block = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %158, i32 0, i32 15
  %159 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf155 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %159, i32 0, i32 19
  %arraydecay156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf155, i32 0, i32 0
  %call157 = call i32 @XzBlock_Parse(%struct.CXzBlock* %block, i8* %arraydecay156)
  store i32 %call157, i32* %__result__154, align 4
  %160 = load i32, i32* %__result__154, align 4
  %cmp158 = icmp ne i32 %160, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.else.153
  %161 = load i32, i32* %__result__154, align 4
  store i32 %161, i32* %retval
  br label %return

if.end.161:                                       ; preds = %if.else.153
  %162 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %state162 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %162, i32 0, i32 0
  store i32 6, i32* %state162, align 4
  %163 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %packSize163 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %163, i32 0, i32 6
  store i64 0, i64* %packSize163, align 8
  %164 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %unpackSize164 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %164, i32 0, i32 7
  store i64 0, i64* %unpackSize164, align 8
  %165 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %check165 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %165, i32 0, i32 16
  %166 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %streamFlags166 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %166, i32 0, i32 4
  %167 = load i16, i16* %streamFlags166, align 2
  %conv167 = zext i16 %167 to i32
  %and = and i32 %conv167, 15
  call void @XzCheck_Init(%struct.CXzCheck* %check165, i32 %and)
  %168 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %decoder169 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %168, i32 0, i32 14
  %169 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %block170 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %169, i32 0, i32 15
  %call171 = call i32 @XzDec_Init(%struct.CMixCoder* %decoder169, %struct.CXzBlock* %block170)
  store i32 %call171, i32* %__result__168, align 4
  %170 = load i32, i32* %__result__168, align 4
  %cmp172 = icmp ne i32 %170, 0
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.end.161
  %171 = load i32, i32* %__result__168, align 4
  store i32 %171, i32* %retval
  br label %return

if.end.175:                                       ; preds = %if.end.161
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.end.140
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.end.120
  br label %sw.epilog

sw.bb.178:                                        ; preds = %if.end.43
  %172 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %packSize179 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %172, i32 0, i32 6
  %173 = load i64, i64* %packSize179, align 8
  %174 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %alignPos180 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %174, i32 0, i32 2
  %175 = load i32, i32* %alignPos180, align 4
  %conv181 = zext i32 %175 to i64
  %add182 = add i64 %173, %conv181
  %and183 = and i64 %add182, 3
  %cmp184 = icmp ne i64 %and183, 0
  br i1 %cmp184, label %if.then.186, label %if.else.196

if.then.186:                                      ; preds = %sw.bb.178
  %176 = load i64*, i64** %srcLen.addr, align 8
  %177 = load i64, i64* %176, align 8
  %inc187 = add i64 %177, 1
  store i64 %inc187, i64* %176, align 8
  %178 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %alignPos188 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %178, i32 0, i32 2
  %179 = load i32, i32* %alignPos188, align 4
  %inc189 = add i32 %179, 1
  store i32 %inc189, i32* %alignPos188, align 4
  %180 = load i8*, i8** %src.addr, align 8
  %incdec.ptr190 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %incdec.ptr190, i8** %src.addr, align 8
  %181 = load i8, i8* %180, align 1
  %conv191 = zext i8 %181 to i32
  %cmp192 = icmp ne i32 %conv191, 0
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.then.186
  store i32 3, i32* %retval
  br label %return

if.end.195:                                       ; preds = %if.then.186
  br label %if.end.240

if.else.196:                                      ; preds = %sw.bb.178
  %182 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %streamFlags197 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %182, i32 0, i32 4
  %183 = load i16, i16* %streamFlags197, align 2
  %call198 = call i32 @XzFlags_GetCheckSize(i16 zeroext %183)
  store i32 %call198, i32* %checkSize, align 4
  %184 = load i32, i32* %checkSize, align 4
  %185 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos200 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %185, i32 0, i32 1
  %186 = load i32, i32* %pos200, align 4
  %sub201 = sub i32 %184, %186
  store i32 %sub201, i32* %cur199, align 4
  %187 = load i32, i32* %cur199, align 4
  %cmp202 = icmp ne i32 %187, 0
  br i1 %cmp202, label %if.then.204, label %if.else.223

if.then.204:                                      ; preds = %if.else.196
  %188 = load i32, i32* %cur199, align 4
  %conv205 = zext i32 %188 to i64
  %189 = load i64, i64* %srcRem, align 8
  %cmp206 = icmp ugt i64 %conv205, %189
  br i1 %cmp206, label %if.then.208, label %if.end.210

if.then.208:                                      ; preds = %if.then.204
  %190 = load i64, i64* %srcRem, align 8
  %conv209 = trunc i64 %190 to i32
  store i32 %conv209, i32* %cur199, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.208, %if.then.204
  %191 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf211 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %191, i32 0, i32 19
  %arraydecay212 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf211, i32 0, i32 0
  %192 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos213 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %192, i32 0, i32 1
  %193 = load i32, i32* %pos213, align 4
  %idx.ext214 = zext i32 %193 to i64
  %add.ptr215 = getelementptr inbounds i8, i8* %arraydecay212, i64 %idx.ext214
  %194 = load i8*, i8** %src.addr, align 8
  %195 = load i32, i32* %cur199, align 4
  %conv216 = zext i32 %195 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr215, i8* %194, i64 %conv216, i32 1, i1 false)
  %196 = load i32, i32* %cur199, align 4
  %197 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos217 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %197, i32 0, i32 1
  %198 = load i32, i32* %pos217, align 4
  %add218 = add i32 %198, %196
  store i32 %add218, i32* %pos217, align 4
  %199 = load i32, i32* %cur199, align 4
  %conv219 = zext i32 %199 to i64
  %200 = load i64*, i64** %srcLen.addr, align 8
  %201 = load i64, i64* %200, align 8
  %add220 = add i64 %201, %conv219
  store i64 %add220, i64* %200, align 8
  %202 = load i32, i32* %cur199, align 4
  %203 = load i8*, i8** %src.addr, align 8
  %idx.ext221 = zext i32 %202 to i64
  %add.ptr222 = getelementptr inbounds i8, i8* %203, i64 %idx.ext221
  store i8* %add.ptr222, i8** %src.addr, align 8
  br label %if.end.239

if.else.223:                                      ; preds = %if.else.196
  %204 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %state224 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %204, i32 0, i32 0
  store i32 5, i32* %state224, align 4
  %205 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos225 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %205, i32 0, i32 1
  store i32 0, i32* %pos225, align 4
  %206 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %check226 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %206, i32 0, i32 16
  %arraydecay227 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i32 0, i32 0
  %call228 = call i32 @XzCheck_Final(%struct.CXzCheck* %check226, i8* %arraydecay227)
  %tobool = icmp ne i32 %call228, 0
  br i1 %tobool, label %land.lhs.true.229, label %if.end.238

land.lhs.true.229:                                ; preds = %if.else.223
  %arraydecay230 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i32 0, i32 0
  %207 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf231 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %207, i32 0, i32 19
  %arraydecay232 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf231, i32 0, i32 0
  %208 = load i32, i32* %checkSize, align 4
  %conv233 = zext i32 %208 to i64
  %call234 = call i32 @memcmp(i8* %arraydecay230, i8* %arraydecay232, i64 %conv233) #4
  %cmp235 = icmp ne i32 %call234, 0
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %land.lhs.true.229
  store i32 3, i32* %retval
  br label %return

if.end.238:                                       ; preds = %land.lhs.true.229, %if.else.223
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.end.210
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.end.195
  br label %sw.epilog

sw.bb.241:                                        ; preds = %if.end.43
  %209 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos242 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %209, i32 0, i32 1
  %210 = load i32, i32* %pos242, align 4
  %211 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexPreSize243 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %211, i32 0, i32 3
  %212 = load i32, i32* %indexPreSize243, align 4
  %cmp244 = icmp ult i32 %210, %212
  br i1 %cmp244, label %if.then.246, label %if.else.260

if.then.246:                                      ; preds = %sw.bb.241
  %213 = load i64*, i64** %srcLen.addr, align 8
  %214 = load i64, i64* %213, align 8
  %inc247 = add i64 %214, 1
  store i64 %inc247, i64* %213, align 8
  %215 = load i8*, i8** %src.addr, align 8
  %incdec.ptr248 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %incdec.ptr248, i8** %src.addr, align 8
  %216 = load i8, i8* %215, align 1
  %conv249 = zext i8 %216 to i32
  %217 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos250 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %217, i32 0, i32 1
  %218 = load i32, i32* %pos250, align 4
  %inc251 = add i32 %218, 1
  store i32 %inc251, i32* %pos250, align 4
  %idxprom252 = zext i32 %218 to i64
  %219 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf253 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %219, i32 0, i32 19
  %arrayidx254 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf253, i32 0, i64 %idxprom252
  %220 = load i8, i8* %arrayidx254, align 1
  %conv255 = zext i8 %220 to i32
  %cmp256 = icmp ne i32 %conv249, %conv255
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.then.246
  store i32 3, i32* %retval
  br label %return

if.end.259:                                       ; preds = %if.then.246
  br label %if.end.325

if.else.260:                                      ; preds = %sw.bb.241
  %221 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexPos261 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %221, i32 0, i32 10
  %222 = load i64, i64* %indexPos261, align 8
  %223 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexSize262 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %223, i32 0, i32 9
  %224 = load i64, i64* %indexSize262, align 8
  %cmp263 = icmp ult i64 %222, %224
  br i1 %cmp263, label %if.then.265, label %if.else.282

if.then.265:                                      ; preds = %if.else.260
  %225 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexSize267 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %225, i32 0, i32 9
  %226 = load i64, i64* %indexSize267, align 8
  %227 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexPos268 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %227, i32 0, i32 10
  %228 = load i64, i64* %indexPos268, align 8
  %sub269 = sub i64 %226, %228
  store i64 %sub269, i64* %cur266, align 8
  %229 = load i64, i64* %srcRem, align 8
  %230 = load i64, i64* %cur266, align 8
  %cmp270 = icmp ugt i64 %229, %230
  br i1 %cmp270, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %if.then.265
  %231 = load i64, i64* %cur266, align 8
  store i64 %231, i64* %srcRem, align 8
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.272, %if.then.265
  %232 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %crc274 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %232, i32 0, i32 13
  %233 = load i32, i32* %crc274, align 4
  %234 = load i8*, i8** %src.addr, align 8
  %235 = load i64, i64* %srcRem, align 8
  %call275 = call i32 @CrcUpdate(i32 %233, i8* %234, i64 %235)
  %236 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %crc276 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %236, i32 0, i32 13
  store i32 %call275, i32* %crc276, align 4
  %237 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %sha277 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %237, i32 0, i32 17
  %238 = load i8*, i8** %src.addr, align 8
  %239 = load i64, i64* %srcRem, align 8
  call void @Sha256_Update(%struct.CSha256* %sha277, i8* %238, i64 %239)
  %240 = load i64, i64* %srcRem, align 8
  %241 = load i64*, i64** %srcLen.addr, align 8
  %242 = load i64, i64* %241, align 8
  %add278 = add i64 %242, %240
  store i64 %add278, i64* %241, align 8
  %243 = load i64, i64* %srcRem, align 8
  %244 = load i8*, i8** %src.addr, align 8
  %add.ptr279 = getelementptr inbounds i8, i8* %244, i64 %243
  store i8* %add.ptr279, i8** %src.addr, align 8
  %245 = load i64, i64* %srcRem, align 8
  %246 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexPos280 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %246, i32 0, i32 10
  %247 = load i64, i64* %indexPos280, align 8
  %add281 = add i64 %247, %245
  store i64 %add281, i64* %indexPos280, align 8
  br label %if.end.324

if.else.282:                                      ; preds = %if.else.260
  %248 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexPos283 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %248, i32 0, i32 10
  %249 = load i64, i64* %indexPos283, align 8
  %and284 = and i64 %249, 3
  %cmp285 = icmp ne i64 %and284, 0
  br i1 %cmp285, label %if.then.287, label %if.else.307

if.then.287:                                      ; preds = %if.else.282
  %250 = load i8*, i8** %src.addr, align 8
  %incdec.ptr288 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %incdec.ptr288, i8** %src.addr, align 8
  %251 = load i8, i8* %250, align 1
  store i8 %251, i8* %b, align 1
  %252 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %crc289 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %252, i32 0, i32 13
  %253 = load i32, i32* %crc289, align 4
  %254 = load i8, i8* %b, align 1
  %conv290 = zext i8 %254 to i32
  %xor = xor i32 %253, %conv290
  %and291 = and i32 %xor, 255
  %idxprom292 = zext i32 %and291 to i64
  %arrayidx293 = getelementptr inbounds [0 x i32], [0 x i32]* @g_CrcTable, i32 0, i64 %idxprom292
  %255 = load i32, i32* %arrayidx293, align 4
  %256 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %crc294 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %256, i32 0, i32 13
  %257 = load i32, i32* %crc294, align 4
  %shr = lshr i32 %257, 8
  %xor295 = xor i32 %255, %shr
  %258 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %crc296 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %258, i32 0, i32 13
  store i32 %xor295, i32* %crc296, align 4
  %259 = load i64*, i64** %srcLen.addr, align 8
  %260 = load i64, i64* %259, align 8
  %inc297 = add i64 %260, 1
  store i64 %inc297, i64* %259, align 8
  %261 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexPos298 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %261, i32 0, i32 10
  %262 = load i64, i64* %indexPos298, align 8
  %inc299 = add i64 %262, 1
  store i64 %inc299, i64* %indexPos298, align 8
  %263 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexSize300 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %263, i32 0, i32 9
  %264 = load i64, i64* %indexSize300, align 8
  %inc301 = add i64 %264, 1
  store i64 %inc301, i64* %indexSize300, align 8
  %265 = load i8, i8* %b, align 1
  %conv302 = zext i8 %265 to i32
  %cmp303 = icmp ne i32 %conv302, 0
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %if.then.287
  store i32 3, i32* %retval
  br label %return

if.end.306:                                       ; preds = %if.then.287
  br label %if.end.323

if.else.307:                                      ; preds = %if.else.282
  %266 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %state309 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %266, i32 0, i32 0
  store i32 2, i32* %state309, align 4
  %267 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexSize310 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %267, i32 0, i32 9
  %268 = load i64, i64* %indexSize310, align 8
  %add311 = add i64 %268, 4
  store i64 %add311, i64* %indexSize310, align 8
  %269 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos312 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %269, i32 0, i32 1
  store i32 0, i32* %pos312, align 4
  %270 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %sha313 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %270, i32 0, i32 17
  %arraydecay314 = getelementptr inbounds [32 x i8], [32 x i8]* %digest308, i32 0, i32 0
  call void @Sha256_Final(%struct.CSha256* %sha313, i8* %arraydecay314)
  %arraydecay315 = getelementptr inbounds [32 x i8], [32 x i8]* %digest308, i32 0, i32 0
  %271 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %shaDigest316 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %271, i32 0, i32 18
  %arraydecay317 = getelementptr inbounds [32 x i8], [32 x i8]* %shaDigest316, i32 0, i32 0
  %call318 = call i32 @memcmp(i8* %arraydecay315, i8* %arraydecay317, i64 32) #4
  %cmp319 = icmp ne i32 %call318, 0
  br i1 %cmp319, label %if.then.321, label %if.end.322

if.then.321:                                      ; preds = %if.else.307
  store i32 3, i32* %retval
  br label %return

if.end.322:                                       ; preds = %if.else.307
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %if.end.306
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.end.273
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.324, %if.end.259
  br label %sw.epilog

sw.bb.326:                                        ; preds = %if.end.43
  %272 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos327 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %272, i32 0, i32 1
  %273 = load i32, i32* %pos327, align 4
  %cmp328 = icmp ult i32 %273, 4
  br i1 %cmp328, label %if.then.330, label %if.else.338

if.then.330:                                      ; preds = %sw.bb.326
  %274 = load i64*, i64** %srcLen.addr, align 8
  %275 = load i64, i64* %274, align 8
  %inc331 = add i64 %275, 1
  store i64 %inc331, i64* %274, align 8
  %276 = load i8*, i8** %src.addr, align 8
  %incdec.ptr332 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %incdec.ptr332, i8** %src.addr, align 8
  %277 = load i8, i8* %276, align 1
  %278 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos333 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %278, i32 0, i32 1
  %279 = load i32, i32* %pos333, align 4
  %inc334 = add i32 %279, 1
  store i32 %inc334, i32* %pos333, align 4
  %idxprom335 = zext i32 %279 to i64
  %280 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf336 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %280, i32 0, i32 19
  %arrayidx337 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf336, i32 0, i64 %idxprom335
  store i8 %277, i8* %arrayidx337, align 1
  br label %if.end.349

if.else.338:                                      ; preds = %sw.bb.326
  %281 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %state339 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %281, i32 0, i32 0
  store i32 3, i32* %state339, align 4
  %282 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos340 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %282, i32 0, i32 1
  store i32 0, i32* %pos340, align 4
  %283 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %crc341 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %283, i32 0, i32 13
  %284 = load i32, i32* %crc341, align 4
  %xor342 = xor i32 %284, -1
  %285 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf343 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %285, i32 0, i32 19
  %arraydecay344 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf343, i32 0, i32 0
  %286 = bitcast i8* %arraydecay344 to i32*
  %287 = load i32, i32* %286, align 4
  %cmp345 = icmp ne i32 %xor342, %287
  br i1 %cmp345, label %if.then.347, label %if.end.348

if.then.347:                                      ; preds = %if.else.338
  store i32 3, i32* %retval
  br label %return

if.end.348:                                       ; preds = %if.else.338
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348, %if.then.330
  br label %sw.epilog

sw.bb.350:                                        ; preds = %if.end.43
  %288 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos352 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %288, i32 0, i32 1
  %289 = load i32, i32* %pos352, align 4
  %sub353 = sub i32 12, %289
  store i32 %sub353, i32* %cur351, align 4
  %290 = load i32, i32* %cur351, align 4
  %conv354 = zext i32 %290 to i64
  %291 = load i64, i64* %srcRem, align 8
  %cmp355 = icmp ugt i64 %conv354, %291
  br i1 %cmp355, label %if.then.357, label %if.end.359

if.then.357:                                      ; preds = %sw.bb.350
  %292 = load i64, i64* %srcRem, align 8
  %conv358 = trunc i64 %292 to i32
  store i32 %conv358, i32* %cur351, align 4
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.357, %sw.bb.350
  %293 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf360 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %293, i32 0, i32 19
  %arraydecay361 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf360, i32 0, i32 0
  %294 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos362 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %294, i32 0, i32 1
  %295 = load i32, i32* %pos362, align 4
  %idx.ext363 = zext i32 %295 to i64
  %add.ptr364 = getelementptr inbounds i8, i8* %arraydecay361, i64 %idx.ext363
  %296 = load i8*, i8** %src.addr, align 8
  %297 = load i32, i32* %cur351, align 4
  %conv365 = zext i32 %297 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr364, i8* %296, i64 %conv365, i32 1, i1 false)
  %298 = load i32, i32* %cur351, align 4
  %299 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos366 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %299, i32 0, i32 1
  %300 = load i32, i32* %pos366, align 4
  %add367 = add i32 %300, %298
  store i32 %add367, i32* %pos366, align 4
  %301 = load i32, i32* %cur351, align 4
  %conv368 = zext i32 %301 to i64
  %302 = load i64*, i64** %srcLen.addr, align 8
  %303 = load i64, i64* %302, align 8
  %add369 = add i64 %303, %conv368
  store i64 %add369, i64* %302, align 8
  %304 = load i32, i32* %cur351, align 4
  %305 = load i8*, i8** %src.addr, align 8
  %idx.ext370 = zext i32 %304 to i64
  %add.ptr371 = getelementptr inbounds i8, i8* %305, i64 %idx.ext370
  store i8* %add.ptr371, i8** %src.addr, align 8
  %306 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos372 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %306, i32 0, i32 1
  %307 = load i32, i32* %pos372, align 4
  %cmp373 = icmp eq i32 %307, 12
  br i1 %cmp373, label %if.then.375, label %if.end.386

if.then.375:                                      ; preds = %if.end.359
  %308 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %state376 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %308, i32 0, i32 0
  store i32 4, i32* %state376, align 4
  %309 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %numStreams = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %309, i32 0, i32 12
  %310 = load i64, i64* %numStreams, align 8
  %inc377 = add i64 %310, 1
  store i64 %inc377, i64* %numStreams, align 8
  %311 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %padSize = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %311, i32 0, i32 11
  store i64 0, i64* %padSize, align 8
  %312 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %streamFlags378 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %312, i32 0, i32 4
  %313 = load i16, i16* %streamFlags378, align 2
  %314 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %indexSize379 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %314, i32 0, i32 9
  %315 = load i64, i64* %indexSize379, align 8
  %316 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %buf380 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %316, i32 0, i32 19
  %arraydecay381 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf380, i32 0, i32 0
  %call382 = call i32 @Xz_CheckFooter(i16 zeroext %313, i64 %315, i8* %arraydecay381)
  %tobool383 = icmp ne i32 %call382, 0
  br i1 %tobool383, label %if.end.385, label %if.then.384

if.then.384:                                      ; preds = %if.then.375
  store i32 3, i32* %retval
  br label %return

if.end.385:                                       ; preds = %if.then.375
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.385, %if.end.359
  br label %sw.epilog

sw.bb.387:                                        ; preds = %if.end.43
  %317 = load i8*, i8** %src.addr, align 8
  %318 = load i8, i8* %317, align 1
  %conv388 = zext i8 %318 to i32
  %cmp389 = icmp ne i32 %conv388, 0
  br i1 %cmp389, label %if.then.391, label %if.else.401

if.then.391:                                      ; preds = %sw.bb.387
  %319 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %padSize392 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %319, i32 0, i32 11
  %320 = load i64, i64* %padSize392, align 8
  %conv393 = trunc i64 %320 to i32
  %and394 = and i32 %conv393, 3
  %cmp395 = icmp ne i32 %and394, 0
  br i1 %cmp395, label %if.then.397, label %if.end.398

if.then.397:                                      ; preds = %if.then.391
  store i32 17, i32* %retval
  br label %return

if.end.398:                                       ; preds = %if.then.391
  %321 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %pos399 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %321, i32 0, i32 1
  store i32 0, i32* %pos399, align 4
  %322 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %state400 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %322, i32 0, i32 0
  store i32 0, i32* %state400, align 4
  br label %if.end.406

if.else.401:                                      ; preds = %sw.bb.387
  %323 = load i64*, i64** %srcLen.addr, align 8
  %324 = load i64, i64* %323, align 8
  %inc402 = add i64 %324, 1
  store i64 %inc402, i64* %323, align 8
  %325 = load i8*, i8** %src.addr, align 8
  %incdec.ptr403 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %incdec.ptr403, i8** %src.addr, align 8
  %326 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %padSize404 = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %326, i32 0, i32 11
  %327 = load i64, i64* %padSize404, align 8
  %inc405 = add i64 %327, 1
  store i64 %inc405, i64* %padSize404, align 8
  br label %if.end.406

if.end.406:                                       ; preds = %if.else.401, %if.end.398
  br label %sw.epilog

sw.bb.407:                                        ; preds = %if.end.43
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.43, %sw.bb.407, %if.end.406, %if.end.386, %if.end.349, %if.end.325, %if.end.240, %if.end.177, %if.end.80
  br label %for.cond

return:                                           ; preds = %if.then.397, %if.then.384, %if.then.347, %if.then.321, %if.then.305, %if.then.258, %if.then.237, %if.then.194, %if.then.174, %if.then.160, %if.then.73, %if.then.58, %if.then.42, %if.then.36, %if.then.11, %if.then.5
  %328 = load i32, i32* %retval
  ret i32 %328
}

declare void @XzCheck_Update(%struct.CXzCheck*, i8*, i64) #1

declare i32 @Xz_WriteVarInt(i8*, i64) #1

declare i32 @XzFlags_GetCheckSize(i16 zeroext) #1

declare void @Sha256_Update(%struct.CSha256*, i8*, i64) #1

declare void @Sha256_Init(%struct.CSha256*) #1

declare void @Sha256_Final(%struct.CSha256*, i8*) #1

declare i32 @CrcUpdate(i32, i8*, i64) #1

declare void @XzCheck_Init(%struct.CXzCheck*, i32) #1

declare i32 @XzCheck_Final(%struct.CXzCheck*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @Xz_CheckFooter(i16 zeroext %flags, i64 %indexSize, i8* %buf) #0 {
entry:
  %flags.addr = alloca i16, align 2
  %indexSize.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  store i16 %flags, i16* %flags.addr, align 2
  store i64 %indexSize, i64* %indexSize.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i64, i64* %indexSize.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 4
  %2 = bitcast i8* %add.ptr to i32*
  %3 = load i32, i32* %2, align 4
  %conv = zext i32 %3 to i64
  %add = add i64 %conv, 1
  %shl = shl i64 %add, 2
  %cmp = icmp eq i64 %0, %shl
  br i1 %cmp, label %land.rhs, label %land.end.20

land.rhs:                                         ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = bitcast i8* %4 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = load i8*, i8** %buf.addr, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %7, i64 4
  %call = call i32 @CrcCalc(i8* %add.ptr2, i64 6)
  %cmp3 = icmp eq i32 %6, %call
  br i1 %cmp3, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %land.rhs
  %8 = load i16, i16* %flags.addr, align 2
  %conv5 = zext i16 %8 to i32
  %9 = load i8*, i8** %buf.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %9, i64 8
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr6, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %10 to i16
  %conv8 = zext i16 %conv7 to i32
  %shl9 = shl i32 %conv8, 8
  %11 = load i8*, i8** %buf.addr, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %11, i64 8
  %arrayidx11 = getelementptr inbounds i8, i8* %add.ptr10, i64 1
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  %or = or i32 %shl9, %conv12
  %cmp13 = icmp eq i32 %conv5, %or
  br i1 %cmp13, label %land.rhs.15, label %land.end

land.rhs.15:                                      ; preds = %land.lhs.true
  %13 = load i8*, i8** %buf.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %13, i64 10
  %call17 = call i32 @memcmp(i8* %add.ptr16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @XZ_FOOTER_SIG, i32 0, i32 0), i64 2) #4
  %cmp18 = icmp eq i32 %call17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.15, %land.lhs.true, %land.rhs
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %land.rhs ], [ %cmp18, %land.rhs.15 ]
  br label %land.end.20

land.end.20:                                      ; preds = %land.end, %entry
  %15 = phi i1 [ false, %entry ], [ %14, %land.end ]
  %land.ext = zext i1 %15 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @XzUnpacker_IsStreamWasFinished(%struct.CXzUnpacker* %p) #0 {
entry:
  %p.addr = alloca %struct.CXzUnpacker*, align 8
  store %struct.CXzUnpacker* %p, %struct.CXzUnpacker** %p.addr, align 8
  %0 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %state = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %0, i32 0, i32 0
  %1 = load i32, i32* %state, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.CXzUnpacker*, %struct.CXzUnpacker** %p.addr, align 8
  %padSize = getelementptr inbounds %struct.CXzUnpacker, %struct.CXzUnpacker* %2, i32 0, i32 11
  %3 = load i64, i64* %padSize, align 8
  %conv = trunc i64 %3 to i32
  %and = and i32 %conv, 3
  %cmp1 = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @Delta_Encode(i8*, i32, i8*, i64) #1

declare void @Delta_Decode(i8*, i32, i8*, i64) #1

declare i64 @x86_Convert(i8*, i64, i32, i32*, i32) #1

declare i64 @PPC_Convert(i8*, i64, i32, i32) #1

declare i64 @IA64_Convert(i8*, i64, i32, i32) #1

declare i64 @ARM_Convert(i8*, i64, i32, i32) #1

declare i64 @ARMT_Convert(i8*, i64, i32, i32) #1

declare i64 @SPARC_Convert(i8*, i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @Lzma2State_Free(i8* %pp, %struct.ISzAlloc* %alloc) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzma2Dec*
  %decoder = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %1, i32 0, i32 0
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @LzmaDec_Free(%struct.CLzmaDec* %decoder, %struct.ISzAlloc* %2)
  %3 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %3, i32 0, i32 1
  %4 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %5 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %6 = bitcast %struct.ISzAlloc* %5 to i8*
  %7 = load i8*, i8** %pp.addr, align 8
  call void %4(i8* %6, i8* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Lzma2State_SetProps(i8* %pp, i8* %props, i64 %propSize, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i8*, align 8
  %props.addr = alloca i8*, align 8
  %propSize.addr = alloca i64, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i8* %props, i8** %props.addr, align 8
  store i64 %propSize, i64* %propSize.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load i64, i64* %propSize.addr, align 8
  %cmp = icmp ne i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %pp.addr, align 8
  %2 = bitcast i8* %1 to %struct.CLzma2Dec*
  %3 = load i8*, i8** %props.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call = call i32 @Lzma2Dec_Allocate(%struct.CLzma2Dec* %2, i8 zeroext %4, %struct.ISzAlloc* %5)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal void @Lzma2State_Init(i8* %pp) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzma2Dec*
  call void @Lzma2Dec_Init(%struct.CLzma2Dec* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Lzma2State_Code(i8* %pp, i8* %dest, i64* %destLen, i8* %src, i64* %srcLen, i32 %srcWasFinished, i32 %finishMode, i32* %wasFinished) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i64*, align 8
  %src.addr = alloca i8*, align 8
  %srcLen.addr = alloca i64*, align 8
  %srcWasFinished.addr = alloca i32, align 4
  %finishMode.addr = alloca i32, align 4
  %wasFinished.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %res = alloca i32, align 4
  store i8* %pp, i8** %pp.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64* %destLen, i64** %destLen.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64* %srcLen, i64** %srcLen.addr, align 8
  store i32 %srcWasFinished, i32* %srcWasFinished.addr, align 4
  store i32 %finishMode, i32* %finishMode.addr, align 4
  store i32* %wasFinished, i32** %wasFinished.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzma2Dec*
  %2 = load i8*, i8** %dest.addr, align 8
  %3 = load i64*, i64** %destLen.addr, align 8
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i64*, i64** %srcLen.addr, align 8
  %6 = load i32, i32* %finishMode.addr, align 4
  %call = call i32 @Lzma2Dec_DecodeToBuf(%struct.CLzma2Dec* %1, i8* %2, i64* %3, i8* %4, i64* %5, i32 %6, i32* %status)
  store i32 %call, i32* %res, align 4
  %7 = load i32, i32* %srcWasFinished.addr, align 4
  store i32 %7, i32* %srcWasFinished.addr, align 4
  %8 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %8, 1
  %conv = zext i1 %cmp to i32
  %9 = load i32*, i32** %wasFinished.addr, align 8
  store i32 %conv, i32* %9, align 4
  %10 = load i32, i32* %res, align 4
  ret i32 %10
}

declare void @LzmaDec_Free(%struct.CLzmaDec*, %struct.ISzAlloc*) #1

declare i32 @Lzma2Dec_Allocate(%struct.CLzma2Dec*, i8 zeroext, %struct.ISzAlloc*) #1

declare void @Lzma2Dec_Init(%struct.CLzma2Dec*) #1

declare i32 @Lzma2Dec_DecodeToBuf(%struct.CLzma2Dec*, i8*, i64*, i8*, i64*, i32, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
