; ModuleID = './ijs_client.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IjsClientCtx = type { i32, i32, %struct.IjsSendChan, %struct.IjsRecvChan, i32 }
%struct.IjsSendChan = type { i32, [4096 x i8], i32 }
%struct.IjsRecvChan = type { i32, [4096 x i8], i32, i32 }

@ijs_invoke_server.helo_buf = private unnamed_addr constant [8 x i8] c"IJS\0A\AAv1\0A", align 1
@ijs_invoke_server.exp_resp_buf = internal constant [8 x i8] c"IJS\0A\ABv1\0A", align 1

; Function Attrs: nounwind uwtable
define %struct._IjsClientCtx* @ijs_invoke_server(i8* %server_cmd) #0 {
entry:
  %retval = alloca %struct._IjsClientCtx*, align 8
  %server_cmd.addr = alloca i8*, align 8
  %ctx = alloca %struct._IjsClientCtx*, align 8
  %fds_to = alloca [2 x i32], align 4
  %fds_from = alloca [2 x i32], align 4
  %child_pid = alloca i32, align 4
  %helo_buf = alloca [8 x i8], align 1
  %resp_buf = alloca [8 x i8], align 1
  %ok = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %version = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %server_cmd, i8** %server_cmd.addr, align 8, !tbaa !1
  %0 = bitcast %struct._IjsClientCtx** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [2 x i32]* %fds_to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [2 x i32]* %fds_from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %child_pid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [8 x i8]* %helo_buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [8 x i8]* %helo_buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ijs_invoke_server.helo_buf, i32 0, i32 0), i64 8, i32 1, i1 false)
  %6 = bitcast [8 x i8]* %resp_buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %ok, align 4, !tbaa !5
  %8 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %version to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i8*, i8** %server_cmd.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %fds_to, i32 0, i64 1
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_from, i32 0, i64 0
  %call = call i32 @ijs_exec_server(i8* %10, i32* %arrayidx, i32* %arrayidx1, i32* %child_pid) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._IjsClientCtx* null, %struct._IjsClientCtx** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call noalias i8* @malloc(i64 8224) #6
  %11 = bitcast i8* %call2 to %struct._IjsClientCtx*
  store %struct._IjsClientCtx* %11, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_from, i32 0, i64 0
  %12 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %13 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %fd_from = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %13, i32 0, i32 0
  store i32 %12, i32* %fd_from, align 4, !tbaa !7
  %14 = load i32, i32* %child_pid, align 4, !tbaa !5
  %15 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %child_pid4 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %15, i32 0, i32 1
  store i32 %14, i32* %child_pid4, align 4, !tbaa !11
  %16 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %send_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %16, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_to, i32 0, i64 1
  %17 = load i32, i32* %arrayidx5, align 4, !tbaa !5
  call void @ijs_send_init(%struct.IjsSendChan* %send_chan, i32 %17) #5
  %18 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %recv_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %18, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %fds_from, i32 0, i64 0
  %19 = load i32, i32* %arrayidx6, align 4, !tbaa !5
  call void @ijs_recv_init(%struct.IjsRecvChan* %recv_chan, i32 %19) #5
  %20 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %send_chan7 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %20, i32 0, i32 2
  %fd = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %send_chan7, i32 0, i32 0
  %21 = load i32, i32* %fd, align 4, !tbaa !12
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %helo_buf, i32 0, i32 0
  %call8 = call i64 @write(i32 %21, i8* %arraydecay, i64 8) #5
  %conv = trunc i64 %call8 to i32
  store i32 %conv, i32* %nbytes, align 4, !tbaa !5
  %22 = load i32, i32* %nbytes, align 4, !tbaa !5
  %conv9 = sext i32 %22 to i64
  %cmp10 = icmp ne i64 %conv9, 8
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 0, i32* %ok, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  %23 = load i32, i32* %ok, align 4, !tbaa !5
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then.14, label %if.end.28

if.then.14:                                       ; preds = %if.end.13
  %24 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %recv_chan15 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %24, i32 0, i32 3
  %fd16 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan15, i32 0, i32 0
  %25 = load i32, i32* %fd16, align 4, !tbaa !13
  %arraydecay17 = getelementptr inbounds [8 x i8], [8 x i8]* %resp_buf, i32 0, i32 0
  %call18 = call i64 @read(i32 %25, i8* %arraydecay17, i64 8) #5
  %conv19 = trunc i64 %call18 to i32
  store i32 %conv19, i32* %nbytes, align 4, !tbaa !5
  %26 = load i32, i32* %nbytes, align 4, !tbaa !5
  %conv20 = sext i32 %26 to i64
  %cmp21 = icmp ne i64 %conv20, 8
  br i1 %cmp21, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.14
  %arraydecay23 = getelementptr inbounds [8 x i8], [8 x i8]* %resp_buf, i32 0, i32 0
  %call24 = call i32 @memcmp(i8* %arraydecay23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ijs_invoke_server.exp_resp_buf, i32 0, i32 0), i64 8) #7
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false, %if.then.14
  store i32 0, i32* %ok, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %lor.lhs.false
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.13
  %27 = load i32, i32* %ok, align 4, !tbaa !5
  %tobool29 = icmp ne i32 %27, 0
  br i1 %tobool29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end.28
  %28 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %call31 = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %28, i32 2) #5
  %cmp32 = icmp sge i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  store i32 %conv33, i32* %ok, align 4, !tbaa !5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.end.28
  %29 = load i32, i32* %ok, align 4, !tbaa !5
  %tobool35 = icmp ne i32 %29, 0
  br i1 %tobool35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %if.end.34
  %30 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %send_chan37 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %30, i32 0, i32 2
  %call38 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan37, i32 35) #5
  %cmp39 = icmp sge i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  store i32 %conv40, i32* %ok, align 4, !tbaa !5
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %if.end.34
  %31 = load i32, i32* %ok, align 4, !tbaa !5
  %tobool42 = icmp ne i32 %31, 0
  br i1 %tobool42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.end.41
  %32 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %call44 = call i32 @ijs_client_send_cmd_wait(%struct._IjsClientCtx* %32) #5
  %cmp45 = icmp sge i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  store i32 %conv46, i32* %ok, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.end.41
  %33 = load i32, i32* %ok, align 4, !tbaa !5
  %tobool48 = icmp ne i32 %33, 0
  br i1 %tobool48, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %if.end.47
  %34 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %recv_chan50 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %34, i32 0, i32 3
  %call51 = call i32 @ijs_recv_int(%struct.IjsRecvChan* %recv_chan50, i32* %version) #5
  %cmp52 = icmp sge i32 %call51, 0
  %conv53 = zext i1 %cmp52 to i32
  store i32 %conv53, i32* %ok, align 4, !tbaa !5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %if.end.47
  %35 = load i32, i32* %ok, align 4, !tbaa !5
  %tobool55 = icmp ne i32 %35, 0
  br i1 %tobool55, label %if.then.56, label %if.end.62

if.then.56:                                       ; preds = %if.end.54
  %36 = load i32, i32* %version, align 4, !tbaa !5
  %cmp57 = icmp sgt i32 %36, 35
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.56
  store i32 35, i32* %version, align 4, !tbaa !5
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.then.56
  %37 = load i32, i32* %version, align 4, !tbaa !5
  %38 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %version61 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %38, i32 0, i32 4
  store i32 %37, i32* %version61, align 4, !tbaa !14
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.60, %if.end.54
  %39 = load i32, i32* %ok, align 4, !tbaa !5
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.end.71, label %if.then.64

if.then.64:                                       ; preds = %if.end.62
  %40 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %send_chan65 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %40, i32 0, i32 2
  %fd66 = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %send_chan65, i32 0, i32 0
  %41 = load i32, i32* %fd66, align 4, !tbaa !12
  %call67 = call i32 @close(i32 %41) #5
  %42 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %recv_chan68 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %42, i32 0, i32 3
  %fd69 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan68, i32 0, i32 0
  %43 = load i32, i32* %fd69, align 4, !tbaa !13
  %call70 = call i32 @close(i32 %43) #5
  %44 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  %45 = bitcast %struct._IjsClientCtx* %44 to i8*
  call void @free(i8* %45) #6
  store %struct._IjsClientCtx* null, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.64, %if.end.62
  %46 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx, align 8, !tbaa !1
  store %struct._IjsClientCtx* %46, %struct._IjsClientCtx** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.71, %if.then
  %47 = bitcast i32* %version to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast [8 x i8]* %resp_buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast [8 x i8]* %helo_buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i32* %child_pid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast [2 x i32]* %fds_from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast [2 x i32]* %fds_to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct._IjsClientCtx** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %retval
  ret %struct._IjsClientCtx* %56
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @ijs_exec_server(i8*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare void @ijs_send_init(%struct.IjsSendChan*, i32) #2

declare void @ijs_recv_init(%struct.IjsRecvChan*, i32) #2

declare i64 @write(i32, i8*, i64) #2

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %ctx, i32 %cmd) #0 {
entry:
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  %cmd.addr = alloca i32, align 4
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  store i32 %cmd, i32* %cmd.addr, align 4, !tbaa !15
  %0 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %0, i32 0, i32 2
  %1 = load i32, i32* %cmd.addr, align 4, !tbaa !15
  %call = call i32 @ijs_send_begin(%struct.IjsSendChan* %send_chan, i32 %1) #5
  ret i32 %call
}

declare i32 @ijs_send_int(%struct.IjsSendChan*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @ijs_client_send_cmd_wait(%struct._IjsClientCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  %status = alloca i32, align 4
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call = call i32 @ijs_client_send_cmd(%struct._IjsClientCtx* %1) #5
  store i32 %call, i32* %status, align 4, !tbaa !5
  %2 = load i32, i32* %status, align 4, !tbaa !5
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %recv_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %3, i32 0, i32 3
  %call1 = call i32 @ijs_recv_ack(%struct.IjsRecvChan* %recv_chan) #5
  store i32 %call1, i32* %status, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %status, align 4, !tbaa !5
  %5 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i32 %4
}

declare i32 @ijs_recv_int(%struct.IjsRecvChan*, i32*) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @ijs_send_begin(%struct.IjsSendChan*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @ijs_client_send_int(%struct._IjsClientCtx* %ctx, i32 %val) #0 {
entry:
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  %val.addr = alloca i32, align 4
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  store i32 %val, i32* %val.addr, align 4, !tbaa !5
  %0 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %0, i32 0, i32 2
  %1 = load i32, i32* %val.addr, align 4, !tbaa !5
  %call = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan, i32 %1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @ijs_client_send_cmd(%struct._IjsClientCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %0 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %0, i32 0, i32 2
  %call = call i32 @ijs_send_buf(%struct.IjsSendChan* %send_chan) #5
  ret i32 %call
}

declare i32 @ijs_send_buf(%struct.IjsSendChan*) #2

declare i32 @ijs_recv_ack(%struct.IjsRecvChan*) #2

; Function Attrs: nounwind uwtable
define i32 @ijs_client_send_data_wait(%struct._IjsClientCtx* %ctx, i32 %job_id, i8* %buf, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  %job_id.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  store i32 %job_id, i32* %job_id.addr, align 4, !tbaa !5
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %1, i32 15) #5
  %2 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %2, i32 0, i32 2
  %3 = load i32, i32* %job_id.addr, align 4, !tbaa !5
  %call1 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan, i32 %3) #5
  %4 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan2 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %4, i32 0, i32 2
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call3 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan2, i32 %5) #5
  %6 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call4 = call i32 @ijs_client_send_cmd(%struct._IjsClientCtx* %6) #5
  store i32 %call4, i32* %status, align 4, !tbaa !5
  %7 = load i32, i32* %status, align 4, !tbaa !5
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan5 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %9, i32 0, i32 2
  %fd = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %send_chan5, i32 0, i32 0
  %10 = load i32, i32* %fd, align 4, !tbaa !12
  %11 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %12 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = sext i32 %12 to i64
  %call6 = call i64 @write(i32 %10, i8* %11, i64 %conv) #5
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, i32* %status, align 4, !tbaa !5
  %13 = load i32, i32* %status, align 4, !tbaa !5
  %14 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %13, %14
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %15 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %recv_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %15, i32 0, i32 3
  %call11 = call i32 @ijs_recv_ack(%struct.IjsRecvChan* %recv_chan) #5
  store i32 %call11, i32* %status, align 4, !tbaa !5
  %16 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then
  %17 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @ijs_client_open(%struct._IjsClientCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %0 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %0, i32 4) #5
  %1 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call1 = call i32 @ijs_client_send_cmd_wait(%struct._IjsClientCtx* %1) #5
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @ijs_client_close(%struct._IjsClientCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %0 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %0, i32 5) #5
  %1 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call1 = call i32 @ijs_client_send_cmd_wait(%struct._IjsClientCtx* %1) #5
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @ijs_client_begin_job(%struct._IjsClientCtx* %ctx, i32 %job_id) #0 {
entry:
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  %job_id.addr = alloca i32, align 4
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  store i32 %job_id, i32* %job_id.addr, align 4, !tbaa !5
  %0 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %0, i32 6) #5
  %1 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %1, i32 0, i32 2
  %2 = load i32, i32* %job_id.addr, align 4, !tbaa !5
  %call1 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan, i32 %2) #5
  %3 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call2 = call i32 @ijs_client_send_cmd_wait(%struct._IjsClientCtx* %3) #5
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define i32 @ijs_client_end_job(%struct._IjsClientCtx* %ctx, i32 %job_id) #0 {
entry:
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  %job_id.addr = alloca i32, align 4
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  store i32 %job_id, i32* %job_id.addr, align 4, !tbaa !5
  %0 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %0, i32 7) #5
  %1 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %1, i32 0, i32 2
  %2 = load i32, i32* %job_id.addr, align 4, !tbaa !5
  %call1 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan, i32 %2) #5
  %3 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call2 = call i32 @ijs_client_send_cmd_wait(%struct._IjsClientCtx* %3) #5
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define i32 @ijs_client_list_params(%struct._IjsClientCtx* %ctx, i32 %job_id, i8* %value, i32 %value_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  %job_id.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %value_size.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  store i32 %job_id, i32* %job_id.addr, align 4, !tbaa !5
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  store i32 %value_size, i32* %value_size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %1, i32 10) #5
  %2 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %2, i32 0, i32 2
  %3 = load i32, i32* %job_id.addr, align 4, !tbaa !5
  %call1 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan, i32 %3) #5
  %4 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call2 = call i32 @ijs_client_send_cmd(%struct._IjsClientCtx* %4) #5
  store i32 %call2, i32* %status, align 4, !tbaa !5
  %5 = load i32, i32* %status, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %recv_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %7, i32 0, i32 3
  %call3 = call i32 @ijs_recv_ack(%struct.IjsRecvChan* %recv_chan) #5
  store i32 %call3, i32* %status, align 4, !tbaa !5
  %8 = load i32, i32* %status, align 4, !tbaa !5
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %9 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %10 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %recv_chan7 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %10, i32 0, i32 3
  %11 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %12 = load i32, i32* %value_size.addr, align 4, !tbaa !5
  %call8 = call i32 @ijs_recv_block(%struct.IjsRecvChan* %recv_chan7, i8* %11, i32 %12) #5
  store i32 %call8, i32* %status, align 4, !tbaa !5
  %13 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %14 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @ijs_recv_block(%struct.IjsRecvChan*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @ijs_client_enum_param(%struct._IjsClientCtx* %ctx, i32 %job_id, i8* %key, i8* %value, i32 %value_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  %job_id.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %value_size.addr = alloca i32, align 4
  %key_size = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  store i32 %job_id, i32* %job_id.addr, align 4, !tbaa !5
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  store i32 %value_size, i32* %value_size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %1) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %key_size, align 4, !tbaa !5
  %2 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call1 = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %3, i32 11) #5
  %4 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %4, i32 0, i32 2
  %5 = load i32, i32* %job_id.addr, align 4, !tbaa !5
  %call2 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan, i32 %5) #5
  %6 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan3 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %6, i32 0, i32 2
  %7 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %8 = load i32, i32* %key_size, align 4, !tbaa !5
  %add = add nsw i32 %8, 1
  %call4 = call i32 @ijs_send_block(%struct.IjsSendChan* %send_chan3, i8* %7, i32 %add) #5
  store i32 %call4, i32* %status, align 4, !tbaa !5
  %9 = load i32, i32* %status, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call6 = call i32 @ijs_client_send_cmd(%struct._IjsClientCtx* %10) #5
  store i32 %call6, i32* %status, align 4, !tbaa !5
  %11 = load i32, i32* %status, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %12 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %13 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %recv_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %13, i32 0, i32 3
  %call9 = call i32 @ijs_recv_ack(%struct.IjsRecvChan* %recv_chan) #5
  store i32 %call9, i32* %status, align 4, !tbaa !5
  %14 = load i32, i32* %status, align 4, !tbaa !5
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %15 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %16 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %recv_chan13 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %16, i32 0, i32 3
  %17 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %18 = load i32, i32* %value_size.addr, align 4, !tbaa !5
  %call14 = call i32 @ijs_recv_block(%struct.IjsRecvChan* %recv_chan13, i8* %17, i32 %18) #5
  store i32 %call14, i32* %status, align 4, !tbaa !5
  %19 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.7, %if.then
  %20 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @ijs_send_block(%struct.IjsSendChan*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @ijs_client_set_param(%struct._IjsClientCtx* %ctx, i32 %job_id, i8* %key, i8* %value, i32 %value_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  %job_id.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %value_size.addr = alloca i32, align 4
  %key_size = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  store i32 %job_id, i32* %job_id.addr, align 4, !tbaa !5
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  store i32 %value_size, i32* %value_size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %1) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %key_size, align 4, !tbaa !5
  %2 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call1 = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %3, i32 12) #5
  %4 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %4, i32 0, i32 2
  %5 = load i32, i32* %job_id.addr, align 4, !tbaa !5
  %call2 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan, i32 %5) #5
  %6 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan3 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %6, i32 0, i32 2
  %7 = load i32, i32* %key_size, align 4, !tbaa !5
  %add = add nsw i32 %7, 1
  %8 = load i32, i32* %value_size.addr, align 4, !tbaa !5
  %add4 = add nsw i32 %add, %8
  %call5 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan3, i32 %add4) #5
  %9 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan6 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %9, i32 0, i32 2
  %10 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %11 = load i32, i32* %key_size, align 4, !tbaa !5
  %add7 = add nsw i32 %11, 1
  %call8 = call i32 @ijs_send_block(%struct.IjsSendChan* %send_chan6, i8* %10, i32 %add7) #5
  store i32 %call8, i32* %status, align 4, !tbaa !5
  %12 = load i32, i32* %status, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan9 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %14, i32 0, i32 2
  %15 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %16 = load i32, i32* %value_size.addr, align 4, !tbaa !5
  %call10 = call i32 @ijs_send_block(%struct.IjsSendChan* %send_chan9, i8* %15, i32 %16) #5
  store i32 %call10, i32* %status, align 4, !tbaa !5
  %17 = load i32, i32* %status, align 4, !tbaa !5
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %18 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %19 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call14 = call i32 @ijs_client_send_cmd(%struct._IjsClientCtx* %19) #5
  store i32 %call14, i32* %status, align 4, !tbaa !5
  %20 = load i32, i32* %status, align 4, !tbaa !5
  %tobool15 = icmp ne i32 %20, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  %21 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.13
  %22 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %recv_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %22, i32 0, i32 3
  %call18 = call i32 @ijs_recv_ack(%struct.IjsRecvChan* %recv_chan) #5
  store i32 %call18, i32* %status, align 4, !tbaa !5
  %23 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then.12, %if.then
  %24 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @ijs_client_get_param(%struct._IjsClientCtx* %ctx, i32 %job_id, i8* %key, i8* %value, i32 %value_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  %job_id.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %value_size.addr = alloca i32, align 4
  %key_size = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  store i32 %job_id, i32* %job_id.addr, align 4, !tbaa !5
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  store i32 %value_size, i32* %value_size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %1) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %key_size, align 4, !tbaa !5
  %2 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call1 = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %3, i32 13) #5
  %4 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %4, i32 0, i32 2
  %5 = load i32, i32* %job_id.addr, align 4, !tbaa !5
  %call2 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan, i32 %5) #5
  %6 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan3 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %6, i32 0, i32 2
  %7 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %8 = load i32, i32* %key_size, align 4, !tbaa !5
  %add = add nsw i32 %8, 1
  %call4 = call i32 @ijs_send_block(%struct.IjsSendChan* %send_chan3, i8* %7, i32 %add) #5
  store i32 %call4, i32* %status, align 4, !tbaa !5
  %9 = load i32, i32* %status, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call6 = call i32 @ijs_client_send_cmd(%struct._IjsClientCtx* %10) #5
  store i32 %call6, i32* %status, align 4, !tbaa !5
  %11 = load i32, i32* %status, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %12 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %13 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %recv_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %13, i32 0, i32 3
  %call9 = call i32 @ijs_recv_ack(%struct.IjsRecvChan* %recv_chan) #5
  store i32 %call9, i32* %status, align 4, !tbaa !5
  %14 = load i32, i32* %status, align 4, !tbaa !5
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %15 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %16 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %recv_chan13 = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %16, i32 0, i32 3
  %17 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %18 = load i32, i32* %value_size.addr, align 4, !tbaa !5
  %call14 = call i32 @ijs_recv_block(%struct.IjsRecvChan* %recv_chan13, i8* %17, i32 %18) #5
  store i32 %call14, i32* %status, align 4, !tbaa !5
  %19 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.7, %if.then
  %20 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @ijs_client_begin_page(%struct._IjsClientCtx* %ctx, i32 %job_id) #0 {
entry:
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  %job_id.addr = alloca i32, align 4
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  store i32 %job_id, i32* %job_id.addr, align 4, !tbaa !5
  %0 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %0, i32 14) #5
  %1 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %1, i32 0, i32 2
  %2 = load i32, i32* %job_id.addr, align 4, !tbaa !5
  %call1 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan, i32 %2) #5
  %3 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call2 = call i32 @ijs_client_send_cmd_wait(%struct._IjsClientCtx* %3) #5
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define i32 @ijs_client_end_page(%struct._IjsClientCtx* %ctx, i32 %job_id) #0 {
entry:
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  %job_id.addr = alloca i32, align 4
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  store i32 %job_id, i32* %job_id.addr, align 4, !tbaa !5
  %0 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call = call i32 @ijs_client_begin_cmd(%struct._IjsClientCtx* %0, i32 16) #5
  %1 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %send_chan = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %1, i32 0, i32 2
  %2 = load i32, i32* %job_id.addr, align 4, !tbaa !5
  %call1 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan, i32 %2) #5
  %3 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %call2 = call i32 @ijs_client_send_cmd_wait(%struct._IjsClientCtx* %3) #5
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define i32 @ijs_client_get_version(%struct._IjsClientCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._IjsClientCtx*, align 8
  store %struct._IjsClientCtx* %ctx, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %0 = load %struct._IjsClientCtx*, %struct._IjsClientCtx** %ctx.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct._IjsClientCtx, %struct._IjsClientCtx* %0, i32 0, i32 4
  %1 = load i32, i32* %version, align 4, !tbaa !14
  ret i32 %1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 0}
!8 = !{!"_IjsClientCtx", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 4112, !6, i64 8220}
!9 = !{!"", !6, i64 0, !3, i64 4, !6, i64 4100}
!10 = !{!"", !6, i64 0, !3, i64 4, !6, i64 4100, !6, i64 4104}
!11 = !{!8, !6, i64 4}
!12 = !{!8, !6, i64 8}
!13 = !{!8, !6, i64 4112}
!14 = !{!8, !6, i64 8220}
!15 = !{!3, !3, i64 0}
