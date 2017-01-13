; ModuleID = './MultiSource.Benchmarks.7zip/2.Ppmd7.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPpmd7 = type { %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_*, %struct.CPpmd_State*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, [38 x i8], [128 x i8], [38 x i32], [256 x i8], [256 x i8], [256 x i8], %struct.CPpmd_See, [25 x [16 x %struct.CPpmd_See]], [128 x [64 x i16]] }
%struct.CPpmd7_Context_ = type { i16, i16, i32, i32 }
%struct.CPpmd_State = type { i8, i8, i16, i16 }
%struct.CPpmd_See = type { i16, i8, i8 }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct.CPpmd7_Node_ = type { i16, i16, i32, i32 }

@PPMD7_kExpEscape = constant [16 x i8] c"\19\0E\09\07\05\05\04\04\04\03\03\03\02\02\02\02", align 16
@kInitBinEsc = internal constant [8 x i16] [i16 15581, i16 7999, i16 22975, i16 18675, i16 25761, i16 23228, i16 26162, i16 24657], align 16

; Function Attrs: nounwind uwtable
define void @Ppmd7_Construct(%struct.CPpmd7* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %step = alloca i32, align 4
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 12
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
  %6 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %6, i32 0, i32 19
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
  %10 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Indx2Units = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %10, i32 0, i32 18
  %arrayidx4 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units, i32 0, i64 %idxprom3
  store i8 %conv2, i8* %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %11 = load i32, i32* %i, align 4
  %inc5 = add i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %NS2BSIndx = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %12, i32 0, i32 22
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* %NS2BSIndx, i32 0, i64 0
  store i8 0, i8* %arrayidx6, align 1
  %13 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %NS2BSIndx7 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %13, i32 0, i32 22
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* %NS2BSIndx7, i32 0, i64 1
  store i8 2, i8* %arrayidx8, align 1
  %14 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %NS2BSIndx9 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %14, i32 0, i32 22
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %NS2BSIndx9, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 2
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 4, i64 9, i32 1, i1 false)
  %15 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %NS2BSIndx10 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %15, i32 0, i32 22
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %NS2BSIndx10, i32 0, i32 0
  %add.ptr12 = getelementptr inbounds i8, i8* %arraydecay11, i64 11
  call void @llvm.memset.p0i8.i64(i8* %add.ptr12, i8 6, i64 245, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.20, %for.end
  %16 = load i32, i32* %i, align 4
  %cmp14 = icmp ult i32 %16, 3
  br i1 %cmp14, label %for.body.16, label %for.end.22

for.body.16:                                      ; preds = %for.cond.13
  %17 = load i32, i32* %i, align 4
  %conv17 = trunc i32 %17 to i8
  %18 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %18 to i64
  %19 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %NS2Indx = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %19, i32 0, i32 21
  %arrayidx19 = getelementptr inbounds [256 x i8], [256 x i8]* %NS2Indx, i32 0, i64 %idxprom18
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
  %cmp24 = icmp ult i32 %22, 256
  br i1 %cmp24, label %for.body.26, label %for.end.37

for.body.26:                                      ; preds = %for.cond.23
  %23 = load i32, i32* %m, align 4
  %conv27 = trunc i32 %23 to i8
  %24 = load i32, i32* %i, align 4
  %idxprom28 = zext i32 %24 to i64
  %25 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %NS2Indx29 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %25, i32 0, i32 21
  %arrayidx30 = getelementptr inbounds [256 x i8], [256 x i8]* %NS2Indx29, i32 0, i64 %idxprom28
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
  %sub = sub i32 %inc34, 2
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
  %29 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HB2Flag = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %29, i32 0, i32 23
  %30 = bitcast [256 x i8]* %HB2Flag to i8*
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 64, i32 4, i1 false)
  %31 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HB2Flag38 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %31, i32 0, i32 23
  %arraydecay39 = getelementptr inbounds [256 x i8], [256 x i8]* %HB2Flag38, i32 0, i32 0
  %add.ptr40 = getelementptr inbounds i8, i8* %arraydecay39, i64 64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr40, i8 8, i64 192, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @Ppmd7_Free(%struct.CPpmd7* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %0, i32 0, i32 1
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = bitcast %struct.ISzAlloc* %2 to i8*
  %4 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %4, i32 0, i32 12
  %5 = load i8*, i8** %Base, align 8
  call void %1(i8* %3, i8* %5)
  %6 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Size = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %6, i32 0, i32 10
  store i32 0, i32* %Size, align 4
  %7 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base1 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %7, i32 0, i32 12
  store i8* null, i8** %Base1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Ppmd7_Alloc(%struct.CPpmd7* %p, i32 %size, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CPpmd7*, align 8
  %size.addr = alloca i32, align 4
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 12
  %1 = load i8*, i8** %Base, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Size = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %2, i32 0, i32 10
  %3 = load i32, i32* %Size, align 4
  %4 = load i32, i32* %size.addr, align 4
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end.9

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %6 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @Ppmd7_Free(%struct.CPpmd7* %5, %struct.ISzAlloc* %6)
  %7 = load i32, i32* %size.addr, align 4
  %and = and i32 %7, 3
  %sub = sub i32 4, %and
  %8 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %AlignOffset = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %8, i32 0, i32 17
  store i32 %sub, i32* %AlignOffset, align 4
  %9 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %9, i32 0, i32 0
  %10 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %11 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %12 = bitcast %struct.ISzAlloc* %11 to i8*
  %13 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %AlignOffset2 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %13, i32 0, i32 17
  %14 = load i32, i32* %AlignOffset2, align 4
  %15 = load i32, i32* %size.addr, align 4
  %add = add i32 %14, %15
  %add3 = add i32 %add, 12
  %conv = zext i32 %add3 to i64
  %call = call i8* %10(i8* %12, i64 %conv)
  %16 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base4 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %16, i32 0, i32 12
  store i8* %call, i8** %Base4, align 8
  %cmp5 = icmp eq i8* %call, null
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %17 = load i32, i32* %size.addr, align 4
  %18 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Size8 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %18, i32 0, i32 10
  store i32 %17, i32* %Size8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define void @Ppmd7_Init(%struct.CPpmd7* %p, i32 %maxOrder) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  %maxOrder.addr = alloca i32, align 4
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  store i32 %maxOrder, i32* %maxOrder.addr, align 4
  %0 = load i32, i32* %maxOrder.addr, align 4
  %1 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MaxOrder = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %1, i32 0, i32 6
  store i32 %0, i32* %MaxOrder, align 4
  %2 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @RestartModel(%struct.CPpmd7* %2)
  %3 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %DummySee = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %3, i32 0, i32 24
  %Shift = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %DummySee, i32 0, i32 1
  store i8 7, i8* %Shift, align 1
  %4 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %DummySee1 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %4, i32 0, i32 24
  %Summ = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %DummySee1, i32 0, i32 0
  store i16 0, i16* %Summ, align 1
  %5 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %DummySee2 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %5, i32 0, i32 24
  %Count = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %DummySee2, i32 0, i32 2
  store i8 64, i8* %Count, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RestartModel(%struct.CPpmd7* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %s = alloca %struct.CPpmd_State*, align 8
  %dest = alloca i16*, align 8
  %val = alloca i16, align 2
  %s69 = alloca %struct.CPpmd_See*, align 8
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 20
  %1 = bitcast [38 x i32]* %FreeList to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 152, i32 4, i1 false)
  %2 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %2, i32 0, i32 12
  %3 = load i8*, i8** %Base, align 8
  %4 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %AlignOffset = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %4, i32 0, i32 17
  %5 = load i32, i32* %AlignOffset, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %6 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Text = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %6, i32 0, i32 15
  store i8* %add.ptr, i8** %Text, align 8
  %7 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Text1 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %7, i32 0, i32 15
  %8 = load i8*, i8** %Text1, align 8
  %9 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Size = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %9, i32 0, i32 10
  %10 = load i32, i32* %Size, align 4
  %idx.ext2 = zext i32 %10 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 %idx.ext2
  %11 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HiUnit = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %11, i32 0, i32 14
  store i8* %add.ptr3, i8** %HiUnit, align 8
  %12 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HiUnit4 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %12, i32 0, i32 14
  %13 = load i8*, i8** %HiUnit4, align 8
  %14 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Size5 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %14, i32 0, i32 10
  %15 = load i32, i32* %Size5, align 4
  %div = udiv i32 %15, 8
  %div6 = udiv i32 %div, 12
  %mul = mul i32 %div6, 7
  %mul7 = mul i32 %mul, 12
  %idx.ext8 = zext i32 %mul7 to i64
  %idx.neg = sub i64 0, %idx.ext8
  %add.ptr9 = getelementptr inbounds i8, i8* %13, i64 %idx.neg
  %16 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %UnitsStart = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %16, i32 0, i32 16
  store i8* %add.ptr9, i8** %UnitsStart, align 8
  %17 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %LoUnit = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %17, i32 0, i32 13
  store i8* %add.ptr9, i8** %LoUnit, align 8
  %18 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %GlueCount = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %18, i32 0, i32 11
  store i32 0, i32* %GlueCount, align 4
  %19 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MaxOrder = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %19, i32 0, i32 6
  %20 = load i32, i32* %MaxOrder, align 4
  %21 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %OrderFall = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %21, i32 0, i32 3
  store i32 %20, i32* %OrderFall, align 4
  %22 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MaxOrder10 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %22, i32 0, i32 6
  %23 = load i32, i32* %MaxOrder10, align 4
  %cmp = icmp ult i32 %23, 12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %24 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MaxOrder11 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %24, i32 0, i32 6
  %25 = load i32, i32* %MaxOrder11, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ 12, %cond.false ]
  %sub = sub nsw i32 0, %cond
  %sub12 = sub nsw i32 %sub, 1
  %26 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %InitRL = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %26, i32 0, i32 9
  store i32 %sub12, i32* %InitRL, align 4
  %27 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %RunLength = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %27, i32 0, i32 8
  store i32 %sub12, i32* %RunLength, align 4
  %28 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %PrevSuccess = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %28, i32 0, i32 5
  store i32 0, i32* %PrevSuccess, align 4
  %29 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HiUnit13 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %29, i32 0, i32 14
  %30 = load i8*, i8** %HiUnit13, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %30, i64 -12
  store i8* %add.ptr14, i8** %HiUnit13, align 8
  %31 = bitcast i8* %add.ptr14 to %struct.CPpmd7_Context_*
  %32 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MaxContext = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %32, i32 0, i32 1
  store %struct.CPpmd7_Context_* %31, %struct.CPpmd7_Context_** %MaxContext, align 8
  %33 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %33, i32 0, i32 0
  store %struct.CPpmd7_Context_* %31, %struct.CPpmd7_Context_** %MinContext, align 8
  %34 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext15 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %34, i32 0, i32 0
  %35 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext15, align 8
  %Suffix = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %35, i32 0, i32 3
  store i32 0, i32* %Suffix, align 4
  %36 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext16 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %36, i32 0, i32 0
  %37 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext16, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %37, i32 0, i32 0
  store i16 256, i16* %NumStats, align 2
  %38 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext17 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %38, i32 0, i32 0
  %39 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext17, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %39, i32 0, i32 1
  store i16 257, i16* %SummFreq, align 2
  %40 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %LoUnit18 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %40, i32 0, i32 13
  %41 = load i8*, i8** %LoUnit18, align 8
  %42 = bitcast i8* %41 to %struct.CPpmd_State*
  %43 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %43, i32 0, i32 2
  store %struct.CPpmd_State* %42, %struct.CPpmd_State** %FoundState, align 8
  %44 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %LoUnit19 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %44, i32 0, i32 13
  %45 = load i8*, i8** %LoUnit19, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %45, i64 1536
  store i8* %add.ptr20, i8** %LoUnit19, align 8
  %46 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState21 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %46, i32 0, i32 2
  %47 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState21, align 8
  %48 = bitcast %struct.CPpmd_State* %47 to i8*
  %49 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base22 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %49, i32 0, i32 12
  %50 = load i8*, i8** %Base22, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %50 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %51 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext23 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %51, i32 0, i32 0
  %52 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext23, align 8
  %Stats = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %52, i32 0, i32 2
  store i32 %conv, i32* %Stats, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %53 = load i32, i32* %i, align 4
  %cmp24 = icmp ult i32 %53, 256
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %i, align 4
  %idxprom = zext i32 %54 to i64
  %55 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState26 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %55, i32 0, i32 2
  %56 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState26, align 8
  %arrayidx = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %56, i64 %idxprom
  store %struct.CPpmd_State* %arrayidx, %struct.CPpmd_State** %s, align 8
  %57 = load i32, i32* %i, align 4
  %conv27 = trunc i32 %57 to i8
  %58 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %58, i32 0, i32 0
  store i8 %conv27, i8* %Symbol, align 1
  %59 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %59, i32 0, i32 1
  store i8 1, i8* %Freq, align 1
  %60 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  call void @SetSuccessor(%struct.CPpmd_State* %60, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %61 = load i32, i32* %i, align 4
  %inc = add i32 %61, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.58, %for.end
  %62 = load i32, i32* %i, align 4
  %cmp29 = icmp ult i32 %62, 128
  br i1 %cmp29, label %for.body.31, label %for.end.60

for.body.31:                                      ; preds = %for.cond.28
  store i32 0, i32* %k, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.55, %for.body.31
  %63 = load i32, i32* %k, align 4
  %cmp33 = icmp ult i32 %63, 8
  br i1 %cmp33, label %for.body.35, label %for.end.57

for.body.35:                                      ; preds = %for.cond.32
  %64 = load i32, i32* %i, align 4
  %idxprom36 = zext i32 %64 to i64
  %65 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %BinSumm = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %65, i32 0, i32 26
  %arrayidx37 = getelementptr inbounds [128 x [64 x i16]], [128 x [64 x i16]]* %BinSumm, i32 0, i64 %idxprom36
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx37, i32 0, i32 0
  %66 = load i32, i32* %k, align 4
  %idx.ext38 = zext i32 %66 to i64
  %add.ptr39 = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext38
  store i16* %add.ptr39, i16** %dest, align 8
  %67 = load i32, i32* %k, align 4
  %idxprom40 = zext i32 %67 to i64
  %arrayidx41 = getelementptr inbounds [8 x i16], [8 x i16]* @kInitBinEsc, i32 0, i64 %idxprom40
  %68 = load i16, i16* %arrayidx41, align 2
  %conv42 = zext i16 %68 to i32
  %69 = load i32, i32* %i, align 4
  %add = add i32 %69, 2
  %div43 = udiv i32 %conv42, %add
  %sub44 = sub i32 16384, %div43
  %conv45 = trunc i32 %sub44 to i16
  store i16 %conv45, i16* %val, align 2
  store i32 0, i32* %m, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.52, %for.body.35
  %70 = load i32, i32* %m, align 4
  %cmp47 = icmp ult i32 %70, 64
  br i1 %cmp47, label %for.body.49, label %for.end.54

for.body.49:                                      ; preds = %for.cond.46
  %71 = load i16, i16* %val, align 2
  %72 = load i32, i32* %m, align 4
  %idxprom50 = zext i32 %72 to i64
  %73 = load i16*, i16** %dest, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %73, i64 %idxprom50
  store i16 %71, i16* %arrayidx51, align 2
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.49
  %74 = load i32, i32* %m, align 4
  %add53 = add i32 %74, 8
  store i32 %add53, i32* %m, align 4
  br label %for.cond.46

for.end.54:                                       ; preds = %for.cond.46
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.54
  %75 = load i32, i32* %k, align 4
  %inc56 = add i32 %75, 1
  store i32 %inc56, i32* %k, align 4
  br label %for.cond.32

for.end.57:                                       ; preds = %for.cond.32
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.end.57
  %76 = load i32, i32* %i, align 4
  %inc59 = add i32 %76, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond.28

for.end.60:                                       ; preds = %for.cond.28
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.80, %for.end.60
  %77 = load i32, i32* %i, align 4
  %cmp62 = icmp ult i32 %77, 25
  br i1 %cmp62, label %for.body.64, label %for.end.82

for.body.64:                                      ; preds = %for.cond.61
  store i32 0, i32* %k, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.77, %for.body.64
  %78 = load i32, i32* %k, align 4
  %cmp66 = icmp ult i32 %78, 16
  br i1 %cmp66, label %for.body.68, label %for.end.79

for.body.68:                                      ; preds = %for.cond.65
  %79 = load i32, i32* %k, align 4
  %idxprom70 = zext i32 %79 to i64
  %80 = load i32, i32* %i, align 4
  %idxprom71 = zext i32 %80 to i64
  %81 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %See = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %81, i32 0, i32 25
  %arrayidx72 = getelementptr inbounds [25 x [16 x %struct.CPpmd_See]], [25 x [16 x %struct.CPpmd_See]]* %See, i32 0, i64 %idxprom71
  %arrayidx73 = getelementptr inbounds [16 x %struct.CPpmd_See], [16 x %struct.CPpmd_See]* %arrayidx72, i32 0, i64 %idxprom70
  store %struct.CPpmd_See* %arrayidx73, %struct.CPpmd_See** %s69, align 8
  %82 = load i32, i32* %i, align 4
  %mul74 = mul i32 5, %82
  %add75 = add i32 %mul74, 10
  %83 = load %struct.CPpmd_See*, %struct.CPpmd_See** %s69, align 8
  %Shift = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %83, i32 0, i32 1
  store i8 3, i8* %Shift, align 1
  %shl = shl i32 %add75, 3
  %conv76 = trunc i32 %shl to i16
  %84 = load %struct.CPpmd_See*, %struct.CPpmd_See** %s69, align 8
  %Summ = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %84, i32 0, i32 0
  store i16 %conv76, i16* %Summ, align 1
  %85 = load %struct.CPpmd_See*, %struct.CPpmd_See** %s69, align 8
  %Count = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %85, i32 0, i32 2
  store i8 4, i8* %Count, align 1
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.68
  %86 = load i32, i32* %k, align 4
  %inc78 = add i32 %86, 1
  store i32 %inc78, i32* %k, align 4
  br label %for.cond.65

for.end.79:                                       ; preds = %for.cond.65
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end.79
  %87 = load i32, i32* %i, align 4
  %inc81 = add i32 %87, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.61

for.end.82:                                       ; preds = %for.cond.61
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.CPpmd_See* @Ppmd7_MakeEscFreq(%struct.CPpmd7* %p, i32 %numMasked, i32* %escFreq) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  %numMasked.addr = alloca i32, align 4
  %escFreq.addr = alloca i32*, align 8
  %see = alloca %struct.CPpmd_See*, align 8
  %nonMasked = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  store i32 %numMasked, i32* %numMasked.addr, align 4
  store i32* %escFreq, i32** %escFreq.addr, align 8
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 0
  %1 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %1, i32 0, i32 0
  %2 = load i16, i16* %NumStats, align 2
  %conv = zext i16 %2 to i32
  %3 = load i32, i32* %numMasked.addr, align 4
  %sub = sub i32 %conv, %3
  store i32 %sub, i32* %nonMasked, align 4
  %4 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext1 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %4, i32 0, i32 0
  %5 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext1, align 8
  %NumStats2 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %5, i32 0, i32 0
  %6 = load i16, i16* %NumStats2, align 2
  %conv3 = zext i16 %6 to i32
  %cmp = icmp ne i32 %conv3, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %nonMasked, align 4
  %sub5 = sub i32 %7, 1
  %idxprom = zext i32 %sub5 to i64
  %8 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %NS2Indx = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %8, i32 0, i32 21
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %NS2Indx, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %idxprom6 = zext i8 %9 to i64
  %10 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %See = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %10, i32 0, i32 25
  %arrayidx7 = getelementptr inbounds [25 x [16 x %struct.CPpmd_See]], [25 x [16 x %struct.CPpmd_See]]* %See, i32 0, i64 %idxprom6
  %arraydecay = getelementptr inbounds [16 x %struct.CPpmd_See], [16 x %struct.CPpmd_See]* %arrayidx7, i32 0, i32 0
  %11 = load i32, i32* %nonMasked, align 4
  %12 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %12, i32 0, i32 12
  %13 = load i8*, i8** %Base, align 8
  %14 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext8 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %14, i32 0, i32 0
  %15 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext8, align 8
  %Suffix = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %15, i32 0, i32 3
  %16 = load i32, i32* %Suffix, align 4
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %17 = bitcast i8* %add.ptr to %struct.CPpmd7_Context_*
  %NumStats9 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %17, i32 0, i32 0
  %18 = load i16, i16* %NumStats9, align 2
  %conv10 = zext i16 %18 to i32
  %19 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext11 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %19, i32 0, i32 0
  %20 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext11, align 8
  %NumStats12 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %20, i32 0, i32 0
  %21 = load i16, i16* %NumStats12, align 2
  %conv13 = zext i16 %21 to i32
  %sub14 = sub i32 %conv10, %conv13
  %cmp15 = icmp ult i32 %11, %sub14
  %conv16 = zext i1 %cmp15 to i32
  %idx.ext17 = sext i32 %conv16 to i64
  %add.ptr18 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %arraydecay, i64 %idx.ext17
  %22 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext19 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %22, i32 0, i32 0
  %23 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext19, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %23, i32 0, i32 1
  %24 = load i16, i16* %SummFreq, align 2
  %conv20 = zext i16 %24 to i32
  %25 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext21 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %25, i32 0, i32 0
  %26 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext21, align 8
  %NumStats22 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %26, i32 0, i32 0
  %27 = load i16, i16* %NumStats22, align 2
  %conv23 = zext i16 %27 to i32
  %mul = mul nsw i32 11, %conv23
  %cmp24 = icmp slt i32 %conv20, %mul
  %conv25 = zext i1 %cmp24 to i32
  %mul26 = mul nsw i32 2, %conv25
  %idx.ext27 = sext i32 %mul26 to i64
  %add.ptr28 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %add.ptr18, i64 %idx.ext27
  %28 = load i32, i32* %numMasked.addr, align 4
  %29 = load i32, i32* %nonMasked, align 4
  %cmp29 = icmp ugt i32 %28, %29
  %conv30 = zext i1 %cmp29 to i32
  %mul31 = mul nsw i32 4, %conv30
  %idx.ext32 = sext i32 %mul31 to i64
  %add.ptr33 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %add.ptr28, i64 %idx.ext32
  %30 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HiBitsFlag = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %30, i32 0, i32 7
  %31 = load i32, i32* %HiBitsFlag, align 4
  %idx.ext34 = zext i32 %31 to i64
  %add.ptr35 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %add.ptr33, i64 %idx.ext34
  store %struct.CPpmd_See* %add.ptr35, %struct.CPpmd_See** %see, align 8
  %32 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %32, i32 0, i32 0
  %33 = load i16, i16* %Summ, align 1
  %conv36 = zext i16 %33 to i32
  %34 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Shift = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %34, i32 0, i32 1
  %35 = load i8, i8* %Shift, align 1
  %conv37 = zext i8 %35 to i32
  %shr = ashr i32 %conv36, %conv37
  store i32 %shr, i32* %r, align 4
  %36 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ38 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %36, i32 0, i32 0
  %37 = load i16, i16* %Summ38, align 1
  %conv39 = zext i16 %37 to i32
  %38 = load i32, i32* %r, align 4
  %sub40 = sub i32 %conv39, %38
  %conv41 = trunc i32 %sub40 to i16
  %39 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ42 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %39, i32 0, i32 0
  store i16 %conv41, i16* %Summ42, align 1
  %40 = load i32, i32* %r, align 4
  %41 = load i32, i32* %r, align 4
  %cmp43 = icmp eq i32 %41, 0
  %conv44 = zext i1 %cmp43 to i32
  %add = add i32 %40, %conv44
  %42 = load i32*, i32** %escFreq.addr, align 8
  store i32 %add, i32* %42, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %43 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %DummySee = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %43, i32 0, i32 24
  store %struct.CPpmd_See* %DummySee, %struct.CPpmd_See** %see, align 8
  %44 = load i32*, i32** %escFreq.addr, align 8
  store i32 1, i32* %44, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %45 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  ret %struct.CPpmd_See* %45
}

; Function Attrs: nounwind uwtable
define void @Ppmd7_Update1(%struct.CPpmd7* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  %s = alloca %struct.CPpmd_State*, align 8
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 2
  %1 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  store %struct.CPpmd_State* %1, %struct.CPpmd_State** %s, align 8
  %2 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %2, i32 0, i32 1
  %3 = load i8, i8* %Freq, align 1
  %conv = zext i8 %3 to i32
  %add = add nsw i32 %conv, 4
  %conv1 = trunc i32 %add to i8
  store i8 %conv1, i8* %Freq, align 1
  %4 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %4, i32 0, i32 0
  %5 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %5, i32 0, i32 1
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
  %14 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState13 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %14, i32 0, i32 2
  store %struct.CPpmd_State* %incdec.ptr, %struct.CPpmd_State** %FoundState13, align 8
  %15 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq14 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %15, i32 0, i32 1
  %16 = load i8, i8* %Freq14, align 1
  %conv15 = zext i8 %16 to i32
  %cmp16 = icmp sgt i32 %conv15, 124
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then
  %17 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @Rescale(%struct.CPpmd7* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %entry
  %18 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @NextContext(%struct.CPpmd7* %18)
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
define internal void @Rescale(%struct.CPpmd7* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  %i = alloca i32, align 4
  %adder = alloca i32, align 4
  %sumFreq = alloca i32, align 4
  %escFreq = alloca i32, align 4
  %stats = alloca %struct.CPpmd_State*, align 8
  %s = alloca %struct.CPpmd_State*, align 8
  %tmp = alloca %struct.CPpmd_State, align 1
  %s1 = alloca %struct.CPpmd_State*, align 8
  %tmp42 = alloca %struct.CPpmd_State, align 1
  %numStats = alloca i32, align 4
  %n0 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %tmp92 = alloca %struct.CPpmd_State, align 1
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 12
  %1 = load i8*, i8** %Base, align 8
  %2 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %2, i32 0, i32 0
  %3 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext, align 8
  %Stats = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %3, i32 0, i32 2
  %4 = load i32, i32* %Stats, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %5 = bitcast i8* %add.ptr to %struct.CPpmd_State*
  store %struct.CPpmd_State* %5, %struct.CPpmd_State** %stats, align 8
  %6 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %6, i32 0, i32 2
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
  %21 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext2 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %21, i32 0, i32 0
  %22 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext2, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %22, i32 0, i32 1
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
  %28 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %OrderFall = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %28, i32 0, i32 3
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
  %36 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext16 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %36, i32 0, i32 0
  %37 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext16, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %37, i32 0, i32 0
  %38 = load i16, i16* %NumStats, align 2
  %conv17 = zext i16 %38 to i32
  %sub18 = sub nsw i32 %conv17, 1
  store i32 %sub18, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.56, %for.end
  %39 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %39, i32 1
  store %struct.CPpmd_State* %incdec.ptr19, %struct.CPpmd_State** %s, align 8
  %Freq20 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %incdec.ptr19, i32 0, i32 1
  %40 = load i8, i8* %Freq20, align 1
  %conv21 = zext i8 %40 to i32
  %41 = load i32, i32* %escFreq, align 4
  %sub22 = sub i32 %41, %conv21
  store i32 %sub22, i32* %escFreq, align 4
  %42 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq23 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %42, i32 0, i32 1
  %43 = load i8, i8* %Freq23, align 1
  %conv24 = zext i8 %43 to i32
  %44 = load i32, i32* %adder, align 4
  %add25 = add i32 %conv24, %44
  %shr26 = lshr i32 %add25, 1
  %conv27 = trunc i32 %shr26 to i8
  %45 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq28 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %45, i32 0, i32 1
  store i8 %conv27, i8* %Freq28, align 1
  %46 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq29 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %46, i32 0, i32 1
  %47 = load i8, i8* %Freq29, align 1
  %conv30 = zext i8 %47 to i32
  %48 = load i32, i32* %sumFreq, align 4
  %add31 = add i32 %48, %conv30
  store i32 %add31, i32* %sumFreq, align 4
  %49 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %arrayidx32 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %49, i64 0
  %Freq33 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %arrayidx32, i32 0, i32 1
  %50 = load i8, i8* %Freq33, align 1
  %conv34 = zext i8 %50 to i32
  %51 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %arrayidx35 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %51, i64 -1
  %Freq36 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %arrayidx35, i32 0, i32 1
  %52 = load i8, i8* %Freq36, align 1
  %conv37 = zext i8 %52 to i32
  %cmp38 = icmp sgt i32 %conv34, %conv37
  br i1 %cmp38, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %53 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  store %struct.CPpmd_State* %53, %struct.CPpmd_State** %s1, align 8
  %54 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %55 = bitcast %struct.CPpmd_State* %tmp42 to i8*
  %56 = bitcast %struct.CPpmd_State* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 6, i32 1, i1 false)
  br label %do.body.43

do.body.43:                                       ; preds = %land.end, %if.then
  %57 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %arrayidx44 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %57, i64 0
  %58 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %arrayidx45 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %58, i64 -1
  %59 = bitcast %struct.CPpmd_State* %arrayidx44 to i8*
  %60 = bitcast %struct.CPpmd_State* %arrayidx45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 6, i32 1, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body.43
  %61 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %incdec.ptr46 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %61, i32 -1
  store %struct.CPpmd_State* %incdec.ptr46, %struct.CPpmd_State** %s1, align 8
  %62 = load %struct.CPpmd_State*, %struct.CPpmd_State** %stats, align 8
  %cmp47 = icmp ne %struct.CPpmd_State* %incdec.ptr46, %62
  br i1 %cmp47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %Freq49 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %tmp42, i32 0, i32 1
  %63 = load i8, i8* %Freq49, align 1
  %conv50 = zext i8 %63 to i32
  %64 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %arrayidx51 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %64, i64 -1
  %Freq52 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %arrayidx51, i32 0, i32 1
  %65 = load i8, i8* %Freq52, align 1
  %conv53 = zext i8 %65 to i32
  %cmp54 = icmp sgt i32 %conv50, %conv53
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %66 = phi i1 [ false, %do.cond ], [ %cmp54, %land.rhs ]
  br i1 %66, label %do.body.43, label %do.end

do.end:                                           ; preds = %land.end
  %67 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %68 = bitcast %struct.CPpmd_State* %67 to i8*
  %69 = bitcast %struct.CPpmd_State* %tmp42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 6, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond.56

do.cond.56:                                       ; preds = %if.end
  %70 = load i32, i32* %i, align 4
  %dec = add i32 %70, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  %71 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq58 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %71, i32 0, i32 1
  %72 = load i8, i8* %Freq58, align 1
  %conv59 = zext i8 %72 to i32
  %cmp60 = icmp eq i32 %conv59, 0
  br i1 %cmp60, label %if.then.62, label %if.end.131

if.then.62:                                       ; preds = %do.end.57
  %73 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext64 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %73, i32 0, i32 0
  %74 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext64, align 8
  %NumStats65 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %74, i32 0, i32 0
  %75 = load i16, i16* %NumStats65, align 2
  %conv66 = zext i16 %75 to i32
  store i32 %conv66, i32* %numStats, align 4
  br label %do.body.69

do.body.69:                                       ; preds = %do.cond.70, %if.then.62
  %76 = load i32, i32* %i, align 4
  %inc = add i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %do.cond.70

do.cond.70:                                       ; preds = %do.body.69
  %77 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr71 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %77, i32 -1
  store %struct.CPpmd_State* %incdec.ptr71, %struct.CPpmd_State** %s, align 8
  %Freq72 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %incdec.ptr71, i32 0, i32 1
  %78 = load i8, i8* %Freq72, align 1
  %conv73 = zext i8 %78 to i32
  %cmp74 = icmp eq i32 %conv73, 0
  br i1 %cmp74, label %do.body.69, label %do.end.76

do.end.76:                                        ; preds = %do.cond.70
  %79 = load i32, i32* %i, align 4
  %80 = load i32, i32* %escFreq, align 4
  %add77 = add i32 %80, %79
  store i32 %add77, i32* %escFreq, align 4
  %81 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext78 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %81, i32 0, i32 0
  %82 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext78, align 8
  %NumStats79 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %82, i32 0, i32 0
  %83 = load i16, i16* %NumStats79, align 2
  %conv80 = zext i16 %83 to i32
  %84 = load i32, i32* %i, align 4
  %sub81 = sub i32 %conv80, %84
  %conv82 = trunc i32 %sub81 to i16
  %85 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext83 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %85, i32 0, i32 0
  %86 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext83, align 8
  %NumStats84 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %86, i32 0, i32 0
  store i16 %conv82, i16* %NumStats84, align 2
  %87 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext85 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %87, i32 0, i32 0
  %88 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext85, align 8
  %NumStats86 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %88, i32 0, i32 0
  %89 = load i16, i16* %NumStats86, align 2
  %conv87 = zext i16 %89 to i32
  %cmp88 = icmp eq i32 %conv87, 1
  br i1 %cmp88, label %if.then.90, label %if.end.115

if.then.90:                                       ; preds = %do.end.76
  %90 = load %struct.CPpmd_State*, %struct.CPpmd_State** %stats, align 8
  %91 = bitcast %struct.CPpmd_State* %tmp92 to i8*
  %92 = bitcast %struct.CPpmd_State* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 6, i32 1, i1 false)
  br label %do.body.93

do.body.93:                                       ; preds = %do.cond.103, %if.then.90
  %Freq94 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %tmp92, i32 0, i32 1
  %93 = load i8, i8* %Freq94, align 1
  %conv95 = zext i8 %93 to i32
  %Freq96 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %tmp92, i32 0, i32 1
  %94 = load i8, i8* %Freq96, align 1
  %conv97 = zext i8 %94 to i32
  %shr98 = ashr i32 %conv97, 1
  %sub99 = sub nsw i32 %conv95, %shr98
  %conv100 = trunc i32 %sub99 to i8
  %Freq101 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %tmp92, i32 0, i32 1
  store i8 %conv100, i8* %Freq101, align 1
  %95 = load i32, i32* %escFreq, align 4
  %shr102 = lshr i32 %95, 1
  store i32 %shr102, i32* %escFreq, align 4
  br label %do.cond.103

do.cond.103:                                      ; preds = %do.body.93
  %96 = load i32, i32* %escFreq, align 4
  %cmp104 = icmp ugt i32 %96, 1
  br i1 %cmp104, label %do.body.93, label %do.end.106

do.end.106:                                       ; preds = %do.cond.103
  %97 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %98 = load %struct.CPpmd_State*, %struct.CPpmd_State** %stats, align 8
  %99 = bitcast %struct.CPpmd_State* %98 to i8*
  %100 = load i32, i32* %numStats, align 4
  %add107 = add i32 %100, 1
  %shr108 = lshr i32 %add107, 1
  %sub109 = sub i32 %shr108, 1
  %idxprom = zext i32 %sub109 to i64
  %101 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %101, i32 0, i32 19
  %arrayidx110 = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx, i32 0, i64 %idxprom
  %102 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %102 to i32
  call void @InsertNode(%struct.CPpmd7* %97, i8* %99, i32 %conv111)
  %103 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext112 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %103, i32 0, i32 0
  %104 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext112, align 8
  %SummFreq113 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %104, i32 0, i32 1
  %105 = bitcast i16* %SummFreq113 to %struct.CPpmd_State*
  %106 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState114 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %106, i32 0, i32 2
  store %struct.CPpmd_State* %105, %struct.CPpmd_State** %FoundState114, align 8
  %107 = bitcast %struct.CPpmd_State* %105 to i8*
  %108 = bitcast %struct.CPpmd_State* %tmp92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %108, i64 6, i32 1, i1 false)
  br label %return

if.end.115:                                       ; preds = %do.end.76
  %109 = load i32, i32* %numStats, align 4
  %add116 = add i32 %109, 1
  %shr117 = lshr i32 %add116, 1
  store i32 %shr117, i32* %n0, align 4
  %110 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext118 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %110, i32 0, i32 0
  %111 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext118, align 8
  %NumStats119 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %111, i32 0, i32 0
  %112 = load i16, i16* %NumStats119, align 2
  %conv120 = zext i16 %112 to i32
  %add121 = add nsw i32 %conv120, 1
  %shr122 = ashr i32 %add121, 1
  store i32 %shr122, i32* %n1, align 4
  %113 = load i32, i32* %n0, align 4
  %114 = load i32, i32* %n1, align 4
  %cmp123 = icmp ne i32 %113, %114
  br i1 %cmp123, label %if.then.125, label %if.end.130

if.then.125:                                      ; preds = %if.end.115
  %115 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %116 = load %struct.CPpmd_State*, %struct.CPpmd_State** %stats, align 8
  %117 = bitcast %struct.CPpmd_State* %116 to i8*
  %118 = load i32, i32* %n0, align 4
  %119 = load i32, i32* %n1, align 4
  %call = call i8* @ShrinkUnits(%struct.CPpmd7* %115, i8* %117, i32 %118, i32 %119)
  %120 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base126 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %120, i32 0, i32 12
  %121 = load i8*, i8** %Base126, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %121 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv127 = trunc i64 %sub.ptr.sub to i32
  %122 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext128 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %122, i32 0, i32 0
  %123 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext128, align 8
  %Stats129 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %123, i32 0, i32 2
  store i32 %conv127, i32* %Stats129, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.125, %if.end.115
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %do.end.57
  %124 = load i32, i32* %sumFreq, align 4
  %125 = load i32, i32* %escFreq, align 4
  %add132 = add i32 %124, %125
  %126 = load i32, i32* %escFreq, align 4
  %shr133 = lshr i32 %126, 1
  %sub134 = sub i32 %add132, %shr133
  %conv135 = trunc i32 %sub134 to i16
  %127 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext136 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %127, i32 0, i32 0
  %128 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext136, align 8
  %SummFreq137 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %128, i32 0, i32 1
  store i16 %conv135, i16* %SummFreq137, align 2
  %129 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base138 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %129, i32 0, i32 12
  %130 = load i8*, i8** %Base138, align 8
  %131 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext139 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %131, i32 0, i32 0
  %132 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext139, align 8
  %Stats140 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %132, i32 0, i32 2
  %133 = load i32, i32* %Stats140, align 4
  %idx.ext141 = zext i32 %133 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %130, i64 %idx.ext141
  %134 = bitcast i8* %add.ptr142 to %struct.CPpmd_State*
  %135 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState143 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %135, i32 0, i32 2
  store %struct.CPpmd_State* %134, %struct.CPpmd_State** %FoundState143, align 8
  br label %return

return:                                           ; preds = %if.end.131, %do.end.106
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @NextContext(%struct.CPpmd7* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  %c = alloca %struct.CPpmd7_Context_*, align 8
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 12
  %1 = load i8*, i8** %Base, align 8
  %2 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %2, i32 0, i32 2
  %3 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  %SuccessorLow = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %3, i32 0, i32 2
  %4 = load i16, i16* %SuccessorLow, align 1
  %conv = zext i16 %4 to i32
  %5 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState1 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %5, i32 0, i32 2
  %6 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState1, align 8
  %SuccessorHigh = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %6, i32 0, i32 3
  %7 = load i16, i16* %SuccessorHigh, align 1
  %conv2 = zext i16 %7 to i32
  %shl = shl i32 %conv2, 16
  %or = or i32 %conv, %shl
  %idx.ext = zext i32 %or to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %8 = bitcast i8* %add.ptr to %struct.CPpmd7_Context_*
  store %struct.CPpmd7_Context_* %8, %struct.CPpmd7_Context_** %c, align 8
  %9 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %OrderFall = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %9, i32 0, i32 3
  %10 = load i32, i32* %OrderFall, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %12 = bitcast %struct.CPpmd7_Context_* %11 to i8*
  %13 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Text = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %13, i32 0, i32 15
  %14 = load i8*, i8** %Text, align 8
  %cmp4 = icmp ugt i8* %12, %14
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %16 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MaxContext = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %16, i32 0, i32 1
  store %struct.CPpmd7_Context_* %15, %struct.CPpmd7_Context_** %MaxContext, align 8
  %17 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %17, i32 0, i32 0
  store %struct.CPpmd7_Context_* %15, %struct.CPpmd7_Context_** %MinContext, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %18 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @UpdateModel(%struct.CPpmd7* %18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppmd7_Update1_0(%struct.CPpmd7* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 2
  %1 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %1, i32 0, i32 1
  %2 = load i8, i8* %Freq, align 1
  %conv = zext i8 %2 to i32
  %mul = mul nsw i32 2, %conv
  %3 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %3, i32 0, i32 0
  %4 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %4, i32 0, i32 1
  %5 = load i16, i16* %SummFreq, align 2
  %conv1 = zext i16 %5 to i32
  %cmp = icmp sgt i32 %mul, %conv1
  %conv2 = zext i1 %cmp to i32
  %6 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %PrevSuccess = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %6, i32 0, i32 5
  store i32 %conv2, i32* %PrevSuccess, align 4
  %7 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %PrevSuccess3 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %7, i32 0, i32 5
  %8 = load i32, i32* %PrevSuccess3, align 4
  %9 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %RunLength = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %9, i32 0, i32 8
  %10 = load i32, i32* %RunLength, align 4
  %add = add i32 %10, %8
  store i32 %add, i32* %RunLength, align 4
  %11 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext4 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %11, i32 0, i32 0
  %12 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext4, align 8
  %SummFreq5 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %12, i32 0, i32 1
  %13 = load i16, i16* %SummFreq5, align 2
  %conv6 = zext i16 %13 to i32
  %add7 = add nsw i32 %conv6, 4
  %conv8 = trunc i32 %add7 to i16
  store i16 %conv8, i16* %SummFreq5, align 2
  %14 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState9 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %14, i32 0, i32 2
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
  %17 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @Rescale(%struct.CPpmd7* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @NextContext(%struct.CPpmd7* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppmd7_UpdateBin(%struct.CPpmd7* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 2
  %1 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %1, i32 0, i32 1
  %2 = load i8, i8* %Freq, align 1
  %conv = zext i8 %2 to i32
  %3 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState1 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %3, i32 0, i32 2
  %4 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState1, align 8
  %Freq2 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %4, i32 0, i32 1
  %5 = load i8, i8* %Freq2, align 1
  %conv3 = zext i8 %5 to i32
  %cmp = icmp slt i32 %conv3, 128
  %cond = select i1 %cmp, i32 1, i32 0
  %add = add nsw i32 %conv, %cond
  %conv5 = trunc i32 %add to i8
  %6 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState6 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %6, i32 0, i32 2
  %7 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState6, align 8
  %Freq7 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %7, i32 0, i32 1
  store i8 %conv5, i8* %Freq7, align 1
  %8 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %PrevSuccess = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %8, i32 0, i32 5
  store i32 1, i32* %PrevSuccess, align 4
  %9 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %RunLength = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %9, i32 0, i32 8
  %10 = load i32, i32* %RunLength, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %RunLength, align 4
  %11 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @NextContext(%struct.CPpmd7* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppmd7_Update2(%struct.CPpmd7* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 0
  %1 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %1, i32 0, i32 1
  %2 = load i16, i16* %SummFreq, align 2
  %conv = zext i16 %2 to i32
  %add = add nsw i32 %conv, 4
  %conv1 = trunc i32 %add to i16
  store i16 %conv1, i16* %SummFreq, align 2
  %3 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %3, i32 0, i32 2
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
  %6 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @Rescale(%struct.CPpmd7* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %InitRL = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %7, i32 0, i32 9
  %8 = load i32, i32* %InitRL, align 4
  %9 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %RunLength = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %9, i32 0, i32 8
  store i32 %8, i32* %RunLength, align 4
  %10 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @UpdateModel(%struct.CPpmd7* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpdateModel(%struct.CPpmd7* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  %successor = alloca i32, align 4
  %fSuccessor = alloca i32, align 4
  %c = alloca %struct.CPpmd7_Context_*, align 8
  %s0 = alloca i32, align 4
  %ns = alloca i32, align 4
  %s = alloca %struct.CPpmd_State*, align 8
  %s20 = alloca %struct.CPpmd_State*, align 8
  %cs = alloca %struct.CPpmd7_Context_*, align 8
  %ns1 = alloca i32, align 4
  %cf = alloca i32, align 4
  %sf = alloca i32, align 4
  %oldNU = alloca i32, align 4
  %i = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %oldPtr = alloca i8*, align 8
  %d = alloca i32*, align 8
  %s174 = alloca i32*, align 8
  %n = alloca i32, align 4
  %s215 = alloca %struct.CPpmd_State*, align 8
  %s293 = alloca %struct.CPpmd_State*, align 8
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 2
  %1 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  %SuccessorLow = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %1, i32 0, i32 2
  %2 = load i16, i16* %SuccessorLow, align 1
  %conv = zext i16 %2 to i32
  %3 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState1 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %3, i32 0, i32 2
  %4 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState1, align 8
  %SuccessorHigh = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %4, i32 0, i32 3
  %5 = load i16, i16* %SuccessorHigh, align 1
  %conv2 = zext i16 %5 to i32
  %shl = shl i32 %conv2, 16
  %or = or i32 %conv, %shl
  store i32 %or, i32* %fSuccessor, align 4
  %6 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState3 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %6, i32 0, i32 2
  %7 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState3, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %7, i32 0, i32 1
  %8 = load i8, i8* %Freq, align 1
  %conv4 = zext i8 %8 to i32
  %cmp = icmp slt i32 %conv4, 31
  br i1 %cmp, label %land.lhs.true, label %if.end.65

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %9, i32 0, i32 0
  %10 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext, align 8
  %Suffix = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %10, i32 0, i32 3
  %11 = load i32, i32* %Suffix, align 4
  %cmp6 = icmp ne i32 %11, 0
  br i1 %cmp6, label %if.then, label %if.end.65

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %12, i32 0, i32 12
  %13 = load i8*, i8** %Base, align 8
  %14 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext8 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %14, i32 0, i32 0
  %15 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext8, align 8
  %Suffix9 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %15, i32 0, i32 3
  %16 = load i32, i32* %Suffix9, align 4
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %17 = bitcast i8* %add.ptr to %struct.CPpmd7_Context_*
  store %struct.CPpmd7_Context_* %17, %struct.CPpmd7_Context_** %c, align 8
  %18 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %18, i32 0, i32 0
  %19 = load i16, i16* %NumStats, align 2
  %conv10 = zext i16 %19 to i32
  %cmp11 = icmp eq i32 %conv10, 1
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %20 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %20, i32 0, i32 1
  %21 = bitcast i16* %SummFreq to %struct.CPpmd_State*
  store %struct.CPpmd_State* %21, %struct.CPpmd_State** %s, align 8
  %22 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq14 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %22, i32 0, i32 1
  %23 = load i8, i8* %Freq14, align 1
  %conv15 = zext i8 %23 to i32
  %cmp16 = icmp slt i32 %conv15, 32
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then.13
  %24 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq19 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %24, i32 0, i32 1
  %25 = load i8, i8* %Freq19, align 1
  %inc = add i8 %25, 1
  store i8 %inc, i8* %Freq19, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then.13
  br label %if.end.64

if.else:                                          ; preds = %if.then
  %26 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base21 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %26, i32 0, i32 12
  %27 = load i8*, i8** %Base21, align 8
  %28 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %Stats = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %28, i32 0, i32 2
  %29 = load i32, i32* %Stats, align 4
  %idx.ext22 = zext i32 %29 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %27, i64 %idx.ext22
  %30 = bitcast i8* %add.ptr23 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %30, %struct.CPpmd_State** %s20, align 8
  %31 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s20, align 8
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %31, i32 0, i32 0
  %32 = load i8, i8* %Symbol, align 1
  %conv24 = zext i8 %32 to i32
  %33 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState25 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %33, i32 0, i32 2
  %34 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState25, align 8
  %Symbol26 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %34, i32 0, i32 0
  %35 = load i8, i8* %Symbol26, align 1
  %conv27 = zext i8 %35 to i32
  %cmp28 = icmp ne i32 %conv24, %conv27
  br i1 %cmp28, label %if.then.30, label %if.end.50

if.then.30:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.30
  %36 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s20, align 8
  %incdec.ptr = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %36, i32 1
  store %struct.CPpmd_State* %incdec.ptr, %struct.CPpmd_State** %s20, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %37 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s20, align 8
  %Symbol31 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %37, i32 0, i32 0
  %38 = load i8, i8* %Symbol31, align 1
  %conv32 = zext i8 %38 to i32
  %39 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState33 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %39, i32 0, i32 2
  %40 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState33, align 8
  %Symbol34 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %40, i32 0, i32 0
  %41 = load i8, i8* %Symbol34, align 1
  %conv35 = zext i8 %41 to i32
  %cmp36 = icmp ne i32 %conv32, %conv35
  br i1 %cmp36, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %42 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s20, align 8
  %arrayidx = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %42, i64 0
  %Freq38 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %arrayidx, i32 0, i32 1
  %43 = load i8, i8* %Freq38, align 1
  %conv39 = zext i8 %43 to i32
  %44 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s20, align 8
  %arrayidx40 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %44, i64 -1
  %Freq41 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %arrayidx40, i32 0, i32 1
  %45 = load i8, i8* %Freq41, align 1
  %conv42 = zext i8 %45 to i32
  %cmp43 = icmp sge i32 %conv39, %conv42
  br i1 %cmp43, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %do.end
  %46 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s20, align 8
  %arrayidx46 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %46, i64 0
  %47 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s20, align 8
  %arrayidx47 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %47, i64 -1
  call void @SwapStates(%struct.CPpmd_State* %arrayidx46, %struct.CPpmd_State* %arrayidx47)
  %48 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s20, align 8
  %incdec.ptr48 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %48, i32 -1
  store %struct.CPpmd_State* %incdec.ptr48, %struct.CPpmd_State** %s20, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %do.end
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.else
  %49 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s20, align 8
  %Freq51 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %49, i32 0, i32 1
  %50 = load i8, i8* %Freq51, align 1
  %conv52 = zext i8 %50 to i32
  %cmp53 = icmp slt i32 %conv52, 115
  br i1 %cmp53, label %if.then.55, label %if.end.63

if.then.55:                                       ; preds = %if.end.50
  %51 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s20, align 8
  %Freq56 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %51, i32 0, i32 1
  %52 = load i8, i8* %Freq56, align 1
  %conv57 = zext i8 %52 to i32
  %add = add nsw i32 %conv57, 2
  %conv58 = trunc i32 %add to i8
  store i8 %conv58, i8* %Freq56, align 1
  %53 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq59 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %53, i32 0, i32 1
  %54 = load i16, i16* %SummFreq59, align 2
  %conv60 = zext i16 %54 to i32
  %add61 = add nsw i32 %conv60, 2
  %conv62 = trunc i32 %add61 to i16
  store i16 %conv62, i16* %SummFreq59, align 2
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.55, %if.end.50
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %land.lhs.true, %entry
  %55 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %OrderFall = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %55, i32 0, i32 3
  %56 = load i32, i32* %OrderFall, align 4
  %cmp66 = icmp eq i32 %56, 0
  br i1 %cmp66, label %if.then.68, label %if.end.79

if.then.68:                                       ; preds = %if.end.65
  %57 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %call = call %struct.CPpmd7_Context_* @CreateSuccessors(%struct.CPpmd7* %57, i32 1)
  %58 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MaxContext = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %58, i32 0, i32 1
  store %struct.CPpmd7_Context_* %call, %struct.CPpmd7_Context_** %MaxContext, align 8
  %59 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext69 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %59, i32 0, i32 0
  store %struct.CPpmd7_Context_* %call, %struct.CPpmd7_Context_** %MinContext69, align 8
  %60 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext70 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %60, i32 0, i32 0
  %61 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext70, align 8
  %cmp71 = icmp eq %struct.CPpmd7_Context_* %61, null
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.68
  %62 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @RestartModel(%struct.CPpmd7* %62)
  br label %return

if.end.74:                                        ; preds = %if.then.68
  %63 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState75 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %63, i32 0, i32 2
  %64 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState75, align 8
  %65 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext76 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %65, i32 0, i32 0
  %66 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext76, align 8
  %67 = bitcast %struct.CPpmd7_Context_* %66 to i8*
  %68 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base77 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %68, i32 0, i32 12
  %69 = load i8*, i8** %Base77, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %67 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %69 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv78 = trunc i64 %sub.ptr.sub to i32
  call void @SetSuccessor(%struct.CPpmd_State* %64, i32 %conv78)
  br label %return

if.end.79:                                        ; preds = %if.end.65
  %70 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState80 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %70, i32 0, i32 2
  %71 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState80, align 8
  %Symbol81 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %71, i32 0, i32 0
  %72 = load i8, i8* %Symbol81, align 1
  %73 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Text = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %73, i32 0, i32 15
  %74 = load i8*, i8** %Text, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr82, i8** %Text, align 8
  store i8 %72, i8* %74, align 1
  %75 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Text83 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %75, i32 0, i32 15
  %76 = load i8*, i8** %Text83, align 8
  %77 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base84 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %77, i32 0, i32 12
  %78 = load i8*, i8** %Base84, align 8
  %sub.ptr.lhs.cast85 = ptrtoint i8* %76 to i64
  %sub.ptr.rhs.cast86 = ptrtoint i8* %78 to i64
  %sub.ptr.sub87 = sub i64 %sub.ptr.lhs.cast85, %sub.ptr.rhs.cast86
  %conv88 = trunc i64 %sub.ptr.sub87 to i32
  store i32 %conv88, i32* %successor, align 4
  %79 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Text89 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %79, i32 0, i32 15
  %80 = load i8*, i8** %Text89, align 8
  %81 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %UnitsStart = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %81, i32 0, i32 16
  %82 = load i8*, i8** %UnitsStart, align 8
  %cmp90 = icmp uge i8* %80, %82
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.79
  %83 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @RestartModel(%struct.CPpmd7* %83)
  br label %return

if.end.93:                                        ; preds = %if.end.79
  %84 = load i32, i32* %fSuccessor, align 4
  %tobool = icmp ne i32 %84, 0
  br i1 %tobool, label %if.then.94, label %if.else.121

if.then.94:                                       ; preds = %if.end.93
  %85 = load i32, i32* %fSuccessor, align 4
  %86 = load i32, i32* %successor, align 4
  %cmp95 = icmp ule i32 %85, %86
  br i1 %cmp95, label %if.then.97, label %if.end.108

if.then.97:                                       ; preds = %if.then.94
  %87 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %call98 = call %struct.CPpmd7_Context_* @CreateSuccessors(%struct.CPpmd7* %87, i32 0)
  store %struct.CPpmd7_Context_* %call98, %struct.CPpmd7_Context_** %cs, align 8
  %88 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %cs, align 8
  %cmp99 = icmp eq %struct.CPpmd7_Context_* %88, null
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.then.97
  %89 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @RestartModel(%struct.CPpmd7* %89)
  br label %return

if.end.102:                                       ; preds = %if.then.97
  %90 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %cs, align 8
  %91 = bitcast %struct.CPpmd7_Context_* %90 to i8*
  %92 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base103 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %92, i32 0, i32 12
  %93 = load i8*, i8** %Base103, align 8
  %sub.ptr.lhs.cast104 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast105 = ptrtoint i8* %93 to i64
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast105
  %conv107 = trunc i64 %sub.ptr.sub106 to i32
  store i32 %conv107, i32* %fSuccessor, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.102, %if.then.94
  %94 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %OrderFall109 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %94, i32 0, i32 3
  %95 = load i32, i32* %OrderFall109, align 4
  %dec = add i32 %95, -1
  store i32 %dec, i32* %OrderFall109, align 4
  %cmp110 = icmp eq i32 %dec, 0
  br i1 %cmp110, label %if.then.112, label %if.end.120

if.then.112:                                      ; preds = %if.end.108
  %96 = load i32, i32* %fSuccessor, align 4
  store i32 %96, i32* %successor, align 4
  %97 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MaxContext113 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %97, i32 0, i32 1
  %98 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MaxContext113, align 8
  %99 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext114 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %99, i32 0, i32 0
  %100 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext114, align 8
  %cmp115 = icmp ne %struct.CPpmd7_Context_* %98, %100
  %conv116 = zext i1 %cmp115 to i32
  %101 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Text117 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %101, i32 0, i32 15
  %102 = load i8*, i8** %Text117, align 8
  %idx.ext118 = sext i32 %conv116 to i64
  %idx.neg = sub i64 0, %idx.ext118
  %add.ptr119 = getelementptr inbounds i8, i8* %102, i64 %idx.neg
  store i8* %add.ptr119, i8** %Text117, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.112, %if.end.108
  br label %if.end.129

if.else.121:                                      ; preds = %if.end.93
  %103 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState122 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %103, i32 0, i32 2
  %104 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState122, align 8
  %105 = load i32, i32* %successor, align 4
  call void @SetSuccessor(%struct.CPpmd_State* %104, i32 %105)
  %106 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext123 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %106, i32 0, i32 0
  %107 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext123, align 8
  %108 = bitcast %struct.CPpmd7_Context_* %107 to i8*
  %109 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base124 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %109, i32 0, i32 12
  %110 = load i8*, i8** %Base124, align 8
  %sub.ptr.lhs.cast125 = ptrtoint i8* %108 to i64
  %sub.ptr.rhs.cast126 = ptrtoint i8* %110 to i64
  %sub.ptr.sub127 = sub i64 %sub.ptr.lhs.cast125, %sub.ptr.rhs.cast126
  %conv128 = trunc i64 %sub.ptr.sub127 to i32
  store i32 %conv128, i32* %fSuccessor, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.121, %if.end.120
  %111 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext130 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %111, i32 0, i32 0
  %112 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext130, align 8
  %SummFreq131 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %112, i32 0, i32 1
  %113 = load i16, i16* %SummFreq131, align 2
  %conv132 = zext i16 %113 to i32
  %114 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext133 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %114, i32 0, i32 0
  %115 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext133, align 8
  %NumStats134 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %115, i32 0, i32 0
  %116 = load i16, i16* %NumStats134, align 2
  %conv135 = zext i16 %116 to i32
  store i32 %conv135, i32* %ns, align 4
  %sub = sub i32 %conv132, %conv135
  %117 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState136 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %117, i32 0, i32 2
  %118 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState136, align 8
  %Freq137 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %118, i32 0, i32 1
  %119 = load i8, i8* %Freq137, align 1
  %conv138 = zext i8 %119 to i32
  %sub139 = sub nsw i32 %conv138, 1
  %sub140 = sub i32 %sub, %sub139
  store i32 %sub140, i32* %s0, align 4
  %120 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MaxContext141 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %120, i32 0, i32 1
  %121 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MaxContext141, align 8
  store %struct.CPpmd7_Context_* %121, %struct.CPpmd7_Context_** %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.129
  %122 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %123 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext142 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %123, i32 0, i32 0
  %124 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext142, align 8
  %cmp143 = icmp ne %struct.CPpmd7_Context_* %122, %124
  br i1 %cmp143, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %125 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %NumStats145 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %125, i32 0, i32 0
  %126 = load i16, i16* %NumStats145, align 2
  %conv146 = zext i16 %126 to i32
  store i32 %conv146, i32* %ns1, align 4
  %cmp147 = icmp ne i32 %conv146, 1
  br i1 %cmp147, label %if.then.149, label %if.else.214

if.then.149:                                      ; preds = %for.body
  %127 = load i32, i32* %ns1, align 4
  %and = and i32 %127, 1
  %cmp150 = icmp eq i32 %and, 0
  br i1 %cmp150, label %if.then.152, label %if.end.195

if.then.152:                                      ; preds = %if.then.149
  %128 = load i32, i32* %ns1, align 4
  %shr = lshr i32 %128, 1
  store i32 %shr, i32* %oldNU, align 4
  %129 = load i32, i32* %oldNU, align 4
  %sub153 = sub i32 %129, 1
  %idxprom = zext i32 %sub153 to i64
  %130 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %130, i32 0, i32 19
  %arrayidx154 = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx, i32 0, i64 %idxprom
  %131 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %131 to i32
  store i32 %conv155, i32* %i, align 4
  %132 = load i32, i32* %i, align 4
  %133 = load i32, i32* %oldNU, align 4
  %add156 = add i32 %133, 1
  %sub157 = sub i32 %add156, 1
  %idxprom158 = zext i32 %sub157 to i64
  %134 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Units2Indx159 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %134, i32 0, i32 19
  %arrayidx160 = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx159, i32 0, i64 %idxprom158
  %135 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %135 to i32
  %cmp162 = icmp ne i32 %132, %conv161
  br i1 %cmp162, label %if.then.164, label %if.end.194

if.then.164:                                      ; preds = %if.then.152
  %136 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %137 = load i32, i32* %i, align 4
  %add165 = add i32 %137, 1
  %call166 = call i8* @AllocUnits(%struct.CPpmd7* %136, i32 %add165)
  store i8* %call166, i8** %ptr, align 8
  %138 = load i8*, i8** %ptr, align 8
  %tobool167 = icmp ne i8* %138, null
  br i1 %tobool167, label %if.end.169, label %if.then.168

if.then.168:                                      ; preds = %if.then.164
  %139 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @RestartModel(%struct.CPpmd7* %139)
  br label %return

if.end.169:                                       ; preds = %if.then.164
  %140 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base170 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %140, i32 0, i32 12
  %141 = load i8*, i8** %Base170, align 8
  %142 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %Stats171 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %142, i32 0, i32 2
  %143 = load i32, i32* %Stats171, align 4
  %idx.ext172 = zext i32 %143 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %141, i64 %idx.ext172
  %144 = bitcast i8* %add.ptr173 to %struct.CPpmd_State*
  %145 = bitcast %struct.CPpmd_State* %144 to i8*
  store i8* %145, i8** %oldPtr, align 8
  %146 = load i8*, i8** %ptr, align 8
  %147 = bitcast i8* %146 to i32*
  store i32* %147, i32** %d, align 8
  %148 = load i8*, i8** %oldPtr, align 8
  %149 = bitcast i8* %148 to i32*
  store i32* %149, i32** %s174, align 8
  %150 = load i32, i32* %oldNU, align 4
  store i32 %150, i32* %n, align 4
  br label %do.body.175

do.body.175:                                      ; preds = %do.cond.184, %if.end.169
  %151 = load i32*, i32** %s174, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %151, i64 0
  %152 = load i32, i32* %arrayidx176, align 4
  %153 = load i32*, i32** %d, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 %152, i32* %arrayidx177, align 4
  %154 = load i32*, i32** %s174, align 8
  %arrayidx178 = getelementptr inbounds i32, i32* %154, i64 1
  %155 = load i32, i32* %arrayidx178, align 4
  %156 = load i32*, i32** %d, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %156, i64 1
  store i32 %155, i32* %arrayidx179, align 4
  %157 = load i32*, i32** %s174, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %157, i64 2
  %158 = load i32, i32* %arrayidx180, align 4
  %159 = load i32*, i32** %d, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %159, i64 2
  store i32 %158, i32* %arrayidx181, align 4
  %160 = load i32*, i32** %s174, align 8
  %add.ptr182 = getelementptr inbounds i32, i32* %160, i64 3
  store i32* %add.ptr182, i32** %s174, align 8
  %161 = load i32*, i32** %d, align 8
  %add.ptr183 = getelementptr inbounds i32, i32* %161, i64 3
  store i32* %add.ptr183, i32** %d, align 8
  br label %do.cond.184

do.cond.184:                                      ; preds = %do.body.175
  %162 = load i32, i32* %n, align 4
  %dec185 = add i32 %162, -1
  store i32 %dec185, i32* %n, align 4
  %tobool186 = icmp ne i32 %dec185, 0
  br i1 %tobool186, label %do.body.175, label %do.end.187

do.end.187:                                       ; preds = %do.cond.184
  %163 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %164 = load i8*, i8** %oldPtr, align 8
  %165 = load i32, i32* %i, align 4
  call void @InsertNode(%struct.CPpmd7* %163, i8* %164, i32 %165)
  %166 = load i8*, i8** %ptr, align 8
  %167 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base188 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %167, i32 0, i32 12
  %168 = load i8*, i8** %Base188, align 8
  %sub.ptr.lhs.cast189 = ptrtoint i8* %166 to i64
  %sub.ptr.rhs.cast190 = ptrtoint i8* %168 to i64
  %sub.ptr.sub191 = sub i64 %sub.ptr.lhs.cast189, %sub.ptr.rhs.cast190
  %conv192 = trunc i64 %sub.ptr.sub191 to i32
  %169 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %Stats193 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %169, i32 0, i32 2
  store i32 %conv192, i32* %Stats193, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %do.end.187, %if.then.152
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.149
  %170 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq196 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %170, i32 0, i32 1
  %171 = load i16, i16* %SummFreq196, align 2
  %conv197 = zext i16 %171 to i32
  %172 = load i32, i32* %ns1, align 4
  %mul = mul i32 2, %172
  %173 = load i32, i32* %ns, align 4
  %cmp198 = icmp ult i32 %mul, %173
  %conv199 = zext i1 %cmp198 to i32
  %add200 = add nsw i32 %conv197, %conv199
  %174 = load i32, i32* %ns1, align 4
  %mul201 = mul i32 4, %174
  %175 = load i32, i32* %ns, align 4
  %cmp202 = icmp ule i32 %mul201, %175
  %conv203 = zext i1 %cmp202 to i32
  %176 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq204 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %176, i32 0, i32 1
  %177 = load i16, i16* %SummFreq204, align 2
  %conv205 = zext i16 %177 to i32
  %178 = load i32, i32* %ns1, align 4
  %mul206 = mul i32 8, %178
  %cmp207 = icmp ule i32 %conv205, %mul206
  %conv208 = zext i1 %cmp207 to i32
  %and209 = and i32 %conv203, %conv208
  %mul210 = mul nsw i32 2, %and209
  %add211 = add nsw i32 %add200, %mul210
  %conv212 = trunc i32 %add211 to i16
  %179 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq213 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %179, i32 0, i32 1
  store i16 %conv212, i16* %SummFreq213, align 2
  br label %if.end.247

if.else.214:                                      ; preds = %for.body
  %180 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %call216 = call i8* @AllocUnits(%struct.CPpmd7* %180, i32 0)
  %181 = bitcast i8* %call216 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %181, %struct.CPpmd_State** %s215, align 8
  %182 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s215, align 8
  %tobool217 = icmp ne %struct.CPpmd_State* %182, null
  br i1 %tobool217, label %if.end.219, label %if.then.218

if.then.218:                                      ; preds = %if.else.214
  %183 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @RestartModel(%struct.CPpmd7* %183)
  br label %return

if.end.219:                                       ; preds = %if.else.214
  %184 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s215, align 8
  %185 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq220 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %185, i32 0, i32 1
  %186 = bitcast i16* %SummFreq220 to %struct.CPpmd_State*
  %187 = bitcast %struct.CPpmd_State* %184 to i8*
  %188 = bitcast %struct.CPpmd_State* %186 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %187, i8* %188, i64 6, i32 1, i1 false)
  %189 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s215, align 8
  %190 = bitcast %struct.CPpmd_State* %189 to i8*
  %191 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base221 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %191, i32 0, i32 12
  %192 = load i8*, i8** %Base221, align 8
  %sub.ptr.lhs.cast222 = ptrtoint i8* %190 to i64
  %sub.ptr.rhs.cast223 = ptrtoint i8* %192 to i64
  %sub.ptr.sub224 = sub i64 %sub.ptr.lhs.cast222, %sub.ptr.rhs.cast223
  %conv225 = trunc i64 %sub.ptr.sub224 to i32
  %193 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %Stats226 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %193, i32 0, i32 2
  store i32 %conv225, i32* %Stats226, align 4
  %194 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s215, align 8
  %Freq227 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %194, i32 0, i32 1
  %195 = load i8, i8* %Freq227, align 1
  %conv228 = zext i8 %195 to i32
  %cmp229 = icmp slt i32 %conv228, 30
  br i1 %cmp229, label %if.then.231, label %if.else.236

if.then.231:                                      ; preds = %if.end.219
  %196 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s215, align 8
  %Freq232 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %196, i32 0, i32 1
  %197 = load i8, i8* %Freq232, align 1
  %conv233 = zext i8 %197 to i32
  %shl234 = shl i32 %conv233, 1
  %conv235 = trunc i32 %shl234 to i8
  store i8 %conv235, i8* %Freq232, align 1
  br label %if.end.238

if.else.236:                                      ; preds = %if.end.219
  %198 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s215, align 8
  %Freq237 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %198, i32 0, i32 1
  store i8 120, i8* %Freq237, align 1
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.236, %if.then.231
  %199 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s215, align 8
  %Freq239 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %199, i32 0, i32 1
  %200 = load i8, i8* %Freq239, align 1
  %conv240 = zext i8 %200 to i32
  %201 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %InitEsc = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %201, i32 0, i32 4
  %202 = load i32, i32* %InitEsc, align 4
  %add241 = add i32 %conv240, %202
  %203 = load i32, i32* %ns, align 4
  %cmp242 = icmp ugt i32 %203, 3
  %conv243 = zext i1 %cmp242 to i32
  %add244 = add i32 %add241, %conv243
  %conv245 = trunc i32 %add244 to i16
  %204 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq246 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %204, i32 0, i32 1
  store i16 %conv245, i16* %SummFreq246, align 2
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.238, %if.end.195
  %205 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState248 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %205, i32 0, i32 2
  %206 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState248, align 8
  %Freq249 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %206, i32 0, i32 1
  %207 = load i8, i8* %Freq249, align 1
  %conv250 = zext i8 %207 to i32
  %mul251 = mul i32 2, %conv250
  %208 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq252 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %208, i32 0, i32 1
  %209 = load i16, i16* %SummFreq252, align 2
  %conv253 = zext i16 %209 to i32
  %add254 = add nsw i32 %conv253, 6
  %mul255 = mul i32 %mul251, %add254
  store i32 %mul255, i32* %cf, align 4
  %210 = load i32, i32* %s0, align 4
  %211 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq256 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %211, i32 0, i32 1
  %212 = load i16, i16* %SummFreq256, align 2
  %conv257 = zext i16 %212 to i32
  %add258 = add i32 %210, %conv257
  store i32 %add258, i32* %sf, align 4
  %213 = load i32, i32* %cf, align 4
  %214 = load i32, i32* %sf, align 4
  %mul259 = mul i32 6, %214
  %cmp260 = icmp ult i32 %213, %mul259
  br i1 %cmp260, label %if.then.262, label %if.else.274

if.then.262:                                      ; preds = %if.end.247
  %215 = load i32, i32* %cf, align 4
  %216 = load i32, i32* %sf, align 4
  %cmp263 = icmp ugt i32 %215, %216
  %conv264 = zext i1 %cmp263 to i32
  %add265 = add nsw i32 1, %conv264
  %217 = load i32, i32* %cf, align 4
  %218 = load i32, i32* %sf, align 4
  %mul266 = mul i32 4, %218
  %cmp267 = icmp uge i32 %217, %mul266
  %conv268 = zext i1 %cmp267 to i32
  %add269 = add nsw i32 %add265, %conv268
  store i32 %add269, i32* %cf, align 4
  %219 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq270 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %219, i32 0, i32 1
  %220 = load i16, i16* %SummFreq270, align 2
  %conv271 = zext i16 %220 to i32
  %add272 = add nsw i32 %conv271, 3
  %conv273 = trunc i32 %add272 to i16
  store i16 %conv273, i16* %SummFreq270, align 2
  br label %if.end.292

if.else.274:                                      ; preds = %if.end.247
  %221 = load i32, i32* %cf, align 4
  %222 = load i32, i32* %sf, align 4
  %mul275 = mul i32 9, %222
  %cmp276 = icmp uge i32 %221, %mul275
  %conv277 = zext i1 %cmp276 to i32
  %add278 = add nsw i32 4, %conv277
  %223 = load i32, i32* %cf, align 4
  %224 = load i32, i32* %sf, align 4
  %mul279 = mul i32 12, %224
  %cmp280 = icmp uge i32 %223, %mul279
  %conv281 = zext i1 %cmp280 to i32
  %add282 = add nsw i32 %add278, %conv281
  %225 = load i32, i32* %cf, align 4
  %226 = load i32, i32* %sf, align 4
  %mul283 = mul i32 15, %226
  %cmp284 = icmp uge i32 %225, %mul283
  %conv285 = zext i1 %cmp284 to i32
  %add286 = add nsw i32 %add282, %conv285
  store i32 %add286, i32* %cf, align 4
  %227 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq287 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %227, i32 0, i32 1
  %228 = load i16, i16* %SummFreq287, align 2
  %conv288 = zext i16 %228 to i32
  %229 = load i32, i32* %cf, align 4
  %add289 = add i32 %conv288, %229
  %conv290 = trunc i32 %add289 to i16
  %230 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq291 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %230, i32 0, i32 1
  store i16 %conv290, i16* %SummFreq291, align 2
  br label %if.end.292

if.end.292:                                       ; preds = %if.else.274, %if.then.262
  %231 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base294 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %231, i32 0, i32 12
  %232 = load i8*, i8** %Base294, align 8
  %233 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %Stats295 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %233, i32 0, i32 2
  %234 = load i32, i32* %Stats295, align 4
  %idx.ext296 = zext i32 %234 to i64
  %add.ptr297 = getelementptr inbounds i8, i8* %232, i64 %idx.ext296
  %235 = bitcast i8* %add.ptr297 to %struct.CPpmd_State*
  %236 = load i32, i32* %ns1, align 4
  %idx.ext298 = zext i32 %236 to i64
  %add.ptr299 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %235, i64 %idx.ext298
  store %struct.CPpmd_State* %add.ptr299, %struct.CPpmd_State** %s293, align 8
  %237 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s293, align 8
  %238 = load i32, i32* %successor, align 4
  call void @SetSuccessor(%struct.CPpmd_State* %237, i32 %238)
  %239 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState300 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %239, i32 0, i32 2
  %240 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState300, align 8
  %Symbol301 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %240, i32 0, i32 0
  %241 = load i8, i8* %Symbol301, align 1
  %242 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s293, align 8
  %Symbol302 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %242, i32 0, i32 0
  store i8 %241, i8* %Symbol302, align 1
  %243 = load i32, i32* %cf, align 4
  %conv303 = trunc i32 %243 to i8
  %244 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s293, align 8
  %Freq304 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %244, i32 0, i32 1
  store i8 %conv303, i8* %Freq304, align 1
  %245 = load i32, i32* %ns1, align 4
  %add305 = add i32 %245, 1
  %conv306 = trunc i32 %add305 to i16
  %246 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %NumStats307 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %246, i32 0, i32 0
  store i16 %conv306, i16* %NumStats307, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.292
  %247 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base308 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %247, i32 0, i32 12
  %248 = load i8*, i8** %Base308, align 8
  %249 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %Suffix309 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %249, i32 0, i32 3
  %250 = load i32, i32* %Suffix309, align 4
  %idx.ext310 = zext i32 %250 to i64
  %add.ptr311 = getelementptr inbounds i8, i8* %248, i64 %idx.ext310
  %251 = bitcast i8* %add.ptr311 to %struct.CPpmd7_Context_*
  store %struct.CPpmd7_Context_* %251, %struct.CPpmd7_Context_** %c, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %252 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base312 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %252, i32 0, i32 12
  %253 = load i8*, i8** %Base312, align 8
  %254 = load i32, i32* %fSuccessor, align 4
  %idx.ext313 = zext i32 %254 to i64
  %add.ptr314 = getelementptr inbounds i8, i8* %253, i64 %idx.ext313
  %255 = bitcast i8* %add.ptr314 to %struct.CPpmd7_Context_*
  %256 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext315 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %256, i32 0, i32 0
  store %struct.CPpmd7_Context_* %255, %struct.CPpmd7_Context_** %MinContext315, align 8
  %257 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MaxContext316 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %257, i32 0, i32 1
  store %struct.CPpmd7_Context_* %255, %struct.CPpmd7_Context_** %MaxContext316, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then.218, %if.then.168, %if.then.101, %if.then.92, %if.end.74, %if.then.73
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
define internal void @InsertNode(%struct.CPpmd7* %p, i8* %node, i32 %indx) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  %node.addr = alloca i8*, align 8
  %indx.addr = alloca i32, align 4
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  store i8* %node, i8** %node.addr, align 8
  store i32 %indx, i32* %indx.addr, align 4
  %0 = load i32, i32* %indx.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %1, i32 0, i32 20
  %arrayidx = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i8*, i8** %node.addr, align 8
  %4 = bitcast i8* %3 to i32*
  store i32 %2, i32* %4, align 4
  %5 = load i8*, i8** %node.addr, align 8
  %6 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %6, i32 0, i32 12
  %7 = load i8*, i8** %Base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %8 = load i32, i32* %indx.addr, align 4
  %idxprom1 = zext i32 %8 to i64
  %9 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FreeList2 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %9, i32 0, i32 20
  %arrayidx3 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList2, i32 0, i64 %idxprom1
  store i32 %conv, i32* %arrayidx3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @ShrinkUnits(%struct.CPpmd7* %p, i8* %oldPtr, i32 %oldNU, i32 %newNU) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca %struct.CPpmd7*, align 8
  %oldPtr.addr = alloca i8*, align 8
  %oldNU.addr = alloca i32, align 4
  %newNU.addr = alloca i32, align 4
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %d = alloca i32*, align 8
  %s = alloca i32*, align 8
  %n = alloca i32, align 4
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  store i8* %oldPtr, i8** %oldPtr.addr, align 8
  store i32 %oldNU, i32* %oldNU.addr, align 4
  store i32 %newNU, i32* %newNU.addr, align 4
  %0 = load i32, i32* %oldNU.addr, align 4
  %sub = sub i32 %0, 1
  %idxprom = zext i32 %sub to i64
  %1 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %1, i32 0, i32 19
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %i0, align 4
  %3 = load i32, i32* %newNU.addr, align 4
  %sub1 = sub i32 %3, 1
  %idxprom2 = zext i32 %sub1 to i64
  %4 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Units2Indx3 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %4, i32 0, i32 19
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
  %10 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %10, i32 0, i32 20
  %arrayidx8 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp ne i32 %11, 0
  br i1 %cmp9, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.end
  %12 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %13 = load i32, i32* %i1, align 4
  %call = call i8* @RemoveNode(%struct.CPpmd7* %12, i32 %13)
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
  %31 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %32 = load i8*, i8** %oldPtr.addr, align 8
  %33 = load i32, i32* %i0, align 4
  call void @InsertNode(%struct.CPpmd7* %31, i8* %32, i32 %33)
  %34 = load i8*, i8** %ptr, align 8
  store i8* %34, i8** %retval
  br label %return

if.end.19:                                        ; preds = %if.end
  %35 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %36 = load i8*, i8** %oldPtr.addr, align 8
  %37 = load i32, i32* %i0, align 4
  %38 = load i32, i32* %i1, align 4
  call void @SplitBlock(%struct.CPpmd7* %35, i8* %36, i32 %37, i32 %38)
  %39 = load i8*, i8** %oldPtr.addr, align 8
  store i8* %39, i8** %retval
  br label %return

return:                                           ; preds = %if.end.19, %do.end, %if.then
  %40 = load i8*, i8** %retval
  ret i8* %40
}

; Function Attrs: nounwind uwtable
define internal i8* @RemoveNode(%struct.CPpmd7* %p, i32 %indx) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  %indx.addr = alloca i32, align 4
  %node = alloca i32*, align 8
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  store i32 %indx, i32* %indx.addr, align 4
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 12
  %1 = load i8*, i8** %Base, align 8
  %2 = load i32, i32* %indx.addr, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %3, i32 0, i32 20
  %arrayidx = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %5 = bitcast i8* %add.ptr to i32*
  store i32* %5, i32** %node, align 8
  %6 = load i32*, i32** %node, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %indx.addr, align 4
  %idxprom1 = zext i32 %8 to i64
  %9 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FreeList2 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %9, i32 0, i32 20
  %arrayidx3 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList2, i32 0, i64 %idxprom1
  store i32 %7, i32* %arrayidx3, align 4
  %10 = load i32*, i32** %node, align 8
  %11 = bitcast i32* %10 to i8*
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define internal void @SplitBlock(%struct.CPpmd7* %p, i8* %ptr, i32 %oldIndx, i32 %newIndx) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  %ptr.addr = alloca i8*, align 8
  %oldIndx.addr = alloca i32, align 4
  %newIndx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %nu = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %oldIndx, i32* %oldIndx.addr, align 4
  store i32 %newIndx, i32* %newIndx.addr, align 4
  %0 = load i32, i32* %oldIndx.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Indx2Units = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %1, i32 0, i32 18
  %arrayidx = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, i32* %newIndx.addr, align 4
  %idxprom1 = zext i32 %3 to i64
  %4 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Indx2Units2 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %4, i32 0, i32 18
  %arrayidx3 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units2, i32 0, i64 %idxprom1
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %sub = sub nsw i32 %conv, %conv4
  store i32 %sub, i32* %nu, align 4
  %6 = load i8*, i8** %ptr.addr, align 8
  %7 = load i32, i32* %newIndx.addr, align 4
  %idxprom5 = zext i32 %7 to i64
  %8 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Indx2Units6 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %8, i32 0, i32 18
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
  %11 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %11, i32 0, i32 19
  %arrayidx11 = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx, i32 0, i64 %idxprom10
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  store i32 %conv12, i32* %i, align 4
  %idxprom13 = zext i32 %conv12 to i64
  %13 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Indx2Units14 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %13, i32 0, i32 18
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
  %17 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Indx2Units19 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %17, i32 0, i32 18
  %arrayidx20 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units19, i32 0, i64 %idxprom18
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %18 to i32
  store i32 %conv21, i32* %k, align 4
  %19 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %20 = load i8*, i8** %ptr.addr, align 8
  %21 = load i32, i32* %k, align 4
  %mul22 = mul i32 %21, 12
  %idx.ext23 = zext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %20, i64 %idx.ext23
  %22 = load i32, i32* %nu, align 4
  %23 = load i32, i32* %k, align 4
  %sub25 = sub i32 %22, %23
  %sub26 = sub i32 %sub25, 1
  call void @InsertNode(%struct.CPpmd7* %19, i8* %add.ptr24, i32 %sub26)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %25 = load i8*, i8** %ptr.addr, align 8
  %26 = load i32, i32* %i, align 4
  call void @InsertNode(%struct.CPpmd7* %24, i8* %25, i32 %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.CPpmd7_Context_* @CreateSuccessors(%struct.CPpmd7* %p, i32 %skip) #0 {
entry:
  %retval = alloca %struct.CPpmd7_Context_*, align 8
  %p.addr = alloca %struct.CPpmd7*, align 8
  %skip.addr = alloca i32, align 4
  %upState = alloca %struct.CPpmd_State, align 1
  %c = alloca %struct.CPpmd7_Context_*, align 8
  %upBranch = alloca i32, align 4
  %ps = alloca [64 x %struct.CPpmd_State*], align 16
  %numPs = alloca i32, align 4
  %successor = alloca i32, align 4
  %s = alloca %struct.CPpmd_State*, align 8
  %cf = alloca i32, align 4
  %s0 = alloca i32, align 4
  %s51 = alloca %struct.CPpmd_State*, align 8
  %c1 = alloca %struct.CPpmd7_Context_*, align 8
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  store i32 %skip, i32* %skip.addr, align 4
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 0
  %1 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext, align 8
  store %struct.CPpmd7_Context_* %1, %struct.CPpmd7_Context_** %c, align 8
  %2 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %2, i32 0, i32 2
  %3 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState, align 8
  %SuccessorLow = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %3, i32 0, i32 2
  %4 = load i16, i16* %SuccessorLow, align 1
  %conv = zext i16 %4 to i32
  %5 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState1 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %5, i32 0, i32 2
  %6 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState1, align 8
  %SuccessorHigh = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %6, i32 0, i32 3
  %7 = load i16, i16* %SuccessorHigh, align 1
  %conv2 = zext i16 %7 to i32
  %shl = shl i32 %conv2, 16
  %or = or i32 %conv, %shl
  store i32 %or, i32* %upBranch, align 4
  store i32 0, i32* %numPs, align 4
  %8 = load i32, i32* %skip.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState3 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %9, i32 0, i32 2
  %10 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState3, align 8
  %11 = load i32, i32* %numPs, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %numPs, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.CPpmd_State*], [64 x %struct.CPpmd_State*]* %ps, i32 0, i64 %idxprom
  store %struct.CPpmd_State* %10, %struct.CPpmd_State** %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %if.end
  %12 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %Suffix = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %12, i32 0, i32 3
  %13 = load i32, i32* %Suffix, align 4
  %tobool4 = icmp ne i32 %13, 0
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %14, i32 0, i32 12
  %15 = load i8*, i8** %Base, align 8
  %16 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %Suffix5 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %16, i32 0, i32 3
  %17 = load i32, i32* %Suffix5, align 4
  %idx.ext = zext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  %18 = bitcast i8* %add.ptr to %struct.CPpmd7_Context_*
  store %struct.CPpmd7_Context_* %18, %struct.CPpmd7_Context_** %c, align 8
  %19 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %19, i32 0, i32 0
  %20 = load i16, i16* %NumStats, align 2
  %conv6 = zext i16 %20 to i32
  %cmp = icmp ne i32 %conv6, 1
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %while.body
  %21 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base9 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %21, i32 0, i32 12
  %22 = load i8*, i8** %Base9, align 8
  %23 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %Stats = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %23, i32 0, i32 2
  %24 = load i32, i32* %Stats, align 4
  %idx.ext10 = zext i32 %24 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %22, i64 %idx.ext10
  %25 = bitcast i8* %add.ptr11 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %25, %struct.CPpmd_State** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %26 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %26, i32 0, i32 0
  %27 = load i8, i8* %Symbol, align 1
  %conv12 = zext i8 %27 to i32
  %28 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState13 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %28, i32 0, i32 2
  %29 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState13, align 8
  %Symbol14 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %29, i32 0, i32 0
  %30 = load i8, i8* %Symbol14, align 1
  %conv15 = zext i8 %30 to i32
  %cmp16 = icmp ne i32 %conv12, %conv15
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %31, i32 1
  store %struct.CPpmd_State* %incdec.ptr, %struct.CPpmd_State** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.else:                                          ; preds = %while.body
  %32 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %32, i32 0, i32 1
  %33 = bitcast i16* %SummFreq to %struct.CPpmd_State*
  store %struct.CPpmd_State* %33, %struct.CPpmd_State** %s, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %for.end
  %34 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorLow19 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %34, i32 0, i32 2
  %35 = load i16, i16* %SuccessorLow19, align 1
  %conv20 = zext i16 %35 to i32
  %36 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %SuccessorHigh21 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %36, i32 0, i32 3
  %37 = load i16, i16* %SuccessorHigh21, align 1
  %conv22 = zext i16 %37 to i32
  %shl23 = shl i32 %conv22, 16
  %or24 = or i32 %conv20, %shl23
  store i32 %or24, i32* %successor, align 4
  %38 = load i32, i32* %successor, align 4
  %39 = load i32, i32* %upBranch, align 4
  %cmp25 = icmp ne i32 %38, %39
  br i1 %cmp25, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %if.end.18
  %40 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base28 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %40, i32 0, i32 12
  %41 = load i8*, i8** %Base28, align 8
  %42 = load i32, i32* %successor, align 4
  %idx.ext29 = zext i32 %42 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %41, i64 %idx.ext29
  %43 = bitcast i8* %add.ptr30 to %struct.CPpmd7_Context_*
  store %struct.CPpmd7_Context_* %43, %struct.CPpmd7_Context_** %c, align 8
  %44 = load i32, i32* %numPs, align 4
  %cmp31 = icmp eq i32 %44, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.27
  %45 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  store %struct.CPpmd7_Context_* %45, %struct.CPpmd7_Context_** %retval
  br label %return

if.end.34:                                        ; preds = %if.then.27
  br label %while.end

if.end.35:                                        ; preds = %if.end.18
  %46 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %47 = load i32, i32* %numPs, align 4
  %inc36 = add i32 %47, 1
  store i32 %inc36, i32* %numPs, align 4
  %idxprom37 = zext i32 %47 to i64
  %arrayidx38 = getelementptr inbounds [64 x %struct.CPpmd_State*], [64 x %struct.CPpmd_State*]* %ps, i32 0, i64 %idxprom37
  store %struct.CPpmd_State* %46, %struct.CPpmd_State** %arrayidx38, align 8
  br label %while.cond

while.end:                                        ; preds = %if.end.34, %while.cond
  %48 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base39 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %48, i32 0, i32 12
  %49 = load i8*, i8** %Base39, align 8
  %50 = load i32, i32* %upBranch, align 4
  %idx.ext40 = zext i32 %50 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %49, i64 %idx.ext40
  %51 = load i8, i8* %add.ptr41, align 1
  %Symbol42 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %upState, i32 0, i32 0
  store i8 %51, i8* %Symbol42, align 1
  %52 = load i32, i32* %upBranch, align 4
  %add = add i32 %52, 1
  call void @SetSuccessor(%struct.CPpmd_State* %upState, i32 %add)
  %53 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %NumStats43 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %53, i32 0, i32 0
  %54 = load i16, i16* %NumStats43, align 2
  %conv44 = zext i16 %54 to i32
  %cmp45 = icmp eq i32 %conv44, 1
  br i1 %cmp45, label %if.then.47, label %if.else.50

if.then.47:                                       ; preds = %while.end
  %55 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq48 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %55, i32 0, i32 1
  %56 = bitcast i16* %SummFreq48 to %struct.CPpmd_State*
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %56, i32 0, i32 1
  %57 = load i8, i8* %Freq, align 1
  %Freq49 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %upState, i32 0, i32 1
  store i8 %57, i8* %Freq49, align 1
  br label %if.end.88

if.else.50:                                       ; preds = %while.end
  %58 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base52 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %58, i32 0, i32 12
  %59 = load i8*, i8** %Base52, align 8
  %60 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %Stats53 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %60, i32 0, i32 2
  %61 = load i32, i32* %Stats53, align 4
  %idx.ext54 = zext i32 %61 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %59, i64 %idx.ext54
  %62 = bitcast i8* %add.ptr55 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %62, %struct.CPpmd_State** %s51, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.64, %if.else.50
  %63 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s51, align 8
  %Symbol57 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %63, i32 0, i32 0
  %64 = load i8, i8* %Symbol57, align 1
  %conv58 = zext i8 %64 to i32
  %Symbol59 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %upState, i32 0, i32 0
  %65 = load i8, i8* %Symbol59, align 1
  %conv60 = zext i8 %65 to i32
  %cmp61 = icmp ne i32 %conv58, %conv60
  br i1 %cmp61, label %for.body.63, label %for.end.66

for.body.63:                                      ; preds = %for.cond.56
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.63
  %66 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s51, align 8
  %incdec.ptr65 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %66, i32 1
  store %struct.CPpmd_State* %incdec.ptr65, %struct.CPpmd_State** %s51, align 8
  br label %for.cond.56

for.end.66:                                       ; preds = %for.cond.56
  %67 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s51, align 8
  %Freq67 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %67, i32 0, i32 1
  %68 = load i8, i8* %Freq67, align 1
  %conv68 = zext i8 %68 to i32
  %sub = sub nsw i32 %conv68, 1
  store i32 %sub, i32* %cf, align 4
  %69 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %SummFreq69 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %69, i32 0, i32 1
  %70 = load i16, i16* %SummFreq69, align 2
  %conv70 = zext i16 %70 to i32
  %71 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %NumStats71 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %71, i32 0, i32 0
  %72 = load i16, i16* %NumStats71, align 2
  %conv72 = zext i16 %72 to i32
  %sub73 = sub nsw i32 %conv70, %conv72
  %73 = load i32, i32* %cf, align 4
  %sub74 = sub i32 %sub73, %73
  store i32 %sub74, i32* %s0, align 4
  %74 = load i32, i32* %cf, align 4
  %mul = mul i32 2, %74
  %75 = load i32, i32* %s0, align 4
  %cmp75 = icmp ule i32 %mul, %75
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.66
  %76 = load i32, i32* %cf, align 4
  %mul77 = mul i32 5, %76
  %77 = load i32, i32* %s0, align 4
  %cmp78 = icmp ugt i32 %mul77, %77
  %conv79 = zext i1 %cmp78 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.end.66
  %78 = load i32, i32* %cf, align 4
  %mul80 = mul i32 2, %78
  %79 = load i32, i32* %s0, align 4
  %mul81 = mul i32 3, %79
  %add82 = add i32 %mul80, %mul81
  %sub83 = sub i32 %add82, 1
  %80 = load i32, i32* %s0, align 4
  %mul84 = mul i32 2, %80
  %div = udiv i32 %sub83, %mul84
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv79, %cond.true ], [ %div, %cond.false ]
  %add85 = add i32 1, %cond
  %conv86 = trunc i32 %add85 to i8
  %Freq87 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %upState, i32 0, i32 1
  store i8 %conv86, i8* %Freq87, align 1
  br label %if.end.88

if.end.88:                                        ; preds = %cond.end, %if.then.47
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.88
  %81 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HiUnit = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %81, i32 0, i32 14
  %82 = load i8*, i8** %HiUnit, align 8
  %83 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %LoUnit = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %83, i32 0, i32 13
  %84 = load i8*, i8** %LoUnit, align 8
  %cmp89 = icmp ne i8* %82, %84
  br i1 %cmp89, label %if.then.91, label %if.else.94

if.then.91:                                       ; preds = %do.body
  %85 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HiUnit92 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %85, i32 0, i32 14
  %86 = load i8*, i8** %HiUnit92, align 8
  %add.ptr93 = getelementptr inbounds i8, i8* %86, i64 -12
  store i8* %add.ptr93, i8** %HiUnit92, align 8
  %87 = bitcast i8* %add.ptr93 to %struct.CPpmd7_Context_*
  store %struct.CPpmd7_Context_* %87, %struct.CPpmd7_Context_** %c1, align 8
  br label %if.end.105

if.else.94:                                       ; preds = %do.body
  %88 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %88, i32 0, i32 20
  %arrayidx95 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 0
  %89 = load i32, i32* %arrayidx95, align 4
  %cmp96 = icmp ne i32 %89, 0
  br i1 %cmp96, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %if.else.94
  %90 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %call = call i8* @RemoveNode(%struct.CPpmd7* %90, i32 0)
  %91 = bitcast i8* %call to %struct.CPpmd7_Context_*
  store %struct.CPpmd7_Context_* %91, %struct.CPpmd7_Context_** %c1, align 8
  br label %if.end.104

if.else.99:                                       ; preds = %if.else.94
  %92 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %call100 = call i8* @AllocUnitsRare(%struct.CPpmd7* %92, i32 0)
  %93 = bitcast i8* %call100 to %struct.CPpmd7_Context_*
  store %struct.CPpmd7_Context_* %93, %struct.CPpmd7_Context_** %c1, align 8
  %94 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c1, align 8
  %tobool101 = icmp ne %struct.CPpmd7_Context_* %94, null
  br i1 %tobool101, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %if.else.99
  store %struct.CPpmd7_Context_* null, %struct.CPpmd7_Context_** %retval
  br label %return

if.end.103:                                       ; preds = %if.else.99
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.98
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.91
  %95 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c1, align 8
  %NumStats106 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %95, i32 0, i32 0
  store i16 1, i16* %NumStats106, align 2
  %96 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c1, align 8
  %SummFreq107 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %96, i32 0, i32 1
  %97 = bitcast i16* %SummFreq107 to %struct.CPpmd_State*
  %98 = bitcast %struct.CPpmd_State* %97 to i8*
  %99 = bitcast %struct.CPpmd_State* %upState to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 6, i32 1, i1 false)
  %100 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  %101 = bitcast %struct.CPpmd7_Context_* %100 to i8*
  %102 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base108 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %102, i32 0, i32 12
  %103 = load i8*, i8** %Base108, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %101 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %103 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv109 = trunc i64 %sub.ptr.sub to i32
  %104 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c1, align 8
  %Suffix110 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %104, i32 0, i32 3
  store i32 %conv109, i32* %Suffix110, align 4
  %105 = load i32, i32* %numPs, align 4
  %dec = add i32 %105, -1
  store i32 %dec, i32* %numPs, align 4
  %idxprom111 = zext i32 %dec to i64
  %arrayidx112 = getelementptr inbounds [64 x %struct.CPpmd_State*], [64 x %struct.CPpmd_State*]* %ps, i32 0, i64 %idxprom111
  %106 = load %struct.CPpmd_State*, %struct.CPpmd_State** %arrayidx112, align 8
  %107 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c1, align 8
  %108 = bitcast %struct.CPpmd7_Context_* %107 to i8*
  %109 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base113 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %109, i32 0, i32 12
  %110 = load i8*, i8** %Base113, align 8
  %sub.ptr.lhs.cast114 = ptrtoint i8* %108 to i64
  %sub.ptr.rhs.cast115 = ptrtoint i8* %110 to i64
  %sub.ptr.sub116 = sub i64 %sub.ptr.lhs.cast114, %sub.ptr.rhs.cast115
  %conv117 = trunc i64 %sub.ptr.sub116 to i32
  call void @SetSuccessor(%struct.CPpmd_State* %106, i32 %conv117)
  %111 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c1, align 8
  store %struct.CPpmd7_Context_* %111, %struct.CPpmd7_Context_** %c, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.105
  %112 = load i32, i32* %numPs, align 4
  %cmp118 = icmp ne i32 %112, 0
  br i1 %cmp118, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %113 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %c, align 8
  store %struct.CPpmd7_Context_* %113, %struct.CPpmd7_Context_** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.102, %if.then.33
  %114 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %retval
  ret %struct.CPpmd7_Context_* %114
}

; Function Attrs: nounwind uwtable
define internal i8* @AllocUnits(%struct.CPpmd7* %p, i32 %indx) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca %struct.CPpmd7*, align 8
  %indx.addr = alloca i32, align 4
  %numBytes = alloca i32, align 4
  %retVal = alloca i8*, align 8
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  store i32 %indx, i32* %indx.addr, align 4
  %0 = load i32, i32* %indx.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %1, i32 0, i32 20
  %arrayidx = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %4 = load i32, i32* %indx.addr, align 4
  %call = call i8* @RemoveNode(%struct.CPpmd7* %3, i32 %4)
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %indx.addr, align 4
  %idxprom1 = zext i32 %5 to i64
  %6 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Indx2Units = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %6, i32 0, i32 18
  %arrayidx2 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units, i32 0, i64 %idxprom1
  %7 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %7 to i32
  %mul = mul i32 %conv, 12
  store i32 %mul, i32* %numBytes, align 4
  %8 = load i32, i32* %numBytes, align 4
  %9 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HiUnit = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %9, i32 0, i32 14
  %10 = load i8*, i8** %HiUnit, align 8
  %11 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %LoUnit = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %11, i32 0, i32 13
  %12 = load i8*, i8** %LoUnit, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv3 = trunc i64 %sub.ptr.sub to i32
  %cmp4 = icmp ule i32 %8, %conv3
  br i1 %cmp4, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %13 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %LoUnit7 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %13, i32 0, i32 13
  %14 = load i8*, i8** %LoUnit7, align 8
  store i8* %14, i8** %retVal, align 8
  %15 = load i32, i32* %numBytes, align 4
  %16 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %LoUnit8 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %16, i32 0, i32 13
  %17 = load i8*, i8** %LoUnit8, align 8
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %LoUnit8, align 8
  %18 = load i8*, i8** %retVal, align 8
  store i8* %18, i8** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %19 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %20 = load i32, i32* %indx.addr, align 4
  %call10 = call i8* @AllocUnitsRare(%struct.CPpmd7* %19, i32 %20)
  store i8* %call10, i8** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.6, %if.then
  %21 = load i8*, i8** %retval
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define internal i8* @AllocUnitsRare(%struct.CPpmd7* %p, i32 %indx) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca %struct.CPpmd7*, align 8
  %indx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %retVal = alloca i8*, align 8
  %numBytes = alloca i32, align 4
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  store i32 %indx, i32* %indx.addr, align 4
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %GlueCount = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 11
  %1 = load i32, i32* %GlueCount, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @GlueFreeBlocks(%struct.CPpmd7* %2)
  %3 = load i32, i32* %indx.addr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %4, i32 0, i32 20
  %arrayidx = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %7 = load i32, i32* %indx.addr, align 4
  %call = call i8* @RemoveNode(%struct.CPpmd7* %6, i32 %7)
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
  %11 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Indx2Units = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %11, i32 0, i32 18
  %arrayidx7 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units, i32 0, i64 %idxprom6
  %12 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %12 to i32
  %mul = mul i32 %conv, 12
  store i32 %mul, i32* %numBytes, align 4
  %13 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %GlueCount8 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %13, i32 0, i32 11
  %14 = load i32, i32* %GlueCount8, align 4
  %dec = add i32 %14, -1
  store i32 %dec, i32* %GlueCount8, align 4
  %15 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %UnitsStart = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %15, i32 0, i32 16
  %16 = load i8*, i8** %UnitsStart, align 8
  %17 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Text = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %17, i32 0, i32 15
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
  %21 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %UnitsStart12 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %21, i32 0, i32 16
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
  %24 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FreeList15 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %24, i32 0, i32 20
  %arrayidx16 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList15, i32 0, i64 %idxprom14
  %25 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %25, 0
  br i1 %cmp17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %27 = load i32, i32* %i, align 4
  %call19 = call i8* @RemoveNode(%struct.CPpmd7* %26, i32 %27)
  store i8* %call19, i8** %retVal, align 8
  %28 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %29 = load i8*, i8** %retVal, align 8
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %indx.addr, align 4
  call void @SplitBlock(%struct.CPpmd7* %28, i8* %29, i32 %30, i32 %31)
  %32 = load i8*, i8** %retVal, align 8
  store i8* %32, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %cond.end, %if.then.2
  %33 = load i8*, i8** %retval
  ret i8* %33
}

; Function Attrs: nounwind uwtable
define internal void @GlueFreeBlocks(%struct.CPpmd7* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  %head = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %nu = alloca i16, align 2
  %next = alloca i32, align 4
  %node = alloca %struct.CPpmd7_Node_*, align 8
  %node31 = alloca %struct.CPpmd7_Node_*, align 8
  %nu35 = alloca i32, align 4
  %node2 = alloca %struct.CPpmd7_Node_*, align 8
  %node80 = alloca %struct.CPpmd7_Node_*, align 8
  %nu84 = alloca i32, align 4
  %next85 = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %AlignOffset = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 17
  %1 = load i32, i32* %AlignOffset, align 4
  %2 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Size = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %2, i32 0, i32 10
  %3 = load i32, i32* %Size, align 4
  %add = add i32 %1, %3
  store i32 %add, i32* %head, align 4
  %4 = load i32, i32* %head, align 4
  store i32 %4, i32* %n, align 4
  %5 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %GlueCount = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %5, i32 0, i32 11
  store i32 255, i32* %GlueCount, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %6, 38
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Indx2Units = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %8, i32 0, i32 18
  %arrayidx = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i16
  store i16 %conv, i16* %nu, align 2
  %10 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %10 to i64
  %11 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FreeList = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %11, i32 0, i32 20
  %arrayidx2 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList, i32 0, i64 %idxprom1
  %12 = load i32, i32* %arrayidx2, align 4
  store i32 %12, i32* %next, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %13 to i64
  %14 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FreeList4 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %14, i32 0, i32 20
  %arrayidx5 = getelementptr inbounds [38 x i32], [38 x i32]* %FreeList4, i32 0, i64 %idxprom3
  store i32 0, i32* %arrayidx5, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %15 = load i32, i32* %next, align 4
  %cmp6 = icmp ne i32 %15, 0
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %16, i32 0, i32 12
  %17 = load i8*, i8** %Base, align 8
  %18 = load i32, i32* %next, align 4
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  %19 = bitcast i8* %add.ptr to %struct.CPpmd7_Node_*
  store %struct.CPpmd7_Node_* %19, %struct.CPpmd7_Node_** %node, align 8
  %20 = load i32, i32* %n, align 4
  %21 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node, align 8
  %Next = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %21, i32 0, i32 2
  store i32 %20, i32* %Next, align 4
  %22 = load i32, i32* %next, align 4
  %23 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base8 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %23, i32 0, i32 12
  %24 = load i8*, i8** %Base8, align 8
  %25 = load i32, i32* %n, align 4
  %idx.ext9 = zext i32 %25 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %24, i64 %idx.ext9
  %26 = bitcast i8* %add.ptr10 to %struct.CPpmd7_Node_*
  %Prev = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %26, i32 0, i32 3
  store i32 %22, i32* %Prev, align 4
  store i32 %22, i32* %n, align 4
  %27 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node, align 8
  %28 = bitcast %struct.CPpmd7_Node_* %27 to i32*
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %next, align 4
  %30 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node, align 8
  %Stamp = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %30, i32 0, i32 0
  store i16 0, i16* %Stamp, align 2
  %31 = load i16, i16* %nu, align 2
  %32 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node, align 8
  %NU = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %32, i32 0, i32 1
  store i16 %31, i16* %NU, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %33 = load i32, i32* %i, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base11 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %34, i32 0, i32 12
  %35 = load i8*, i8** %Base11, align 8
  %36 = load i32, i32* %head, align 4
  %idx.ext12 = zext i32 %36 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %35, i64 %idx.ext12
  %37 = bitcast i8* %add.ptr13 to %struct.CPpmd7_Node_*
  %Stamp14 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %37, i32 0, i32 0
  store i16 1, i16* %Stamp14, align 2
  %38 = load i32, i32* %n, align 4
  %39 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base15 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %39, i32 0, i32 12
  %40 = load i8*, i8** %Base15, align 8
  %41 = load i32, i32* %head, align 4
  %idx.ext16 = zext i32 %41 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %40, i64 %idx.ext16
  %42 = bitcast i8* %add.ptr17 to %struct.CPpmd7_Node_*
  %Next18 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %42, i32 0, i32 2
  store i32 %38, i32* %Next18, align 4
  %43 = load i32, i32* %head, align 4
  %44 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base19 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %44, i32 0, i32 12
  %45 = load i8*, i8** %Base19, align 8
  %46 = load i32, i32* %n, align 4
  %idx.ext20 = zext i32 %46 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %45, i64 %idx.ext20
  %47 = bitcast i8* %add.ptr21 to %struct.CPpmd7_Node_*
  %Prev22 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %47, i32 0, i32 3
  store i32 %43, i32* %Prev22, align 4
  %48 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %LoUnit = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %48, i32 0, i32 13
  %49 = load i8*, i8** %LoUnit, align 8
  %50 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HiUnit = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %50, i32 0, i32 14
  %51 = load i8*, i8** %HiUnit, align 8
  %cmp23 = icmp ne i8* %49, %51
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %52 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %LoUnit25 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %52, i32 0, i32 13
  %53 = load i8*, i8** %LoUnit25, align 8
  %54 = bitcast i8* %53 to %struct.CPpmd7_Node_*
  %Stamp26 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %54, i32 0, i32 0
  store i16 1, i16* %Stamp26, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %while.cond.27

while.cond.27:                                    ; preds = %for.end.69, %if.end
  %55 = load i32, i32* %n, align 4
  %56 = load i32, i32* %head, align 4
  %cmp28 = icmp ne i32 %55, %56
  br i1 %cmp28, label %while.body.30, label %while.end.71

while.body.30:                                    ; preds = %while.cond.27
  %57 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base32 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %57, i32 0, i32 12
  %58 = load i8*, i8** %Base32, align 8
  %59 = load i32, i32* %n, align 4
  %idx.ext33 = zext i32 %59 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %58, i64 %idx.ext33
  %60 = bitcast i8* %add.ptr34 to %struct.CPpmd7_Node_*
  store %struct.CPpmd7_Node_* %60, %struct.CPpmd7_Node_** %node31, align 8
  %61 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node31, align 8
  %NU36 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %61, i32 0, i32 1
  %62 = load i16, i16* %NU36, align 2
  %conv37 = zext i16 %62 to i32
  store i32 %conv37, i32* %nu35, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %if.end.54, %while.body.30
  %63 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base39 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %63, i32 0, i32 12
  %64 = load i8*, i8** %Base39, align 8
  %65 = load i32, i32* %n, align 4
  %idx.ext40 = zext i32 %65 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %64, i64 %idx.ext40
  %66 = bitcast i8* %add.ptr41 to %struct.CPpmd7_Node_*
  %67 = load i32, i32* %nu35, align 4
  %idx.ext42 = zext i32 %67 to i64
  %add.ptr43 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %66, i64 %idx.ext42
  store %struct.CPpmd7_Node_* %add.ptr43, %struct.CPpmd7_Node_** %node2, align 8
  %68 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node2, align 8
  %NU44 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %68, i32 0, i32 1
  %69 = load i16, i16* %NU44, align 2
  %conv45 = zext i16 %69 to i32
  %70 = load i32, i32* %nu35, align 4
  %add46 = add i32 %70, %conv45
  store i32 %add46, i32* %nu35, align 4
  %71 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node2, align 8
  %Stamp47 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %71, i32 0, i32 0
  %72 = load i16, i16* %Stamp47, align 2
  %conv48 = zext i16 %72 to i32
  %cmp49 = icmp ne i32 %conv48, 0
  br i1 %cmp49, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond.38
  %73 = load i32, i32* %nu35, align 4
  %cmp51 = icmp uge i32 %73, 65536
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %lor.lhs.false, %for.cond.38
  br label %for.end.69

if.end.54:                                        ; preds = %lor.lhs.false
  %74 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node2, align 8
  %Next55 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %74, i32 0, i32 2
  %75 = load i32, i32* %Next55, align 4
  %76 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base56 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %76, i32 0, i32 12
  %77 = load i8*, i8** %Base56, align 8
  %78 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node2, align 8
  %Prev57 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %78, i32 0, i32 3
  %79 = load i32, i32* %Prev57, align 4
  %idx.ext58 = zext i32 %79 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %77, i64 %idx.ext58
  %80 = bitcast i8* %add.ptr59 to %struct.CPpmd7_Node_*
  %Next60 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %80, i32 0, i32 2
  store i32 %75, i32* %Next60, align 4
  %81 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node2, align 8
  %Prev61 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %81, i32 0, i32 3
  %82 = load i32, i32* %Prev61, align 4
  %83 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base62 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %83, i32 0, i32 12
  %84 = load i8*, i8** %Base62, align 8
  %85 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node2, align 8
  %Next63 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %85, i32 0, i32 2
  %86 = load i32, i32* %Next63, align 4
  %idx.ext64 = zext i32 %86 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %84, i64 %idx.ext64
  %87 = bitcast i8* %add.ptr65 to %struct.CPpmd7_Node_*
  %Prev66 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %87, i32 0, i32 3
  store i32 %82, i32* %Prev66, align 4
  %88 = load i32, i32* %nu35, align 4
  %conv67 = trunc i32 %88 to i16
  %89 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node31, align 8
  %NU68 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %89, i32 0, i32 1
  store i16 %conv67, i16* %NU68, align 2
  br label %for.cond.38

for.end.69:                                       ; preds = %if.then.53
  %90 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node31, align 8
  %Next70 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %90, i32 0, i32 2
  %91 = load i32, i32* %Next70, align 4
  store i32 %91, i32* %n, align 4
  br label %while.cond.27

while.end.71:                                     ; preds = %while.cond.27
  %92 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base72 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %92, i32 0, i32 12
  %93 = load i8*, i8** %Base72, align 8
  %94 = load i32, i32* %head, align 4
  %idx.ext73 = zext i32 %94 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %93, i64 %idx.ext73
  %95 = bitcast i8* %add.ptr74 to %struct.CPpmd7_Node_*
  %Next75 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %95, i32 0, i32 2
  %96 = load i32, i32* %Next75, align 4
  store i32 %96, i32* %n, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %if.end.115, %while.end.71
  %97 = load i32, i32* %n, align 4
  %98 = load i32, i32* %head, align 4
  %cmp77 = icmp ne i32 %97, %98
  br i1 %cmp77, label %for.body.79, label %for.end.116

for.body.79:                                      ; preds = %for.cond.76
  %99 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base81 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %99, i32 0, i32 12
  %100 = load i8*, i8** %Base81, align 8
  %101 = load i32, i32* %n, align 4
  %idx.ext82 = zext i32 %101 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %100, i64 %idx.ext82
  %102 = bitcast i8* %add.ptr83 to %struct.CPpmd7_Node_*
  store %struct.CPpmd7_Node_* %102, %struct.CPpmd7_Node_** %node80, align 8
  %103 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node80, align 8
  %Next86 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %103, i32 0, i32 2
  %104 = load i32, i32* %Next86, align 4
  store i32 %104, i32* %next85, align 4
  %105 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node80, align 8
  %NU87 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %105, i32 0, i32 1
  %106 = load i16, i16* %NU87, align 2
  %conv88 = zext i16 %106 to i32
  store i32 %conv88, i32* %nu84, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.93, %for.body.79
  %107 = load i32, i32* %nu84, align 4
  %cmp90 = icmp ugt i32 %107, 128
  br i1 %cmp90, label %for.body.92, label %for.end.95

for.body.92:                                      ; preds = %for.cond.89
  %108 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %109 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node80, align 8
  %110 = bitcast %struct.CPpmd7_Node_* %109 to i8*
  call void @InsertNode(%struct.CPpmd7* %108, i8* %110, i32 37)
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.92
  %111 = load i32, i32* %nu84, align 4
  %sub = sub i32 %111, 128
  store i32 %sub, i32* %nu84, align 4
  %112 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node80, align 8
  %add.ptr94 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %112, i64 128
  store %struct.CPpmd7_Node_* %add.ptr94, %struct.CPpmd7_Node_** %node80, align 8
  br label %for.cond.89

for.end.95:                                       ; preds = %for.cond.89
  %113 = load i32, i32* %nu84, align 4
  %sub96 = sub i32 %113, 1
  %idxprom97 = zext i32 %sub96 to i64
  %114 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Units2Indx = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %114, i32 0, i32 19
  %arrayidx98 = getelementptr inbounds [128 x i8], [128 x i8]* %Units2Indx, i32 0, i64 %idxprom97
  %115 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %115 to i32
  store i32 %conv99, i32* %i, align 4
  %idxprom100 = zext i32 %conv99 to i64
  %116 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Indx2Units101 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %116, i32 0, i32 18
  %arrayidx102 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units101, i32 0, i64 %idxprom100
  %117 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %117 to i32
  %118 = load i32, i32* %nu84, align 4
  %cmp104 = icmp ne i32 %conv103, %118
  br i1 %cmp104, label %if.then.106, label %if.end.115

if.then.106:                                      ; preds = %for.end.95
  %119 = load i32, i32* %i, align 4
  %dec = add i32 %119, -1
  store i32 %dec, i32* %i, align 4
  %idxprom107 = zext i32 %dec to i64
  %120 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Indx2Units108 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %120, i32 0, i32 18
  %arrayidx109 = getelementptr inbounds [38 x i8], [38 x i8]* %Indx2Units108, i32 0, i64 %idxprom107
  %121 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %121 to i32
  store i32 %conv110, i32* %k, align 4
  %122 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %123 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node80, align 8
  %124 = load i32, i32* %k, align 4
  %idx.ext111 = zext i32 %124 to i64
  %add.ptr112 = getelementptr inbounds %struct.CPpmd7_Node_, %struct.CPpmd7_Node_* %123, i64 %idx.ext111
  %125 = bitcast %struct.CPpmd7_Node_* %add.ptr112 to i8*
  %126 = load i32, i32* %nu84, align 4
  %127 = load i32, i32* %k, align 4
  %sub113 = sub i32 %126, %127
  %sub114 = sub i32 %sub113, 1
  call void @InsertNode(%struct.CPpmd7* %122, i8* %125, i32 %sub114)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.106, %for.end.95
  %128 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %129 = load %struct.CPpmd7_Node_*, %struct.CPpmd7_Node_** %node80, align 8
  %130 = bitcast %struct.CPpmd7_Node_* %129 to i8*
  %131 = load i32, i32* %i, align 4
  call void @InsertNode(%struct.CPpmd7* %128, i8* %130, i32 %131)
  %132 = load i32, i32* %next85, align 4
  store i32 %132, i32* %n, align 4
  br label %for.cond.76

for.end.116:                                      ; preds = %for.cond.76
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
