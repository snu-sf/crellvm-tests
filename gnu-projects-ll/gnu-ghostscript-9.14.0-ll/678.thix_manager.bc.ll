; ModuleID = './thix_manager.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opj_codestream_info = type { double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.opj_marker_info*, i32, i32, i32, i32, %struct.opj_tile_info* }
%struct.opj_marker_info = type { i16, i64, i32 }
%struct.opj_tile_info = type { double*, i32, i32, i32, i32, [33 x i32], [33 x i32], [33 x i32], [33 x i32], %struct.opj_packet_info*, i32, double, i32, %struct.opj_marker_info*, i32, i32, %struct.opj_tp_info* }
%struct.opj_packet_info = type { i64, i64, i64, double }
%struct.opj_tp_info = type { i32, i32, i32, i32, i32 }
%struct.opj_stream_private = type { i8*, i64, i64 (i8*, i64, i8*)*, i64 (i8*, i64, i8*)*, i64 (i64, i8*)*, i32 (i64, i8*)*, i8*, i8*, i64 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i32 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i64, i64, i64, i32 }
%struct.opj_event_mgr = type { i8*, i8*, i8*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.opj_jp2_box = type { i32, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @opj_write_thix(i32 %coff, %struct.opj_codestream_info* byval align 8 %cstr_info, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %coff.addr = alloca i32, align 4
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_data_header = alloca [4 x i8], align 1
  %i = alloca i32, align 4
  %tileno = alloca i32, align 4
  %box = alloca %struct.opj_jp2_box*, align 8
  %len = alloca i32, align 4
  %lenp = alloca i64, align 8
  store i32 %coff, i32* %coff.addr, align 4, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %0 = bitcast [4 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %tileno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.opj_jp2_box** %box to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64 0, i64* %lenp, align 8, !tbaa !7
  %tw = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 10
  %6 = load i32, i32* %tw, align 4, !tbaa !9
  %th = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 11
  %7 = load i32, i32* %th, align 4, !tbaa !12
  %mul = mul nsw i32 %6, %7
  %conv = sext i32 %mul to i64
  %cmp = icmp ne i64 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %tw2 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 10
  %8 = load i32, i32* %tw2, align 4, !tbaa !9
  %th3 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 11
  %9 = load i32, i32* %th3, align 4, !tbaa !12
  %mul4 = mul nsw i32 %8, %9
  %conv5 = sext i32 %mul4 to i64
  %cmp6 = icmp uge i64 %conv5, 1537228672809129280
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %tw8 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 10
  %10 = load i32, i32* %tw8, align 4, !tbaa !9
  %th9 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 11
  %11 = load i32, i32* %th9, align 4, !tbaa !12
  %mul10 = mul nsw i32 %10, %11
  %conv11 = sext i32 %mul10 to i64
  %call = call noalias i8* @calloc(i64 %conv11, i64 12) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  %12 = bitcast i8* %cond to %struct.opj_jp2_box*
  store %struct.opj_jp2_box* %12, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %cond.end
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %cmp12 = icmp slt i32 %13, 2
  br i1 %cmp12, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !1
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %16 = load i64, i64* %lenp, align 8, !tbaa !7
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call14 = call i32 @opj_stream_seek(%struct.opj_stream_private* %15, i64 %16, %struct.opj_event_mgr* %17) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call15 = call i64 @opj_stream_tell(%struct.opj_stream_private* %18) #5
  store i64 %call15, i64* %lenp, align 8, !tbaa !7
  %19 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %20 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call16 = call i64 @opj_stream_skip(%struct.opj_stream_private* %19, i64 4, %struct.opj_event_mgr* %20) #5
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 1952999800, i32 4) #5
  %21 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay17 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %22 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call18 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %21, i8* %arraydecay17, i64 4, %struct.opj_event_mgr* %22) #5
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %tw19 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 10
  %24 = load i32, i32* %tw19, align 4, !tbaa !9
  %th20 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 11
  %25 = load i32, i32* %th20, align 4, !tbaa !12
  %mul21 = mul nsw i32 %24, %25
  %26 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %27 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %28 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  call void @opj_write_manf(i32 %23, i32 %mul21, %struct.opj_jp2_box* %26, %struct.opj_stream_private* %27, %struct.opj_event_mgr* %28) #5
  store i32 0, i32* %tileno, align 4, !tbaa !1
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %if.end
  %29 = load i32, i32* %tileno, align 4, !tbaa !1
  %tw23 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 10
  %30 = load i32, i32* %tw23, align 4, !tbaa !9
  %th24 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 11
  %31 = load i32, i32* %th24, align 4, !tbaa !12
  %mul25 = mul nsw i32 %30, %31
  %cmp26 = icmp slt i32 %29, %mul25
  br i1 %cmp26, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.22
  %32 = load i32, i32* %coff.addr, align 4, !tbaa !1
  %33 = load i32, i32* %tileno, align 4, !tbaa !1
  %34 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %35 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call29 = call i32 @opj_write_tilemhix(i32 %32, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %33, %struct.opj_stream_private* %34, %struct.opj_event_mgr* %35) #5
  %36 = load i32, i32* %tileno, align 4, !tbaa !1
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %37, i64 %idxprom
  %length = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx, i32 0, i32 0
  store i32 %call29, i32* %length, align 4, !tbaa !13
  %38 = load i32, i32* %tileno, align 4, !tbaa !1
  %idxprom30 = sext i32 %38 to i64
  %39 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx31 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %39, i64 %idxprom30
  %type = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx31, i32 0, i32 1
  store i32 1835559288, i32* %type, align 4, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body.28
  %40 = load i32, i32* %tileno, align 4, !tbaa !1
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %tileno, align 4, !tbaa !1
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  %41 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call32 = call i64 @opj_stream_tell(%struct.opj_stream_private* %41) #5
  %42 = load i64, i64* %lenp, align 8, !tbaa !7
  %sub = sub nsw i64 %call32, %42
  %conv33 = trunc i64 %sub to i32
  store i32 %conv33, i32* %len, align 4, !tbaa !1
  %43 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %44 = load i64, i64* %lenp, align 8, !tbaa !7
  %45 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call34 = call i32 @opj_stream_seek(%struct.opj_stream_private* %43, i64 %44, %struct.opj_event_mgr* %45) #5
  %arraydecay35 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %46 = load i32, i32* %len, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay35, i32 %46, i32 4) #5
  %47 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay36 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %48 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call37 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %47, i8* %arraydecay36, i64 4, %struct.opj_event_mgr* %48) #5
  %49 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %50 = load i64, i64* %lenp, align 8, !tbaa !7
  %51 = load i32, i32* %len, align 4, !tbaa !1
  %conv38 = zext i32 %51 to i64
  %add = add nsw i64 %50, %conv38
  %52 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call39 = call i32 @opj_stream_seek(%struct.opj_stream_private* %49, i64 %add, %struct.opj_event_mgr* %52) #5
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end
  %53 = load i32, i32* %i, align 4, !tbaa !1
  %inc41 = add nsw i32 %53, 1
  store i32 %inc41, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %54 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %55 = bitcast %struct.opj_jp2_box* %54 to i8*
  call void @free(i8* %55) #4
  %56 = load i32, i32* %len, align 4, !tbaa !1
  %57 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast %struct.opj_jp2_box** %box to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %tileno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast [4 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  ret i32 %56
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

declare void @opj_write_manf(i32, i32, %struct.opj_jp2_box*, %struct.opj_stream_private*, %struct.opj_event_mgr*) #3

; Function Attrs: nounwind uwtable
define i32 @opj_write_tilemhix(i32 %coff, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %tileno, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %coff.addr = alloca i32, align 4
  %tileno.addr = alloca i32, align 4
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_data_header = alloca [8 x i8], align 1
  %i = alloca i32, align 4
  %tile = alloca %struct.opj_tile_info, align 8
  %tp = alloca %struct.opj_tp_info, align 4
  %marker = alloca %struct.opj_marker_info*, align 8
  %len = alloca i32, align 4
  %lenp = alloca i64, align 8
  store i32 %coff, i32* %coff.addr, align 4, !tbaa !1
  store i32 %tileno, i32* %tileno.addr, align 4, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %0 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_tile_info* %tile to i8*
  call void @llvm.lifetime.start(i64 608, i8* %2) #1
  %3 = bitcast %struct.opj_tp_info* %tp to i8*
  call void @llvm.lifetime.start(i64 20, i8* %3) #1
  %4 = bitcast %struct.opj_marker_info** %marker to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call = call i64 @opj_stream_tell(%struct.opj_stream_private* %7) #5
  store i64 %call, i64* %lenp, align 8, !tbaa !7
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %9 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call1 = call i64 @opj_stream_skip(%struct.opj_stream_private* %8, i64 4, %struct.opj_event_mgr* %9) #5
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 1835559288, i32 4) #5
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay2 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %11 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call3 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %10, i8* %arraydecay2, i64 4, %struct.opj_event_mgr* %11) #5
  %12 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %idxprom = sext i32 %12 to i64
  %tile4 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 21
  %13 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile4, align 8, !tbaa !16
  %arrayidx = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %13, i64 %idxprom
  %14 = bitcast %struct.opj_tile_info* %tile to i8*
  %15 = bitcast %struct.opj_tile_info* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 608, i32 8, i1 false), !tbaa.struct !17
  %tp5 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %tile, i32 0, i32 16
  %16 = load %struct.opj_tp_info*, %struct.opj_tp_info** %tp5, align 8, !tbaa !20
  %arrayidx6 = getelementptr inbounds %struct.opj_tp_info, %struct.opj_tp_info* %16, i64 0
  %17 = bitcast %struct.opj_tp_info* %tp to i8*
  %18 = bitcast %struct.opj_tp_info* %arrayidx6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 20, i32 4, i1 false), !tbaa.struct !22
  %arraydecay7 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %tp_end_header = getelementptr inbounds %struct.opj_tp_info, %struct.opj_tp_info* %tp, i32 0, i32 1
  %19 = load i32, i32* %tp_end_header, align 4, !tbaa !23
  %tp_start_pos = getelementptr inbounds %struct.opj_tp_info, %struct.opj_tp_info* %tp, i32 0, i32 0
  %20 = load i32, i32* %tp_start_pos, align 4, !tbaa !25
  %sub = sub nsw i32 %19, %20
  %add = add nsw i32 %sub, 1
  call void @opj_write_bytes_LE(i8* %arraydecay7, i32 %add, i32 8) #5
  %21 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay8 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %22 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call9 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %21, i8* %arraydecay8, i64 8, %struct.opj_event_mgr* %22) #5
  %23 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %idxprom10 = sext i32 %23 to i64
  %tile11 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 21
  %24 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile11, align 8, !tbaa !16
  %arrayidx12 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %24, i64 %idxprom10
  %marker13 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx12, i32 0, i32 13
  %25 = load %struct.opj_marker_info*, %struct.opj_marker_info** %marker13, align 8, !tbaa !26
  store %struct.opj_marker_info* %25, %struct.opj_marker_info** %marker, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %26 = load i32, i32* %i, align 4, !tbaa !1
  %27 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %idxprom14 = sext i32 %27 to i64
  %tile15 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 21
  %28 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile15, align 8, !tbaa !16
  %arrayidx16 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %28, i64 %idxprom14
  %marknum = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx16, i32 0, i32 12
  %29 = load i32, i32* %marknum, align 4, !tbaa !27
  %cmp = icmp slt i32 %26, %29
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay17 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom18 = sext i32 %30 to i64
  %31 = load %struct.opj_marker_info*, %struct.opj_marker_info** %marker, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %31, i64 %idxprom18
  %type = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %arrayidx19, i32 0, i32 0
  %32 = load i16, i16* %type, align 2, !tbaa !28
  %conv = zext i16 %32 to i32
  call void @opj_write_bytes_LE(i8* %arraydecay17, i32 %conv, i32 2) #5
  %arraydecay20 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay20, i64 2
  call void @opj_write_bytes_LE(i8* %add.ptr, i32 0, i32 2) #5
  %33 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay21 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %34 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call22 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %33, i8* %arraydecay21, i64 4, %struct.opj_event_mgr* %34) #5
  %arraydecay23 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom24 = sext i32 %35 to i64
  %36 = load %struct.opj_marker_info*, %struct.opj_marker_info** %marker, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %36, i64 %idxprom24
  %pos = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %arrayidx25, i32 0, i32 1
  %37 = load i64, i64* %pos, align 8, !tbaa !31
  %38 = load i32, i32* %coff.addr, align 4, !tbaa !1
  %conv26 = sext i32 %38 to i64
  %sub27 = sub nsw i64 %37, %conv26
  %conv28 = trunc i64 %sub27 to i32
  call void @opj_write_bytes_LE(i8* %arraydecay23, i32 %conv28, i32 8) #5
  %39 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay29 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %40 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call30 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %39, i8* %arraydecay29, i64 8, %struct.opj_event_mgr* %40) #5
  %arraydecay31 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom32 = sext i32 %41 to i64
  %42 = load %struct.opj_marker_info*, %struct.opj_marker_info** %marker, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %42, i64 %idxprom32
  %len34 = getelementptr inbounds %struct.opj_marker_info, %struct.opj_marker_info* %arrayidx33, i32 0, i32 2
  %43 = load i32, i32* %len34, align 4, !tbaa !32
  call void @opj_write_bytes_LE(i8* %arraydecay31, i32 %43, i32 2) #5
  %44 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay35 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %45 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call36 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %44, i8* %arraydecay35, i64 2, %struct.opj_event_mgr* %45) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call37 = call i64 @opj_stream_tell(%struct.opj_stream_private* %47) #5
  %48 = load i64, i64* %lenp, align 8, !tbaa !7
  %sub38 = sub nsw i64 %call37, %48
  %conv39 = trunc i64 %sub38 to i32
  store i32 %conv39, i32* %len, align 4, !tbaa !1
  %49 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %50 = load i64, i64* %lenp, align 8, !tbaa !7
  %51 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call40 = call i32 @opj_stream_seek(%struct.opj_stream_private* %49, i64 %50, %struct.opj_event_mgr* %51) #5
  %arraydecay41 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %52 = load i32, i32* %len, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay41, i32 %52, i32 4) #5
  %53 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay42 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %54 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call43 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %53, i8* %arraydecay42, i64 4, %struct.opj_event_mgr* %54) #5
  %55 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %56 = load i64, i64* %lenp, align 8, !tbaa !7
  %57 = load i32, i32* %len, align 4, !tbaa !1
  %conv44 = zext i32 %57 to i64
  %add45 = add nsw i64 %56, %conv44
  %58 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call46 = call i32 @opj_stream_seek(%struct.opj_stream_private* %55, i64 %add45, %struct.opj_event_mgr* %58) #5
  %59 = load i32, i32* %len, align 4, !tbaa !1
  %60 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.opj_marker_info** %marker to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast %struct.opj_tp_info* %tp to i8*
  call void @llvm.lifetime.end(i64 20, i8* %63) #1
  %64 = bitcast %struct.opj_tile_info* %tile to i8*
  call void @llvm.lifetime.end(i64 608, i8* %64) #1
  %65 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  ret i32 %59
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
!9 = !{!10, !2, i64 44}
!10 = !{!"opj_codestream_info", !11, i64 0, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !3, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !2, i64 48, !2, i64 52, !2, i64 56, !6, i64 64, !2, i64 72, !6, i64 80, !2, i64 88, !2, i64 92, !2, i64 96, !2, i64 100, !6, i64 104}
!11 = !{!"double", !3, i64 0}
!12 = !{!10, !2, i64 48}
!13 = !{!14, !2, i64 0}
!14 = !{!"opj_jp2_box", !2, i64 0, !2, i64 4, !2, i64 8}
!15 = !{!14, !2, i64 4}
!16 = !{!10, !6, i64 104}
!17 = !{i64 0, i64 8, !5, i64 8, i64 4, !1, i64 12, i64 4, !1, i64 16, i64 4, !1, i64 20, i64 4, !1, i64 24, i64 132, !18, i64 156, i64 132, !18, i64 288, i64 132, !18, i64 420, i64 132, !18, i64 552, i64 8, !5, i64 560, i64 4, !1, i64 568, i64 8, !19, i64 576, i64 4, !1, i64 584, i64 8, !5, i64 592, i64 4, !1, i64 596, i64 4, !1, i64 600, i64 8, !5}
!18 = !{!3, !3, i64 0}
!19 = !{!11, !11, i64 0}
!20 = !{!21, !6, i64 600}
!21 = !{!"opj_tile_info", !6, i64 0, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !3, i64 24, !3, i64 156, !3, i64 288, !3, i64 420, !6, i64 552, !2, i64 560, !11, i64 568, !2, i64 576, !6, i64 584, !2, i64 592, !2, i64 596, !6, i64 600}
!22 = !{i64 0, i64 4, !1, i64 4, i64 4, !1, i64 8, i64 4, !1, i64 12, i64 4, !1, i64 16, i64 4, !1}
!23 = !{!24, !2, i64 4}
!24 = !{!"opj_tp_info", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16}
!25 = !{!24, !2, i64 0}
!26 = !{!21, !6, i64 584}
!27 = !{!21, !2, i64 576}
!28 = !{!29, !30, i64 0}
!29 = !{!"opj_marker_info", !30, i64 0, !8, i64 8, !2, i64 16}
!30 = !{!"short", !3, i64 0}
!31 = !{!29, !8, i64 8}
!32 = !{!29, !2, i64 16}
