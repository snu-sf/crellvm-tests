; ModuleID = './ppix_manager.bc'
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
define i32 @opj_write_ppix(i32 %coff, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %EPHused, i32 %j2klen, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %coff.addr = alloca i32, align 4
  %EPHused.addr = alloca i32, align 4
  %j2klen.addr = alloca i32, align 4
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_data_header = alloca [4 x i8], align 1
  %compno = alloca i32, align 4
  %i = alloca i32, align 4
  %box = alloca %struct.opj_jp2_box*, align 8
  %lenp = alloca i64, align 8
  %len = alloca i32, align 4
  store i32 %coff, i32* %coff.addr, align 4, !tbaa !1
  store i32 %EPHused, i32* %EPHused.addr, align 4, !tbaa !1
  store i32 %j2klen, i32* %j2klen.addr, align 4, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %0 = bitcast [4 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.opj_jp2_box** %box to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i64 -1, i64* %lenp, align 8, !tbaa !7
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

for.cond:                                         ; preds = %for.inc.34, %cond.end
  %10 = load i32, i32* %i, align 4, !tbaa !1
  %cmp8 = icmp slt i32 %10, 2
  br i1 %cmp8, label %for.body, label %for.end.36

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
  %conv12 = trunc i64 %call11 to i32
  %conv13 = zext i32 %conv12 to i64
  store i64 %conv13, i64* %lenp, align 8, !tbaa !7
  %16 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call14 = call i64 @opj_stream_skip(%struct.opj_stream_private* %16, i64 4, %struct.opj_event_mgr* %17) #5
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 1886415224, i32 4) #5
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay15 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %19 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call16 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %18, i8* %arraydecay15, i64 4, %struct.opj_event_mgr* %19) #5
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %numcomps17 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %21 = load i32, i32* %numcomps17, align 4, !tbaa !9
  %22 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %23 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %24 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  call void @opj_write_manf(i32 %20, i32 %21, %struct.opj_jp2_box* %22, %struct.opj_stream_private* %23, %struct.opj_event_mgr* %24) #5
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %if.end
  %25 = load i32, i32* %compno, align 4, !tbaa !1
  %numcomps19 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %26 = load i32, i32* %numcomps19, align 4, !tbaa !9
  %cmp20 = icmp slt i32 %25, %26
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.18
  %27 = load i32, i32* %coff.addr, align 4, !tbaa !1
  %28 = load i32, i32* %compno, align 4, !tbaa !1
  %29 = load i32, i32* %EPHused.addr, align 4, !tbaa !1
  %30 = load i32, i32* %j2klen.addr, align 4, !tbaa !1
  %31 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %32 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call23 = call i32 @opj_write_ppixfaix(i32 %27, i32 %28, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %29, i32 %30, %struct.opj_stream_private* %31, %struct.opj_event_mgr* %32) #5
  %33 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %34, i64 %idxprom
  %length = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx, i32 0, i32 0
  store i32 %call23, i32* %length, align 4, !tbaa !12
  %35 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom24 = sext i32 %35 to i64
  %36 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %36, i64 %idxprom24
  %type = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %arrayidx25, i32 0, i32 1
  store i32 1717660024, i32* %type, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body.22
  %37 = load i32, i32* %compno, align 4, !tbaa !1
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !1
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %38 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call26 = call i64 @opj_stream_tell(%struct.opj_stream_private* %38) #5
  %39 = load i64, i64* %lenp, align 8, !tbaa !7
  %sub = sub nsw i64 %call26, %39
  %conv27 = trunc i64 %sub to i32
  store i32 %conv27, i32* %len, align 4, !tbaa !1
  %40 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %41 = load i64, i64* %lenp, align 8, !tbaa !7
  %42 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call28 = call i32 @opj_stream_seek(%struct.opj_stream_private* %40, i64 %41, %struct.opj_event_mgr* %42) #5
  %arraydecay29 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %43 = load i32, i32* %len, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay29, i32 %43, i32 4) #5
  %44 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay30 = getelementptr inbounds [4 x i8], [4 x i8]* %l_data_header, i32 0, i32 0
  %45 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call31 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %44, i8* %arraydecay30, i64 4, %struct.opj_event_mgr* %45) #5
  %46 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %47 = load i64, i64* %lenp, align 8, !tbaa !7
  %48 = load i32, i32* %len, align 4, !tbaa !1
  %conv32 = zext i32 %48 to i64
  %add = add nsw i64 %47, %conv32
  %49 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call33 = call i32 @opj_stream_seek(%struct.opj_stream_private* %46, i64 %add, %struct.opj_event_mgr* %49) #5
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %50 = load i32, i32* %i, align 4, !tbaa !1
  %inc35 = add nsw i32 %50, 1
  store i32 %inc35, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %51 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box, align 8, !tbaa !5
  %52 = bitcast %struct.opj_jp2_box* %51 to i8*
  call void @free(i8* %52) #4
  %53 = load i32, i32* %len, align 4, !tbaa !1
  %54 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast %struct.opj_jp2_box** %box to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast [4 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  ret i32 %53
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
define i32 @opj_write_ppixfaix(i32 %coff, i32 %compno, %struct.opj_codestream_info* byval align 8 %cstr_info, i32 %EPHused, i32 %j2klen, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %coff.addr = alloca i32, align 4
  %compno.addr = alloca i32, align 4
  %EPHused.addr = alloca i32, align 4
  %j2klen.addr = alloca i32, align 4
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_data_header = alloca [8 x i8], align 1
  %tileno = alloca i32, align 4
  %version = alloca i32, align 4
  %i = alloca i32, align 4
  %nmax = alloca i32, align 4
  %size_of_coding = alloca i32, align 4
  %len = alloca i32, align 4
  %lenp = alloca i64, align 8
  %tile_Idx = alloca %struct.opj_tile_info*, align 8
  %packet = alloca %struct.opj_packet_info, align 8
  %resno = alloca i32, align 4
  %precno = alloca i32, align 4
  %layno = alloca i32, align 4
  %num_packet = alloca i32, align 4
  %numOfres = alloca i32, align 4
  %numOfprec = alloca i32, align 4
  %numOflayers = alloca i32, align 4
  store i32 %coff, i32* %coff.addr, align 4, !tbaa !1
  store i32 %compno, i32* %compno.addr, align 4, !tbaa !1
  store i32 %EPHused, i32* %EPHused.addr, align 4, !tbaa !1
  store i32 %j2klen, i32* %j2klen.addr, align 4, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %0 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %tileno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %version to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %nmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %size_of_coding to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.opj_tile_info** %tile_Idx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.opj_packet_info* %packet to i8*
  call void @llvm.lifetime.start(i64 32, i8* %9) #1
  %10 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %layno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %num_packet to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %numOfres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %numOfprec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %numOflayers to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %start_pos = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %packet, i32 0, i32 0
  store i64 -1, i64* %start_pos, align 8, !tbaa !15
  %end_ph_pos = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %packet, i32 0, i32 1
  store i64 -1, i64* %end_ph_pos, align 8, !tbaa !17
  %end_pos = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %packet, i32 0, i32 2
  store i64 -1, i64* %end_pos, align 8, !tbaa !18
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
  %arraydecay4 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %22 = load i32, i32* %version, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay4, i32 %22, i32 1) #5
  %23 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay5 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %24 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call6 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %23, i8* %arraydecay5, i64 1, %struct.opj_event_mgr* %24) #5
  store i32 0, i32* %nmax, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %26 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %idxprom = sext i32 %26 to i64
  %numdecompos = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 14
  %27 = load i32*, i32** %numdecompos, align 8, !tbaa !19
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %idxprom
  %28 = load i32, i32* %arrayidx, align 4, !tbaa !1
  %cmp7 = icmp sle i32 %25, %28
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom9 = sext i32 %29 to i64
  %tile = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 21
  %30 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile, align 8, !tbaa !20
  %arrayidx10 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %30, i64 0
  %ph = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx10, i32 0, i32 6
  %arrayidx11 = getelementptr inbounds [33 x i32], [33 x i32]* %ph, i32 0, i64 %idxprom9
  %31 = load i32, i32* %arrayidx11, align 4, !tbaa !1
  %32 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom12 = sext i32 %32 to i64
  %tile13 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 21
  %33 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile13, align 8, !tbaa !20
  %arrayidx14 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %33, i64 0
  %pw = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %arrayidx14, i32 0, i32 5
  %arrayidx15 = getelementptr inbounds [33 x i32], [33 x i32]* %pw, i32 0, i64 %idxprom12
  %34 = load i32, i32* %arrayidx15, align 4, !tbaa !1
  %mul = mul nsw i32 %31, %34
  %numlayers = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 13
  %35 = load i32, i32* %numlayers, align 4, !tbaa !21
  %mul16 = mul nsw i32 %mul, %35
  %36 = load i32, i32* %nmax, align 4, !tbaa !1
  %add = add nsw i32 %36, %mul16
  store i32 %add, i32* %nmax, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay17 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %38 = load i32, i32* %nmax, align 4, !tbaa !1
  %39 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay17, i32 %38, i32 %39) #5
  %40 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay18 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %41 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv19 = sext i32 %41 to i64
  %42 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call20 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %40, i8* %arraydecay18, i64 %conv19, %struct.opj_event_mgr* %42) #5
  %arraydecay21 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %tw = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 10
  %43 = load i32, i32* %tw, align 4, !tbaa !22
  %th = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 11
  %44 = load i32, i32* %th, align 4, !tbaa !23
  %mul22 = mul nsw i32 %43, %44
  %45 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay21, i32 %mul22, i32 %45) #5
  %46 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay23 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %47 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv24 = sext i32 %47 to i64
  %48 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call25 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %46, i8* %arraydecay23, i64 %conv24, %struct.opj_event_mgr* %48) #5
  store i32 0, i32* %tileno, align 4, !tbaa !1
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.150, %for.end
  %49 = load i32, i32* %tileno, align 4, !tbaa !1
  %tw27 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 10
  %50 = load i32, i32* %tw27, align 4, !tbaa !22
  %th28 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 11
  %51 = load i32, i32* %th28, align 4, !tbaa !23
  %mul29 = mul nsw i32 %50, %51
  %cmp30 = icmp slt i32 %49, %mul29
  br i1 %cmp30, label %for.body.32, label %for.end.152

for.body.32:                                      ; preds = %for.cond.26
  %52 = load i32, i32* %tileno, align 4, !tbaa !1
  %idxprom33 = sext i32 %52 to i64
  %tile34 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 21
  %53 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile34, align 8, !tbaa !20
  %arrayidx35 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %53, i64 %idxprom33
  store %struct.opj_tile_info* %arrayidx35, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  store i32 0, i32* %num_packet, align 4, !tbaa !1
  %54 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %idxprom36 = sext i32 %54 to i64
  %numdecompos37 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 14
  %55 = load i32*, i32** %numdecompos37, align 8, !tbaa !19
  %arrayidx38 = getelementptr inbounds i32, i32* %55, i64 %idxprom36
  %56 = load i32, i32* %arrayidx38, align 4, !tbaa !1
  %add39 = add nsw i32 %56, 1
  store i32 %add39, i32* %numOfres, align 4, !tbaa !1
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.136, %for.body.32
  %57 = load i32, i32* %resno, align 4, !tbaa !1
  %58 = load i32, i32* %numOfres, align 4, !tbaa !1
  %cmp41 = icmp slt i32 %57, %58
  br i1 %cmp41, label %for.body.43, label %for.end.138

for.body.43:                                      ; preds = %for.cond.40
  %59 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom44 = sext i32 %59 to i64
  %60 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  %pw45 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %60, i32 0, i32 5
  %arrayidx46 = getelementptr inbounds [33 x i32], [33 x i32]* %pw45, i32 0, i64 %idxprom44
  %61 = load i32, i32* %arrayidx46, align 4, !tbaa !1
  %62 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom47 = sext i32 %62 to i64
  %63 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  %ph48 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %63, i32 0, i32 6
  %arrayidx49 = getelementptr inbounds [33 x i32], [33 x i32]* %ph48, i32 0, i64 %idxprom47
  %64 = load i32, i32* %arrayidx49, align 4, !tbaa !1
  %mul50 = mul nsw i32 %61, %64
  store i32 %mul50, i32* %numOfprec, align 4, !tbaa !1
  store i32 0, i32* %precno, align 4, !tbaa !1
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.133, %for.body.43
  %65 = load i32, i32* %precno, align 4, !tbaa !1
  %66 = load i32, i32* %numOfprec, align 4, !tbaa !1
  %cmp52 = icmp slt i32 %65, %66
  br i1 %cmp52, label %for.body.54, label %for.end.135

for.body.54:                                      ; preds = %for.cond.51
  %numlayers55 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 13
  %67 = load i32, i32* %numlayers55, align 4, !tbaa !21
  store i32 %67, i32* %numOflayers, align 4, !tbaa !1
  store i32 0, i32* %layno, align 4, !tbaa !1
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.130, %for.body.54
  %68 = load i32, i32* %layno, align 4, !tbaa !1
  %69 = load i32, i32* %numOflayers, align 4, !tbaa !1
  %cmp57 = icmp slt i32 %68, %69
  br i1 %cmp57, label %for.body.59, label %for.end.132

for.body.59:                                      ; preds = %for.cond.56
  %prog = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 5
  %70 = load i32, i32* %prog, align 4, !tbaa !24
  switch i32 %70, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.69
    i32 2, label %sw.bb.80
    i32 3, label %sw.bb.91
    i32 4, label %sw.bb.102
  ]

sw.bb:                                            ; preds = %for.body.59
  %71 = load i32, i32* %layno, align 4, !tbaa !1
  %72 = load i32, i32* %numOfres, align 4, !tbaa !1
  %mul60 = mul nsw i32 %71, %72
  %73 = load i32, i32* %resno, align 4, !tbaa !1
  %add61 = add nsw i32 %mul60, %73
  %numcomps = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %74 = load i32, i32* %numcomps, align 4, !tbaa !9
  %mul62 = mul nsw i32 %add61, %74
  %75 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %add63 = add nsw i32 %mul62, %75
  %76 = load i32, i32* %numOfprec, align 4, !tbaa !1
  %mul64 = mul nsw i32 %add63, %76
  %77 = load i32, i32* %precno, align 4, !tbaa !1
  %add65 = add nsw i32 %mul64, %77
  %idxprom66 = sext i32 %add65 to i64
  %78 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  %packet67 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %78, i32 0, i32 9
  %79 = load %struct.opj_packet_info*, %struct.opj_packet_info** %packet67, align 8, !tbaa !25
  %arrayidx68 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %79, i64 %idxprom66
  %80 = bitcast %struct.opj_packet_info* %packet to i8*
  %81 = bitcast %struct.opj_packet_info* %arrayidx68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 32, i32 8, i1 false), !tbaa.struct !27
  br label %sw.epilog

sw.bb.69:                                         ; preds = %for.body.59
  %82 = load i32, i32* %resno, align 4, !tbaa !1
  %83 = load i32, i32* %numOflayers, align 4, !tbaa !1
  %mul70 = mul nsw i32 %82, %83
  %84 = load i32, i32* %layno, align 4, !tbaa !1
  %add71 = add nsw i32 %mul70, %84
  %numcomps72 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %85 = load i32, i32* %numcomps72, align 4, !tbaa !9
  %mul73 = mul nsw i32 %add71, %85
  %86 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %add74 = add nsw i32 %mul73, %86
  %87 = load i32, i32* %numOfprec, align 4, !tbaa !1
  %mul75 = mul nsw i32 %add74, %87
  %88 = load i32, i32* %precno, align 4, !tbaa !1
  %add76 = add nsw i32 %mul75, %88
  %idxprom77 = sext i32 %add76 to i64
  %89 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  %packet78 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %89, i32 0, i32 9
  %90 = load %struct.opj_packet_info*, %struct.opj_packet_info** %packet78, align 8, !tbaa !25
  %arrayidx79 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %90, i64 %idxprom77
  %91 = bitcast %struct.opj_packet_info* %packet to i8*
  %92 = bitcast %struct.opj_packet_info* %arrayidx79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 32, i32 8, i1 false), !tbaa.struct !27
  br label %sw.epilog

sw.bb.80:                                         ; preds = %for.body.59
  %93 = load i32, i32* %resno, align 4, !tbaa !1
  %94 = load i32, i32* %numOfprec, align 4, !tbaa !1
  %mul81 = mul nsw i32 %93, %94
  %95 = load i32, i32* %precno, align 4, !tbaa !1
  %add82 = add nsw i32 %mul81, %95
  %numcomps83 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %96 = load i32, i32* %numcomps83, align 4, !tbaa !9
  %mul84 = mul nsw i32 %add82, %96
  %97 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %add85 = add nsw i32 %mul84, %97
  %98 = load i32, i32* %numOflayers, align 4, !tbaa !1
  %mul86 = mul nsw i32 %add85, %98
  %99 = load i32, i32* %layno, align 4, !tbaa !1
  %add87 = add nsw i32 %mul86, %99
  %idxprom88 = sext i32 %add87 to i64
  %100 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  %packet89 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %100, i32 0, i32 9
  %101 = load %struct.opj_packet_info*, %struct.opj_packet_info** %packet89, align 8, !tbaa !25
  %arrayidx90 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %101, i64 %idxprom88
  %102 = bitcast %struct.opj_packet_info* %packet to i8*
  %103 = bitcast %struct.opj_packet_info* %arrayidx90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 32, i32 8, i1 false), !tbaa.struct !27
  br label %sw.epilog

sw.bb.91:                                         ; preds = %for.body.59
  %104 = load i32, i32* %precno, align 4, !tbaa !1
  %numcomps92 = getelementptr inbounds %struct.opj_codestream_info, %struct.opj_codestream_info* %cstr_info, i32 0, i32 12
  %105 = load i32, i32* %numcomps92, align 4, !tbaa !9
  %mul93 = mul nsw i32 %104, %105
  %106 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %add94 = add nsw i32 %mul93, %106
  %107 = load i32, i32* %numOfres, align 4, !tbaa !1
  %mul95 = mul nsw i32 %add94, %107
  %108 = load i32, i32* %resno, align 4, !tbaa !1
  %add96 = add nsw i32 %mul95, %108
  %109 = load i32, i32* %numOflayers, align 4, !tbaa !1
  %mul97 = mul nsw i32 %add96, %109
  %110 = load i32, i32* %layno, align 4, !tbaa !1
  %add98 = add nsw i32 %mul97, %110
  %idxprom99 = sext i32 %add98 to i64
  %111 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  %packet100 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %111, i32 0, i32 9
  %112 = load %struct.opj_packet_info*, %struct.opj_packet_info** %packet100, align 8, !tbaa !25
  %arrayidx101 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %112, i64 %idxprom99
  %113 = bitcast %struct.opj_packet_info* %packet to i8*
  %114 = bitcast %struct.opj_packet_info* %arrayidx101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* %114, i64 32, i32 8, i1 false), !tbaa.struct !27
  br label %sw.epilog

sw.bb.102:                                        ; preds = %for.body.59
  %115 = load i32, i32* %compno.addr, align 4, !tbaa !1
  %116 = load i32, i32* %numOfprec, align 4, !tbaa !1
  %mul103 = mul nsw i32 %115, %116
  %117 = load i32, i32* %precno, align 4, !tbaa !1
  %add104 = add nsw i32 %mul103, %117
  %118 = load i32, i32* %numOfres, align 4, !tbaa !1
  %mul105 = mul nsw i32 %add104, %118
  %119 = load i32, i32* %resno, align 4, !tbaa !1
  %add106 = add nsw i32 %mul105, %119
  %120 = load i32, i32* %numOflayers, align 4, !tbaa !1
  %mul107 = mul nsw i32 %add106, %120
  %121 = load i32, i32* %layno, align 4, !tbaa !1
  %add108 = add nsw i32 %mul107, %121
  %idxprom109 = sext i32 %add108 to i64
  %122 = load %struct.opj_tile_info*, %struct.opj_tile_info** %tile_Idx, align 8, !tbaa !5
  %packet110 = getelementptr inbounds %struct.opj_tile_info, %struct.opj_tile_info* %122, i32 0, i32 9
  %123 = load %struct.opj_packet_info*, %struct.opj_packet_info** %packet110, align 8, !tbaa !25
  %arrayidx111 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %123, i64 %idxprom109
  %124 = bitcast %struct.opj_packet_info* %packet to i8*
  %125 = bitcast %struct.opj_packet_info* %arrayidx111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %125, i64 32, i32 8, i1 false), !tbaa.struct !27
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.59
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.102, %sw.bb.91, %sw.bb.80, %sw.bb.69, %sw.bb
  %arraydecay113 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %start_pos114 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %packet, i32 0, i32 0
  %127 = load i64, i64* %start_pos114, align 8, !tbaa !15
  %128 = load i32, i32* %coff.addr, align 4, !tbaa !1
  %conv115 = sext i32 %128 to i64
  %sub = sub nsw i64 %127, %conv115
  %conv116 = trunc i64 %sub to i32
  %129 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay113, i32 %conv116, i32 %129) #5
  %130 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay117 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %131 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv118 = sext i32 %131 to i64
  %132 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call119 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %130, i8* %arraydecay117, i64 %conv118, %struct.opj_event_mgr* %132) #5
  %arraydecay120 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %end_pos121 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %packet, i32 0, i32 2
  %133 = load i64, i64* %end_pos121, align 8, !tbaa !18
  %start_pos122 = getelementptr inbounds %struct.opj_packet_info, %struct.opj_packet_info* %packet, i32 0, i32 0
  %134 = load i64, i64* %start_pos122, align 8, !tbaa !15
  %sub123 = sub nsw i64 %133, %134
  %add124 = add nsw i64 %sub123, 1
  %conv125 = trunc i64 %add124 to i32
  %135 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay120, i32 %conv125, i32 %135) #5
  %136 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay126 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %137 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv127 = sext i32 %137 to i64
  %138 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call128 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %136, i8* %arraydecay126, i64 %conv127, %struct.opj_event_mgr* %138) #5
  %139 = load i32, i32* %num_packet, align 4, !tbaa !1
  %inc129 = add nsw i32 %139, 1
  store i32 %inc129, i32* %num_packet, align 4, !tbaa !1
  br label %for.inc.130

for.inc.130:                                      ; preds = %sw.epilog
  %140 = load i32, i32* %layno, align 4, !tbaa !1
  %inc131 = add nsw i32 %140, 1
  store i32 %inc131, i32* %layno, align 4, !tbaa !1
  br label %for.cond.56

for.end.132:                                      ; preds = %for.cond.56
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.end.132
  %141 = load i32, i32* %precno, align 4, !tbaa !1
  %inc134 = add nsw i32 %141, 1
  store i32 %inc134, i32* %precno, align 4, !tbaa !1
  br label %for.cond.51

for.end.135:                                      ; preds = %for.cond.51
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.end.135
  %142 = load i32, i32* %resno, align 4, !tbaa !1
  %inc137 = add nsw i32 %142, 1
  store i32 %inc137, i32* %resno, align 4, !tbaa !1
  br label %for.cond.40

for.end.138:                                      ; preds = %for.cond.40
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.138
  %143 = load i32, i32* %num_packet, align 4, !tbaa !1
  %144 = load i32, i32* %nmax, align 4, !tbaa !1
  %cmp139 = icmp slt i32 %143, %144
  br i1 %cmp139, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay141 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %145 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay141, i32 0, i32 %145) #5
  %146 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay142 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %147 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv143 = sext i32 %147 to i64
  %148 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call144 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %146, i8* %arraydecay142, i64 %conv143, %struct.opj_event_mgr* %148) #5
  %arraydecay145 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %149 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay145, i32 0, i32 %149) #5
  %150 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay146 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %151 = load i32, i32* %size_of_coding, align 4, !tbaa !1
  %conv147 = sext i32 %151 to i64
  %152 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call148 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %150, i8* %arraydecay146, i64 %conv147, %struct.opj_event_mgr* %152) #5
  %153 = load i32, i32* %num_packet, align 4, !tbaa !1
  %inc149 = add nsw i32 %153, 1
  store i32 %inc149, i32* %num_packet, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.150

for.inc.150:                                      ; preds = %while.end
  %154 = load i32, i32* %tileno, align 4, !tbaa !1
  %inc151 = add nsw i32 %154, 1
  store i32 %inc151, i32* %tileno, align 4, !tbaa !1
  br label %for.cond.26

for.end.152:                                      ; preds = %for.cond.26
  %155 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %call153 = call i64 @opj_stream_tell(%struct.opj_stream_private* %155) #5
  %156 = load i64, i64* %lenp, align 8, !tbaa !7
  %sub154 = sub nsw i64 %call153, %156
  %conv155 = trunc i64 %sub154 to i32
  store i32 %conv155, i32* %len, align 4, !tbaa !1
  %157 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %158 = load i64, i64* %lenp, align 8, !tbaa !7
  %159 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call156 = call i32 @opj_stream_seek(%struct.opj_stream_private* %157, i64 %158, %struct.opj_event_mgr* %159) #5
  %arraydecay157 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %160 = load i32, i32* %len, align 4, !tbaa !1
  call void @opj_write_bytes_LE(i8* %arraydecay157, i32 %160, i32 4) #5
  %161 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %arraydecay158 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %162 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call159 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %161, i8* %arraydecay158, i64 4, %struct.opj_event_mgr* %162) #5
  %163 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !5
  %164 = load i64, i64* %lenp, align 8, !tbaa !7
  %165 = load i32, i32* %len, align 4, !tbaa !1
  %conv160 = zext i32 %165 to i64
  %add161 = add nsw i64 %164, %conv160
  %166 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !5
  %call162 = call i32 @opj_stream_seek(%struct.opj_stream_private* %163, i64 %add161, %struct.opj_event_mgr* %166) #5
  %167 = load i32, i32* %len, align 4, !tbaa !1
  %168 = bitcast i32* %numOflayers to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %numOfprec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %numOfres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %num_packet to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %layno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast %struct.opj_packet_info* %packet to i8*
  call void @llvm.lifetime.end(i64 32, i8* %175) #1
  %176 = bitcast %struct.opj_tile_info** %tile_Idx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i64* %lenp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %size_of_coding to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %nmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %version to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast i32* %tileno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  ret i32 %167
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
!18 = !{!16, !8, i64 16}
!19 = !{!10, !6, i64 64}
!20 = !{!10, !6, i64 104}
!21 = !{!10, !2, i64 56}
!22 = !{!10, !2, i64 44}
!23 = !{!10, !2, i64 48}
!24 = !{!10, !3, i64 24}
!25 = !{!26, !6, i64 552}
!26 = !{!"opj_tile_info", !6, i64 0, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !3, i64 24, !3, i64 156, !3, i64 288, !3, i64 420, !6, i64 552, !2, i64 560, !11, i64 568, !2, i64 576, !6, i64 584, !2, i64 592, !2, i64 596, !6, i64 600}
!27 = !{i64 0, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 8, !7, i64 24, i64 8, !28}
!28 = !{!11, !11, i64 0}
