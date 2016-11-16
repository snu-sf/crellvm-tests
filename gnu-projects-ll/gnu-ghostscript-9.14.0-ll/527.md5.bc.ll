; ModuleID = './md5.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }

@gs_md5_finish.pad = internal constant [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16

; Function Attrs: nounwind uwtable
define void @gs_md5_init(%struct.gs_md5_state_s* %pms) #0 {
entry:
  %pms.addr = alloca %struct.gs_md5_state_s*, align 8
  store %struct.gs_md5_state_s* %pms, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %0 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %count, i32 0, i64 1
  store i32 0, i32* %arrayidx, align 4, !tbaa !5
  %1 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %count1 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %count1, i32 0, i64 0
  store i32 0, i32* %arrayidx2, align 4, !tbaa !5
  %2 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %abcd = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %2, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %abcd, i32 0, i64 0
  store i32 1732584193, i32* %arrayidx3, align 4, !tbaa !5
  %3 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %abcd4 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %3, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %abcd4, i32 0, i64 1
  store i32 -271733879, i32* %arrayidx5, align 4, !tbaa !5
  %4 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %abcd6 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %4, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %abcd6, i32 0, i64 2
  store i32 -1732584194, i32* %arrayidx7, align 4, !tbaa !5
  %5 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %abcd8 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %5, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %abcd8, i32 0, i64 3
  store i32 271733878, i32* %arrayidx9, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_md5_append(%struct.gs_md5_state_s* %pms, i8* %data, i32 %nbytes) #0 {
entry:
  %pms.addr = alloca %struct.gs_md5_state_s*, align 8
  %data.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %left = alloca i32, align 4
  %offset = alloca i32, align 4
  %nbits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %copy = alloca i32, align 4
  store %struct.gs_md5_state_s* %pms, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %1, i8** %p, align 8, !tbaa !1
  %2 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %3, i32* %left, align 4, !tbaa !5
  %4 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %count, i32 0, i64 0
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %shr = lshr i32 %6, 3
  %and = and i32 %shr, 63
  store i32 %and, i32* %offset, align 4, !tbaa !5
  %7 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %shl = shl i32 %8, 3
  store i32 %shl, i32* %nbits, align 4, !tbaa !5
  %9 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %shr1 = ashr i32 %10, 29
  %11 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %count2 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %count2, i32 0, i64 1
  %12 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %add = add i32 %12, %shr1
  store i32 %add, i32* %arrayidx3, align 4, !tbaa !5
  %13 = load i32, i32* %nbits, align 4, !tbaa !5
  %14 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %count4 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %14, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %count4, i32 0, i64 0
  %15 = load i32, i32* %arrayidx5, align 4, !tbaa !5
  %add6 = add i32 %15, %13
  store i32 %add6, i32* %arrayidx5, align 4, !tbaa !5
  %16 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %count7 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %16, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %count7, i32 0, i64 0
  %17 = load i32, i32* %arrayidx8, align 4, !tbaa !5
  %18 = load i32, i32* %nbits, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %17, %18
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end
  %19 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %count11 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %19, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %count11, i32 0, i64 1
  %20 = load i32, i32* %arrayidx12, align 4, !tbaa !5
  %inc = add i32 %20, 1
  store i32 %inc, i32* %arrayidx12, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end
  %21 = load i32, i32* %offset, align 4, !tbaa !5
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %if.end.13
  %22 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32, i32* %offset, align 4, !tbaa !5
  %24 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %add15 = add nsw i32 %23, %24
  %cmp16 = icmp sgt i32 %add15, 64
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %25 = load i32, i32* %offset, align 4, !tbaa !5
  %sub = sub nsw i32 64, %25
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  %26 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %26, %cond.false ]
  store i32 %cond, i32* %copy, align 4, !tbaa !5
  %27 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %27, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %28 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %30 = load i32, i32* %copy, align 4, !tbaa !5
  %conv = sext i32 %30 to i64
  %call = call i8* @memcpy(i8* %add.ptr, i8* %29, i64 %conv) #3
  %31 = load i32, i32* %offset, align 4, !tbaa !5
  %32 = load i32, i32* %copy, align 4, !tbaa !5
  %add17 = add nsw i32 %31, %32
  %cmp18 = icmp slt i32 %add17, 64
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %cond.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %cond.end
  %33 = load i32, i32* %copy, align 4, !tbaa !5
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext22 = sext i32 %33 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %34, i64 %idx.ext22
  store i8* %add.ptr23, i8** %p, align 8, !tbaa !1
  %35 = load i32, i32* %copy, align 4, !tbaa !5
  %36 = load i32, i32* %left, align 4, !tbaa !5
  %sub24 = sub nsw i32 %36, %35
  store i32 %sub24, i32* %left, align 4, !tbaa !5
  %37 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %38 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %buf25 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %38, i32 0, i32 2
  %arraydecay26 = getelementptr inbounds [64 x i8], [64 x i8]* %buf25, i32 0, i32 0
  call void @gs_md5_process(%struct.gs_md5_state_s* %37, i8* %arraydecay26) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20
  %39 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.39 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.27

if.end.27:                                        ; preds = %cleanup.cont, %if.end.13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %40 = load i32, i32* %left, align 4, !tbaa !5
  %cmp28 = icmp sge i32 %40, 64
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  call void @gs_md5_process(%struct.gs_md5_state_s* %41, i8* %42) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr30 = getelementptr inbounds i8, i8* %43, i64 64
  store i8* %add.ptr30, i8** %p, align 8, !tbaa !1
  %44 = load i32, i32* %left, align 4, !tbaa !5
  %sub31 = sub nsw i32 %44, 64
  store i32 %sub31, i32* %left, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i32, i32* %left, align 4, !tbaa !5
  %tobool32 = icmp ne i32 %45, 0
  br i1 %tobool32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %for.end
  %46 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %buf34 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %46, i32 0, i32 2
  %arraydecay35 = getelementptr inbounds [64 x i8], [64 x i8]* %buf34, i32 0, i32 0
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %48 = load i32, i32* %left, align 4, !tbaa !5
  %conv36 = sext i32 %48 to i64
  %call37 = call i8* @memcpy(i8* %arraydecay35, i8* %47, i64 %conv36) #3
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.39

cleanup.39:                                       ; preds = %if.end.38, %cleanup, %if.then
  %49 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %cleanup.dest.43 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.43, label %unreachable [
    i32 0, label %cleanup.cont.44
    i32 1, label %cleanup.cont.44
  ]

cleanup.cont.44:                                  ; preds = %cleanup.39, %cleanup.39
  ret void

unreachable:                                      ; preds = %cleanup.39
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @gs_md5_process(%struct.gs_md5_state_s* %pms, i8* %data) #0 {
entry:
  %pms.addr = alloca %struct.gs_md5_state_s*, align 8
  %data.addr = alloca i8*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %t = alloca i32, align 4
  %xbuf = alloca [16 x i32], align 16
  %X = alloca i32*, align 8
  store %struct.gs_md5_state_s* %pms, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %abcd = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %abcd, i32 0, i64 0
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %2, i32* %a, align 4, !tbaa !5
  %3 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %abcd1 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %abcd1, i32 0, i64 1
  %5 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  store i32 %5, i32* %b, align 4, !tbaa !5
  %6 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %abcd3 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %7, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %abcd3, i32 0, i64 2
  %8 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  store i32 %8, i32* %c, align 4, !tbaa !5
  %9 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %abcd5 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %10, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %abcd5, i32 0, i64 3
  %11 = load i32, i32* %arrayidx6, align 4, !tbaa !5
  store i32 %11, i32* %d, align 4, !tbaa !5
  %12 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast [16 x i32]* %xbuf to i8*
  call void @llvm.lifetime.start(i64 64, i8* %13) #1
  %14 = bitcast i32** %X to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %and = and i64 %sub.ptr.sub, 3
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %16 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %X, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %xbuf, i32 0, i32 0
  %18 = bitcast i32* %arraydecay to i8*
  %19 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call = call i8* @memcpy(i8* %18, i8* %19, i64 64) #3
  %arraydecay7 = getelementptr inbounds [16 x i32], [16 x i32]* %xbuf, i32 0, i32 0
  store i32* %arraydecay7, i32** %X, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load i32, i32* %a, align 4, !tbaa !5
  %21 = load i32, i32* %b, align 4, !tbaa !5
  %22 = load i32, i32* %c, align 4, !tbaa !5
  %and8 = and i32 %21, %22
  %23 = load i32, i32* %b, align 4, !tbaa !5
  %neg = xor i32 %23, -1
  %24 = load i32, i32* %d, align 4, !tbaa !5
  %and9 = and i32 %neg, %24
  %or = or i32 %and8, %and9
  %add = add i32 %20, %or
  %25 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i32, i32* %25, i64 0
  %26 = load i32, i32* %arrayidx10, align 4, !tbaa !5
  %add11 = add i32 %add, %26
  %add12 = add i32 %add11, -680876936
  store i32 %add12, i32* %t, align 4, !tbaa !5
  %27 = load i32, i32* %t, align 4, !tbaa !5
  %shl = shl i32 %27, 7
  %28 = load i32, i32* %t, align 4, !tbaa !5
  %shr = lshr i32 %28, 25
  %or13 = or i32 %shl, %shr
  %29 = load i32, i32* %b, align 4, !tbaa !5
  %add14 = add i32 %or13, %29
  store i32 %add14, i32* %a, align 4, !tbaa !5
  %30 = load i32, i32* %d, align 4, !tbaa !5
  %31 = load i32, i32* %a, align 4, !tbaa !5
  %32 = load i32, i32* %b, align 4, !tbaa !5
  %and15 = and i32 %31, %32
  %33 = load i32, i32* %a, align 4, !tbaa !5
  %neg16 = xor i32 %33, -1
  %34 = load i32, i32* %c, align 4, !tbaa !5
  %and17 = and i32 %neg16, %34
  %or18 = or i32 %and15, %and17
  %add19 = add i32 %30, %or18
  %35 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i32, i32* %35, i64 1
  %36 = load i32, i32* %arrayidx20, align 4, !tbaa !5
  %add21 = add i32 %add19, %36
  %add22 = add i32 %add21, -389564586
  store i32 %add22, i32* %t, align 4, !tbaa !5
  %37 = load i32, i32* %t, align 4, !tbaa !5
  %shl23 = shl i32 %37, 12
  %38 = load i32, i32* %t, align 4, !tbaa !5
  %shr24 = lshr i32 %38, 20
  %or25 = or i32 %shl23, %shr24
  %39 = load i32, i32* %a, align 4, !tbaa !5
  %add26 = add i32 %or25, %39
  store i32 %add26, i32* %d, align 4, !tbaa !5
  %40 = load i32, i32* %c, align 4, !tbaa !5
  %41 = load i32, i32* %d, align 4, !tbaa !5
  %42 = load i32, i32* %a, align 4, !tbaa !5
  %and27 = and i32 %41, %42
  %43 = load i32, i32* %d, align 4, !tbaa !5
  %neg28 = xor i32 %43, -1
  %44 = load i32, i32* %b, align 4, !tbaa !5
  %and29 = and i32 %neg28, %44
  %or30 = or i32 %and27, %and29
  %add31 = add i32 %40, %or30
  %45 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i32, i32* %45, i64 2
  %46 = load i32, i32* %arrayidx32, align 4, !tbaa !5
  %add33 = add i32 %add31, %46
  %add34 = add i32 %add33, 606105819
  store i32 %add34, i32* %t, align 4, !tbaa !5
  %47 = load i32, i32* %t, align 4, !tbaa !5
  %shl35 = shl i32 %47, 17
  %48 = load i32, i32* %t, align 4, !tbaa !5
  %shr36 = lshr i32 %48, 15
  %or37 = or i32 %shl35, %shr36
  %49 = load i32, i32* %d, align 4, !tbaa !5
  %add38 = add i32 %or37, %49
  store i32 %add38, i32* %c, align 4, !tbaa !5
  %50 = load i32, i32* %b, align 4, !tbaa !5
  %51 = load i32, i32* %c, align 4, !tbaa !5
  %52 = load i32, i32* %d, align 4, !tbaa !5
  %and39 = and i32 %51, %52
  %53 = load i32, i32* %c, align 4, !tbaa !5
  %neg40 = xor i32 %53, -1
  %54 = load i32, i32* %a, align 4, !tbaa !5
  %and41 = and i32 %neg40, %54
  %or42 = or i32 %and39, %and41
  %add43 = add i32 %50, %or42
  %55 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i32, i32* %55, i64 3
  %56 = load i32, i32* %arrayidx44, align 4, !tbaa !5
  %add45 = add i32 %add43, %56
  %add46 = add i32 %add45, -1044525330
  store i32 %add46, i32* %t, align 4, !tbaa !5
  %57 = load i32, i32* %t, align 4, !tbaa !5
  %shl47 = shl i32 %57, 22
  %58 = load i32, i32* %t, align 4, !tbaa !5
  %shr48 = lshr i32 %58, 10
  %or49 = or i32 %shl47, %shr48
  %59 = load i32, i32* %c, align 4, !tbaa !5
  %add50 = add i32 %or49, %59
  store i32 %add50, i32* %b, align 4, !tbaa !5
  %60 = load i32, i32* %a, align 4, !tbaa !5
  %61 = load i32, i32* %b, align 4, !tbaa !5
  %62 = load i32, i32* %c, align 4, !tbaa !5
  %and51 = and i32 %61, %62
  %63 = load i32, i32* %b, align 4, !tbaa !5
  %neg52 = xor i32 %63, -1
  %64 = load i32, i32* %d, align 4, !tbaa !5
  %and53 = and i32 %neg52, %64
  %or54 = or i32 %and51, %and53
  %add55 = add i32 %60, %or54
  %65 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i32, i32* %65, i64 4
  %66 = load i32, i32* %arrayidx56, align 4, !tbaa !5
  %add57 = add i32 %add55, %66
  %add58 = add i32 %add57, -176418897
  store i32 %add58, i32* %t, align 4, !tbaa !5
  %67 = load i32, i32* %t, align 4, !tbaa !5
  %shl59 = shl i32 %67, 7
  %68 = load i32, i32* %t, align 4, !tbaa !5
  %shr60 = lshr i32 %68, 25
  %or61 = or i32 %shl59, %shr60
  %69 = load i32, i32* %b, align 4, !tbaa !5
  %add62 = add i32 %or61, %69
  store i32 %add62, i32* %a, align 4, !tbaa !5
  %70 = load i32, i32* %d, align 4, !tbaa !5
  %71 = load i32, i32* %a, align 4, !tbaa !5
  %72 = load i32, i32* %b, align 4, !tbaa !5
  %and63 = and i32 %71, %72
  %73 = load i32, i32* %a, align 4, !tbaa !5
  %neg64 = xor i32 %73, -1
  %74 = load i32, i32* %c, align 4, !tbaa !5
  %and65 = and i32 %neg64, %74
  %or66 = or i32 %and63, %and65
  %add67 = add i32 %70, %or66
  %75 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i32, i32* %75, i64 5
  %76 = load i32, i32* %arrayidx68, align 4, !tbaa !5
  %add69 = add i32 %add67, %76
  %add70 = add i32 %add69, 1200080426
  store i32 %add70, i32* %t, align 4, !tbaa !5
  %77 = load i32, i32* %t, align 4, !tbaa !5
  %shl71 = shl i32 %77, 12
  %78 = load i32, i32* %t, align 4, !tbaa !5
  %shr72 = lshr i32 %78, 20
  %or73 = or i32 %shl71, %shr72
  %79 = load i32, i32* %a, align 4, !tbaa !5
  %add74 = add i32 %or73, %79
  store i32 %add74, i32* %d, align 4, !tbaa !5
  %80 = load i32, i32* %c, align 4, !tbaa !5
  %81 = load i32, i32* %d, align 4, !tbaa !5
  %82 = load i32, i32* %a, align 4, !tbaa !5
  %and75 = and i32 %81, %82
  %83 = load i32, i32* %d, align 4, !tbaa !5
  %neg76 = xor i32 %83, -1
  %84 = load i32, i32* %b, align 4, !tbaa !5
  %and77 = and i32 %neg76, %84
  %or78 = or i32 %and75, %and77
  %add79 = add i32 %80, %or78
  %85 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i32, i32* %85, i64 6
  %86 = load i32, i32* %arrayidx80, align 4, !tbaa !5
  %add81 = add i32 %add79, %86
  %add82 = add i32 %add81, -1473231341
  store i32 %add82, i32* %t, align 4, !tbaa !5
  %87 = load i32, i32* %t, align 4, !tbaa !5
  %shl83 = shl i32 %87, 17
  %88 = load i32, i32* %t, align 4, !tbaa !5
  %shr84 = lshr i32 %88, 15
  %or85 = or i32 %shl83, %shr84
  %89 = load i32, i32* %d, align 4, !tbaa !5
  %add86 = add i32 %or85, %89
  store i32 %add86, i32* %c, align 4, !tbaa !5
  %90 = load i32, i32* %b, align 4, !tbaa !5
  %91 = load i32, i32* %c, align 4, !tbaa !5
  %92 = load i32, i32* %d, align 4, !tbaa !5
  %and87 = and i32 %91, %92
  %93 = load i32, i32* %c, align 4, !tbaa !5
  %neg88 = xor i32 %93, -1
  %94 = load i32, i32* %a, align 4, !tbaa !5
  %and89 = and i32 %neg88, %94
  %or90 = or i32 %and87, %and89
  %add91 = add i32 %90, %or90
  %95 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i32, i32* %95, i64 7
  %96 = load i32, i32* %arrayidx92, align 4, !tbaa !5
  %add93 = add i32 %add91, %96
  %add94 = add i32 %add93, -45705983
  store i32 %add94, i32* %t, align 4, !tbaa !5
  %97 = load i32, i32* %t, align 4, !tbaa !5
  %shl95 = shl i32 %97, 22
  %98 = load i32, i32* %t, align 4, !tbaa !5
  %shr96 = lshr i32 %98, 10
  %or97 = or i32 %shl95, %shr96
  %99 = load i32, i32* %c, align 4, !tbaa !5
  %add98 = add i32 %or97, %99
  store i32 %add98, i32* %b, align 4, !tbaa !5
  %100 = load i32, i32* %a, align 4, !tbaa !5
  %101 = load i32, i32* %b, align 4, !tbaa !5
  %102 = load i32, i32* %c, align 4, !tbaa !5
  %and99 = and i32 %101, %102
  %103 = load i32, i32* %b, align 4, !tbaa !5
  %neg100 = xor i32 %103, -1
  %104 = load i32, i32* %d, align 4, !tbaa !5
  %and101 = and i32 %neg100, %104
  %or102 = or i32 %and99, %and101
  %add103 = add i32 %100, %or102
  %105 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i32, i32* %105, i64 8
  %106 = load i32, i32* %arrayidx104, align 4, !tbaa !5
  %add105 = add i32 %add103, %106
  %add106 = add i32 %add105, 1770035416
  store i32 %add106, i32* %t, align 4, !tbaa !5
  %107 = load i32, i32* %t, align 4, !tbaa !5
  %shl107 = shl i32 %107, 7
  %108 = load i32, i32* %t, align 4, !tbaa !5
  %shr108 = lshr i32 %108, 25
  %or109 = or i32 %shl107, %shr108
  %109 = load i32, i32* %b, align 4, !tbaa !5
  %add110 = add i32 %or109, %109
  store i32 %add110, i32* %a, align 4, !tbaa !5
  %110 = load i32, i32* %d, align 4, !tbaa !5
  %111 = load i32, i32* %a, align 4, !tbaa !5
  %112 = load i32, i32* %b, align 4, !tbaa !5
  %and111 = and i32 %111, %112
  %113 = load i32, i32* %a, align 4, !tbaa !5
  %neg112 = xor i32 %113, -1
  %114 = load i32, i32* %c, align 4, !tbaa !5
  %and113 = and i32 %neg112, %114
  %or114 = or i32 %and111, %and113
  %add115 = add i32 %110, %or114
  %115 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i32, i32* %115, i64 9
  %116 = load i32, i32* %arrayidx116, align 4, !tbaa !5
  %add117 = add i32 %add115, %116
  %add118 = add i32 %add117, -1958414417
  store i32 %add118, i32* %t, align 4, !tbaa !5
  %117 = load i32, i32* %t, align 4, !tbaa !5
  %shl119 = shl i32 %117, 12
  %118 = load i32, i32* %t, align 4, !tbaa !5
  %shr120 = lshr i32 %118, 20
  %or121 = or i32 %shl119, %shr120
  %119 = load i32, i32* %a, align 4, !tbaa !5
  %add122 = add i32 %or121, %119
  store i32 %add122, i32* %d, align 4, !tbaa !5
  %120 = load i32, i32* %c, align 4, !tbaa !5
  %121 = load i32, i32* %d, align 4, !tbaa !5
  %122 = load i32, i32* %a, align 4, !tbaa !5
  %and123 = and i32 %121, %122
  %123 = load i32, i32* %d, align 4, !tbaa !5
  %neg124 = xor i32 %123, -1
  %124 = load i32, i32* %b, align 4, !tbaa !5
  %and125 = and i32 %neg124, %124
  %or126 = or i32 %and123, %and125
  %add127 = add i32 %120, %or126
  %125 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i32, i32* %125, i64 10
  %126 = load i32, i32* %arrayidx128, align 4, !tbaa !5
  %add129 = add i32 %add127, %126
  %add130 = add i32 %add129, -42063
  store i32 %add130, i32* %t, align 4, !tbaa !5
  %127 = load i32, i32* %t, align 4, !tbaa !5
  %shl131 = shl i32 %127, 17
  %128 = load i32, i32* %t, align 4, !tbaa !5
  %shr132 = lshr i32 %128, 15
  %or133 = or i32 %shl131, %shr132
  %129 = load i32, i32* %d, align 4, !tbaa !5
  %add134 = add i32 %or133, %129
  store i32 %add134, i32* %c, align 4, !tbaa !5
  %130 = load i32, i32* %b, align 4, !tbaa !5
  %131 = load i32, i32* %c, align 4, !tbaa !5
  %132 = load i32, i32* %d, align 4, !tbaa !5
  %and135 = and i32 %131, %132
  %133 = load i32, i32* %c, align 4, !tbaa !5
  %neg136 = xor i32 %133, -1
  %134 = load i32, i32* %a, align 4, !tbaa !5
  %and137 = and i32 %neg136, %134
  %or138 = or i32 %and135, %and137
  %add139 = add i32 %130, %or138
  %135 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i32, i32* %135, i64 11
  %136 = load i32, i32* %arrayidx140, align 4, !tbaa !5
  %add141 = add i32 %add139, %136
  %add142 = add i32 %add141, -1990404162
  store i32 %add142, i32* %t, align 4, !tbaa !5
  %137 = load i32, i32* %t, align 4, !tbaa !5
  %shl143 = shl i32 %137, 22
  %138 = load i32, i32* %t, align 4, !tbaa !5
  %shr144 = lshr i32 %138, 10
  %or145 = or i32 %shl143, %shr144
  %139 = load i32, i32* %c, align 4, !tbaa !5
  %add146 = add i32 %or145, %139
  store i32 %add146, i32* %b, align 4, !tbaa !5
  %140 = load i32, i32* %a, align 4, !tbaa !5
  %141 = load i32, i32* %b, align 4, !tbaa !5
  %142 = load i32, i32* %c, align 4, !tbaa !5
  %and147 = and i32 %141, %142
  %143 = load i32, i32* %b, align 4, !tbaa !5
  %neg148 = xor i32 %143, -1
  %144 = load i32, i32* %d, align 4, !tbaa !5
  %and149 = and i32 %neg148, %144
  %or150 = or i32 %and147, %and149
  %add151 = add i32 %140, %or150
  %145 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i32, i32* %145, i64 12
  %146 = load i32, i32* %arrayidx152, align 4, !tbaa !5
  %add153 = add i32 %add151, %146
  %add154 = add i32 %add153, 1804603682
  store i32 %add154, i32* %t, align 4, !tbaa !5
  %147 = load i32, i32* %t, align 4, !tbaa !5
  %shl155 = shl i32 %147, 7
  %148 = load i32, i32* %t, align 4, !tbaa !5
  %shr156 = lshr i32 %148, 25
  %or157 = or i32 %shl155, %shr156
  %149 = load i32, i32* %b, align 4, !tbaa !5
  %add158 = add i32 %or157, %149
  store i32 %add158, i32* %a, align 4, !tbaa !5
  %150 = load i32, i32* %d, align 4, !tbaa !5
  %151 = load i32, i32* %a, align 4, !tbaa !5
  %152 = load i32, i32* %b, align 4, !tbaa !5
  %and159 = and i32 %151, %152
  %153 = load i32, i32* %a, align 4, !tbaa !5
  %neg160 = xor i32 %153, -1
  %154 = load i32, i32* %c, align 4, !tbaa !5
  %and161 = and i32 %neg160, %154
  %or162 = or i32 %and159, %and161
  %add163 = add i32 %150, %or162
  %155 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i32, i32* %155, i64 13
  %156 = load i32, i32* %arrayidx164, align 4, !tbaa !5
  %add165 = add i32 %add163, %156
  %add166 = add i32 %add165, -40341101
  store i32 %add166, i32* %t, align 4, !tbaa !5
  %157 = load i32, i32* %t, align 4, !tbaa !5
  %shl167 = shl i32 %157, 12
  %158 = load i32, i32* %t, align 4, !tbaa !5
  %shr168 = lshr i32 %158, 20
  %or169 = or i32 %shl167, %shr168
  %159 = load i32, i32* %a, align 4, !tbaa !5
  %add170 = add i32 %or169, %159
  store i32 %add170, i32* %d, align 4, !tbaa !5
  %160 = load i32, i32* %c, align 4, !tbaa !5
  %161 = load i32, i32* %d, align 4, !tbaa !5
  %162 = load i32, i32* %a, align 4, !tbaa !5
  %and171 = and i32 %161, %162
  %163 = load i32, i32* %d, align 4, !tbaa !5
  %neg172 = xor i32 %163, -1
  %164 = load i32, i32* %b, align 4, !tbaa !5
  %and173 = and i32 %neg172, %164
  %or174 = or i32 %and171, %and173
  %add175 = add i32 %160, %or174
  %165 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i32, i32* %165, i64 14
  %166 = load i32, i32* %arrayidx176, align 4, !tbaa !5
  %add177 = add i32 %add175, %166
  %add178 = add i32 %add177, -1502002290
  store i32 %add178, i32* %t, align 4, !tbaa !5
  %167 = load i32, i32* %t, align 4, !tbaa !5
  %shl179 = shl i32 %167, 17
  %168 = load i32, i32* %t, align 4, !tbaa !5
  %shr180 = lshr i32 %168, 15
  %or181 = or i32 %shl179, %shr180
  %169 = load i32, i32* %d, align 4, !tbaa !5
  %add182 = add i32 %or181, %169
  store i32 %add182, i32* %c, align 4, !tbaa !5
  %170 = load i32, i32* %b, align 4, !tbaa !5
  %171 = load i32, i32* %c, align 4, !tbaa !5
  %172 = load i32, i32* %d, align 4, !tbaa !5
  %and183 = and i32 %171, %172
  %173 = load i32, i32* %c, align 4, !tbaa !5
  %neg184 = xor i32 %173, -1
  %174 = load i32, i32* %a, align 4, !tbaa !5
  %and185 = and i32 %neg184, %174
  %or186 = or i32 %and183, %and185
  %add187 = add i32 %170, %or186
  %175 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i32, i32* %175, i64 15
  %176 = load i32, i32* %arrayidx188, align 4, !tbaa !5
  %add189 = add i32 %add187, %176
  %add190 = add i32 %add189, 1236535329
  store i32 %add190, i32* %t, align 4, !tbaa !5
  %177 = load i32, i32* %t, align 4, !tbaa !5
  %shl191 = shl i32 %177, 22
  %178 = load i32, i32* %t, align 4, !tbaa !5
  %shr192 = lshr i32 %178, 10
  %or193 = or i32 %shl191, %shr192
  %179 = load i32, i32* %c, align 4, !tbaa !5
  %add194 = add i32 %or193, %179
  store i32 %add194, i32* %b, align 4, !tbaa !5
  %180 = load i32, i32* %a, align 4, !tbaa !5
  %181 = load i32, i32* %b, align 4, !tbaa !5
  %182 = load i32, i32* %d, align 4, !tbaa !5
  %and195 = and i32 %181, %182
  %183 = load i32, i32* %c, align 4, !tbaa !5
  %184 = load i32, i32* %d, align 4, !tbaa !5
  %neg196 = xor i32 %184, -1
  %and197 = and i32 %183, %neg196
  %or198 = or i32 %and195, %and197
  %add199 = add i32 %180, %or198
  %185 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i32, i32* %185, i64 1
  %186 = load i32, i32* %arrayidx200, align 4, !tbaa !5
  %add201 = add i32 %add199, %186
  %add202 = add i32 %add201, -165796510
  store i32 %add202, i32* %t, align 4, !tbaa !5
  %187 = load i32, i32* %t, align 4, !tbaa !5
  %shl203 = shl i32 %187, 5
  %188 = load i32, i32* %t, align 4, !tbaa !5
  %shr204 = lshr i32 %188, 27
  %or205 = or i32 %shl203, %shr204
  %189 = load i32, i32* %b, align 4, !tbaa !5
  %add206 = add i32 %or205, %189
  store i32 %add206, i32* %a, align 4, !tbaa !5
  %190 = load i32, i32* %d, align 4, !tbaa !5
  %191 = load i32, i32* %a, align 4, !tbaa !5
  %192 = load i32, i32* %c, align 4, !tbaa !5
  %and207 = and i32 %191, %192
  %193 = load i32, i32* %b, align 4, !tbaa !5
  %194 = load i32, i32* %c, align 4, !tbaa !5
  %neg208 = xor i32 %194, -1
  %and209 = and i32 %193, %neg208
  %or210 = or i32 %and207, %and209
  %add211 = add i32 %190, %or210
  %195 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds i32, i32* %195, i64 6
  %196 = load i32, i32* %arrayidx212, align 4, !tbaa !5
  %add213 = add i32 %add211, %196
  %add214 = add i32 %add213, -1069501632
  store i32 %add214, i32* %t, align 4, !tbaa !5
  %197 = load i32, i32* %t, align 4, !tbaa !5
  %shl215 = shl i32 %197, 9
  %198 = load i32, i32* %t, align 4, !tbaa !5
  %shr216 = lshr i32 %198, 23
  %or217 = or i32 %shl215, %shr216
  %199 = load i32, i32* %a, align 4, !tbaa !5
  %add218 = add i32 %or217, %199
  store i32 %add218, i32* %d, align 4, !tbaa !5
  %200 = load i32, i32* %c, align 4, !tbaa !5
  %201 = load i32, i32* %d, align 4, !tbaa !5
  %202 = load i32, i32* %b, align 4, !tbaa !5
  %and219 = and i32 %201, %202
  %203 = load i32, i32* %a, align 4, !tbaa !5
  %204 = load i32, i32* %b, align 4, !tbaa !5
  %neg220 = xor i32 %204, -1
  %and221 = and i32 %203, %neg220
  %or222 = or i32 %and219, %and221
  %add223 = add i32 %200, %or222
  %205 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds i32, i32* %205, i64 11
  %206 = load i32, i32* %arrayidx224, align 4, !tbaa !5
  %add225 = add i32 %add223, %206
  %add226 = add i32 %add225, 643717713
  store i32 %add226, i32* %t, align 4, !tbaa !5
  %207 = load i32, i32* %t, align 4, !tbaa !5
  %shl227 = shl i32 %207, 14
  %208 = load i32, i32* %t, align 4, !tbaa !5
  %shr228 = lshr i32 %208, 18
  %or229 = or i32 %shl227, %shr228
  %209 = load i32, i32* %d, align 4, !tbaa !5
  %add230 = add i32 %or229, %209
  store i32 %add230, i32* %c, align 4, !tbaa !5
  %210 = load i32, i32* %b, align 4, !tbaa !5
  %211 = load i32, i32* %c, align 4, !tbaa !5
  %212 = load i32, i32* %a, align 4, !tbaa !5
  %and231 = and i32 %211, %212
  %213 = load i32, i32* %d, align 4, !tbaa !5
  %214 = load i32, i32* %a, align 4, !tbaa !5
  %neg232 = xor i32 %214, -1
  %and233 = and i32 %213, %neg232
  %or234 = or i32 %and231, %and233
  %add235 = add i32 %210, %or234
  %215 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx236 = getelementptr inbounds i32, i32* %215, i64 0
  %216 = load i32, i32* %arrayidx236, align 4, !tbaa !5
  %add237 = add i32 %add235, %216
  %add238 = add i32 %add237, -373897302
  store i32 %add238, i32* %t, align 4, !tbaa !5
  %217 = load i32, i32* %t, align 4, !tbaa !5
  %shl239 = shl i32 %217, 20
  %218 = load i32, i32* %t, align 4, !tbaa !5
  %shr240 = lshr i32 %218, 12
  %or241 = or i32 %shl239, %shr240
  %219 = load i32, i32* %c, align 4, !tbaa !5
  %add242 = add i32 %or241, %219
  store i32 %add242, i32* %b, align 4, !tbaa !5
  %220 = load i32, i32* %a, align 4, !tbaa !5
  %221 = load i32, i32* %b, align 4, !tbaa !5
  %222 = load i32, i32* %d, align 4, !tbaa !5
  %and243 = and i32 %221, %222
  %223 = load i32, i32* %c, align 4, !tbaa !5
  %224 = load i32, i32* %d, align 4, !tbaa !5
  %neg244 = xor i32 %224, -1
  %and245 = and i32 %223, %neg244
  %or246 = or i32 %and243, %and245
  %add247 = add i32 %220, %or246
  %225 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds i32, i32* %225, i64 5
  %226 = load i32, i32* %arrayidx248, align 4, !tbaa !5
  %add249 = add i32 %add247, %226
  %add250 = add i32 %add249, -701558691
  store i32 %add250, i32* %t, align 4, !tbaa !5
  %227 = load i32, i32* %t, align 4, !tbaa !5
  %shl251 = shl i32 %227, 5
  %228 = load i32, i32* %t, align 4, !tbaa !5
  %shr252 = lshr i32 %228, 27
  %or253 = or i32 %shl251, %shr252
  %229 = load i32, i32* %b, align 4, !tbaa !5
  %add254 = add i32 %or253, %229
  store i32 %add254, i32* %a, align 4, !tbaa !5
  %230 = load i32, i32* %d, align 4, !tbaa !5
  %231 = load i32, i32* %a, align 4, !tbaa !5
  %232 = load i32, i32* %c, align 4, !tbaa !5
  %and255 = and i32 %231, %232
  %233 = load i32, i32* %b, align 4, !tbaa !5
  %234 = load i32, i32* %c, align 4, !tbaa !5
  %neg256 = xor i32 %234, -1
  %and257 = and i32 %233, %neg256
  %or258 = or i32 %and255, %and257
  %add259 = add i32 %230, %or258
  %235 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx260 = getelementptr inbounds i32, i32* %235, i64 10
  %236 = load i32, i32* %arrayidx260, align 4, !tbaa !5
  %add261 = add i32 %add259, %236
  %add262 = add i32 %add261, 38016083
  store i32 %add262, i32* %t, align 4, !tbaa !5
  %237 = load i32, i32* %t, align 4, !tbaa !5
  %shl263 = shl i32 %237, 9
  %238 = load i32, i32* %t, align 4, !tbaa !5
  %shr264 = lshr i32 %238, 23
  %or265 = or i32 %shl263, %shr264
  %239 = load i32, i32* %a, align 4, !tbaa !5
  %add266 = add i32 %or265, %239
  store i32 %add266, i32* %d, align 4, !tbaa !5
  %240 = load i32, i32* %c, align 4, !tbaa !5
  %241 = load i32, i32* %d, align 4, !tbaa !5
  %242 = load i32, i32* %b, align 4, !tbaa !5
  %and267 = and i32 %241, %242
  %243 = load i32, i32* %a, align 4, !tbaa !5
  %244 = load i32, i32* %b, align 4, !tbaa !5
  %neg268 = xor i32 %244, -1
  %and269 = and i32 %243, %neg268
  %or270 = or i32 %and267, %and269
  %add271 = add i32 %240, %or270
  %245 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx272 = getelementptr inbounds i32, i32* %245, i64 15
  %246 = load i32, i32* %arrayidx272, align 4, !tbaa !5
  %add273 = add i32 %add271, %246
  %add274 = add i32 %add273, -660478335
  store i32 %add274, i32* %t, align 4, !tbaa !5
  %247 = load i32, i32* %t, align 4, !tbaa !5
  %shl275 = shl i32 %247, 14
  %248 = load i32, i32* %t, align 4, !tbaa !5
  %shr276 = lshr i32 %248, 18
  %or277 = or i32 %shl275, %shr276
  %249 = load i32, i32* %d, align 4, !tbaa !5
  %add278 = add i32 %or277, %249
  store i32 %add278, i32* %c, align 4, !tbaa !5
  %250 = load i32, i32* %b, align 4, !tbaa !5
  %251 = load i32, i32* %c, align 4, !tbaa !5
  %252 = load i32, i32* %a, align 4, !tbaa !5
  %and279 = and i32 %251, %252
  %253 = load i32, i32* %d, align 4, !tbaa !5
  %254 = load i32, i32* %a, align 4, !tbaa !5
  %neg280 = xor i32 %254, -1
  %and281 = and i32 %253, %neg280
  %or282 = or i32 %and279, %and281
  %add283 = add i32 %250, %or282
  %255 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx284 = getelementptr inbounds i32, i32* %255, i64 4
  %256 = load i32, i32* %arrayidx284, align 4, !tbaa !5
  %add285 = add i32 %add283, %256
  %add286 = add i32 %add285, -405537848
  store i32 %add286, i32* %t, align 4, !tbaa !5
  %257 = load i32, i32* %t, align 4, !tbaa !5
  %shl287 = shl i32 %257, 20
  %258 = load i32, i32* %t, align 4, !tbaa !5
  %shr288 = lshr i32 %258, 12
  %or289 = or i32 %shl287, %shr288
  %259 = load i32, i32* %c, align 4, !tbaa !5
  %add290 = add i32 %or289, %259
  store i32 %add290, i32* %b, align 4, !tbaa !5
  %260 = load i32, i32* %a, align 4, !tbaa !5
  %261 = load i32, i32* %b, align 4, !tbaa !5
  %262 = load i32, i32* %d, align 4, !tbaa !5
  %and291 = and i32 %261, %262
  %263 = load i32, i32* %c, align 4, !tbaa !5
  %264 = load i32, i32* %d, align 4, !tbaa !5
  %neg292 = xor i32 %264, -1
  %and293 = and i32 %263, %neg292
  %or294 = or i32 %and291, %and293
  %add295 = add i32 %260, %or294
  %265 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx296 = getelementptr inbounds i32, i32* %265, i64 9
  %266 = load i32, i32* %arrayidx296, align 4, !tbaa !5
  %add297 = add i32 %add295, %266
  %add298 = add i32 %add297, 568446438
  store i32 %add298, i32* %t, align 4, !tbaa !5
  %267 = load i32, i32* %t, align 4, !tbaa !5
  %shl299 = shl i32 %267, 5
  %268 = load i32, i32* %t, align 4, !tbaa !5
  %shr300 = lshr i32 %268, 27
  %or301 = or i32 %shl299, %shr300
  %269 = load i32, i32* %b, align 4, !tbaa !5
  %add302 = add i32 %or301, %269
  store i32 %add302, i32* %a, align 4, !tbaa !5
  %270 = load i32, i32* %d, align 4, !tbaa !5
  %271 = load i32, i32* %a, align 4, !tbaa !5
  %272 = load i32, i32* %c, align 4, !tbaa !5
  %and303 = and i32 %271, %272
  %273 = load i32, i32* %b, align 4, !tbaa !5
  %274 = load i32, i32* %c, align 4, !tbaa !5
  %neg304 = xor i32 %274, -1
  %and305 = and i32 %273, %neg304
  %or306 = or i32 %and303, %and305
  %add307 = add i32 %270, %or306
  %275 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx308 = getelementptr inbounds i32, i32* %275, i64 14
  %276 = load i32, i32* %arrayidx308, align 4, !tbaa !5
  %add309 = add i32 %add307, %276
  %add310 = add i32 %add309, -1019803690
  store i32 %add310, i32* %t, align 4, !tbaa !5
  %277 = load i32, i32* %t, align 4, !tbaa !5
  %shl311 = shl i32 %277, 9
  %278 = load i32, i32* %t, align 4, !tbaa !5
  %shr312 = lshr i32 %278, 23
  %or313 = or i32 %shl311, %shr312
  %279 = load i32, i32* %a, align 4, !tbaa !5
  %add314 = add i32 %or313, %279
  store i32 %add314, i32* %d, align 4, !tbaa !5
  %280 = load i32, i32* %c, align 4, !tbaa !5
  %281 = load i32, i32* %d, align 4, !tbaa !5
  %282 = load i32, i32* %b, align 4, !tbaa !5
  %and315 = and i32 %281, %282
  %283 = load i32, i32* %a, align 4, !tbaa !5
  %284 = load i32, i32* %b, align 4, !tbaa !5
  %neg316 = xor i32 %284, -1
  %and317 = and i32 %283, %neg316
  %or318 = or i32 %and315, %and317
  %add319 = add i32 %280, %or318
  %285 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx320 = getelementptr inbounds i32, i32* %285, i64 3
  %286 = load i32, i32* %arrayidx320, align 4, !tbaa !5
  %add321 = add i32 %add319, %286
  %add322 = add i32 %add321, -187363961
  store i32 %add322, i32* %t, align 4, !tbaa !5
  %287 = load i32, i32* %t, align 4, !tbaa !5
  %shl323 = shl i32 %287, 14
  %288 = load i32, i32* %t, align 4, !tbaa !5
  %shr324 = lshr i32 %288, 18
  %or325 = or i32 %shl323, %shr324
  %289 = load i32, i32* %d, align 4, !tbaa !5
  %add326 = add i32 %or325, %289
  store i32 %add326, i32* %c, align 4, !tbaa !5
  %290 = load i32, i32* %b, align 4, !tbaa !5
  %291 = load i32, i32* %c, align 4, !tbaa !5
  %292 = load i32, i32* %a, align 4, !tbaa !5
  %and327 = and i32 %291, %292
  %293 = load i32, i32* %d, align 4, !tbaa !5
  %294 = load i32, i32* %a, align 4, !tbaa !5
  %neg328 = xor i32 %294, -1
  %and329 = and i32 %293, %neg328
  %or330 = or i32 %and327, %and329
  %add331 = add i32 %290, %or330
  %295 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx332 = getelementptr inbounds i32, i32* %295, i64 8
  %296 = load i32, i32* %arrayidx332, align 4, !tbaa !5
  %add333 = add i32 %add331, %296
  %add334 = add i32 %add333, 1163531501
  store i32 %add334, i32* %t, align 4, !tbaa !5
  %297 = load i32, i32* %t, align 4, !tbaa !5
  %shl335 = shl i32 %297, 20
  %298 = load i32, i32* %t, align 4, !tbaa !5
  %shr336 = lshr i32 %298, 12
  %or337 = or i32 %shl335, %shr336
  %299 = load i32, i32* %c, align 4, !tbaa !5
  %add338 = add i32 %or337, %299
  store i32 %add338, i32* %b, align 4, !tbaa !5
  %300 = load i32, i32* %a, align 4, !tbaa !5
  %301 = load i32, i32* %b, align 4, !tbaa !5
  %302 = load i32, i32* %d, align 4, !tbaa !5
  %and339 = and i32 %301, %302
  %303 = load i32, i32* %c, align 4, !tbaa !5
  %304 = load i32, i32* %d, align 4, !tbaa !5
  %neg340 = xor i32 %304, -1
  %and341 = and i32 %303, %neg340
  %or342 = or i32 %and339, %and341
  %add343 = add i32 %300, %or342
  %305 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx344 = getelementptr inbounds i32, i32* %305, i64 13
  %306 = load i32, i32* %arrayidx344, align 4, !tbaa !5
  %add345 = add i32 %add343, %306
  %add346 = add i32 %add345, -1444681467
  store i32 %add346, i32* %t, align 4, !tbaa !5
  %307 = load i32, i32* %t, align 4, !tbaa !5
  %shl347 = shl i32 %307, 5
  %308 = load i32, i32* %t, align 4, !tbaa !5
  %shr348 = lshr i32 %308, 27
  %or349 = or i32 %shl347, %shr348
  %309 = load i32, i32* %b, align 4, !tbaa !5
  %add350 = add i32 %or349, %309
  store i32 %add350, i32* %a, align 4, !tbaa !5
  %310 = load i32, i32* %d, align 4, !tbaa !5
  %311 = load i32, i32* %a, align 4, !tbaa !5
  %312 = load i32, i32* %c, align 4, !tbaa !5
  %and351 = and i32 %311, %312
  %313 = load i32, i32* %b, align 4, !tbaa !5
  %314 = load i32, i32* %c, align 4, !tbaa !5
  %neg352 = xor i32 %314, -1
  %and353 = and i32 %313, %neg352
  %or354 = or i32 %and351, %and353
  %add355 = add i32 %310, %or354
  %315 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx356 = getelementptr inbounds i32, i32* %315, i64 2
  %316 = load i32, i32* %arrayidx356, align 4, !tbaa !5
  %add357 = add i32 %add355, %316
  %add358 = add i32 %add357, -51403784
  store i32 %add358, i32* %t, align 4, !tbaa !5
  %317 = load i32, i32* %t, align 4, !tbaa !5
  %shl359 = shl i32 %317, 9
  %318 = load i32, i32* %t, align 4, !tbaa !5
  %shr360 = lshr i32 %318, 23
  %or361 = or i32 %shl359, %shr360
  %319 = load i32, i32* %a, align 4, !tbaa !5
  %add362 = add i32 %or361, %319
  store i32 %add362, i32* %d, align 4, !tbaa !5
  %320 = load i32, i32* %c, align 4, !tbaa !5
  %321 = load i32, i32* %d, align 4, !tbaa !5
  %322 = load i32, i32* %b, align 4, !tbaa !5
  %and363 = and i32 %321, %322
  %323 = load i32, i32* %a, align 4, !tbaa !5
  %324 = load i32, i32* %b, align 4, !tbaa !5
  %neg364 = xor i32 %324, -1
  %and365 = and i32 %323, %neg364
  %or366 = or i32 %and363, %and365
  %add367 = add i32 %320, %or366
  %325 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx368 = getelementptr inbounds i32, i32* %325, i64 7
  %326 = load i32, i32* %arrayidx368, align 4, !tbaa !5
  %add369 = add i32 %add367, %326
  %add370 = add i32 %add369, 1735328473
  store i32 %add370, i32* %t, align 4, !tbaa !5
  %327 = load i32, i32* %t, align 4, !tbaa !5
  %shl371 = shl i32 %327, 14
  %328 = load i32, i32* %t, align 4, !tbaa !5
  %shr372 = lshr i32 %328, 18
  %or373 = or i32 %shl371, %shr372
  %329 = load i32, i32* %d, align 4, !tbaa !5
  %add374 = add i32 %or373, %329
  store i32 %add374, i32* %c, align 4, !tbaa !5
  %330 = load i32, i32* %b, align 4, !tbaa !5
  %331 = load i32, i32* %c, align 4, !tbaa !5
  %332 = load i32, i32* %a, align 4, !tbaa !5
  %and375 = and i32 %331, %332
  %333 = load i32, i32* %d, align 4, !tbaa !5
  %334 = load i32, i32* %a, align 4, !tbaa !5
  %neg376 = xor i32 %334, -1
  %and377 = and i32 %333, %neg376
  %or378 = or i32 %and375, %and377
  %add379 = add i32 %330, %or378
  %335 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx380 = getelementptr inbounds i32, i32* %335, i64 12
  %336 = load i32, i32* %arrayidx380, align 4, !tbaa !5
  %add381 = add i32 %add379, %336
  %add382 = add i32 %add381, -1926607734
  store i32 %add382, i32* %t, align 4, !tbaa !5
  %337 = load i32, i32* %t, align 4, !tbaa !5
  %shl383 = shl i32 %337, 20
  %338 = load i32, i32* %t, align 4, !tbaa !5
  %shr384 = lshr i32 %338, 12
  %or385 = or i32 %shl383, %shr384
  %339 = load i32, i32* %c, align 4, !tbaa !5
  %add386 = add i32 %or385, %339
  store i32 %add386, i32* %b, align 4, !tbaa !5
  %340 = load i32, i32* %a, align 4, !tbaa !5
  %341 = load i32, i32* %b, align 4, !tbaa !5
  %342 = load i32, i32* %c, align 4, !tbaa !5
  %xor = xor i32 %341, %342
  %343 = load i32, i32* %d, align 4, !tbaa !5
  %xor387 = xor i32 %xor, %343
  %add388 = add i32 %340, %xor387
  %344 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx389 = getelementptr inbounds i32, i32* %344, i64 5
  %345 = load i32, i32* %arrayidx389, align 4, !tbaa !5
  %add390 = add i32 %add388, %345
  %add391 = add i32 %add390, -378558
  store i32 %add391, i32* %t, align 4, !tbaa !5
  %346 = load i32, i32* %t, align 4, !tbaa !5
  %shl392 = shl i32 %346, 4
  %347 = load i32, i32* %t, align 4, !tbaa !5
  %shr393 = lshr i32 %347, 28
  %or394 = or i32 %shl392, %shr393
  %348 = load i32, i32* %b, align 4, !tbaa !5
  %add395 = add i32 %or394, %348
  store i32 %add395, i32* %a, align 4, !tbaa !5
  %349 = load i32, i32* %d, align 4, !tbaa !5
  %350 = load i32, i32* %a, align 4, !tbaa !5
  %351 = load i32, i32* %b, align 4, !tbaa !5
  %xor396 = xor i32 %350, %351
  %352 = load i32, i32* %c, align 4, !tbaa !5
  %xor397 = xor i32 %xor396, %352
  %add398 = add i32 %349, %xor397
  %353 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx399 = getelementptr inbounds i32, i32* %353, i64 8
  %354 = load i32, i32* %arrayidx399, align 4, !tbaa !5
  %add400 = add i32 %add398, %354
  %add401 = add i32 %add400, -2022574463
  store i32 %add401, i32* %t, align 4, !tbaa !5
  %355 = load i32, i32* %t, align 4, !tbaa !5
  %shl402 = shl i32 %355, 11
  %356 = load i32, i32* %t, align 4, !tbaa !5
  %shr403 = lshr i32 %356, 21
  %or404 = or i32 %shl402, %shr403
  %357 = load i32, i32* %a, align 4, !tbaa !5
  %add405 = add i32 %or404, %357
  store i32 %add405, i32* %d, align 4, !tbaa !5
  %358 = load i32, i32* %c, align 4, !tbaa !5
  %359 = load i32, i32* %d, align 4, !tbaa !5
  %360 = load i32, i32* %a, align 4, !tbaa !5
  %xor406 = xor i32 %359, %360
  %361 = load i32, i32* %b, align 4, !tbaa !5
  %xor407 = xor i32 %xor406, %361
  %add408 = add i32 %358, %xor407
  %362 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx409 = getelementptr inbounds i32, i32* %362, i64 11
  %363 = load i32, i32* %arrayidx409, align 4, !tbaa !5
  %add410 = add i32 %add408, %363
  %add411 = add i32 %add410, 1839030562
  store i32 %add411, i32* %t, align 4, !tbaa !5
  %364 = load i32, i32* %t, align 4, !tbaa !5
  %shl412 = shl i32 %364, 16
  %365 = load i32, i32* %t, align 4, !tbaa !5
  %shr413 = lshr i32 %365, 16
  %or414 = or i32 %shl412, %shr413
  %366 = load i32, i32* %d, align 4, !tbaa !5
  %add415 = add i32 %or414, %366
  store i32 %add415, i32* %c, align 4, !tbaa !5
  %367 = load i32, i32* %b, align 4, !tbaa !5
  %368 = load i32, i32* %c, align 4, !tbaa !5
  %369 = load i32, i32* %d, align 4, !tbaa !5
  %xor416 = xor i32 %368, %369
  %370 = load i32, i32* %a, align 4, !tbaa !5
  %xor417 = xor i32 %xor416, %370
  %add418 = add i32 %367, %xor417
  %371 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx419 = getelementptr inbounds i32, i32* %371, i64 14
  %372 = load i32, i32* %arrayidx419, align 4, !tbaa !5
  %add420 = add i32 %add418, %372
  %add421 = add i32 %add420, -35309556
  store i32 %add421, i32* %t, align 4, !tbaa !5
  %373 = load i32, i32* %t, align 4, !tbaa !5
  %shl422 = shl i32 %373, 23
  %374 = load i32, i32* %t, align 4, !tbaa !5
  %shr423 = lshr i32 %374, 9
  %or424 = or i32 %shl422, %shr423
  %375 = load i32, i32* %c, align 4, !tbaa !5
  %add425 = add i32 %or424, %375
  store i32 %add425, i32* %b, align 4, !tbaa !5
  %376 = load i32, i32* %a, align 4, !tbaa !5
  %377 = load i32, i32* %b, align 4, !tbaa !5
  %378 = load i32, i32* %c, align 4, !tbaa !5
  %xor426 = xor i32 %377, %378
  %379 = load i32, i32* %d, align 4, !tbaa !5
  %xor427 = xor i32 %xor426, %379
  %add428 = add i32 %376, %xor427
  %380 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx429 = getelementptr inbounds i32, i32* %380, i64 1
  %381 = load i32, i32* %arrayidx429, align 4, !tbaa !5
  %add430 = add i32 %add428, %381
  %add431 = add i32 %add430, -1530992060
  store i32 %add431, i32* %t, align 4, !tbaa !5
  %382 = load i32, i32* %t, align 4, !tbaa !5
  %shl432 = shl i32 %382, 4
  %383 = load i32, i32* %t, align 4, !tbaa !5
  %shr433 = lshr i32 %383, 28
  %or434 = or i32 %shl432, %shr433
  %384 = load i32, i32* %b, align 4, !tbaa !5
  %add435 = add i32 %or434, %384
  store i32 %add435, i32* %a, align 4, !tbaa !5
  %385 = load i32, i32* %d, align 4, !tbaa !5
  %386 = load i32, i32* %a, align 4, !tbaa !5
  %387 = load i32, i32* %b, align 4, !tbaa !5
  %xor436 = xor i32 %386, %387
  %388 = load i32, i32* %c, align 4, !tbaa !5
  %xor437 = xor i32 %xor436, %388
  %add438 = add i32 %385, %xor437
  %389 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx439 = getelementptr inbounds i32, i32* %389, i64 4
  %390 = load i32, i32* %arrayidx439, align 4, !tbaa !5
  %add440 = add i32 %add438, %390
  %add441 = add i32 %add440, 1272893353
  store i32 %add441, i32* %t, align 4, !tbaa !5
  %391 = load i32, i32* %t, align 4, !tbaa !5
  %shl442 = shl i32 %391, 11
  %392 = load i32, i32* %t, align 4, !tbaa !5
  %shr443 = lshr i32 %392, 21
  %or444 = or i32 %shl442, %shr443
  %393 = load i32, i32* %a, align 4, !tbaa !5
  %add445 = add i32 %or444, %393
  store i32 %add445, i32* %d, align 4, !tbaa !5
  %394 = load i32, i32* %c, align 4, !tbaa !5
  %395 = load i32, i32* %d, align 4, !tbaa !5
  %396 = load i32, i32* %a, align 4, !tbaa !5
  %xor446 = xor i32 %395, %396
  %397 = load i32, i32* %b, align 4, !tbaa !5
  %xor447 = xor i32 %xor446, %397
  %add448 = add i32 %394, %xor447
  %398 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx449 = getelementptr inbounds i32, i32* %398, i64 7
  %399 = load i32, i32* %arrayidx449, align 4, !tbaa !5
  %add450 = add i32 %add448, %399
  %add451 = add i32 %add450, -155497632
  store i32 %add451, i32* %t, align 4, !tbaa !5
  %400 = load i32, i32* %t, align 4, !tbaa !5
  %shl452 = shl i32 %400, 16
  %401 = load i32, i32* %t, align 4, !tbaa !5
  %shr453 = lshr i32 %401, 16
  %or454 = or i32 %shl452, %shr453
  %402 = load i32, i32* %d, align 4, !tbaa !5
  %add455 = add i32 %or454, %402
  store i32 %add455, i32* %c, align 4, !tbaa !5
  %403 = load i32, i32* %b, align 4, !tbaa !5
  %404 = load i32, i32* %c, align 4, !tbaa !5
  %405 = load i32, i32* %d, align 4, !tbaa !5
  %xor456 = xor i32 %404, %405
  %406 = load i32, i32* %a, align 4, !tbaa !5
  %xor457 = xor i32 %xor456, %406
  %add458 = add i32 %403, %xor457
  %407 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx459 = getelementptr inbounds i32, i32* %407, i64 10
  %408 = load i32, i32* %arrayidx459, align 4, !tbaa !5
  %add460 = add i32 %add458, %408
  %add461 = add i32 %add460, -1094730640
  store i32 %add461, i32* %t, align 4, !tbaa !5
  %409 = load i32, i32* %t, align 4, !tbaa !5
  %shl462 = shl i32 %409, 23
  %410 = load i32, i32* %t, align 4, !tbaa !5
  %shr463 = lshr i32 %410, 9
  %or464 = or i32 %shl462, %shr463
  %411 = load i32, i32* %c, align 4, !tbaa !5
  %add465 = add i32 %or464, %411
  store i32 %add465, i32* %b, align 4, !tbaa !5
  %412 = load i32, i32* %a, align 4, !tbaa !5
  %413 = load i32, i32* %b, align 4, !tbaa !5
  %414 = load i32, i32* %c, align 4, !tbaa !5
  %xor466 = xor i32 %413, %414
  %415 = load i32, i32* %d, align 4, !tbaa !5
  %xor467 = xor i32 %xor466, %415
  %add468 = add i32 %412, %xor467
  %416 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx469 = getelementptr inbounds i32, i32* %416, i64 13
  %417 = load i32, i32* %arrayidx469, align 4, !tbaa !5
  %add470 = add i32 %add468, %417
  %add471 = add i32 %add470, 681279174
  store i32 %add471, i32* %t, align 4, !tbaa !5
  %418 = load i32, i32* %t, align 4, !tbaa !5
  %shl472 = shl i32 %418, 4
  %419 = load i32, i32* %t, align 4, !tbaa !5
  %shr473 = lshr i32 %419, 28
  %or474 = or i32 %shl472, %shr473
  %420 = load i32, i32* %b, align 4, !tbaa !5
  %add475 = add i32 %or474, %420
  store i32 %add475, i32* %a, align 4, !tbaa !5
  %421 = load i32, i32* %d, align 4, !tbaa !5
  %422 = load i32, i32* %a, align 4, !tbaa !5
  %423 = load i32, i32* %b, align 4, !tbaa !5
  %xor476 = xor i32 %422, %423
  %424 = load i32, i32* %c, align 4, !tbaa !5
  %xor477 = xor i32 %xor476, %424
  %add478 = add i32 %421, %xor477
  %425 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx479 = getelementptr inbounds i32, i32* %425, i64 0
  %426 = load i32, i32* %arrayidx479, align 4, !tbaa !5
  %add480 = add i32 %add478, %426
  %add481 = add i32 %add480, -358537222
  store i32 %add481, i32* %t, align 4, !tbaa !5
  %427 = load i32, i32* %t, align 4, !tbaa !5
  %shl482 = shl i32 %427, 11
  %428 = load i32, i32* %t, align 4, !tbaa !5
  %shr483 = lshr i32 %428, 21
  %or484 = or i32 %shl482, %shr483
  %429 = load i32, i32* %a, align 4, !tbaa !5
  %add485 = add i32 %or484, %429
  store i32 %add485, i32* %d, align 4, !tbaa !5
  %430 = load i32, i32* %c, align 4, !tbaa !5
  %431 = load i32, i32* %d, align 4, !tbaa !5
  %432 = load i32, i32* %a, align 4, !tbaa !5
  %xor486 = xor i32 %431, %432
  %433 = load i32, i32* %b, align 4, !tbaa !5
  %xor487 = xor i32 %xor486, %433
  %add488 = add i32 %430, %xor487
  %434 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx489 = getelementptr inbounds i32, i32* %434, i64 3
  %435 = load i32, i32* %arrayidx489, align 4, !tbaa !5
  %add490 = add i32 %add488, %435
  %add491 = add i32 %add490, -722521979
  store i32 %add491, i32* %t, align 4, !tbaa !5
  %436 = load i32, i32* %t, align 4, !tbaa !5
  %shl492 = shl i32 %436, 16
  %437 = load i32, i32* %t, align 4, !tbaa !5
  %shr493 = lshr i32 %437, 16
  %or494 = or i32 %shl492, %shr493
  %438 = load i32, i32* %d, align 4, !tbaa !5
  %add495 = add i32 %or494, %438
  store i32 %add495, i32* %c, align 4, !tbaa !5
  %439 = load i32, i32* %b, align 4, !tbaa !5
  %440 = load i32, i32* %c, align 4, !tbaa !5
  %441 = load i32, i32* %d, align 4, !tbaa !5
  %xor496 = xor i32 %440, %441
  %442 = load i32, i32* %a, align 4, !tbaa !5
  %xor497 = xor i32 %xor496, %442
  %add498 = add i32 %439, %xor497
  %443 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx499 = getelementptr inbounds i32, i32* %443, i64 6
  %444 = load i32, i32* %arrayidx499, align 4, !tbaa !5
  %add500 = add i32 %add498, %444
  %add501 = add i32 %add500, 76029189
  store i32 %add501, i32* %t, align 4, !tbaa !5
  %445 = load i32, i32* %t, align 4, !tbaa !5
  %shl502 = shl i32 %445, 23
  %446 = load i32, i32* %t, align 4, !tbaa !5
  %shr503 = lshr i32 %446, 9
  %or504 = or i32 %shl502, %shr503
  %447 = load i32, i32* %c, align 4, !tbaa !5
  %add505 = add i32 %or504, %447
  store i32 %add505, i32* %b, align 4, !tbaa !5
  %448 = load i32, i32* %a, align 4, !tbaa !5
  %449 = load i32, i32* %b, align 4, !tbaa !5
  %450 = load i32, i32* %c, align 4, !tbaa !5
  %xor506 = xor i32 %449, %450
  %451 = load i32, i32* %d, align 4, !tbaa !5
  %xor507 = xor i32 %xor506, %451
  %add508 = add i32 %448, %xor507
  %452 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx509 = getelementptr inbounds i32, i32* %452, i64 9
  %453 = load i32, i32* %arrayidx509, align 4, !tbaa !5
  %add510 = add i32 %add508, %453
  %add511 = add i32 %add510, -640364487
  store i32 %add511, i32* %t, align 4, !tbaa !5
  %454 = load i32, i32* %t, align 4, !tbaa !5
  %shl512 = shl i32 %454, 4
  %455 = load i32, i32* %t, align 4, !tbaa !5
  %shr513 = lshr i32 %455, 28
  %or514 = or i32 %shl512, %shr513
  %456 = load i32, i32* %b, align 4, !tbaa !5
  %add515 = add i32 %or514, %456
  store i32 %add515, i32* %a, align 4, !tbaa !5
  %457 = load i32, i32* %d, align 4, !tbaa !5
  %458 = load i32, i32* %a, align 4, !tbaa !5
  %459 = load i32, i32* %b, align 4, !tbaa !5
  %xor516 = xor i32 %458, %459
  %460 = load i32, i32* %c, align 4, !tbaa !5
  %xor517 = xor i32 %xor516, %460
  %add518 = add i32 %457, %xor517
  %461 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx519 = getelementptr inbounds i32, i32* %461, i64 12
  %462 = load i32, i32* %arrayidx519, align 4, !tbaa !5
  %add520 = add i32 %add518, %462
  %add521 = add i32 %add520, -421815835
  store i32 %add521, i32* %t, align 4, !tbaa !5
  %463 = load i32, i32* %t, align 4, !tbaa !5
  %shl522 = shl i32 %463, 11
  %464 = load i32, i32* %t, align 4, !tbaa !5
  %shr523 = lshr i32 %464, 21
  %or524 = or i32 %shl522, %shr523
  %465 = load i32, i32* %a, align 4, !tbaa !5
  %add525 = add i32 %or524, %465
  store i32 %add525, i32* %d, align 4, !tbaa !5
  %466 = load i32, i32* %c, align 4, !tbaa !5
  %467 = load i32, i32* %d, align 4, !tbaa !5
  %468 = load i32, i32* %a, align 4, !tbaa !5
  %xor526 = xor i32 %467, %468
  %469 = load i32, i32* %b, align 4, !tbaa !5
  %xor527 = xor i32 %xor526, %469
  %add528 = add i32 %466, %xor527
  %470 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx529 = getelementptr inbounds i32, i32* %470, i64 15
  %471 = load i32, i32* %arrayidx529, align 4, !tbaa !5
  %add530 = add i32 %add528, %471
  %add531 = add i32 %add530, 530742520
  store i32 %add531, i32* %t, align 4, !tbaa !5
  %472 = load i32, i32* %t, align 4, !tbaa !5
  %shl532 = shl i32 %472, 16
  %473 = load i32, i32* %t, align 4, !tbaa !5
  %shr533 = lshr i32 %473, 16
  %or534 = or i32 %shl532, %shr533
  %474 = load i32, i32* %d, align 4, !tbaa !5
  %add535 = add i32 %or534, %474
  store i32 %add535, i32* %c, align 4, !tbaa !5
  %475 = load i32, i32* %b, align 4, !tbaa !5
  %476 = load i32, i32* %c, align 4, !tbaa !5
  %477 = load i32, i32* %d, align 4, !tbaa !5
  %xor536 = xor i32 %476, %477
  %478 = load i32, i32* %a, align 4, !tbaa !5
  %xor537 = xor i32 %xor536, %478
  %add538 = add i32 %475, %xor537
  %479 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx539 = getelementptr inbounds i32, i32* %479, i64 2
  %480 = load i32, i32* %arrayidx539, align 4, !tbaa !5
  %add540 = add i32 %add538, %480
  %add541 = add i32 %add540, -995338651
  store i32 %add541, i32* %t, align 4, !tbaa !5
  %481 = load i32, i32* %t, align 4, !tbaa !5
  %shl542 = shl i32 %481, 23
  %482 = load i32, i32* %t, align 4, !tbaa !5
  %shr543 = lshr i32 %482, 9
  %or544 = or i32 %shl542, %shr543
  %483 = load i32, i32* %c, align 4, !tbaa !5
  %add545 = add i32 %or544, %483
  store i32 %add545, i32* %b, align 4, !tbaa !5
  %484 = load i32, i32* %a, align 4, !tbaa !5
  %485 = load i32, i32* %c, align 4, !tbaa !5
  %486 = load i32, i32* %b, align 4, !tbaa !5
  %487 = load i32, i32* %d, align 4, !tbaa !5
  %neg546 = xor i32 %487, -1
  %or547 = or i32 %486, %neg546
  %xor548 = xor i32 %485, %or547
  %add549 = add i32 %484, %xor548
  %488 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx550 = getelementptr inbounds i32, i32* %488, i64 0
  %489 = load i32, i32* %arrayidx550, align 4, !tbaa !5
  %add551 = add i32 %add549, %489
  %add552 = add i32 %add551, -198630844
  store i32 %add552, i32* %t, align 4, !tbaa !5
  %490 = load i32, i32* %t, align 4, !tbaa !5
  %shl553 = shl i32 %490, 6
  %491 = load i32, i32* %t, align 4, !tbaa !5
  %shr554 = lshr i32 %491, 26
  %or555 = or i32 %shl553, %shr554
  %492 = load i32, i32* %b, align 4, !tbaa !5
  %add556 = add i32 %or555, %492
  store i32 %add556, i32* %a, align 4, !tbaa !5
  %493 = load i32, i32* %d, align 4, !tbaa !5
  %494 = load i32, i32* %b, align 4, !tbaa !5
  %495 = load i32, i32* %a, align 4, !tbaa !5
  %496 = load i32, i32* %c, align 4, !tbaa !5
  %neg557 = xor i32 %496, -1
  %or558 = or i32 %495, %neg557
  %xor559 = xor i32 %494, %or558
  %add560 = add i32 %493, %xor559
  %497 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx561 = getelementptr inbounds i32, i32* %497, i64 7
  %498 = load i32, i32* %arrayidx561, align 4, !tbaa !5
  %add562 = add i32 %add560, %498
  %add563 = add i32 %add562, 1126891415
  store i32 %add563, i32* %t, align 4, !tbaa !5
  %499 = load i32, i32* %t, align 4, !tbaa !5
  %shl564 = shl i32 %499, 10
  %500 = load i32, i32* %t, align 4, !tbaa !5
  %shr565 = lshr i32 %500, 22
  %or566 = or i32 %shl564, %shr565
  %501 = load i32, i32* %a, align 4, !tbaa !5
  %add567 = add i32 %or566, %501
  store i32 %add567, i32* %d, align 4, !tbaa !5
  %502 = load i32, i32* %c, align 4, !tbaa !5
  %503 = load i32, i32* %a, align 4, !tbaa !5
  %504 = load i32, i32* %d, align 4, !tbaa !5
  %505 = load i32, i32* %b, align 4, !tbaa !5
  %neg568 = xor i32 %505, -1
  %or569 = or i32 %504, %neg568
  %xor570 = xor i32 %503, %or569
  %add571 = add i32 %502, %xor570
  %506 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx572 = getelementptr inbounds i32, i32* %506, i64 14
  %507 = load i32, i32* %arrayidx572, align 4, !tbaa !5
  %add573 = add i32 %add571, %507
  %add574 = add i32 %add573, -1416354905
  store i32 %add574, i32* %t, align 4, !tbaa !5
  %508 = load i32, i32* %t, align 4, !tbaa !5
  %shl575 = shl i32 %508, 15
  %509 = load i32, i32* %t, align 4, !tbaa !5
  %shr576 = lshr i32 %509, 17
  %or577 = or i32 %shl575, %shr576
  %510 = load i32, i32* %d, align 4, !tbaa !5
  %add578 = add i32 %or577, %510
  store i32 %add578, i32* %c, align 4, !tbaa !5
  %511 = load i32, i32* %b, align 4, !tbaa !5
  %512 = load i32, i32* %d, align 4, !tbaa !5
  %513 = load i32, i32* %c, align 4, !tbaa !5
  %514 = load i32, i32* %a, align 4, !tbaa !5
  %neg579 = xor i32 %514, -1
  %or580 = or i32 %513, %neg579
  %xor581 = xor i32 %512, %or580
  %add582 = add i32 %511, %xor581
  %515 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx583 = getelementptr inbounds i32, i32* %515, i64 5
  %516 = load i32, i32* %arrayidx583, align 4, !tbaa !5
  %add584 = add i32 %add582, %516
  %add585 = add i32 %add584, -57434055
  store i32 %add585, i32* %t, align 4, !tbaa !5
  %517 = load i32, i32* %t, align 4, !tbaa !5
  %shl586 = shl i32 %517, 21
  %518 = load i32, i32* %t, align 4, !tbaa !5
  %shr587 = lshr i32 %518, 11
  %or588 = or i32 %shl586, %shr587
  %519 = load i32, i32* %c, align 4, !tbaa !5
  %add589 = add i32 %or588, %519
  store i32 %add589, i32* %b, align 4, !tbaa !5
  %520 = load i32, i32* %a, align 4, !tbaa !5
  %521 = load i32, i32* %c, align 4, !tbaa !5
  %522 = load i32, i32* %b, align 4, !tbaa !5
  %523 = load i32, i32* %d, align 4, !tbaa !5
  %neg590 = xor i32 %523, -1
  %or591 = or i32 %522, %neg590
  %xor592 = xor i32 %521, %or591
  %add593 = add i32 %520, %xor592
  %524 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx594 = getelementptr inbounds i32, i32* %524, i64 12
  %525 = load i32, i32* %arrayidx594, align 4, !tbaa !5
  %add595 = add i32 %add593, %525
  %add596 = add i32 %add595, 1700485571
  store i32 %add596, i32* %t, align 4, !tbaa !5
  %526 = load i32, i32* %t, align 4, !tbaa !5
  %shl597 = shl i32 %526, 6
  %527 = load i32, i32* %t, align 4, !tbaa !5
  %shr598 = lshr i32 %527, 26
  %or599 = or i32 %shl597, %shr598
  %528 = load i32, i32* %b, align 4, !tbaa !5
  %add600 = add i32 %or599, %528
  store i32 %add600, i32* %a, align 4, !tbaa !5
  %529 = load i32, i32* %d, align 4, !tbaa !5
  %530 = load i32, i32* %b, align 4, !tbaa !5
  %531 = load i32, i32* %a, align 4, !tbaa !5
  %532 = load i32, i32* %c, align 4, !tbaa !5
  %neg601 = xor i32 %532, -1
  %or602 = or i32 %531, %neg601
  %xor603 = xor i32 %530, %or602
  %add604 = add i32 %529, %xor603
  %533 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx605 = getelementptr inbounds i32, i32* %533, i64 3
  %534 = load i32, i32* %arrayidx605, align 4, !tbaa !5
  %add606 = add i32 %add604, %534
  %add607 = add i32 %add606, -1894986606
  store i32 %add607, i32* %t, align 4, !tbaa !5
  %535 = load i32, i32* %t, align 4, !tbaa !5
  %shl608 = shl i32 %535, 10
  %536 = load i32, i32* %t, align 4, !tbaa !5
  %shr609 = lshr i32 %536, 22
  %or610 = or i32 %shl608, %shr609
  %537 = load i32, i32* %a, align 4, !tbaa !5
  %add611 = add i32 %or610, %537
  store i32 %add611, i32* %d, align 4, !tbaa !5
  %538 = load i32, i32* %c, align 4, !tbaa !5
  %539 = load i32, i32* %a, align 4, !tbaa !5
  %540 = load i32, i32* %d, align 4, !tbaa !5
  %541 = load i32, i32* %b, align 4, !tbaa !5
  %neg612 = xor i32 %541, -1
  %or613 = or i32 %540, %neg612
  %xor614 = xor i32 %539, %or613
  %add615 = add i32 %538, %xor614
  %542 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx616 = getelementptr inbounds i32, i32* %542, i64 10
  %543 = load i32, i32* %arrayidx616, align 4, !tbaa !5
  %add617 = add i32 %add615, %543
  %add618 = add i32 %add617, -1051523
  store i32 %add618, i32* %t, align 4, !tbaa !5
  %544 = load i32, i32* %t, align 4, !tbaa !5
  %shl619 = shl i32 %544, 15
  %545 = load i32, i32* %t, align 4, !tbaa !5
  %shr620 = lshr i32 %545, 17
  %or621 = or i32 %shl619, %shr620
  %546 = load i32, i32* %d, align 4, !tbaa !5
  %add622 = add i32 %or621, %546
  store i32 %add622, i32* %c, align 4, !tbaa !5
  %547 = load i32, i32* %b, align 4, !tbaa !5
  %548 = load i32, i32* %d, align 4, !tbaa !5
  %549 = load i32, i32* %c, align 4, !tbaa !5
  %550 = load i32, i32* %a, align 4, !tbaa !5
  %neg623 = xor i32 %550, -1
  %or624 = or i32 %549, %neg623
  %xor625 = xor i32 %548, %or624
  %add626 = add i32 %547, %xor625
  %551 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx627 = getelementptr inbounds i32, i32* %551, i64 1
  %552 = load i32, i32* %arrayidx627, align 4, !tbaa !5
  %add628 = add i32 %add626, %552
  %add629 = add i32 %add628, -2054922799
  store i32 %add629, i32* %t, align 4, !tbaa !5
  %553 = load i32, i32* %t, align 4, !tbaa !5
  %shl630 = shl i32 %553, 21
  %554 = load i32, i32* %t, align 4, !tbaa !5
  %shr631 = lshr i32 %554, 11
  %or632 = or i32 %shl630, %shr631
  %555 = load i32, i32* %c, align 4, !tbaa !5
  %add633 = add i32 %or632, %555
  store i32 %add633, i32* %b, align 4, !tbaa !5
  %556 = load i32, i32* %a, align 4, !tbaa !5
  %557 = load i32, i32* %c, align 4, !tbaa !5
  %558 = load i32, i32* %b, align 4, !tbaa !5
  %559 = load i32, i32* %d, align 4, !tbaa !5
  %neg634 = xor i32 %559, -1
  %or635 = or i32 %558, %neg634
  %xor636 = xor i32 %557, %or635
  %add637 = add i32 %556, %xor636
  %560 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx638 = getelementptr inbounds i32, i32* %560, i64 8
  %561 = load i32, i32* %arrayidx638, align 4, !tbaa !5
  %add639 = add i32 %add637, %561
  %add640 = add i32 %add639, 1873313359
  store i32 %add640, i32* %t, align 4, !tbaa !5
  %562 = load i32, i32* %t, align 4, !tbaa !5
  %shl641 = shl i32 %562, 6
  %563 = load i32, i32* %t, align 4, !tbaa !5
  %shr642 = lshr i32 %563, 26
  %or643 = or i32 %shl641, %shr642
  %564 = load i32, i32* %b, align 4, !tbaa !5
  %add644 = add i32 %or643, %564
  store i32 %add644, i32* %a, align 4, !tbaa !5
  %565 = load i32, i32* %d, align 4, !tbaa !5
  %566 = load i32, i32* %b, align 4, !tbaa !5
  %567 = load i32, i32* %a, align 4, !tbaa !5
  %568 = load i32, i32* %c, align 4, !tbaa !5
  %neg645 = xor i32 %568, -1
  %or646 = or i32 %567, %neg645
  %xor647 = xor i32 %566, %or646
  %add648 = add i32 %565, %xor647
  %569 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx649 = getelementptr inbounds i32, i32* %569, i64 15
  %570 = load i32, i32* %arrayidx649, align 4, !tbaa !5
  %add650 = add i32 %add648, %570
  %add651 = add i32 %add650, -30611744
  store i32 %add651, i32* %t, align 4, !tbaa !5
  %571 = load i32, i32* %t, align 4, !tbaa !5
  %shl652 = shl i32 %571, 10
  %572 = load i32, i32* %t, align 4, !tbaa !5
  %shr653 = lshr i32 %572, 22
  %or654 = or i32 %shl652, %shr653
  %573 = load i32, i32* %a, align 4, !tbaa !5
  %add655 = add i32 %or654, %573
  store i32 %add655, i32* %d, align 4, !tbaa !5
  %574 = load i32, i32* %c, align 4, !tbaa !5
  %575 = load i32, i32* %a, align 4, !tbaa !5
  %576 = load i32, i32* %d, align 4, !tbaa !5
  %577 = load i32, i32* %b, align 4, !tbaa !5
  %neg656 = xor i32 %577, -1
  %or657 = or i32 %576, %neg656
  %xor658 = xor i32 %575, %or657
  %add659 = add i32 %574, %xor658
  %578 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx660 = getelementptr inbounds i32, i32* %578, i64 6
  %579 = load i32, i32* %arrayidx660, align 4, !tbaa !5
  %add661 = add i32 %add659, %579
  %add662 = add i32 %add661, -1560198380
  store i32 %add662, i32* %t, align 4, !tbaa !5
  %580 = load i32, i32* %t, align 4, !tbaa !5
  %shl663 = shl i32 %580, 15
  %581 = load i32, i32* %t, align 4, !tbaa !5
  %shr664 = lshr i32 %581, 17
  %or665 = or i32 %shl663, %shr664
  %582 = load i32, i32* %d, align 4, !tbaa !5
  %add666 = add i32 %or665, %582
  store i32 %add666, i32* %c, align 4, !tbaa !5
  %583 = load i32, i32* %b, align 4, !tbaa !5
  %584 = load i32, i32* %d, align 4, !tbaa !5
  %585 = load i32, i32* %c, align 4, !tbaa !5
  %586 = load i32, i32* %a, align 4, !tbaa !5
  %neg667 = xor i32 %586, -1
  %or668 = or i32 %585, %neg667
  %xor669 = xor i32 %584, %or668
  %add670 = add i32 %583, %xor669
  %587 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx671 = getelementptr inbounds i32, i32* %587, i64 13
  %588 = load i32, i32* %arrayidx671, align 4, !tbaa !5
  %add672 = add i32 %add670, %588
  %add673 = add i32 %add672, 1309151649
  store i32 %add673, i32* %t, align 4, !tbaa !5
  %589 = load i32, i32* %t, align 4, !tbaa !5
  %shl674 = shl i32 %589, 21
  %590 = load i32, i32* %t, align 4, !tbaa !5
  %shr675 = lshr i32 %590, 11
  %or676 = or i32 %shl674, %shr675
  %591 = load i32, i32* %c, align 4, !tbaa !5
  %add677 = add i32 %or676, %591
  store i32 %add677, i32* %b, align 4, !tbaa !5
  %592 = load i32, i32* %a, align 4, !tbaa !5
  %593 = load i32, i32* %c, align 4, !tbaa !5
  %594 = load i32, i32* %b, align 4, !tbaa !5
  %595 = load i32, i32* %d, align 4, !tbaa !5
  %neg678 = xor i32 %595, -1
  %or679 = or i32 %594, %neg678
  %xor680 = xor i32 %593, %or679
  %add681 = add i32 %592, %xor680
  %596 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx682 = getelementptr inbounds i32, i32* %596, i64 4
  %597 = load i32, i32* %arrayidx682, align 4, !tbaa !5
  %add683 = add i32 %add681, %597
  %add684 = add i32 %add683, -145523070
  store i32 %add684, i32* %t, align 4, !tbaa !5
  %598 = load i32, i32* %t, align 4, !tbaa !5
  %shl685 = shl i32 %598, 6
  %599 = load i32, i32* %t, align 4, !tbaa !5
  %shr686 = lshr i32 %599, 26
  %or687 = or i32 %shl685, %shr686
  %600 = load i32, i32* %b, align 4, !tbaa !5
  %add688 = add i32 %or687, %600
  store i32 %add688, i32* %a, align 4, !tbaa !5
  %601 = load i32, i32* %d, align 4, !tbaa !5
  %602 = load i32, i32* %b, align 4, !tbaa !5
  %603 = load i32, i32* %a, align 4, !tbaa !5
  %604 = load i32, i32* %c, align 4, !tbaa !5
  %neg689 = xor i32 %604, -1
  %or690 = or i32 %603, %neg689
  %xor691 = xor i32 %602, %or690
  %add692 = add i32 %601, %xor691
  %605 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx693 = getelementptr inbounds i32, i32* %605, i64 11
  %606 = load i32, i32* %arrayidx693, align 4, !tbaa !5
  %add694 = add i32 %add692, %606
  %add695 = add i32 %add694, -1120210379
  store i32 %add695, i32* %t, align 4, !tbaa !5
  %607 = load i32, i32* %t, align 4, !tbaa !5
  %shl696 = shl i32 %607, 10
  %608 = load i32, i32* %t, align 4, !tbaa !5
  %shr697 = lshr i32 %608, 22
  %or698 = or i32 %shl696, %shr697
  %609 = load i32, i32* %a, align 4, !tbaa !5
  %add699 = add i32 %or698, %609
  store i32 %add699, i32* %d, align 4, !tbaa !5
  %610 = load i32, i32* %c, align 4, !tbaa !5
  %611 = load i32, i32* %a, align 4, !tbaa !5
  %612 = load i32, i32* %d, align 4, !tbaa !5
  %613 = load i32, i32* %b, align 4, !tbaa !5
  %neg700 = xor i32 %613, -1
  %or701 = or i32 %612, %neg700
  %xor702 = xor i32 %611, %or701
  %add703 = add i32 %610, %xor702
  %614 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx704 = getelementptr inbounds i32, i32* %614, i64 2
  %615 = load i32, i32* %arrayidx704, align 4, !tbaa !5
  %add705 = add i32 %add703, %615
  %add706 = add i32 %add705, 718787259
  store i32 %add706, i32* %t, align 4, !tbaa !5
  %616 = load i32, i32* %t, align 4, !tbaa !5
  %shl707 = shl i32 %616, 15
  %617 = load i32, i32* %t, align 4, !tbaa !5
  %shr708 = lshr i32 %617, 17
  %or709 = or i32 %shl707, %shr708
  %618 = load i32, i32* %d, align 4, !tbaa !5
  %add710 = add i32 %or709, %618
  store i32 %add710, i32* %c, align 4, !tbaa !5
  %619 = load i32, i32* %b, align 4, !tbaa !5
  %620 = load i32, i32* %d, align 4, !tbaa !5
  %621 = load i32, i32* %c, align 4, !tbaa !5
  %622 = load i32, i32* %a, align 4, !tbaa !5
  %neg711 = xor i32 %622, -1
  %or712 = or i32 %621, %neg711
  %xor713 = xor i32 %620, %or712
  %add714 = add i32 %619, %xor713
  %623 = load i32*, i32** %X, align 8, !tbaa !1
  %arrayidx715 = getelementptr inbounds i32, i32* %623, i64 9
  %624 = load i32, i32* %arrayidx715, align 4, !tbaa !5
  %add716 = add i32 %add714, %624
  %add717 = add i32 %add716, -343485551
  store i32 %add717, i32* %t, align 4, !tbaa !5
  %625 = load i32, i32* %t, align 4, !tbaa !5
  %shl718 = shl i32 %625, 21
  %626 = load i32, i32* %t, align 4, !tbaa !5
  %shr719 = lshr i32 %626, 11
  %or720 = or i32 %shl718, %shr719
  %627 = load i32, i32* %c, align 4, !tbaa !5
  %add721 = add i32 %or720, %627
  store i32 %add721, i32* %b, align 4, !tbaa !5
  %628 = load i32, i32* %a, align 4, !tbaa !5
  %629 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %abcd722 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %629, i32 0, i32 1
  %arrayidx723 = getelementptr inbounds [4 x i32], [4 x i32]* %abcd722, i32 0, i64 0
  %630 = load i32, i32* %arrayidx723, align 4, !tbaa !5
  %add724 = add i32 %630, %628
  store i32 %add724, i32* %arrayidx723, align 4, !tbaa !5
  %631 = load i32, i32* %b, align 4, !tbaa !5
  %632 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %abcd725 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %632, i32 0, i32 1
  %arrayidx726 = getelementptr inbounds [4 x i32], [4 x i32]* %abcd725, i32 0, i64 1
  %633 = load i32, i32* %arrayidx726, align 4, !tbaa !5
  %add727 = add i32 %633, %631
  store i32 %add727, i32* %arrayidx726, align 4, !tbaa !5
  %634 = load i32, i32* %c, align 4, !tbaa !5
  %635 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %abcd728 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %635, i32 0, i32 1
  %arrayidx729 = getelementptr inbounds [4 x i32], [4 x i32]* %abcd728, i32 0, i64 2
  %636 = load i32, i32* %arrayidx729, align 4, !tbaa !5
  %add730 = add i32 %636, %634
  store i32 %add730, i32* %arrayidx729, align 4, !tbaa !5
  %637 = load i32, i32* %d, align 4, !tbaa !5
  %638 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %abcd731 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %638, i32 0, i32 1
  %arrayidx732 = getelementptr inbounds [4 x i32], [4 x i32]* %abcd731, i32 0, i64 3
  %639 = load i32, i32* %arrayidx732, align 4, !tbaa !5
  %add733 = add i32 %639, %637
  store i32 %add733, i32* %arrayidx732, align 4, !tbaa !5
  %640 = bitcast i32** %X to i8*
  call void @llvm.lifetime.end(i64 8, i8* %640) #1
  %641 = bitcast [16 x i32]* %xbuf to i8*
  call void @llvm.lifetime.end(i64 64, i8* %641) #1
  %642 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %642) #1
  %643 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %643) #1
  %644 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %644) #1
  %645 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %645) #1
  %646 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %646) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gs_md5_finish(%struct.gs_md5_state_s* %pms, i8* %digest) #0 {
entry:
  %pms.addr = alloca %struct.gs_md5_state_s*, align 8
  %digest.addr = alloca i8*, align 8
  %data = alloca [8 x i8], align 1
  %i = alloca i32, align 4
  store %struct.gs_md5_state_s* %pms, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  store i8* %digest, i8** %digest.addr, align 8, !tbaa !1
  %0 = bitcast [8 x i8]* %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %shr = ashr i32 %3, 2
  %idxprom = sext i32 %shr to i64
  %4 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %count, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %and = and i32 %6, 3
  %shl = shl i32 %and, 3
  %shr1 = lshr i32 %5, %shl
  %conv = trunc i32 %shr1 to i8
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [8 x i8], [8 x i8]* %data, i32 0, i64 %idxprom2
  store i8 %conv, i8* %arrayidx3, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %10 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %count4 = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %10, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %count4, i32 0, i64 0
  %11 = load i32, i32* %arrayidx5, align 4, !tbaa !5
  %shr6 = lshr i32 %11, 3
  %sub = sub i32 55, %shr6
  %and7 = and i32 %sub, 63
  %add = add i32 %and7, 1
  call void @gs_md5_append(%struct.gs_md5_state_s* %9, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @gs_md5_finish.pad, i32 0, i32 0), i32 %add) #4
  %12 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %data, i32 0, i32 0
  call void @gs_md5_append(%struct.gs_md5_state_s* %12, i8* %arraydecay, i32 8) #4
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.21, %for.end
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %13, 16
  br i1 %cmp9, label %for.body.11, label %for.end.23

for.body.11:                                      ; preds = %for.cond.8
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %shr12 = ashr i32 %14, 2
  %idxprom13 = sext i32 %shr12 to i64
  %15 = load %struct.gs_md5_state_s*, %struct.gs_md5_state_s** %pms.addr, align 8, !tbaa !1
  %abcd = getelementptr inbounds %struct.gs_md5_state_s, %struct.gs_md5_state_s* %15, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %abcd, i32 0, i64 %idxprom13
  %16 = load i32, i32* %arrayidx14, align 4, !tbaa !5
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %and15 = and i32 %17, 3
  %shl16 = shl i32 %and15, 3
  %shr17 = lshr i32 %16, %shl16
  %conv18 = trunc i32 %shr17 to i8
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %18 to i64
  %19 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %19, i64 %idxprom19
  store i8 %conv18, i8* %arrayidx20, align 1, !tbaa !7
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.11
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %20, 1
  store i32 %inc22, i32* %i, align 4, !tbaa !5
  br label %for.cond.8

for.end.23:                                       ; preds = %for.cond.8
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast [8 x i8]* %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
