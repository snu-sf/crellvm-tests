; ModuleID = './MultiSource.Benchmarks.7zip/18.Ppmd8.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPpmd8 = type { %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_*, %struct.CPpmd_State*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, %union.anon, [38 x i8], [128 x i8], [38 x i32], [38 x i32], [256 x i8], [260 x i8], %struct.CPpmd_See, [24 x [32 x %struct.CPpmd_See]], [25 x [64 x i16]] }
%struct.CPpmd8_Context_ = type { i8, i8, i16, i32, i32 }
%struct.CPpmd_State = type { i8, i8, i16, i16 }
%union.anon = type { %struct.IByteIn* }
%struct.IByteIn = type { i8 (i8*)* }
%struct.CPpmd_See = type { i16, i8, i8 }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct.CPpmd8_Node_ = type { i32, i32, i32 }

@PPMD8_kExpEscape = constant [16 x i8] c"\19\0E\09\07\05\05\04\04\04\03\03\03\02\02\02\02", align 16
@kInitBinEsc = internal constant [8 x i16] [i16 15581, i16 7999, i16 22975, i16 18675, i16 25761, i16 23228, i16 26162, i16 24657], align 16

; Function Attrs: nounwind uwtable
define void @Ppmd8_Construct(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %step = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 11
  store i8* null, i8** %Base, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %1, 38
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp uge i32 %2, 12
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %shr = lshr i32 %3, 2
  %add = add i32 %shr, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %step, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %4 = load i32, i32* %i, align 4
  %conv = trunc i32 %4 to i8
  %5 = load i32, i32* %k, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %k, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 23
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i32, i32* %step, align 4
  %dec = add i32 %7, -1
  store i32 %dec, i32* %step, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load i32, i32* %k, align 4
  %conv2 = trunc i32 %8 to i8
  %9 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %9 to i64
  %10 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Indx2Units = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %10, i32 0, i32 22
  %arrayidx4 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units, i32 0, i64 %idxprom3
  store i8 %conv2, i8* %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %11 = load i32, i32* %i, align 4
  %inc5 = add i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %NS2BSIndx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %12, i32 0, i32 26
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* %NS2BSIndx, i32 0, i64 0
  store i8 0, i8* %arrayidx6, align 1
  %13 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %NS2BSIndx7 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %13, i32 0, i32 26
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* %NS2BSIndx7, i32 0, i64 1
  store i8 2, i8* %arrayidx8, align 1
  %14 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %NS2BSIndx9 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %14, i32 0, i32 26
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %NS2BSIndx9, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 2
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 4, i64 9, i32 1, i1 false)
  %15 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %NS2BSIndx10 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %15, i32 0, i32 26
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %NS2BSIndx10, i32 0, i32 0
  %add.ptr12 = getelementptr inbounds i8, i8* %arraydecay11, i64 11
  call void @llvm.memset.p0i8.i64(i8* %add.ptr12, i8 6, i64 245, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.20, %for.end
  %16 = load i32, i32* %i, align 4
  %cmp14 = icmp ult i32 %16, 5
  br i1 %cmp14, label %for.body.16, label %for.end.22

for.body.16:                                      ; preds = %for.cond.13
  %17 = load i32, i32* %i, align 4
  %conv17 = trunc i32 %17 to i8
  %18 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %18 to i64
  %19 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %NS2Indx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %19, i32 0, i32 27
  %arrayidx19 = getelementptr inbounds [260 x i8], [260 x i8]* %NS2Indx, i32 0, i64 %idxprom18
  store i8 %conv17, i8* %arrayidx19, align 1
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.16
  %20 = load i32, i32* %i, align 4
  %inc21 = add i32 %20, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.13

for.end.22:                                       ; preds = %for.cond.13
  %21 = load i32, i32* %i, align 4
  store i32 %21, i32* %m, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.35, %for.end.22
  %22 = load i32, i32* %i, align 4
  %cmp24 = icmp ult i32 %22, 260
  br i1 %cmp24, label %for.body.26, label %for.end.37

for.body.26:                                      ; preds = %for.cond.23
  %23 = load i32, i32* %m, align 4
  %conv27 = trunc i32 %23 to i8
  %24 = load i32, i32* %i, align 4
  %idxprom28 = zext i32 %24 to i64
  %25 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %NS2Indx29 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %25, i32 0, i32 27
  %arrayidx30 = getelementptr inbounds [260 x i8], [260 x i8]* %NS2Indx29, i32 0, i64 %idxprom28
  store i8 %conv27, i8* %arrayidx30, align 1
  %26 = load i32, i32* %k, align 4
  %dec31 = add i32 %26, -1
  store i32 %dec31, i32* %k, align 4
  %cmp32 = icmp eq i32 %dec31, 0
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.26
  %27 = load i32, i32* %m, align 4
  %inc34 = add i32 %27, 1
  store i32 %inc34, i32* %m, align 4
  %sub = sub i32 %inc34, 4
  store i32 %sub, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.26
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc36 = add i32 %28, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.23

for.end.37:                                       ; preds = %for.cond.23
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @Ppmd8_Free(%struct.CPpmd8* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %0, i32 0, i32 1
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = bitcast %struct.ISzAlloc* %2 to i8*
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 11
  %5 = load i8*, i8** %Base, align 8
  call void %1(i8* %3, i8* %5)
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Size = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 9
  store i32 0, i32* %Size, align 4
  %7 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %7, i32 0, i32 11
  store i8* null, i8** %Base1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Ppmd8_Alloc(%struct.CPpmd8* %p, i32 %size, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CPpmd8*, align 8
  %size.addr = alloca i32, align 4
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 11
  %1 = load i8*, i8** %Base, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Size = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %2, i32 0, i32 9
  %3 = load i32, i32* %Size, align 4
  %4 = load i32, i32* %size.addr, align 4
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end.8

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %6 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @Ppmd8_Free(%struct.CPpmd8* %5, %struct.ISzAlloc* %6)
  %7 = load i32, i32* %size.addr, align 4
  %and = and i32 %7, 3
  %sub = sub i32 4, %and
  %8 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %AlignOffset = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %8, i32 0, i32 16
  store i32 %sub, i32* %AlignOffset, align 4
  %9 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %9, i32 0, i32 0
  %10 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %11 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %12 = bitcast %struct.ISzAlloc* %11 to i8*
  %13 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %AlignOffset2 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %13, i32 0, i32 16
  %14 = load i32, i32* %AlignOffset2, align 4
  %15 = load i32, i32* %size.addr, align 4
  %add = add i32 %14, %15
  %conv = zext i32 %add to i64
  %call = call i8* %10(i8* %12, i64 %conv)
  %16 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base3 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %16, i32 0, i32 11
  store i8* %call, i8** %Base3, align 8
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %17 = load i32, i32* %size.addr, align 4
  %18 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Size7 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %18, i32 0, i32 9
  store i32 %17, i32* %Size7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define void @Ppmd8_Init(%struct.CPpmd8* %p, i32 %maxOrder, i32 %restoreMethod) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %maxOrder.addr = alloca i32, align 4
  %restoreMethod.addr = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 %maxOrder, i32* %maxOrder.addr, align 4
  store i32 %restoreMethod, i32* %restoreMethod.addr, align 4
  %0 = load i32, i32* %maxOrder.addr, align 4
  %1 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxOrder = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %1, i32 0, i32 6
  store i32 %0, i32* %MaxOrder, align 4
  %2 = load i32, i32* %restoreMethod.addr, align 4
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %RestoreMethod = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 17
  store i32 %2, i32* %RestoreMethod, align 4
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @RestartModel(%struct.CPpmd8* %4)
  %5 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %DummySee = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %5, i32 0, i32 28
  %Shift = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %DummySee, i32 0, i32 1
  store i8 7, i8* %Shift, align 1
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %DummySee1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 28
  %Summ = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %DummySee1, i32 0, i32 0
  store i16 0, i16* %Summ, align 1
  %7 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %DummySee2 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %7, i32 0, i32 28
  %Count = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %DummySee2, i32 0, i32 2
  store i8 64, i8* %Count, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RestartModel(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca %struct.CPpmd_State*, align 8
  %val = alloca i16, align 2
  %dest = alloca i16*, align 8
  %s89 = alloca %struct.CPpmd_See*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 24
  %1 = bitcast [38 x i32]* %FreeList to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 152, i32 8, i1 false)
  %2 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Stamps = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %2, i32 0, i32 25
  %3 = bitcast [38 x i32]* %Stamps to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 152, i32 8, i1 false)
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 11
  %5 = load i8*, i8** %Base, align 8
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %AlignOffset = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 16
  %7 = load i32, i32* %AlignOffset, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %8 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Text = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %8, i32 0, i32 14
  store i8* %add.ptr1, i8** %Text, align 8
  %9 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Text2 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %9, i32 0, i32 14
  %10 = load i8*, i8** %Text2, align 8
  %11 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Size = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %11, i32 0, i32 9
  %12 = load i32, i32* %Size, align 4
  %idx.ext3 = zext i32 %12 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %10, i64 %idx.ext3
  %13 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %HiUnit = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %13, i32 0, i32 13
  store i8* %add.ptr4, i8** %HiUnit, align 8
  %14 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %HiUnit5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %14, i32 0, i32 13
  %15 = load i8*, i8** %HiUnit5, align 8
  %16 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Size6 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %16, i32 0, i32 9
  %17 = load i32, i32* %Size6, align 4
  %div = udiv i32 %17, 8
  %div7 = udiv i32 %div, 12
  %mul = mul i32 %div7, 7
  %mul8 = mul i32 %mul, 12
  %idx.ext9 = zext i32 %mul8 to i64
  %idx.neg = sub i64 0, %idx.ext9
  %add.ptr10 = getelementptr inbounds i8, i8* %15, i64 %idx.neg
  %18 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %18, i32 0, i32 15
  store i8* %add.ptr10, i8** %UnitsStart, align 8
  %19 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %LoUnit = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %19, i32 0, i32 12
  store i8* %add.ptr10, i8** %LoUnit, align 8
  %20 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %GlueCount = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %20, i32 0, i32 10
  store i32 0, i32* %GlueCount, align 4
  %21 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxOrder = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %21, i32 0, i32 6
  %22 = load i32, i32* %MaxOrder, align 4
  %23 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %OrderFall = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %23, i32 0, i32 3
  store i32 %22, i32* %OrderFall, align 4
  %24 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxOrder11 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %24, i32 0, i32 6
  %25 = load i32, i32* %MaxOrder11, align 4
  %cmp = icmp ult i32 %25, 12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %26 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxOrder12 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %26, i32 0, i32 6
  %27 = load i32, i32* %MaxOrder12, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ 12, %cond.false ]
  %sub = sub nsw i32 0, %cond
  %sub13 = sub nsw i32 %sub, 1
  %28 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %InitRL = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %28, i32 0, i32 8
  store i32 %sub13, i32* %InitRL, align 4
  %29 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %RunLength = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %29, i32 0, i32 7
  store i32 %sub13, i32* %RunLength, align 4
  %30 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %PrevSuccess = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %30, i32 0, i32 5
  store i32 0, i32* %PrevSuccess, align 4
  %31 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %HiUnit14 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %31, i32 0, i32 13
  %32 = load i8*, i8** %HiUnit14, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %32, i64 -12
  store i8* %add.ptr15, i8** %HiUnit14, align 8
  %33 = bitcast i8* %add.ptr15 to %struct.CPpmd8_Context_*
  %34 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %34, i32 0, i32 1
  store %struct.CPpmd8_Context_* %33, %struct.CPpmd8_Context_** %MaxContext, align 8
  %35 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %35, i32 0, i32 0
  store %struct.CPpmd8_Context_* %33, %struct.CPpmd8_Context_** %MinContext, align 8
  %36 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext16 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %36, i32 0, i32 0
  %37 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext16, align 8
  %Suffix = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %37, i32 0, i32 4
  store i32 0, i32* %Suffix, align 4
  %38 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext17 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %38, i32 0, i32 0
  %39 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext17, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %39, i32 0, i32 0
  store i8 -1, i8* %NumStats, align 1
  %40 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext18 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %40, i32 0, i32 0
  %41 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext18, align 8
  %Flags = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %41, i32 0, i32 1
  store i8 0, i8* %Flags, align 1
  %42 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext19 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %42, i32 0, i32 0
  %43 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext19, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %43, i32 0, i32 2
  store i16 257, i16* %SummFreq, align 2
  %44 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %LoUnit20 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %44, i32 0, i32 12
  %45 = load i8*, i8** %LoUnit20, align 8
  %46 = bitcast i8* %45 to %struct.CPpmd_State*
  %47 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %47, i32 0, i32 2
  store %struct.CPpmd_State* %46, %struct.CPpmd_State** %FoundState, align 8
  %48 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %LoUnit21 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %48, i32 0, i32 12
  %49 = load i8*, i8** %LoUnit21, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %49, i64 1536
  store i8* %add.ptr22, i8** %LoUnit21, align 8
  %50 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState23 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %50, i32 0, i32 2
  %51 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState23, align 8
  %52 = bitcast %struct.CPpmd_State* %51 to i8*
  %53 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base24 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %53, i32 0, i32 11
  %54 = load i8*, i8** %Base24, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %54 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %55 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext25 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %55, i32 0, i32 0
  %56 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext25, align 8
  %Stats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %56, i32 0, i32 3
  store i32 %conv, i32* %Stats, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %57 = load i32, i32* %i, align 4
  %cmp26 = icmp ult i32 %57, 256
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load i32, i32* %i, align 4
  %idxprom = zext i32 %58 to i64
  %59 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState28 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %59, i32 0, i32 2
  %60 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState28, align 8
  %arrayidx = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %60, i64 %idxprom
  store %struct.CPpmd_State* %arrayidx, %struct.CPpmd_State** %s, align 8
  %61 = load i32, i32* %i, align 4
  %conv29 = trunc i32 %61 to i8
  %62 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %62, i32 0, i32 0
  store i8 %conv29, i8* %Symbol, align 1
  %63 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %63, i32 0, i32 1
  store i8 1, i8* %Freq, align 1
  %64 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  call void @SetSuccessor(%struct.CPpmd_State* %64, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %65 = load i32, i32* %i, align 4
  %inc = add i32 %65, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %m, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.66, %for.end
  %66 = load i32, i32* %m, align 4
  %cmp31 = icmp ult i32 %66, 25
  br i1 %cmp31, label %for.body.33, label %for.end.68

for.body.33:                                      ; preds = %for.cond.30
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.33
  %67 = load i32, i32* %i, align 4
  %idxprom34 = zext i32 %67 to i64
  %68 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %NS2Indx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %68, i32 0, i32 27
  %arrayidx35 = getelementptr inbounds [260 x i8], [260 x i8]* %NS2Indx, i32 0, i64 %idxprom34
  %69 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %69 to i32
  %70 = load i32, i32* %m, align 4
  %cmp37 = icmp eq i32 %conv36, %70
  br i1 %cmp37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %71 = load i32, i32* %i, align 4
  %inc39 = add i32 %71, 1
  store i32 %inc39, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.63, %while.end
  %72 = load i32, i32* %k, align 4
  %cmp41 = icmp ult i32 %72, 8
  br i1 %cmp41, label %for.body.43, label %for.end.65

for.body.43:                                      ; preds = %for.cond.40
  %73 = load i32, i32* %k, align 4
  %idxprom44 = zext i32 %73 to i64
  %arrayidx45 = getelementptr inbounds [8 x i16], [8 x i16]* @kInitBinEsc, i32 0, i64 %idxprom44
  %74 = load i16, i16* %arrayidx45, align 2
  %conv46 = zext i16 %74 to i32
  %75 = load i32, i32* %i, align 4
  %add = add i32 %75, 1
  %div47 = udiv i32 %conv46, %add
  %sub48 = sub i32 16384, %div47
  %conv49 = trunc i32 %sub48 to i16
  store i16 %conv49, i16* %val, align 2
  %76 = load i32, i32* %m, align 4
  %idxprom50 = zext i32 %76 to i64
  %77 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %BinSumm = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %77, i32 0, i32 30
  %arrayidx51 = getelementptr inbounds [25 x [64 x i16]], [25 x [64 x i16]]* %BinSumm, i32 0, i64 %idxprom50
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx51, i32 0, i32 0
  %78 = load i32, i32* %k, align 4
  %idx.ext52 = zext i32 %78 to i64
  %add.ptr53 = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext52
  store i16* %add.ptr53, i16** %dest, align 8
  store i32 0, i32* %r, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.60, %for.body.43
  %79 = load i32, i32* %r, align 4
  %cmp55 = icmp ult i32 %79, 64
  br i1 %cmp55, label %for.body.57, label %for.end.62

for.body.57:                                      ; preds = %for.cond.54
  %80 = load i16, i16* %val, align 2
  %81 = load i32, i32* %r, align 4
  %idxprom58 = zext i32 %81 to i64
  %82 = load i16*, i16** %dest, align 8
  %arrayidx59 = getelementptr inbounds i16, i16* %82, i64 %idxprom58
  store i16 %80, i16* %arrayidx59, align 2
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.57
  %83 = load i32, i32* %r, align 4
  %add61 = add i32 %83, 8
  store i32 %add61, i32* %r, align 4
  br label %for.cond.54

for.end.62:                                       ; preds = %for.cond.54
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end.62
  %84 = load i32, i32* %k, align 4
  %inc64 = add i32 %84, 1
  store i32 %inc64, i32* %k, align 4
  br label %for.cond.40

for.end.65:                                       ; preds = %for.cond.40
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %85 = load i32, i32* %m, align 4
  %inc67 = add i32 %85, 1
  store i32 %inc67, i32* %m, align 4
  br label %for.cond.30

for.end.68:                                       ; preds = %for.cond.30
  store i32 0, i32* %m, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.100, %for.end.68
  %86 = load i32, i32* %m, align 4
  %cmp70 = icmp ult i32 %86, 24
  br i1 %cmp70, label %for.body.72, label %for.end.102

for.body.72:                                      ; preds = %for.cond.69
  br label %while.cond.73

while.cond.73:                                    ; preds = %while.body.82, %for.body.72
  %87 = load i32, i32* %i, align 4
  %add74 = add i32 %87, 3
  %idxprom75 = zext i32 %add74 to i64
  %88 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %NS2Indx76 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %88, i32 0, i32 27
  %arrayidx77 = getelementptr inbounds [260 x i8], [260 x i8]* %NS2Indx76, i32 0, i64 %idxprom75
  %89 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %89 to i32
  %90 = load i32, i32* %m, align 4
  %add79 = add i32 %90, 3
  %cmp80 = icmp eq i32 %conv78, %add79
  br i1 %cmp80, label %while.body.82, label %while.end.84

while.body.82:                                    ; preds = %while.cond.73
  %91 = load i32, i32* %i, align 4
  %inc83 = add i32 %91, 1
  store i32 %inc83, i32* %i, align 4
  br label %while.cond.73

while.end.84:                                     ; preds = %while.cond.73
  store i32 0, i32* %k, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.97, %while.end.84
  %92 = load i32, i32* %k, align 4
  %cmp86 = icmp ult i32 %92, 32
  br i1 %cmp86, label %for.body.88, label %for.end.99

for.body.88:                                      ; preds = %for.cond.85
  %93 = load i32, i32* %k, align 4
  %idxprom90 = zext i32 %93 to i64
  %94 = load i32, i32* %m, align 4
  %idxprom91 = zext i32 %94 to i64
  %95 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %See = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %95, i32 0, i32 29
  %arrayidx92 = getelementptr inbounds [24 x [32 x %struct.CPpmd_See]], [24 x [32 x %struct.CPpmd_See]]* %See, i32 0, i64 %idxprom91
  %arrayidx93 = getelementptr inbounds [32 x %struct.CPpmd_See], [32 x %struct.CPpmd_See]* %arrayidx92, i32 0, i64 %idxprom90
  store %struct.CPpmd_See* %arrayidx93, %struct.CPpmd_See** %s89, align 8
  %96 = load i32, i32* %i, align 4
  %mul94 = mul i32 2, %96
  %add95 = add i32 %mul94, 5
  %97 = load %struct.CPpmd_See*, %struct.CPpmd_See** %s89, align 8
  %Shift = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %97, i32 0, i32 1
  store i8 3, i8* %Shift, align 1
  %shl = shl i32 %add95, 3
  %conv96 = trunc i32 %shl to i16
  %98 = load %struct.CPpmd_See*, %struct.CPpmd_See** %s89, align 8
  %Summ = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %98, i32 0, i32 0
  store i16 %conv96, i16* %Summ, align 1
  %99 = load %struct.CPpmd_See*, %struct.CPpmd_See** %s89, align 8
  %Count = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %99, i32 0, i32 2
  store i8 7, i8* %Count, align 1
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.88
  %100 = load i32, i32* %k, align 4
  %inc98 = add i32 %100, 1
  store i32 %inc98, i32* %k, align 4
  br label %for.cond.85

for.end.99:                                       ; preds = %for.cond.85
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.end.99
  %101 = load i32, i32* %m, align 4
  %inc101 = add i32 %101, 1
  store i32 %inc101, i32* %m, align 4
  br label %for.cond.69

for.end.102:                                      ; preds = %for.cond.69
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.CPpmd_See* @Ppmd8_MakeEscFreq(%struct.CPpmd8* %p, i32 %numMasked1, i32* %escFreq) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %numMasked1.addr = alloca i32, align 4
  %escFreq.addr = alloca i32*, align 8
  %see = alloca %struct.CPpmd_See*, align 8
  %r = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 %numMasked1, i32* %numMasked1.addr, align 4
  store i32* %escFreq, i32** %escFreq.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 0
  %1 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %1, i32 0, i32 0
  %2 = load i8, i8* %NumStats, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext2 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 0
  %4 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext2, align 8
  %NumStats3 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %4, i32 0, i32 0
  %5 = load i8, i8* %NumStats3, align 1
  %conv4 = zext i8 %5 to i32
  %add = add nsw i32 %conv4, 2
  %idxprom = sext i32 %add to i64
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %NS2Indx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 27
  %arrayidx = getelementptr inbounds [260 x i8], [260 x i8]* %NS2Indx, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv5, 3
  %idxprom6 = sext i32 %sub to i64
  %8 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %See = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %8, i32 0, i32 29
  %arrayidx7 = getelementptr inbounds [24 x [32 x %struct.CPpmd_See]], [24 x [32 x %struct.CPpmd_See]]* %See, i32 0, i64 %idxprom6
  %arraydecay = getelementptr inbounds [32 x %struct.CPpmd_See], [32 x %struct.CPpmd_See]* %arrayidx7, i32 0, i32 0
  %9 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext8 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %9, i32 0, i32 0
  %10 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext8, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %10, i32 0, i32 2
  %11 = load i16, i16* %SummFreq, align 2
  %conv9 = zext i16 %11 to i32
  %12 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext10 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %12, i32 0, i32 0
  %13 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext10, align 8
  %NumStats11 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %13, i32 0, i32 0
  %14 = load i8, i8* %NumStats11, align 1
  %conv12 = zext i8 %14 to i32
  %add13 = add i32 %conv12, 1
  %mul = mul i32 11, %add13
  %cmp14 = icmp ugt i32 %conv9, %mul
  %conv15 = zext i1 %cmp14 to i32
  %idx.ext = sext i32 %conv15 to i64
  %add.ptr = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %arraydecay, i64 %idx.ext
  %15 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext16 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %15, i32 0, i32 0
  %16 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext16, align 8
  %NumStats17 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %16, i32 0, i32 0
  %17 = load i8, i8* %NumStats17, align 1
  %conv18 = zext i8 %17 to i32
  %mul19 = mul i32 2, %conv18
  %18 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %18, i32 0, i32 11
  %19 = load i8*, i8** %Base, align 8
  %20 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext20 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %20, i32 0, i32 0
  %21 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext20, align 8
  %Suffix = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %21, i32 0, i32 4
  %22 = load i32, i32* %Suffix, align 4
  %idx.ext21 = zext i32 %22 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %19, i64 %idx.ext21
  %23 = bitcast i8* %add.ptr22 to %struct.CPpmd8_Context_*
  %NumStats23 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %23, i32 0, i32 0
  %24 = load i8, i8* %NumStats23, align 1
  %conv24 = zext i8 %24 to i32
  %25 = load i32, i32* %numMasked1.addr, align 4
  %add25 = add i32 %conv24, %25
  %cmp26 = icmp ult i32 %mul19, %add25
  %conv27 = zext i1 %cmp26 to i32
  %mul28 = mul nsw i32 2, %conv27
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %add.ptr, i64 %idx.ext29
  %26 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext31 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %26, i32 0, i32 0
  %27 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext31, align 8
  %Flags = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %27, i32 0, i32 1
  %28 = load i8, i8* %Flags, align 1
  %conv32 = zext i8 %28 to i32
  %idx.ext33 = sext i32 %conv32 to i64
  %add.ptr34 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %add.ptr30, i64 %idx.ext33
  store %struct.CPpmd_See* %add.ptr34, %struct.CPpmd_See** %see, align 8
  %29 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %29, i32 0, i32 0
  %30 = load i16, i16* %Summ, align 1
  %conv35 = zext i16 %30 to i32
  %31 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Shift = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %31, i32 0, i32 1
  %32 = load i8, i8* %Shift, align 1
  %conv36 = zext i8 %32 to i32
  %shr = ashr i32 %conv35, %conv36
  store i32 %shr, i32* %r, align 4
  %33 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ37 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %33, i32 0, i32 0
  %34 = load i16, i16* %Summ37, align 1
  %conv38 = zext i16 %34 to i32
  %35 = load i32, i32* %r, align 4
  %sub39 = sub i32 %conv38, %35
  %conv40 = trunc i32 %sub39 to i16
  %36 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ41 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %36, i32 0, i32 0
  store i16 %conv40, i16* %Summ41, align 1
  %37 = load i32, i32* %r, align 4
  %38 = load i32, i32* %r, align 4
  %cmp42 = icmp eq i32 %38, 0
  %conv43 = zext i1 %cmp42 to i32
  %add44 = add i32 %37, %conv43
  %39 = load i32*, i32** %escFreq.addr, align 8
  store i32 %add44, i32* %39, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %40 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %DummySee = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %40, i32 0, i32 28
  store %struct.CPpmd_See* %DummySee, %struct.CPpmd_See** %see, align 8
  %41 = load i32*, i32** %escFreq.addr, align 8
  store i32 1, i32* %41, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %42 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  ret %struct.CPpmd_See* %42
}

; Function Attrs: nounwind uwtable
define void @Ppmd8_Update1(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %s = alloca %struct.CPpmd_State*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 2
  %1 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  store %struct.CPpmd_State* %1, %struct.CPpmd_State** %s, align 8
  %2 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %2, i32 0, i32 1
  %3 = load i8, i8* %Freq, align 1
  %conv = zext i8 %3 to i32
  %add = add nsw i32 %conv, 4
  %conv1 = trunc i32 %add to i8
  store i8 %conv1, i8* %Freq, align 1
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 0
  %5 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %5, i32 0, i32 2
  %6 = load i16, i16* %SummFreq, align 2
  %conv2 = zext i16 %6 to i32
  %add3 = add nsw i32 %conv2, 4
  %conv4 = trunc i32 %add3 to i16
  store i16 %conv4, i16* %SummFreq, align 2
  %7 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %arrayidx = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %7, i64 0
  %Freq5 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %arrayidx, i32 0, i32 1
  %8 = load i8, i8* %Freq5, align 1
  %conv6 = zext i8 %8 to i32
  %9 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %arrayidx7 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %9, i64 -1
  %Freq8 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %arrayidx7, i32 0, i32 1
  %10 = load i8, i8* %Freq8, align 1
  %conv9 = zext i8 %10 to i32
  %cmp = icmp sgt i32 %conv6, %conv9
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %11 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %arrayidx11 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %11, i64 0
  %12 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %arrayidx12 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %12, i64 -1
  call void @SwapStates(%struct.CPpmd_State* %arrayidx11, %struct.CPpmd_State* %arrayidx12)
  %13 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %13, i32 -1
  store %struct.CPpmd_State* %incdec.ptr, %struct.CPpmd_State** %s, align 8
  %14 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState13 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %14, i32 0, i32 2
  store %struct.CPpmd_State* %incdec.ptr, %struct.CPpmd_State** %FoundState13, align 8
  %15 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq14 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %15, i32 0, i32 1
  %16 = load i8, i8* %Freq14, align 1
  %conv15 = zext i8 %16 to i32
  %cmp16 = icmp sgt i32 %conv15, 124
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then
  %17 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @Rescale(%struct.CPpmd8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %entry
  %18 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @NextContext(%struct.CPpmd8* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SwapStates(%struct.CPpmd_State* %t1, %struct.CPpmd_State* %t2) #0 {
entry:
  %t1.addr = alloca %struct.CPpmd_State*, align 8
  %t2.addr = alloca %struct.CPpmd_State*, align 8
  %tmp = alloca %struct.CPpmd_State, align 1
  store %struct.CPpmd_State* %t1, %struct.CPpmd_State** %t1.addr, align 8
  store %struct.CPpmd_State* %t2, %struct.CPpmd_State** %t2.addr, align 8
  %0 = load %struct.CPpmd_State*, %struct.CPpmd_State** %t1.addr, align 8
  %1 = bitcast %struct.CPpmd_State* %tmp to i8*
  %2 = bitcast %struct.CPpmd_State* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 6, i32 1, i1 false)
  %3 = load %struct.CPpmd_State*, %struct.CPpmd_State** %t1.addr, align 8
  %4 = load %struct.CPpmd_State*, %struct.CPpmd_State** %t2.addr, align 8
  %5 = bitcast %struct.CPpmd_State* %3 to i8*
  %6 = bitcast %struct.CPpmd_State* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 6, i32 1, i1 false)
  %7 = load %struct.CPpmd_State*, %struct.CPpmd_State** %t2.addr, align 8
  %8 = bitcast %struct.CPpmd_State* %7 to i8*
  %9 = bitcast %struct.CPpmd_State* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 6, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Rescale(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %i = alloca i32, align 4
  %adder = alloca i32, align 4
  %sumFreq = alloca i32, align 4
  %escFreq = alloca i32, align 4
  %stats = alloca %struct.CPpmd_State*, align 8
  %s = alloca %struct.CPpmd_State*, align 8
  %tmp = alloca %struct.CPpmd_State, align 1
  %s1 = alloca %struct.CPpmd_State*, align 8
  %tmp41 = alloca %struct.CPpmd_State, align 1
  %numStats = alloca i32, align 4
  %n0 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %tmp91 = alloca %struct.CPpmd_State, align 1
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 11
  %1 = load i8*, i8** %Base, align 8
  %2 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %2, i32 0, i32 0
  %3 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext, align 8
  %Stats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %3, i32 0, i32 3
  %4 = load i32, i32* %Stats, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %5 = bitcast i8* %add.ptr to %struct.CPpmd_State*
  store %struct.CPpmd_State* %5, %struct.CPpmd_State** %stats, align 8
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 2
  %7 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  store %struct.CPpmd_State* %7, %struct.CPpmd_State** %s, align 8
  %8 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %9 = bitcast %struct.CPpmd_State* %tmp to i8*
  %10 = bitcast %struct.CPpmd_State* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 6, i32 1, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %12 = load %struct.CPpmd_State*, %struct.CPpmd_State** %stats, align 8
  %cmp = icmp ne %struct.CPpmd_State* %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %arrayidx = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %13, i64 0
  %14 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %arrayidx1 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %14, i64 -1
  %15 = bitcast %struct.CPpmd_State* %arrayidx to i8*
  %16 = bitcast %struct.CPpmd_State* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 6, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %17, i32 -1
  store %struct.CPpmd_State* %incdec.ptr, %struct.CPpmd_State** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %19 = bitcast %struct.CPpmd_State* %18 to i8*
  %20 = bitcast %struct.CPpmd_State* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 6, i32 1, i1 false)
  %21 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext2 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %21, i32 0, i32 0
  %22 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext2, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %22, i32 0, i32 2
  %23 = load i16, i16* %SummFreq, align 2
  %conv = zext i16 %23 to i32
  %24 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %24, i32 0, i32 1
  %25 = load i8, i8* %Freq, align 1
  %conv3 = zext i8 %25 to i32
  %sub = sub nsw i32 %conv, %conv3
  store i32 %sub, i32* %escFreq, align 4
  %26 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq4 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %26, i32 0, i32 1
  %27 = load i8, i8* %Freq4, align 1
  %conv5 = zext i8 %27 to i32
  %add = add nsw i32 %conv5, 4
  %conv6 = trunc i32 %add to i8
  store i8 %conv6, i8* %Freq4, align 1
  %28 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %OrderFall = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %28, i32 0, i32 3
  %29 = load i32, i32* %OrderFall, align 4
  %cmp7 = icmp ne i32 %29, 0
  %conv8 = zext i1 %cmp7 to i32
  store i32 %conv8, i32* %adder, align 4
  %30 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq9 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %30, i32 0, i32 1
  %31 = load i8, i8* %Freq9, align 1
  %conv10 = zext i8 %31 to i32
  %32 = load i32, i32* %adder, align 4
  %add11 = add i32 %conv10, %32
  %shr = lshr i32 %add11, 1
  %conv12 = trunc i32 %shr to i8
  %33 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq13 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %33, i32 0, i32 1
  store i8 %conv12, i8* %Freq13, align 1
  %34 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq14 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %34, i32 0, i32 1
  %35 = load i8, i8* %Freq14, align 1
  %conv15 = zext i8 %35 to i32
  store i32 %conv15, i32* %sumFreq, align 4
  %36 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext16 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %36, i32 0, i32 0
  %37 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext16, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %37, i32 0, i32 0
  %38 = load i8, i8* %NumStats, align 1
  %conv17 = zext i8 %38 to i32
  store i32 %conv17, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.55, %for.end
  %39 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr18 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %39, i32 1
  store %struct.CPpmd_State* %incdec.ptr18, %struct.CPpmd_State** %s, align 8
  %Freq19 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %incdec.ptr18, i32 0, i32 1
  %40 = load i8, i8* %Freq19, align 1
  %conv20 = zext i8 %40 to i32
  %41 = load i32, i32* %escFreq, align 4
  %sub21 = sub i32 %41, %conv20
  store i32 %sub21, i32* %escFreq, align 4
  %42 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq22 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %42, i32 0, i32 1
  %43 = load i8, i8* %Freq22, align 1
  %conv23 = zext i8 %43 to i32
  %44 = load i32, i32* %adder, align 4
  %add24 = add i32 %conv23, %44
  %shr25 = lshr i32 %add24, 1
  %conv26 = trunc i32 %shr25 to i8
  %45 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq27 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %45, i32 0, i32 1
  store i8 %conv26, i8* %Freq27, align 1
  %46 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq28 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %46, i32 0, i32 1
  %47 = load i8, i8* %Freq28, align 1
  %conv29 = zext i8 %47 to i32
  %48 = load i32, i32* %sumFreq, align 4
  %add30 = add i32 %48, %conv29
  store i32 %add30, i32* %sumFreq, align 4
  %49 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %arrayidx31 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %49, i64 0
  %Freq32 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %arrayidx31, i32 0, i32 1
  %50 = load i8, i8* %Freq32, align 1
  %conv33 = zext i8 %50 to i32
  %51 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %arrayidx34 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %51, i64 -1
  %Freq35 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %arrayidx34, i32 0, i32 1
  %52 = load i8, i8* %Freq35, align 1
  %conv36 = zext i8 %52 to i32
  %cmp37 = icmp sgt i32 %conv33, %conv36
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %53 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  store %struct.CPpmd_State* %53, %struct.CPpmd_State** %s1, align 8
  %54 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %55 = bitcast %struct.CPpmd_State* %tmp41 to i8*
  %56 = bitcast %struct.CPpmd_State* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 6, i32 1, i1 false)
  br label %do.body.42

do.body.42:                                       ; preds = %land.end, %if.then
  %57 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %arrayidx43 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %57, i64 0
  %58 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %arrayidx44 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %58, i64 -1
  %59 = bitcast %struct.CPpmd_State* %arrayidx43 to i8*
  %60 = bitcast %struct.CPpmd_State* %arrayidx44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 6, i32 1, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body.42
  %61 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %incdec.ptr45 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %61, i32 -1
  store %struct.CPpmd_State* %incdec.ptr45, %struct.CPpmd_State** %s1, align 8
  %62 = load %struct.CPpmd_State*, %struct.CPpmd_State** %stats, align 8
  %cmp46 = icmp ne %struct.CPpmd_State* %incdec.ptr45, %62
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %Freq48 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %tmp41, i32 0, i32 1
  %63 = load i8, i8* %Freq48, align 1
  %conv49 = zext i8 %63 to i32
  %64 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %arrayidx50 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %64, i64 -1
  %Freq51 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %arrayidx50, i32 0, i32 1
  %65 = load i8, i8* %Freq51, align 1
  %conv52 = zext i8 %65 to i32
  %cmp53 = icmp sgt i32 %conv49, %conv52
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %66 = phi i1 [ false, %do.cond ], [ %cmp53, %land.rhs ]
  br i1 %66, label %do.body.42, label %do.end

do.end:                                           ; preds = %land.end
  %67 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %68 = bitcast %struct.CPpmd_State* %67 to i8*
  %69 = bitcast %struct.CPpmd_State* %tmp41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 6, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond.55

do.cond.55:                                       ; preds = %if.end
  %70 = load i32, i32* %i, align 4
  %dec = add i32 %70, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %71 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq57 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %71, i32 0, i32 1
  %72 = load i8, i8* %Freq57, align 1
  %conv58 = zext i8 %72 to i32
  %cmp59 = icmp eq i32 %conv58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.177

if.then.61:                                       ; preds = %do.end.56
  %73 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext63 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %73, i32 0, i32 0
  %74 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext63, align 8
  %NumStats64 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %74, i32 0, i32 0
  %75 = load i8, i8* %NumStats64, align 1
  %conv65 = zext i8 %75 to i32
  store i32 %conv65, i32* %numStats, align 4
  br label %do.body.68

do.body.68:                                       ; preds = %do.cond.69, %if.then.61
  %76 = load i32, i32* %i, align 4
  %inc = add i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %do.cond.69

do.cond.69:                                       ; preds = %do.body.68
  %77 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr70 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %77, i32 -1
  store %struct.CPpmd_State* %incdec.ptr70, %struct.CPpmd_State** %s, align 8
  %Freq71 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %incdec.ptr70, i32 0, i32 1
  %78 = load i8, i8* %Freq71, align 1
  %conv72 = zext i8 %78 to i32
  %cmp73 = icmp eq i32 %conv72, 0
  br i1 %cmp73, label %do.body.68, label %do.end.75

do.end.75:                                        ; preds = %do.cond.69
  %79 = load i32, i32* %i, align 4
  %80 = load i32, i32* %escFreq, align 4
  %add76 = add i32 %80, %79
  store i32 %add76, i32* %escFreq, align 4
  %81 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext77 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %81, i32 0, i32 0
  %82 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext77, align 8
  %NumStats78 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %82, i32 0, i32 0
  %83 = load i8, i8* %NumStats78, align 1
  %conv79 = zext i8 %83 to i32
  %84 = load i32, i32* %i, align 4
  %sub80 = sub i32 %conv79, %84
  %conv81 = trunc i32 %sub80 to i8
  %85 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext82 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %85, i32 0, i32 0
  %86 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext82, align 8
  %NumStats83 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %86, i32 0, i32 0
  store i8 %conv81, i8* %NumStats83, align 1
  %87 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext84 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %87, i32 0, i32 0
  %88 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext84, align 8
  %NumStats85 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %88, i32 0, i32 0
  %89 = load i8, i8* %NumStats85, align 1
  %conv86 = zext i8 %89 to i32
  %cmp87 = icmp eq i32 %conv86, 0
  br i1 %cmp87, label %if.then.89, label %if.end.123

if.then.89:                                       ; preds = %do.end.75
  %90 = load %struct.CPpmd_State*, %struct.CPpmd_State** %stats, align 8
  %91 = bitcast %struct.CPpmd_State* %tmp91 to i8*
  %92 = bitcast %struct.CPpmd_State* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 6, i32 1, i1 false)
  %Freq92 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %tmp91, i32 0, i32 1
  %93 = load i8, i8* %Freq92, align 1
  %conv93 = zext i8 %93 to i32
  %mul = mul nsw i32 2, %conv93
  %94 = load i32, i32* %escFreq, align 4
  %add94 = add i32 %mul, %94
  %sub95 = sub i32 %add94, 1
  %95 = load i32, i32* %escFreq, align 4
  %div = udiv i32 %sub95, %95
  %conv96 = trunc i32 %div to i8
  %Freq97 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %tmp91, i32 0, i32 1
  store i8 %conv96, i8* %Freq97, align 1
  %Freq98 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %tmp91, i32 0, i32 1
  %96 = load i8, i8* %Freq98, align 1
  %conv99 = zext i8 %96 to i32
  %cmp100 = icmp sgt i32 %conv99, 41
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.then.89
  %Freq103 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %tmp91, i32 0, i32 1
  store i8 41, i8* %Freq103, align 1
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.then.89
  %97 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %98 = load %struct.CPpmd_State*, %struct.CPpmd_State** %stats, align 8
  %99 = bitcast %struct.CPpmd_State* %98 to i8*
  %100 = load i32, i32* %numStats, align 4
  %add105 = add i32 %100, 2
  %shr106 = lshr i32 %add105, 1
  %sub107 = sub i32 %shr106, 1
  %idxprom = zext i32 %sub107 to i64
  %101 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %101, i32 0, i32 23
  %arrayidx108 = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx, i32 0, i64 %idxprom
  %102 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %102 to i32
  call void @InsertNode(%struct.CPpmd8* %97, i8* %99, i32 %conv109)
  %103 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext110 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %103, i32 0, i32 0
  %104 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext110, align 8
  %Flags = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %104, i32 0, i32 1
  %105 = load i8, i8* %Flags, align 1
  %conv111 = zext i8 %105 to i32
  %and = and i32 %conv111, 16
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %tmp91, i32 0, i32 0
  %106 = load i8, i8* %Symbol, align 1
  %conv112 = zext i8 %106 to i32
  %cmp113 = icmp sge i32 %conv112, 64
  %conv114 = zext i1 %cmp113 to i32
  %mul115 = mul nsw i32 8, %conv114
  %add116 = add nsw i32 %and, %mul115
  %conv117 = trunc i32 %add116 to i8
  %107 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext118 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %107, i32 0, i32 0
  %108 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext118, align 8
  %Flags119 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %108, i32 0, i32 1
  store i8 %conv117, i8* %Flags119, align 1
  %109 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext120 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %109, i32 0, i32 0
  %110 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext120, align 8
  %SummFreq121 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %110, i32 0, i32 2
  %111 = bitcast i16* %SummFreq121 to %struct.CPpmd_State*
  %112 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState122 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %112, i32 0, i32 2
  store %struct.CPpmd_State* %111, %struct.CPpmd_State** %FoundState122, align 8
  %113 = bitcast %struct.CPpmd_State* %111 to i8*
  %114 = bitcast %struct.CPpmd_State* %tmp91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* %114, i64 6, i32 1, i1 false)
  br label %return

if.end.123:                                       ; preds = %do.end.75
  %115 = load i32, i32* %numStats, align 4
  %add124 = add i32 %115, 2
  %shr125 = lshr i32 %add124, 1
  store i32 %shr125, i32* %n0, align 4
  %116 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext126 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %116, i32 0, i32 0
  %117 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext126, align 8
  %NumStats127 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %117, i32 0, i32 0
  %118 = load i8, i8* %NumStats127, align 1
  %conv128 = zext i8 %118 to i32
  %add129 = add nsw i32 %conv128, 2
  %shr130 = ashr i32 %add129, 1
  store i32 %shr130, i32* %n1, align 4
  %119 = load i32, i32* %n0, align 4
  %120 = load i32, i32* %n1, align 4
  %cmp131 = icmp ne i32 %119, %120
  br i1 %cmp131, label %if.then.133, label %if.end.138

if.then.133:                                      ; preds = %if.end.123
  %121 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %122 = load %struct.CPpmd_State*, %struct.CPpmd_State** %stats, align 8
  %123 = bitcast %struct.CPpmd_State* %122 to i8*
  %124 = load i32, i32* %n0, align 4
  %125 = load i32, i32* %n1, align 4
  %call = call i8* @ShrinkUnits(%struct.CPpmd8* %121, i8* %123, i32 %124, i32 %125)
  %126 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base134 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %126, i32 0, i32 11
  %127 = load i8*, i8** %Base134, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %127 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv135 = trunc i64 %sub.ptr.sub to i32
  %128 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext136 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %128, i32 0, i32 0
  %129 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext136, align 8
  %Stats137 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %129, i32 0, i32 3
  store i32 %conv135, i32* %Stats137, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.133, %if.end.123
  %130 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext139 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %130, i32 0, i32 0
  %131 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext139, align 8
  %Flags140 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %131, i32 0, i32 1
  %132 = load i8, i8* %Flags140, align 1
  %conv141 = zext i8 %132 to i32
  %and142 = and i32 %conv141, -9
  %conv143 = trunc i32 %and142 to i8
  store i8 %conv143, i8* %Flags140, align 1
  %133 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base144 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %133, i32 0, i32 11
  %134 = load i8*, i8** %Base144, align 8
  %135 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext145 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %135, i32 0, i32 0
  %136 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext145, align 8
  %Stats146 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %136, i32 0, i32 3
  %137 = load i32, i32* %Stats146, align 4
  %idx.ext147 = zext i32 %137 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %134, i64 %idx.ext147
  %138 = bitcast i8* %add.ptr148 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %138, %struct.CPpmd_State** %s, align 8
  %Symbol149 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %138, i32 0, i32 0
  %139 = load i8, i8* %Symbol149, align 1
  %conv150 = zext i8 %139 to i32
  %cmp151 = icmp sge i32 %conv150, 64
  %conv152 = zext i1 %cmp151 to i32
  %mul153 = mul nsw i32 8, %conv152
  %140 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext154 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %140, i32 0, i32 0
  %141 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext154, align 8
  %Flags155 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %141, i32 0, i32 1
  %142 = load i8, i8* %Flags155, align 1
  %conv156 = zext i8 %142 to i32
  %or = or i32 %conv156, %mul153
  %conv157 = trunc i32 %or to i8
  store i8 %conv157, i8* %Flags155, align 1
  %143 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext158 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %143, i32 0, i32 0
  %144 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext158, align 8
  %NumStats159 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %144, i32 0, i32 0
  %145 = load i8, i8* %NumStats159, align 1
  %conv160 = zext i8 %145 to i32
  store i32 %conv160, i32* %i, align 4
  br label %do.body.161

do.body.161:                                      ; preds = %do.cond.173, %if.end.138
  %146 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr162 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %146, i32 1
  store %struct.CPpmd_State* %incdec.ptr162, %struct.CPpmd_State** %s, align 8
  %Symbol163 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %incdec.ptr162, i32 0, i32 0
  %147 = load i8, i8* %Symbol163, align 1
  %conv164 = zext i8 %147 to i32
  %cmp165 = icmp sge i32 %conv164, 64
  %conv166 = zext i1 %cmp165 to i32
  %mul167 = mul nsw i32 8, %conv166
  %148 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext168 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %148, i32 0, i32 0
  %149 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext168, align 8
  %Flags169 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %149, i32 0, i32 1
  %150 = load i8, i8* %Flags169, align 1
  %conv170 = zext i8 %150 to i32
  %or171 = or i32 %conv170, %mul167
  %conv172 = trunc i32 %or171 to i8
  store i8 %conv172, i8* %Flags169, align 1
  br label %do.cond.173

do.cond.173:                                      ; preds = %do.body.161
  %151 = load i32, i32* %i, align 4
  %dec174 = add i32 %151, -1
  store i32 %dec174, i32* %i, align 4
  %tobool175 = icmp ne i32 %dec174, 0
  br i1 %tobool175, label %do.body.161, label %do.end.176

do.end.176:                                       ; preds = %do.cond.173
  br label %if.end.177

if.end.177:                                       ; preds = %do.end.176, %do.end.56
  %152 = load i32, i32* %sumFreq, align 4
  %153 = load i32, i32* %escFreq, align 4
  %add178 = add i32 %152, %153
  %154 = load i32, i32* %escFreq, align 4
  %shr179 = lshr i32 %154, 1
  %sub180 = sub i32 %add178, %shr179
  %conv181 = trunc i32 %sub180 to i16
  %155 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext182 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %155, i32 0, i32 0
  %156 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext182, align 8
  %SummFreq183 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %156, i32 0, i32 2
  store i16 %conv181, i16* %SummFreq183, align 2
  %157 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext184 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %157, i32 0, i32 0
  %158 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext184, align 8
  %Flags185 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %158, i32 0, i32 1
  %159 = load i8, i8* %Flags185, align 1
  %conv186 = zext i8 %159 to i32
  %or187 = or i32 %conv186, 4
  %conv188 = trunc i32 %or187 to i8
  store i8 %conv188, i8* %Flags185, align 1
  %160 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base189 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %160, i32 0, i32 11
  %161 = load i8*, i8** %Base189, align 8
  %162 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext190 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %162, i32 0, i32 0
  %163 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext190, align 8
  %Stats191 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %163, i32 0, i32 3
  %164 = load i32, i32* %Stats191, align 4
  %idx.ext192 = zext i32 %164 to i64
  %add.ptr193 = getelementptr inbounds i8, i8* %161, i64 %idx.ext192
  %165 = bitcast i8* %add.ptr193 to %struct.CPpmd_State*
  %166 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState194 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %166, i32 0, i32 2
  store %struct.CPpmd_State* %165, %struct.CPpmd_State** %FoundState194, align 8
  br label %return

return:                                           ; preds = %if.end.177, %if.end.104
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @NextContext(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %c = alloca %struct.CPpmd8_Context_*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 11
  %1 = load i8*, i8** %Base, align 8
  %2 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %2, i32 0, i32 2
  %3 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  %SuccessorLow = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %3, i32 0, i32 2
  %4 = load i16, i16* %SuccessorLow, align 1
  %conv = zext i16 %4 to i32
  %5 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %5, i32 0, i32 2
  %6 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState1, align 8
  %SuccessorHigh = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %6, i32 0, i32 3
  %7 = load i16, i16* %SuccessorHigh, align 1
  %conv2 = zext i16 %7 to i32
  %shl = shl i32 %conv2, 16
  %or = or i32 %conv, %shl
  %idx.ext = zext i32 %or to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %8 = bitcast i8* %add.ptr to %struct.CPpmd8_Context_*
  store %struct.CPpmd8_Context_* %8, %struct.CPpmd8_Context_** %c, align 8
  %9 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %OrderFall = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %9, i32 0, i32 3
  %10 = load i32, i32* %OrderFall, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %12 = bitcast %struct.CPpmd8_Context_* %11 to i8*
  %13 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %13, i32 0, i32 15
  %14 = load i8*, i8** %UnitsStart, align 8
  %cmp4 = icmp uge i8* %12, %14
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %16 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %16, i32 0, i32 1
  store %struct.CPpmd8_Context_* %15, %struct.CPpmd8_Context_** %MaxContext, align 8
  %17 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %17, i32 0, i32 0
  store %struct.CPpmd8_Context_* %15, %struct.CPpmd8_Context_** %MinContext, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %18 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @UpdateModel(%struct.CPpmd8* %18)
  %19 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxContext6 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %19, i32 0, i32 1
  %20 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MaxContext6, align 8
  %21 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext7 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %21, i32 0, i32 0
  store %struct.CPpmd8_Context_* %20, %struct.CPpmd8_Context_** %MinContext7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppmd8_Update1_0(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 2
  %1 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %1, i32 0, i32 1
  %2 = load i8, i8* %Freq, align 1
  %conv = zext i8 %2 to i32
  %mul = mul nsw i32 2, %conv
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 0
  %4 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %4, i32 0, i32 2
  %5 = load i16, i16* %SummFreq, align 2
  %conv1 = zext i16 %5 to i32
  %cmp = icmp sge i32 %mul, %conv1
  %conv2 = zext i1 %cmp to i32
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %PrevSuccess = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 5
  store i32 %conv2, i32* %PrevSuccess, align 4
  %7 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %PrevSuccess3 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %7, i32 0, i32 5
  %8 = load i32, i32* %PrevSuccess3, align 4
  %9 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %RunLength = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %9, i32 0, i32 7
  %10 = load i32, i32* %RunLength, align 4
  %add = add i32 %10, %8
  store i32 %add, i32* %RunLength, align 4
  %11 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext4 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %11, i32 0, i32 0
  %12 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext4, align 8
  %SummFreq5 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %12, i32 0, i32 2
  %13 = load i16, i16* %SummFreq5, align 2
  %conv6 = zext i16 %13 to i32
  %add7 = add nsw i32 %conv6, 4
  %conv8 = trunc i32 %add7 to i16
  store i16 %conv8, i16* %SummFreq5, align 2
  %14 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState9 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %14, i32 0, i32 2
  %15 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState9, align 8
  %Freq10 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %15, i32 0, i32 1
  %16 = load i8, i8* %Freq10, align 1
  %conv11 = zext i8 %16 to i32
  %add12 = add nsw i32 %conv11, 4
  %conv13 = trunc i32 %add12 to i8
  store i8 %conv13, i8* %Freq10, align 1
  %conv14 = zext i8 %conv13 to i32
  %cmp15 = icmp sgt i32 %conv14, 124
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @Rescale(%struct.CPpmd8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @NextContext(%struct.CPpmd8* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppmd8_UpdateBin(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 2
  %1 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %1, i32 0, i32 1
  %2 = load i8, i8* %Freq, align 1
  %conv = zext i8 %2 to i32
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 2
  %4 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState1, align 8
  %Freq2 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %4, i32 0, i32 1
  %5 = load i8, i8* %Freq2, align 1
  %conv3 = zext i8 %5 to i32
  %cmp = icmp slt i32 %conv3, 196
  %conv4 = zext i1 %cmp to i32
  %add = add nsw i32 %conv, %conv4
  %conv5 = trunc i32 %add to i8
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState6 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 2
  %7 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState6, align 8
  %Freq7 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %7, i32 0, i32 1
  store i8 %conv5, i8* %Freq7, align 1
  %8 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %PrevSuccess = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %8, i32 0, i32 5
  store i32 1, i32* %PrevSuccess, align 4
  %9 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %RunLength = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %9, i32 0, i32 7
  %10 = load i32, i32* %RunLength, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %RunLength, align 4
  %11 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @NextContext(%struct.CPpmd8* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppmd8_Update2(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 0
  %1 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %1, i32 0, i32 2
  %2 = load i16, i16* %SummFreq, align 2
  %conv = zext i16 %2 to i32
  %add = add nsw i32 %conv, 4
  %conv1 = trunc i32 %add to i16
  store i16 %conv1, i16* %SummFreq, align 2
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 2
  %4 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %4, i32 0, i32 1
  %5 = load i8, i8* %Freq, align 1
  %conv2 = zext i8 %5 to i32
  %add3 = add nsw i32 %conv2, 4
  %conv4 = trunc i32 %add3 to i8
  store i8 %conv4, i8* %Freq, align 1
  %conv5 = zext i8 %conv4 to i32
  %cmp = icmp sgt i32 %conv5, 124
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @Rescale(%struct.CPpmd8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %InitRL = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %7, i32 0, i32 8
  %8 = load i32, i32* %InitRL, align 4
  %9 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %RunLength = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %9, i32 0, i32 7
  store i32 %8, i32* %RunLength, align 4
  %10 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @UpdateModel(%struct.CPpmd8* %10)
  %11 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %11, i32 0, i32 1
  %12 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MaxContext, align 8
  %13 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext7 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %13, i32 0, i32 0
  store %struct.CPpmd8_Context_* %12, %struct.CPpmd8_Context_** %MinContext7, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpdateModel(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %successor = alloca i32, align 4
  %fSuccessor = alloca i32, align 4
  %c = alloca %struct.CPpmd8_Context_*, align 8
  %s0 = alloca i32, align 4
  %ns = alloca i32, align 4
  %fFreq = alloca i32, align 4
  %flag = alloca i8, align 1
  %fSymbol = alloca i8, align 1
  %s = alloca %struct.CPpmd_State*, align 8
  %cs = alloca %struct.CPpmd8_Context_*, align 8
  %cs102 = alloca %struct.CPpmd8_Context_*, align 8
  %cs122 = alloca %struct.CPpmd8_Context_*, align 8
  %ns1 = alloca i32, align 4
  %cf = alloca i32, align 4
  %sf = alloca i32, align 4
  %oldNU = alloca i32, align 4
  %i = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %oldPtr = alloca i8*, align 8
  %d = alloca i32*, align 8
  %s192 = alloca i32*, align 8
  %n = alloca i32, align 4
  %s224 = alloca %struct.CPpmd_State*, align 8
  %s299 = alloca %struct.CPpmd_State*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 2
  %1 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  %SuccessorLow = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %1, i32 0, i32 2
  %2 = load i16, i16* %SuccessorLow, align 1
  %conv = zext i16 %2 to i32
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 2
  %4 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState1, align 8
  %SuccessorHigh = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %4, i32 0, i32 3
  %5 = load i16, i16* %SuccessorHigh, align 1
  %conv2 = zext i16 %5 to i32
  %shl = shl i32 %conv2, 16
  %or = or i32 %conv, %shl
  store i32 %or, i32* %fSuccessor, align 4
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState3 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 2
  %7 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState3, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %7, i32 0, i32 1
  %8 = load i8, i8* %Freq, align 1
  %conv4 = zext i8 %8 to i32
  store i32 %conv4, i32* %fFreq, align 4
  %9 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %9, i32 0, i32 2
  %10 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState5, align 8
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %10, i32 0, i32 0
  %11 = load i8, i8* %Symbol, align 1
  store i8 %11, i8* %fSymbol, align 1
  store %struct.CPpmd_State* null, %struct.CPpmd_State** %s, align 8
  %12 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState6 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %12, i32 0, i32 2
  %13 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState6, align 8
  %Freq7 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %13, i32 0, i32 1
  %14 = load i8, i8* %Freq7, align 1
  %conv8 = zext i8 %14 to i32
  %cmp = icmp slt i32 %conv8, 31
  br i1 %cmp, label %land.lhs.true, label %if.end.69

land.lhs.true:                                    ; preds = %entry
  %15 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %15, i32 0, i32 0
  %16 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext, align 8
  %Suffix = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %16, i32 0, i32 4
  %17 = load i32, i32* %Suffix, align 4
  %cmp10 = icmp ne i32 %17, 0
  br i1 %cmp10, label %if.then, label %if.end.69

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %18, i32 0, i32 11
  %19 = load i8*, i8** %Base, align 8
  %20 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext12 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %20, i32 0, i32 0
  %21 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext12, align 8
  %Suffix13 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %21, i32 0, i32 4
  %22 = load i32, i32* %Suffix13, align 4
  %idx.ext = zext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  %23 = bitcast i8* %add.ptr to %struct.CPpmd8_Context_*
  store %struct.CPpmd8_Context_* %23, %struct.CPpmd8_Context_** %c, align 8
  %24 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %24, i32 0, i32 0
  %25 = load i8, i8* %NumStats, align 1
  %conv14 = zext i8 %25 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then
  %26 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %26, i32 0, i32 2
  %27 = bitcast i16* %SummFreq to %struct.CPpmd_State*
  store %struct.CPpmd_State* %27, %struct.CPpmd_State** %s, align 8
  %28 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq18 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %28, i32 0, i32 1
  %29 = load i8, i8* %Freq18, align 1
  %conv19 = zext i8 %29 to i32
  %cmp20 = icmp slt i32 %conv19, 32
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then.17
  %30 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq23 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %30, i32 0, i32 1
  %31 = load i8, i8* %Freq23, align 1
  %inc = add i8 %31, 1
  store i8 %inc, i8* %Freq23, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then.17
  br label %if.end.68

if.else:                                          ; preds = %if.then
  %32 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base24 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %32, i32 0, i32 11
  %33 = load i8*, i8** %Base24, align 8
  %34 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %Stats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %34, i32 0, i32 3
  %35 = load i32, i32* %Stats, align 4
  %idx.ext25 = zext i32 %35 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %33, i64 %idx.ext25
  %36 = bitcast i8* %add.ptr26 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %36, %struct.CPpmd_State** %s, align 8
  %37 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol27 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %37, i32 0, i32 0
  %38 = load i8, i8* %Symbol27, align 1
  %conv28 = zext i8 %38 to i32
  %39 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState29 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %39, i32 0, i32 2
  %40 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState29, align 8
  %Symbol30 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %40, i32 0, i32 0
  %41 = load i8, i8* %Symbol30, align 1
  %conv31 = zext i8 %41 to i32
  %cmp32 = icmp ne i32 %conv28, %conv31
  br i1 %cmp32, label %if.then.34, label %if.end.54

if.then.34:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.34
  %42 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %42, i32 1
  store %struct.CPpmd_State* %incdec.ptr, %struct.CPpmd_State** %s, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %43 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol35 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %43, i32 0, i32 0
  %44 = load i8, i8* %Symbol35, align 1
  %conv36 = zext i8 %44 to i32
  %45 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState37 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %45, i32 0, i32 2
  %46 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState37, align 8
  %Symbol38 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %46, i32 0, i32 0
  %47 = load i8, i8* %Symbol38, align 1
  %conv39 = zext i8 %47 to i32
  %cmp40 = icmp ne i32 %conv36, %conv39
  br i1 %cmp40, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %48 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %arrayidx = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %48, i64 0
  %Freq42 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %arrayidx, i32 0, i32 1
  %49 = load i8, i8* %Freq42, align 1
  %conv43 = zext i8 %49 to i32
  %50 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %arrayidx44 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %50, i64 -1
  %Freq45 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %arrayidx44, i32 0, i32 1
  %51 = load i8, i8* %Freq45, align 1
  %conv46 = zext i8 %51 to i32
  %cmp47 = icmp sge i32 %conv43, %conv46
  br i1 %cmp47, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %do.end
  %52 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %arrayidx50 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %52, i64 0
  %53 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %arrayidx51 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %53, i64 -1
  call void @SwapStates(%struct.CPpmd_State* %arrayidx50, %struct.CPpmd_State* %arrayidx51)
  %54 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr52 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %54, i32 -1
  store %struct.CPpmd_State* %incdec.ptr52, %struct.CPpmd_State** %s, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %do.end
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.else
  %55 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq55 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %55, i32 0, i32 1
  %56 = load i8, i8* %Freq55, align 1
  %conv56 = zext i8 %56 to i32
  %cmp57 = icmp slt i32 %conv56, 115
  br i1 %cmp57, label %if.then.59, label %if.end.67

if.then.59:                                       ; preds = %if.end.54
  %57 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq60 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %57, i32 0, i32 1
  %58 = load i8, i8* %Freq60, align 1
  %conv61 = zext i8 %58 to i32
  %add = add nsw i32 %conv61, 2
  %conv62 = trunc i32 %add to i8
  store i8 %conv62, i8* %Freq60, align 1
  %59 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq63 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %59, i32 0, i32 2
  %60 = load i16, i16* %SummFreq63, align 2
  %conv64 = zext i16 %60 to i32
  %add65 = add nsw i32 %conv64, 2
  %conv66 = trunc i32 %add65 to i16
  store i16 %conv66, i16* %SummFreq63, align 2
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.59, %if.end.54
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %land.lhs.true, %entry
  %61 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %61, i32 0, i32 1
  %62 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MaxContext, align 8
  store %struct.CPpmd8_Context_* %62, %struct.CPpmd8_Context_** %c, align 8
  %63 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %OrderFall = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %63, i32 0, i32 3
  %64 = load i32, i32* %OrderFall, align 4
  %cmp70 = icmp eq i32 %64, 0
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.85

land.lhs.true.72:                                 ; preds = %if.end.69
  %65 = load i32, i32* %fSuccessor, align 4
  %tobool = icmp ne i32 %65, 0
  br i1 %tobool, label %if.then.73, label %if.end.85

if.then.73:                                       ; preds = %land.lhs.true.72
  %66 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %67 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %68 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext74 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %68, i32 0, i32 0
  %69 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext74, align 8
  %call = call %struct.CPpmd8_Context_* @CreateSuccessors(%struct.CPpmd8* %66, i32 1, %struct.CPpmd_State* %67, %struct.CPpmd8_Context_* %69)
  store %struct.CPpmd8_Context_* %call, %struct.CPpmd8_Context_** %cs, align 8
  %70 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %cs, align 8
  %cmp75 = icmp eq %struct.CPpmd8_Context_* %70, null
  br i1 %cmp75, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %if.then.73
  %71 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState78 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %71, i32 0, i32 2
  %72 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState78, align 8
  call void @SetSuccessor(%struct.CPpmd_State* %72, i32 0)
  %73 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %74 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  call void @RestoreModel(%struct.CPpmd8* %73, %struct.CPpmd8_Context_* %74)
  br label %if.end.84

if.else.79:                                       ; preds = %if.then.73
  %75 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState80 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %75, i32 0, i32 2
  %76 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState80, align 8
  %77 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %cs, align 8
  %78 = bitcast %struct.CPpmd8_Context_* %77 to i8*
  %79 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base81 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %79, i32 0, i32 11
  %80 = load i8*, i8** %Base81, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %78 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %80 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv82 = trunc i64 %sub.ptr.sub to i32
  call void @SetSuccessor(%struct.CPpmd_State* %76, i32 %conv82)
  %81 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %cs, align 8
  %82 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxContext83 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %82, i32 0, i32 1
  store %struct.CPpmd8_Context_* %81, %struct.CPpmd8_Context_** %MaxContext83, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.79, %if.then.77
  br label %return

if.end.85:                                        ; preds = %land.lhs.true.72, %if.end.69
  %83 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState86 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %83, i32 0, i32 2
  %84 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState86, align 8
  %Symbol87 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %84, i32 0, i32 0
  %85 = load i8, i8* %Symbol87, align 1
  %86 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Text = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %86, i32 0, i32 14
  %87 = load i8*, i8** %Text, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr88, i8** %Text, align 8
  store i8 %85, i8* %87, align 1
  %88 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Text89 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %88, i32 0, i32 14
  %89 = load i8*, i8** %Text89, align 8
  %90 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base90 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %90, i32 0, i32 11
  %91 = load i8*, i8** %Base90, align 8
  %sub.ptr.lhs.cast91 = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast92 = ptrtoint i8* %91 to i64
  %sub.ptr.sub93 = sub i64 %sub.ptr.lhs.cast91, %sub.ptr.rhs.cast92
  %conv94 = trunc i64 %sub.ptr.sub93 to i32
  store i32 %conv94, i32* %successor, align 4
  %92 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Text95 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %92, i32 0, i32 14
  %93 = load i8*, i8** %Text95, align 8
  %94 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %94, i32 0, i32 15
  %95 = load i8*, i8** %UnitsStart, align 8
  %cmp96 = icmp uge i8* %93, %95
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.85
  %96 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %97 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  call void @RestoreModel(%struct.CPpmd8* %96, %struct.CPpmd8_Context_* %97)
  br label %return

if.end.99:                                        ; preds = %if.end.85
  %98 = load i32, i32* %fSuccessor, align 4
  %tobool100 = icmp ne i32 %98, 0
  br i1 %tobool100, label %if.else.114, label %if.then.101

if.then.101:                                      ; preds = %if.end.99
  %99 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %100 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %101 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext103 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %101, i32 0, i32 0
  %102 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext103, align 8
  %call104 = call %struct.CPpmd8_Context_* @ReduceOrder(%struct.CPpmd8* %99, %struct.CPpmd_State* %100, %struct.CPpmd8_Context_* %102)
  store %struct.CPpmd8_Context_* %call104, %struct.CPpmd8_Context_** %cs102, align 8
  %103 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %cs102, align 8
  %cmp105 = icmp eq %struct.CPpmd8_Context_* %103, null
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.then.101
  %104 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %105 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  call void @RestoreModel(%struct.CPpmd8* %104, %struct.CPpmd8_Context_* %105)
  br label %return

if.end.108:                                       ; preds = %if.then.101
  %106 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %cs102, align 8
  %107 = bitcast %struct.CPpmd8_Context_* %106 to i8*
  %108 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base109 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %108, i32 0, i32 11
  %109 = load i8*, i8** %Base109, align 8
  %sub.ptr.lhs.cast110 = ptrtoint i8* %107 to i64
  %sub.ptr.rhs.cast111 = ptrtoint i8* %109 to i64
  %sub.ptr.sub112 = sub i64 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  %conv113 = trunc i64 %sub.ptr.sub112 to i32
  store i32 %conv113, i32* %fSuccessor, align 4
  br label %if.end.135

if.else.114:                                      ; preds = %if.end.99
  %110 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base115 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %110, i32 0, i32 11
  %111 = load i8*, i8** %Base115, align 8
  %112 = load i32, i32* %fSuccessor, align 4
  %idx.ext116 = zext i32 %112 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %111, i64 %idx.ext116
  %113 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart118 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %113, i32 0, i32 15
  %114 = load i8*, i8** %UnitsStart118, align 8
  %cmp119 = icmp ult i8* %add.ptr117, %114
  br i1 %cmp119, label %if.then.121, label %if.end.134

if.then.121:                                      ; preds = %if.else.114
  %115 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %116 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %117 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext123 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %117, i32 0, i32 0
  %118 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext123, align 8
  %call124 = call %struct.CPpmd8_Context_* @CreateSuccessors(%struct.CPpmd8* %115, i32 0, %struct.CPpmd_State* %116, %struct.CPpmd8_Context_* %118)
  store %struct.CPpmd8_Context_* %call124, %struct.CPpmd8_Context_** %cs122, align 8
  %119 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %cs122, align 8
  %cmp125 = icmp eq %struct.CPpmd8_Context_* %119, null
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.then.121
  %120 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %121 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  call void @RestoreModel(%struct.CPpmd8* %120, %struct.CPpmd8_Context_* %121)
  br label %return

if.end.128:                                       ; preds = %if.then.121
  %122 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %cs122, align 8
  %123 = bitcast %struct.CPpmd8_Context_* %122 to i8*
  %124 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base129 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %124, i32 0, i32 11
  %125 = load i8*, i8** %Base129, align 8
  %sub.ptr.lhs.cast130 = ptrtoint i8* %123 to i64
  %sub.ptr.rhs.cast131 = ptrtoint i8* %125 to i64
  %sub.ptr.sub132 = sub i64 %sub.ptr.lhs.cast130, %sub.ptr.rhs.cast131
  %conv133 = trunc i64 %sub.ptr.sub132 to i32
  store i32 %conv133, i32* %fSuccessor, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.128, %if.else.114
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.108
  %126 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %OrderFall136 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %126, i32 0, i32 3
  %127 = load i32, i32* %OrderFall136, align 4
  %dec = add i32 %127, -1
  store i32 %dec, i32* %OrderFall136, align 4
  %cmp137 = icmp eq i32 %dec, 0
  br i1 %cmp137, label %if.then.139, label %if.end.147

if.then.139:                                      ; preds = %if.end.135
  %128 = load i32, i32* %fSuccessor, align 4
  store i32 %128, i32* %successor, align 4
  %129 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxContext140 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %129, i32 0, i32 1
  %130 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MaxContext140, align 8
  %131 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext141 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %131, i32 0, i32 0
  %132 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext141, align 8
  %cmp142 = icmp ne %struct.CPpmd8_Context_* %130, %132
  %conv143 = zext i1 %cmp142 to i32
  %133 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Text144 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %133, i32 0, i32 14
  %134 = load i8*, i8** %Text144, align 8
  %idx.ext145 = sext i32 %conv143 to i64
  %idx.neg = sub i64 0, %idx.ext145
  %add.ptr146 = getelementptr inbounds i8, i8* %134, i64 %idx.neg
  store i8* %add.ptr146, i8** %Text144, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.139, %if.end.135
  %135 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext148 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %135, i32 0, i32 0
  %136 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext148, align 8
  %SummFreq149 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %136, i32 0, i32 2
  %137 = load i16, i16* %SummFreq149, align 2
  %conv150 = zext i16 %137 to i32
  %138 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext151 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %138, i32 0, i32 0
  %139 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext151, align 8
  %NumStats152 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %139, i32 0, i32 0
  %140 = load i8, i8* %NumStats152, align 1
  %conv153 = zext i8 %140 to i32
  store i32 %conv153, i32* %ns, align 4
  %sub = sub i32 %conv150, %conv153
  %141 = load i32, i32* %fFreq, align 4
  %sub154 = sub i32 %sub, %141
  store i32 %sub154, i32* %s0, align 4
  %142 = load i8, i8* %fSymbol, align 1
  %conv155 = zext i8 %142 to i32
  %cmp156 = icmp sge i32 %conv155, 64
  %conv157 = zext i1 %cmp156 to i32
  %mul = mul nsw i32 8, %conv157
  %conv158 = trunc i32 %mul to i8
  store i8 %conv158, i8* %flag, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.147
  %143 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %144 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext159 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %144, i32 0, i32 0
  %145 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext159, align 8
  %cmp160 = icmp ne %struct.CPpmd8_Context_* %143, %145
  br i1 %cmp160, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %146 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %NumStats162 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %146, i32 0, i32 0
  %147 = load i8, i8* %NumStats162, align 1
  %conv163 = zext i8 %147 to i32
  store i32 %conv163, i32* %ns1, align 4
  %cmp164 = icmp ne i32 %conv163, 0
  br i1 %cmp164, label %if.then.166, label %if.else.223

if.then.166:                                      ; preds = %for.body
  %148 = load i32, i32* %ns1, align 4
  %and = and i32 %148, 1
  %cmp167 = icmp ne i32 %and, 0
  br i1 %cmp167, label %if.then.169, label %if.end.213

if.then.169:                                      ; preds = %if.then.166
  %149 = load i32, i32* %ns1, align 4
  %add170 = add i32 %149, 1
  %shr = lshr i32 %add170, 1
  store i32 %shr, i32* %oldNU, align 4
  %150 = load i32, i32* %oldNU, align 4
  %sub171 = sub i32 %150, 1
  %idxprom = zext i32 %sub171 to i64
  %151 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %151, i32 0, i32 23
  %arrayidx172 = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx, i32 0, i64 %idxprom
  %152 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %152 to i32
  store i32 %conv173, i32* %i, align 4
  %153 = load i32, i32* %i, align 4
  %154 = load i32, i32* %oldNU, align 4
  %add174 = add i32 %154, 1
  %sub175 = sub i32 %add174, 1
  %idxprom176 = zext i32 %sub175 to i64
  %155 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Units2Indx177 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %155, i32 0, i32 23
  %arrayidx178 = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx177, i32 0, i64 %idxprom176
  %156 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %156 to i32
  %cmp180 = icmp ne i32 %153, %conv179
  br i1 %cmp180, label %if.then.182, label %if.end.212

if.then.182:                                      ; preds = %if.then.169
  %157 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %158 = load i32, i32* %i, align 4
  %add183 = add i32 %158, 1
  %call184 = call i8* @AllocUnits(%struct.CPpmd8* %157, i32 %add183)
  store i8* %call184, i8** %ptr, align 8
  %159 = load i8*, i8** %ptr, align 8
  %tobool185 = icmp ne i8* %159, null
  br i1 %tobool185, label %if.end.187, label %if.then.186

if.then.186:                                      ; preds = %if.then.182
  %160 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %161 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  call void @RestoreModel(%struct.CPpmd8* %160, %struct.CPpmd8_Context_* %161)
  br label %return

if.end.187:                                       ; preds = %if.then.182
  %162 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base188 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %162, i32 0, i32 11
  %163 = load i8*, i8** %Base188, align 8
  %164 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %Stats189 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %164, i32 0, i32 3
  %165 = load i32, i32* %Stats189, align 4
  %idx.ext190 = zext i32 %165 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %163, i64 %idx.ext190
  %166 = bitcast i8* %add.ptr191 to %struct.CPpmd_State*
  %167 = bitcast %struct.CPpmd_State* %166 to i8*
  store i8* %167, i8** %oldPtr, align 8
  %168 = load i8*, i8** %ptr, align 8
  %169 = bitcast i8* %168 to i32*
  store i32* %169, i32** %d, align 8
  %170 = load i8*, i8** %oldPtr, align 8
  %171 = bitcast i8* %170 to i32*
  store i32* %171, i32** %s192, align 8
  %172 = load i32, i32* %oldNU, align 4
  store i32 %172, i32* %n, align 4
  br label %do.body.193

do.body.193:                                      ; preds = %do.cond.202, %if.end.187
  %173 = load i32*, i32** %s192, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %173, i64 0
  %174 = load i32, i32* %arrayidx194, align 4
  %175 = load i32*, i32** %d, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %174, i32* %arrayidx195, align 4
  %176 = load i32*, i32** %s192, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %176, i64 1
  %177 = load i32, i32* %arrayidx196, align 4
  %178 = load i32*, i32** %d, align 8
  %arrayidx197 = getelementptr inbounds i32, i32* %178, i64 1
  store i32 %177, i32* %arrayidx197, align 4
  %179 = load i32*, i32** %s192, align 8
  %arrayidx198 = getelementptr inbounds i32, i32* %179, i64 2
  %180 = load i32, i32* %arrayidx198, align 4
  %181 = load i32*, i32** %d, align 8
  %arrayidx199 = getelementptr inbounds i32, i32* %181, i64 2
  store i32 %180, i32* %arrayidx199, align 4
  %182 = load i32*, i32** %s192, align 8
  %add.ptr200 = getelementptr inbounds i32, i32* %182, i64 3
  store i32* %add.ptr200, i32** %s192, align 8
  %183 = load i32*, i32** %d, align 8
  %add.ptr201 = getelementptr inbounds i32, i32* %183, i64 3
  store i32* %add.ptr201, i32** %d, align 8
  br label %do.cond.202

do.cond.202:                                      ; preds = %do.body.193
  %184 = load i32, i32* %n, align 4
  %dec203 = add i32 %184, -1
  store i32 %dec203, i32* %n, align 4
  %tobool204 = icmp ne i32 %dec203, 0
  br i1 %tobool204, label %do.body.193, label %do.end.205

do.end.205:                                       ; preds = %do.cond.202
  %185 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %186 = load i8*, i8** %oldPtr, align 8
  %187 = load i32, i32* %i, align 4
  call void @InsertNode(%struct.CPpmd8* %185, i8* %186, i32 %187)
  %188 = load i8*, i8** %ptr, align 8
  %189 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base206 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %189, i32 0, i32 11
  %190 = load i8*, i8** %Base206, align 8
  %sub.ptr.lhs.cast207 = ptrtoint i8* %188 to i64
  %sub.ptr.rhs.cast208 = ptrtoint i8* %190 to i64
  %sub.ptr.sub209 = sub i64 %sub.ptr.lhs.cast207, %sub.ptr.rhs.cast208
  %conv210 = trunc i64 %sub.ptr.sub209 to i32
  %191 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %Stats211 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %191, i32 0, i32 3
  store i32 %conv210, i32* %Stats211, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %do.end.205, %if.then.169
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.then.166
  %192 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq214 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %192, i32 0, i32 2
  %193 = load i16, i16* %SummFreq214, align 2
  %conv215 = zext i16 %193 to i32
  %194 = load i32, i32* %ns1, align 4
  %mul216 = mul i32 3, %194
  %add217 = add i32 %mul216, 1
  %195 = load i32, i32* %ns, align 4
  %cmp218 = icmp ult i32 %add217, %195
  %conv219 = zext i1 %cmp218 to i32
  %add220 = add nsw i32 %conv215, %conv219
  %conv221 = trunc i32 %add220 to i16
  %196 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq222 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %196, i32 0, i32 2
  store i16 %conv221, i16* %SummFreq222, align 2
  br label %if.end.256

if.else.223:                                      ; preds = %for.body
  %197 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %call225 = call i8* @AllocUnits(%struct.CPpmd8* %197, i32 0)
  %198 = bitcast i8* %call225 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %198, %struct.CPpmd_State** %s224, align 8
  %199 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s224, align 8
  %tobool226 = icmp ne %struct.CPpmd_State* %199, null
  br i1 %tobool226, label %if.end.228, label %if.then.227

if.then.227:                                      ; preds = %if.else.223
  %200 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %201 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  call void @RestoreModel(%struct.CPpmd8* %200, %struct.CPpmd8_Context_* %201)
  br label %return

if.end.228:                                       ; preds = %if.else.223
  %202 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s224, align 8
  %203 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq229 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %203, i32 0, i32 2
  %204 = bitcast i16* %SummFreq229 to %struct.CPpmd_State*
  %205 = bitcast %struct.CPpmd_State* %202 to i8*
  %206 = bitcast %struct.CPpmd_State* %204 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %205, i8* %206, i64 6, i32 1, i1 false)
  %207 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s224, align 8
  %208 = bitcast %struct.CPpmd_State* %207 to i8*
  %209 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base230 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %209, i32 0, i32 11
  %210 = load i8*, i8** %Base230, align 8
  %sub.ptr.lhs.cast231 = ptrtoint i8* %208 to i64
  %sub.ptr.rhs.cast232 = ptrtoint i8* %210 to i64
  %sub.ptr.sub233 = sub i64 %sub.ptr.lhs.cast231, %sub.ptr.rhs.cast232
  %conv234 = trunc i64 %sub.ptr.sub233 to i32
  %211 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %Stats235 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %211, i32 0, i32 3
  store i32 %conv234, i32* %Stats235, align 4
  %212 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s224, align 8
  %Freq236 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %212, i32 0, i32 1
  %213 = load i8, i8* %Freq236, align 1
  %conv237 = zext i8 %213 to i32
  %cmp238 = icmp slt i32 %conv237, 30
  br i1 %cmp238, label %if.then.240, label %if.else.245

if.then.240:                                      ; preds = %if.end.228
  %214 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s224, align 8
  %Freq241 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %214, i32 0, i32 1
  %215 = load i8, i8* %Freq241, align 1
  %conv242 = zext i8 %215 to i32
  %shl243 = shl i32 %conv242, 1
  %conv244 = trunc i32 %shl243 to i8
  store i8 %conv244, i8* %Freq241, align 1
  br label %if.end.247

if.else.245:                                      ; preds = %if.end.228
  %216 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s224, align 8
  %Freq246 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %216, i32 0, i32 1
  store i8 120, i8* %Freq246, align 1
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.245, %if.then.240
  %217 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s224, align 8
  %Freq248 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %217, i32 0, i32 1
  %218 = load i8, i8* %Freq248, align 1
  %conv249 = zext i8 %218 to i32
  %219 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %InitEsc = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %219, i32 0, i32 4
  %220 = load i32, i32* %InitEsc, align 4
  %add250 = add i32 %conv249, %220
  %221 = load i32, i32* %ns, align 4
  %cmp251 = icmp ugt i32 %221, 2
  %conv252 = zext i1 %cmp251 to i32
  %add253 = add i32 %add250, %conv252
  %conv254 = trunc i32 %add253 to i16
  %222 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq255 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %222, i32 0, i32 2
  store i16 %conv254, i16* %SummFreq255, align 2
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.247, %if.end.213
  %223 = load i32, i32* %fFreq, align 4
  %mul257 = mul i32 2, %223
  %224 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq258 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %224, i32 0, i32 2
  %225 = load i16, i16* %SummFreq258, align 2
  %conv259 = zext i16 %225 to i32
  %add260 = add nsw i32 %conv259, 6
  %mul261 = mul i32 %mul257, %add260
  store i32 %mul261, i32* %cf, align 4
  %226 = load i32, i32* %s0, align 4
  %227 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq262 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %227, i32 0, i32 2
  %228 = load i16, i16* %SummFreq262, align 2
  %conv263 = zext i16 %228 to i32
  %add264 = add i32 %226, %conv263
  store i32 %add264, i32* %sf, align 4
  %229 = load i32, i32* %cf, align 4
  %230 = load i32, i32* %sf, align 4
  %mul265 = mul i32 6, %230
  %cmp266 = icmp ult i32 %229, %mul265
  br i1 %cmp266, label %if.then.268, label %if.else.280

if.then.268:                                      ; preds = %if.end.256
  %231 = load i32, i32* %cf, align 4
  %232 = load i32, i32* %sf, align 4
  %cmp269 = icmp ugt i32 %231, %232
  %conv270 = zext i1 %cmp269 to i32
  %add271 = add nsw i32 1, %conv270
  %233 = load i32, i32* %cf, align 4
  %234 = load i32, i32* %sf, align 4
  %mul272 = mul i32 4, %234
  %cmp273 = icmp uge i32 %233, %mul272
  %conv274 = zext i1 %cmp273 to i32
  %add275 = add nsw i32 %add271, %conv274
  store i32 %add275, i32* %cf, align 4
  %235 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq276 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %235, i32 0, i32 2
  %236 = load i16, i16* %SummFreq276, align 2
  %conv277 = zext i16 %236 to i32
  %add278 = add nsw i32 %conv277, 4
  %conv279 = trunc i32 %add278 to i16
  store i16 %conv279, i16* %SummFreq276, align 2
  br label %if.end.298

if.else.280:                                      ; preds = %if.end.256
  %237 = load i32, i32* %cf, align 4
  %238 = load i32, i32* %sf, align 4
  %mul281 = mul i32 9, %238
  %cmp282 = icmp ugt i32 %237, %mul281
  %conv283 = zext i1 %cmp282 to i32
  %add284 = add nsw i32 4, %conv283
  %239 = load i32, i32* %cf, align 4
  %240 = load i32, i32* %sf, align 4
  %mul285 = mul i32 12, %240
  %cmp286 = icmp ugt i32 %239, %mul285
  %conv287 = zext i1 %cmp286 to i32
  %add288 = add nsw i32 %add284, %conv287
  %241 = load i32, i32* %cf, align 4
  %242 = load i32, i32* %sf, align 4
  %mul289 = mul i32 15, %242
  %cmp290 = icmp ugt i32 %241, %mul289
  %conv291 = zext i1 %cmp290 to i32
  %add292 = add nsw i32 %add288, %conv291
  store i32 %add292, i32* %cf, align 4
  %243 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq293 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %243, i32 0, i32 2
  %244 = load i16, i16* %SummFreq293, align 2
  %conv294 = zext i16 %244 to i32
  %245 = load i32, i32* %cf, align 4
  %add295 = add i32 %conv294, %245
  %conv296 = trunc i32 %add295 to i16
  %246 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq297 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %246, i32 0, i32 2
  store i16 %conv296, i16* %SummFreq297, align 2
  br label %if.end.298

if.end.298:                                       ; preds = %if.else.280, %if.then.268
  %247 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base300 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %247, i32 0, i32 11
  %248 = load i8*, i8** %Base300, align 8
  %249 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %Stats301 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %249, i32 0, i32 3
  %250 = load i32, i32* %Stats301, align 4
  %idx.ext302 = zext i32 %250 to i64
  %add.ptr303 = getelementptr inbounds i8, i8* %248, i64 %idx.ext302
  %251 = bitcast i8* %add.ptr303 to %struct.CPpmd_State*
  %252 = load i32, i32* %ns1, align 4
  %idx.ext304 = zext i32 %252 to i64
  %add.ptr305 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %251, i64 %idx.ext304
  %add.ptr306 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %add.ptr305, i64 1
  store %struct.CPpmd_State* %add.ptr306, %struct.CPpmd_State** %s299, align 8
  %253 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s299, align 8
  %254 = load i32, i32* %successor, align 4
  call void @SetSuccessor(%struct.CPpmd_State* %253, i32 %254)
  %255 = load i8, i8* %fSymbol, align 1
  %256 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s299, align 8
  %Symbol307 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %256, i32 0, i32 0
  store i8 %255, i8* %Symbol307, align 1
  %257 = load i32, i32* %cf, align 4
  %conv308 = trunc i32 %257 to i8
  %258 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s299, align 8
  %Freq309 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %258, i32 0, i32 1
  store i8 %conv308, i8* %Freq309, align 1
  %259 = load i8, i8* %flag, align 1
  %conv310 = zext i8 %259 to i32
  %260 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %Flags = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %260, i32 0, i32 1
  %261 = load i8, i8* %Flags, align 1
  %conv311 = zext i8 %261 to i32
  %or312 = or i32 %conv311, %conv310
  %conv313 = trunc i32 %or312 to i8
  store i8 %conv313, i8* %Flags, align 1
  %262 = load i32, i32* %ns1, align 4
  %add314 = add i32 %262, 1
  %conv315 = trunc i32 %add314 to i8
  %263 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %NumStats316 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %263, i32 0, i32 0
  store i8 %conv315, i8* %NumStats316, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.298
  %264 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base317 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %264, i32 0, i32 11
  %265 = load i8*, i8** %Base317, align 8
  %266 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %Suffix318 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %266, i32 0, i32 4
  %267 = load i32, i32* %Suffix318, align 4
  %idx.ext319 = zext i32 %267 to i64
  %add.ptr320 = getelementptr inbounds i8, i8* %265, i64 %idx.ext319
  %268 = bitcast i8* %add.ptr320 to %struct.CPpmd8_Context_*
  store %struct.CPpmd8_Context_* %268, %struct.CPpmd8_Context_** %c, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %269 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base321 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %269, i32 0, i32 11
  %270 = load i8*, i8** %Base321, align 8
  %271 = load i32, i32* %fSuccessor, align 4
  %idx.ext322 = zext i32 %271 to i64
  %add.ptr323 = getelementptr inbounds i8, i8* %270, i64 %idx.ext322
  %272 = bitcast i8* %add.ptr323 to %struct.CPpmd8_Context_*
  %273 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext324 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %273, i32 0, i32 0
  store %struct.CPpmd8_Context_* %272, %struct.CPpmd8_Context_** %MinContext324, align 8
  %274 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxContext325 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %274, i32 0, i32 1
  store %struct.CPpmd8_Context_* %272, %struct.CPpmd8_Context_** %MaxContext325, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then.227, %if.then.186, %if.then.127, %if.then.107, %if.then.98, %if.end.84
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SetSuccessor(%struct.CPpmd_State* %p, i32 %v) #0 {
entry:
  %p.addr = alloca %struct.CPpmd_State*, align 8
  %v.addr = alloca i32, align 4
  store %struct.CPpmd_State* %p, %struct.CPpmd_State** %p.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  %and = and i32 %0, 65535
  %conv = trunc i32 %and to i16
  %1 = load %struct.CPpmd_State*, %struct.CPpmd_State** %p.addr, align 8
  %SuccessorLow = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %1, i32 0, i32 2
  store i16 %conv, i16* %SuccessorLow, align 1
  %2 = load i32, i32* %v.addr, align 4
  %shr = lshr i32 %2, 16
  %and1 = and i32 %shr, 65535
  %conv2 = trunc i32 %and1 to i16
  %3 = load %struct.CPpmd_State*, %struct.CPpmd_State** %p.addr, align 8
  %SuccessorHigh = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %3, i32 0, i32 3
  store i16 %conv2, i16* %SuccessorHigh, align 1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @InsertNode(%struct.CPpmd8* %p, i8* %node, i32 %indx) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %node.addr = alloca i8*, align 8
  %indx.addr = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i8* %node, i8** %node.addr, align 8
  store i32 %indx, i32* %indx.addr, align 4
  %0 = load i8*, i8** %node.addr, align 8
  %1 = bitcast i8* %0 to %struct.CPpmd8_Node_*
  %Stamp = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %1, i32 0, i32 0
  store i32 -1, i32* %Stamp, align 4
  %2 = load i32, i32* %indx.addr, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 24
  %arrayidx = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i8*, i8** %node.addr, align 8
  %6 = bitcast i8* %5 to %struct.CPpmd8_Node_*
  %Next = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %6, i32 0, i32 1
  store i32 %4, i32* %Next, align 4
  %7 = load i32, i32* %indx.addr, align 4
  %idxprom1 = zext i32 %7 to i64
  %8 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Indx2Units = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %8, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units, i32 0, i64 %idxprom1
  %9 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %9 to i32
  %10 = load i8*, i8** %node.addr, align 8
  %11 = bitcast i8* %10 to %struct.CPpmd8_Node_*
  %NU = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %11, i32 0, i32 2
  store i32 %conv, i32* %NU, align 4
  %12 = load i8*, i8** %node.addr, align 8
  %13 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %13, i32 0, i32 11
  %14 = load i8*, i8** %Base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv3 = trunc i64 %sub.ptr.sub to i32
  %15 = load i32, i32* %indx.addr, align 4
  %idxprom4 = zext i32 %15 to i64
  %16 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FreeList5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %16, i32 0, i32 24
  %arrayidx6 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList5, i32 0, i64 %idxprom4
  store i32 %conv3, i32* %arrayidx6, align 4
  %17 = load i32, i32* %indx.addr, align 4
  %idxprom7 = zext i32 %17 to i64
  %18 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Stamps = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %18, i32 0, i32 25
  %arrayidx8 = getelementptr inbounds [38 x i32], [38 x i32]* %Stamps, i32 0, i64 %idxprom7
  %19 = load i32, i32* %arrayidx8, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %arrayidx8, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @ShrinkUnits(%struct.CPpmd8* %p, i8* %oldPtr, i32 %oldNU, i32 %newNU) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca %struct.CPpmd8*, align 8
  %oldPtr.addr = alloca i8*, align 8
  %oldNU.addr = alloca i32, align 4
  %newNU.addr = alloca i32, align 4
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %d = alloca i32*, align 8
  %s = alloca i32*, align 8
  %n = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i8* %oldPtr, i8** %oldPtr.addr, align 8
  store i32 %oldNU, i32* %oldNU.addr, align 4
  store i32 %newNU, i32* %newNU.addr, align 4
  %0 = load i32, i32* %oldNU.addr, align 4
  %sub = sub i32 %0, 1
  %idxprom = zext i32 %sub to i64
  %1 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %1, i32 0, i32 23
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %i0, align 4
  %3 = load i32, i32* %newNU.addr, align 4
  %sub1 = sub i32 %3, 1
  %idxprom2 = zext i32 %sub1 to i64
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Units2Indx3 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 23
  %arrayidx4 = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx3, i32 0, i64 %idxprom2
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  store i32 %conv5, i32* %i1, align 4
  %6 = load i32, i32* %i0, align 4
  %7 = load i32, i32* %i1, align 4
  %cmp = icmp eq i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %oldPtr.addr, align 8
  store i8* %8, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %i1, align 4
  %idxprom7 = zext i32 %9 to i64
  %10 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %10, i32 0, i32 24
  %arrayidx8 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp ne i32 %11, 0
  br i1 %cmp9, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.end
  %12 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %13 = load i32, i32* %i1, align 4
  %call = call i8* @RemoveNode(%struct.CPpmd8* %12, i32 %13)
  store i8* %call, i8** %ptr, align 8
  %14 = load i8*, i8** %ptr, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %d, align 8
  %16 = load i8*, i8** %oldPtr.addr, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %s, align 8
  %18 = load i32, i32* %newNU.addr, align 4
  store i32 %18, i32* %n, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.11
  %19 = load i32*, i32** %s, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 0
  %20 = load i32, i32* %arrayidx12, align 4
  %21 = load i32*, i32** %d, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %20, i32* %arrayidx13, align 4
  %22 = load i32*, i32** %s, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %22, i64 1
  %23 = load i32, i32* %arrayidx14, align 4
  %24 = load i32*, i32** %d, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %23, i32* %arrayidx15, align 4
  %25 = load i32*, i32** %s, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %25, i64 2
  %26 = load i32, i32* %arrayidx16, align 4
  %27 = load i32*, i32** %d, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %26, i32* %arrayidx17, align 4
  %28 = load i32*, i32** %s, align 8
  %add.ptr = getelementptr inbounds i32, i32* %28, i64 3
  store i32* %add.ptr, i32** %s, align 8
  %29 = load i32*, i32** %d, align 8
  %add.ptr18 = getelementptr inbounds i32, i32* %29, i64 3
  store i32* %add.ptr18, i32** %d, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %30 = load i32, i32* %n, align 4
  %dec = add i32 %30, -1
  store i32 %dec, i32* %n, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %31 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %32 = load i8*, i8** %oldPtr.addr, align 8
  %33 = load i32, i32* %i0, align 4
  call void @InsertNode(%struct.CPpmd8* %31, i8* %32, i32 %33)
  %34 = load i8*, i8** %ptr, align 8
  store i8* %34, i8** %retval
  br label %return

if.end.19:                                        ; preds = %if.end
  %35 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %36 = load i8*, i8** %oldPtr.addr, align 8
  %37 = load i32, i32* %i0, align 4
  %38 = load i32, i32* %i1, align 4
  call void @SplitBlock(%struct.CPpmd8* %35, i8* %36, i32 %37, i32 %38)
  %39 = load i8*, i8** %oldPtr.addr, align 8
  store i8* %39, i8** %retval
  br label %return

return:                                           ; preds = %if.end.19, %do.end, %if.then
  %40 = load i8*, i8** %retval
  ret i8* %40
}

; Function Attrs: nounwind uwtable
define internal i8* @RemoveNode(%struct.CPpmd8* %p, i32 %indx) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %indx.addr = alloca i32, align 4
  %node = alloca %struct.CPpmd8_Node_*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 %indx, i32* %indx.addr, align 4
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 11
  %1 = load i8*, i8** %Base, align 8
  %2 = load i32, i32* %indx.addr, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 24
  %arrayidx = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %5 = bitcast i8* %add.ptr to %struct.CPpmd8_Node_*
  store %struct.CPpmd8_Node_* %5, %struct.CPpmd8_Node_** %node, align 8
  %6 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node, align 8
  %Next = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %6, i32 0, i32 1
  %7 = load i32, i32* %Next, align 4
  %8 = load i32, i32* %indx.addr, align 4
  %idxprom1 = zext i32 %8 to i64
  %9 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FreeList2 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %9, i32 0, i32 24
  %arrayidx3 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList2, i32 0, i64 %idxprom1
  store i32 %7, i32* %arrayidx3, align 4
  %10 = load i32, i32* %indx.addr, align 4
  %idxprom4 = zext i32 %10 to i64
  %11 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Stamps = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %11, i32 0, i32 25
  %arrayidx5 = getelementptr inbounds [38 x i32], [38 x i32]* %Stamps, i32 0, i64 %idxprom4
  %12 = load i32, i32* %arrayidx5, align 4
  %dec = add i32 %12, -1
  store i32 %dec, i32* %arrayidx5, align 4
  %13 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node, align 8
  %14 = bitcast %struct.CPpmd8_Node_* %13 to i8*
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define internal void @SplitBlock(%struct.CPpmd8* %p, i8* %ptr, i32 %oldIndx, i32 %newIndx) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %ptr.addr = alloca i8*, align 8
  %oldIndx.addr = alloca i32, align 4
  %newIndx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %nu = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %oldIndx, i32* %oldIndx.addr, align 4
  store i32 %newIndx, i32* %newIndx.addr, align 4
  %0 = load i32, i32* %oldIndx.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Indx2Units = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, i32* %newIndx.addr, align 4
  %idxprom1 = zext i32 %3 to i64
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Indx2Units2 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 22
  %arrayidx3 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units2, i32 0, i64 %idxprom1
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %sub = sub nsw i32 %conv, %conv4
  store i32 %sub, i32* %nu, align 4
  %6 = load i8*, i8** %ptr.addr, align 8
  %7 = load i32, i32* %newIndx.addr, align 4
  %idxprom5 = zext i32 %7 to i64
  %8 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Indx2Units6 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %8, i32 0, i32 22
  %arrayidx7 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units6, i32 0, i64 %idxprom5
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %mul = mul i32 %conv8, 12
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr.addr, align 8
  %10 = load i32, i32* %nu, align 4
  %sub9 = sub i32 %10, 1
  %idxprom10 = zext i32 %sub9 to i64
  %11 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %11, i32 0, i32 23
  %arrayidx11 = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx, i32 0, i64 %idxprom10
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  store i32 %conv12, i32* %i, align 4
  %idxprom13 = zext i32 %conv12 to i64
  %13 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Indx2Units14 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %13, i32 0, i32 22
  %arrayidx15 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units14, i32 0, i64 %idxprom13
  %14 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  %15 = load i32, i32* %nu, align 4
  %cmp = icmp ne i32 %conv16, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %i, align 4
  %dec = add i32 %16, -1
  store i32 %dec, i32* %i, align 4
  %idxprom18 = zext i32 %dec to i64
  %17 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Indx2Units19 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %17, i32 0, i32 22
  %arrayidx20 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units19, i32 0, i64 %idxprom18
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %18 to i32
  store i32 %conv21, i32* %k, align 4
  %19 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %20 = load i8*, i8** %ptr.addr, align 8
  %21 = load i32, i32* %k, align 4
  %mul22 = mul i32 %21, 12
  %idx.ext23 = zext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %20, i64 %idx.ext23
  %22 = load i32, i32* %nu, align 4
  %23 = load i32, i32* %k, align 4
  %sub25 = sub i32 %22, %23
  %sub26 = sub i32 %sub25, 1
  call void @InsertNode(%struct.CPpmd8* %19, i8* %add.ptr24, i32 %sub26)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %25 = load i8*, i8** %ptr.addr, align 8
  %26 = load i32, i32* %i, align 4
  call void @InsertNode(%struct.CPpmd8* %24, i8* %25, i32 %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.CPpmd8_Context_* @CreateSuccessors(%struct.CPpmd8* %p, i32 %skip, %struct.CPpmd_State* %s1, %struct.CPpmd8_Context_* %c) #0 {
entry:
  %retval = alloca %struct.CPpmd8_Context_*, align 8
  %p.addr = alloca %struct.CPpmd8*, align 8
  %skip.addr = alloca i32, align 4
  %s1.addr = alloca %struct.CPpmd_State*, align 8
  %c.addr = alloca %struct.CPpmd8_Context_*, align 8
  %upState = alloca %struct.CPpmd_State, align 1
  %flags = alloca i8, align 1
  %upBranch = alloca i32, align 4
  %ps = alloca [17 x %struct.CPpmd_State*], align 16
  %numPs = alloca i32, align 4
  %successor = alloca i32, align 4
  %s = alloca %struct.CPpmd_State*, align 8
  %cf = alloca i32, align 4
  %s0 = alloca i32, align 4
  %s91 = alloca %struct.CPpmd_State*, align 8
  %c1 = alloca %struct.CPpmd8_Context_*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 %skip, i32* %skip.addr, align 4
  store %struct.CPpmd_State* %s1, %struct.CPpmd_State** %s1.addr, align 8
  store %struct.CPpmd8_Context_* %c, %struct.CPpmd8_Context_** %c.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 2
  %1 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  %SuccessorLow = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %1, i32 0, i32 2
  %2 = load i16, i16* %SuccessorLow, align 1
  %conv = zext i16 %2 to i32
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 2
  %4 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState1, align 8
  %SuccessorHigh = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %4, i32 0, i32 3
  %5 = load i16, i16* %SuccessorHigh, align 1
  %conv2 = zext i16 %5 to i32
  %shl = shl i32 %conv2, 16
  %or = or i32 %conv, %shl
  store i32 %or, i32* %upBranch, align 4
  store i32 0, i32* %numPs, align 4
  %6 = load i32, i32* %skip.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState3 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %7, i32 0, i32 2
  %8 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState3, align 8
  %9 = load i32, i32* %numPs, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %numPs, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [17 x %struct.CPpmd_State*], [17 x %struct.CPpmd_State*]* %ps, i32 0, i64 %idxprom
  store %struct.CPpmd_State* %8, %struct.CPpmd_State** %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.61, %if.end
  %10 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %Suffix = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %10, i32 0, i32 4
  %11 = load i32, i32* %Suffix, align 4
  %tobool4 = icmp ne i32 %11, 0
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %12, i32 0, i32 11
  %13 = load i8*, i8** %Base, align 8
  %14 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %Suffix5 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %14, i32 0, i32 4
  %15 = load i32, i32* %Suffix5, align 4
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %16 = bitcast i8* %add.ptr to %struct.CPpmd8_Context_*
  store %struct.CPpmd8_Context_* %16, %struct.CPpmd8_Context_** %c.addr, align 8
  %17 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1.addr, align 8
  %tobool6 = icmp ne %struct.CPpmd_State* %17, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %while.body
  %18 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1.addr, align 8
  store %struct.CPpmd_State* %18, %struct.CPpmd_State** %s, align 8
  store %struct.CPpmd_State* null, %struct.CPpmd_State** %s1.addr, align 8
  br label %if.end.44

if.else:                                          ; preds = %while.body
  %19 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %19, i32 0, i32 0
  %20 = load i8, i8* %NumStats, align 1
  %conv8 = zext i8 %20 to i32
  %cmp = icmp ne i32 %conv8, 0
  br i1 %cmp, label %if.then.10, label %if.else.28

if.then.10:                                       ; preds = %if.else
  %21 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base11 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %21, i32 0, i32 11
  %22 = load i8*, i8** %Base11, align 8
  %23 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %Stats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %23, i32 0, i32 3
  %24 = load i32, i32* %Stats, align 4
  %idx.ext12 = zext i32 %24 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %22, i64 %idx.ext12
  %25 = bitcast i8* %add.ptr13 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %25, %struct.CPpmd_State** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %26 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %26, i32 0, i32 0
  %27 = load i8, i8* %Symbol, align 1
  %conv14 = zext i8 %27 to i32
  %28 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState15 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %28, i32 0, i32 2
  %29 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState15, align 8
  %Symbol16 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %29, i32 0, i32 0
  %30 = load i8, i8* %Symbol16, align 1
  %conv17 = zext i8 %30 to i32
  %cmp18 = icmp ne i32 %conv14, %conv17
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %31, i32 1
  store %struct.CPpmd_State* %incdec.ptr, %struct.CPpmd_State** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %32, i32 0, i32 1
  %33 = load i8, i8* %Freq, align 1
  %conv20 = zext i8 %33 to i32
  %cmp21 = icmp slt i32 %conv20, 115
  br i1 %cmp21, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %for.end
  %34 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq24 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %34, i32 0, i32 1
  %35 = load i8, i8* %Freq24, align 1
  %inc25 = add i8 %35, 1
  store i8 %inc25, i8* %Freq24, align 1
  %36 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %36, i32 0, i32 2
  %37 = load i16, i16* %SummFreq, align 2
  %inc26 = add i16 %37, 1
  store i16 %inc26, i16* %SummFreq, align 2
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %for.end
  br label %if.end.43

if.else.28:                                       ; preds = %if.else
  %38 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %SummFreq29 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %38, i32 0, i32 2
  %39 = bitcast i16* %SummFreq29 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %39, %struct.CPpmd_State** %s, align 8
  %40 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base30 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %40, i32 0, i32 11
  %41 = load i8*, i8** %Base30, align 8
  %42 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %Suffix31 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %42, i32 0, i32 4
  %43 = load i32, i32* %Suffix31, align 4
  %idx.ext32 = zext i32 %43 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %41, i64 %idx.ext32
  %44 = bitcast i8* %add.ptr33 to %struct.CPpmd8_Context_*
  %NumStats34 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %44, i32 0, i32 0
  %45 = load i8, i8* %NumStats34, align 1
  %tobool35 = icmp ne i8 %45, 0
  %lnot = xor i1 %tobool35, true
  %lnot.ext = zext i1 %lnot to i32
  %46 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq36 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %46, i32 0, i32 1
  %47 = load i8, i8* %Freq36, align 1
  %conv37 = zext i8 %47 to i32
  %cmp38 = icmp slt i32 %conv37, 24
  %conv39 = zext i1 %cmp38 to i32
  %and = and i32 %lnot.ext, %conv39
  %48 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq40 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %48, i32 0, i32 1
  %49 = load i8, i8* %Freq40, align 1
  %conv41 = zext i8 %49 to i32
  %add = add nsw i32 %conv41, %and
  %conv42 = trunc i32 %add to i8
  store i8 %conv42, i8* %Freq40, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.28, %if.end.27
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.7
  %50 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorLow45 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %50, i32 0, i32 2
  %51 = load i16, i16* %SuccessorLow45, align 1
  %conv46 = zext i16 %51 to i32
  %52 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorHigh47 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %52, i32 0, i32 3
  %53 = load i16, i16* %SuccessorHigh47, align 1
  %conv48 = zext i16 %53 to i32
  %shl49 = shl i32 %conv48, 16
  %or50 = or i32 %conv46, %shl49
  store i32 %or50, i32* %successor, align 4
  %54 = load i32, i32* %successor, align 4
  %55 = load i32, i32* %upBranch, align 4
  %cmp51 = icmp ne i32 %54, %55
  br i1 %cmp51, label %if.then.53, label %if.end.61

if.then.53:                                       ; preds = %if.end.44
  %56 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base54 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %56, i32 0, i32 11
  %57 = load i8*, i8** %Base54, align 8
  %58 = load i32, i32* %successor, align 4
  %idx.ext55 = zext i32 %58 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %57, i64 %idx.ext55
  %59 = bitcast i8* %add.ptr56 to %struct.CPpmd8_Context_*
  store %struct.CPpmd8_Context_* %59, %struct.CPpmd8_Context_** %c.addr, align 8
  %60 = load i32, i32* %numPs, align 4
  %cmp57 = icmp eq i32 %60, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.53
  %61 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  store %struct.CPpmd8_Context_* %61, %struct.CPpmd8_Context_** %retval
  br label %return

if.end.60:                                        ; preds = %if.then.53
  br label %while.end

if.end.61:                                        ; preds = %if.end.44
  %62 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %63 = load i32, i32* %numPs, align 4
  %inc62 = add i32 %63, 1
  store i32 %inc62, i32* %numPs, align 4
  %idxprom63 = zext i32 %63 to i64
  %arrayidx64 = getelementptr inbounds [17 x %struct.CPpmd_State*], [17 x %struct.CPpmd_State*]* %ps, i32 0, i64 %idxprom63
  store %struct.CPpmd_State* %62, %struct.CPpmd_State** %arrayidx64, align 8
  br label %while.cond

while.end:                                        ; preds = %if.end.60, %while.cond
  %64 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base65 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %64, i32 0, i32 11
  %65 = load i8*, i8** %Base65, align 8
  %66 = load i32, i32* %upBranch, align 4
  %idx.ext66 = zext i32 %66 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %65, i64 %idx.ext66
  %67 = load i8, i8* %add.ptr67, align 1
  %Symbol68 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %upState, i32 0, i32 0
  store i8 %67, i8* %Symbol68, align 1
  %68 = load i32, i32* %upBranch, align 4
  %add69 = add i32 %68, 1
  call void @SetSuccessor(%struct.CPpmd_State* %upState, i32 %add69)
  %69 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState70 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %69, i32 0, i32 2
  %70 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState70, align 8
  %Symbol71 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %70, i32 0, i32 0
  %71 = load i8, i8* %Symbol71, align 1
  %conv72 = zext i8 %71 to i32
  %cmp73 = icmp sge i32 %conv72, 64
  %conv74 = zext i1 %cmp73 to i32
  %mul = mul nsw i32 16, %conv74
  %Symbol75 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %upState, i32 0, i32 0
  %72 = load i8, i8* %Symbol75, align 1
  %conv76 = zext i8 %72 to i32
  %cmp77 = icmp sge i32 %conv76, 64
  %conv78 = zext i1 %cmp77 to i32
  %mul79 = mul nsw i32 8, %conv78
  %add80 = add nsw i32 %mul, %mul79
  %conv81 = trunc i32 %add80 to i8
  store i8 %conv81, i8* %flags, align 1
  %73 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %NumStats82 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %73, i32 0, i32 0
  %74 = load i8, i8* %NumStats82, align 1
  %conv83 = zext i8 %74 to i32
  %cmp84 = icmp eq i32 %conv83, 0
  br i1 %cmp84, label %if.then.86, label %if.else.90

if.then.86:                                       ; preds = %while.end
  %75 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %SummFreq87 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %75, i32 0, i32 2
  %76 = bitcast i16* %SummFreq87 to %struct.CPpmd_State*
  %Freq88 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %76, i32 0, i32 1
  %77 = load i8, i8* %Freq88, align 1
  %Freq89 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %upState, i32 0, i32 1
  store i8 %77, i8* %Freq89, align 1
  br label %if.end.127

if.else.90:                                       ; preds = %while.end
  %78 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base92 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %78, i32 0, i32 11
  %79 = load i8*, i8** %Base92, align 8
  %80 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %Stats93 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %80, i32 0, i32 3
  %81 = load i32, i32* %Stats93, align 4
  %idx.ext94 = zext i32 %81 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %79, i64 %idx.ext94
  %82 = bitcast i8* %add.ptr95 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %82, %struct.CPpmd_State** %s91, align 8
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.104, %if.else.90
  %83 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s91, align 8
  %Symbol97 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %83, i32 0, i32 0
  %84 = load i8, i8* %Symbol97, align 1
  %conv98 = zext i8 %84 to i32
  %Symbol99 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %upState, i32 0, i32 0
  %85 = load i8, i8* %Symbol99, align 1
  %conv100 = zext i8 %85 to i32
  %cmp101 = icmp ne i32 %conv98, %conv100
  br i1 %cmp101, label %for.body.103, label %for.end.106

for.body.103:                                     ; preds = %for.cond.96
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.103
  %86 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s91, align 8
  %incdec.ptr105 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %86, i32 1
  store %struct.CPpmd_State* %incdec.ptr105, %struct.CPpmd_State** %s91, align 8
  br label %for.cond.96

for.end.106:                                      ; preds = %for.cond.96
  %87 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s91, align 8
  %Freq107 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %87, i32 0, i32 1
  %88 = load i8, i8* %Freq107, align 1
  %conv108 = zext i8 %88 to i32
  %sub = sub nsw i32 %conv108, 1
  store i32 %sub, i32* %cf, align 4
  %89 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %SummFreq109 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %89, i32 0, i32 2
  %90 = load i16, i16* %SummFreq109, align 2
  %conv110 = zext i16 %90 to i32
  %91 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %NumStats111 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %91, i32 0, i32 0
  %92 = load i8, i8* %NumStats111, align 1
  %conv112 = zext i8 %92 to i32
  %sub113 = sub nsw i32 %conv110, %conv112
  %93 = load i32, i32* %cf, align 4
  %sub114 = sub i32 %sub113, %93
  store i32 %sub114, i32* %s0, align 4
  %94 = load i32, i32* %cf, align 4
  %mul115 = mul i32 2, %94
  %95 = load i32, i32* %s0, align 4
  %cmp116 = icmp ule i32 %mul115, %95
  br i1 %cmp116, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.106
  %96 = load i32, i32* %cf, align 4
  %mul118 = mul i32 5, %96
  %97 = load i32, i32* %s0, align 4
  %cmp119 = icmp ugt i32 %mul118, %97
  %conv120 = zext i1 %cmp119 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.end.106
  %98 = load i32, i32* %cf, align 4
  %99 = load i32, i32* %s0, align 4
  %mul121 = mul i32 2, %99
  %add122 = add i32 %98, %mul121
  %sub123 = sub i32 %add122, 3
  %100 = load i32, i32* %s0, align 4
  %div = udiv i32 %sub123, %100
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv120, %cond.true ], [ %div, %cond.false ]
  %add124 = add i32 1, %cond
  %conv125 = trunc i32 %add124 to i8
  %Freq126 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %upState, i32 0, i32 1
  store i8 %conv125, i8* %Freq126, align 1
  br label %if.end.127

if.end.127:                                       ; preds = %cond.end, %if.then.86
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.127
  %101 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %HiUnit = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %101, i32 0, i32 13
  %102 = load i8*, i8** %HiUnit, align 8
  %103 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %LoUnit = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %103, i32 0, i32 12
  %104 = load i8*, i8** %LoUnit, align 8
  %cmp128 = icmp ne i8* %102, %104
  br i1 %cmp128, label %if.then.130, label %if.else.133

if.then.130:                                      ; preds = %do.body
  %105 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %HiUnit131 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %105, i32 0, i32 13
  %106 = load i8*, i8** %HiUnit131, align 8
  %add.ptr132 = getelementptr inbounds i8, i8* %106, i64 -12
  store i8* %add.ptr132, i8** %HiUnit131, align 8
  %107 = bitcast i8* %add.ptr132 to %struct.CPpmd8_Context_*
  store %struct.CPpmd8_Context_* %107, %struct.CPpmd8_Context_** %c1, align 8
  br label %if.end.144

if.else.133:                                      ; preds = %do.body
  %108 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %108, i32 0, i32 24
  %arrayidx134 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 0
  %109 = load i32, i32* %arrayidx134, align 4
  %cmp135 = icmp ne i32 %109, 0
  br i1 %cmp135, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %if.else.133
  %110 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %call = call i8* @RemoveNode(%struct.CPpmd8* %110, i32 0)
  %111 = bitcast i8* %call to %struct.CPpmd8_Context_*
  store %struct.CPpmd8_Context_* %111, %struct.CPpmd8_Context_** %c1, align 8
  br label %if.end.143

if.else.138:                                      ; preds = %if.else.133
  %112 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %call139 = call i8* @AllocUnitsRare(%struct.CPpmd8* %112, i32 0)
  %113 = bitcast i8* %call139 to %struct.CPpmd8_Context_*
  store %struct.CPpmd8_Context_* %113, %struct.CPpmd8_Context_** %c1, align 8
  %114 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c1, align 8
  %tobool140 = icmp ne %struct.CPpmd8_Context_* %114, null
  br i1 %tobool140, label %if.end.142, label %if.then.141

if.then.141:                                      ; preds = %if.else.138
  store %struct.CPpmd8_Context_* null, %struct.CPpmd8_Context_** %retval
  br label %return

if.end.142:                                       ; preds = %if.else.138
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.then.137
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.130
  %115 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c1, align 8
  %NumStats145 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %115, i32 0, i32 0
  store i8 0, i8* %NumStats145, align 1
  %116 = load i8, i8* %flags, align 1
  %117 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c1, align 8
  %Flags = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %117, i32 0, i32 1
  store i8 %116, i8* %Flags, align 1
  %118 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c1, align 8
  %SummFreq146 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %118, i32 0, i32 2
  %119 = bitcast i16* %SummFreq146 to %struct.CPpmd_State*
  %120 = bitcast %struct.CPpmd_State* %119 to i8*
  %121 = bitcast %struct.CPpmd_State* %upState to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 6, i32 1, i1 false)
  %122 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %123 = bitcast %struct.CPpmd8_Context_* %122 to i8*
  %124 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base147 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %124, i32 0, i32 11
  %125 = load i8*, i8** %Base147, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %123 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %125 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv148 = trunc i64 %sub.ptr.sub to i32
  %126 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c1, align 8
  %Suffix149 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %126, i32 0, i32 4
  store i32 %conv148, i32* %Suffix149, align 4
  %127 = load i32, i32* %numPs, align 4
  %dec = add i32 %127, -1
  store i32 %dec, i32* %numPs, align 4
  %idxprom150 = zext i32 %dec to i64
  %arrayidx151 = getelementptr inbounds [17 x %struct.CPpmd_State*], [17 x %struct.CPpmd_State*]* %ps, i32 0, i64 %idxprom150
  %128 = load %struct.CPpmd_State*, %struct.CPpmd_State** %arrayidx151, align 8
  %129 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c1, align 8
  %130 = bitcast %struct.CPpmd8_Context_* %129 to i8*
  %131 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base152 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %131, i32 0, i32 11
  %132 = load i8*, i8** %Base152, align 8
  %sub.ptr.lhs.cast153 = ptrtoint i8* %130 to i64
  %sub.ptr.rhs.cast154 = ptrtoint i8* %132 to i64
  %sub.ptr.sub155 = sub i64 %sub.ptr.lhs.cast153, %sub.ptr.rhs.cast154
  %conv156 = trunc i64 %sub.ptr.sub155 to i32
  call void @SetSuccessor(%struct.CPpmd_State* %128, i32 %conv156)
  %133 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c1, align 8
  store %struct.CPpmd8_Context_* %133, %struct.CPpmd8_Context_** %c.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.144
  %134 = load i32, i32* %numPs, align 4
  %cmp157 = icmp ne i32 %134, 0
  br i1 %cmp157, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %135 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  store %struct.CPpmd8_Context_* %135, %struct.CPpmd8_Context_** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.141, %if.then.59
  %136 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %retval
  ret %struct.CPpmd8_Context_* %136
}

; Function Attrs: nounwind uwtable
define internal void @RestoreModel(%struct.CPpmd8* %p, %struct.CPpmd8_Context_* %c1) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %c1.addr = alloca %struct.CPpmd8_Context_*, align 8
  %c = alloca %struct.CPpmd8_Context_*, align 8
  %s = alloca %struct.CPpmd_State*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store %struct.CPpmd8_Context_* %c1, %struct.CPpmd8_Context_** %c1.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 11
  %1 = load i8*, i8** %Base, align 8
  %2 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %AlignOffset = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %2, i32 0, i32 16
  %3 = load i32, i32* %AlignOffset, align 4
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Text = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 14
  store i8* %add.ptr1, i8** %Text, align 8
  %5 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %5, i32 0, i32 1
  %6 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MaxContext, align 8
  store %struct.CPpmd8_Context_* %6, %struct.CPpmd8_Context_** %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %8 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c1.addr, align 8
  %cmp = icmp ne %struct.CPpmd8_Context_* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %9, i32 0, i32 0
  %10 = load i8, i8* %NumStats, align 1
  %dec = add i8 %10, -1
  store i8 %dec, i8* %NumStats, align 1
  %conv = zext i8 %dec to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base4 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %11, i32 0, i32 11
  %12 = load i8*, i8** %Base4, align 8
  %13 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %Stats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %13, i32 0, i32 3
  %14 = load i32, i32* %Stats, align 4
  %idx.ext5 = zext i32 %14 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %12, i64 %idx.ext5
  %15 = bitcast i8* %add.ptr6 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %15, %struct.CPpmd_State** %s, align 8
  %16 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %Flags = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %16, i32 0, i32 1
  %17 = load i8, i8* %Flags, align 1
  %conv7 = zext i8 %17 to i32
  %and = and i32 %conv7, 16
  %18 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %18, i32 0, i32 0
  %19 = load i8, i8* %Symbol, align 1
  %conv8 = zext i8 %19 to i32
  %cmp9 = icmp sge i32 %conv8, 64
  %conv10 = zext i1 %cmp9 to i32
  %mul = mul nsw i32 8, %conv10
  %add = add nsw i32 %and, %mul
  %conv11 = trunc i32 %add to i8
  %20 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %Flags12 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %20, i32 0, i32 1
  store i8 %conv11, i8* %Flags12, align 1
  %21 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %21, i32 0, i32 2
  %22 = bitcast i16* %SummFreq to %struct.CPpmd_State*
  %23 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %24 = bitcast %struct.CPpmd_State* %22 to i8*
  %25 = bitcast %struct.CPpmd_State* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 6, i32 1, i1 false)
  %26 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %27 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %28 = bitcast %struct.CPpmd_State* %27 to i8*
  call void @SpecialFreeUnit(%struct.CPpmd8* %26, i8* %28)
  %29 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq13 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %29, i32 0, i32 2
  %30 = bitcast i16* %SummFreq13 to %struct.CPpmd_State*
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %30, i32 0, i32 1
  %31 = load i8, i8* %Freq, align 1
  %conv14 = zext i8 %31 to i32
  %add15 = add nsw i32 %conv14, 11
  %shr = ashr i32 %add15, 3
  %conv16 = trunc i32 %shr to i8
  %32 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq17 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %32, i32 0, i32 2
  %33 = bitcast i16* %SummFreq17 to %struct.CPpmd_State*
  %Freq18 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %33, i32 0, i32 1
  store i8 %conv16, i8* %Freq18, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %34 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %35 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %36 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %NumStats19 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %36, i32 0, i32 0
  %37 = load i8, i8* %NumStats19, align 1
  %conv20 = zext i8 %37 to i32
  %add21 = add nsw i32 %conv20, 3
  %shr22 = ashr i32 %add21, 1
  call void @Refresh(%struct.CPpmd8* %34, %struct.CPpmd8_Context_* %35, i32 %shr22, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base23 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %38, i32 0, i32 11
  %39 = load i8*, i8** %Base23, align 8
  %40 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %Suffix = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %40, i32 0, i32 4
  %41 = load i32, i32* %Suffix, align 4
  %idx.ext24 = zext i32 %41 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %39, i64 %idx.ext24
  %42 = bitcast i8* %add.ptr25 to %struct.CPpmd8_Context_*
  store %struct.CPpmd8_Context_* %42, %struct.CPpmd8_Context_** %c, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.59, %for.end
  %43 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %44 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %44, i32 0, i32 0
  %45 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext, align 8
  %cmp27 = icmp ne %struct.CPpmd8_Context_* %43, %45
  br i1 %cmp27, label %for.body.29, label %for.end.64

for.body.29:                                      ; preds = %for.cond.26
  %46 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %NumStats30 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %46, i32 0, i32 0
  %47 = load i8, i8* %NumStats30, align 1
  %tobool = icmp ne i8 %47, 0
  br i1 %tobool, label %if.else.40, label %if.then.31

if.then.31:                                       ; preds = %for.body.29
  %48 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq32 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %48, i32 0, i32 2
  %49 = bitcast i16* %SummFreq32 to %struct.CPpmd_State*
  %Freq33 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %49, i32 0, i32 1
  %50 = load i8, i8* %Freq33, align 1
  %conv34 = zext i8 %50 to i32
  %shr35 = ashr i32 %conv34, 1
  %51 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq36 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %51, i32 0, i32 2
  %52 = bitcast i16* %SummFreq36 to %struct.CPpmd_State*
  %Freq37 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %52, i32 0, i32 1
  %53 = load i8, i8* %Freq37, align 1
  %conv38 = zext i8 %53 to i32
  %sub = sub nsw i32 %conv38, %shr35
  %conv39 = trunc i32 %sub to i8
  store i8 %conv39, i8* %Freq37, align 1
  br label %if.end.58

if.else.40:                                       ; preds = %for.body.29
  %54 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %SummFreq41 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %54, i32 0, i32 2
  %55 = load i16, i16* %SummFreq41, align 2
  %conv42 = zext i16 %55 to i32
  %add43 = add nsw i32 %conv42, 4
  %conv44 = trunc i32 %add43 to i16
  store i16 %conv44, i16* %SummFreq41, align 2
  %conv45 = zext i16 %conv44 to i32
  %56 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %NumStats46 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %56, i32 0, i32 0
  %57 = load i8, i8* %NumStats46, align 1
  %conv47 = zext i8 %57 to i32
  %mul48 = mul nsw i32 4, %conv47
  %add49 = add nsw i32 128, %mul48
  %cmp50 = icmp sgt i32 %conv45, %add49
  br i1 %cmp50, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %if.else.40
  %58 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %59 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %60 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %NumStats53 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %60, i32 0, i32 0
  %61 = load i8, i8* %NumStats53, align 1
  %conv54 = zext i8 %61 to i32
  %add55 = add nsw i32 %conv54, 2
  %shr56 = ashr i32 %add55, 1
  call void @Refresh(%struct.CPpmd8* %58, %struct.CPpmd8_Context_* %59, i32 %shr56, i32 1)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.52, %if.else.40
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.31
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %62 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base60 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %62, i32 0, i32 11
  %63 = load i8*, i8** %Base60, align 8
  %64 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c, align 8
  %Suffix61 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %64, i32 0, i32 4
  %65 = load i32, i32* %Suffix61, align 4
  %idx.ext62 = zext i32 %65 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %63, i64 %idx.ext62
  %66 = bitcast i8* %add.ptr63 to %struct.CPpmd8_Context_*
  store %struct.CPpmd8_Context_* %66, %struct.CPpmd8_Context_** %c, align 8
  br label %for.cond.26

for.end.64:                                       ; preds = %for.cond.26
  %67 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %RestoreMethod = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %67, i32 0, i32 17
  %68 = load i32, i32* %RestoreMethod, align 4
  %cmp65 = icmp eq i32 %68, 0
  br i1 %cmp65, label %if.then.70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.64
  %69 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %call = call i32 @GetUsedMemory(%struct.CPpmd8* %69)
  %70 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Size = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %70, i32 0, i32 9
  %71 = load i32, i32* %Size, align 4
  %shr67 = lshr i32 %71, 1
  %cmp68 = icmp ult i32 %call, %shr67
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %lor.lhs.false, %for.end.64
  %72 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @RestartModel(%struct.CPpmd8* %72)
  br label %if.end.89

if.else.71:                                       ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.71
  %73 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxContext72 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %73, i32 0, i32 1
  %74 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MaxContext72, align 8
  %Suffix73 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %74, i32 0, i32 4
  %75 = load i32, i32* %Suffix73, align 4
  %tobool74 = icmp ne i32 %75, 0
  br i1 %tobool74, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %76 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base75 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %76, i32 0, i32 11
  %77 = load i8*, i8** %Base75, align 8
  %78 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxContext76 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %78, i32 0, i32 1
  %79 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MaxContext76, align 8
  %Suffix77 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %79, i32 0, i32 4
  %80 = load i32, i32* %Suffix77, align 4
  %idx.ext78 = zext i32 %80 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %77, i64 %idx.ext78
  %81 = bitcast i8* %add.ptr79 to %struct.CPpmd8_Context_*
  %82 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxContext80 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %82, i32 0, i32 1
  store %struct.CPpmd8_Context_* %81, %struct.CPpmd8_Context_** %MaxContext80, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %83 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %84 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxContext81 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %84, i32 0, i32 1
  %85 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MaxContext81, align 8
  %call82 = call i32 @CutOff(%struct.CPpmd8* %83, %struct.CPpmd8_Context_* %85, i32 0)
  %86 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @ExpandTextArea(%struct.CPpmd8* %86)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %87 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %call83 = call i32 @GetUsedMemory(%struct.CPpmd8* %87)
  %88 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Size84 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %88, i32 0, i32 9
  %89 = load i32, i32* %Size84, align 4
  %shr85 = lshr i32 %89, 2
  %mul86 = mul i32 3, %shr85
  %cmp87 = icmp ugt i32 %call83, %mul86
  br i1 %cmp87, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %90 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %GlueCount = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %90, i32 0, i32 10
  store i32 0, i32* %GlueCount, align 4
  %91 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxOrder = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %91, i32 0, i32 6
  %92 = load i32, i32* %MaxOrder, align 4
  %93 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %OrderFall = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %93, i32 0, i32 3
  store i32 %92, i32* %OrderFall, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %do.end, %if.then.70
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.CPpmd8_Context_* @ReduceOrder(%struct.CPpmd8* %p, %struct.CPpmd_State* %s1, %struct.CPpmd8_Context_* %c) #0 {
entry:
  %retval = alloca %struct.CPpmd8_Context_*, align 8
  %p.addr = alloca %struct.CPpmd8*, align 8
  %s1.addr = alloca %struct.CPpmd_State*, align 8
  %c.addr = alloca %struct.CPpmd8_Context_*, align 8
  %s = alloca %struct.CPpmd_State*, align 8
  %c1 = alloca %struct.CPpmd8_Context_*, align 8
  %upBranch = alloca i32, align 4
  %successor = alloca %struct.CPpmd8_Context_*, align 8
  %s167 = alloca %struct.CPpmd_State*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store %struct.CPpmd_State* %s1, %struct.CPpmd_State** %s1.addr, align 8
  store %struct.CPpmd8_Context_* %c, %struct.CPpmd8_Context_** %c.addr, align 8
  store %struct.CPpmd_State* null, %struct.CPpmd_State** %s, align 8
  %0 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  store %struct.CPpmd8_Context_* %0, %struct.CPpmd8_Context_** %c1, align 8
  %1 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Text = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %1, i32 0, i32 14
  %2 = load i8*, i8** %Text, align 8
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 11
  %4 = load i8*, i8** %Base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %upBranch, align 4
  %5 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %5, i32 0, i32 2
  %6 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  %7 = load i32, i32* %upBranch, align 4
  call void @SetSuccessor(%struct.CPpmd_State* %6, i32 %7)
  %8 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %OrderFall = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %8, i32 0, i32 3
  %9 = load i32, i32* %OrderFall, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %OrderFall, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.55, %entry
  %10 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1.addr, align 8
  %tobool = icmp ne %struct.CPpmd_State* %10, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %11 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %11, i32 0, i32 11
  %12 = load i8*, i8** %Base1, align 8
  %13 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %Suffix = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %13, i32 0, i32 4
  %14 = load i32, i32* %Suffix, align 4
  %idx.ext = zext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  %15 = bitcast i8* %add.ptr to %struct.CPpmd8_Context_*
  store %struct.CPpmd8_Context_* %15, %struct.CPpmd8_Context_** %c.addr, align 8
  %16 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1.addr, align 8
  store %struct.CPpmd_State* %16, %struct.CPpmd_State** %s, align 8
  store %struct.CPpmd_State* null, %struct.CPpmd_State** %s1.addr, align 8
  br label %if.end.50

if.else:                                          ; preds = %for.cond
  %17 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %Suffix2 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %17, i32 0, i32 4
  %18 = load i32, i32* %Suffix2, align 4
  %tobool3 = icmp ne i32 %18, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.else
  %19 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  store %struct.CPpmd8_Context_* %19, %struct.CPpmd8_Context_** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %20 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %20, i32 0, i32 11
  %21 = load i8*, i8** %Base5, align 8
  %22 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %Suffix6 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %22, i32 0, i32 4
  %23 = load i32, i32* %Suffix6, align 4
  %idx.ext7 = zext i32 %23 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %21, i64 %idx.ext7
  %24 = bitcast i8* %add.ptr8 to %struct.CPpmd8_Context_*
  store %struct.CPpmd8_Context_* %24, %struct.CPpmd8_Context_** %c.addr, align 8
  %25 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %25, i32 0, i32 0
  %26 = load i8, i8* %NumStats, align 1
  %tobool9 = icmp ne i8 %26, 0
  br i1 %tobool9, label %if.then.10, label %if.else.39

if.then.10:                                       ; preds = %if.end
  %27 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base11 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %27, i32 0, i32 11
  %28 = load i8*, i8** %Base11, align 8
  %29 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %Stats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %29, i32 0, i32 3
  %30 = load i32, i32* %Stats, align 4
  %idx.ext12 = zext i32 %30 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %28, i64 %idx.ext12
  %31 = bitcast i8* %add.ptr13 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %31, %struct.CPpmd_State** %s, align 8
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %31, i32 0, i32 0
  %32 = load i8, i8* %Symbol, align 1
  %conv14 = zext i8 %32 to i32
  %33 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState15 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %33, i32 0, i32 2
  %34 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState15, align 8
  %Symbol16 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %34, i32 0, i32 0
  %35 = load i8, i8* %Symbol16, align 1
  %conv17 = zext i8 %35 to i32
  %cmp = icmp ne i32 %conv14, %conv17
  br i1 %cmp, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %if.then.10
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.19
  %36 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %36, i32 1
  store %struct.CPpmd_State* %incdec.ptr, %struct.CPpmd_State** %s, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %37 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol20 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %37, i32 0, i32 0
  %38 = load i8, i8* %Symbol20, align 1
  %conv21 = zext i8 %38 to i32
  %39 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState22 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %39, i32 0, i32 2
  %40 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState22, align 8
  %Symbol23 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %40, i32 0, i32 0
  %41 = load i8, i8* %Symbol23, align 1
  %conv24 = zext i8 %41 to i32
  %cmp25 = icmp ne i32 %conv21, %conv24
  br i1 %cmp25, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.27

if.end.27:                                        ; preds = %do.end, %if.then.10
  %42 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %42, i32 0, i32 1
  %43 = load i8, i8* %Freq, align 1
  %conv28 = zext i8 %43 to i32
  %cmp29 = icmp slt i32 %conv28, 115
  br i1 %cmp29, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %if.end.27
  %44 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq32 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %44, i32 0, i32 1
  %45 = load i8, i8* %Freq32, align 1
  %conv33 = zext i8 %45 to i32
  %add = add nsw i32 %conv33, 2
  %conv34 = trunc i32 %add to i8
  store i8 %conv34, i8* %Freq32, align 1
  %46 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %46, i32 0, i32 2
  %47 = load i16, i16* %SummFreq, align 2
  %conv35 = zext i16 %47 to i32
  %add36 = add nsw i32 %conv35, 2
  %conv37 = trunc i32 %add36 to i16
  store i16 %conv37, i16* %SummFreq, align 2
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %if.end.27
  br label %if.end.49

if.else.39:                                       ; preds = %if.end
  %48 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %SummFreq40 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %48, i32 0, i32 2
  %49 = bitcast i16* %SummFreq40 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %49, %struct.CPpmd_State** %s, align 8
  %50 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq41 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %50, i32 0, i32 1
  %51 = load i8, i8* %Freq41, align 1
  %conv42 = zext i8 %51 to i32
  %cmp43 = icmp slt i32 %conv42, 32
  %conv44 = zext i1 %cmp43 to i32
  %52 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq45 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %52, i32 0, i32 1
  %53 = load i8, i8* %Freq45, align 1
  %conv46 = zext i8 %53 to i32
  %add47 = add nsw i32 %conv46, %conv44
  %conv48 = trunc i32 %add47 to i8
  store i8 %conv48, i8* %Freq45, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.39, %if.end.38
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then
  %54 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorLow = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %54, i32 0, i32 2
  %55 = load i16, i16* %SuccessorLow, align 1
  %conv51 = zext i16 %55 to i32
  %56 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorHigh = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %56, i32 0, i32 3
  %57 = load i16, i16* %SuccessorHigh, align 1
  %conv52 = zext i16 %57 to i32
  %shl = shl i32 %conv52, 16
  %or = or i32 %conv51, %shl
  %tobool53 = icmp ne i32 %or, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.50
  br label %for.end

if.end.55:                                        ; preds = %if.end.50
  %58 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %59 = load i32, i32* %upBranch, align 4
  call void @SetSuccessor(%struct.CPpmd_State* %58, i32 %59)
  %60 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %OrderFall56 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %60, i32 0, i32 3
  %61 = load i32, i32* %OrderFall56, align 4
  %inc57 = add i32 %61, 1
  store i32 %inc57, i32* %OrderFall56, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.54
  %62 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorLow58 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %62, i32 0, i32 2
  %63 = load i16, i16* %SuccessorLow58, align 1
  %conv59 = zext i16 %63 to i32
  %64 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorHigh60 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %64, i32 0, i32 3
  %65 = load i16, i16* %SuccessorHigh60, align 1
  %conv61 = zext i16 %65 to i32
  %shl62 = shl i32 %conv61, 16
  %or63 = or i32 %conv59, %shl62
  %66 = load i32, i32* %upBranch, align 4
  %cmp64 = icmp ule i32 %or63, %66
  br i1 %cmp64, label %if.then.66, label %if.end.81

if.then.66:                                       ; preds = %for.end
  %67 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState68 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %67, i32 0, i32 2
  %68 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState68, align 8
  store %struct.CPpmd_State* %68, %struct.CPpmd_State** %s167, align 8
  %69 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %70 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState69 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %70, i32 0, i32 2
  store %struct.CPpmd_State* %69, %struct.CPpmd_State** %FoundState69, align 8
  %71 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %72 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c.addr, align 8
  %call = call %struct.CPpmd8_Context_* @CreateSuccessors(%struct.CPpmd8* %71, i32 0, %struct.CPpmd_State* null, %struct.CPpmd8_Context_* %72)
  store %struct.CPpmd8_Context_* %call, %struct.CPpmd8_Context_** %successor, align 8
  %73 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %successor, align 8
  %cmp70 = icmp eq %struct.CPpmd8_Context_* %73, null
  br i1 %cmp70, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %if.then.66
  %74 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  call void @SetSuccessor(%struct.CPpmd_State* %74, i32 0)
  br label %if.end.79

if.else.73:                                       ; preds = %if.then.66
  %75 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %76 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %successor, align 8
  %77 = bitcast %struct.CPpmd8_Context_* %76 to i8*
  %78 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base74 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %78, i32 0, i32 11
  %79 = load i8*, i8** %Base74, align 8
  %sub.ptr.lhs.cast75 = ptrtoint i8* %77 to i64
  %sub.ptr.rhs.cast76 = ptrtoint i8* %79 to i64
  %sub.ptr.sub77 = sub i64 %sub.ptr.lhs.cast75, %sub.ptr.rhs.cast76
  %conv78 = trunc i64 %sub.ptr.sub77 to i32
  call void @SetSuccessor(%struct.CPpmd_State* %75, i32 %conv78)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.73, %if.then.72
  %80 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s167, align 8
  %81 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState80 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %81, i32 0, i32 2
  store %struct.CPpmd_State* %80, %struct.CPpmd_State** %FoundState80, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.79, %for.end
  %82 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %OrderFall82 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %82, i32 0, i32 3
  %83 = load i32, i32* %OrderFall82, align 4
  %cmp83 = icmp eq i32 %83, 1
  br i1 %cmp83, label %land.lhs.true, label %if.end.97

land.lhs.true:                                    ; preds = %if.end.81
  %84 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %c1, align 8
  %85 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %85, i32 0, i32 1
  %86 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MaxContext, align 8
  %cmp85 = icmp eq %struct.CPpmd8_Context_* %84, %86
  br i1 %cmp85, label %if.then.87, label %if.end.97

if.then.87:                                       ; preds = %land.lhs.true
  %87 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState88 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %87, i32 0, i32 2
  %88 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState88, align 8
  %89 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorLow89 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %89, i32 0, i32 2
  %90 = load i16, i16* %SuccessorLow89, align 1
  %conv90 = zext i16 %90 to i32
  %91 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorHigh91 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %91, i32 0, i32 3
  %92 = load i16, i16* %SuccessorHigh91, align 1
  %conv92 = zext i16 %92 to i32
  %shl93 = shl i32 %conv92, 16
  %or94 = or i32 %conv90, %shl93
  call void @SetSuccessor(%struct.CPpmd_State* %88, i32 %or94)
  %93 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Text95 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %93, i32 0, i32 14
  %94 = load i8*, i8** %Text95, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %94, i32 -1
  store i8* %incdec.ptr96, i8** %Text95, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.87, %land.lhs.true, %if.end.81
  %95 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorLow98 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %95, i32 0, i32 2
  %96 = load i16, i16* %SuccessorLow98, align 1
  %conv99 = zext i16 %96 to i32
  %97 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorHigh100 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %97, i32 0, i32 3
  %98 = load i16, i16* %SuccessorHigh100, align 1
  %conv101 = zext i16 %98 to i32
  %shl102 = shl i32 %conv101, 16
  %or103 = or i32 %conv99, %shl102
  %cmp104 = icmp eq i32 %or103, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.97
  store %struct.CPpmd8_Context_* null, %struct.CPpmd8_Context_** %retval
  br label %return

if.end.107:                                       ; preds = %if.end.97
  %99 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base108 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %99, i32 0, i32 11
  %100 = load i8*, i8** %Base108, align 8
  %101 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorLow109 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %101, i32 0, i32 2
  %102 = load i16, i16* %SuccessorLow109, align 1
  %conv110 = zext i16 %102 to i32
  %103 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorHigh111 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %103, i32 0, i32 3
  %104 = load i16, i16* %SuccessorHigh111, align 1
  %conv112 = zext i16 %104 to i32
  %shl113 = shl i32 %conv112, 16
  %or114 = or i32 %conv110, %shl113
  %idx.ext115 = zext i32 %or114 to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %100, i64 %idx.ext115
  %105 = bitcast i8* %add.ptr116 to %struct.CPpmd8_Context_*
  store %struct.CPpmd8_Context_* %105, %struct.CPpmd8_Context_** %retval
  br label %return

return:                                           ; preds = %if.end.107, %if.then.106, %if.then.4
  %106 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %retval
  ret %struct.CPpmd8_Context_* %106
}

; Function Attrs: nounwind uwtable
define internal i8* @AllocUnits(%struct.CPpmd8* %p, i32 %indx) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca %struct.CPpmd8*, align 8
  %indx.addr = alloca i32, align 4
  %numBytes = alloca i32, align 4
  %retVal = alloca i8*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 %indx, i32* %indx.addr, align 4
  %0 = load i32, i32* %indx.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %1, i32 0, i32 24
  %arrayidx = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %4 = load i32, i32* %indx.addr, align 4
  %call = call i8* @RemoveNode(%struct.CPpmd8* %3, i32 %4)
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %indx.addr, align 4
  %idxprom1 = zext i32 %5 to i64
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Indx2Units = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units, i32 0, i64 %idxprom1
  %7 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %7 to i32
  %mul = mul i32 %conv, 12
  store i32 %mul, i32* %numBytes, align 4
  %8 = load i32, i32* %numBytes, align 4
  %9 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %HiUnit = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %9, i32 0, i32 13
  %10 = load i8*, i8** %HiUnit, align 8
  %11 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %LoUnit = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %11, i32 0, i32 12
  %12 = load i8*, i8** %LoUnit, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv3 = trunc i64 %sub.ptr.sub to i32
  %cmp4 = icmp ule i32 %8, %conv3
  br i1 %cmp4, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %13 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %LoUnit7 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %13, i32 0, i32 12
  %14 = load i8*, i8** %LoUnit7, align 8
  store i8* %14, i8** %retVal, align 8
  %15 = load i32, i32* %numBytes, align 4
  %16 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %LoUnit8 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %16, i32 0, i32 12
  %17 = load i8*, i8** %LoUnit8, align 8
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %LoUnit8, align 8
  %18 = load i8*, i8** %retVal, align 8
  store i8* %18, i8** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %19 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %20 = load i32, i32* %indx.addr, align 4
  %call10 = call i8* @AllocUnitsRare(%struct.CPpmd8* %19, i32 %20)
  store i8* %call10, i8** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.6, %if.then
  %21 = load i8*, i8** %retval
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define internal i8* @AllocUnitsRare(%struct.CPpmd8* %p, i32 %indx) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca %struct.CPpmd8*, align 8
  %indx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %retVal = alloca i8*, align 8
  %numBytes = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 %indx, i32* %indx.addr, align 4
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %GlueCount = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 10
  %1 = load i32, i32* %GlueCount, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @GlueFreeBlocks(%struct.CPpmd8* %2)
  %3 = load i32, i32* %indx.addr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 24
  %arrayidx = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %7 = load i32, i32* %indx.addr, align 4
  %call = call i8* @RemoveNode(%struct.CPpmd8* %6, i32 %7)
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %8 = load i32, i32* %indx.addr, align 4
  store i32 %8, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.3
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  %cmp4 = icmp eq i32 %inc, 38
  br i1 %cmp4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %do.body
  %10 = load i32, i32* %indx.addr, align 4
  %idxprom6 = zext i32 %10 to i64
  %11 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Indx2Units = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %11, i32 0, i32 22
  %arrayidx7 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units, i32 0, i64 %idxprom6
  %12 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %12 to i32
  %mul = mul i32 %conv, 12
  store i32 %mul, i32* %numBytes, align 4
  %13 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %GlueCount8 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %13, i32 0, i32 10
  %14 = load i32, i32* %GlueCount8, align 4
  %dec = add i32 %14, -1
  store i32 %dec, i32* %GlueCount8, align 4
  %15 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %15, i32 0, i32 15
  %16 = load i8*, i8** %UnitsStart, align 8
  %17 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Text = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %17, i32 0, i32 14
  %18 = load i8*, i8** %Text, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv9 = trunc i64 %sub.ptr.sub to i32
  %19 = load i32, i32* %numBytes, align 4
  %cmp10 = icmp ugt i32 %conv9, %19
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  %20 = load i32, i32* %numBytes, align 4
  %21 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart12 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %21, i32 0, i32 15
  %22 = load i8*, i8** %UnitsStart12, align 8
  %idx.ext = zext i32 %20 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.neg
  store i8* %add.ptr, i8** %UnitsStart12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

if.end.13:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  %23 = load i32, i32* %i, align 4
  %idxprom14 = zext i32 %23 to i64
  %24 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FreeList15 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %24, i32 0, i32 24
  %arrayidx16 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList15, i32 0, i64 %idxprom14
  %25 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %25, 0
  br i1 %cmp17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %27 = load i32, i32* %i, align 4
  %call19 = call i8* @RemoveNode(%struct.CPpmd8* %26, i32 %27)
  store i8* %call19, i8** %retVal, align 8
  %28 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %29 = load i8*, i8** %retVal, align 8
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %indx.addr, align 4
  call void @SplitBlock(%struct.CPpmd8* %28, i8* %29, i32 %30, i32 %31)
  %32 = load i8*, i8** %retVal, align 8
  store i8* %32, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %cond.end, %if.then.2
  %33 = load i8*, i8** %retval
  ret i8* %33
}

; Function Attrs: nounwind uwtable
define internal void @GlueFreeBlocks(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %head = alloca i32, align 4
  %prev = alloca i32*, align 8
  %i = alloca i32, align 4
  %next = alloca i32, align 4
  %node = alloca %struct.CPpmd8_Node_*, align 8
  %node2 = alloca %struct.CPpmd8_Node_*, align 8
  %node25 = alloca %struct.CPpmd8_Node_*, align 8
  %nu = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 0, i32* %head, align 4
  store i32* %head, i32** %prev, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %GlueCount = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 10
  store i32 8192, i32* %GlueCount, align 4
  %1 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Stamps = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %1, i32 0, i32 25
  %2 = bitcast [38 x i32]* %Stamps to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 152, i32 8, i1 false)
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %LoUnit = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 12
  %4 = load i8*, i8** %LoUnit, align 8
  %5 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %HiUnit = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %5, i32 0, i32 13
  %6 = load i8*, i8** %HiUnit, align 8
  %cmp = icmp ne i8* %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %LoUnit1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %7, i32 0, i32 12
  %8 = load i8*, i8** %LoUnit1, align 8
  %9 = bitcast i8* %8 to %struct.CPpmd8_Node_*
  %Stamp = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %9, i32 0, i32 0
  store i32 0, i32* %Stamp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %cmp2 = icmp ult i32 %10, 38
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %12, i32 0, i32 24
  %arrayidx = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  store i32 %13, i32* %next, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %14 to i64
  %15 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FreeList4 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %15, i32 0, i32 24
  %arrayidx5 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList4, i32 0, i64 %idxprom3
  store i32 0, i32* %arrayidx5, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %for.body
  %16 = load i32, i32* %next, align 4
  %cmp6 = icmp ne i32 %16, 0
  br i1 %cmp6, label %while.body, label %while.end.21

while.body:                                       ; preds = %while.cond
  %17 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %17, i32 0, i32 11
  %18 = load i8*, i8** %Base, align 8
  %19 = load i32, i32* %next, align 4
  %idx.ext = zext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  %20 = bitcast i8* %add.ptr to %struct.CPpmd8_Node_*
  store %struct.CPpmd8_Node_* %20, %struct.CPpmd8_Node_** %node, align 8
  %21 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node, align 8
  %NU = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %21, i32 0, i32 2
  %22 = load i32, i32* %NU, align 4
  %cmp7 = icmp ne i32 %22, 0
  br i1 %cmp7, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %while.body
  %23 = load i32, i32* %next, align 4
  %24 = load i32*, i32** %prev, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node, align 8
  %Next = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %25, i32 0, i32 1
  store i32* %Next, i32** %prev, align 8
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.15, %if.then.8
  %26 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node, align 8
  %27 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node, align 8
  %NU10 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %27, i32 0, i32 2
  %28 = load i32, i32* %NU10, align 4
  %idx.ext11 = zext i32 %28 to i64
  %add.ptr12 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %26, i64 %idx.ext11
  store %struct.CPpmd8_Node_* %add.ptr12, %struct.CPpmd8_Node_** %node2, align 8
  %Stamp13 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %add.ptr12, i32 0, i32 0
  %29 = load i32, i32* %Stamp13, align 4
  %cmp14 = icmp eq i32 %29, -1
  br i1 %cmp14, label %while.body.15, label %while.end

while.body.15:                                    ; preds = %while.cond.9
  %30 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node2, align 8
  %NU16 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %30, i32 0, i32 2
  %31 = load i32, i32* %NU16, align 4
  %32 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node, align 8
  %NU17 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %32, i32 0, i32 2
  %33 = load i32, i32* %NU17, align 4
  %add = add i32 %33, %31
  store i32 %add, i32* %NU17, align 4
  %34 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node2, align 8
  %NU18 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %34, i32 0, i32 2
  store i32 0, i32* %NU18, align 4
  br label %while.cond.9

while.end:                                        ; preds = %while.cond.9
  br label %if.end.19

if.end.19:                                        ; preds = %while.end, %while.body
  %35 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node, align 8
  %Next20 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %35, i32 0, i32 1
  %36 = load i32, i32* %Next20, align 4
  store i32 %36, i32* %next, align 4
  br label %while.cond

while.end.21:                                     ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end.21
  %37 = load i32, i32* %i, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32*, i32** %prev, align 8
  store i32 0, i32* %38, align 4
  br label %while.cond.22

while.cond.22:                                    ; preds = %if.end.57, %if.then.32, %for.end
  %39 = load i32, i32* %head, align 4
  %cmp23 = icmp ne i32 %39, 0
  br i1 %cmp23, label %while.body.24, label %while.end.58

while.body.24:                                    ; preds = %while.cond.22
  %40 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base26 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %40, i32 0, i32 11
  %41 = load i8*, i8** %Base26, align 8
  %42 = load i32, i32* %head, align 4
  %idx.ext27 = zext i32 %42 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %41, i64 %idx.ext27
  %43 = bitcast i8* %add.ptr28 to %struct.CPpmd8_Node_*
  store %struct.CPpmd8_Node_* %43, %struct.CPpmd8_Node_** %node25, align 8
  %44 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node25, align 8
  %Next29 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %44, i32 0, i32 1
  %45 = load i32, i32* %Next29, align 4
  store i32 %45, i32* %head, align 4
  %46 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node25, align 8
  %NU30 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %46, i32 0, i32 2
  %47 = load i32, i32* %NU30, align 4
  store i32 %47, i32* %nu, align 4
  %48 = load i32, i32* %nu, align 4
  %cmp31 = icmp eq i32 %48, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %while.body.24
  br label %while.cond.22

if.end.33:                                        ; preds = %while.body.24
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.37, %if.end.33
  %49 = load i32, i32* %nu, align 4
  %cmp35 = icmp ugt i32 %49, 128
  br i1 %cmp35, label %for.body.36, label %for.end.39

for.body.36:                                      ; preds = %for.cond.34
  %50 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %51 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node25, align 8
  %52 = bitcast %struct.CPpmd8_Node_* %51 to i8*
  call void @InsertNode(%struct.CPpmd8* %50, i8* %52, i32 37)
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.36
  %53 = load i32, i32* %nu, align 4
  %sub = sub i32 %53, 128
  store i32 %sub, i32* %nu, align 4
  %54 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node25, align 8
  %add.ptr38 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %54, i64 128
  store %struct.CPpmd8_Node_* %add.ptr38, %struct.CPpmd8_Node_** %node25, align 8
  br label %for.cond.34

for.end.39:                                       ; preds = %for.cond.34
  %55 = load i32, i32* %nu, align 4
  %sub40 = sub i32 %55, 1
  %idxprom41 = zext i32 %sub40 to i64
  %56 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %56, i32 0, i32 23
  %arrayidx42 = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx, i32 0, i64 %idxprom41
  %57 = load i8, i8* %arrayidx42, align 1
  %conv = zext i8 %57 to i32
  store i32 %conv, i32* %i, align 4
  %idxprom43 = zext i32 %conv to i64
  %58 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Indx2Units = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %58, i32 0, i32 22
  %arrayidx44 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units, i32 0, i64 %idxprom43
  %59 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %59 to i32
  %60 = load i32, i32* %nu, align 4
  %cmp46 = icmp ne i32 %conv45, %60
  br i1 %cmp46, label %if.then.48, label %if.end.57

if.then.48:                                       ; preds = %for.end.39
  %61 = load i32, i32* %i, align 4
  %dec = add i32 %61, -1
  store i32 %dec, i32* %i, align 4
  %idxprom49 = zext i32 %dec to i64
  %62 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Indx2Units50 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %62, i32 0, i32 22
  %arrayidx51 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units50, i32 0, i64 %idxprom49
  %63 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %63 to i32
  store i32 %conv52, i32* %k, align 4
  %64 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %65 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node25, align 8
  %66 = load i32, i32* %k, align 4
  %idx.ext53 = zext i32 %66 to i64
  %add.ptr54 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %65, i64 %idx.ext53
  %67 = bitcast %struct.CPpmd8_Node_* %add.ptr54 to i8*
  %68 = load i32, i32* %nu, align 4
  %69 = load i32, i32* %k, align 4
  %sub55 = sub i32 %68, %69
  %sub56 = sub i32 %sub55, 1
  call void @InsertNode(%struct.CPpmd8* %64, i8* %67, i32 %sub56)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.48, %for.end.39
  %70 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %71 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node25, align 8
  %72 = bitcast %struct.CPpmd8_Node_* %71 to i8*
  %73 = load i32, i32* %i, align 4
  call void @InsertNode(%struct.CPpmd8* %70, i8* %72, i32 %73)
  br label %while.cond.22

while.end.58:                                     ; preds = %while.cond.22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SpecialFreeUnit(%struct.CPpmd8* %p, i8* %ptr) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %1, i32 0, i32 15
  %2 = load i8*, i8** %UnitsStart, align 8
  %cmp = icmp ne i8* %0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %4 = load i8*, i8** %ptr.addr, align 8
  call void @InsertNode(%struct.CPpmd8* %3, i8* %4, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %5, i32 0, i32 15
  %6 = load i8*, i8** %UnitsStart1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 12
  store i8* %add.ptr, i8** %UnitsStart1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Refresh(%struct.CPpmd8* %p, %struct.CPpmd8_Context_* %ctx, i32 %oldNU, i32 %scale) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %ctx.addr = alloca %struct.CPpmd8_Context_*, align 8
  %oldNU.addr = alloca i32, align 4
  %scale.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %escFreq = alloca i32, align 4
  %sumFreq = alloca i32, align 4
  %flags = alloca i32, align 4
  %s = alloca %struct.CPpmd_State*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store %struct.CPpmd8_Context_* %ctx, %struct.CPpmd8_Context_** %ctx.addr, align 8
  store i32 %oldNU, i32* %oldNU.addr, align 4
  store i32 %scale, i32* %scale.addr, align 4
  %0 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %0, i32 0, i32 0
  %1 = load i8, i8* %NumStats, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %i, align 4
  %2 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 11
  %4 = load i8*, i8** %Base, align 8
  %5 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %Stats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %5, i32 0, i32 3
  %6 = load i32, i32* %Stats, align 4
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %7 = bitcast i8* %add.ptr to %struct.CPpmd_State*
  %8 = bitcast %struct.CPpmd_State* %7 to i8*
  %9 = load i32, i32* %oldNU.addr, align 4
  %10 = load i32, i32* %i, align 4
  %add = add i32 %10, 2
  %shr = lshr i32 %add, 1
  %call = call i8* @ShrinkUnits(%struct.CPpmd8* %2, i8* %8, i32 %9, i32 %shr)
  %11 = bitcast i8* %call to %struct.CPpmd_State*
  store %struct.CPpmd_State* %11, %struct.CPpmd_State** %s, align 8
  %12 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %13 = bitcast %struct.CPpmd_State* %12 to i8*
  %14 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %14, i32 0, i32 11
  %15 = load i8*, i8** %Base1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv2 = trunc i64 %sub.ptr.sub to i32
  %16 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %Stats3 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %16, i32 0, i32 3
  store i32 %conv2, i32* %Stats3, align 4
  %17 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %Flags = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %17, i32 0, i32 1
  %18 = load i8, i8* %Flags, align 1
  %conv4 = zext i8 %18 to i32
  %19 = load i32, i32* %scale.addr, align 4
  %mul = mul i32 4, %19
  %add5 = add i32 16, %mul
  %and = and i32 %conv4, %add5
  %20 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %20, i32 0, i32 0
  %21 = load i8, i8* %Symbol, align 1
  %conv6 = zext i8 %21 to i32
  %cmp = icmp sge i32 %conv6, 64
  %conv7 = zext i1 %cmp to i32
  %mul8 = mul nsw i32 8, %conv7
  %add9 = add i32 %and, %mul8
  store i32 %add9, i32* %flags, align 4
  %22 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %22, i32 0, i32 2
  %23 = load i16, i16* %SummFreq, align 2
  %conv10 = zext i16 %23 to i32
  %24 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %24, i32 0, i32 1
  %25 = load i8, i8* %Freq, align 1
  %conv11 = zext i8 %25 to i32
  %sub = sub nsw i32 %conv10, %conv11
  store i32 %sub, i32* %escFreq, align 4
  %26 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq12 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %26, i32 0, i32 1
  %27 = load i8, i8* %Freq12, align 1
  %conv13 = zext i8 %27 to i32
  %28 = load i32, i32* %scale.addr, align 4
  %add14 = add i32 %conv13, %28
  %29 = load i32, i32* %scale.addr, align 4
  %shr15 = lshr i32 %add14, %29
  %conv16 = trunc i32 %shr15 to i8
  %30 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq17 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %30, i32 0, i32 1
  store i8 %conv16, i8* %Freq17, align 1
  %conv18 = zext i8 %conv16 to i32
  store i32 %conv18, i32* %sumFreq, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %31 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %31, i32 1
  store %struct.CPpmd_State* %incdec.ptr, %struct.CPpmd_State** %s, align 8
  %Freq19 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %incdec.ptr, i32 0, i32 1
  %32 = load i8, i8* %Freq19, align 1
  %conv20 = zext i8 %32 to i32
  %33 = load i32, i32* %escFreq, align 4
  %sub21 = sub i32 %33, %conv20
  store i32 %sub21, i32* %escFreq, align 4
  %34 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq22 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %34, i32 0, i32 1
  %35 = load i8, i8* %Freq22, align 1
  %conv23 = zext i8 %35 to i32
  %36 = load i32, i32* %scale.addr, align 4
  %add24 = add i32 %conv23, %36
  %37 = load i32, i32* %scale.addr, align 4
  %shr25 = lshr i32 %add24, %37
  %conv26 = trunc i32 %shr25 to i8
  %38 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq27 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %38, i32 0, i32 1
  store i8 %conv26, i8* %Freq27, align 1
  %conv28 = zext i8 %conv26 to i32
  %39 = load i32, i32* %sumFreq, align 4
  %add29 = add i32 %39, %conv28
  store i32 %add29, i32* %sumFreq, align 4
  %40 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol30 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %40, i32 0, i32 0
  %41 = load i8, i8* %Symbol30, align 1
  %conv31 = zext i8 %41 to i32
  %cmp32 = icmp sge i32 %conv31, 64
  %conv33 = zext i1 %cmp32 to i32
  %mul34 = mul nsw i32 8, %conv33
  %42 = load i32, i32* %flags, align 4
  %or = or i32 %42, %mul34
  store i32 %or, i32* %flags, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %43 = load i32, i32* %i, align 4
  %dec = add i32 %43, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %44 = load i32, i32* %sumFreq, align 4
  %45 = load i32, i32* %escFreq, align 4
  %46 = load i32, i32* %scale.addr, align 4
  %add35 = add i32 %45, %46
  %47 = load i32, i32* %scale.addr, align 4
  %shr36 = lshr i32 %add35, %47
  %add37 = add i32 %44, %shr36
  %conv38 = trunc i32 %add37 to i16
  %48 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %SummFreq39 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %48, i32 0, i32 2
  store i16 %conv38, i16* %SummFreq39, align 2
  %49 = load i32, i32* %flags, align 4
  %conv40 = trunc i32 %49 to i8
  %50 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %Flags41 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %50, i32 0, i32 1
  store i8 %conv40, i8* %Flags41, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @GetUsedMemory(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %v = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 0, i32* %v, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 38
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Stamps = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %2, i32 0, i32 25
  %arrayidx = getelementptr inbounds [38 x i32], [38 x i32]* %Stamps, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %4 to i64
  %5 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Indx2Units = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %5, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units, i32 0, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %6 to i32
  %mul = mul i32 %3, %conv
  %7 = load i32, i32* %v, align 4
  %add = add i32 %7, %mul
  store i32 %add, i32* %v, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Size = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %9, i32 0, i32 9
  %10 = load i32, i32* %Size, align 4
  %11 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %HiUnit = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %11, i32 0, i32 13
  %12 = load i8*, i8** %HiUnit, align 8
  %13 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %LoUnit = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %13, i32 0, i32 12
  %14 = load i8*, i8** %LoUnit, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv3 = trunc i64 %sub.ptr.sub to i32
  %sub = sub i32 %10, %conv3
  %15 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %15, i32 0, i32 15
  %16 = load i8*, i8** %UnitsStart, align 8
  %17 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Text = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %17, i32 0, i32 14
  %18 = load i8*, i8** %Text, align 8
  %sub.ptr.lhs.cast4 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %18 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  %conv7 = trunc i64 %sub.ptr.sub6 to i32
  %sub8 = sub i32 %sub, %conv7
  %19 = load i32, i32* %v, align 4
  %mul9 = mul i32 %19, 12
  %sub10 = sub i32 %sub8, %mul9
  ret i32 %sub10
}

; Function Attrs: nounwind uwtable
define internal i32 @CutOff(%struct.CPpmd8* %p, %struct.CPpmd8_Context_* %ctx, i32 %order) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CPpmd8*, align 8
  %ctx.addr = alloca %struct.CPpmd8_Context_*, align 8
  %order.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %s = alloca %struct.CPpmd_State*, align 8
  %s2 = alloca %struct.CPpmd_State*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store %struct.CPpmd8_Context_* %ctx, %struct.CPpmd8_Context_** %ctx.addr, align 8
  store i32 %order, i32* %order.addr, align 4
  %0 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %0, i32 0, i32 0
  %1 = load i8, i8* %NumStats, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end.31, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %2, i32 0, i32 2
  %3 = bitcast i16* %SummFreq to %struct.CPpmd_State*
  store %struct.CPpmd_State* %3, %struct.CPpmd_State** %s, align 8
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 11
  %5 = load i8*, i8** %Base, align 8
  %6 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorLow = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %6, i32 0, i32 2
  %7 = load i16, i16* %SuccessorLow, align 1
  %conv = zext i16 %7 to i32
  %8 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorHigh = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %8, i32 0, i32 3
  %9 = load i16, i16* %SuccessorHigh, align 1
  %conv2 = zext i16 %9 to i32
  %shl = shl i32 %conv2, 16
  %or = or i32 %conv, %shl
  %idx.ext = zext i32 %or to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %10 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %10, i32 0, i32 15
  %11 = load i8*, i8** %UnitsStart, align 8
  %cmp = icmp uge i8* %add.ptr, %11
  br i1 %cmp, label %if.then.4, label %if.end.30

if.then.4:                                        ; preds = %if.then
  %12 = load i32, i32* %order.addr, align 4
  %13 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxOrder = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %13, i32 0, i32 6
  %14 = load i32, i32* %MaxOrder, align 4
  %cmp5 = icmp ult i32 %12, %14
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.4
  %15 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %16 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %17 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base8 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %17, i32 0, i32 11
  %18 = load i8*, i8** %Base8, align 8
  %19 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorLow9 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %19, i32 0, i32 2
  %20 = load i16, i16* %SuccessorLow9, align 1
  %conv10 = zext i16 %20 to i32
  %21 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorHigh11 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %21, i32 0, i32 3
  %22 = load i16, i16* %SuccessorHigh11, align 1
  %conv12 = zext i16 %22 to i32
  %shl13 = shl i32 %conv12, 16
  %or14 = or i32 %conv10, %shl13
  %idx.ext15 = zext i32 %or14 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %18, i64 %idx.ext15
  %23 = bitcast i8* %add.ptr16 to %struct.CPpmd8_Context_*
  %24 = load i32, i32* %order.addr, align 4
  %add = add i32 %24, 1
  %call = call i32 @CutOff(%struct.CPpmd8* %16, %struct.CPpmd8_Context_* %23, i32 %add)
  call void @SetSuccessor(%struct.CPpmd_State* %15, i32 %call)
  br label %if.end

if.else:                                          ; preds = %if.then.4
  %25 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  call void @SetSuccessor(%struct.CPpmd_State* %25, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  %26 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorLow17 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %26, i32 0, i32 2
  %27 = load i16, i16* %SuccessorLow17, align 1
  %conv18 = zext i16 %27 to i32
  %28 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorHigh19 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %28, i32 0, i32 3
  %29 = load i16, i16* %SuccessorHigh19, align 1
  %conv20 = zext i16 %29 to i32
  %shl21 = shl i32 %conv20, 16
  %or22 = or i32 %conv18, %shl21
  %tobool23 = icmp ne i32 %or22, 0
  br i1 %tobool23, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %30 = load i32, i32* %order.addr, align 4
  %cmp24 = icmp ule i32 %30, 9
  br i1 %cmp24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %lor.lhs.false, %if.end
  %31 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %32 = bitcast %struct.CPpmd8_Context_* %31 to i8*
  %33 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base27 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %33, i32 0, i32 11
  %34 = load i8*, i8** %Base27, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv28 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv28, i32* %retval
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then
  %35 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %36 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %37 = bitcast %struct.CPpmd8_Context_* %36 to i8*
  call void @SpecialFreeUnit(%struct.CPpmd8* %35, i8* %37)
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %entry
  %38 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %39 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base32 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %39, i32 0, i32 11
  %40 = load i8*, i8** %Base32, align 8
  %41 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %Stats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %41, i32 0, i32 3
  %42 = load i32, i32* %Stats, align 4
  %idx.ext33 = zext i32 %42 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %40, i64 %idx.ext33
  %43 = bitcast i8* %add.ptr34 to %struct.CPpmd_State*
  %44 = bitcast %struct.CPpmd_State* %43 to i8*
  %45 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %NumStats35 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %45, i32 0, i32 0
  %46 = load i8, i8* %NumStats35, align 1
  %conv36 = zext i8 %46 to i32
  %add37 = add i32 %conv36, 2
  %shr = lshr i32 %add37, 1
  store i32 %shr, i32* %tmp, align 4
  %call38 = call i8* @MoveUnitsUp(%struct.CPpmd8* %38, i8* %44, i32 %shr)
  %47 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base39 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %47, i32 0, i32 11
  %48 = load i8*, i8** %Base39, align 8
  %sub.ptr.lhs.cast40 = ptrtoint i8* %call38 to i64
  %sub.ptr.rhs.cast41 = ptrtoint i8* %48 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  %conv43 = trunc i64 %sub.ptr.sub42 to i32
  %49 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %Stats44 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %49, i32 0, i32 3
  store i32 %conv43, i32* %Stats44, align 4
  %50 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base45 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %50, i32 0, i32 11
  %51 = load i8*, i8** %Base45, align 8
  %52 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %Stats46 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %52, i32 0, i32 3
  %53 = load i32, i32* %Stats46, align 4
  %idx.ext47 = zext i32 %53 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %51, i64 %idx.ext47
  %54 = bitcast i8* %add.ptr48 to %struct.CPpmd_State*
  %55 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %NumStats49 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %55, i32 0, i32 0
  %56 = load i8, i8* %NumStats49, align 1
  %conv50 = zext i8 %56 to i32
  store i32 %conv50, i32* %i, align 4
  %idx.ext51 = sext i32 %conv50 to i64
  %add.ptr52 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %54, i64 %idx.ext51
  store %struct.CPpmd_State* %add.ptr52, %struct.CPpmd_State** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.31
  %57 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %58 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base53 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %58, i32 0, i32 11
  %59 = load i8*, i8** %Base53, align 8
  %60 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %Stats54 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %60, i32 0, i32 3
  %61 = load i32, i32* %Stats54, align 4
  %idx.ext55 = zext i32 %61 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %59, i64 %idx.ext55
  %62 = bitcast i8* %add.ptr56 to %struct.CPpmd_State*
  %cmp57 = icmp uge %struct.CPpmd_State* %57, %62
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base59 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %63, i32 0, i32 11
  %64 = load i8*, i8** %Base59, align 8
  %65 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorLow60 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %65, i32 0, i32 2
  %66 = load i16, i16* %SuccessorLow60, align 1
  %conv61 = zext i16 %66 to i32
  %67 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorHigh62 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %67, i32 0, i32 3
  %68 = load i16, i16* %SuccessorHigh62, align 1
  %conv63 = zext i16 %68 to i32
  %shl64 = shl i32 %conv63, 16
  %or65 = or i32 %conv61, %shl64
  %idx.ext66 = zext i32 %or65 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %64, i64 %idx.ext66
  %69 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart68 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %69, i32 0, i32 15
  %70 = load i8*, i8** %UnitsStart68, align 8
  %cmp69 = icmp ult i8* %add.ptr67, %70
  br i1 %cmp69, label %if.then.71, label %if.else.79

if.then.71:                                       ; preds = %for.body
  %71 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base73 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %71, i32 0, i32 11
  %72 = load i8*, i8** %Base73, align 8
  %73 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %Stats74 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %73, i32 0, i32 3
  %74 = load i32, i32* %Stats74, align 4
  %idx.ext75 = zext i32 %74 to i64
  %add.ptr76 = getelementptr inbounds i8, i8* %72, i64 %idx.ext75
  %75 = bitcast i8* %add.ptr76 to %struct.CPpmd_State*
  %76 = load i32, i32* %i, align 4
  %dec = add nsw i32 %76, -1
  store i32 %dec, i32* %i, align 4
  %idx.ext77 = sext i32 %76 to i64
  %add.ptr78 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %75, i64 %idx.ext77
  store %struct.CPpmd_State* %add.ptr78, %struct.CPpmd_State** %s2, align 8
  %77 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  call void @SetSuccessor(%struct.CPpmd_State* %77, i32 0)
  %78 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %79 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s2, align 8
  call void @SwapStates(%struct.CPpmd_State* %78, %struct.CPpmd_State* %79)
  br label %if.end.97

if.else.79:                                       ; preds = %for.body
  %80 = load i32, i32* %order.addr, align 4
  %81 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MaxOrder80 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %81, i32 0, i32 6
  %82 = load i32, i32* %MaxOrder80, align 4
  %cmp81 = icmp ult i32 %80, %82
  br i1 %cmp81, label %if.then.83, label %if.else.95

if.then.83:                                       ; preds = %if.else.79
  %83 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %84 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %85 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base84 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %85, i32 0, i32 11
  %86 = load i8*, i8** %Base84, align 8
  %87 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorLow85 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %87, i32 0, i32 2
  %88 = load i16, i16* %SuccessorLow85, align 1
  %conv86 = zext i16 %88 to i32
  %89 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorHigh87 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %89, i32 0, i32 3
  %90 = load i16, i16* %SuccessorHigh87, align 1
  %conv88 = zext i16 %90 to i32
  %shl89 = shl i32 %conv88, 16
  %or90 = or i32 %conv86, %shl89
  %idx.ext91 = zext i32 %or90 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %86, i64 %idx.ext91
  %91 = bitcast i8* %add.ptr92 to %struct.CPpmd8_Context_*
  %92 = load i32, i32* %order.addr, align 4
  %add93 = add i32 %92, 1
  %call94 = call i32 @CutOff(%struct.CPpmd8* %84, %struct.CPpmd8_Context_* %91, i32 %add93)
  call void @SetSuccessor(%struct.CPpmd_State* %83, i32 %call94)
  br label %if.end.96

if.else.95:                                       ; preds = %if.else.79
  %93 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  call void @SetSuccessor(%struct.CPpmd_State* %93, i32 0)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.95, %if.then.83
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.71
  br label %for.inc

for.inc:                                          ; preds = %if.end.97
  %94 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %94, i32 -1
  store %struct.CPpmd_State* %incdec.ptr, %struct.CPpmd_State** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %95 = load i32, i32* %i, align 4
  %96 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %NumStats98 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %96, i32 0, i32 0
  %97 = load i8, i8* %NumStats98, align 1
  %conv99 = zext i8 %97 to i32
  %cmp100 = icmp ne i32 %95, %conv99
  br i1 %cmp100, label %land.lhs.true, label %if.end.141

land.lhs.true:                                    ; preds = %for.end
  %98 = load i32, i32* %order.addr, align 4
  %tobool102 = icmp ne i32 %98, 0
  br i1 %tobool102, label %if.then.103, label %if.end.141

if.then.103:                                      ; preds = %land.lhs.true
  %99 = load i32, i32* %i, align 4
  %conv104 = trunc i32 %99 to i8
  %100 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %NumStats105 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %100, i32 0, i32 0
  store i8 %conv104, i8* %NumStats105, align 1
  %101 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base106 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %101, i32 0, i32 11
  %102 = load i8*, i8** %Base106, align 8
  %103 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %Stats107 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %103, i32 0, i32 3
  %104 = load i32, i32* %Stats107, align 4
  %idx.ext108 = zext i32 %104 to i64
  %add.ptr109 = getelementptr inbounds i8, i8* %102, i64 %idx.ext108
  %105 = bitcast i8* %add.ptr109 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %105, %struct.CPpmd_State** %s, align 8
  %106 = load i32, i32* %i, align 4
  %cmp110 = icmp slt i32 %106, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.then.103
  %107 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %108 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %109 = bitcast %struct.CPpmd_State* %108 to i8*
  %110 = load i32, i32* %tmp, align 4
  call void @FreeUnits(%struct.CPpmd8* %107, i8* %109, i32 %110)
  %111 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %112 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %113 = bitcast %struct.CPpmd8_Context_* %112 to i8*
  call void @SpecialFreeUnit(%struct.CPpmd8* %111, i8* %113)
  store i32 0, i32* %retval
  br label %return

if.end.113:                                       ; preds = %if.then.103
  %114 = load i32, i32* %i, align 4
  %cmp114 = icmp eq i32 %114, 0
  br i1 %cmp114, label %if.then.116, label %if.else.134

if.then.116:                                      ; preds = %if.end.113
  %115 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %Flags = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %115, i32 0, i32 1
  %116 = load i8, i8* %Flags, align 1
  %conv117 = zext i8 %116 to i32
  %and = and i32 %conv117, 16
  %117 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %117, i32 0, i32 0
  %118 = load i8, i8* %Symbol, align 1
  %conv118 = zext i8 %118 to i32
  %cmp119 = icmp sge i32 %conv118, 64
  %conv120 = zext i1 %cmp119 to i32
  %mul = mul nsw i32 8, %conv120
  %add121 = add nsw i32 %and, %mul
  %conv122 = trunc i32 %add121 to i8
  %119 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %Flags123 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %119, i32 0, i32 1
  store i8 %conv122, i8* %Flags123, align 1
  %120 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %SummFreq124 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %120, i32 0, i32 2
  %121 = bitcast i16* %SummFreq124 to %struct.CPpmd_State*
  %122 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %123 = bitcast %struct.CPpmd_State* %121 to i8*
  %124 = bitcast %struct.CPpmd_State* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 6, i32 1, i1 false)
  %125 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %126 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %127 = bitcast %struct.CPpmd_State* %126 to i8*
  %128 = load i32, i32* %tmp, align 4
  call void @FreeUnits(%struct.CPpmd8* %125, i8* %127, i32 %128)
  %129 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %SummFreq125 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %129, i32 0, i32 2
  %130 = bitcast i16* %SummFreq125 to %struct.CPpmd_State*
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %130, i32 0, i32 1
  %131 = load i8, i8* %Freq, align 1
  %conv126 = zext i8 %131 to i32
  %add127 = add i32 %conv126, 11
  %conv128 = trunc i32 %add127 to i8
  %conv129 = zext i8 %conv128 to i32
  %shr130 = ashr i32 %conv129, 3
  %conv131 = trunc i32 %shr130 to i8
  %132 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %SummFreq132 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %132, i32 0, i32 2
  %133 = bitcast i16* %SummFreq132 to %struct.CPpmd_State*
  %Freq133 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %133, i32 0, i32 1
  store i8 %conv131, i8* %Freq133, align 1
  br label %if.end.140

if.else.134:                                      ; preds = %if.end.113
  %134 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %135 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %136 = load i32, i32* %tmp, align 4
  %137 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %SummFreq135 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %137, i32 0, i32 2
  %138 = load i16, i16* %SummFreq135, align 2
  %conv136 = zext i16 %138 to i32
  %139 = load i32, i32* %i, align 4
  %mul137 = mul nsw i32 16, %139
  %cmp138 = icmp sgt i32 %conv136, %mul137
  %conv139 = zext i1 %cmp138 to i32
  call void @Refresh(%struct.CPpmd8* %134, %struct.CPpmd8_Context_* %135, i32 %136, i32 %conv139)
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.134, %if.then.116
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %land.lhs.true, %for.end
  %140 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %ctx.addr, align 8
  %141 = bitcast %struct.CPpmd8_Context_* %140 to i8*
  %142 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base142 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %142, i32 0, i32 11
  %143 = load i8*, i8** %Base142, align 8
  %sub.ptr.lhs.cast143 = ptrtoint i8* %141 to i64
  %sub.ptr.rhs.cast144 = ptrtoint i8* %143 to i64
  %sub.ptr.sub145 = sub i64 %sub.ptr.lhs.cast143, %sub.ptr.rhs.cast144
  %conv146 = trunc i64 %sub.ptr.sub145 to i32
  store i32 %conv146, i32* %retval
  br label %return

return:                                           ; preds = %if.end.141, %if.then.112, %if.end.30, %if.then.26
  %144 = load i32, i32* %retval
  ret i32 %144
}

; Function Attrs: nounwind uwtable
define internal void @ExpandTextArea(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %count = alloca [38 x i32], align 16
  %i = alloca i32, align 4
  %node = alloca %struct.CPpmd8_Node_*, align 8
  %next = alloca i32*, align 8
  %node17 = alloca %struct.CPpmd8_Node_*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  %0 = bitcast [38 x i32]* %count to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 152, i32 16, i1 false)
  %1 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %LoUnit = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %1, i32 0, i32 12
  %2 = load i8*, i8** %LoUnit, align 8
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %HiUnit = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 13
  %4 = load i8*, i8** %HiUnit, align 8
  %cmp = icmp ne i8* %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %LoUnit1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %5, i32 0, i32 12
  %6 = load i8*, i8** %LoUnit1, align 8
  %7 = bitcast i8* %6 to %struct.CPpmd8_Node_*
  %Stamp = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %7, i32 0, i32 0
  store i32 0, i32* %Stamp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %8, i32 0, i32 15
  %9 = load i8*, i8** %UnitsStart, align 8
  %10 = bitcast i8* %9 to %struct.CPpmd8_Node_*
  store %struct.CPpmd8_Node_* %10, %struct.CPpmd8_Node_** %node, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node, align 8
  %Stamp2 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %11, i32 0, i32 0
  %12 = load i32, i32* %Stamp2, align 4
  %cmp3 = icmp eq i32 %12, -1
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node, align 8
  %Stamp4 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %13, i32 0, i32 0
  store i32 0, i32* %Stamp4, align 4
  %14 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node, align 8
  %NU = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %14, i32 0, i32 2
  %15 = load i32, i32* %NU, align 4
  %sub = sub i32 %15, 1
  %idxprom = zext i32 %sub to i64
  %16 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %16, i32 0, i32 23
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx, i32 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %idxprom5 = zext i8 %17 to i64
  %arrayidx6 = getelementptr inbounds [38 x i32], [38 x i32]* %count, i32 0, i64 %idxprom5
  %18 = load i32, i32* %arrayidx6, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node, align 8
  %NU7 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %19, i32 0, i32 2
  %20 = load i32, i32* %NU7, align 4
  %21 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node, align 8
  %idx.ext = zext i32 %20 to i64
  %add.ptr = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %21, i64 %idx.ext
  store %struct.CPpmd8_Node_* %add.ptr, %struct.CPpmd8_Node_** %node, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node, align 8
  %23 = bitcast %struct.CPpmd8_Node_* %22 to i8*
  %24 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart8 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %24, i32 0, i32 15
  store i8* %23, i8** %UnitsStart8, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.37, %for.end
  %25 = load i32, i32* %i, align 4
  %cmp10 = icmp ult i32 %25, 38
  br i1 %cmp10, label %for.body.11, label %for.end.39

for.body.11:                                      ; preds = %for.cond.9
  %26 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %26 to i64
  %27 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %27, i32 0, i32 24
  %arrayidx13 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 %idxprom12
  store i32* %arrayidx13, i32** %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.body.11
  %28 = load i32, i32* %i, align 4
  %idxprom14 = zext i32 %28 to i64
  %arrayidx15 = getelementptr inbounds [38 x i32], [38 x i32]* %count, i32 0, i64 %idxprom14
  %29 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp ne i32 %29, 0
  br i1 %cmp16, label %while.body, label %while.end.36

while.body:                                       ; preds = %while.cond
  %30 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %30, i32 0, i32 11
  %31 = load i8*, i8** %Base, align 8
  %32 = load i32*, i32** %next, align 8
  %33 = load i32, i32* %32, align 4
  %idx.ext18 = zext i32 %33 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %31, i64 %idx.ext18
  %34 = bitcast i8* %add.ptr19 to %struct.CPpmd8_Node_*
  store %struct.CPpmd8_Node_* %34, %struct.CPpmd8_Node_** %node17, align 8
  br label %while.cond.20

while.cond.20:                                    ; preds = %if.end.34, %while.body
  %35 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node17, align 8
  %Stamp21 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %35, i32 0, i32 0
  %36 = load i32, i32* %Stamp21, align 4
  %cmp22 = icmp eq i32 %36, 0
  br i1 %cmp22, label %while.body.23, label %while.end

while.body.23:                                    ; preds = %while.cond.20
  %37 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node17, align 8
  %Next = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %37, i32 0, i32 1
  %38 = load i32, i32* %Next, align 4
  %39 = load i32*, i32** %next, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base24 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %40, i32 0, i32 11
  %41 = load i8*, i8** %Base24, align 8
  %42 = load i32*, i32** %next, align 8
  %43 = load i32, i32* %42, align 4
  %idx.ext25 = zext i32 %43 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %41, i64 %idx.ext25
  %44 = bitcast i8* %add.ptr26 to %struct.CPpmd8_Node_*
  store %struct.CPpmd8_Node_* %44, %struct.CPpmd8_Node_** %node17, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom27 = zext i32 %45 to i64
  %46 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Stamps = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %46, i32 0, i32 25
  %arrayidx28 = getelementptr inbounds [38 x i32], [38 x i32]* %Stamps, i32 0, i64 %idxprom27
  %47 = load i32, i32* %arrayidx28, align 4
  %dec = add i32 %47, -1
  store i32 %dec, i32* %arrayidx28, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom29 = zext i32 %48 to i64
  %arrayidx30 = getelementptr inbounds [38 x i32], [38 x i32]* %count, i32 0, i64 %idxprom29
  %49 = load i32, i32* %arrayidx30, align 4
  %dec31 = add i32 %49, -1
  store i32 %dec31, i32* %arrayidx30, align 4
  %cmp32 = icmp eq i32 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %while.body.23
  br label %while.end

if.end.34:                                        ; preds = %while.body.23
  br label %while.cond.20

while.end:                                        ; preds = %if.then.33, %while.cond.20
  %50 = load %struct.CPpmd8_Node_*, %struct.CPpmd8_Node_** %node17, align 8
  %Next35 = getelementptr inbounds %struct.CPpmd8_Node_, %struct.CPpmd8_Node_* %50, i32 0, i32 1
  store i32* %Next35, i32** %next, align 8
  br label %while.cond

while.end.36:                                     ; preds = %while.cond
  br label %for.inc.37

for.inc.37:                                       ; preds = %while.end.36
  %51 = load i32, i32* %i, align 4
  %inc38 = add i32 %51, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.9

for.end.39:                                       ; preds = %for.cond.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @MoveUnitsUp(%struct.CPpmd8* %p, i8* %oldPtr, i32 %nu) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca %struct.CPpmd8*, align 8
  %oldPtr.addr = alloca i8*, align 8
  %nu.addr = alloca i32, align 4
  %indx = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %d = alloca i32*, align 8
  %s = alloca i32*, align 8
  %n = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i8* %oldPtr, i8** %oldPtr.addr, align 8
  store i32 %nu, i32* %nu.addr, align 4
  %0 = load i32, i32* %nu.addr, align 4
  %sub = sub i32 %0, 1
  %idxprom = zext i32 %sub to i64
  %1 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %1, i32 0, i32 23
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %indx, align 4
  %3 = load i8*, i8** %oldPtr.addr, align 8
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 15
  %5 = load i8*, i8** %UnitsStart, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 16384
  %cmp = icmp ugt i8* %3, %add.ptr
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i8*, i8** %oldPtr.addr, align 8
  %7 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %7, i32 0, i32 11
  %8 = load i8*, i8** %Base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv2 = trunc i64 %sub.ptr.sub to i32
  %9 = load i32, i32* %indx, align 4
  %idxprom3 = zext i32 %9 to i64
  %10 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %10, i32 0, i32 24
  %arrayidx4 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 %idxprom3
  %11 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp ugt i32 %conv2, %11
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load i8*, i8** %oldPtr.addr, align 8
  store i8* %12, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %14 = load i32, i32* %indx, align 4
  %call = call i8* @RemoveNode(%struct.CPpmd8* %13, i32 %14)
  store i8* %call, i8** %ptr, align 8
  %15 = load i8*, i8** %ptr, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %d, align 8
  %17 = load i8*, i8** %oldPtr.addr, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %s, align 8
  %19 = load i32, i32* %nu.addr, align 4
  store i32 %19, i32* %n, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %20 = load i32*, i32** %s, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx7, align 4
  %22 = load i32*, i32** %d, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %arrayidx8, align 4
  %23 = load i32*, i32** %s, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %23, i64 1
  %24 = load i32, i32* %arrayidx9, align 4
  %25 = load i32*, i32** %d, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %arrayidx10, align 4
  %26 = load i32*, i32** %s, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %26, i64 2
  %27 = load i32, i32* %arrayidx11, align 4
  %28 = load i32*, i32** %d, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 %27, i32* %arrayidx12, align 4
  %29 = load i32*, i32** %s, align 8
  %add.ptr13 = getelementptr inbounds i32, i32* %29, i64 3
  store i32* %add.ptr13, i32** %s, align 8
  %30 = load i32*, i32** %d, align 8
  %add.ptr14 = getelementptr inbounds i32, i32* %30, i64 3
  store i32* %add.ptr14, i32** %d, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %31 = load i32, i32* %n, align 4
  %dec = add i32 %31, -1
  store i32 %dec, i32* %n, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %32 = load i8*, i8** %oldPtr.addr, align 8
  %33 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart15 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %33, i32 0, i32 15
  %34 = load i8*, i8** %UnitsStart15, align 8
  %cmp16 = icmp ne i8* %32, %34
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.end
  %35 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %36 = load i8*, i8** %oldPtr.addr, align 8
  %37 = load i32, i32* %indx, align 4
  call void @InsertNode(%struct.CPpmd8* %35, i8* %36, i32 %37)
  br label %if.end.24

if.else:                                          ; preds = %do.end
  %38 = load i32, i32* %indx, align 4
  %idxprom19 = zext i32 %38 to i64
  %39 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Indx2Units = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %39, i32 0, i32 22
  %arrayidx20 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units, i32 0, i64 %idxprom19
  %40 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %40 to i32
  %mul = mul i32 %conv21, 12
  %41 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %UnitsStart22 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %41, i32 0, i32 15
  %42 = load i8*, i8** %UnitsStart22, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  store i8* %add.ptr23, i8** %UnitsStart22, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.18
  %43 = load i8*, i8** %ptr, align 8
  store i8* %43, i8** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  %44 = load i8*, i8** %retval
  ret i8* %44
}

; Function Attrs: nounwind uwtable
define internal void @FreeUnits(%struct.CPpmd8* %p, i8* %ptr, i32 %nu) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %ptr.addr = alloca i8*, align 8
  %nu.addr = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %nu, i32* %nu.addr, align 4
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = load i32, i32* %nu.addr, align 4
  %sub = sub i32 %2, 1
  %idxprom = zext i32 %sub to i64
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 23
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  call void @InsertNode(%struct.CPpmd8* %0, i8* %1, i32 %conv)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
