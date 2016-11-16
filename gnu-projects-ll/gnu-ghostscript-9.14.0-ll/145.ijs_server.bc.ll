; ModuleID = './ijs_server.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IjsServerCtx = type { i32, i32, %struct.IjsSendChan, %struct.IjsRecvChan, i32, i32 (i8*, %struct._IjsServerCtx*, i32)*, i8*, i32 (i8*, %struct._IjsServerCtx*, i32)*, i8*, i32 (i8*, %struct._IjsServerCtx*, i32)*, i8*, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i32)*, i8*, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)*, i8*, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)*, i8*, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)*, i8*, i32, i32, %struct.IjsPageHeader*, i32, i32, i8*, i32, i32, i8*, i32, i32 }
%struct.IjsSendChan = type { i32, [4096 x i8], i32 }
%struct.IjsRecvChan = type { i32, [4096 x i8], i32, i32 }
%struct.IjsPageHeader = type { i32, i32, [256 x i8], i32, i32, double, double }

@.str = private unnamed_addr constant [9 x i8] c"IJS\0A\ABv1\0A\00", align 1
@ijs_server_procs = global [18 x i32 (%struct._IjsServerCtx*)*] [i32 (%struct._IjsServerCtx*)* @ijs_server_proc_ack, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_nak, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_ping, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_pong, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_open, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_close, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_begin_job, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_end_job, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_cancel_job, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_query_status, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_list_params, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_enum_param, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_set_param, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_get_param, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_begin_page, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_send_data_block, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_end_page, i32 (%struct._IjsServerCtx*)* @ijs_server_proc_exit], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"NumChan\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"BitsPerSample\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Dpi\00", align 1

; Function Attrs: nounwind uwtable
define %struct._IjsServerCtx* @ijs_server_init() #0 {
entry:
  %retval = alloca %struct._IjsServerCtx*, align 8
  %ok = alloca i32, align 4
  %helo_buf = alloca [8 x i8], align 1
  %resp_buf = alloca [8 x i8], align 1
  %nbytes = alloca i32, align 4
  %ctx = alloca %struct._IjsServerCtx*, align 8
  %fd_from = alloca i32, align 4
  %fd_to = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %0 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %ok, align 4, !tbaa !1
  %1 = bitcast [8 x i8]* %helo_buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [8 x i8]* %resp_buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct._IjsServerCtx** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %call = call noalias i8* @malloc(i64 8392) #5
  %5 = bitcast i8* %call to %struct._IjsServerCtx*
  store %struct._IjsServerCtx* %5, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  %6 = bitcast i32* %fd_from to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %fd_to to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %resp_buf, i32 0, i32 0
  %call1 = call i8* @memcpy(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 8) #5
  store i32 0, i32* %fd_from, align 4, !tbaa !1
  store i32 1, i32* %fd_to, align 4, !tbaa !1
  %8 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  %recv_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %8, i32 0, i32 3
  %9 = load i32, i32* %fd_from, align 4, !tbaa !1
  call void @ijs_recv_init(%struct.IjsRecvChan* %recv_chan, i32 %9) #6
  %10 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  %send_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %10, i32 0, i32 2
  %11 = load i32, i32* %fd_to, align 4, !tbaa !1
  call void @ijs_send_init(%struct.IjsSendChan* %send_chan, i32 %11) #6
  %12 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  %recv_chan2 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %12, i32 0, i32 3
  %fd = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan2, i32 0, i32 0
  %13 = load i32, i32* %fd, align 4, !tbaa !7
  %arraydecay3 = getelementptr inbounds [8 x i8], [8 x i8]* %helo_buf, i32 0, i32 0
  %call4 = call i64 @read(i32 %13, i8* %arraydecay3, i64 8) #6
  %conv = trunc i64 %call4 to i32
  store i32 %conv, i32* %nbytes, align 4, !tbaa !1
  %14 = load i32, i32* %nbytes, align 4, !tbaa !1
  %conv5 = sext i32 %14 to i64
  %cmp = icmp ne i64 %conv5, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %ok, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %ok, align 4, !tbaa !1
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.end
  %16 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  %send_chan8 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %16, i32 0, i32 2
  %fd9 = getelementptr inbounds %struct.IjsSendChan, %struct.IjsSendChan* %send_chan8, i32 0, i32 0
  %17 = load i32, i32* %fd9, align 4, !tbaa !11
  %arraydecay10 = getelementptr inbounds [8 x i8], [8 x i8]* %resp_buf, i32 0, i32 0
  %call11 = call i64 @write(i32 %17, i8* %arraydecay10, i64 8) #6
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, i32* %nbytes, align 4, !tbaa !1
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.7, %if.end
  %18 = load i32, i32* %nbytes, align 4, !tbaa !1
  %conv14 = sext i32 %18 to i64
  %cmp15 = icmp ne i64 %conv14, 8
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  store i32 0, i32* %ok, align 4, !tbaa !1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.13
  %19 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  %in_job = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %19, i32 0, i32 19
  store i32 0, i32* %in_job, align 4, !tbaa !12
  %20 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  %job_id = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %20, i32 0, i32 20
  store i32 -1, i32* %job_id, align 4, !tbaa !13
  %21 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %21, i32 0, i32 21
  store %struct.IjsPageHeader* null, %struct.IjsPageHeader** %ph, align 8, !tbaa !14
  %22 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  %in_page = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %22, i32 0, i32 23
  store i32 0, i32* %in_page, align 4, !tbaa !15
  %23 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  %buf = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %23, i32 0, i32 24
  store i8* null, i8** %buf, align 8, !tbaa !16
  %24 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  %overflow_buf = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %24, i32 0, i32 27
  store i8* null, i8** %overflow_buf, align 8, !tbaa !17
  %25 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  %begin_cb = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %25, i32 0, i32 5
  store i32 (i8*, %struct._IjsServerCtx*, i32)* @ijs_server_dummy_begin_cb, i32 (i8*, %struct._IjsServerCtx*, i32)** %begin_cb, align 8, !tbaa !18
  %26 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  %end_cb = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %26, i32 0, i32 7
  store i32 (i8*, %struct._IjsServerCtx*, i32)* @ijs_server_dummy_end_cb, i32 (i8*, %struct._IjsServerCtx*, i32)** %end_cb, align 8, !tbaa !19
  %27 = load i32, i32* %ok, align 4, !tbaa !1
  %tobool19 = icmp ne i32 %27, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.18
  %28 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  store %struct._IjsServerCtx* %28, %struct._IjsServerCtx** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.18
  %29 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx, align 8, !tbaa !5
  call void @ijs_server_done(%struct._IjsServerCtx* %29) #6
  store %struct._IjsServerCtx* null, %struct._IjsServerCtx** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.20
  %30 = bitcast i32* %fd_to to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %fd_from to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct._IjsServerCtx** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast [8 x i8]* %resp_buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast [8 x i8]* %helo_buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %retval
  ret %struct._IjsServerCtx* %37
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

declare void @ijs_recv_init(%struct.IjsRecvChan*, i32) #3

declare void @ijs_send_init(%struct.IjsSendChan*, i32) #3

declare i64 @read(i32, i8*, i64) #3

declare i64 @write(i32, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_dummy_begin_cb(i8* %begin_cb_data, %struct._IjsServerCtx* %ctx, i32 %job_id) #0 {
entry:
  %begin_cb_data.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %job_id.addr = alloca i32, align 4
  store i8* %begin_cb_data, i8** %begin_cb_data.addr, align 8, !tbaa !5
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store i32 %job_id, i32* %job_id.addr, align 4, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_dummy_end_cb(i8* %end_cb_data, %struct._IjsServerCtx* %ctx, i32 %job_id) #0 {
entry:
  %end_cb_data.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %job_id.addr = alloca i32, align 4
  store i8* %end_cb_data, i8** %end_cb_data.addr, align 8, !tbaa !5
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store i32 %job_id, i32* %job_id.addr, align 4, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @ijs_server_done(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call = call i32 @ijs_server_ack(%struct._IjsServerCtx* %0) #6
  %1 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %2 = bitcast %struct._IjsServerCtx* %1 to i8*
  call void @free(i8* %2) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @ijs_server_install_begin_cb(%struct._IjsServerCtx* %ctx, i32 (i8*, %struct._IjsServerCtx*, i32)* %begin_cb, i8* %begin_cb_data) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %begin_cb.addr = alloca i32 (i8*, %struct._IjsServerCtx*, i32)*, align 8
  %begin_cb_data.addr = alloca i8*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store i32 (i8*, %struct._IjsServerCtx*, i32)* %begin_cb, i32 (i8*, %struct._IjsServerCtx*, i32)** %begin_cb.addr, align 8, !tbaa !5
  store i8* %begin_cb_data, i8** %begin_cb_data.addr, align 8, !tbaa !5
  %0 = load i32 (i8*, %struct._IjsServerCtx*, i32)*, i32 (i8*, %struct._IjsServerCtx*, i32)** %begin_cb.addr, align 8, !tbaa !5
  %1 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %begin_cb1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %1, i32 0, i32 5
  store i32 (i8*, %struct._IjsServerCtx*, i32)* %0, i32 (i8*, %struct._IjsServerCtx*, i32)** %begin_cb1, align 8, !tbaa !18
  %2 = load i8*, i8** %begin_cb_data.addr, align 8, !tbaa !5
  %3 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %begin_cb_data2 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %3, i32 0, i32 6
  store i8* %2, i8** %begin_cb_data2, align 8, !tbaa !20
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ijs_server_install_end_cb(%struct._IjsServerCtx* %ctx, i32 (i8*, %struct._IjsServerCtx*, i32)* %end_cb, i8* %end_cb_data) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %end_cb.addr = alloca i32 (i8*, %struct._IjsServerCtx*, i32)*, align 8
  %end_cb_data.addr = alloca i8*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store i32 (i8*, %struct._IjsServerCtx*, i32)* %end_cb, i32 (i8*, %struct._IjsServerCtx*, i32)** %end_cb.addr, align 8, !tbaa !5
  store i8* %end_cb_data, i8** %end_cb_data.addr, align 8, !tbaa !5
  %0 = load i32 (i8*, %struct._IjsServerCtx*, i32)*, i32 (i8*, %struct._IjsServerCtx*, i32)** %end_cb.addr, align 8, !tbaa !5
  %1 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %end_cb1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %1, i32 0, i32 7
  store i32 (i8*, %struct._IjsServerCtx*, i32)* %0, i32 (i8*, %struct._IjsServerCtx*, i32)** %end_cb1, align 8, !tbaa !19
  %2 = load i8*, i8** %end_cb_data.addr, align 8, !tbaa !5
  %3 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %end_cb_data2 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %3, i32 0, i32 8
  store i8* %2, i8** %end_cb_data2, align 8, !tbaa !21
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ijs_server_install_status_cb(%struct._IjsServerCtx* %ctx, i32 (i8*, %struct._IjsServerCtx*, i32)* %status_cb, i8* %status_cb_data) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %status_cb.addr = alloca i32 (i8*, %struct._IjsServerCtx*, i32)*, align 8
  %status_cb_data.addr = alloca i8*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store i32 (i8*, %struct._IjsServerCtx*, i32)* %status_cb, i32 (i8*, %struct._IjsServerCtx*, i32)** %status_cb.addr, align 8, !tbaa !5
  store i8* %status_cb_data, i8** %status_cb_data.addr, align 8, !tbaa !5
  %0 = load i32 (i8*, %struct._IjsServerCtx*, i32)*, i32 (i8*, %struct._IjsServerCtx*, i32)** %status_cb.addr, align 8, !tbaa !5
  %1 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %status_cb1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %1, i32 0, i32 9
  store i32 (i8*, %struct._IjsServerCtx*, i32)* %0, i32 (i8*, %struct._IjsServerCtx*, i32)** %status_cb1, align 8, !tbaa !22
  %2 = load i8*, i8** %status_cb_data.addr, align 8, !tbaa !5
  %3 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %status_cb_data2 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %3, i32 0, i32 10
  store i8* %2, i8** %status_cb_data2, align 8, !tbaa !23
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ijs_server_install_list_cb(%struct._IjsServerCtx* %ctx, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i32)* %list_cb, i8* %list_cb_data) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %list_cb.addr = alloca i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i32)*, align 8
  %list_cb_data.addr = alloca i8*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i32)* %list_cb, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i32)** %list_cb.addr, align 8, !tbaa !5
  store i8* %list_cb_data, i8** %list_cb_data.addr, align 8, !tbaa !5
  %0 = load i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i32)*, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i32)** %list_cb.addr, align 8, !tbaa !5
  %1 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %list_cb1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %1, i32 0, i32 11
  store i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i32)* %0, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i32)** %list_cb1, align 8, !tbaa !24
  %2 = load i8*, i8** %list_cb_data.addr, align 8, !tbaa !5
  %3 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %list_cb_data2 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %3, i32 0, i32 12
  store i8* %2, i8** %list_cb_data2, align 8, !tbaa !25
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ijs_server_install_enum_cb(%struct._IjsServerCtx* %ctx, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)* %enum_cb, i8* %enum_cb_data) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %enum_cb.addr = alloca i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)*, align 8
  %enum_cb_data.addr = alloca i8*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)* %enum_cb, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)** %enum_cb.addr, align 8, !tbaa !5
  store i8* %enum_cb_data, i8** %enum_cb_data.addr, align 8, !tbaa !5
  %0 = load i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)*, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)** %enum_cb.addr, align 8, !tbaa !5
  %1 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %enum_cb1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %1, i32 0, i32 13
  store i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)* %0, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)** %enum_cb1, align 8, !tbaa !26
  %2 = load i8*, i8** %enum_cb_data.addr, align 8, !tbaa !5
  %3 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %enum_cb_data2 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %3, i32 0, i32 14
  store i8* %2, i8** %enum_cb_data2, align 8, !tbaa !27
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ijs_server_install_set_cb(%struct._IjsServerCtx* %ctx, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)* %set_cb, i8* %set_cb_data) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %set_cb.addr = alloca i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)*, align 8
  %set_cb_data.addr = alloca i8*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)* %set_cb, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)** %set_cb.addr, align 8, !tbaa !5
  store i8* %set_cb_data, i8** %set_cb_data.addr, align 8, !tbaa !5
  %0 = load i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)*, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)** %set_cb.addr, align 8, !tbaa !5
  %1 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %set_cb1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %1, i32 0, i32 15
  store i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)* %0, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)** %set_cb1, align 8, !tbaa !28
  %2 = load i8*, i8** %set_cb_data.addr, align 8, !tbaa !5
  %3 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %set_cb_data2 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %3, i32 0, i32 16
  store i8* %2, i8** %set_cb_data2, align 8, !tbaa !29
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ijs_server_install_get_cb(%struct._IjsServerCtx* %ctx, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)* %get_cb, i8* %get_cb_data) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %get_cb.addr = alloca i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)*, align 8
  %get_cb_data.addr = alloca i8*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)* %get_cb, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)** %get_cb.addr, align 8, !tbaa !5
  store i8* %get_cb_data, i8** %get_cb_data.addr, align 8, !tbaa !5
  %0 = load i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)*, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)** %get_cb.addr, align 8, !tbaa !5
  %1 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %get_cb1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %1, i32 0, i32 17
  store i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)* %0, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)** %get_cb1, align 8, !tbaa !30
  %2 = load i8*, i8** %get_cb_data.addr, align 8, !tbaa !5
  %3 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %get_cb_data2 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %3, i32 0, i32 18
  store i8* %2, i8** %get_cb_data2, align 8, !tbaa !31
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_ack(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %1, i32 0, i32 2
  %call = call i32 @ijs_send_begin(%struct.IjsSendChan* %send_chan, i32 0) #6
  store i32 %call, i32* %status, align 4, !tbaa !1
  %2 = load i32, i32* %status, align 4, !tbaa !1
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %4, i32 0, i32 2
  %call2 = call i32 @ijs_send_buf(%struct.IjsSendChan* %send_chan1) #6
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_ack(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  ret i32 -3
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_nak(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  ret i32 -3
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_ping(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %status = alloca i32, align 4
  %version = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %version to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %2, i32 0, i32 3
  %call = call i32 @ijs_recv_int(%struct.IjsRecvChan* %recv_chan, i32* %version) #6
  store i32 %call, i32* %status, align 4, !tbaa !1
  %3 = load i32, i32* %status, align 4, !tbaa !1
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %version, align 4, !tbaa !1
  %cmp1 = icmp sgt i32 %5, 35
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 35, i32* %version, align 4, !tbaa !1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load i32, i32* %version, align 4, !tbaa !1
  %7 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %version4 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %7, i32 0, i32 4
  store i32 %6, i32* %version4, align 4, !tbaa !32
  %8 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %8, i32 0, i32 2
  %call5 = call i32 @ijs_send_begin(%struct.IjsSendChan* %send_chan, i32 3) #6
  store i32 %call5, i32* %status, align 4, !tbaa !1
  %9 = load i32, i32* %status, align 4, !tbaa !1
  %cmp6 = icmp slt i32 %9, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  %10 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.3
  %11 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan9 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %11, i32 0, i32 2
  %call10 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan9, i32 35) #6
  store i32 %call10, i32* %status, align 4, !tbaa !1
  %12 = load i32, i32* %status, align 4, !tbaa !1
  %cmp11 = icmp slt i32 %12, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  %13 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.8
  %14 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan14 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %14, i32 0, i32 2
  %call15 = call i32 @ijs_send_buf(%struct.IjsSendChan* %send_chan14) #6
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then.7, %if.then
  %15 = bitcast i32* %version to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_pong(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  ret i32 -3
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_open(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call = call i32 @ijs_server_ack(%struct._IjsServerCtx* %0) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_close(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call = call i32 @ijs_server_ack(%struct._IjsServerCtx* %0) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_begin_job(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %code = alloca i32, align 4
  %job_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %2, i32 0, i32 3
  %call = call i32 @ijs_recv_int(%struct.IjsRecvChan* %recv_chan, i32* %job_id) #6
  store i32 %call, i32* %code, align 4, !tbaa !1
  %3 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_job = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %5, i32 0, i32 19
  %6 = load i32, i32* %in_job, align 4, !tbaa !12
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %7 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call2 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %7, i32 -11) #6
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %8 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_job4 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %8, i32 0, i32 19
  store i32 1, i32* %in_job4, align 4, !tbaa !12
  %9 = load i32, i32* %job_id, align 4, !tbaa !1
  %10 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %job_id5 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %10, i32 0, i32 20
  store i32 %9, i32* %job_id5, align 4, !tbaa !13
  %11 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call6 = call i32 @ijs_server_ack(%struct._IjsServerCtx* %11) #6
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.1, %if.then
  %12 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_end_job(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %code = alloca i32, align 4
  %job_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %2, i32 0, i32 3
  %call = call i32 @ijs_recv_int(%struct.IjsRecvChan* %recv_chan, i32* %job_id) #6
  store i32 %call, i32* %code, align 4, !tbaa !1
  %3 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_job = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %5, i32 0, i32 19
  %6 = load i32, i32* %in_job, align 4, !tbaa !12
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %job_id, align 4, !tbaa !1
  %8 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %job_id1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %8, i32 0, i32 20
  %9 = load i32, i32* %job_id1, align 4, !tbaa !13
  %cmp2 = icmp ne i32 %7, %9
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call4 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %10, i32 -10) #6
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %lor.lhs.false
  %11 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_job6 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %11, i32 0, i32 19
  store i32 0, i32* %in_job6, align 4, !tbaa !12
  %12 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call7 = call i32 @ijs_server_ack(%struct._IjsServerCtx* %12) #6
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.3, %if.then
  %13 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_cancel_job(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %code = alloca i32, align 4
  %job_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %2, i32 0, i32 3
  %call = call i32 @ijs_recv_int(%struct.IjsRecvChan* %recv_chan, i32* %job_id) #6
  store i32 %call, i32* %code, align 4, !tbaa !1
  %3 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_job = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %5, i32 0, i32 19
  %6 = load i32, i32* %in_job, align 4, !tbaa !12
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %job_id, align 4, !tbaa !1
  %8 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %job_id1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %8, i32 0, i32 20
  %9 = load i32, i32* %job_id1, align 4, !tbaa !13
  %cmp2 = icmp ne i32 %7, %9
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call4 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %10, i32 -10) #6
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %lor.lhs.false
  %11 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_job6 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %11, i32 0, i32 19
  store i32 0, i32* %in_job6, align 4, !tbaa !12
  %12 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call7 = call i32 @ijs_server_ack(%struct._IjsServerCtx* %12) #6
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.3, %if.then
  %13 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_query_status(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %code = alloca i32, align 4
  %job_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %status = alloca i32, align 4
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %2, i32 0, i32 3
  %call = call i32 @ijs_recv_int(%struct.IjsRecvChan* %recv_chan, i32* %job_id) #6
  store i32 %call, i32* %code, align 4, !tbaa !1
  %3 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

if.end:                                           ; preds = %entry
  %5 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_job = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %5, i32 0, i32 19
  %6 = load i32, i32* %in_job, align 4, !tbaa !12
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %job_id1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %7, i32 0, i32 20
  %8 = load i32, i32* %job_id1, align 4, !tbaa !13
  %9 = load i32, i32* %job_id, align 4, !tbaa !1
  %cmp2 = icmp ne i32 %8, %9
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call4 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %10, i32 -10) #6
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

if.end.5:                                         ; preds = %lor.lhs.false
  %11 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %status_cb = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %11, i32 0, i32 9
  %12 = load i32 (i8*, %struct._IjsServerCtx*, i32)*, i32 (i8*, %struct._IjsServerCtx*, i32)** %status_cb, align 8, !tbaa !22
  %13 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %list_cb_data = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %13, i32 0, i32 12
  %14 = load i8*, i8** %list_cb_data, align 8, !tbaa !25
  %15 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %16 = load i32, i32* %job_id, align 4, !tbaa !1
  %call6 = call i32 %12(i8* %14, %struct._IjsServerCtx* %15, i32 %16) #6
  store i32 %call6, i32* %code, align 4, !tbaa !1
  %17 = load i32, i32* %code, align 4, !tbaa !1
  %cmp7 = icmp slt i32 %17, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %18 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !1
  %call9 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %18, i32 %19) #6
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

if.else:                                          ; preds = %if.end.5
  %20 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %21, i32 0, i32 2
  %call10 = call i32 @ijs_send_begin(%struct.IjsSendChan* %send_chan, i32 0) #6
  store i32 %call10, i32* %status, align 4, !tbaa !1
  %22 = load i32, i32* %status, align 4, !tbaa !1
  %cmp11 = icmp slt i32 %22, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else
  %23 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.else
  %24 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan14 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %24, i32 0, i32 2
  %25 = load i32, i32* %code, align 4, !tbaa !1
  %call15 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan14, i32 %25) #6
  store i32 %call15, i32* %status, align 4, !tbaa !1
  %26 = load i32, i32* %status, align 4, !tbaa !1
  %cmp16 = icmp slt i32 %26, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  %27 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.13
  %28 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan19 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %28, i32 0, i32 2
  %call20 = call i32 @ijs_send_buf(%struct.IjsSendChan* %send_chan19) #6
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.12
  %29 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  br label %cleanup.21

cleanup.21:                                       ; preds = %cleanup, %if.then.8, %if.then.3, %if.then
  %30 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_list_params(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %code = alloca i32, align 4
  %buf = alloca [4096 x i8], align 16
  %job_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %status = alloca i32, align 4
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [4096 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %1) #1
  %2 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %3, i32 0, i32 3
  %call = call i32 @ijs_recv_int(%struct.IjsRecvChan* %recv_chan, i32* %job_id) #6
  store i32 %call, i32* %code, align 4, !tbaa !1
  %4 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22

if.end:                                           ; preds = %entry
  %6 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_job = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %6, i32 0, i32 19
  %7 = load i32, i32* %in_job, align 4, !tbaa !12
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %job_id1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %8, i32 0, i32 20
  %9 = load i32, i32* %job_id1, align 4, !tbaa !13
  %10 = load i32, i32* %job_id, align 4, !tbaa !1
  %cmp2 = icmp ne i32 %9, %10
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %11 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call4 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %11, i32 -10) #6
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22

if.end.5:                                         ; preds = %lor.lhs.false
  %12 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %list_cb = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %12, i32 0, i32 11
  %13 = load i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i32)*, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i32)** %list_cb, align 8, !tbaa !24
  %14 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %list_cb_data = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %14, i32 0, i32 12
  %15 = load i8*, i8** %list_cb_data, align 8, !tbaa !25
  %16 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %17 = load i32, i32* %job_id, align 4, !tbaa !1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call6 = call i32 %13(i8* %15, %struct._IjsServerCtx* %16, i32 %17, i8* %arraydecay, i32 4096) #6
  store i32 %call6, i32* %code, align 4, !tbaa !1
  %18 = load i32, i32* %code, align 4, !tbaa !1
  %cmp7 = icmp slt i32 %18, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %19 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !1
  %call9 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %19, i32 %20) #6
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22

if.else:                                          ; preds = %if.end.5
  %21 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %22, i32 0, i32 2
  %call10 = call i32 @ijs_send_begin(%struct.IjsSendChan* %send_chan, i32 0) #6
  store i32 %call10, i32* %status, align 4, !tbaa !1
  %23 = load i32, i32* %status, align 4, !tbaa !1
  %cmp11 = icmp slt i32 %23, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else
  %24 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.else
  %25 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan14 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %25, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %26 = load i32, i32* %code, align 4, !tbaa !1
  %call16 = call i32 @ijs_send_block(%struct.IjsSendChan* %send_chan14, i8* %arraydecay15, i32 %26) #6
  store i32 %call16, i32* %status, align 4, !tbaa !1
  %27 = load i32, i32* %status, align 4, !tbaa !1
  %cmp17 = icmp slt i32 %27, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.13
  %28 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.13
  %29 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan20 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %29, i32 0, i32 2
  %call21 = call i32 @ijs_send_buf(%struct.IjsSendChan* %send_chan20) #6
  store i32 %call21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then.12
  %30 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  br label %cleanup.22

cleanup.22:                                       ; preds = %cleanup, %if.then.8, %if.then.3, %if.then
  %31 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast [4096 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %32) #1
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_enum_param(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %key = alloca i8*, align 8
  %key_size = alloca i32, align 4
  %code = alloca i32, align 4
  %buf = alloca [4096 x i8], align 16
  %job_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %status = alloca i32, align 4
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast [4096 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %3) #1
  %4 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %5, i32 0, i32 3
  %call = call i32 @ijs_recv_int(%struct.IjsRecvChan* %recv_chan, i32* %job_id) #6
  store i32 %call, i32* %code, align 4, !tbaa !1
  %6 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end:                                           ; preds = %entry
  %8 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_job = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %8, i32 0, i32 19
  %9 = load i32, i32* %in_job, align 4, !tbaa !12
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %job_id1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %10, i32 0, i32 20
  %11 = load i32, i32* %job_id1, align 4, !tbaa !13
  %12 = load i32, i32* %job_id, align 4, !tbaa !1
  %cmp2 = icmp ne i32 %11, %12
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %13 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call4 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %13, i32 -10) #6
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end.5:                                         ; preds = %lor.lhs.false
  %14 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan6 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %14, i32 0, i32 3
  %buf7 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan6, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf7, i32 0, i32 0
  %15 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan8 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %15, i32 0, i32 3
  %buf_idx = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan8, i32 0, i32 3
  %16 = load i32, i32* %buf_idx, align 4, !tbaa !33
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  store i8* %add.ptr, i8** %key, align 8, !tbaa !5
  %17 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan9 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %17, i32 0, i32 3
  %buf_size = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan9, i32 0, i32 2
  %18 = load i32, i32* %buf_size, align 4, !tbaa !34
  %19 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan10 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %19, i32 0, i32 3
  %buf_idx11 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan10, i32 0, i32 3
  %20 = load i32, i32* %buf_idx11, align 4, !tbaa !33
  %sub = sub nsw i32 %18, %20
  store i32 %sub, i32* %key_size, align 4, !tbaa !1
  %21 = load i32, i32* %key_size, align 4, !tbaa !1
  %cmp12 = icmp eq i32 %21, 0
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.end.5
  %22 = load i32, i32* %key_size, align 4, !tbaa !1
  %sub14 = sub nsw i32 %22, 1
  %idxprom = sext i32 %sub14 to i64
  %23 = load i8*, i8** %key, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %idxprom
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !35
  %conv = sext i8 %24 to i32
  %tobool15 = icmp ne i32 %conv, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.13, %if.end.5
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end.17:                                        ; preds = %lor.lhs.false.13
  %25 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %enum_cb = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %25, i32 0, i32 13
  %26 = load i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)*, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)** %enum_cb, align 8, !tbaa !26
  %27 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %enum_cb_data = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %27, i32 0, i32 14
  %28 = load i8*, i8** %enum_cb_data, align 8, !tbaa !27
  %29 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %30 = load i32, i32* %job_id, align 4, !tbaa !1
  %31 = load i8*, i8** %key, align 8, !tbaa !5
  %arraydecay18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call19 = call i32 %26(i8* %28, %struct._IjsServerCtx* %29, i32 %30, i8* %31, i8* %arraydecay18, i32 4096) #6
  store i32 %call19, i32* %code, align 4, !tbaa !1
  %32 = load i32, i32* %code, align 4, !tbaa !1
  %cmp20 = icmp slt i32 %32, 0
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.17
  %33 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !1
  %call23 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %33, i32 %34) #6
  store i32 %call23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.else:                                          ; preds = %if.end.17
  %35 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %36, i32 0, i32 2
  %call24 = call i32 @ijs_send_begin(%struct.IjsSendChan* %send_chan, i32 0) #6
  store i32 %call24, i32* %status, align 4, !tbaa !1
  %37 = load i32, i32* %status, align 4, !tbaa !1
  %cmp25 = icmp slt i32 %37, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else
  %38 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.else
  %39 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan29 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %39, i32 0, i32 2
  %arraydecay30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %40 = load i32, i32* %code, align 4, !tbaa !1
  %call31 = call i32 @ijs_send_block(%struct.IjsSendChan* %send_chan29, i8* %arraydecay30, i32 %40) #6
  store i32 %call31, i32* %status, align 4, !tbaa !1
  %41 = load i32, i32* %status, align 4, !tbaa !1
  %cmp32 = icmp slt i32 %41, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.28
  %42 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.28
  %43 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan36 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %43, i32 0, i32 2
  %call37 = call i32 @ijs_send_buf(%struct.IjsSendChan* %send_chan36) #6
  store i32 %call37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.34, %if.then.27
  %44 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  br label %cleanup.38

cleanup.38:                                       ; preds = %cleanup, %if.then.22, %if.then.16, %if.then.3, %if.then
  %45 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast [4096 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %46) #1
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i8** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_set_param(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %key = alloca i8*, align 8
  %value = alloca i8*, align 8
  %key_size = alloca i32, align 4
  %value_size = alloca i32, align 4
  %job_id = alloca i32, align 4
  %param_size = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %value_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %param_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %7, i32 0, i32 3
  %call = call i32 @ijs_recv_int(%struct.IjsRecvChan* %recv_chan, i32* %job_id) #6
  store i32 %call, i32* %code, align 4, !tbaa !1
  %8 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_job = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %10, i32 0, i32 19
  %11 = load i32, i32* %in_job, align 4, !tbaa !12
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %job_id1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %12, i32 0, i32 20
  %13 = load i32, i32* %job_id1, align 4, !tbaa !13
  %14 = load i32, i32* %job_id, align 4, !tbaa !1
  %cmp2 = icmp ne i32 %13, %14
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %15 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call4 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %15, i32 -10) #6
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %lor.lhs.false
  %16 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan6 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %16, i32 0, i32 3
  %call7 = call i32 @ijs_recv_int(%struct.IjsRecvChan* %recv_chan6, i32* %param_size) #6
  store i32 %call7, i32* %code, align 4, !tbaa !1
  %17 = load i32, i32* %code, align 4, !tbaa !1
  %cmp8 = icmp slt i32 %17, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  %18 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.5
  %19 = load i32, i32* %param_size, align 4, !tbaa !1
  %20 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan11 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %20, i32 0, i32 3
  %buf_size = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan11, i32 0, i32 2
  %21 = load i32, i32* %buf_size, align 4, !tbaa !34
  %22 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan12 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %22, i32 0, i32 3
  %buf_idx = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan12, i32 0, i32 3
  %23 = load i32, i32* %buf_idx, align 4, !tbaa !33
  %sub = sub nsw i32 %21, %23
  %cmp13 = icmp ne i32 %19, %sub
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store i32 -3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.10
  %24 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan16 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %24, i32 0, i32 3
  %buf = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan16, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %25 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan17 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %25, i32 0, i32 3
  %buf_idx18 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan17, i32 0, i32 3
  %26 = load i32, i32* %buf_idx18, align 4, !tbaa !33
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  store i8* %add.ptr, i8** %key, align 8, !tbaa !5
  %27 = load i8*, i8** %key, align 8, !tbaa !5
  %28 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan19 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %28, i32 0, i32 3
  %buf_size20 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan19, i32 0, i32 2
  %29 = load i32, i32* %buf_size20, align 4, !tbaa !34
  %call21 = call i32 @ijs_strnlen(i8* %27, i32 %29) #6
  store i32 %call21, i32* %key_size, align 4, !tbaa !1
  %30 = load i32, i32* %key_size, align 4, !tbaa !1
  %31 = load i32, i32* %param_size, align 4, !tbaa !1
  %cmp22 = icmp eq i32 %30, %31
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.15
  store i32 -3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.15
  %32 = load i8*, i8** %key, align 8, !tbaa !5
  %33 = load i32, i32* %key_size, align 4, !tbaa !1
  %idx.ext25 = sext i32 %33 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %32, i64 %idx.ext25
  %add.ptr27 = getelementptr inbounds i8, i8* %add.ptr26, i64 1
  store i8* %add.ptr27, i8** %value, align 8, !tbaa !5
  %34 = load i32, i32* %param_size, align 4, !tbaa !1
  %35 = load i32, i32* %key_size, align 4, !tbaa !1
  %add = add nsw i32 %35, 1
  %sub28 = sub nsw i32 %34, %add
  store i32 %sub28, i32* %value_size, align 4, !tbaa !1
  %36 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %37 = load i32, i32* %job_id, align 4, !tbaa !1
  %38 = load i8*, i8** %key, align 8, !tbaa !5
  %39 = load i8*, i8** %value, align 8, !tbaa !5
  %40 = load i32, i32* %value_size, align 4, !tbaa !1
  %call29 = call i32 @ijs_server_set_param(%struct._IjsServerCtx* %36, i32 %37, i8* %38, i8* %39, i32 %40) #6
  store i32 %call29, i32* %code, align 4, !tbaa !1
  %41 = load i32, i32* %code, align 4, !tbaa !1
  %tobool30 = icmp ne i32 %41, 0
  br i1 %tobool30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.24
  %42 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %43 = load i32, i32* %code, align 4, !tbaa !1
  %call32 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %42, i32 %43) #6
  store i32 %call32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.24
  %44 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call33 = call i32 @ijs_server_ack(%struct._IjsServerCtx* %44) #6
  store i32 %call33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.31, %if.then.23, %if.then.14, %if.then.9, %if.then.3, %if.then
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %param_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %value_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i8** %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i8** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_get_param(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %key = alloca i8*, align 8
  %key_size = alloca i32, align 4
  %code = alloca i32, align 4
  %buf = alloca [4096 x i8], align 16
  %job_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %status = alloca i32, align 4
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast [4096 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %3) #1
  %4 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %5, i32 0, i32 3
  %call = call i32 @ijs_recv_int(%struct.IjsRecvChan* %recv_chan, i32* %job_id) #6
  store i32 %call, i32* %code, align 4, !tbaa !1
  %6 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end:                                           ; preds = %entry
  %8 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_job = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %8, i32 0, i32 19
  %9 = load i32, i32* %in_job, align 4, !tbaa !12
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %job_id1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %10, i32 0, i32 20
  %11 = load i32, i32* %job_id1, align 4, !tbaa !13
  %12 = load i32, i32* %job_id, align 4, !tbaa !1
  %cmp2 = icmp ne i32 %11, %12
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %13 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call4 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %13, i32 -10) #6
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end.5:                                         ; preds = %lor.lhs.false
  %14 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan6 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %14, i32 0, i32 3
  %buf7 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan6, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf7, i32 0, i32 0
  %15 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan8 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %15, i32 0, i32 3
  %buf_idx = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan8, i32 0, i32 3
  %16 = load i32, i32* %buf_idx, align 4, !tbaa !33
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  store i8* %add.ptr, i8** %key, align 8, !tbaa !5
  %17 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan9 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %17, i32 0, i32 3
  %buf_size = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan9, i32 0, i32 2
  %18 = load i32, i32* %buf_size, align 4, !tbaa !34
  %19 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan10 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %19, i32 0, i32 3
  %buf_idx11 = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan10, i32 0, i32 3
  %20 = load i32, i32* %buf_idx11, align 4, !tbaa !33
  %sub = sub nsw i32 %18, %20
  store i32 %sub, i32* %key_size, align 4, !tbaa !1
  %21 = load i32, i32* %key_size, align 4, !tbaa !1
  %cmp12 = icmp eq i32 %21, 0
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.end.5
  %22 = load i32, i32* %key_size, align 4, !tbaa !1
  %sub14 = sub nsw i32 %22, 1
  %idxprom = sext i32 %sub14 to i64
  %23 = load i8*, i8** %key, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %idxprom
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !35
  %conv = sext i8 %24 to i32
  %tobool15 = icmp ne i32 %conv, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.13, %if.end.5
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end.17:                                        ; preds = %lor.lhs.false.13
  %25 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %26 = load i32, i32* %job_id, align 4, !tbaa !1
  %27 = load i8*, i8** %key, align 8, !tbaa !5
  %arraydecay18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call19 = call i32 @ijs_server_get_param(%struct._IjsServerCtx* %25, i32 %26, i8* %27, i8* %arraydecay18, i32 4096) #6
  store i32 %call19, i32* %code, align 4, !tbaa !1
  %28 = load i32, i32* %code, align 4, !tbaa !1
  %cmp20 = icmp slt i32 %28, 0
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.17
  %29 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %30 = load i32, i32* %code, align 4, !tbaa !1
  %call23 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %29, i32 %30) #6
  store i32 %call23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.else:                                          ; preds = %if.end.17
  %31 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %32, i32 0, i32 2
  %call24 = call i32 @ijs_send_begin(%struct.IjsSendChan* %send_chan, i32 0) #6
  store i32 %call24, i32* %status, align 4, !tbaa !1
  %33 = load i32, i32* %status, align 4, !tbaa !1
  %cmp25 = icmp slt i32 %33, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else
  %34 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.else
  %35 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan29 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %35, i32 0, i32 2
  %arraydecay30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %36 = load i32, i32* %code, align 4, !tbaa !1
  %call31 = call i32 @ijs_send_block(%struct.IjsSendChan* %send_chan29, i8* %arraydecay30, i32 %36) #6
  store i32 %call31, i32* %status, align 4, !tbaa !1
  %37 = load i32, i32* %status, align 4, !tbaa !1
  %cmp32 = icmp slt i32 %37, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.28
  %38 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.28
  %39 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan36 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %39, i32 0, i32 2
  %call37 = call i32 @ijs_send_buf(%struct.IjsSendChan* %send_chan36) #6
  store i32 %call37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.34, %if.then.27
  %40 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  br label %cleanup.38

cleanup.38:                                       ; preds = %cleanup, %if.then.22, %if.then.16, %if.then.3, %if.then
  %41 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast [4096 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %42) #1
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i8** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_begin_page(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %ph = alloca %struct.IjsPageHeader*, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = bitcast %struct.IjsPageHeader** %ph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %ph1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %1, i32 0, i32 21
  %2 = load %struct.IjsPageHeader*, %struct.IjsPageHeader** %ph1, align 8, !tbaa !14
  store %struct.IjsPageHeader* %2, %struct.IjsPageHeader** %ph, align 8, !tbaa !5
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %status, align 4, !tbaa !1
  %4 = load %struct.IjsPageHeader*, %struct.IjsPageHeader** %ph, align 8, !tbaa !5
  %cmp = icmp eq %struct.IjsPageHeader* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -3, i32* %status, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %fields_set = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %5, i32 0, i32 22
  %6 = load i32, i32* %fields_set, align 4, !tbaa !36
  %and = and i32 %6, 63
  %cmp2 = icmp ne i32 %and, 63
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -3, i32* %status, align 4, !tbaa !1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %7 = load i32, i32* %status, align 4, !tbaa !1
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %if.end.4
  %8 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_page = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %8, i32 0, i32 23
  store i32 1, i32* %in_page, align 4, !tbaa !15
  %9 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call = call i32 @ijs_server_ack(%struct._IjsServerCtx* %9) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.4
  %10 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %11 = load i32, i32* %status, align 4, !tbaa !1
  %call6 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %10, i32 %11) #6
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.5
  %12 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast %struct.IjsPageHeader** %ph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_send_data_block(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %size = alloca i32, align 4
  %status = alloca i32, align 4
  %job_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %status, align 4, !tbaa !1
  %2 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %3, i32 0, i32 3
  %call = call i32 @ijs_recv_int(%struct.IjsRecvChan* %recv_chan, i32* %job_id) #6
  store i32 %call, i32* %status, align 4, !tbaa !1
  %4 = load i32, i32* %status, align 4, !tbaa !1
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_job = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %6, i32 0, i32 19
  %7 = load i32, i32* %in_job, align 4, !tbaa !12
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i32, i32* %job_id, align 4, !tbaa !1
  %9 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %job_id1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %9, i32 0, i32 20
  %10 = load i32, i32* %job_id1, align 4, !tbaa !13
  %cmp2 = icmp ne i32 %8, %10
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -10, i32* %status, align 4, !tbaa !1
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %11 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %11, i32 0, i32 24
  %12 = load i8*, i8** %buf, align 8, !tbaa !16
  %cmp4 = icmp eq i8* %12, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.else
  store i32 -3, i32* %status, align 4, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.then.3
  %13 = load i32, i32* %status, align 4, !tbaa !1
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %14 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan10 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %14, i32 0, i32 3
  %call11 = call i32 @ijs_recv_int(%struct.IjsRecvChan* %recv_chan10, i32* %size) #6
  store i32 %call11, i32* %status, align 4, !tbaa !1
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.7
  %15 = load i32, i32* %status, align 4, !tbaa !1
  %tobool13 = icmp ne i32 %15, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %16 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %17 = load i32, i32* %status, align 4, !tbaa !1
  %call15 = call i32 @ijs_server_nak(%struct._IjsServerCtx* %16, i32 %17) #6
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.12
  %18 = load i32, i32* %size, align 4, !tbaa !1
  %19 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf_size = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %19, i32 0, i32 25
  %20 = load i32, i32* %buf_size, align 4, !tbaa !37
  %21 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf_ix = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %21, i32 0, i32 26
  %22 = load i32, i32* %buf_ix, align 4, !tbaa !38
  %sub = sub nsw i32 %20, %22
  %cmp17 = icmp sle i32 %18, %sub
  br i1 %cmp17, label %if.then.18, label %if.else.23

if.then.18:                                       ; preds = %if.end.16
  %23 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %24 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf19 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %24, i32 0, i32 24
  %25 = load i8*, i8** %buf19, align 8, !tbaa !16
  %26 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf_ix20 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %26, i32 0, i32 26
  %27 = load i32, i32* %buf_ix20, align 4, !tbaa !38
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  %28 = load i32, i32* %size, align 4, !tbaa !1
  %call21 = call i32 @ijs_server_read_data(%struct._IjsServerCtx* %23, i8* %add.ptr, i32 %28) #6
  store i32 %call21, i32* %status, align 4, !tbaa !1
  %29 = load i32, i32* %size, align 4, !tbaa !1
  %30 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf_ix22 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %30, i32 0, i32 26
  %31 = load i32, i32* %buf_ix22, align 4, !tbaa !38
  %add = add nsw i32 %31, %29
  store i32 %add, i32* %buf_ix22, align 4, !tbaa !38
  br label %if.end.46

if.else.23:                                       ; preds = %if.end.16
  %32 = load i32, i32* %size, align 4, !tbaa !1
  %33 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf_size24 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %33, i32 0, i32 25
  %34 = load i32, i32* %buf_size24, align 4, !tbaa !37
  %35 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf_ix25 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %35, i32 0, i32 26
  %36 = load i32, i32* %buf_ix25, align 4, !tbaa !38
  %sub26 = sub nsw i32 %34, %36
  %sub27 = sub nsw i32 %32, %sub26
  %37 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf_size = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %37, i32 0, i32 28
  store i32 %sub27, i32* %overflow_buf_size, align 4, !tbaa !39
  %38 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf_size28 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %38, i32 0, i32 28
  %39 = load i32, i32* %overflow_buf_size28, align 4, !tbaa !39
  %conv = sext i32 %39 to i64
  %call29 = call noalias i8* @malloc(i64 %conv) #5
  %40 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %40, i32 0, i32 27
  store i8* %call29, i8** %overflow_buf, align 8, !tbaa !17
  %41 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf_ix = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %41, i32 0, i32 29
  store i32 0, i32* %overflow_buf_ix, align 4, !tbaa !40
  %42 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %43 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf30 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %43, i32 0, i32 24
  %44 = load i8*, i8** %buf30, align 8, !tbaa !16
  %45 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf_ix31 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %45, i32 0, i32 26
  %46 = load i32, i32* %buf_ix31, align 4, !tbaa !38
  %idx.ext32 = sext i32 %46 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %44, i64 %idx.ext32
  %47 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf_size34 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %47, i32 0, i32 25
  %48 = load i32, i32* %buf_size34, align 4, !tbaa !37
  %49 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf_ix35 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %49, i32 0, i32 26
  %50 = load i32, i32* %buf_ix35, align 4, !tbaa !38
  %sub36 = sub nsw i32 %48, %50
  %call37 = call i32 @ijs_server_read_data(%struct._IjsServerCtx* %42, i8* %add.ptr33, i32 %sub36) #6
  store i32 %call37, i32* %status, align 4, !tbaa !1
  %51 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf_size38 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %51, i32 0, i32 25
  %52 = load i32, i32* %buf_size38, align 4, !tbaa !37
  %53 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf_ix39 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %53, i32 0, i32 26
  store i32 %52, i32* %buf_ix39, align 4, !tbaa !38
  %54 = load i32, i32* %status, align 4, !tbaa !1
  %tobool40 = icmp ne i32 %54, 0
  br i1 %tobool40, label %if.end.45, label %if.then.41

if.then.41:                                       ; preds = %if.else.23
  %55 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %56 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf42 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %56, i32 0, i32 27
  %57 = load i8*, i8** %overflow_buf42, align 8, !tbaa !17
  %58 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf_size43 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %58, i32 0, i32 28
  %59 = load i32, i32* %overflow_buf_size43, align 4, !tbaa !39
  %call44 = call i32 @ijs_server_read_data(%struct._IjsServerCtx* %55, i8* %57, i32 %59) #6
  store i32 %call44, i32* %status, align 4, !tbaa !1
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.else.23
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.18
  %60 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call47 = call i32 @ijs_server_ack(%struct._IjsServerCtx* %60) #6
  store i32 %call47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.46, %if.then.14, %if.then
  %61 = bitcast i32* %job_id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_end_page(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call = call i32 @ijs_server_ack(%struct._IjsServerCtx* %0) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_proc_exit(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @ijs_server_iter(%struct._IjsServerCtx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %cmd_num = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %0 = bitcast i32* %cmd_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %2, i32 0, i32 3
  %call = call i32 @ijs_recv_buf(%struct.IjsRecvChan* %recv_chan) #6
  store i32 %call, i32* %status, align 4, !tbaa !1
  %3 = load i32, i32* %status, align 4, !tbaa !1
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %5, i32 0, i32 3
  %buf = getelementptr inbounds %struct.IjsRecvChan, %struct.IjsRecvChan* %recv_chan1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call2 = call i32 @ijs_get_int(i8* %arraydecay) #6
  store i32 %call2, i32* %cmd_num, align 4, !tbaa !1
  %6 = load i32, i32* %cmd_num, align 4, !tbaa !1
  %cmp3 = icmp slt i32 %6, 0
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %cmd_num, align 4, !tbaa !1
  %conv = sext i32 %7 to i64
  %cmp4 = icmp uge i64 %conv, 18
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %cmd_num, align 4, !tbaa !1
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [18 x i32 (%struct._IjsServerCtx*)*], [18 x i32 (%struct._IjsServerCtx*)*]* @ijs_server_procs, i32 0, i64 %idxprom
  %9 = load i32 (%struct._IjsServerCtx*)*, i32 (%struct._IjsServerCtx*)** %arrayidx, align 8, !tbaa !5
  %10 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call8 = call i32 %9(%struct._IjsServerCtx* %10) #6
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %11 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast i32* %cmd_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @ijs_recv_buf(%struct.IjsRecvChan*) #3

declare i32 @ijs_get_int(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @ijs_server_get_page_header(%struct._IjsServerCtx* %ctx, %struct.IjsPageHeader* %ph) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %ph.addr = alloca %struct.IjsPageHeader*, align 8
  %status = alloca i32, align 4
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store %struct.IjsPageHeader* %ph, %struct.IjsPageHeader** %ph.addr, align 8, !tbaa !5
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.IjsPageHeader*, %struct.IjsPageHeader** %ph.addr, align 8, !tbaa !5
  %2 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %ph1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %2, i32 0, i32 21
  store %struct.IjsPageHeader* %1, %struct.IjsPageHeader** %ph1, align 8, !tbaa !14
  %3 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_page = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %3, i32 0, i32 23
  store i32 0, i32* %in_page, align 4, !tbaa !15
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %4 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call = call i32 @ijs_server_iter(%struct._IjsServerCtx* %4) #6
  store i32 %call, i32* %status, align 4, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i32, i32* %status, align 4, !tbaa !1
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %6 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %in_page2 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %6, i32 0, i32 23
  %7 = load i32, i32* %in_page2, align 4, !tbaa !15
  %tobool = icmp ne i32 %7, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %8 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %8, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %9 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %ph3 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %9, i32 0, i32 21
  store %struct.IjsPageHeader* null, %struct.IjsPageHeader** %ph3, align 8, !tbaa !14
  %10 = load i32, i32* %status, align 4, !tbaa !1
  %11 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @ijs_server_get_data(%struct._IjsServerCtx* %ctx, i8* %buf, i32 %size) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %buf_ix = alloca i32, align 4
  %status = alloca i32, align 4
  %n_bytes = alloca i32, align 4
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !1
  %0 = bitcast i32* %buf_ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %buf_ix, align 4, !tbaa !1
  %1 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %status, align 4, !tbaa !1
  %2 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %2, i32 0, i32 27
  %3 = load i8*, i8** %overflow_buf, align 8, !tbaa !17
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %4 = bitcast i32* %n_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf_size = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %5, i32 0, i32 28
  %6 = load i32, i32* %overflow_buf_size, align 4, !tbaa !39
  %7 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf_ix = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %7, i32 0, i32 29
  %8 = load i32, i32* %overflow_buf_ix, align 4, !tbaa !40
  %sub = sub nsw i32 %6, %8
  store i32 %sub, i32* %n_bytes, align 4, !tbaa !1
  %9 = load i32, i32* %n_bytes, align 4, !tbaa !1
  %10 = load i32, i32* %size.addr, align 4, !tbaa !1
  %cmp1 = icmp sgt i32 %9, %10
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %11 = load i32, i32* %size.addr, align 4, !tbaa !1
  store i32 %11, i32* %n_bytes, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %12 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %13 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf3 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %13, i32 0, i32 27
  %14 = load i8*, i8** %overflow_buf3, align 8, !tbaa !17
  %15 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf_ix4 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %15, i32 0, i32 29
  %16 = load i32, i32* %overflow_buf_ix4, align 4, !tbaa !40
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %17 = load i32, i32* %n_bytes, align 4, !tbaa !1
  %conv = sext i32 %17 to i64
  %call = call i8* @memcpy(i8* %12, i8* %add.ptr, i64 %conv) #5
  %18 = load i32, i32* %n_bytes, align 4, !tbaa !1
  %19 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf_ix5 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %19, i32 0, i32 29
  %20 = load i32, i32* %overflow_buf_ix5, align 4, !tbaa !40
  %add = add nsw i32 %20, %18
  store i32 %add, i32* %overflow_buf_ix5, align 4, !tbaa !40
  %21 = load i32, i32* %n_bytes, align 4, !tbaa !1
  store i32 %21, i32* %buf_ix, align 4, !tbaa !1
  %22 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf_ix6 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %22, i32 0, i32 29
  %23 = load i32, i32* %overflow_buf_ix6, align 4, !tbaa !40
  %24 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf_size7 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %24, i32 0, i32 28
  %25 = load i32, i32* %overflow_buf_size7, align 4, !tbaa !39
  %cmp8 = icmp eq i32 %23, %25
  br i1 %cmp8, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end
  %26 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf11 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %26, i32 0, i32 27
  %27 = load i8*, i8** %overflow_buf11, align 8, !tbaa !17
  call void @free(i8* %27) #5
  %28 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf12 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %28, i32 0, i32 27
  store i8* null, i8** %overflow_buf12, align 8, !tbaa !17
  %29 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf_size13 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %29, i32 0, i32 28
  store i32 0, i32* %overflow_buf_size13, align 4, !tbaa !39
  %30 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %overflow_buf_ix14 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %30, i32 0, i32 29
  store i32 0, i32* %overflow_buf_ix14, align 4, !tbaa !40
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.end
  %31 = bitcast i32* %n_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %32 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %33 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf17 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %33, i32 0, i32 24
  store i8* %32, i8** %buf17, align 8, !tbaa !16
  %34 = load i32, i32* %size.addr, align 4, !tbaa !1
  %35 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf_size = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %35, i32 0, i32 25
  store i32 %34, i32* %buf_size, align 4, !tbaa !37
  %36 = load i32, i32* %buf_ix, align 4, !tbaa !1
  %37 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf_ix18 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %37, i32 0, i32 26
  store i32 %36, i32* %buf_ix18, align 4, !tbaa !38
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.16
  %38 = load i32, i32* %status, align 4, !tbaa !1
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %39 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf_ix19 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %39, i32 0, i32 26
  %40 = load i32, i32* %buf_ix19, align 4, !tbaa !38
  %41 = load i32, i32* %size.addr, align 4, !tbaa !1
  %cmp20 = icmp slt i32 %40, %41
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %42 = phi i1 [ false, %while.cond ], [ %cmp20, %land.rhs ]
  br i1 %42, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %43 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %call22 = call i32 @ijs_server_iter(%struct._IjsServerCtx* %43) #6
  store i32 %call22, i32* %status, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %44 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %buf23 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %44, i32 0, i32 24
  store i8* null, i8** %buf23, align 8, !tbaa !16
  %45 = load i32, i32* %status, align 4, !tbaa !1
  %46 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %buf_ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  ret i32 %45
}

declare i32 @ijs_send_begin(%struct.IjsSendChan*, i32) #3

declare i32 @ijs_send_buf(%struct.IjsSendChan*) #3

declare i32 @ijs_recv_int(%struct.IjsRecvChan*, i32*) #3

declare i32 @ijs_send_int(%struct.IjsSendChan*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_nak(%struct._IjsServerCtx* %ctx, i32 %errorcode) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %errorcode.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store i32 %errorcode, i32* %errorcode.addr, align 4, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %1, i32 0, i32 2
  %call = call i32 @ijs_send_begin(%struct.IjsSendChan* %send_chan, i32 1) #6
  store i32 %call, i32* %status, align 4, !tbaa !1
  %2 = load i32, i32* %status, align 4, !tbaa !1
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan1 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %4, i32 0, i32 2
  %5 = load i32, i32* %errorcode.addr, align 4, !tbaa !1
  %call2 = call i32 @ijs_send_int(%struct.IjsSendChan* %send_chan1, i32 %5) #6
  store i32 %call2, i32* %status, align 4, !tbaa !1
  %6 = load i32, i32* %status, align 4, !tbaa !1
  %cmp3 = icmp slt i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %8 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %send_chan6 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %8, i32 0, i32 2
  %call7 = call i32 @ijs_send_buf(%struct.IjsSendChan* %send_chan6) #6
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %9 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @ijs_send_block(%struct.IjsSendChan*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @ijs_strnlen(i8* %s, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !35
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !1
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %size.addr, align 4, !tbaa !1
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_set_param(%struct._IjsServerCtx* %ctx, i32 %job_id, i8* %key, i8* %value, i32 %value_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %job_id.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %value_size.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len44 = alloca i64, align 8
  %__s2_len46 = alloca i64, align 8
  %tmp47 = alloca i32, align 4
  %__s154 = alloca i8*, align 8
  %__result56 = alloca i32, align 4
  %tmp94 = alloca i32, align 4
  %__s1_len111 = alloca i64, align 8
  %__s2_len113 = alloca i64, align 8
  %tmp114 = alloca i32, align 4
  %__s1121 = alloca i8*, align 8
  %__result123 = alloca i32, align 4
  %tmp161 = alloca i32, align 4
  %size = alloca i32, align 4
  %__s1_len183 = alloca i64, align 8
  %__s2_len185 = alloca i64, align 8
  %tmp186 = alloca i32, align 4
  %__s1193 = alloca i8*, align 8
  %__result195 = alloca i32, align 4
  %tmp233 = alloca i32, align 4
  %__s1_len250 = alloca i64, align 8
  %__s2_len252 = alloca i64, align 8
  %tmp253 = alloca i32, align 4
  %__s1260 = alloca i8*, align 8
  %__result262 = alloca i32, align 4
  %tmp300 = alloca i32, align 4
  %__s1_len317 = alloca i64, align 8
  %__s2_len319 = alloca i64, align 8
  %tmp320 = alloca i32, align 4
  %__s1327 = alloca i8*, align 8
  %__result329 = alloca i32, align 4
  %tmp367 = alloca i32, align 4
  %x_ix = alloca i32, align 4
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store i32 %job_id, i32* %job_id.addr, align 4, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !5
  store i8* %value, i8** %value.addr, align 8, !tbaa !5
  store i32 %value_size, i32* %value_size.addr, align 4, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.1 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %call = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #7
  store i64 %call, i64* %__s2_len, align 8, !tbaa !41
  %3 = load i64, i64* %__s2_len, align 8, !tbaa !41
  %cmp = icmp ult i64 %3, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %key.addr, align 8, !tbaa !5
  store i8* %5, i8** %__s1, align 8, !tbaa !5
  %6 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !35
  %conv = zext i8 %8 to i32
  %9 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), align 1, !tbaa !35
  %conv3 = zext i8 %9 to i32
  %sub = sub nsw i32 %conv, %conv3
  store i32 %sub, i32* %__result, align 4, !tbaa !1
  %10 = load i64, i64* %__s2_len, align 8, !tbaa !41
  %cmp4 = icmp ugt i64 %10, 0
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.34

land.lhs.true.6:                                  ; preds = %cond.true
  %11 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.then, label %if.end.34

if.then:                                          ; preds = %land.lhs.true.6
  %12 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx9, align 1, !tbaa !35
  %conv10 = zext i8 %13 to i32
  %14 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i64 1), align 1, !tbaa !35
  %conv11 = zext i8 %14 to i32
  %sub12 = sub nsw i32 %conv10, %conv11
  store i32 %sub12, i32* %__result, align 4, !tbaa !1
  %15 = load i64, i64* %__s2_len, align 8, !tbaa !41
  %cmp13 = icmp ugt i64 %15, 1
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.33

land.lhs.true.15:                                 ; preds = %if.then
  %16 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp16 = icmp eq i32 %16, 0
  br i1 %cmp16, label %if.then.18, label %if.end.33

if.then.18:                                       ; preds = %land.lhs.true.15
  %17 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx19, align 1, !tbaa !35
  %conv20 = zext i8 %18 to i32
  %19 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i64 2), align 1, !tbaa !35
  %conv21 = zext i8 %19 to i32
  %sub22 = sub nsw i32 %conv20, %conv21
  store i32 %sub22, i32* %__result, align 4, !tbaa !1
  %20 = load i64, i64* %__s2_len, align 8, !tbaa !41
  %cmp23 = icmp ugt i64 %20, 2
  br i1 %cmp23, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %if.then.18
  %21 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp26 = icmp eq i32 %21, 0
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %land.lhs.true.25
  %22 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 3
  %23 = load i8, i8* %arrayidx29, align 1, !tbaa !35
  %conv30 = zext i8 %23 to i32
  %24 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i64 3), align 1, !tbaa !35
  %conv31 = zext i8 %24 to i32
  %sub32 = sub nsw i32 %conv30, %conv31
  store i32 %sub32, i32* %__result, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.28, %land.lhs.true.25, %if.then.18
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %land.lhs.true.15, %if.then
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true.6, %cond.true
  %25 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %25, i32* %tmp35, !tbaa !1
  %26 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %tmp35, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %29 = load i8*, i8** %key.addr, align 8, !tbaa !5
  %call36 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.34
  %cond = phi i32 [ %28, %if.end.34 ], [ %call36, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !1
  %30 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %tmp, !tbaa !1
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.else, label %if.then.37

if.then.37:                                       ; preds = %cond.end
  %33 = load i8*, i8** %value.addr, align 8, !tbaa !5
  %34 = load i32, i32* %value_size.addr, align 4, !tbaa !1
  %35 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %35, i32 0, i32 21
  %36 = load %struct.IjsPageHeader*, %struct.IjsPageHeader** %ph, align 8, !tbaa !14
  %n_chan = getelementptr inbounds %struct.IjsPageHeader, %struct.IjsPageHeader* %36, i32 0, i32 0
  %call38 = call i32 @ijs_server_parse_int(i8* %33, i32 %34, i32* %n_chan) #6
  store i32 %call38, i32* %code, align 4, !tbaa !1
  %37 = load i32, i32* %code, align 4, !tbaa !1
  %cmp39 = icmp eq i32 %37, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.37
  %38 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %fields_set = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %38, i32 0, i32 22
  %39 = load i32, i32* %fields_set, align 4, !tbaa !36
  %or = or i32 %39, 1
  store i32 %or, i32* %fields_set, align 4, !tbaa !36
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.then.37
  %40 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.406

if.else:                                          ; preds = %cond.end
  %41 = bitcast i64* %__s1_len44 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = bitcast i64* %__s2_len46 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i64 1) to i64), i64 ptrtoint ([14 x i8]* @.str.2 to i64)), i64 1), label %land.lhs.true.48, label %cond.false.95

land.lhs.true.48:                                 ; preds = %if.else
  %call49 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #7
  store i64 %call49, i64* %__s2_len46, align 8, !tbaa !41
  %43 = load i64, i64* %__s2_len46, align 8, !tbaa !41
  %cmp50 = icmp ult i64 %43, 4
  br i1 %cmp50, label %cond.true.52, label %cond.false.95

cond.true.52:                                     ; preds = %land.lhs.true.48
  %44 = bitcast i8** %__s154 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load i8*, i8** %key.addr, align 8, !tbaa !5
  store i8* %45, i8** %__s154, align 8, !tbaa !5
  %46 = bitcast i32* %__result56 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i8*, i8** %__s154, align 8, !tbaa !5
  %arrayidx57 = getelementptr inbounds i8, i8* %47, i64 0
  %48 = load i8, i8* %arrayidx57, align 1, !tbaa !35
  %conv58 = zext i8 %48 to i32
  %49 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), align 1, !tbaa !35
  %conv59 = zext i8 %49 to i32
  %sub60 = sub nsw i32 %conv58, %conv59
  store i32 %sub60, i32* %__result56, align 4, !tbaa !1
  %50 = load i64, i64* %__s2_len46, align 8, !tbaa !41
  %cmp61 = icmp ugt i64 %50, 0
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.93

land.lhs.true.63:                                 ; preds = %cond.true.52
  %51 = load i32, i32* %__result56, align 4, !tbaa !1
  %cmp64 = icmp eq i32 %51, 0
  br i1 %cmp64, label %if.then.66, label %if.end.93

if.then.66:                                       ; preds = %land.lhs.true.63
  %52 = load i8*, i8** %__s154, align 8, !tbaa !5
  %arrayidx67 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx67, align 1, !tbaa !35
  %conv68 = zext i8 %53 to i32
  %54 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i64 1), align 1, !tbaa !35
  %conv69 = zext i8 %54 to i32
  %sub70 = sub nsw i32 %conv68, %conv69
  store i32 %sub70, i32* %__result56, align 4, !tbaa !1
  %55 = load i64, i64* %__s2_len46, align 8, !tbaa !41
  %cmp71 = icmp ugt i64 %55, 1
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.92

land.lhs.true.73:                                 ; preds = %if.then.66
  %56 = load i32, i32* %__result56, align 4, !tbaa !1
  %cmp74 = icmp eq i32 %56, 0
  br i1 %cmp74, label %if.then.76, label %if.end.92

if.then.76:                                       ; preds = %land.lhs.true.73
  %57 = load i8*, i8** %__s154, align 8, !tbaa !5
  %arrayidx77 = getelementptr inbounds i8, i8* %57, i64 2
  %58 = load i8, i8* %arrayidx77, align 1, !tbaa !35
  %conv78 = zext i8 %58 to i32
  %59 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i64 2), align 1, !tbaa !35
  %conv79 = zext i8 %59 to i32
  %sub80 = sub nsw i32 %conv78, %conv79
  store i32 %sub80, i32* %__result56, align 4, !tbaa !1
  %60 = load i64, i64* %__s2_len46, align 8, !tbaa !41
  %cmp81 = icmp ugt i64 %60, 2
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.91

land.lhs.true.83:                                 ; preds = %if.then.76
  %61 = load i32, i32* %__result56, align 4, !tbaa !1
  %cmp84 = icmp eq i32 %61, 0
  br i1 %cmp84, label %if.then.86, label %if.end.91

if.then.86:                                       ; preds = %land.lhs.true.83
  %62 = load i8*, i8** %__s154, align 8, !tbaa !5
  %arrayidx87 = getelementptr inbounds i8, i8* %62, i64 3
  %63 = load i8, i8* %arrayidx87, align 1, !tbaa !35
  %conv88 = zext i8 %63 to i32
  %64 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i64 3), align 1, !tbaa !35
  %conv89 = zext i8 %64 to i32
  %sub90 = sub nsw i32 %conv88, %conv89
  store i32 %sub90, i32* %__result56, align 4, !tbaa !1
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.86, %land.lhs.true.83, %if.then.76
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %land.lhs.true.73, %if.then.66
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true.63, %cond.true.52
  %65 = load i32, i32* %__result56, align 4, !tbaa !1
  store i32 %65, i32* %tmp94, !tbaa !1
  %66 = bitcast i32* %__result56 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i8** %__s154 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = load i32, i32* %tmp94, !tbaa !1
  br label %cond.end.97

cond.false.95:                                    ; preds = %land.lhs.true.48, %if.else
  %69 = load i8*, i8** %key.addr, align 8, !tbaa !5
  %call96 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %if.end.93
  %cond98 = phi i32 [ %68, %if.end.93 ], [ %call96, %cond.false.95 ]
  store i32 %cond98, i32* %tmp47, !tbaa !1
  %70 = bitcast i64* %__s2_len46 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i64* %__s1_len44 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = load i32, i32* %tmp47, !tbaa !1
  %tobool99 = icmp ne i32 %72, 0
  br i1 %tobool99, label %if.else.109, label %if.then.100

if.then.100:                                      ; preds = %cond.end.97
  %73 = load i8*, i8** %value.addr, align 8, !tbaa !5
  %74 = load i32, i32* %value_size.addr, align 4, !tbaa !1
  %75 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %ph101 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %75, i32 0, i32 21
  %76 = load %struct.IjsPageHeader*, %struct.IjsPageHeader** %ph101, align 8, !tbaa !14
  %bps = getelementptr inbounds %struct.IjsPageHeader, %struct.IjsPageHeader* %76, i32 0, i32 1
  %call102 = call i32 @ijs_server_parse_int(i8* %73, i32 %74, i32* %bps) #6
  store i32 %call102, i32* %code, align 4, !tbaa !1
  %77 = load i32, i32* %code, align 4, !tbaa !1
  %cmp103 = icmp eq i32 %77, 0
  br i1 %cmp103, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %if.then.100
  %78 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %fields_set106 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %78, i32 0, i32 22
  %79 = load i32, i32* %fields_set106, align 4, !tbaa !36
  %or107 = or i32 %79, 2
  store i32 %or107, i32* %fields_set106, align 4, !tbaa !36
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %if.then.100
  %80 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %80, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.406

if.else.109:                                      ; preds = %cond.end.97
  %81 = bitcast i64* %__s1_len111 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  %82 = bitcast i64* %__s2_len113 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.3 to i64)), i64 1), label %land.lhs.true.115, label %cond.false.162

land.lhs.true.115:                                ; preds = %if.else.109
  %call116 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #7
  store i64 %call116, i64* %__s2_len113, align 8, !tbaa !41
  %83 = load i64, i64* %__s2_len113, align 8, !tbaa !41
  %cmp117 = icmp ult i64 %83, 4
  br i1 %cmp117, label %cond.true.119, label %cond.false.162

cond.true.119:                                    ; preds = %land.lhs.true.115
  %84 = bitcast i8** %__s1121 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = load i8*, i8** %key.addr, align 8, !tbaa !5
  store i8* %85, i8** %__s1121, align 8, !tbaa !5
  %86 = bitcast i32* %__result123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  %87 = load i8*, i8** %__s1121, align 8, !tbaa !5
  %arrayidx124 = getelementptr inbounds i8, i8* %87, i64 0
  %88 = load i8, i8* %arrayidx124, align 1, !tbaa !35
  %conv125 = zext i8 %88 to i32
  %89 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), align 1, !tbaa !35
  %conv126 = zext i8 %89 to i32
  %sub127 = sub nsw i32 %conv125, %conv126
  store i32 %sub127, i32* %__result123, align 4, !tbaa !1
  %90 = load i64, i64* %__s2_len113, align 8, !tbaa !41
  %cmp128 = icmp ugt i64 %90, 0
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.160

land.lhs.true.130:                                ; preds = %cond.true.119
  %91 = load i32, i32* %__result123, align 4, !tbaa !1
  %cmp131 = icmp eq i32 %91, 0
  br i1 %cmp131, label %if.then.133, label %if.end.160

if.then.133:                                      ; preds = %land.lhs.true.130
  %92 = load i8*, i8** %__s1121, align 8, !tbaa !5
  %arrayidx134 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i8, i8* %arrayidx134, align 1, !tbaa !35
  %conv135 = zext i8 %93 to i32
  %94 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i64 1), align 1, !tbaa !35
  %conv136 = zext i8 %94 to i32
  %sub137 = sub nsw i32 %conv135, %conv136
  store i32 %sub137, i32* %__result123, align 4, !tbaa !1
  %95 = load i64, i64* %__s2_len113, align 8, !tbaa !41
  %cmp138 = icmp ugt i64 %95, 1
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.159

land.lhs.true.140:                                ; preds = %if.then.133
  %96 = load i32, i32* %__result123, align 4, !tbaa !1
  %cmp141 = icmp eq i32 %96, 0
  br i1 %cmp141, label %if.then.143, label %if.end.159

if.then.143:                                      ; preds = %land.lhs.true.140
  %97 = load i8*, i8** %__s1121, align 8, !tbaa !5
  %arrayidx144 = getelementptr inbounds i8, i8* %97, i64 2
  %98 = load i8, i8* %arrayidx144, align 1, !tbaa !35
  %conv145 = zext i8 %98 to i32
  %99 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i64 2), align 1, !tbaa !35
  %conv146 = zext i8 %99 to i32
  %sub147 = sub nsw i32 %conv145, %conv146
  store i32 %sub147, i32* %__result123, align 4, !tbaa !1
  %100 = load i64, i64* %__s2_len113, align 8, !tbaa !41
  %cmp148 = icmp ugt i64 %100, 2
  br i1 %cmp148, label %land.lhs.true.150, label %if.end.158

land.lhs.true.150:                                ; preds = %if.then.143
  %101 = load i32, i32* %__result123, align 4, !tbaa !1
  %cmp151 = icmp eq i32 %101, 0
  br i1 %cmp151, label %if.then.153, label %if.end.158

if.then.153:                                      ; preds = %land.lhs.true.150
  %102 = load i8*, i8** %__s1121, align 8, !tbaa !5
  %arrayidx154 = getelementptr inbounds i8, i8* %102, i64 3
  %103 = load i8, i8* %arrayidx154, align 1, !tbaa !35
  %conv155 = zext i8 %103 to i32
  %104 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i64 3), align 1, !tbaa !35
  %conv156 = zext i8 %104 to i32
  %sub157 = sub nsw i32 %conv155, %conv156
  store i32 %sub157, i32* %__result123, align 4, !tbaa !1
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.153, %land.lhs.true.150, %if.then.143
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %land.lhs.true.140, %if.then.133
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %land.lhs.true.130, %cond.true.119
  %105 = load i32, i32* %__result123, align 4, !tbaa !1
  store i32 %105, i32* %tmp161, !tbaa !1
  %106 = bitcast i32* %__result123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i8** %__s1121 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = load i32, i32* %tmp161, !tbaa !1
  br label %cond.end.164

cond.false.162:                                   ; preds = %land.lhs.true.115, %if.else.109
  %109 = load i8*, i8** %key.addr, align 8, !tbaa !5
  %call163 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.162, %if.end.160
  %cond165 = phi i32 [ %108, %if.end.160 ], [ %call163, %cond.false.162 ]
  store i32 %cond165, i32* %tmp114, !tbaa !1
  %110 = bitcast i64* %__s2_len113 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i64* %__s1_len111 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = load i32, i32* %tmp114, !tbaa !1
  %tobool166 = icmp ne i32 %112, 0
  br i1 %tobool166, label %if.else.181, label %if.then.167

if.then.167:                                      ; preds = %cond.end.164
  %113 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  %114 = load i32, i32* %value_size.addr, align 4, !tbaa !1
  store i32 %114, i32* %size, align 4, !tbaa !1
  %115 = load i32, i32* %size, align 4, !tbaa !1
  %cmp169 = icmp sgt i32 %115, 255
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.then.167
  store i32 255, i32* %size, align 4, !tbaa !1
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %if.then.167
  %116 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %ph173 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %116, i32 0, i32 21
  %117 = load %struct.IjsPageHeader*, %struct.IjsPageHeader** %ph173, align 8, !tbaa !14
  %cs = getelementptr inbounds %struct.IjsPageHeader, %struct.IjsPageHeader* %117, i32 0, i32 2
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %cs, i32 0, i32 0
  %118 = load i8*, i8** %value.addr, align 8, !tbaa !5
  %119 = load i32, i32* %size, align 4, !tbaa !1
  %conv174 = sext i32 %119 to i64
  %call175 = call i8* @memcpy(i8* %arraydecay, i8* %118, i64 %conv174) #5
  %120 = load i32, i32* %size, align 4, !tbaa !1
  %idxprom = sext i32 %120 to i64
  %121 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %ph176 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %121, i32 0, i32 21
  %122 = load %struct.IjsPageHeader*, %struct.IjsPageHeader** %ph176, align 8, !tbaa !14
  %cs177 = getelementptr inbounds %struct.IjsPageHeader, %struct.IjsPageHeader* %122, i32 0, i32 2
  %arrayidx178 = getelementptr inbounds [256 x i8], [256 x i8]* %cs177, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx178, align 1, !tbaa !35
  %123 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %fields_set179 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %123, i32 0, i32 22
  %124 = load i32, i32* %fields_set179, align 4, !tbaa !36
  %or180 = or i32 %124, 4
  store i32 %or180, i32* %fields_set179, align 4, !tbaa !36
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %125 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  br label %cleanup.406

if.else.181:                                      ; preds = %cond.end.164
  %126 = bitcast i64* %__s1_len183 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %126) #1
  %127 = bitcast i64* %__s2_len185 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %127) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.4 to i64)), i64 1), label %land.lhs.true.187, label %cond.false.234

land.lhs.true.187:                                ; preds = %if.else.181
  %call188 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #7
  store i64 %call188, i64* %__s2_len185, align 8, !tbaa !41
  %128 = load i64, i64* %__s2_len185, align 8, !tbaa !41
  %cmp189 = icmp ult i64 %128, 4
  br i1 %cmp189, label %cond.true.191, label %cond.false.234

cond.true.191:                                    ; preds = %land.lhs.true.187
  %129 = bitcast i8** %__s1193 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  %130 = load i8*, i8** %key.addr, align 8, !tbaa !5
  store i8* %130, i8** %__s1193, align 8, !tbaa !5
  %131 = bitcast i32* %__result195 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #1
  %132 = load i8*, i8** %__s1193, align 8, !tbaa !5
  %arrayidx196 = getelementptr inbounds i8, i8* %132, i64 0
  %133 = load i8, i8* %arrayidx196, align 1, !tbaa !35
  %conv197 = zext i8 %133 to i32
  %134 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), align 1, !tbaa !35
  %conv198 = zext i8 %134 to i32
  %sub199 = sub nsw i32 %conv197, %conv198
  store i32 %sub199, i32* %__result195, align 4, !tbaa !1
  %135 = load i64, i64* %__s2_len185, align 8, !tbaa !41
  %cmp200 = icmp ugt i64 %135, 0
  br i1 %cmp200, label %land.lhs.true.202, label %if.end.232

land.lhs.true.202:                                ; preds = %cond.true.191
  %136 = load i32, i32* %__result195, align 4, !tbaa !1
  %cmp203 = icmp eq i32 %136, 0
  br i1 %cmp203, label %if.then.205, label %if.end.232

if.then.205:                                      ; preds = %land.lhs.true.202
  %137 = load i8*, i8** %__s1193, align 8, !tbaa !5
  %arrayidx206 = getelementptr inbounds i8, i8* %137, i64 1
  %138 = load i8, i8* %arrayidx206, align 1, !tbaa !35
  %conv207 = zext i8 %138 to i32
  %139 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 1), align 1, !tbaa !35
  %conv208 = zext i8 %139 to i32
  %sub209 = sub nsw i32 %conv207, %conv208
  store i32 %sub209, i32* %__result195, align 4, !tbaa !1
  %140 = load i64, i64* %__s2_len185, align 8, !tbaa !41
  %cmp210 = icmp ugt i64 %140, 1
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.231

land.lhs.true.212:                                ; preds = %if.then.205
  %141 = load i32, i32* %__result195, align 4, !tbaa !1
  %cmp213 = icmp eq i32 %141, 0
  br i1 %cmp213, label %if.then.215, label %if.end.231

if.then.215:                                      ; preds = %land.lhs.true.212
  %142 = load i8*, i8** %__s1193, align 8, !tbaa !5
  %arrayidx216 = getelementptr inbounds i8, i8* %142, i64 2
  %143 = load i8, i8* %arrayidx216, align 1, !tbaa !35
  %conv217 = zext i8 %143 to i32
  %144 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 2), align 1, !tbaa !35
  %conv218 = zext i8 %144 to i32
  %sub219 = sub nsw i32 %conv217, %conv218
  store i32 %sub219, i32* %__result195, align 4, !tbaa !1
  %145 = load i64, i64* %__s2_len185, align 8, !tbaa !41
  %cmp220 = icmp ugt i64 %145, 2
  br i1 %cmp220, label %land.lhs.true.222, label %if.end.230

land.lhs.true.222:                                ; preds = %if.then.215
  %146 = load i32, i32* %__result195, align 4, !tbaa !1
  %cmp223 = icmp eq i32 %146, 0
  br i1 %cmp223, label %if.then.225, label %if.end.230

if.then.225:                                      ; preds = %land.lhs.true.222
  %147 = load i8*, i8** %__s1193, align 8, !tbaa !5
  %arrayidx226 = getelementptr inbounds i8, i8* %147, i64 3
  %148 = load i8, i8* %arrayidx226, align 1, !tbaa !35
  %conv227 = zext i8 %148 to i32
  %149 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 3), align 1, !tbaa !35
  %conv228 = zext i8 %149 to i32
  %sub229 = sub nsw i32 %conv227, %conv228
  store i32 %sub229, i32* %__result195, align 4, !tbaa !1
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.225, %land.lhs.true.222, %if.then.215
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %land.lhs.true.212, %if.then.205
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %land.lhs.true.202, %cond.true.191
  %150 = load i32, i32* %__result195, align 4, !tbaa !1
  store i32 %150, i32* %tmp233, !tbaa !1
  %151 = bitcast i32* %__result195 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i8** %__s1193 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = load i32, i32* %tmp233, !tbaa !1
  br label %cond.end.236

cond.false.234:                                   ; preds = %land.lhs.true.187, %if.else.181
  %154 = load i8*, i8** %key.addr, align 8, !tbaa !5
  %call235 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.234, %if.end.232
  %cond237 = phi i32 [ %153, %if.end.232 ], [ %call235, %cond.false.234 ]
  store i32 %cond237, i32* %tmp186, !tbaa !1
  %155 = bitcast i64* %__s2_len185 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i64* %__s1_len183 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = load i32, i32* %tmp186, !tbaa !1
  %tobool238 = icmp ne i32 %157, 0
  br i1 %tobool238, label %if.else.248, label %if.then.239

if.then.239:                                      ; preds = %cond.end.236
  %158 = load i8*, i8** %value.addr, align 8, !tbaa !5
  %159 = load i32, i32* %value_size.addr, align 4, !tbaa !1
  %160 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %ph240 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %160, i32 0, i32 21
  %161 = load %struct.IjsPageHeader*, %struct.IjsPageHeader** %ph240, align 8, !tbaa !14
  %width = getelementptr inbounds %struct.IjsPageHeader, %struct.IjsPageHeader* %161, i32 0, i32 3
  %call241 = call i32 @ijs_server_parse_int(i8* %158, i32 %159, i32* %width) #6
  store i32 %call241, i32* %code, align 4, !tbaa !1
  %162 = load i32, i32* %code, align 4, !tbaa !1
  %cmp242 = icmp eq i32 %162, 0
  br i1 %cmp242, label %if.then.244, label %if.end.247

if.then.244:                                      ; preds = %if.then.239
  %163 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %fields_set245 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %163, i32 0, i32 22
  %164 = load i32, i32* %fields_set245, align 4, !tbaa !36
  %or246 = or i32 %164, 8
  store i32 %or246, i32* %fields_set245, align 4, !tbaa !36
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.244, %if.then.239
  %165 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %165, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.406

if.else.248:                                      ; preds = %cond.end.236
  %166 = bitcast i64* %__s1_len250 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %166) #1
  %167 = bitcast i64* %__s2_len252 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %167) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.5 to i64)), i64 1), label %land.lhs.true.254, label %cond.false.301

land.lhs.true.254:                                ; preds = %if.else.248
  %call255 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #7
  store i64 %call255, i64* %__s2_len252, align 8, !tbaa !41
  %168 = load i64, i64* %__s2_len252, align 8, !tbaa !41
  %cmp256 = icmp ult i64 %168, 4
  br i1 %cmp256, label %cond.true.258, label %cond.false.301

cond.true.258:                                    ; preds = %land.lhs.true.254
  %169 = bitcast i8** %__s1260 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #1
  %170 = load i8*, i8** %key.addr, align 8, !tbaa !5
  store i8* %170, i8** %__s1260, align 8, !tbaa !5
  %171 = bitcast i32* %__result262 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #1
  %172 = load i8*, i8** %__s1260, align 8, !tbaa !5
  %arrayidx263 = getelementptr inbounds i8, i8* %172, i64 0
  %173 = load i8, i8* %arrayidx263, align 1, !tbaa !35
  %conv264 = zext i8 %173 to i32
  %174 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), align 1, !tbaa !35
  %conv265 = zext i8 %174 to i32
  %sub266 = sub nsw i32 %conv264, %conv265
  store i32 %sub266, i32* %__result262, align 4, !tbaa !1
  %175 = load i64, i64* %__s2_len252, align 8, !tbaa !41
  %cmp267 = icmp ugt i64 %175, 0
  br i1 %cmp267, label %land.lhs.true.269, label %if.end.299

land.lhs.true.269:                                ; preds = %cond.true.258
  %176 = load i32, i32* %__result262, align 4, !tbaa !1
  %cmp270 = icmp eq i32 %176, 0
  br i1 %cmp270, label %if.then.272, label %if.end.299

if.then.272:                                      ; preds = %land.lhs.true.269
  %177 = load i8*, i8** %__s1260, align 8, !tbaa !5
  %arrayidx273 = getelementptr inbounds i8, i8* %177, i64 1
  %178 = load i8, i8* %arrayidx273, align 1, !tbaa !35
  %conv274 = zext i8 %178 to i32
  %179 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i64 1), align 1, !tbaa !35
  %conv275 = zext i8 %179 to i32
  %sub276 = sub nsw i32 %conv274, %conv275
  store i32 %sub276, i32* %__result262, align 4, !tbaa !1
  %180 = load i64, i64* %__s2_len252, align 8, !tbaa !41
  %cmp277 = icmp ugt i64 %180, 1
  br i1 %cmp277, label %land.lhs.true.279, label %if.end.298

land.lhs.true.279:                                ; preds = %if.then.272
  %181 = load i32, i32* %__result262, align 4, !tbaa !1
  %cmp280 = icmp eq i32 %181, 0
  br i1 %cmp280, label %if.then.282, label %if.end.298

if.then.282:                                      ; preds = %land.lhs.true.279
  %182 = load i8*, i8** %__s1260, align 8, !tbaa !5
  %arrayidx283 = getelementptr inbounds i8, i8* %182, i64 2
  %183 = load i8, i8* %arrayidx283, align 1, !tbaa !35
  %conv284 = zext i8 %183 to i32
  %184 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i64 2), align 1, !tbaa !35
  %conv285 = zext i8 %184 to i32
  %sub286 = sub nsw i32 %conv284, %conv285
  store i32 %sub286, i32* %__result262, align 4, !tbaa !1
  %185 = load i64, i64* %__s2_len252, align 8, !tbaa !41
  %cmp287 = icmp ugt i64 %185, 2
  br i1 %cmp287, label %land.lhs.true.289, label %if.end.297

land.lhs.true.289:                                ; preds = %if.then.282
  %186 = load i32, i32* %__result262, align 4, !tbaa !1
  %cmp290 = icmp eq i32 %186, 0
  br i1 %cmp290, label %if.then.292, label %if.end.297

if.then.292:                                      ; preds = %land.lhs.true.289
  %187 = load i8*, i8** %__s1260, align 8, !tbaa !5
  %arrayidx293 = getelementptr inbounds i8, i8* %187, i64 3
  %188 = load i8, i8* %arrayidx293, align 1, !tbaa !35
  %conv294 = zext i8 %188 to i32
  %189 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i64 3), align 1, !tbaa !35
  %conv295 = zext i8 %189 to i32
  %sub296 = sub nsw i32 %conv294, %conv295
  store i32 %sub296, i32* %__result262, align 4, !tbaa !1
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.292, %land.lhs.true.289, %if.then.282
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %land.lhs.true.279, %if.then.272
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %land.lhs.true.269, %cond.true.258
  %190 = load i32, i32* %__result262, align 4, !tbaa !1
  store i32 %190, i32* %tmp300, !tbaa !1
  %191 = bitcast i32* %__result262 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i8** %__s1260 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = load i32, i32* %tmp300, !tbaa !1
  br label %cond.end.303

cond.false.301:                                   ; preds = %land.lhs.true.254, %if.else.248
  %194 = load i8*, i8** %key.addr, align 8, !tbaa !5
  %call302 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #5
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.false.301, %if.end.299
  %cond304 = phi i32 [ %193, %if.end.299 ], [ %call302, %cond.false.301 ]
  store i32 %cond304, i32* %tmp253, !tbaa !1
  %195 = bitcast i64* %__s2_len252 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast i64* %__s1_len250 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = load i32, i32* %tmp253, !tbaa !1
  %tobool305 = icmp ne i32 %197, 0
  br i1 %tobool305, label %if.else.315, label %if.then.306

if.then.306:                                      ; preds = %cond.end.303
  %198 = load i8*, i8** %value.addr, align 8, !tbaa !5
  %199 = load i32, i32* %value_size.addr, align 4, !tbaa !1
  %200 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %ph307 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %200, i32 0, i32 21
  %201 = load %struct.IjsPageHeader*, %struct.IjsPageHeader** %ph307, align 8, !tbaa !14
  %height = getelementptr inbounds %struct.IjsPageHeader, %struct.IjsPageHeader* %201, i32 0, i32 4
  %call308 = call i32 @ijs_server_parse_int(i8* %198, i32 %199, i32* %height) #6
  store i32 %call308, i32* %code, align 4, !tbaa !1
  %202 = load i32, i32* %code, align 4, !tbaa !1
  %cmp309 = icmp eq i32 %202, 0
  br i1 %cmp309, label %if.then.311, label %if.end.314

if.then.311:                                      ; preds = %if.then.306
  %203 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %fields_set312 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %203, i32 0, i32 22
  %204 = load i32, i32* %fields_set312, align 4, !tbaa !36
  %or313 = or i32 %204, 16
  store i32 %or313, i32* %fields_set312, align 4, !tbaa !36
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.311, %if.then.306
  %205 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %205, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.406

if.else.315:                                      ; preds = %cond.end.303
  %206 = bitcast i64* %__s1_len317 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %206) #1
  %207 = bitcast i64* %__s2_len319 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %207) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.6 to i64)), i64 1), label %land.lhs.true.321, label %cond.false.368

land.lhs.true.321:                                ; preds = %if.else.315
  %call322 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #7
  store i64 %call322, i64* %__s2_len319, align 8, !tbaa !41
  %208 = load i64, i64* %__s2_len319, align 8, !tbaa !41
  %cmp323 = icmp ult i64 %208, 4
  br i1 %cmp323, label %cond.true.325, label %cond.false.368

cond.true.325:                                    ; preds = %land.lhs.true.321
  %209 = bitcast i8** %__s1327 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %209) #1
  %210 = load i8*, i8** %key.addr, align 8, !tbaa !5
  store i8* %210, i8** %__s1327, align 8, !tbaa !5
  %211 = bitcast i32* %__result329 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %211) #1
  %212 = load i8*, i8** %__s1327, align 8, !tbaa !5
  %arrayidx330 = getelementptr inbounds i8, i8* %212, i64 0
  %213 = load i8, i8* %arrayidx330, align 1, !tbaa !35
  %conv331 = zext i8 %213 to i32
  %214 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), align 1, !tbaa !35
  %conv332 = zext i8 %214 to i32
  %sub333 = sub nsw i32 %conv331, %conv332
  store i32 %sub333, i32* %__result329, align 4, !tbaa !1
  %215 = load i64, i64* %__s2_len319, align 8, !tbaa !41
  %cmp334 = icmp ugt i64 %215, 0
  br i1 %cmp334, label %land.lhs.true.336, label %if.end.366

land.lhs.true.336:                                ; preds = %cond.true.325
  %216 = load i32, i32* %__result329, align 4, !tbaa !1
  %cmp337 = icmp eq i32 %216, 0
  br i1 %cmp337, label %if.then.339, label %if.end.366

if.then.339:                                      ; preds = %land.lhs.true.336
  %217 = load i8*, i8** %__s1327, align 8, !tbaa !5
  %arrayidx340 = getelementptr inbounds i8, i8* %217, i64 1
  %218 = load i8, i8* %arrayidx340, align 1, !tbaa !35
  %conv341 = zext i8 %218 to i32
  %219 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i64 1), align 1, !tbaa !35
  %conv342 = zext i8 %219 to i32
  %sub343 = sub nsw i32 %conv341, %conv342
  store i32 %sub343, i32* %__result329, align 4, !tbaa !1
  %220 = load i64, i64* %__s2_len319, align 8, !tbaa !41
  %cmp344 = icmp ugt i64 %220, 1
  br i1 %cmp344, label %land.lhs.true.346, label %if.end.365

land.lhs.true.346:                                ; preds = %if.then.339
  %221 = load i32, i32* %__result329, align 4, !tbaa !1
  %cmp347 = icmp eq i32 %221, 0
  br i1 %cmp347, label %if.then.349, label %if.end.365

if.then.349:                                      ; preds = %land.lhs.true.346
  %222 = load i8*, i8** %__s1327, align 8, !tbaa !5
  %arrayidx350 = getelementptr inbounds i8, i8* %222, i64 2
  %223 = load i8, i8* %arrayidx350, align 1, !tbaa !35
  %conv351 = zext i8 %223 to i32
  %224 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i64 2), align 1, !tbaa !35
  %conv352 = zext i8 %224 to i32
  %sub353 = sub nsw i32 %conv351, %conv352
  store i32 %sub353, i32* %__result329, align 4, !tbaa !1
  %225 = load i64, i64* %__s2_len319, align 8, !tbaa !41
  %cmp354 = icmp ugt i64 %225, 2
  br i1 %cmp354, label %land.lhs.true.356, label %if.end.364

land.lhs.true.356:                                ; preds = %if.then.349
  %226 = load i32, i32* %__result329, align 4, !tbaa !1
  %cmp357 = icmp eq i32 %226, 0
  br i1 %cmp357, label %if.then.359, label %if.end.364

if.then.359:                                      ; preds = %land.lhs.true.356
  %227 = load i8*, i8** %__s1327, align 8, !tbaa !5
  %arrayidx360 = getelementptr inbounds i8, i8* %227, i64 3
  %228 = load i8, i8* %arrayidx360, align 1, !tbaa !35
  %conv361 = zext i8 %228 to i32
  %229 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i64 3), align 1, !tbaa !35
  %conv362 = zext i8 %229 to i32
  %sub363 = sub nsw i32 %conv361, %conv362
  store i32 %sub363, i32* %__result329, align 4, !tbaa !1
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.359, %land.lhs.true.356, %if.then.349
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %land.lhs.true.346, %if.then.339
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365, %land.lhs.true.336, %cond.true.325
  %230 = load i32, i32* %__result329, align 4, !tbaa !1
  store i32 %230, i32* %tmp367, !tbaa !1
  %231 = bitcast i32* %__result329 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = bitcast i8** %__s1327 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #1
  %233 = load i32, i32* %tmp367, !tbaa !1
  br label %cond.end.370

cond.false.368:                                   ; preds = %land.lhs.true.321, %if.else.315
  %234 = load i8*, i8** %key.addr, align 8, !tbaa !5
  %call369 = call i32 @strcmp(i8* %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #5
  br label %cond.end.370

cond.end.370:                                     ; preds = %cond.false.368, %if.end.366
  %cond371 = phi i32 [ %233, %if.end.366 ], [ %call369, %cond.false.368 ]
  store i32 %cond371, i32* %tmp320, !tbaa !1
  %235 = bitcast i64* %__s2_len319 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #1
  %236 = bitcast i64* %__s1_len317 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #1
  %237 = load i32, i32* %tmp320, !tbaa !1
  %tobool372 = icmp ne i32 %237, 0
  br i1 %tobool372, label %if.else.404, label %if.then.373

if.then.373:                                      ; preds = %cond.end.370
  %238 = bitcast i32* %x_ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %238) #1
  store i32 0, i32* %x_ix, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.373
  %239 = load i32, i32* %x_ix, align 4, !tbaa !1
  %240 = load i32, i32* %value_size.addr, align 4, !tbaa !1
  %cmp375 = icmp slt i32 %239, %240
  br i1 %cmp375, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %241 = load i32, i32* %x_ix, align 4, !tbaa !1
  %idxprom377 = sext i32 %241 to i64
  %242 = load i8*, i8** %value.addr, align 8, !tbaa !5
  %arrayidx378 = getelementptr inbounds i8, i8* %242, i64 %idxprom377
  %243 = load i8, i8* %arrayidx378, align 1, !tbaa !35
  %conv379 = sext i8 %243 to i32
  %cmp380 = icmp eq i32 %conv379, 120
  br i1 %cmp380, label %if.then.382, label %if.end.383

if.then.382:                                      ; preds = %for.body
  br label %for.end

if.end.383:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.383
  %244 = load i32, i32* %x_ix, align 4, !tbaa !1
  %inc = add nsw i32 %244, 1
  store i32 %inc, i32* %x_ix, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.382, %for.cond
  %245 = load i32, i32* %x_ix, align 4, !tbaa !1
  %246 = load i32, i32* %value_size.addr, align 4, !tbaa !1
  %cmp384 = icmp eq i32 %245, %246
  br i1 %cmp384, label %if.then.386, label %if.end.387

if.then.386:                                      ; preds = %for.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.387:                                       ; preds = %for.end
  %247 = load i8*, i8** %value.addr, align 8, !tbaa !5
  %248 = load i32, i32* %x_ix, align 4, !tbaa !1
  %249 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %ph388 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %249, i32 0, i32 21
  %250 = load %struct.IjsPageHeader*, %struct.IjsPageHeader** %ph388, align 8, !tbaa !14
  %xres = getelementptr inbounds %struct.IjsPageHeader, %struct.IjsPageHeader* %250, i32 0, i32 5
  %call389 = call i32 @ijs_server_parse_float(i8* %247, i32 %248, double* %xres) #6
  store i32 %call389, i32* %code, align 4, !tbaa !1
  %251 = load i32, i32* %code, align 4, !tbaa !1
  %cmp390 = icmp slt i32 %251, 0
  br i1 %cmp390, label %if.then.392, label %if.end.393

if.then.392:                                      ; preds = %if.end.387
  %252 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %252, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.393:                                       ; preds = %if.end.387
  %253 = load i8*, i8** %value.addr, align 8, !tbaa !5
  %254 = load i32, i32* %x_ix, align 4, !tbaa !1
  %idx.ext = sext i32 %254 to i64
  %add.ptr = getelementptr inbounds i8, i8* %253, i64 %idx.ext
  %add.ptr394 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %255 = load i32, i32* %value_size.addr, align 4, !tbaa !1
  %256 = load i32, i32* %x_ix, align 4, !tbaa !1
  %add = add nsw i32 %256, 1
  %sub395 = sub nsw i32 %255, %add
  %257 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %ph396 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %257, i32 0, i32 21
  %258 = load %struct.IjsPageHeader*, %struct.IjsPageHeader** %ph396, align 8, !tbaa !14
  %yres = getelementptr inbounds %struct.IjsPageHeader, %struct.IjsPageHeader* %258, i32 0, i32 6
  %call397 = call i32 @ijs_server_parse_float(i8* %add.ptr394, i32 %sub395, double* %yres) #6
  store i32 %call397, i32* %code, align 4, !tbaa !1
  %259 = load i32, i32* %code, align 4, !tbaa !1
  %cmp398 = icmp slt i32 %259, 0
  br i1 %cmp398, label %if.then.400, label %if.end.401

if.then.400:                                      ; preds = %if.end.393
  %260 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %260, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.401:                                       ; preds = %if.end.393
  %261 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %fields_set402 = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %261, i32 0, i32 22
  %262 = load i32, i32* %fields_set402, align 4, !tbaa !36
  %or403 = or i32 %262, 32
  store i32 %or403, i32* %fields_set402, align 4, !tbaa !36
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.401, %if.then.400, %if.then.392, %if.then.386
  %263 = bitcast i32* %x_ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  br label %cleanup.406

if.else.404:                                      ; preds = %cond.end.370
  %264 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %set_cb = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %264, i32 0, i32 15
  %265 = load i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)*, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)** %set_cb, align 8, !tbaa !28
  %266 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %set_cb_data = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %266, i32 0, i32 16
  %267 = load i8*, i8** %set_cb_data, align 8, !tbaa !29
  %268 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %269 = load i32, i32* %job_id.addr, align 4, !tbaa !1
  %270 = load i8*, i8** %key.addr, align 8, !tbaa !5
  %271 = load i8*, i8** %value.addr, align 8, !tbaa !5
  %272 = load i32, i32* %value_size.addr, align 4, !tbaa !1
  %call405 = call i32 %265(i8* %267, %struct._IjsServerCtx* %268, i32 %269, i8* %270, i8* %271, i32 %272) #6
  store i32 %call405, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.406

cleanup.406:                                      ; preds = %if.else.404, %cleanup, %if.end.314, %if.end.247, %if.end.172, %if.end.108, %if.end.42
  %273 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #1
  %274 = load i32, i32* %retval
  ret i32 %274
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_parse_int(i8* %value, i32 %size, i32* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %result.addr = alloca i32*, align 8
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %sign = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c = alloca i8, align 1
  store i8* %value, i8** %value.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !1
  store i32* %result, i32** %result.addr, align 8, !tbaa !5
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %num, align 4, !tbaa !1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 1, i32* %sign, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  %3 = load i32, i32* %i, align 4, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !1
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %value.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !35
  %conv = sext i8 %7 to i32
  %cmp1 = icmp eq i32 %conv, 45
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %sign, align 4, !tbaa !1
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !1
  %10 = load i32, i32* %size.addr, align 4, !tbaa !1
  %cmp5 = icmp eq i32 %9, %10
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

if.end.8:                                         ; preds = %if.end.4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %12 = load i32, i32* %size.addr, align 4, !tbaa !1
  %cmp9 = icmp slt i32 %11, %12
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom11 = sext i32 %13 to i64
  %14 = load i8*, i8** %value.addr, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 %idxprom11
  %15 = load i8, i8* %arrayidx12, align 1, !tbaa !35
  store i8 %15, i8* %c, align 1, !tbaa !35
  %16 = load i8, i8* %c, align 1, !tbaa !35
  %conv13 = sext i8 %16 to i32
  %cmp14 = icmp slt i32 %conv13, 48
  br i1 %cmp14, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %17 = load i8, i8* %c, align 1, !tbaa !35
  %conv16 = sext i8 %17 to i32
  %cmp17 = icmp sgt i32 %conv16, 57
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %for.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %lor.lhs.false
  %18 = load i32, i32* %num, align 4, !tbaa !1
  %mul = mul nsw i32 %18, 10
  %19 = load i8, i8* %c, align 1, !tbaa !35
  %conv21 = sext i8 %19 to i32
  %sub = sub nsw i32 %conv21, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* %num, align 4, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %inc22 = add nsw i32 %20, 1
  store i32 %inc22, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %num, align 4, !tbaa !1
  %22 = load i32*, i32** %result.addr, align 8, !tbaa !5
  store i32 %21, i32* %22, align 4, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

cleanup.23:                                       ; preds = %for.end, %cleanup, %if.then.7, %if.then
  %23 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_parse_float(i8* %value, i32 %size, double* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %result.addr = alloca double*, align 8
  %buf = alloca [256 x i8], align 16
  %tail = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %value, i8** %value.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !1
  store double* %result, double** %result.addr, align 8, !tbaa !5
  %0 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %1 = bitcast i8** %tail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !1
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %cmp = icmp ugt i64 %conv, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %3 = load i8*, i8** %value.addr, align 8, !tbaa !5
  %4 = load i32, i32* %size.addr, align 4, !tbaa !1
  %conv2 = sext i32 %4 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* %3, i64 %conv2) #5
  %5 = load i32, i32* %size.addr, align 4, !tbaa !1
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !35
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call4 = call double @strtod(i8* %arraydecay3, i8** %tail) #5
  %6 = load double*, double** %result.addr, align 8, !tbaa !5
  store double %call4, double* %6, align 8, !tbaa !43
  %7 = load i8*, i8** %tail, align 8, !tbaa !5
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %cmp6 = icmp eq i8* %7, %arraydecay5
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then
  %8 = bitcast i8** %tail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #2

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_get_param(%struct._IjsServerCtx* %ctx, i32 %job_id, i8* %key, i8* %value, i32 %value_size) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %job_id.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %value_size.addr = alloca i32, align 4
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store i32 %job_id, i32* %job_id.addr, align 4, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !5
  store i8* %value, i8** %value.addr, align 8, !tbaa !5
  store i32 %value_size, i32* %value_size.addr, align 4, !tbaa !1
  %0 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %get_cb = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %0, i32 0, i32 17
  %1 = load i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)*, i32 (i8*, %struct._IjsServerCtx*, i32, i8*, i8*, i32)** %get_cb, align 8, !tbaa !30
  %2 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %get_cb_data = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %2, i32 0, i32 18
  %3 = load i8*, i8** %get_cb_data, align 8, !tbaa !31
  %4 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %5 = load i32, i32* %job_id.addr, align 4, !tbaa !1
  %6 = load i8*, i8** %key.addr, align 8, !tbaa !5
  %7 = load i8*, i8** %value.addr, align 8, !tbaa !5
  %8 = load i32, i32* %value_size.addr, align 4, !tbaa !1
  %call = call i32 %1(i8* %3, %struct._IjsServerCtx* %4, i32 %5, i8* %6, i8* %7, i32 %8) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ijs_server_read_data(%struct._IjsServerCtx* %ctx, i8* %buf, i32 %size) #0 {
entry:
  %ctx.addr = alloca %struct._IjsServerCtx*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct._IjsServerCtx* %ctx, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._IjsServerCtx*, %struct._IjsServerCtx** %ctx.addr, align 8, !tbaa !5
  %recv_chan = getelementptr inbounds %struct._IjsServerCtx, %struct._IjsServerCtx* %1, i32 0, i32 3
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %3 = load i32, i32* %size.addr, align 4, !tbaa !1
  %call = call i32 @ijs_recv_read(%struct.IjsRecvChan* %recv_chan, i8* %2, i32 %3) #6
  store i32 %call, i32* %status, align 4, !tbaa !1
  %4 = load i32, i32* %status, align 4, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !1
  %cmp = icmp eq i32 %4, %5
  %cond = select i1 %cmp, i32 0, i32 -2
  %6 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret i32 %cond
}

declare i32 @ijs_recv_read(%struct.IjsRecvChan*, i8*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !2, i64 4112}
!8 = !{!"_IjsServerCtx", !2, i64 0, !2, i64 4, !9, i64 8, !10, i64 4112, !2, i64 8220, !6, i64 8224, !6, i64 8232, !6, i64 8240, !6, i64 8248, !6, i64 8256, !6, i64 8264, !6, i64 8272, !6, i64 8280, !6, i64 8288, !6, i64 8296, !6, i64 8304, !6, i64 8312, !6, i64 8320, !6, i64 8328, !2, i64 8336, !2, i64 8340, !6, i64 8344, !2, i64 8352, !2, i64 8356, !6, i64 8360, !2, i64 8368, !2, i64 8372, !6, i64 8376, !2, i64 8384, !2, i64 8388}
!9 = !{!"", !2, i64 0, !3, i64 4, !2, i64 4100}
!10 = !{!"", !2, i64 0, !3, i64 4, !2, i64 4100, !2, i64 4104}
!11 = !{!8, !2, i64 8}
!12 = !{!8, !2, i64 8336}
!13 = !{!8, !2, i64 8340}
!14 = !{!8, !6, i64 8344}
!15 = !{!8, !2, i64 8356}
!16 = !{!8, !6, i64 8360}
!17 = !{!8, !6, i64 8376}
!18 = !{!8, !6, i64 8224}
!19 = !{!8, !6, i64 8240}
!20 = !{!8, !6, i64 8232}
!21 = !{!8, !6, i64 8248}
!22 = !{!8, !6, i64 8256}
!23 = !{!8, !6, i64 8264}
!24 = !{!8, !6, i64 8272}
!25 = !{!8, !6, i64 8280}
!26 = !{!8, !6, i64 8288}
!27 = !{!8, !6, i64 8296}
!28 = !{!8, !6, i64 8304}
!29 = !{!8, !6, i64 8312}
!30 = !{!8, !6, i64 8320}
!31 = !{!8, !6, i64 8328}
!32 = !{!8, !2, i64 8220}
!33 = !{!8, !2, i64 8216}
!34 = !{!8, !2, i64 8212}
!35 = !{!3, !3, i64 0}
!36 = !{!8, !2, i64 8352}
!37 = !{!8, !2, i64 8368}
!38 = !{!8, !2, i64 8372}
!39 = !{!8, !2, i64 8384}
!40 = !{!8, !2, i64 8388}
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !3, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"double", !3, i64 0}
