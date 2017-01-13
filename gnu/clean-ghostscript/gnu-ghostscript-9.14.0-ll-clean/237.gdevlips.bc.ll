; ModuleID = './gdevlips.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paper_table = type { i32, i32, i32 }

@lips_paper_table = internal global [14 x %struct.paper_table] [%struct.paper_table { i32 842, i32 1190, i32 12 }, %struct.paper_table { i32 595, i32 842, i32 14 }, %struct.paper_table { i32 597, i32 842, i32 14 }, %struct.paper_table { i32 421, i32 595, i32 16 }, %struct.paper_table { i32 284, i32 419, i32 18 }, %struct.paper_table { i32 729, i32 1032, i32 24 }, %struct.paper_table { i32 516, i32 729, i32 26 }, %struct.paper_table { i32 363, i32 516, i32 28 }, %struct.paper_table { i32 612, i32 792, i32 30 }, %struct.paper_table { i32 612, i32 1008, i32 32 }, %struct.paper_table { i32 792, i32 1224, i32 34 }, %struct.paper_table { i32 522, i32 756, i32 40 }, %struct.paper_table { i32 298, i32 666, i32 50 }, %struct.paper_table { i32 0, i32 0, i32 80 }], align 16

; Function Attrs: nounwind uwtable
define i32 @lips_media_selection(i32 %width, i32 %height) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %landscape = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pt = alloca %struct.paper_table*, align 8
  store i32 %width, i32* %width.addr, align 4, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !1
  %0 = bitcast i32* %landscape to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %landscape, align 4, !tbaa !1
  %1 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.paper_table** %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %width.addr, align 4, !tbaa !1
  %4 = load i32, i32* %height.addr, align 4, !tbaa !1
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %landscape, align 4, !tbaa !1
  %5 = load i32, i32* %width.addr, align 4, !tbaa !1
  store i32 %5, i32* %tmp, align 4, !tbaa !1
  %6 = load i32, i32* %height.addr, align 4, !tbaa !1
  store i32 %6, i32* %width.addr, align 4, !tbaa !1
  %7 = load i32, i32* %tmp, align 4, !tbaa !1
  store i32 %7, i32* %height.addr, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.paper_table* getelementptr inbounds ([14 x %struct.paper_table], [14 x %struct.paper_table]* @lips_paper_table, i32 0, i32 0), %struct.paper_table** %pt, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load %struct.paper_table*, %struct.paper_table** %pt, align 8, !tbaa !5
  %num_unit = getelementptr inbounds %struct.paper_table, %struct.paper_table* %8, i32 0, i32 2
  %9 = load i32, i32* %num_unit, align 4, !tbaa !7
  %cmp2 = icmp slt i32 %9, 80
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.paper_table*, %struct.paper_table** %pt, align 8, !tbaa !5
  %width3 = getelementptr inbounds %struct.paper_table, %struct.paper_table* %10, i32 0, i32 0
  %11 = load i32, i32* %width3, align 4, !tbaa !9
  %12 = load i32, i32* %width.addr, align 4, !tbaa !1
  %cmp4 = icmp eq i32 %11, %12
  br i1 %cmp4, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %for.body
  %13 = load %struct.paper_table*, %struct.paper_table** %pt, align 8, !tbaa !5
  %height5 = getelementptr inbounds %struct.paper_table, %struct.paper_table* %13, i32 0, i32 1
  %14 = load i32, i32* %height5, align 4, !tbaa !10
  %15 = load i32, i32* %height.addr, align 4, !tbaa !1
  %cmp6 = icmp eq i32 %14, %15
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  br label %for.end

if.end.8:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %16 = load %struct.paper_table*, %struct.paper_table** %pt, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.paper_table, %struct.paper_table* %16, i32 1
  store %struct.paper_table* %incdec.ptr, %struct.paper_table** %pt, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.7, %for.cond
  %17 = load %struct.paper_table*, %struct.paper_table** %pt, align 8, !tbaa !5
  %num_unit9 = getelementptr inbounds %struct.paper_table, %struct.paper_table* %17, i32 0, i32 2
  %18 = load i32, i32* %num_unit9, align 4, !tbaa !7
  %19 = load i32, i32* %landscape, align 4, !tbaa !1
  %add = add nsw i32 %18, %19
  %20 = bitcast %struct.paper_table** %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %landscape to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  ret i32 %add
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @lips_packbits_encode(i8* %inBuff, i8* %outBuff, i32 %Length) #0 {
entry:
  %inBuff.addr = alloca i8*, align 8
  %outBuff.addr = alloca i8*, align 8
  %Length.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %count = alloca i32, align 4
  store i8* %inBuff, i8** %inBuff.addr, align 8, !tbaa !5
  store i8* %outBuff, i8** %outBuff.addr, align 8, !tbaa !5
  store i32 %Length, i32* %Length.addr, align 4, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %size, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %Length.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end.23

while.body:                                       ; preds = %while.cond
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %inBuff.addr, align 8, !tbaa !5
  %4 = load i32, i32* %Length.addr, align 4, !tbaa !1
  %cmp = icmp sgt i32 %4, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %5 = load i32, i32* %Length.addr, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 128, %cond.true ], [ %5, %cond.false ]
  %call = call i32 @GetNumSameData(i8* %3, i32 %cond) #2
  store i32 %call, i32* %count, align 4, !tbaa !1
  %cmp1 = icmp slt i32 1, %call
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load i32, i32* %count, align 4, !tbaa !1
  %7 = load i32, i32* %Length.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %7, %6
  store i32 %sub, i32* %Length.addr, align 4, !tbaa !1
  %8 = load i32, i32* %size, align 4, !tbaa !1
  %add = add nsw i32 %8, 2
  store i32 %add, i32* %size, align 4, !tbaa !1
  %9 = load i32, i32* %count, align 4, !tbaa !1
  %sub2 = sub nsw i32 %9, 1
  %sub3 = sub nsw i32 0, %sub2
  %conv = trunc i32 %sub3 to i8
  %10 = load i8*, i8** %outBuff.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %outBuff.addr, align 8, !tbaa !5
  store i8 %conv, i8* %10, align 1, !tbaa !11
  %11 = load i8*, i8** %inBuff.addr, align 8, !tbaa !5
  %12 = load i8, i8* %11, align 1, !tbaa !11
  %13 = load i8*, i8** %outBuff.addr, align 8, !tbaa !5
  %incdec.ptr4 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr4, i8** %outBuff.addr, align 8, !tbaa !5
  store i8 %12, i8* %13, align 1, !tbaa !11
  %14 = load i32, i32* %count, align 4, !tbaa !1
  %15 = load i8*, i8** %inBuff.addr, align 8, !tbaa !5
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %inBuff.addr, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %cond.end
  %16 = load i8*, i8** %inBuff.addr, align 8, !tbaa !5
  %17 = load i32, i32* %Length.addr, align 4, !tbaa !1
  %cmp5 = icmp sgt i32 %17, 128
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %if.else
  br label %cond.end.9

cond.false.8:                                     ; preds = %if.else
  %18 = load i32, i32* %Length.addr, align 4, !tbaa !1
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi i32 [ 128, %cond.true.7 ], [ %18, %cond.false.8 ]
  %call11 = call i32 @GetNumWrongData(i8* %16, i32 %cond10) #2
  store i32 %call11, i32* %count, align 4, !tbaa !1
  %19 = load i32, i32* %count, align 4, !tbaa !1
  %20 = load i32, i32* %Length.addr, align 4, !tbaa !1
  %sub12 = sub nsw i32 %20, %19
  store i32 %sub12, i32* %Length.addr, align 4, !tbaa !1
  %21 = load i32, i32* %count, align 4, !tbaa !1
  %add13 = add nsw i32 %21, 1
  %22 = load i32, i32* %size, align 4, !tbaa !1
  %add14 = add nsw i32 %22, %add13
  store i32 %add14, i32* %size, align 4, !tbaa !1
  %23 = load i32, i32* %count, align 4, !tbaa !1
  %sub15 = sub nsw i32 %23, 1
  %conv16 = trunc i32 %sub15 to i8
  %24 = load i8*, i8** %outBuff.addr, align 8, !tbaa !5
  %incdec.ptr17 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr17, i8** %outBuff.addr, align 8, !tbaa !5
  store i8 %conv16, i8* %24, align 1, !tbaa !11
  br label %while.cond.18

while.cond.18:                                    ; preds = %while.body.20, %cond.end.9
  %25 = load i32, i32* %count, align 4, !tbaa !1
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %count, align 4, !tbaa !1
  %tobool19 = icmp ne i32 %25, 0
  br i1 %tobool19, label %while.body.20, label %while.end

while.body.20:                                    ; preds = %while.cond.18
  %26 = load i8*, i8** %inBuff.addr, align 8, !tbaa !5
  %incdec.ptr21 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr21, i8** %inBuff.addr, align 8, !tbaa !5
  %27 = load i8, i8* %26, align 1, !tbaa !11
  %28 = load i8*, i8** %outBuff.addr, align 8, !tbaa !5
  %incdec.ptr22 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr22, i8** %outBuff.addr, align 8, !tbaa !5
  store i8 %27, i8* %28, align 1, !tbaa !11
  br label %while.cond.18

while.end:                                        ; preds = %while.cond.18
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %29 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  br label %while.cond

while.end.23:                                     ; preds = %while.cond
  %30 = load i32, i32* %size, align 4, !tbaa !1
  %31 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @GetNumSameData(i8* %curPtr, i32 %maxnum) #0 {
entry:
  %retval = alloca i32, align 4
  %curPtr.addr = alloca i8*, align 8
  %maxnum.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %curPtr, i8** %curPtr.addr, align 8, !tbaa !5
  store i32 %maxnum, i32* %maxnum.addr, align 4, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %count, align 4, !tbaa !1
  %1 = load i32, i32* %maxnum.addr, align 4, !tbaa !1
  %cmp = icmp eq i32 1, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i8*, i8** %curPtr.addr, align 8, !tbaa !5
  %3 = load i8, i8* %2, align 1, !tbaa !11
  %conv = zext i8 %3 to i32
  %4 = load i8*, i8** %curPtr.addr, align 8, !tbaa !5
  %5 = load i32, i32* %count, align 4, !tbaa !1
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i8, i8* %add.ptr, align 1, !tbaa !11
  %conv1 = zext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, %conv1
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i32, i32* %maxnum.addr, align 4, !tbaa !1
  %8 = load i32, i32* %count, align 4, !tbaa !1
  %cmp4 = icmp sgt i32 %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %count, align 4, !tbaa !1
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %count, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %count, align 4, !tbaa !1
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @GetNumWrongData(i8* %curPtr, i32 %maxnum) #0 {
entry:
  %retval = alloca i32, align 4
  %curPtr.addr = alloca i8*, align 8
  %maxnum.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %curPtr, i8** %curPtr.addr, align 8, !tbaa !5
  store i32 %maxnum, i32* %maxnum.addr, align 4, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %count, align 4, !tbaa !1
  %1 = load i32, i32* %maxnum.addr, align 4, !tbaa !1
  %cmp = icmp eq i32 1, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i8*, i8** %curPtr.addr, align 8, !tbaa !5
  %3 = load i32, i32* %count, align 4, !tbaa !1
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %4 = load i8, i8* %add.ptr, align 1, !tbaa !11
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %curPtr.addr, align 8, !tbaa !5
  %6 = load i32, i32* %count, align 4, !tbaa !1
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %idx.ext1
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i64 1
  %7 = load i8, i8* %add.ptr3, align 1, !tbaa !11
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp ne i32 %conv, %conv4
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, i32* %maxnum.addr, align 4, !tbaa !1
  %9 = load i32, i32* %count, align 4, !tbaa !1
  %cmp7 = icmp sgt i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %count, align 4, !tbaa !1
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %count, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %count, align 4, !tbaa !1
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %13 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @lips_mode3format_encode(i8* %inBuff, i8* %outBuff, i32 %Length) #0 {
entry:
  %inBuff.addr = alloca i8*, align 8
  %outBuff.addr = alloca i8*, align 8
  %Length.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %count = alloca i32, align 4
  store i8* %inBuff, i8** %inBuff.addr, align 8, !tbaa !5
  store i8* %outBuff, i8** %outBuff.addr, align 8, !tbaa !5
  store i32 %Length, i32* %Length.addr, align 4, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %size, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %Length.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end.13

while.body:                                       ; preds = %while.cond
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %inBuff.addr, align 8, !tbaa !5
  %4 = load i32, i32* %Length.addr, align 4, !tbaa !1
  %cmp = icmp sgt i32 %4, 257
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %5 = load i32, i32* %Length.addr, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 257, %cond.true ], [ %5, %cond.false ]
  %call = call i32 @GetNumSameData(i8* %3, i32 %cond) #2
  store i32 %call, i32* %count, align 4, !tbaa !1
  %cmp1 = icmp slt i32 1, %call
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load i32, i32* %count, align 4, !tbaa !1
  %7 = load i32, i32* %Length.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %7, %6
  store i32 %sub, i32* %Length.addr, align 4, !tbaa !1
  %8 = load i32, i32* %size, align 4, !tbaa !1
  %add = add nsw i32 %8, 3
  store i32 %add, i32* %size, align 4, !tbaa !1
  %9 = load i8*, i8** %inBuff.addr, align 8, !tbaa !5
  %10 = load i8, i8* %9, align 1, !tbaa !11
  %11 = load i8*, i8** %outBuff.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %outBuff.addr, align 8, !tbaa !5
  store i8 %10, i8* %11, align 1, !tbaa !11
  %12 = load i8*, i8** %inBuff.addr, align 8, !tbaa !5
  %13 = load i8, i8* %12, align 1, !tbaa !11
  %14 = load i8*, i8** %outBuff.addr, align 8, !tbaa !5
  %incdec.ptr2 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr2, i8** %outBuff.addr, align 8, !tbaa !5
  store i8 %13, i8* %14, align 1, !tbaa !11
  %15 = load i32, i32* %count, align 4, !tbaa !1
  %sub3 = sub nsw i32 %15, 2
  %conv = trunc i32 %sub3 to i8
  %16 = load i8*, i8** %outBuff.addr, align 8, !tbaa !5
  %incdec.ptr4 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr4, i8** %outBuff.addr, align 8, !tbaa !5
  store i8 %conv, i8* %16, align 1, !tbaa !11
  %17 = load i32, i32* %count, align 4, !tbaa !1
  %18 = load i8*, i8** %inBuff.addr, align 8, !tbaa !5
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr, i8** %inBuff.addr, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %cond.end
  %19 = load i8*, i8** %inBuff.addr, align 8, !tbaa !5
  %20 = load i32, i32* %Length.addr, align 4, !tbaa !1
  %call5 = call i32 @GetNumWrongData(i8* %19, i32 %20) #2
  store i32 %call5, i32* %count, align 4, !tbaa !1
  %21 = load i32, i32* %count, align 4, !tbaa !1
  %22 = load i32, i32* %Length.addr, align 4, !tbaa !1
  %sub6 = sub nsw i32 %22, %21
  store i32 %sub6, i32* %Length.addr, align 4, !tbaa !1
  %23 = load i32, i32* %count, align 4, !tbaa !1
  %24 = load i32, i32* %size, align 4, !tbaa !1
  %add7 = add nsw i32 %24, %23
  store i32 %add7, i32* %size, align 4, !tbaa !1
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.10, %if.else
  %25 = load i32, i32* %count, align 4, !tbaa !1
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %count, align 4, !tbaa !1
  %tobool9 = icmp ne i32 %25, 0
  br i1 %tobool9, label %while.body.10, label %while.end

while.body.10:                                    ; preds = %while.cond.8
  %26 = load i8*, i8** %inBuff.addr, align 8, !tbaa !5
  %incdec.ptr11 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr11, i8** %inBuff.addr, align 8, !tbaa !5
  %27 = load i8, i8* %26, align 1, !tbaa !11
  %28 = load i8*, i8** %outBuff.addr, align 8, !tbaa !5
  %incdec.ptr12 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr12, i8** %outBuff.addr, align 8, !tbaa !5
  store i8 %27, i8* %28, align 1, !tbaa !11
  br label %while.cond.8

while.end:                                        ; preds = %while.cond.8
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %29 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  br label %while.cond

while.end.13:                                     ; preds = %while.cond
  %30 = load i32, i32* %size, align 4, !tbaa !1
  %31 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define i32 @lips_rle_encode(i8* %inBuff, i8* %outBuff, i32 %Length) #0 {
entry:
  %inBuff.addr = alloca i8*, align 8
  %outBuff.addr = alloca i8*, align 8
  %Length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %value = alloca i8, align 1
  %count = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store i8* %inBuff, i8** %inBuff.addr, align 8, !tbaa !5
  store i8* %outBuff, i8** %outBuff.addr, align 8, !tbaa !5
  store i32 %Length, i32* %Length.addr, align 4, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %value) #1
  %1 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %count, align 4, !tbaa !1
  %2 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %inBuff.addr, align 8, !tbaa !5
  store i8* %3, i8** %ptr, align 8, !tbaa !5
  %4 = load i8*, i8** %ptr, align 8, !tbaa !5
  %5 = load i8, i8* %4, align 1, !tbaa !11
  store i8 %5, i8* %value, align 1, !tbaa !11
  %6 = load i8*, i8** %ptr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %entry
  %7 = load i8*, i8** %ptr, align 8, !tbaa !5
  %8 = load i8*, i8** %inBuff.addr, align 8, !tbaa !5
  %9 = load i32, i32* %Length.addr, align 4, !tbaa !1
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  %cmp = icmp ult i8* %7, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %ptr, align 8, !tbaa !5
  %11 = load i8, i8* %10, align 1, !tbaa !11
  %conv = zext i8 %11 to i32
  %12 = load i8, i8* %value, align 1, !tbaa !11
  %conv1 = zext i8 %12 to i32
  %cmp2 = icmp eq i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %13 = load i32, i32* %count, align 4, !tbaa !1
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %count, align 4, !tbaa !1
  %14 = load i32, i32* %count, align 4, !tbaa !1
  %cmp4 = icmp sgt i32 %14, 255
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %15 = load i8*, i8** %outBuff.addr, align 8, !tbaa !5
  %incdec.ptr7 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr7, i8** %outBuff.addr, align 8, !tbaa !5
  store i8 -1, i8* %15, align 1, !tbaa !11
  %16 = load i8, i8* %value, align 1, !tbaa !11
  %17 = load i8*, i8** %outBuff.addr, align 8, !tbaa !5
  %incdec.ptr8 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr8, i8** %outBuff.addr, align 8, !tbaa !5
  store i8 %16, i8* %17, align 1, !tbaa !11
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %add = add nsw i32 %18, 2
  store i32 %add, i32* %i, align 4, !tbaa !1
  store i32 0, i32* %count, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.13

if.else:                                          ; preds = %while.body
  %19 = load i32, i32* %count, align 4, !tbaa !1
  %conv9 = trunc i32 %19 to i8
  %20 = load i8*, i8** %outBuff.addr, align 8, !tbaa !5
  %incdec.ptr10 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr10, i8** %outBuff.addr, align 8, !tbaa !5
  store i8 %conv9, i8* %20, align 1, !tbaa !11
  %21 = load i8, i8* %value, align 1, !tbaa !11
  %22 = load i8*, i8** %outBuff.addr, align 8, !tbaa !5
  %incdec.ptr11 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr11, i8** %outBuff.addr, align 8, !tbaa !5
  store i8 %21, i8* %22, align 1, !tbaa !11
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %add12 = add nsw i32 %23, 2
  store i32 %add12, i32* %i, align 4, !tbaa !1
  store i32 0, i32* %count, align 4, !tbaa !1
  %24 = load i8*, i8** %ptr, align 8, !tbaa !5
  %25 = load i8, i8* %24, align 1, !tbaa !11
  store i8 %25, i8* %value, align 1, !tbaa !11
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end
  %26 = load i8*, i8** %ptr, align 8, !tbaa !5
  %incdec.ptr14 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr14, i8** %ptr, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %27 = load i32, i32* %count, align 4, !tbaa !1
  %conv15 = trunc i32 %27 to i8
  %28 = load i8*, i8** %outBuff.addr, align 8, !tbaa !5
  %incdec.ptr16 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr16, i8** %outBuff.addr, align 8, !tbaa !5
  store i8 %conv15, i8* %28, align 1, !tbaa !11
  %29 = load i8, i8* %value, align 1, !tbaa !11
  %30 = load i8*, i8** %outBuff.addr, align 8, !tbaa !5
  %incdec.ptr17 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr17, i8** %outBuff.addr, align 8, !tbaa !5
  store i8 %29, i8* %30, align 1, !tbaa !11
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %add18 = add nsw i32 %31, 2
  store i32 %add18, i32* %i, align 4, !tbaa !1
  %32 = load i32, i32* %i, align 4, !tbaa !1
  %33 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  call void @llvm.lifetime.end(i64 1, i8* %value) #1
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  ret i32 %32
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !2, i64 8}
!8 = !{!"", !2, i64 0, !2, i64 4, !2, i64 8}
!9 = !{!8, !2, i64 0}
!10 = !{!8, !2, i64 4}
!11 = !{!3, !3, i64 0}
