; ModuleID = './ijs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IjsSendChan = type { i32, [4096 x i8], i32 }
%struct.IjsRecvChan = type { i32, [4096 x i8], i32, i32 }

; Function Attrs: nounwind uwtable
define void @ijs_send_init(%struct.IjsSendChan* %ch, i32 %fd) #0 {
entry:
  %ch.addr = alloca %struct.IjsSendChan*, align 8
  %fd.addr = alloca i32, align 4
  store %struct.IjsSendChan* %ch, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !5
  %0 = load i32, i32* %fd.addr, align 4, !tbaa !5
  %1 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %fd1 = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %1, i32 0, i32 0
  store i32 %0, i32* %fd1, align 4, !tbaa !7
  %2 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %2, i32 0, i32 2
  store i32 0, i32* %buf_size, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ijs_send_int(%struct.IjsSendChan* %ch, i32 %val) #0 {
entry:
  %retval = alloca i32, align 4
  %ch.addr = alloca %struct.IjsSendChan*, align 8
  %val.addr = alloca i32, align 4
  store %struct.IjsSendChan* %ch, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  store i32 %val, i32* %val.addr, align 4, !tbaa !5
  %0 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %0, i32 0, i32 2
  %1 = load i32, i32* %buf_size, align 4, !tbaa !9
  %add = add nsw i32 %1, 4
  %cmp = icmp sgt i32 %add, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %3 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf_size1 = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %3, i32 0, i32 2
  %4 = load i32, i32* %buf_size1, align 4, !tbaa !9
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %5 = load i32, i32* %val.addr, align 4, !tbaa !5
  call void @ijs_put_int(i8* %add.ptr, i32 %5) #4
  %6 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf_size2 = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %6, i32 0, i32 2
  %7 = load i32, i32* %buf_size2, align 4, !tbaa !9
  %add3 = add nsw i32 %7, 4
  store i32 %add3, i32* %buf_size2, align 4, !tbaa !9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @ijs_put_int(i8* %p, i32 %val) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %val.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %val, i32* %val.addr, align 4, !tbaa !5
  %0 = load i32, i32* %val.addr, align 4, !tbaa !5
  %shr = ashr i32 %0, 24
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !10
  %2 = load i32, i32* %val.addr, align 4, !tbaa !5
  %shr1 = ashr i32 %2, 16
  %and2 = and i32 %shr1, 255
  %conv3 = trunc i32 %and2 to i8
  %3 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 %conv3, i8* %arrayidx4, align 1, !tbaa !10
  %4 = load i32, i32* %val.addr, align 4, !tbaa !5
  %shr5 = ashr i32 %4, 8
  %and6 = and i32 %shr5, 255
  %conv7 = trunc i32 %and6 to i8
  %5 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %5, i64 2
  store i8 %conv7, i8* %arrayidx8, align 1, !tbaa !10
  %6 = load i32, i32* %val.addr, align 4, !tbaa !5
  %and9 = and i32 %6, 255
  %conv10 = trunc i32 %and9 to i8
  %7 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %7, i64 3
  store i8 %conv10, i8* %arrayidx11, align 1, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ijs_send_begin(%struct.IjsSendChan* %ch, i32 %cmd) #0 {
entry:
  %retval = alloca i32, align 4
  %ch.addr = alloca %struct.IjsSendChan*, align 8
  %cmd.addr = alloca i32, align 4
  store %struct.IjsSendChan* %ch, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  store i32 %cmd, i32* %cmd.addr, align 4, !tbaa !10
  %0 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %0, i32 0, i32 2
  %1 = load i32, i32* %buf_size, align 4, !tbaa !9
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %3 = load i32, i32* %cmd.addr, align 4, !tbaa !10
  %call = call i32 @ijs_send_int(%struct.IjsSendChan* %2, i32 %3) #4
  %4 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf_size1 = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %4, i32 0, i32 2
  %5 = load i32, i32* %buf_size1, align 4, !tbaa !9
  %add = add nsw i32 %5, 4
  store i32 %add, i32* %buf_size1, align 4, !tbaa !9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @ijs_send_block(%struct.IjsSendChan* %ch, i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ch.addr = alloca %struct.IjsSendChan*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.IjsSendChan* %ch, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %0, i32 0, i32 2
  %1 = load i32, i32* %buf_size, align 4, !tbaa !9
  %2 = load i32, i32* %len.addr, align 4, !tbaa !5
  %add = add nsw i32 %1, %2
  %cmp = icmp sgt i32 %add, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf1 = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %3, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf1, i32 0, i32 0
  %4 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf_size2 = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %4, i32 0, i32 2
  %5 = load i32, i32* %buf_size2, align 4, !tbaa !9
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %6 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %7 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv = sext i32 %7 to i64
  %call = call i8* @memcpy(i8* %add.ptr, i8* %6, i64 %conv) #5
  %8 = load i32, i32* %len.addr, align 4, !tbaa !5
  %9 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf_size3 = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %9, i32 0, i32 2
  %10 = load i32, i32* %buf_size3, align 4, !tbaa !9
  %add4 = add nsw i32 %10, %8
  store i32 %add4, i32* %buf_size3, align 4, !tbaa !9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @ijs_send_buf(%struct.IjsSendChan* %ch) #0 {
entry:
  %ch.addr = alloca %struct.IjsSendChan*, align 8
  %status = alloca i32, align 4
  store %struct.IjsSendChan* %ch, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 4
  %2 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %2, i32 0, i32 2
  %3 = load i32, i32* %buf_size, align 4, !tbaa !9
  call void @ijs_put_int(i8* %add.ptr, i32 %3) #4
  %4 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %fd = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %4, i32 0, i32 0
  %5 = load i32, i32* %fd, align 4, !tbaa !7
  %6 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf1 = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %6, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf1, i32 0, i32 0
  %7 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf_size3 = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %7, i32 0, i32 2
  %8 = load i32, i32* %buf_size3, align 4, !tbaa !9
  %conv = sext i32 %8 to i64
  %call = call i64 @write(i32 %5, i8* %arraydecay2, i64 %conv) #4
  %conv4 = trunc i64 %call to i32
  store i32 %conv4, i32* %status, align 4, !tbaa !5
  %9 = load i32, i32* %status, align 4, !tbaa !5
  %10 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf_size5 = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %10, i32 0, i32 2
  %11 = load i32, i32* %buf_size5, align 4, !tbaa !9
  %cmp = icmp eq i32 %9, %11
  %cond = select i1 %cmp, i32 0, i32 -2
  store i32 %cond, i32* %status, align 4, !tbaa !5
  %12 = load %struct.IjsSendChan*, %struct.IjsSendChan** %ch.addr, align 8, !tbaa !1
  %buf_size7 = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %12, i32 0, i32 2
  store i32 0, i32* %buf_size7, align 4, !tbaa !9
  %13 = load i32, i32* %status, align 4, !tbaa !5
  %14 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  ret i32 %13
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i64 @write(i32, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @ijs_recv_init(%struct.IjsRecvChan* %ch, i32 %fd) #0 {
entry:
  %ch.addr = alloca %struct.IjsRecvChan*, align 8
  %fd.addr = alloca i32, align 4
  store %struct.IjsRecvChan* %ch, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !5
  %0 = load i32, i32* %fd.addr, align 4, !tbaa !5
  %1 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %fd1 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %1, i32 0, i32 0
  store i32 %0, i32* %fd1, align 4, !tbaa !11
  %2 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %2, i32 0, i32 2
  store i32 0, i32* %buf_size, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ijs_get_int(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %up = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  %0 = bitcast i8** %up to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8* %1, i8** %up, align 8, !tbaa !1
  %2 = load i8*, i8** %up, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %3 to i32
  %shl = shl i32 %conv, 24
  %4 = load i8*, i8** %up, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1, !tbaa !10
  %conv2 = zext i8 %5 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %6 = load i8*, i8** %up, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx4, align 1, !tbaa !10
  %conv5 = zext i8 %7 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %8 = load i8*, i8** %up, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 3
  %9 = load i8, i8* %arrayidx8, align 1, !tbaa !10
  %conv9 = zext i8 %9 to i32
  %or10 = or i32 %or7, %conv9
  %10 = bitcast i8** %up to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret i32 %or10
}

; Function Attrs: nounwind uwtable
define i32 @ijs_recv_read(%struct.IjsRecvChan* %ch, i8* %buf, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %ch.addr = alloca %struct.IjsRecvChan*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %ix = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.IjsRecvChan* %ch, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %ix, align 4, !tbaa !5
  %1 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %fd = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %2, i32 0, i32 0
  %3 = load i32, i32* %fd, align 4, !tbaa !11
  %4 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %5 = load i32, i32* %ix, align 4, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i32, i32* %size.addr, align 4, !tbaa !5
  %7 = load i32, i32* %ix, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %7
  %conv = sext i32 %sub to i64
  %call = call i64 @read(i32 %3, i8* %add.ptr, i64 %conv) #4
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* %nbytes, align 4, !tbaa !5
  %8 = load i32, i32* %nbytes, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %9 = load i32, i32* %nbytes, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %10 = load i32, i32* %nbytes, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  %11 = load i32, i32* %ix, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.6:                                        ; preds = %if.else
  %12 = load i32, i32* %nbytes, align 4, !tbaa !5
  %13 = load i32, i32* %ix, align 4, !tbaa !5
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %ix, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else.6
  br label %if.end.7

if.end.7:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.7
  %14 = load i32, i32* %ix, align 4, !tbaa !5
  %15 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %14, %15
  br i1 %cmp8, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load i32, i32* %ix, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.5, %if.then
  %17 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i64 @read(i32, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @ijs_recv_buf(%struct.IjsRecvChan* %ch) #0 {
entry:
  %retval = alloca i32, align 4
  %ch.addr = alloca %struct.IjsRecvChan*, align 8
  %nbytes = alloca i32, align 4
  %data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.IjsRecvChan* %ch, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %0 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %3 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %3, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call = call i32 @ijs_recv_read(%struct.IjsRecvChan* %2, i8* %arraydecay, i32 8) #4
  store i32 %call, i32* %nbytes, align 4, !tbaa !5
  %4 = load i32, i32* %nbytes, align 4, !tbaa !5
  %cmp = icmp ne i32 %4, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf1 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %5, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf1, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay2, i64 4
  %call3 = call i32 @ijs_get_int(i8* %add.ptr) #4
  %6 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %6, i32 0, i32 2
  store i32 %call3, i32* %buf_size, align 4, !tbaa !13
  %7 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_size4 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %7, i32 0, i32 2
  %8 = load i32, i32* %buf_size4, align 4, !tbaa !13
  %cmp5 = icmp slt i32 %8, 8
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_size6 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %9, i32 0, i32 2
  %10 = load i32, i32* %buf_size6, align 4, !tbaa !13
  %cmp7 = icmp sgt i32 %10, 4096
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  %11 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_size10 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %11, i32 0, i32 2
  %12 = load i32, i32* %buf_size10, align 4, !tbaa !13
  %sub = sub nsw i32 %12, 8
  store i32 %sub, i32* %data_size, align 4, !tbaa !5
  %13 = load i32, i32* %data_size, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %13, 0
  br i1 %cmp11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %if.end.9
  %14 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %15 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf13 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %15, i32 0, i32 1
  %arraydecay14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf13, i32 0, i32 0
  %add.ptr15 = getelementptr inbounds i8, i8* %arraydecay14, i64 8
  %16 = load i32, i32* %data_size, align 4, !tbaa !5
  %call16 = call i32 @ijs_recv_read(%struct.IjsRecvChan* %14, i8* %add.ptr15, i32 %16) #4
  store i32 %call16, i32* %nbytes, align 4, !tbaa !5
  %17 = load i32, i32* %nbytes, align 4, !tbaa !5
  %18 = load i32, i32* %data_size, align 4, !tbaa !5
  %cmp17 = icmp ne i32 %17, %18
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.12
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.9
  %19 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_idx = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %19, i32 0, i32 3
  store i32 8, i32* %buf_idx, align 4, !tbaa !14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.18, %if.then.8, %if.then
  %20 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @ijs_recv_ack(%struct.IjsRecvChan* %ch) #0 {
entry:
  %ch.addr = alloca %struct.IjsRecvChan*, align 8
  %status = alloca i32, align 4
  %cmd = alloca i32, align 4
  store %struct.IjsRecvChan* %ch, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %call = call i32 @ijs_recv_buf(%struct.IjsRecvChan* %1) #4
  store i32 %call, i32* %status, align 4, !tbaa !5
  %2 = load i32, i32* %status, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %cmd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %4, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call1 = call i32 @ijs_get_int(i8* %arraydecay) #4
  store i32 %call1, i32* %cmd, align 4, !tbaa !5
  %5 = load i32, i32* %cmd, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %if.then
  %6 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %6, i32 0, i32 2
  %7 = load i32, i32* %buf_size, align 4, !tbaa !13
  %cmp4 = icmp ne i32 %7, 12
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  store i32 -3, i32* %status, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %8 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf6 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %8, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf6, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay7, i64 8
  %call8 = call i32 @ijs_get_int(i8* %add.ptr) #4
  store i32 %call8, i32* %status, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %9 = bitcast i32* %cmd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %10 = load i32, i32* %status, align 4, !tbaa !5
  %11 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @ijs_recv_int(%struct.IjsRecvChan* %ch, i32* %val) #0 {
entry:
  %retval = alloca i32, align 4
  %ch.addr = alloca %struct.IjsRecvChan*, align 8
  %val.addr = alloca i32*, align 8
  store %struct.IjsRecvChan* %ch, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  store i32* %val, i32** %val.addr, align 8, !tbaa !1
  %0 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_idx = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %0, i32 0, i32 3
  %1 = load i32, i32* %buf_idx, align 4, !tbaa !14
  %add = add nsw i32 %1, 4
  %2 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %2, i32 0, i32 2
  %3 = load i32, i32* %buf_size, align 4, !tbaa !13
  %cmp = icmp sgt i32 %add, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %4, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %5 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_idx1 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %5, i32 0, i32 3
  %6 = load i32, i32* %buf_idx1, align 4, !tbaa !14
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %call = call i32 @ijs_get_int(i8* %add.ptr) #4
  %7 = load i32*, i32** %val.addr, align 8, !tbaa !1
  store i32 %call, i32* %7, align 4, !tbaa !5
  %8 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_idx2 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %8, i32 0, i32 3
  %9 = load i32, i32* %buf_idx2, align 4, !tbaa !14
  %add3 = add nsw i32 %9, 4
  store i32 %add3, i32* %buf_idx2, align 4, !tbaa !14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @ijs_recv_block(%struct.IjsRecvChan* %ch, i8* %buf, i32 %buf_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ch.addr = alloca %struct.IjsRecvChan*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_size.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.IjsRecvChan* %ch, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %buf_size, i32* %buf_size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_size1 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %1, i32 0, i32 2
  %2 = load i32, i32* %buf_size1, align 4, !tbaa !13
  %3 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_idx = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %3, i32 0, i32 3
  %4 = load i32, i32* %buf_idx, align 4, !tbaa !14
  %sub = sub nsw i32 %2, %4
  store i32 %sub, i32* %size, align 4, !tbaa !5
  %5 = load i32, i32* %size, align 4, !tbaa !5
  %6 = load i32, i32* %buf_size.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %8 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf2 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %8, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf2, i32 0, i32 0
  %9 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_idx3 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %9, i32 0, i32 3
  %10 = load i32, i32* %buf_idx3, align 4, !tbaa !14
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %11 = load i32, i32* %size, align 4, !tbaa !5
  %conv = sext i32 %11 to i64
  %call = call i8* @memcpy(i8* %7, i8* %add.ptr, i64 %conv) #5
  %12 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_size4 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %12, i32 0, i32 2
  %13 = load i32, i32* %buf_size4, align 4, !tbaa !13
  %14 = load %struct.IjsRecvChan*, %struct.IjsRecvChan** %ch.addr, align 8, !tbaa !1
  %buf_idx5 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %14, i32 0, i32 3
  store i32 %13, i32* %buf_idx5, align 4, !tbaa !14
  %15 = load i32, i32* %size, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 0}
!8 = !{!"", !6, i64 0, !3, i64 4, !6, i64 4100}
!9 = !{!8, !6, i64 4100}
!10 = !{!3, !3, i64 0}
!11 = !{!12, !6, i64 0}
!12 = !{!"", !6, i64 0, !3, i64 4, !6, i64 4100, !6, i64 4104}
!13 = !{!12, !6, i64 4100}
!14 = !{!12, !6, i64 4104}
