; ModuleID = './cidx_manager.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opj_stream_private = type { i8*, i64, i64 (i8*, i64, i8*)*, i64 (i8*, i64, i8*)*, i64 (i64, i8*)*, i32 (i64, i8*)*, i8*, i8*, i64 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i32 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i64, i64, i64, i32 }
%struct.opj_codestream_info = type { double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.opj_marker_info*, i32, i32, i32, i32, %struct.opj_tile_info* }
%struct.opj_marker_info = type { i16, i64, i32 }
%struct.opj_tile_info = type { double*, i32, i32, i32, i32, [33 x i32], [33 x i32], [33 x i32], [33 x i32], %struct.opj_packet_info*, i32, double, i32, %struct.opj_marker_info*, i32, i32, %struct.opj_tp_info* }
%struct.opj_packet_info = type { i64, i64, i64, double }
%struct.opj_tp_info = type { i32, i32, i32, i32, i32 }
%struct.opj_event_mgr = type { i8*, i8*, i8*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.opj_jp2_box = type { i32, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @opj_write_cidx(i32 %offset, %struct.opj_stream_private* %cio, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %j2klen, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %offset.addr = alloca i32, align 4
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %j2klen.addr = alloca i32, align 4
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %i = alloca i32, align 4
  %lenp = alloca i64, align 8
  %len = alloca i32, align 4
  %box = alloca %struct.opj_jp2_box*, align 8
  %num_box = alloca i32, align 4
  %EPHused = alloca i32, align 4
  %l_data_header = alloca [4 x i8], align 1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  store i32 %j2klen, i32* %j2klen.addr, align 4, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.opj_jp2_box** %box to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %num_box to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %num_box, align 4, !tbaa !1
  %5 = bitcast i32* %EPHused to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast [4 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i64 -1, i64* %lenp, align 8, !tbaa !7
  %call = call noalias i8* @calloc(i64 32, i64 12) #4
  %7 = bitcast i8* %call to %struct.opj_jp2_box*
  store %struct.opj_jp2_box* %7, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %cmp = icmp slt i32 %8, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !1
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %11 = load i64, i64* %lenp, align 8, !tbaa !7
  %12 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call1 = call i32 @opj_stream_seek(%struct.opj_stream_private* %10, i64 %11, %struct.opj_event_mgr* %12) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call2 = call i64 @opj_stream_tell(%struct.opj_stream_private* %13) #5
  store i64 %call2, i64* %lenp, align 8, !tbaa !7
  %14 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %15 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call3 = call i64 @opj_stream_skip(%struct.opj_stream_private* %14, i64 4, %struct.opj_event_mgr* %15) #5
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 1667851384, i32 4) #5
  %16 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay4 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call5 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %16, i8* %arraydecay4, i64 4, %struct.opj_event_mgr* %17) #5
  %18 = load i32, i32* %offset.addr, align 4, !tbaa !1
  %codestream_size = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 20
  %19 = load i32, i32* %codestream_size, align 4, !tbaa !9
  %20 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %21 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  call void @opj_write_cptr(i32 %18, i32 %19, %struct.opj_stream_private* %20, %struct.opj_event_mgr* %21) #5
  %22 = load i32, i32* %i, align 4, !tbaa !1
  %23 = load i32, i32* %num_box, align 4, !tbaa !1
  %24 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %25 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %26 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  call void @opj_write_manf(i32 %22, i32 %23, %struct.opj_jp2_box* %24, %struct.opj_stream_private* %25, %struct.opj_event_mgr* %26) #5
  store i32 0, i32* %num_box, align 4, !tbaa !1
  %27 = load i32, i32* %offset.addr, align 4, !tbaa !1
  %28 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %29 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call6 = call i32 @opj_write_mainmhix(i32 %27, %struct.opj_codestream_info* byval align 8 %cstr_info, %struct.opj_stream_private* %28, %struct.opj_event_mgr* %29) #5
  %30 = load i32, i32* %num_box, align 4, !tbaa !1
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %31, i64 %idxprom
  %length = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx, i32 0, i32 0
  store i32 %call6, i32* %length, align 4, !tbaa !12
  %32 = load i32, i32* %num_box, align 4, !tbaa !1
  %idxprom7 = sext i32 %32 to i64
  %33 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %33, i64 %idxprom7
  %type = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx8, i32 0, i32 1
  store i32 1835559288, i32* %type, align 4, !tbaa !14
  %34 = load i32, i32* %num_box, align 4, !tbaa !1
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %num_box, align 4, !tbaa !1
  %35 = load i32, i32* %offset.addr, align 4, !tbaa !1
  %36 = load i32, i32* %j2klen.addr, align 4, !tbaa !1
  %37 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %38 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call9 = call i32 @opj_write_tpix(i32 %35, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %36, %struct.opj_stream_private* %37, %struct.opj_event_mgr* %38) #5
  %39 = load i32, i32* %num_box, align 4, !tbaa !1
  %idxprom10 = sext i32 %39 to i64
  %40 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %40, i64 %idxprom10
  %length12 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx11, i32 0, i32 0
  store i32 %call9, i32* %length12, align 4, !tbaa !12
  %41 = load i32, i32* %num_box, align 4, !tbaa !1
  %idxprom13 = sext i32 %41 to i64
  %42 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %42, i64 %idxprom13
  %type15 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx14, i32 0, i32 1
  store i32 1953524088, i32* %type15, align 4, !tbaa !14
  %43 = load i32, i32* %num_box, align 4, !tbaa !1
  %inc16 = add nsw i32 %43, 1
  store i32 %inc16, i32* %num_box, align 4, !tbaa !1
  %44 = load i32, i32* %offset.addr, align 4, !tbaa !1
  %45 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %46 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call17 = call i32 @opj_write_thix(i32 %44, %struct.opj_codestream_info* byval align 8 %cstr_info, %struct.opj_stream_private* %45, %struct.opj_event_mgr* %46) #5
  %47 = load i32, i32* %num_box, align 4, !tbaa !1
  %idxprom18 = sext i32 %47 to i64
  %48 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %48, i64 %idxprom18
  %length20 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx19, i32 0, i32 0
  store i32 %call17, i32* %length20, align 4, !tbaa !12
  %49 = load i32, i32* %num_box, align 4, !tbaa !1
  %idxprom21 = sext i32 %49 to i64
  %50 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx22 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %50, i64 %idxprom21
  %type23 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx22, i32 0, i32 1
  store i32 1952999800, i32* %type23, align 4, !tbaa !14
  %51 = load i32, i32* %num_box, align 4, !tbaa !1
  %inc24 = add nsw i32 %51, 1
  store i32 %inc24, i32* %num_box, align 4, !tbaa !1
  %52 = load i32, i32* %offset.addr, align 4, !tbaa !1
  %marker = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 16
  %53 = load %struct.opj_marker_info*, %struct.opj_marker_info** %marker, align 8, !tbaa !15
  %marknum = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 15
  %54 = load i32, i32* %marknum, align 4, !tbaa !16
  %55 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %56 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call25 = call i32 @opj_check_EPHuse(i32 %52, %struct.opj_marker_info* %53, i32 %54, %struct.opj_stream_private* %55, %struct.opj_event_mgr* %56) #5
  store i32 %call25, i32* %EPHused, align 4, !tbaa !1
  %57 = load i32, i32* %offset.addr, align 4, !tbaa !1
  %58 = load i32, i32* %EPHused, align 4, !tbaa !1
  %59 = load i32, i32* %j2klen.addr, align 4, !tbaa !1
  %60 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %61 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call26 = call i32 @opj_write_ppix(i32 %57, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %58, i32 %59, %struct.opj_stream_private* %60, %struct.opj_event_mgr* %61) #5
  %62 = load i32, i32* %num_box, align 4, !tbaa !1
  %idxprom27 = sext i32 %62 to i64
  %63 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %63, i64 %idxprom27
  %length29 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx28, i32 0, i32 0
  store i32 %call26, i32* %length29, align 4, !tbaa !12
  %64 = load i32, i32* %num_box, align 4, !tbaa !1
  %idxprom30 = sext i32 %64 to i64
  %65 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx31 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %65, i64 %idxprom30
  %type32 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx31, i32 0, i32 1
  store i32 1886415224, i32* %type32, align 4, !tbaa !14
  %66 = load i32, i32* %num_box, align 4, !tbaa !1
  %inc33 = add nsw i32 %66, 1
  store i32 %inc33, i32* %num_box, align 4, !tbaa !1
  %67 = load i32, i32* %offset.addr, align 4, !tbaa !1
  %68 = load i32, i32* %EPHused, align 4, !tbaa !1
  %69 = load i32, i32* %j2klen.addr, align 4, !tbaa !1
  %70 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %71 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call34 = call i32 @opj_write_phix(i32 %67, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %68, i32 %69, %struct.opj_stream_private* %70, %struct.opj_event_mgr* %71) #5
  %72 = load i32, i32* %num_box, align 4, !tbaa !1
  %idxprom35 = sext i32 %72 to i64
  %73 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx36 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %73, i64 %idxprom35
  %length37 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx36, i32 0, i32 0
  store i32 %call34, i32* %length37, align 4, !tbaa !12
  %74 = load i32, i32* %num_box, align 4, !tbaa !1
  %idxprom38 = sext i32 %74 to i64
  %75 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx39 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %75, i64 %idxprom38
  %type40 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx39, i32 0, i32 1
  store i32 1885890936, i32* %type40, align 4, !tbaa !14
  %76 = load i32, i32* %num_box, align 4, !tbaa !1
  %inc41 = add nsw i32 %76, 1
  store i32 %inc41, i32* %num_box, align 4, !tbaa !1
  %77 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call42 = call i64 @opj_stream_tell(%struct.opj_stream_private* %77) #5
  %78 = load i64, i64* %lenp, align 8, !tbaa !7
  %sub = sub nsw i64 %call42, %78
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %len, align 4, !tbaa !1
  %79 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %80 = load i64, i64* %lenp, align 8, !tbaa !7
  %81 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call43 = call i32 @opj_stream_seek(%struct.opj_stream_private* %79, i64 %80, %struct.opj_event_mgr* %81) #5
  %arraydecay44 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %82 = load i32, i32* %len, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay44, i32 %82, i32 4) #5
  %83 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay45 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %84 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call46 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %83, i8* %arraydecay45, i64 4, %struct.opj_event_mgr* %84) #5
  %85 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %86 = load i64, i64* %lenp, align 8, !tbaa !7
  %87 = load i32, i32* %len, align 4, !tbaa !1
  %conv47 = zext i32 %87 to i64
  %add = add nsw i64 %86, %conv47
  %88 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call48 = call i32 @opj_stream_seek(%struct.opj_stream_private* %85, i64 %add, %struct.opj_event_mgr* %88) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %89 = load i32, i32* %i, align 4, !tbaa !1
  %inc49 = add nsw i32 %89, 1
  store i32 %inc49, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %90 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %91 = bitcast %struct.opj_jp2_box* %90 to i8*
  call void @free(i8* %91) #4
  %92 = load i32, i32* %len, align 4, !tbaa !1
  %93 = bitcast [4 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %EPHused to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %num_box to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast %struct.opj_jp2_box** %box to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  ret i32 %92
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare i32 @opj_stream_seek(%struct.opj_stream_private*, i64, %struct.opj_event_mgr*) #3

declare i64 @opj_stream_tell(%struct.opj_stream_private*) #3

declare i64 @opj_stream_skip(%struct.opj_stream_private*, i64, %struct.opj_event_mgr*) #3

declare void @opj_write_bytes_LE(i8*, i32, i32) #3

declare i64 @opj_stream_write_data(%struct.opj_stream_private*, i8*, i64, %struct.opj_event_mgr*) #3

; Function Attrs: nounwind uwtable
define void @opj_write_cptr(i32 %coff, i32 %clen, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %coff.addr = alloca i32, align 4
  %clen.addr = alloca i32, align 4
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_data_header = alloca [24 x i8], align 16
  %len = alloca i32, align 4
  %lenp = alloca i64, align 8
  store i32 %coff, i32* %coff.addr, align 4, !tbaa !1
  store i32 %clen, i32* %clen.addr, align 4, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %0 = bitcast [24 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call = call i64 @opj_stream_tell(%struct.opj_stream_private* %3) #5
  store i64 %call, i64* %lenp, align 8, !tbaa !7
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %5 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call1 = call i64 @opj_stream_skip(%struct.opj_stream_private* %4, i64 4, %struct.opj_event_mgr* %5) #5
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 1668314226, i32 4) #5
  %arraydecay2 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay2, i64 4
  call void @opj_write_bytes_LE(i8* %add.ptr, i32 0, i32 2) #5
  %arraydecay3 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr4 = getelementptr inbounds i8, i8* %arraydecay3, i64 6
  call void @opj_write_bytes_LE(i8* %add.ptr4, i32 0, i32 2) #5
  %arraydecay5 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr6 = getelementptr inbounds i8, i8* %arraydecay5, i64 8
  %6 = load i32, i32* %coff.addr, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %add.ptr6, i32 %6, i32 8) #5
  %arraydecay7 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr8 = getelementptr inbounds i8, i8* %arraydecay7, i64 16
  %7 = load i32, i32* %clen.addr, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %add.ptr8, i32 %7, i32 8) #5
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay9 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %9 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call10 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %8, i8* %arraydecay9, i64 24, %struct.opj_event_mgr* %9) #5
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call11 = call i64 @opj_stream_tell(%struct.opj_stream_private* %10) #5
  %11 = load i64, i64* %lenp, align 8, !tbaa !7
  %sub = sub nsw i64 %call11, %11
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %len, align 4, !tbaa !1
  %12 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %13 = load i64, i64* %lenp, align 8, !tbaa !7
  %14 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call12 = call i32 @opj_stream_seek(%struct.opj_stream_private* %12, i64 %13, %struct.opj_event_mgr* %14) #5
  %arraydecay13 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %15 = load i32, i32* %len, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay13, i32 %15, i32 4) #5
  %16 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay14 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call15 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %16, i8* %arraydecay14, i64 4, %struct.opj_event_mgr* %17) #5
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %19 = load i64, i64* %lenp, align 8, !tbaa !7
  %20 = load i32, i32* %len, align 4, !tbaa !1
  %conv16 = zext i32 %20 to i64
  %add = add nsw i64 %19, %conv16
  %21 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call17 = call i32 @opj_stream_seek(%struct.opj_stream_private* %18, i64 %add, %struct.opj_event_mgr* %21) #5
  %22 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast [24 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 24, i8* %24) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_write_manf(i32 %second, i32 %v, %struct.opj_jp2_box* %box, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %second.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %box.addr = alloca %struct.opj_jp2_box*, align 8
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_data_header = alloca [4 x i8], align 1
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %lenp = alloca i64, align 8
  store i32 %second, i32* %second.addr, align 4, !tbaa !1
  store i32 %v, i32* %v.addr, align 4, !tbaa !1
  store %struct.opj_jp2_box* %box, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !5
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %0 = bitcast [4 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call = call i64 @opj_stream_tell(%struct.opj_stream_private* %4) #5
  store i64 %call, i64* %lenp, align 8, !tbaa !7
  %5 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call1 = call i64 @opj_stream_skip(%struct.opj_stream_private* %5, i64 4, %struct.opj_event_mgr* %6) #5
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 1835101798, i32 4) #5
  %7 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %8 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call3 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %7, i8* %arraydecay2, i64 4, %struct.opj_event_mgr* %8) #5
  %9 = load i32, i32* %second.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4, !tbaa !1
  %11 = load i32, i32* %v.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay4 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %12 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %13, i64 %idxprom
  %length = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx, i32 0, i32 0
  %14 = load i32, i32* %length, align 4, !tbaa !12
  call void @opj_write_bytes_LE(i8* %arraydecay4, i32 %14, i32 4) #5
  %15 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %16 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call6 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %15, i8* %arraydecay5, i64 4, %struct.opj_event_mgr* %16) #5
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %17 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom8 = sext i32 %17 to i64
  %18 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %18, i64 %idxprom8
  %type = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx9, i32 0, i32 1
  %19 = load i32, i32* %type, align 4, !tbaa !14
  call void @opj_write_bytes_LE(i8* %arraydecay7, i32 %19, i32 4) #5
  %20 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %21 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call11 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %20, i8* %arraydecay10, i64 4, %struct.opj_event_mgr* %21) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %23 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call12 = call i64 @opj_stream_tell(%struct.opj_stream_private* %23) #5
  %24 = load i64, i64* %lenp, align 8, !tbaa !7
  %sub = sub nsw i64 %call12, %24
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %len, align 4, !tbaa !1
  %25 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %26 = load i64, i64* %lenp, align 8, !tbaa !7
  %27 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call13 = call i32 @opj_stream_seek(%struct.opj_stream_private* %25, i64 %26, %struct.opj_event_mgr* %27) #5
  %arraydecay14 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %28 = load i32, i32* %len, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay14, i32 %28, i32 4) #5
  %29 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay15 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %30 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call16 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %29, i8* %arraydecay15, i64 4, %struct.opj_event_mgr* %30) #5
  %31 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %32 = load i64, i64* %lenp, align 8, !tbaa !7
  %33 = load i32, i32* %len, align 4, !tbaa !1
  %conv17 = zext i32 %33 to i64
  %add = add nsw i64 %32, %conv17
  %34 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call18 = call i32 @opj_stream_seek(%struct.opj_stream_private* %31, i64 %add, %struct.opj_event_mgr* %34) #5
  %35 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast [4 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_write_mainmhix(i32 %coff, %struct.opj_codestream_info* byval align 8 %cstr_info, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %coff.addr = alloca i32, align 4
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_data_header = alloca [8 x i8], align 1
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %lenp = alloca i64, align 8
  store i32 %coff, i32* %coff.addr, align 4, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %0 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call = call i64 @opj_stream_tell(%struct.opj_stream_private* %4) #5
  store i64 %call, i64* %lenp, align 8, !tbaa !7
  %5 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call1 = call i64 @opj_stream_skip(%struct.opj_stream_private* %5, i64 4, %struct.opj_event_mgr* %6) #5
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 1835559288, i32 4) #5
  %7 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay2 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %8 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call3 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %7, i8* %arraydecay2, i64 4, %struct.opj_event_mgr* %8) #5
  %arraydecay4 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %main_head_end = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 19
  %9 = load i32, i32* %main_head_end, align 4, !tbaa !17
  %main_head_start = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 18
  %10 = load i32, i32* %main_head_start, align 4, !tbaa !18
  %sub = sub nsw i32 %9, %10
  %add = add nsw i32 %sub, 1
  call void @opj_write_bytes_LE(i8* %arraydecay4, i32 %add, i32 8) #5
  %11 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay5 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %12 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call6 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %11, i8* %arraydecay5, i64 8, %struct.opj_event_mgr* %12) #5
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %marknum = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 15
  %14 = load i32, i32* %marknum, align 4, !tbaa !16
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay7 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %15 to i64
  %marker = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 16
  %16 = load %struct.opj_marker_info*, %struct.opj_marker_info** %marker, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %16, i64 %idxprom
  %type = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %arrayidx, i32 0, i32 0
  %17 = load i16, i16* %type, align 2, !tbaa !19
  %conv = zext i16 %17 to i32
  call void @opj_write_bytes_LE(i8* %arraydecay7, i32 %conv, i32 2) #5
  %arraydecay8 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay8, i64 2
  call void @opj_write_bytes_LE(i8* %add.ptr, i32 0, i32 2) #5
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay9 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %19 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call10 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %18, i8* %arraydecay9, i64 4, %struct.opj_event_mgr* %19) #5
  %arraydecay11 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom12 = sext i32 %20 to i64
  %marker13 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 16
  %21 = load %struct.opj_marker_info*, %struct.opj_marker_info** %marker13, align 8, !tbaa !15
  %arrayidx14 = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %21, i64 %idxprom12
  %pos = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %arrayidx14, i32 0, i32 1
  %22 = load i64, i64* %pos, align 8, !tbaa !22
  %23 = load i32, i32* %coff.addr, align 4, !tbaa !1
  %conv15 = sext i32 %23 to i64
  %sub16 = sub nsw i64 %22, %conv15
  %conv17 = trunc i64 %sub16 to i32
  call void @opj_write_bytes_LE(i8* %arraydecay11, i32 %conv17, i32 8) #5
  %24 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay18 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %25 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call19 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %24, i8* %arraydecay18, i64 8, %struct.opj_event_mgr* %25) #5
  %arraydecay20 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %26 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom21 = sext i32 %26 to i64
  %marker22 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 16
  %27 = load %struct.opj_marker_info*, %struct.opj_marker_info** %marker22, align 8, !tbaa !15
  %arrayidx23 = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %27, i64 %idxprom21
  %len24 = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %arrayidx23, i32 0, i32 2
  %28 = load i32, i32* %len24, align 4, !tbaa !23
  call void @opj_write_bytes_LE(i8* %arraydecay20, i32 %28, i32 2) #5
  %29 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay25 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %30 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call26 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %29, i8* %arraydecay25, i64 2, %struct.opj_event_mgr* %30) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call27 = call i64 @opj_stream_tell(%struct.opj_stream_private* %32) #5
  %33 = load i64, i64* %lenp, align 8, !tbaa !7
  %sub28 = sub nsw i64 %call27, %33
  %conv29 = trunc i64 %sub28 to i32
  store i32 %conv29, i32* %len, align 4, !tbaa !1
  %34 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %35 = load i64, i64* %lenp, align 8, !tbaa !7
  %36 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call30 = call i32 @opj_stream_seek(%struct.opj_stream_private* %34, i64 %35, %struct.opj_event_mgr* %36) #5
  %arraydecay31 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %37 = load i32, i32* %len, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay31, i32 %37, i32 4) #5
  %38 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay32 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %39 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call33 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %38, i8* %arraydecay32, i64 4, %struct.opj_event_mgr* %39) #5
  %40 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %41 = load i64, i64* %lenp, align 8, !tbaa !7
  %42 = load i32, i32* %len, align 4, !tbaa !1
  %conv34 = zext i32 %42 to i64
  %add35 = add nsw i64 %41, %conv34
  %43 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call36 = call i32 @opj_stream_seek(%struct.opj_stream_private* %40, i64 %add35, %struct.opj_event_mgr* %43) #5
  %44 = load i32, i32* %len, align 4, !tbaa !1
  %45 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  ret i32 %44
}

declare i32 @opj_write_tpix(i32, %struct.opj_codestream_info* byval align 8, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

declare i32 @opj_write_thix(i32, %struct.opj_codestream_info* byval align 8, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

; Function Attrs: nounwind uwtable
define i32 @opj_check_EPHuse(i32 %coff, %struct.opj_marker_info* %markers, i32 %marknum, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %coff.addr = alloca i32, align 4
  %markers.addr = alloca %struct.opj_marker_info*, align 8
  %marknum.addr = alloca i32, align 4
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_data_header = alloca [4 x i8], align 1
  %EPHused = alloca i32, align 4
  %i = alloca i32, align 4
  %org_pos = alloca i64, align 8
  %Scod = alloca i32, align 4
  store i32 %coff, i32* %coff.addr, align 4, !tbaa !1
  store %struct.opj_marker_info* %markers, %struct.opj_marker_info** %markers.addr, align 8, !tbaa !5
  store i32 %marknum, i32* %marknum.addr, align 4, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %0 = bitcast [4 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %EPHused to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %EPHused, align 4, !tbaa !1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  %3 = bitcast i64* %org_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %Scod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !1
  %6 = load i32, i32* %marknum.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.opj_marker_info*, %struct.opj_marker_info** %markers.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %8, i64 %idxprom
  %type = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %arrayidx, i32 0, i32 0
  %9 = load i16, i16* %type, align 2, !tbaa !19
  %conv = zext i16 %9 to i32
  %cmp1 = icmp eq i32 %conv, 65362
  br i1 %cmp1, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call = call i64 @opj_stream_tell(%struct.opj_stream_private* %10) #5
  store i64 %call, i64* %org_pos, align 8, !tbaa !7
  %11 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %12 = load i32, i32* %coff.addr, align 4, !tbaa !1
  %conv3 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.opj_marker_info*, %struct.opj_marker_info** %markers.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %14, i64 %idxprom4
  %pos = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %arrayidx5, i32 0, i32 1
  %15 = load i64, i64* %pos, align 8, !tbaa !22
  %add = add nsw i64 %conv3, %15
  %add6 = add nsw i64 %add, 2
  %16 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call7 = call i32 @opj_stream_seek(%struct.opj_stream_private* %11, i64 %add6, %struct.opj_event_mgr* %16) #5
  %17 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %18 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call8 = call i64 @opj_stream_read_data(%struct.opj_stream_private* %17, i8* %arraydecay, i64 1, %struct.opj_event_mgr* %18) #5
  %arraydecay9 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_read_bytes_LE(i8* %arraydecay9, i32* %Scod, i32 1) #5
  %19 = load i32, i32* %Scod, align 4, !tbaa !1
  %shr = lshr i32 %19, 2
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  store i32 1, i32* %EPHused, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %20 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %21 = load i64, i64* %org_pos, align 8, !tbaa !7
  %22 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call11 = call i32 @opj_stream_seek(%struct.opj_stream_private* %20, i64 %21, %struct.opj_event_mgr* %22) #5
  br label %for.end

if.end.12:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  %24 = load i32, i32* %EPHused, align 4, !tbaa !1
  %25 = bitcast i32* %Scod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i64* %org_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %EPHused to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast [4 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  ret i32 %24
}

declare i32 @opj_write_ppix(i32, %struct.opj_codestream_info* byval align 8, i32, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

declare i32 @opj_write_phix(i32, %struct.opj_codestream_info* byval align 8, i32, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i64 @opj_stream_read_data(%struct.opj_stream_private*, i8*, i64, %struct.opj_event_mgr*) #3

declare void @opj_read_bytes_LE(i8*, i32*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

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
!9 = !{!10, !2, i64 100}
!10 = !{!"opj_codestream_info", !11, i64 0, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !3, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !2, i64 48, !2, i64 52, !2, i64 56, !6, i64 64, !2, i64 72, !6, i64 80, !2, i64 88, !2, i64 92, !2, i64 96, !2, i64 100, !6, i64 104}
!11 = !{!"double", !3, i64 0}
!12 = !{!13, !2, i64 0}
!13 = !{!"opj_jp2_box", !2, i64 0, !2, i64 4, !2, i64 8}
!14 = !{!13, !2, i64 4}
!15 = !{!10, !6, i64 80}
!16 = !{!10, !2, i64 72}
!17 = !{!10, !2, i64 96}
!18 = !{!10, !2, i64 92}
!19 = !{!20, !21, i64 0}
!20 = !{!"opj_marker_info", !21, i64 0, !8, i64 8, !2, i64 16}
!21 = !{!"short", !3, i64 0}
!22 = !{!20, !8, i64 8}
!23 = !{!20, !2, i64 16}
