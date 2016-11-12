; ModuleID = './phix_manager.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.opj_codestream_info = type { double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.opj_marker_info*, i32, i32, i32, i32, %struct.opj_tile_info* }
%struct.opj_marker_info = type { i16, i64, i32 }
%struct.opj_tile_info = type { double*, i32, i32, i32, i32, [33 x i32], [33 x i32], [33 x i32], [33 x i32], %struct.opj_packet_info*, i32, double, i32, %struct.opj_marker_info*, i32, i32, %struct.opj_tp_info* }
%struct.opj_packet_info = type { i64, i64, i64, double }
%struct.opj_tp_info = type { i32, i32, i32, i32, i32 }
%struct.opj_stream_private = type { i8*, i64, i64 (i8*, i64, i8*)*, i64 (i8*, i64, i8*)*, i64 (i64, i8*)*, i32 (i64, i8*)*, i8*, i8*, i64 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i32 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i64, i64, i64, i32 }
%struct.opj_event_mgr = type { i8*, i8*, i8*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.opj_jp2_box = type { i32, i32, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [25 x i8] c"failed to ppix indexing\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @opj_write_phix(i32 %coff, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %EPHused, i32 %j2klen, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %coff.addr = alloca i32, align 4
  %EPHused.addr = alloca i32, align 4
  %j2klen.addr = alloca i32, align 4
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_data_header = alloca [8 x i8], align 1
  %len = alloca i32, align 4
  %compno = alloca i32, align 4
  %i = alloca i32, align 4
  %box = alloca %struct.opj_jp2_box*, align 8
  %lenp = alloca i64, align 8
  store i32 %coff, i32* %coff.addr, align 4, !tbaa !1
  store i32 %EPHused, i32* %EPHused.addr, align 4, !tbaa !1
  store i32 %j2klen, i32* %j2klen.addr, align 4, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %0 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.opj_jp2_box** %box to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64 0, i64* %lenp, align 8, !tbaa !7
  %numcomps = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %6 = load i32, i32* %numcomps, align 4, !tbaa !9
  %conv = sext i32 %6 to i64
  %cmp = icmp ne i64 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %numcomps2 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %7 = load i32, i32* %numcomps2, align 4, !tbaa !9
  %conv3 = sext i32 %7 to i64
  %cmp4 = icmp uge i64 %conv3, 1537228672809129280
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %numcomps6 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %8 = load i32, i32* %numcomps6, align 4, !tbaa !9
  %conv7 = sext i32 %8 to i64
  %call = call noalias i8* @calloc(i64 %conv7, i64 12) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  %9 = bitcast i8* %cond to %struct.opj_jp2_box*
  store %struct.opj_jp2_box* %9, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %cond.end
  %10 = load i32, i32* %i, align 4, !tbaa !1
  %cmp8 = icmp slt i32 %10, 2
  br i1 %cmp8, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %13 = load i64, i64* %lenp, align 8, !tbaa !7
  %14 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call10 = call i32 @opj_stream_seek(%struct.opj_stream_private* %12, i64 %13, %struct.opj_event_mgr* %14) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %15 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call11 = call i64 @opj_stream_tell(%struct.opj_stream_private* %15) #5
  store i64 %call11, i64* %lenp, align 8, !tbaa !7
  %16 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call12 = call i64 @opj_stream_skip(%struct.opj_stream_private* %16, i64 4, %struct.opj_event_mgr* %17) #5
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 1885890936, i32 4) #5
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay13 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %19 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call14 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %18, i8* %arraydecay13, i64 4, %struct.opj_event_mgr* %19) #5
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %numcomps15 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %21 = load i32, i32* %numcomps15, align 4, !tbaa !9
  %22 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %23 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %24 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  call void @opj_write_manf(i32 %20, i32 %21, %struct.opj_jp2_box* %22, %struct.opj_stream_private* %23, %struct.opj_event_mgr* %24) #5
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.end
  %25 = load i32, i32* %compno, align 4, !tbaa !1
  %numcomps17 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %26 = load i32, i32* %numcomps17, align 4, !tbaa !9
  %cmp18 = icmp slt i32 %25, %26
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.16
  %27 = load i32, i32* %coff.addr, align 4, !tbaa !1
  %28 = load i32, i32* %compno, align 4, !tbaa !1
  %29 = load i32, i32* %EPHused.addr, align 4, !tbaa !1
  %30 = load i32, i32* %j2klen.addr, align 4, !tbaa !1
  %31 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %32 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call21 = call i32 @opj_write_phixfaix(i32 %27, i32 %28, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %29, i32 %30, %struct.opj_stream_private* %31, %struct.opj_event_mgr* %32) #5
  %33 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %34, i64 %idxprom
  %length = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx, i32 0, i32 0
  store i32 %call21, i32* %length, align 4, !tbaa !12
  %35 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom22 = sext i32 %35 to i64
  %36 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx23 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %36, i64 %idxprom22
  %type = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx23, i32 0, i32 1
  store i32 1717660024, i32* %type, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %37 = load i32, i32* %compno, align 4, !tbaa !1
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !1
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  %38 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call24 = call i64 @opj_stream_tell(%struct.opj_stream_private* %38) #5
  %39 = load i64, i64* %lenp, align 8, !tbaa !7
  %sub = sub nsw i64 %call24, %39
  %conv25 = trunc i64 %sub to i32
  store i32 %conv25, i32* %len, align 4, !tbaa !1
  %40 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %41 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call26 = call i32 @opj_stream_seek(%struct.opj_stream_private* %40, i64 4, %struct.opj_event_mgr* %41) #5
  %arraydecay27 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %42 = load i32, i32* %len, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay27, i32 %42, i32 4) #5
  %43 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay28 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %44 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call29 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %43, i8* %arraydecay28, i64 4, %struct.opj_event_mgr* %44) #5
  %45 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %46 = load i64, i64* %lenp, align 8, !tbaa !7
  %47 = load i32, i32* %len, align 4, !tbaa !1
  %conv30 = sext i32 %47 to i64
  %add = add nsw i64 %46, %conv30
  %48 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call31 = call i32 @opj_stream_seek(%struct.opj_stream_private* %45, i64 %add, %struct.opj_event_mgr* %48) #5
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %inc33 = add nsw i32 %49, 1
  store i32 %inc33, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %50 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %51 = bitcast %struct.opj_jp2_box* %50 to i8*
  call void @free(i8* %51) #4
  %52 = load i32, i32* %len, align 4, !tbaa !1
  %53 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.opj_jp2_box** %box to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  ret i32 %52
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
define i32 @opj_write_phixfaix(i32 %coff, i32 %compno, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %EPHused, i32 %j2klen, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %coff.addr = alloca i32, align 4
  %compno.addr = alloca i32, align 4
  %EPHused.addr = alloca i32, align 4
  %j2klen.addr = alloca i32, align 4
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %tileno = alloca i32, align 4
  %version = alloca i32, align 4
  %i = alloca i32, align 4
  %nmax = alloca i32, align 4
  %size_of_coding = alloca i32, align 4
  %tile_Idx = alloca %struct.opj_tile_info*, align 8
  %packet = alloca %struct.opj_packet_info, align 8
  %resno = alloca i32, align 4
  %precno = alloca i32, align 4
  %layno = alloca i32, align 4
  %num_packet = alloca i32, align 4
  %numOfres = alloca i32, align 4
  %numOfprec = alloca i32, align 4
  %numOflayers = alloca i32, align 4
  %l_data_header = alloca [8 x i8], align 1
  %lenp = alloca i64, align 8
  %len = alloca i32, align 4
  store i32 %coff, i32* %coff.addr, align 4, !tbaa !1
  store i32 %compno, i32* %compno.addr, align 4, !tbaa !1
  store i32 %EPHused, i32* %EPHused.addr, align 4, !tbaa !1
  store i32 %j2klen, i32* %j2klen.addr, align 4, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %0 = bitcast i32* %tileno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %version to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %nmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %size_of_coding to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.opj_tile_info** %tile_Idx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.opj_packet_info* %packet to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #1
  %7 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %layno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %num_packet to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %numOfres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %numOfprec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %numOflayers to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %start_pos = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %packet, i32 0, i32 0
  store i64 -1, i64* %start_pos, align 8, !tbaa !15
  %end_ph_pos = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %packet, i32 0, i32 1
  store i64 -1, i64* %end_ph_pos, align 8, !tbaa !17
  %17 = load i32, i32* %EPHused.addr, align 4, !tbaa !1
  %18 = load i32, i32* %j2klen.addr, align 4, !tbaa !1
  %conv = sitofp i32 %18 to double
  %call = call double @pow(double 2.000000e+00, double 3.200000e+01) #4
  %cmp = fcmp ogt double %conv, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 8, i32* %size_of_coding, align 4, !tbaa !1
  store i32 1, i32* %version, align 4, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 4, i32* %size_of_coding, align 4, !tbaa !1
  store i32 0, i32* %version, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call2 = call i64 @opj_stream_tell(%struct.opj_stream_private* %19) #5
  store i64 %call2, i64* %lenp, align 8, !tbaa !7
  %20 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %21 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call3 = call i64 @opj_stream_skip(%struct.opj_stream_private* %20, i64 4, %struct.opj_event_mgr* %21) #5
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 1717660024, i32 4) #5
  %22 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay4 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %23 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call5 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %22, i8* %arraydecay4, i64 4, %struct.opj_event_mgr* %23) #5
  %arraydecay6 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %24 = load i32, i32* %version, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay6, i32 %24, i32 1) #5
  %25 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay7 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %26 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call8 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %25, i8* %arraydecay7, i64 1, %struct.opj_event_mgr* %26) #5
  store i32 0, i32* %nmax, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %idxprom = sext i32 %28 to i64
  %numdecompos = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 14
  %29 = load i32*, i32** %numdecompos, align 8, !tbaa !18
  %arrayidx = getelementptr inbounds i32, i32* %29, i64 %idxprom
  %30 = load i32, i32* %arrayidx, align 4, !tbaa !1
  %cmp9 = icmp sle i32 %27, %30
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom11 = sext i32 %31 to i64
  %tile = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 21
  %32 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile, align 8, !tbaa !19
  %arrayidx12 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %32, i64 0
  %ph = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx12, i32 0, i32 6
  %arrayidx13 = getelementptr inbounds [33 x i32], [33 x i32]* %ph, i32 0, i64 %idxprom11
  %33 = load i32, i32* %arrayidx13, align 4, !tbaa !1
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom14 = sext i32 %34 to i64
  %tile15 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 21
  %35 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile15, align 8, !tbaa !19
  %arrayidx16 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %35, i64 0
  %pw = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx16, i32 0, i32 5
  %arrayidx17 = getelementptr inbounds [33 x i32], [33 x i32]* %pw, i32 0, i64 %idxprom14
  %36 = load i32, i32* %arrayidx17, align 4, !tbaa !1
  %mul = mul nsw i32 %33, %36
  %numlayers = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 13
  %37 = load i32, i32* %numlayers, align 4, !tbaa !20
  %mul18 = mul nsw i32 %mul, %37
  %38 = load i32, i32* %nmax, align 4, !tbaa !1
  %add = add nsw i32 %38, %mul18
  store i32 %add, i32* %nmax, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay19 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %40 = load i32, i32* %nmax, align 4, !tbaa !1
  %41 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay19, i32 %40, i32 %41) #5
  %42 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay20 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %43 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv21 = sext i32 %43 to i64
  %44 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call22 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %42, i8* %arraydecay20, i64 %conv21, %struct.opj_event_mgr* %44) #5
  %arraydecay23 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %tw = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 10
  %45 = load i32, i32* %tw, align 4, !tbaa !21
  %th = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 11
  %46 = load i32, i32* %th, align 4, !tbaa !22
  %mul24 = mul nsw i32 %45, %46
  %47 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay23, i32 %mul24, i32 %47) #5
  %48 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay25 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %49 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv26 = sext i32 %49 to i64
  %50 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call27 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %48, i8* %arraydecay25, i64 %conv26, %struct.opj_event_mgr* %50) #5
  store i32 0, i32* %tileno, align 4, !tbaa !1
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.152, %for.end
  %51 = load i32, i32* %tileno, align 4, !tbaa !1
  %tw29 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 10
  %52 = load i32, i32* %tw29, align 4, !tbaa !21
  %th30 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 11
  %53 = load i32, i32* %th30, align 4, !tbaa !22
  %mul31 = mul nsw i32 %52, %53
  %cmp32 = icmp slt i32 %51, %mul31
  br i1 %cmp32, label %for.body.34, label %for.end.154

for.body.34:                                      ; preds = %for.cond.28
  %54 = load i32, i32* %tileno, align 4, !tbaa !1
  %idxprom35 = sext i32 %54 to i64
  %tile36 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 21
  %55 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile36, align 8, !tbaa !19
  %arrayidx37 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %55, i64 %idxprom35
  store %struct.opj_tile_info* %arrayidx37, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  store i32 0, i32* %num_packet, align 4, !tbaa !1
  %56 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %idxprom38 = sext i32 %56 to i64
  %numdecompos39 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 14
  %57 = load i32*, i32** %numdecompos39, align 8, !tbaa !18
  %arrayidx40 = getelementptr inbounds i32, i32* %57, i64 %idxprom38
  %58 = load i32, i32* %arrayidx40, align 4, !tbaa !1
  %add41 = add nsw i32 %58, 1
  store i32 %add41, i32* %numOfres, align 4, !tbaa !1
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.138, %for.body.34
  %59 = load i32, i32* %resno, align 4, !tbaa !1
  %60 = load i32, i32* %numOfres, align 4, !tbaa !1
  %cmp43 = icmp slt i32 %59, %60
  br i1 %cmp43, label %for.body.45, label %for.end.140

for.body.45:                                      ; preds = %for.cond.42
  %61 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom46 = sext i32 %61 to i64
  %62 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  %pw47 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %62, i32 0, i32 5
  %arrayidx48 = getelementptr inbounds [33 x i32], [33 x i32]* %pw47, i32 0, i64 %idxprom46
  %63 = load i32, i32* %arrayidx48, align 4, !tbaa !1
  %64 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom49 = sext i32 %64 to i64
  %65 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  %ph50 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %65, i32 0, i32 6
  %arrayidx51 = getelementptr inbounds [33 x i32], [33 x i32]* %ph50, i32 0, i64 %idxprom49
  %66 = load i32, i32* %arrayidx51, align 4, !tbaa !1
  %mul52 = mul nsw i32 %63, %66
  store i32 %mul52, i32* %numOfprec, align 4, !tbaa !1
  store i32 0, i32* %precno, align 4, !tbaa !1
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.135, %for.body.45
  %67 = load i32, i32* %precno, align 4, !tbaa !1
  %68 = load i32, i32* %numOfprec, align 4, !tbaa !1
  %cmp54 = icmp slt i32 %67, %68
  br i1 %cmp54, label %for.body.56, label %for.end.137

for.body.56:                                      ; preds = %for.cond.53
  %numlayers57 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 13
  %69 = load i32, i32* %numlayers57, align 4, !tbaa !20
  store i32 %69, i32* %numOflayers, align 4, !tbaa !1
  store i32 0, i32* %layno, align 4, !tbaa !1
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.132, %for.body.56
  %70 = load i32, i32* %layno, align 4, !tbaa !1
  %71 = load i32, i32* %numOflayers, align 4, !tbaa !1
  %cmp59 = icmp slt i32 %70, %71
  br i1 %cmp59, label %for.body.61, label %for.end.134

for.body.61:                                      ; preds = %for.cond.58
  %prog = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 5
  %72 = load i32, i32* %prog, align 4, !tbaa !23
  switch i32 %72, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.71
    i32 2, label %sw.bb.82
    i32 3, label %sw.bb.93
    i32 4, label %sw.bb.104
  ]

sw.bb:                                            ; preds = %for.body.61
  %73 = load i32, i32* %layno, align 4, !tbaa !1
  %74 = load i32, i32* %numOfres, align 4, !tbaa !1
  %mul62 = mul nsw i32 %73, %74
  %75 = load i32, i32* %resno, align 4, !tbaa !1
  %add63 = add nsw i32 %mul62, %75
  %numcomps = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %76 = load i32, i32* %numcomps, align 4, !tbaa !9
  %mul64 = mul nsw i32 %add63, %76
  %77 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %add65 = add nsw i32 %mul64, %77
  %78 = load i32, i32* %numOfprec, align 4, !tbaa !1
  %mul66 = mul nsw i32 %add65, %78
  %79 = load i32, i32* %precno, align 4, !tbaa !1
  %add67 = add nsw i32 %mul66, %79
  %idxprom68 = sext i32 %add67 to i64
  %80 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  %packet69 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %80, i32 0, i32 9
  %81 = load %struct.opj_packet_info*, %struct.opj_packet_info** %packet69, align 8, !tbaa !24
  %arrayidx70 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %81, i64 %idxprom68
  %82 = bitcast %struct.opj_packet_info* %packet to i8*
  %83 = bitcast %struct.opj_packet_info* %arrayidx70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 32, i32 8, i1 false), !tbaa.struct !26
  br label %sw.epilog

sw.bb.71:                                         ; preds = %for.body.61
  %84 = load i32, i32* %resno, align 4, !tbaa !1
  %85 = load i32, i32* %numOflayers, align 4, !tbaa !1
  %mul72 = mul nsw i32 %84, %85
  %86 = load i32, i32* %layno, align 4, !tbaa !1
  %add73 = add nsw i32 %mul72, %86
  %numcomps74 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %87 = load i32, i32* %numcomps74, align 4, !tbaa !9
  %mul75 = mul nsw i32 %add73, %87
  %88 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %add76 = add nsw i32 %mul75, %88
  %89 = load i32, i32* %numOfprec, align 4, !tbaa !1
  %mul77 = mul nsw i32 %add76, %89
  %90 = load i32, i32* %precno, align 4, !tbaa !1
  %add78 = add nsw i32 %mul77, %90
  %idxprom79 = sext i32 %add78 to i64
  %91 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  %packet80 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %91, i32 0, i32 9
  %92 = load %struct.opj_packet_info*, %struct.opj_packet_info** %packet80, align 8, !tbaa !24
  %arrayidx81 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %92, i64 %idxprom79
  %93 = bitcast %struct.opj_packet_info* %packet to i8*
  %94 = bitcast %struct.opj_packet_info* %arrayidx81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 32, i32 8, i1 false), !tbaa.struct !26
  br label %sw.epilog

sw.bb.82:                                         ; preds = %for.body.61
  %95 = load i32, i32* %resno, align 4, !tbaa !1
  %96 = load i32, i32* %numOfprec, align 4, !tbaa !1
  %mul83 = mul nsw i32 %95, %96
  %97 = load i32, i32* %precno, align 4, !tbaa !1
  %add84 = add nsw i32 %mul83, %97
  %numcomps85 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %98 = load i32, i32* %numcomps85, align 4, !tbaa !9
  %mul86 = mul nsw i32 %add84, %98
  %99 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %add87 = add nsw i32 %mul86, %99
  %100 = load i32, i32* %numOflayers, align 4, !tbaa !1
  %mul88 = mul nsw i32 %add87, %100
  %101 = load i32, i32* %layno, align 4, !tbaa !1
  %add89 = add nsw i32 %mul88, %101
  %idxprom90 = sext i32 %add89 to i64
  %102 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  %packet91 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %102, i32 0, i32 9
  %103 = load %struct.opj_packet_info*, %struct.opj_packet_info** %packet91, align 8, !tbaa !24
  %arrayidx92 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %103, i64 %idxprom90
  %104 = bitcast %struct.opj_packet_info* %packet to i8*
  %105 = bitcast %struct.opj_packet_info* %arrayidx92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 32, i32 8, i1 false), !tbaa.struct !26
  br label %sw.epilog

sw.bb.93:                                         ; preds = %for.body.61
  %106 = load i32, i32* %precno, align 4, !tbaa !1
  %numcomps94 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %107 = load i32, i32* %numcomps94, align 4, !tbaa !9
  %mul95 = mul nsw i32 %106, %107
  %108 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %add96 = add nsw i32 %mul95, %108
  %109 = load i32, i32* %numOfres, align 4, !tbaa !1
  %mul97 = mul nsw i32 %add96, %109
  %110 = load i32, i32* %resno, align 4, !tbaa !1
  %add98 = add nsw i32 %mul97, %110
  %111 = load i32, i32* %numOflayers, align 4, !tbaa !1
  %mul99 = mul nsw i32 %add98, %111
  %112 = load i32, i32* %layno, align 4, !tbaa !1
  %add100 = add nsw i32 %mul99, %112
  %idxprom101 = sext i32 %add100 to i64
  %113 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  %packet102 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %113, i32 0, i32 9
  %114 = load %struct.opj_packet_info*, %struct.opj_packet_info** %packet102, align 8, !tbaa !24
  %arrayidx103 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %114, i64 %idxprom101
  %115 = bitcast %struct.opj_packet_info* %packet to i8*
  %116 = bitcast %struct.opj_packet_info* %arrayidx103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %116, i64 32, i32 8, i1 false), !tbaa.struct !26
  br label %sw.epilog

sw.bb.104:                                        ; preds = %for.body.61
  %117 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %118 = load i32, i32* %numOfprec, align 4, !tbaa !1
  %mul105 = mul nsw i32 %117, %118
  %119 = load i32, i32* %precno, align 4, !tbaa !1
  %add106 = add nsw i32 %mul105, %119
  %120 = load i32, i32* %numOfres, align 4, !tbaa !1
  %mul107 = mul nsw i32 %add106, %120
  %121 = load i32, i32* %resno, align 4, !tbaa !1
  %add108 = add nsw i32 %mul107, %121
  %122 = load i32, i32* %numOflayers, align 4, !tbaa !1
  %mul109 = mul nsw i32 %add108, %122
  %123 = load i32, i32* %layno, align 4, !tbaa !1
  %add110 = add nsw i32 %mul109, %123
  %idxprom111 = sext i32 %add110 to i64
  %124 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  %packet112 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %124, i32 0, i32 9
  %125 = load %struct.opj_packet_info*, %struct.opj_packet_info** %packet112, align 8, !tbaa !24
  %arrayidx113 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %125, i64 %idxprom111
  %126 = bitcast %struct.opj_packet_info* %packet to i8*
  %127 = bitcast %struct.opj_packet_info* %arrayidx113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 32, i32 8, i1 false), !tbaa.struct !26
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.61
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.104, %sw.bb.93, %sw.bb.82, %sw.bb.71, %sw.bb
  %arraydecay115 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %start_pos116 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %packet, i32 0, i32 0
  %129 = load i64, i64* %start_pos116, align 8, !tbaa !15
  %130 = load i32, i32* %coff.addr, align 4, !tbaa !1
  %conv117 = sext i32 %130 to i64
  %sub = sub nsw i64 %129, %conv117
  %conv118 = trunc i64 %sub to i32
  %131 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay115, i32 %conv118, i32 %131) #5
  %132 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay119 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %133 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv120 = sext i32 %133 to i64
  %134 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call121 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %132, i8* %arraydecay119, i64 %conv120, %struct.opj_event_mgr* %134) #5
  %arraydecay122 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %end_ph_pos123 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %packet, i32 0, i32 1
  %135 = load i64, i64* %end_ph_pos123, align 8, !tbaa !17
  %start_pos124 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %packet, i32 0, i32 0
  %136 = load i64, i64* %start_pos124, align 8, !tbaa !15
  %sub125 = sub nsw i64 %135, %136
  %add126 = add nsw i64 %sub125, 1
  %conv127 = trunc i64 %add126 to i32
  %137 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay122, i32 %conv127, i32 %137) #5
  %138 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay128 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %139 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv129 = sext i32 %139 to i64
  %140 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call130 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %138, i8* %arraydecay128, i64 %conv129, %struct.opj_event_mgr* %140) #5
  %141 = load i32, i32* %num_packet, align 4, !tbaa !1
  %inc131 = add nsw i32 %141, 1
  store i32 %inc131, i32* %num_packet, align 4, !tbaa !1
  br label %for.inc.132

for.inc.132:                                      ; preds = %sw.epilog
  %142 = load i32, i32* %layno, align 4, !tbaa !1
  %inc133 = add nsw i32 %142, 1
  store i32 %inc133, i32* %layno, align 4, !tbaa !1
  br label %for.cond.58

for.end.134:                                      ; preds = %for.cond.58
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.end.134
  %143 = load i32, i32* %precno, align 4, !tbaa !1
  %inc136 = add nsw i32 %143, 1
  store i32 %inc136, i32* %precno, align 4, !tbaa !1
  br label %for.cond.53

for.end.137:                                      ; preds = %for.cond.53
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.end.137
  %144 = load i32, i32* %resno, align 4, !tbaa !1
  %inc139 = add nsw i32 %144, 1
  store i32 %inc139, i32* %resno, align 4, !tbaa !1
  br label %for.cond.42

for.end.140:                                      ; preds = %for.cond.42
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.140
  %145 = load i32, i32* %num_packet, align 4, !tbaa !1
  %146 = load i32, i32* %nmax, align 4, !tbaa !1
  %cmp141 = icmp slt i32 %145, %146
  br i1 %cmp141, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay143 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %147 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay143, i32 0, i32 %147) #5
  %148 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay144 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %149 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv145 = sext i32 %149 to i64
  %150 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call146 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %148, i8* %arraydecay144, i64 %conv145, %struct.opj_event_mgr* %150) #5
  %arraydecay147 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %151 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay147, i32 0, i32 %151) #5
  %152 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay148 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %153 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv149 = sext i32 %153 to i64
  %154 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call150 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %152, i8* %arraydecay148, i64 %conv149, %struct.opj_event_mgr* %154) #5
  %155 = load i32, i32* %num_packet, align 4, !tbaa !1
  %inc151 = add nsw i32 %155, 1
  store i32 %inc151, i32* %num_packet, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.152

for.inc.152:                                      ; preds = %while.end
  %156 = load i32, i32* %tileno, align 4, !tbaa !1
  %inc153 = add nsw i32 %156, 1
  store i32 %inc153, i32* %tileno, align 4, !tbaa !1
  br label %for.cond.28

for.end.154:                                      ; preds = %for.cond.28
  %157 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call155 = call i64 @opj_stream_tell(%struct.opj_stream_private* %157) #5
  %158 = load i64, i64* %lenp, align 8, !tbaa !7
  %sub156 = sub nsw i64 %call155, %158
  %conv157 = trunc i64 %sub156 to i32
  store i32 %conv157, i32* %len, align 4, !tbaa !1
  %159 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %160 = load i64, i64* %lenp, align 8, !tbaa !7
  %161 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call158 = call i32 @opj_stream_seek(%struct.opj_stream_private* %159, i64 %160, %struct.opj_event_mgr* %161) #5
  %arraydecay159 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %162 = load i32, i32* %len, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay159, i32 %162, i32 4) #5
  %163 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay160 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %164 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call161 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %163, i8* %arraydecay160, i64 4, %struct.opj_event_mgr* %164) #5
  %165 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %166 = load i64, i64* %lenp, align 8, !tbaa !7
  %167 = load i32, i32* %len, align 4, !tbaa !1
  %conv162 = zext i32 %167 to i64
  %add163 = add nsw i64 %166, %conv162
  %168 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call164 = call i32 @opj_stream_seek(%struct.opj_stream_private* %165, i64 %add163, %struct.opj_event_mgr* %168) #5
  %169 = load i32, i32* %len, align 4, !tbaa !1
  %170 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast i32* %numOflayers to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %numOfprec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %numOfres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %num_packet to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %layno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast %struct.opj_packet_info* %packet to i8*
  call void @llvm.lifetime.end(i64 32, i8* %180) #1
  %181 = bitcast %struct.opj_tile_info** %tile_Idx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast i32* %size_of_coding to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast i32* %nmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %version to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32* %tileno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  ret i32 %169
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

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
!9 = !{!10, !2, i64 52}
!10 = !{!"opj_codestream_info", !11, i64 0, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !3, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !2, i64 48, !2, i64 52, !2, i64 56, !6, i64 64, !2, i64 72, !6, i64 80, !2, i64 88, !2, i64 92, !2, i64 96, !2, i64 100, !6, i64 104}
!11 = !{!"double", !3, i64 0}
!12 = !{!13, !2, i64 0}
!13 = !{!"opj_jp2_box", !2, i64 0, !2, i64 4, !2, i64 8}
!14 = !{!13, !2, i64 4}
!15 = !{!16, !8, i64 0}
!16 = !{!"opj_packet_info", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24}
!17 = !{!16, !8, i64 8}
!18 = !{!10, !6, i64 64}
!19 = !{!10, !6, i64 104}
!20 = !{!10, !2, i64 56}
!21 = !{!10, !2, i64 44}
!22 = !{!10, !2, i64 48}
!23 = !{!10, !3, i64 24}
!24 = !{!25, !6, i64 552}
!25 = !{!"opj_tile_info", !6, i64 0, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !3, i64 24, !3, i64 156, !3, i64 288, !3, i64 420, !6, i64 552, !2, i64 560, !11, i64 568, !2, i64 576, !6, i64 584, !2, i64 592, !2, i64 596, !6, i64 600}
!26 = !{i64 0, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 8, !7, i64 24, i64 8, !27}
!27 = !{!11, !11, i64 0}
