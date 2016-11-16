; ModuleID = './tpix_manager.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opj_codestream_info = type { double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.opj_marker_info*, i32, i32, i32, i32, %struct.opj_tile_info* }
%struct.opj_marker_info = type { i16, i64, i32 }
%struct.opj_tile_info = type { double*, i32, i32, i32, i32, [33 x i32], [33 x i32], [33 x i32], [33 x i32], %struct.opj_packet_info*, i32, double, i32, %struct.opj_marker_info*, i32, i32, %struct.opj_tp_info* }
%struct.opj_packet_info = type { i64, i64, i64, double }
%struct.opj_tp_info = type { i32, i32, i32, i32, i32 }
%struct.opj_stream_private = type { i8*, i64, i64 (i8*, i64, i8*)*, i64 (i8*, i64, i8*)*, i64 (i64, i8*)*, i32 (i64, i8*)*, i8*, i8*, i64 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i32 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i64, i64, i64, i32 }
%struct.opj_event_mgr = type { i8*, i8*, i8*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }

; Function Attrs: nounwind uwtable
define i32 @opj_write_tpix(i32 %coff, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %j2klen, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %coff.addr = alloca i32, align 4
  %j2klen.addr = alloca i32, align 4
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_data_header = alloca [4 x i8], align 1
  %len = alloca i32, align 4
  %lenp = alloca i64, align 8
  store i32 %coff, i32* %coff.addr, align 4, !tbaa !1
  store i32 %j2klen, i32* %j2klen.addr, align 4, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %0 = bitcast [4 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call = call i64 @opj_stream_tell(%struct.opj_stream_private* %3) #4
  store i64 %call, i64* %lenp, align 8, !tbaa !7
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %5 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call1 = call i64 @opj_stream_skip(%struct.opj_stream_private* %4, i64 4, %struct.opj_event_mgr* %5) #4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 1953524088, i32 4) #4
  %6 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %7 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call3 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %6, i8* %arraydecay2, i64 4, %struct.opj_event_mgr* %7) #4
  %8 = load i32, i32* %coff.addr, align 4, !tbaa !1
  %9 = load i32, i32* %j2klen.addr, align 4, !tbaa !1
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %11 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call4 = call i32 @opj_write_tpixfaix(i32 %8, i32 0, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %9, %struct.opj_stream_private* %10, %struct.opj_event_mgr* %11) #4
  %12 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call5 = call i64 @opj_stream_tell(%struct.opj_stream_private* %12) #4
  %13 = load i64, i64* %lenp, align 8, !tbaa !7
  %sub = sub nsw i64 %call5, %13
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %len, align 4, !tbaa !1
  %14 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %15 = load i64, i64* %lenp, align 8, !tbaa !7
  %16 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call6 = call i64 @opj_stream_skip(%struct.opj_stream_private* %14, i64 %15, %struct.opj_event_mgr* %16) #4
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %17 = load i32, i32* %len, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay7, i32 %17, i32 4) #4
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay8 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %19 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call9 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %18, i8* %arraydecay8, i64 4, %struct.opj_event_mgr* %19) #4
  %20 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %21 = load i64, i64* %lenp, align 8, !tbaa !7
  %22 = load i32, i32* %len, align 4, !tbaa !1
  %conv10 = zext i32 %22 to i64
  %add = add nsw i64 %21, %conv10
  %23 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call11 = call i32 @opj_stream_seek(%struct.opj_stream_private* %20, i64 %add, %struct.opj_event_mgr* %23) #4
  %24 = load i32, i32* %len, align 4, !tbaa !1
  %25 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast [4 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret i32 %24
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i64 @opj_stream_tell(%struct.opj_stream_private*) #2

declare i64 @opj_stream_skip(%struct.opj_stream_private*, i64, %struct.opj_event_mgr*) #2

declare void @opj_write_bytes_LE(i8*, i32, i32) #2

declare i64 @opj_stream_write_data(%struct.opj_stream_private*, i8*, i64, %struct.opj_event_mgr*) #2

; Function Attrs: nounwind uwtable
define i32 @opj_write_tpixfaix(i32 %coff, i32 %compno, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %j2klen, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %coff.addr = alloca i32, align 4
  %compno.addr = alloca i32, align 4
  %j2klen.addr = alloca i32, align 4
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %len = alloca i32, align 4
  %lenp = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %Aux = alloca i32, align 4
  %num_max_tile_parts = alloca i32, align 4
  %size_of_coding = alloca i32, align 4
  %tp = alloca %struct.opj_tp_info, align 4
  %l_data_header = alloca [8 x i8], align 1
  %version = alloca i32, align 4
  store i32 %coff, i32* %coff.addr, align 4, !tbaa !1
  store i32 %compno, i32* %compno.addr, align 4, !tbaa !1
  store i32 %j2klen, i32* %j2klen.addr, align 4, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %Aux to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %num_max_tile_parts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %size_of_coding to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.opj_tp_info* %tp to i8*
  call void @llvm.lifetime.start(i64 20, i8* %7) #1
  %8 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %version to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %call = call i32 @get_num_max_tile_parts(%struct.opj_codestream_info* byval align 8 %cstr_info) #4
  store i32 %call, i32* %num_max_tile_parts, align 4, !tbaa !1
  %10 = load i32, i32* %j2klen.addr, align 4, !tbaa !1
  %conv = sitofp i32 %10 to double
  %call1 = call double @pow(double 2.000000e+00, double 3.200000e+01) #5
  %cmp = fcmp ogt double %conv, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 8, i32* %size_of_coding, align 4, !tbaa !1
  %11 = load i32, i32* %num_max_tile_parts, align 4, !tbaa !1
  %cmp3 = icmp eq i32 %11, 1
  %cond = select i1 %cmp3, i32 1, i32 3
  store i32 %cond, i32* %version, align 4, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 4, i32* %size_of_coding, align 4, !tbaa !1
  %12 = load i32, i32* %num_max_tile_parts, align 4, !tbaa !1
  %cmp5 = icmp eq i32 %12, 1
  %cond7 = select i1 %cmp5, i32 0, i32 2
  store i32 %cond7, i32* %version, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call8 = call i64 @opj_stream_tell(%struct.opj_stream_private* %13) #4
  store i64 %call8, i64* %lenp, align 8, !tbaa !7
  %14 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %15 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call9 = call i64 @opj_stream_skip(%struct.opj_stream_private* %14, i64 4, %struct.opj_event_mgr* %15) #4
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 1717660024, i32 4) #4
  %16 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay10 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call11 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %16, i8* %arraydecay10, i64 4, %struct.opj_event_mgr* %17) #4
  %arraydecay12 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %18 = load i32, i32* %version, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay12, i32 %18, i32 1) #4
  %19 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay13 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %20 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call14 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %19, i8* %arraydecay13, i64 1, %struct.opj_event_mgr* %20) #4
  %arraydecay15 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %21 = load i32, i32* %num_max_tile_parts, align 4, !tbaa !1
  %22 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay15, i32 %21, i32 %22) #4
  %23 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay16 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %24 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv17 = sext i32 %24 to i64
  %25 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call18 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %23, i8* %arraydecay16, i64 %conv17, %struct.opj_event_mgr* %25) #4
  %arraydecay19 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %tw = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 10
  %26 = load i32, i32* %tw, align 4, !tbaa !9
  %th = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 11
  %27 = load i32, i32* %th, align 4, !tbaa !12
  %mul = mul nsw i32 %26, %27
  %28 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay19, i32 %mul, i32 %28) #4
  %29 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay20 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %30 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv21 = sext i32 %30 to i64
  %31 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call22 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %29, i8* %arraydecay20, i64 %conv21, %struct.opj_event_mgr* %31) #4
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.89, %if.end
  %32 = load i32, i32* %i, align 4, !tbaa !1
  %tw23 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 10
  %33 = load i32, i32* %tw23, align 4, !tbaa !9
  %th24 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 11
  %34 = load i32, i32* %th24, align 4, !tbaa !12
  %mul25 = mul nsw i32 %33, %34
  %cmp26 = icmp slt i32 %32, %mul25
  br i1 %cmp26, label %for.body, label %for.end.91

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %for.body
  %35 = load i32, i32* %j, align 4, !tbaa !1
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %36 to i64
  %tile = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 21
  %37 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %37, i64 %idxprom
  %num_tps = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx, i32 0, i32 15
  %38 = load i32, i32* %num_tps, align 4, !tbaa !14
  %cmp29 = icmp slt i32 %35, %38
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.28
  %39 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom32 = sext i32 %39 to i64
  %40 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom33 = sext i32 %40 to i64
  %tile34 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 21
  %41 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile34, align 8, !tbaa !13
  %arrayidx35 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %41, i64 %idxprom33
  %tp36 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx35, i32 0, i32 16
  %42 = load %struct.opj_tp_info*, %struct.opj_tp_info** %tp36, align 8, !tbaa !16
  %arrayidx37 = getelementptr inbounds %struct.opj_tp_info, %struct.opj_tp_info* %42, i64 %idxprom32
  %43 = bitcast %struct.opj_tp_info* %tp to i8*
  %44 = bitcast %struct.opj_tp_info* %arrayidx37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 20, i32 4, i1 false), !tbaa.struct !17
  %arraydecay38 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %tp_start_pos = getelementptr inbounds %struct.opj_tp_info, %struct.opj_tp_info* %tp, i32 0, i32 0
  %45 = load i32, i32* %tp_start_pos, align 4, !tbaa !18
  %46 = load i32, i32* %coff.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %45, %46
  %47 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay38, i32 %sub, i32 %47) #4
  %48 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay39 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %49 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv40 = sext i32 %49 to i64
  %50 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call41 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %48, i8* %arraydecay39, i64 %conv40, %struct.opj_event_mgr* %50) #4
  %arraydecay42 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %tp_end_pos = getelementptr inbounds %struct.opj_tp_info, %struct.opj_tp_info* %tp, i32 0, i32 2
  %51 = load i32, i32* %tp_end_pos, align 4, !tbaa !20
  %tp_start_pos43 = getelementptr inbounds %struct.opj_tp_info, %struct.opj_tp_info* %tp, i32 0, i32 0
  %52 = load i32, i32* %tp_start_pos43, align 4, !tbaa !18
  %sub44 = sub nsw i32 %51, %52
  %add = add nsw i32 %sub44, 1
  %53 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay42, i32 %add, i32 %53) #4
  %54 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay45 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %55 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv46 = sext i32 %55 to i64
  %56 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call47 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %54, i8* %arraydecay45, i64 %conv46, %struct.opj_event_mgr* %56) #4
  %57 = load i32, i32* %version, align 4, !tbaa !1
  %and = and i32 %57, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.48, label %if.end.70

if.then.48:                                       ; preds = %for.body.31
  %58 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom49 = sext i32 %58 to i64
  %tile50 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 21
  %59 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile50, align 8, !tbaa !13
  %arrayidx51 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %59, i64 %idxprom49
  %num_tps52 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx51, i32 0, i32 15
  %60 = load i32, i32* %num_tps52, align 4, !tbaa !14
  %cmp53 = icmp eq i32 %60, 1
  br i1 %cmp53, label %land.lhs.true, label %if.else.64

land.lhs.true:                                    ; preds = %if.then.48
  %61 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %idxprom55 = sext i32 %61 to i64
  %numdecompos = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 14
  %62 = load i32*, i32** %numdecompos, align 8, !tbaa !21
  %arrayidx56 = getelementptr inbounds i32, i32* %62, i64 %idxprom55
  %63 = load i32, i32* %arrayidx56, align 4, !tbaa !1
  %cmp57 = icmp sgt i32 %63, 1
  br i1 %cmp57, label %if.then.59, label %if.else.64

if.then.59:                                       ; preds = %land.lhs.true
  %64 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %idxprom60 = sext i32 %64 to i64
  %numdecompos61 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 14
  %65 = load i32*, i32** %numdecompos61, align 8, !tbaa !21
  %arrayidx62 = getelementptr inbounds i32, i32* %65, i64 %idxprom60
  %66 = load i32, i32* %arrayidx62, align 4, !tbaa !1
  %add63 = add nsw i32 %66, 1
  store i32 %add63, i32* %Aux, align 4, !tbaa !1
  br label %if.end.66

if.else.64:                                       ; preds = %land.lhs.true, %if.then.48
  %67 = load i32, i32* %j, align 4, !tbaa !1
  %add65 = add nsw i32 %67, 1
  store i32 %add65, i32* %Aux, align 4, !tbaa !1
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.59
  %arraydecay67 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %68 = load i32, i32* %Aux, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay67, i32 %68, i32 4) #4
  %69 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay68 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %70 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call69 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %69, i8* %arraydecay68, i64 4, %struct.opj_event_mgr* %70) #4
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.66, %for.body.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.70
  %71 = load i32, i32* %j, align 4, !tbaa !1
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %j, align 4, !tbaa !1
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  br label %while.cond

while.cond:                                       ; preds = %if.end.85, %for.end
  %72 = load i32, i32* %j, align 4, !tbaa !1
  %73 = load i32, i32* %num_max_tile_parts, align 4, !tbaa !1
  %cmp71 = icmp slt i32 %72, %73
  br i1 %cmp71, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay73 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %74 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay73, i32 0, i32 %74) #4
  %75 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay74 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %76 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv75 = sext i32 %76 to i64
  %77 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call76 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %75, i8* %arraydecay74, i64 %conv75, %struct.opj_event_mgr* %77) #4
  %arraydecay77 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %78 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay77, i32 0, i32 %78) #4
  %79 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay78 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %80 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv79 = sext i32 %80 to i64
  %81 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call80 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %79, i8* %arraydecay78, i64 %conv79, %struct.opj_event_mgr* %81) #4
  %82 = load i32, i32* %version, align 4, !tbaa !1
  %and81 = and i32 %82, 2
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %while.body
  %arraydecay84 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay84, i32 0, i32 4) #4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %while.body
  %83 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay86 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %84 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call87 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %83, i8* %arraydecay86, i64 4, %struct.opj_event_mgr* %84) #4
  %85 = load i32, i32* %j, align 4, !tbaa !1
  %inc88 = add nsw i32 %85, 1
  store i32 %inc88, i32* %j, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.89

for.inc.89:                                       ; preds = %while.end
  %86 = load i32, i32* %i, align 4, !tbaa !1
  %inc90 = add nsw i32 %86, 1
  store i32 %inc90, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end.91:                                       ; preds = %for.cond
  %87 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call92 = call i64 @opj_stream_tell(%struct.opj_stream_private* %87) #4
  %88 = load i64, i64* %lenp, align 8, !tbaa !7
  %sub93 = sub nsw i64 %call92, %88
  %conv94 = trunc i64 %sub93 to i32
  store i32 %conv94, i32* %len, align 4, !tbaa !1
  %89 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %90 = load i64, i64* %lenp, align 8, !tbaa !7
  %91 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call95 = call i32 @opj_stream_seek(%struct.opj_stream_private* %89, i64 %90, %struct.opj_event_mgr* %91) #4
  %arraydecay96 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %92 = load i32, i32* %len, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay96, i32 %92, i32 4) #4
  %93 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay97 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %94 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call98 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %93, i8* %arraydecay97, i64 4, %struct.opj_event_mgr* %94) #4
  %95 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %96 = load i64, i64* %lenp, align 8, !tbaa !7
  %97 = load i32, i32* %len, align 4, !tbaa !1
  %conv99 = zext i32 %97 to i64
  %add100 = add nsw i64 %96, %conv99
  %98 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call101 = call i32 @opj_stream_seek(%struct.opj_stream_private* %95, i64 %add100, %struct.opj_event_mgr* %98) #4
  %99 = load i32, i32* %len, align 4, !tbaa !1
  %100 = bitcast i32* %version to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast %struct.opj_tp_info* %tp to i8*
  call void @llvm.lifetime.end(i64 20, i8* %102) #1
  %103 = bitcast i32* %size_of_coding to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %num_max_tile_parts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %Aux to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  ret i32 %99
}

declare i32 @opj_stream_seek(%struct.opj_stream_private*, i64, %struct.opj_event_mgr*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @get_num_max_tile_parts(%struct.opj_codestream_info* byval align 8 %cstr_info) #0 {
entry:
  %num_max_tp = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = bitcast i32* %num_max_tp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %num_max_tp, align 4, !tbaa !1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !1
  %tw = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 10
  %3 = load i32, i32* %tw, align 4, !tbaa !9
  %th = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 11
  %4 = load i32, i32* %th, align 4, !tbaa !12
  %mul = mul nsw i32 %3, %4
  %cmp = icmp slt i32 %2, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %5 to i64
  %tile = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 21
  %6 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %6, i64 %idxprom
  %num_tps = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx, i32 0, i32 15
  %7 = load i32, i32* %num_tps, align 4, !tbaa !14
  %8 = load i32, i32* %num_max_tp, align 4, !tbaa !1
  %cmp1 = icmp sgt i32 %7, %8
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom2 = sext i32 %9 to i64
  %tile3 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 21
  %10 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile3, align 8, !tbaa !13
  %arrayidx4 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %10, i64 %idxprom2
  %num_tps5 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx4, i32 0, i32 15
  %11 = load i32, i32* %num_tps5, align 4, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %12 = load i32, i32* %num_max_tp, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ]
  store i32 %cond, i32* %num_max_tp, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %num_max_tp, align 4, !tbaa !1
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %num_max_tp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  ret i32 %14
}

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !2, i64 44}
!10 = !{!"opj_codestream_info", !11, i64 0, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !3, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !2, i64 48, !2, i64 52, !2, i64 56, !6, i64 64, !2, i64 72, !6, i64 80, !2, i64 88, !2, i64 92, !2, i64 96, !2, i64 100, !6, i64 104}
!11 = !{!"double", !3, i64 0}
!12 = !{!10, !2, i64 48}
!13 = !{!10, !6, i64 104}
!14 = !{!15, !2, i64 596}
!15 = !{!"opj_tile_info", !6, i64 0, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !3, i64 24, !3, i64 156, !3, i64 288, !3, i64 420, !6, i64 552, !2, i64 560, !11, i64 568, !2, i64 576, !6, i64 584, !2, i64 592, !2, i64 596, !6, i64 600}
!16 = !{!15, !6, i64 600}
!17 = !{i64 0, i64 4, !1, i64 4, i64 4, !1, i64 8, i64 4, !1, i64 12, i64 4, !1, i64 16, i64 4, !1}
!18 = !{!19, !2, i64 0}
!19 = !{!"opj_tp_info", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16}
!20 = !{!19, !2, i64 8}
!21 = !{!10, !6, i64 64}
