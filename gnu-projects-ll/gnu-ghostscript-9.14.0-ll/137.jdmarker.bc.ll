; ModuleID = './jdmarker.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, i32, %struct.jpeg_marker_struct*, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, i32*, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, {}*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_marker_struct = type { %struct.jpeg_marker_struct*, i8, i32, i32, i8* }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)*, void (%struct.jpeg_decompress_struct*)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.my_marker_reader = type { %struct.jpeg_marker_reader, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, [16 x i32], %struct.jpeg_marker_struct*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"SOS\00", align 1
@jpeg_natural_order2 = external constant [0 x i32], align 4
@jpeg_natural_order3 = external constant [0 x i32], align 4
@jpeg_natural_order4 = external constant [0 x i32], align 4
@jpeg_natural_order5 = external constant [0 x i32], align 4
@jpeg_natural_order6 = external constant [0 x i32], align 4
@jpeg_natural_order7 = external constant [0 x i32], align 4
@jpeg_natural_order = external constant [0 x i32], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"LSE\00", align 1

; Function Attrs: nounwind uwtable
define i32 @jpeg_resync_to_restart(%struct.jpeg_decompress_struct* %cinfo, i32 %desired) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %desired.addr = alloca i32, align 4
  %marker = alloca i32, align 4
  %action = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %desired, i32* %desired.addr, align 4, !tbaa !5
  %0 = bitcast i32* %marker to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 82
  %2 = load i32, i32* %unread_marker, align 4, !tbaa !7
  store i32 %2, i32* %marker, align 4, !tbaa !5
  %3 = bitcast i32* %action to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %action, align 4, !tbaa !5
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 124, i32* %msg_code, align 4, !tbaa !12
  %6 = load i32, i32* %marker, align 4, !tbaa !5
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %6, i32* %arrayidx, align 4, !tbaa !5
  %9 = load i32, i32* %desired.addr, align 4, !tbaa !5
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !11
  %msg_parm3 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 6
  %i4 = bitcast %union.anon* %msg_parm3 to [8 x i32]*
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %i4, i32 0, i64 1
  store i32 %9, i32* %arrayidx5, align 4, !tbaa !5
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 1
  %14 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16, i32 -1) #4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %17 = load i32, i32* %marker, align 4, !tbaa !5
  %cmp = icmp slt i32 %17, 192
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  store i32 2, i32* %action, align 4, !tbaa !5
  br label %if.end.32

if.else:                                          ; preds = %for.cond
  %18 = load i32, i32* %marker, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %18, 208
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %19 = load i32, i32* %marker, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %19, 215
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.else
  store i32 3, i32* %action, align 4, !tbaa !5
  br label %if.end.31

if.else.10:                                       ; preds = %lor.lhs.false
  %20 = load i32, i32* %marker, align 4, !tbaa !5
  %21 = load i32, i32* %desired.addr, align 4, !tbaa !5
  %add = add nsw i32 %21, 1
  %and = and i32 %add, 7
  %add11 = add nsw i32 208, %and
  %cmp12 = icmp eq i32 %20, %add11
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.else.10
  %22 = load i32, i32* %marker, align 4, !tbaa !5
  %23 = load i32, i32* %desired.addr, align 4, !tbaa !5
  %add14 = add nsw i32 %23, 2
  %and15 = and i32 %add14, 7
  %add16 = add nsw i32 208, %and15
  %cmp17 = icmp eq i32 %22, %add16
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %lor.lhs.false.13, %if.else.10
  store i32 3, i32* %action, align 4, !tbaa !5
  br label %if.end.30

if.else.19:                                       ; preds = %lor.lhs.false.13
  %24 = load i32, i32* %marker, align 4, !tbaa !5
  %25 = load i32, i32* %desired.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %25, 1
  %and20 = and i32 %sub, 7
  %add21 = add nsw i32 208, %and20
  %cmp22 = icmp eq i32 %24, %add21
  br i1 %cmp22, label %if.then.28, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.else.19
  %26 = load i32, i32* %marker, align 4, !tbaa !5
  %27 = load i32, i32* %desired.addr, align 4, !tbaa !5
  %sub24 = sub nsw i32 %27, 2
  %and25 = and i32 %sub24, 7
  %add26 = add nsw i32 208, %and25
  %cmp27 = icmp eq i32 %26, %add26
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %lor.lhs.false.23, %if.else.19
  store i32 2, i32* %action, align 4, !tbaa !5
  br label %if.end

if.else.29:                                       ; preds = %lor.lhs.false.23
  store i32 1, i32* %action, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else.29, %if.then.28
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then.18
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.9
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8, !tbaa !11
  %msg_code34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 5
  store i32 99, i32* %msg_code34, align 4, !tbaa !12
  %30 = load i32, i32* %marker, align 4, !tbaa !5
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8, !tbaa !11
  %msg_parm36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 6
  %i37 = bitcast %union.anon* %msg_parm36 to [8 x i32]*
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* %i37, i32 0, i64 0
  store i32 %30, i32* %arrayidx38, align 4, !tbaa !5
  %33 = load i32, i32* %action, align 4, !tbaa !5
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8, !tbaa !11
  %msg_parm40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 6
  %i41 = bitcast %union.anon* %msg_parm40 to [8 x i32]*
  %arrayidx42 = getelementptr inbounds [8 x i32], [8 x i32]* %i41, i32 0, i64 1
  store i32 %33, i32* %arrayidx42, align 4, !tbaa !5
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err43, align 8, !tbaa !11
  %emit_message44 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 1
  %38 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message44, align 8, !tbaa !15
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %40 = bitcast %struct.jpeg_decompress_struct* %39 to %struct.jpeg_common_struct*
  call void %38(%struct.jpeg_common_struct* %40, i32 4) #4
  %41 = load i32, i32* %action, align 4, !tbaa !5
  switch i32 %41, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.46
    i32 3, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %if.end.32
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 82
  store i32 0, i32* %unread_marker45, align 4, !tbaa !7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.46:                                         ; preds = %if.end.32
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 @next_marker(%struct.jpeg_decompress_struct* %43) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %sw.bb.46
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %sw.bb.46
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 82
  %45 = load i32, i32* %unread_marker49, align 4, !tbaa !7
  store i32 %45, i32* %marker, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.32
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.32, %if.end.48
  br label %for.cond

cleanup:                                          ; preds = %sw.bb.50, %if.then.47, %sw.bb
  %46 = bitcast i32* %action to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %marker to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @next_marker(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %c = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 6
  %3 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !16
  store %struct.jpeg_source_mgr* %3, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %4 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %5, i32 0, i32 0
  %6 = load i8*, i8** %next_input_byte1, align 8, !tbaa !17
  store i8* %6, i8** %next_input_byte, align 8, !tbaa !1
  %7 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %8, i32 0, i32 1
  %9 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !19
  store i64 %9, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %if.end.53, %entry
  br label %do.body

do.body:                                          ; preds = %for.cond
  %10 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp = icmp eq i64 %10, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %11 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %11, i32 0, i32 3
  %12 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !21
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %12(%struct.jpeg_decompress_struct* %13) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %14, i32 0, i32 0
  %15 = load i8*, i8** %next_input_byte4, align 8, !tbaa !17
  store i8* %15, i8** %next_input_byte, align 8, !tbaa !1
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 1
  %17 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !19
  store i64 %17, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %18 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec = add i64 %18, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !20
  %19 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !22
  %conv = zext i8 %20 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %do.end.27, %do.end
  %21 = load i32, i32* %c, align 4, !tbaa !5
  %cmp7 = icmp ne i32 %21, 255
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 88
  %23 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !23
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %23, i32 0, i32 6
  %24 = load i32, i32* %discarded_bytes, align 4, !tbaa !24
  %inc = add i32 %24, 1
  store i32 %inc, i32* %discarded_bytes, align 4, !tbaa !24
  %25 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %26 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte9 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %26, i32 0, i32 0
  store i8* %25, i8** %next_input_byte9, align 8, !tbaa !17
  %27 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %28 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer10 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %28, i32 0, i32 1
  store i64 %27, i64* %bytes_in_buffer10, align 8, !tbaa !19
  br label %do.body.11

do.body.11:                                       ; preds = %while.body
  %29 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp12 = icmp eq i64 %29, 0
  br i1 %cmp12, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %do.body.11
  %30 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer15 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %30, i32 0, i32 3
  %31 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer15, align 8, !tbaa !21
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call16 = call i32 %31(%struct.jpeg_decompress_struct* %32) #4
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.14
  %33 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte20 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %33, i32 0, i32 0
  %34 = load i8*, i8** %next_input_byte20, align 8, !tbaa !17
  store i8* %34, i8** %next_input_byte, align 8, !tbaa !1
  %35 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer21 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %35, i32 0, i32 1
  %36 = load i64, i64* %bytes_in_buffer21, align 8, !tbaa !19
  store i64 %36, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %do.body.11
  %37 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec23 = add i64 %37, -1
  store i64 %dec23, i64* %bytes_in_buffer, align 8, !tbaa !20
  %38 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr24, i8** %next_input_byte, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !22
  %conv25 = zext i8 %39 to i32
  store i32 %conv25, i32* %c, align 4, !tbaa !5
  br label %do.cond.26

do.cond.26:                                       ; preds = %if.end.22
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.28

do.body.28:                                       ; preds = %do.cond.46, %while.end
  br label %do.body.29

do.body.29:                                       ; preds = %do.body.28
  %40 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp30 = icmp eq i64 %40, 0
  br i1 %cmp30, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %do.body.29
  %41 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer33 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %41, i32 0, i32 3
  %42 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer33, align 8, !tbaa !21
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call34 = call i32 %42(%struct.jpeg_decompress_struct* %43) #4
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.then.32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.then.32
  %44 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte38 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %44, i32 0, i32 0
  %45 = load i8*, i8** %next_input_byte38, align 8, !tbaa !17
  store i8* %45, i8** %next_input_byte, align 8, !tbaa !1
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer39 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 1
  %47 = load i64, i64* %bytes_in_buffer39, align 8, !tbaa !19
  store i64 %47, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.37, %do.body.29
  %48 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec41 = add i64 %48, -1
  store i64 %dec41, i64* %bytes_in_buffer, align 8, !tbaa !20
  %49 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr42 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr42, i8** %next_input_byte, align 8, !tbaa !1
  %50 = load i8, i8* %49, align 1, !tbaa !22
  %conv43 = zext i8 %50 to i32
  store i32 %conv43, i32* %c, align 4, !tbaa !5
  br label %do.cond.44

do.cond.44:                                       ; preds = %if.end.40
  br label %do.end.45

do.end.45:                                        ; preds = %do.cond.44
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.end.45
  %51 = load i32, i32* %c, align 4, !tbaa !5
  %cmp47 = icmp eq i32 %51, 255
  br i1 %cmp47, label %do.body.28, label %do.end.49

do.end.49:                                        ; preds = %do.cond.46
  %52 = load i32, i32* %c, align 4, !tbaa !5
  %cmp50 = icmp ne i32 %52, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %do.end.49
  br label %for.end

if.end.53:                                        ; preds = %do.end.49
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 88
  %54 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker54, align 8, !tbaa !23
  %discarded_bytes55 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %54, i32 0, i32 6
  %55 = load i32, i32* %discarded_bytes55, align 4, !tbaa !24
  %add = add i32 %55, 2
  store i32 %add, i32* %discarded_bytes55, align 4, !tbaa !24
  %56 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %57 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte56 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %57, i32 0, i32 0
  store i8* %56, i8** %next_input_byte56, align 8, !tbaa !17
  %58 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %59 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer57 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %59, i32 0, i32 1
  store i64 %58, i64* %bytes_in_buffer57, align 8, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %if.then.52
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 88
  %61 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker58, align 8, !tbaa !23
  %discarded_bytes59 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %61, i32 0, i32 6
  %62 = load i32, i32* %discarded_bytes59, align 4, !tbaa !24
  %cmp60 = icmp ne i32 %62, 0
  br i1 %cmp60, label %if.then.62, label %if.end.73

if.then.62:                                       ; preds = %for.end
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 5
  store i32 119, i32* %msg_code, align 4, !tbaa !12
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 88
  %66 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker63, align 8, !tbaa !23
  %discarded_bytes64 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %66, i32 0, i32 6
  %67 = load i32, i32* %discarded_bytes64, align 4, !tbaa !24
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 0
  %69 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err65, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %69, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %67, i32* %arrayidx, align 4, !tbaa !5
  %70 = load i32, i32* %c, align 4, !tbaa !5
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err66, align 8, !tbaa !11
  %msg_parm67 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 6
  %i68 = bitcast %union.anon* %msg_parm67 to [8 x i32]*
  %arrayidx69 = getelementptr inbounds [8 x i32], [8 x i32]* %i68, i32 0, i64 1
  store i32 %70, i32* %arrayidx69, align 4, !tbaa !5
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i32 0, i32 1
  %75 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %77 = bitcast %struct.jpeg_decompress_struct* %76 to %struct.jpeg_common_struct*
  call void %75(%struct.jpeg_common_struct* %77, i32 -1) #4
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 88
  %79 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker71, align 8, !tbaa !23
  %discarded_bytes72 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %79, i32 0, i32 6
  store i32 0, i32* %discarded_bytes72, align 4, !tbaa !24
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.62, %for.end
  %80 = load i32, i32* %c, align 4, !tbaa !5
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 82
  store i32 %80, i32* %unread_marker, align 4, !tbaa !7
  %82 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %83 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte74 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %83, i32 0, i32 0
  store i8* %82, i8** %next_input_byte74, align 8, !tbaa !17
  %84 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %85 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer75 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %85, i32 0, i32 1
  store i64 %84, i64* %bytes_in_buffer75, align 8, !tbaa !19
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.73, %if.then.36, %if.then.18, %if.then.3
  %86 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @jinit_marker_reader(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %marker = alloca %struct.my_marker_reader*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_marker_reader** %marker to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !26
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !27
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 0, i64 264) #4
  %7 = bitcast i8* %call to %struct.my_marker_reader*
  store %struct.my_marker_reader* %7, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %8 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %8, i32 0, i32 0
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 88
  store %struct.jpeg_marker_reader* %pub, %struct.jpeg_marker_reader** %marker1, align 8, !tbaa !23
  %10 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %10, i32 0, i32 0
  %reset_marker_reader = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %pub2, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*)* @reset_marker_reader, void (%struct.jpeg_decompress_struct*)** %reset_marker_reader, align 8, !tbaa !29
  %11 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %pub3 = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %11, i32 0, i32 0
  %read_markers = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %pub3, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*)* @read_markers, i32 (%struct.jpeg_decompress_struct*)** %read_markers, align 8, !tbaa !31
  %12 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %pub4 = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %12, i32 0, i32 0
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %pub4, i32 0, i32 2
  store i32 (%struct.jpeg_decompress_struct*)* @read_restart_marker, i32 (%struct.jpeg_decompress_struct*)** %read_restart_marker, align 8, !tbaa !32
  %13 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %process_COM = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %13, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*)* @skip_variable, i32 (%struct.jpeg_decompress_struct*)** %process_COM, align 8, !tbaa !33
  %14 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %length_limit_COM = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %14, i32 0, i32 3
  store i32 0, i32* %length_limit_COM, align 4, !tbaa !34
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %process_APPn = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %17, i32 0, i32 2
  %arrayidx = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn, i32 0, i64 %idxprom
  store i32 (%struct.jpeg_decompress_struct*)* @skip_variable, i32 (%struct.jpeg_decompress_struct*)** %arrayidx, align 8, !tbaa !1
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %18 to i64
  %19 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %length_limit_APPn = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %19, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [16 x i32], [16 x i32]* %length_limit_APPn, i32 0, i64 %idxprom5
  store i32 0, i32* %arrayidx6, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %process_APPn7 = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %21, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn7, i32 0, i64 0
  store i32 (%struct.jpeg_decompress_struct*)* @get_interesting_appn, i32 (%struct.jpeg_decompress_struct*)** %arrayidx8, align 8, !tbaa !1
  %22 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %process_APPn9 = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %22, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn9, i32 0, i64 14
  store i32 (%struct.jpeg_decompress_struct*)* @get_interesting_appn, i32 (%struct.jpeg_decompress_struct*)** %arrayidx10, align 8, !tbaa !1
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @reset_marker_reader(%struct.jpeg_decompress_struct* %23) #4
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.my_marker_reader** %marker to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reset_marker_reader(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %marker = alloca %struct.my_marker_reader*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_marker_reader** %marker to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 88
  %2 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker1, align 8, !tbaa !23
  %3 = bitcast %struct.jpeg_marker_reader* %2 to %struct.my_marker_reader*
  store %struct.my_marker_reader* %3, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 44
  store %struct.jpeg_component_info* null, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !35
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 35
  store i32 0, i32* %input_scan_number, align 4, !tbaa !36
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 82
  store i32 0, i32* %unread_marker, align 4, !tbaa !7
  %7 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %7, i32 0, i32 0
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %pub, i32 0, i32 3
  store i32 0, i32* %saw_SOI, align 4, !tbaa !37
  %8 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %8, i32 0, i32 0
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %pub2, i32 0, i32 4
  store i32 0, i32* %saw_SOF, align 4, !tbaa !38
  %9 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %pub3 = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %9, i32 0, i32 0
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %pub3, i32 0, i32 6
  store i32 0, i32* %discarded_bytes, align 4, !tbaa !39
  %10 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %cur_marker = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %10, i32 0, i32 5
  store %struct.jpeg_marker_struct* null, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !40
  %11 = bitcast %struct.my_marker_reader** %marker to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @read_markers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 82
  %1 = load i32, i32* %unread_marker, align 4, !tbaa !7
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.cond
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 88
  %3 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !23
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %3, i32 0, i32 3
  %4 = load i32, i32* %saw_SOI, align 4, !tbaa !41
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 @first_marker(%struct.jpeg_decompress_struct* %5) #4
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then.1
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.1
  br label %if.end.8

if.else:                                          ; preds = %if.then
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call4 = call i32 @next_marker(%struct.jpeg_decompress_struct* %6) #4
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %for.cond
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 82
  %8 = load i32, i32* %unread_marker10, align 4, !tbaa !7
  switch i32 %8, label %sw.default [
    i32 216, label %sw.bb
    i32 192, label %sw.bb.15
    i32 193, label %sw.bb.20
    i32 194, label %sw.bb.25
    i32 201, label %sw.bb.30
    i32 202, label %sw.bb.35
    i32 195, label %sw.bb.40
    i32 197, label %sw.bb.40
    i32 198, label %sw.bb.40
    i32 199, label %sw.bb.40
    i32 200, label %sw.bb.40
    i32 203, label %sw.bb.40
    i32 205, label %sw.bb.40
    i32 206, label %sw.bb.40
    i32 207, label %sw.bb.40
    i32 218, label %sw.bb.44
    i32 217, label %sw.bb.50
    i32 204, label %sw.bb.55
    i32 196, label %sw.bb.60
    i32 219, label %sw.bb.65
    i32 221, label %sw.bb.70
    i32 248, label %sw.bb.75
    i32 224, label %sw.bb.80
    i32 225, label %sw.bb.80
    i32 226, label %sw.bb.80
    i32 227, label %sw.bb.80
    i32 228, label %sw.bb.80
    i32 229, label %sw.bb.80
    i32 230, label %sw.bb.80
    i32 231, label %sw.bb.80
    i32 232, label %sw.bb.80
    i32 233, label %sw.bb.80
    i32 234, label %sw.bb.80
    i32 235, label %sw.bb.80
    i32 236, label %sw.bb.80
    i32 237, label %sw.bb.80
    i32 238, label %sw.bb.80
    i32 239, label %sw.bb.80
    i32 254, label %sw.bb.88
    i32 208, label %sw.bb.94
    i32 209, label %sw.bb.94
    i32 210, label %sw.bb.94
    i32 211, label %sw.bb.94
    i32 212, label %sw.bb.94
    i32 213, label %sw.bb.94
    i32 214, label %sw.bb.94
    i32 215, label %sw.bb.94
    i32 1, label %sw.bb.94
    i32 220, label %sw.bb.104
  ]

sw.bb:                                            ; preds = %if.end.9
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call11 = call i32 @get_soi(%struct.jpeg_decompress_struct* %9) #4
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end.9
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call16 = call i32 @get_sof(%struct.jpeg_decompress_struct* %10, i32 1, i32 0, i32 0) #4
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %sw.bb.15
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %sw.bb.15
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end.9
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call21 = call i32 @get_sof(%struct.jpeg_decompress_struct* %11, i32 0, i32 0, i32 0) #4
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %sw.bb.20
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %sw.bb.20
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.9
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call26 = call i32 @get_sof(%struct.jpeg_decompress_struct* %12, i32 0, i32 1, i32 0) #4
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %sw.bb.25
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %sw.bb.25
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.9
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call31 = call i32 @get_sof(%struct.jpeg_decompress_struct* %13, i32 0, i32 0, i32 1) #4
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %sw.bb.30
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %sw.bb.30
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.9
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call36 = call i32 @get_sof(%struct.jpeg_decompress_struct* %14, i32 0, i32 1, i32 1) #4
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %sw.bb.35
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %sw.bb.35
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 63, i32* %msg_code, align 4, !tbaa !12
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 82
  %18 = load i32, i32* %unread_marker41, align 4, !tbaa !7
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err42, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %18, i32* %arrayidx, align 4, !tbaa !5
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err43, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !42
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %25 = bitcast %struct.jpeg_decompress_struct* %24 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* %25) #4
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.9
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call45 = call i32 @get_sos(%struct.jpeg_decompress_struct* %26) #4
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %sw.bb.44
  store i32 0, i32* %retval
  br label %return

if.end.48:                                        ; preds = %sw.bb.44
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 82
  store i32 0, i32* %unread_marker49, align 4, !tbaa !7
  store i32 1, i32* %retval
  br label %return

sw.bb.50:                                         ; preds = %if.end.9
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err51, align 8, !tbaa !11
  %msg_code52 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 5
  store i32 87, i32* %msg_code52, align 4, !tbaa !12
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err53, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 1
  %32 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %34 = bitcast %struct.jpeg_decompress_struct* %33 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* %34, i32 1) #4
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 82
  store i32 0, i32* %unread_marker54, align 4, !tbaa !7
  store i32 2, i32* %retval
  br label %return

sw.bb.55:                                         ; preds = %if.end.9
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call56 = call i32 @get_dac(%struct.jpeg_decompress_struct* %36) #4
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %sw.bb.55
  store i32 0, i32* %retval
  br label %return

if.end.59:                                        ; preds = %sw.bb.55
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end.9
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call61 = call i32 @get_dht(%struct.jpeg_decompress_struct* %37) #4
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %sw.bb.60
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %sw.bb.60
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end.9
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call66 = call i32 @get_dqt(%struct.jpeg_decompress_struct* %38) #4
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %sw.bb.65
  store i32 0, i32* %retval
  br label %return

if.end.69:                                        ; preds = %sw.bb.65
  br label %sw.epilog

sw.bb.70:                                         ; preds = %if.end.9
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call71 = call i32 @get_dri(%struct.jpeg_decompress_struct* %39) #4
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %sw.bb.70
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %sw.bb.70
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.end.9
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call76 = call i32 @get_lse(%struct.jpeg_decompress_struct* %40) #4
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %sw.bb.75
  store i32 0, i32* %retval
  br label %return

if.end.79:                                        ; preds = %sw.bb.75
  br label %sw.epilog

sw.bb.80:                                         ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 82
  %42 = load i32, i32* %unread_marker81, align 4, !tbaa !7
  %sub = sub nsw i32 %42, 224
  %idxprom = sext i32 %sub to i64
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker82 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 88
  %44 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker82, align 8, !tbaa !23
  %45 = bitcast %struct.jpeg_marker_reader* %44 to %struct.my_marker_reader*
  %process_APPn = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %45, i32 0, i32 2
  %arrayidx83 = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn, i32 0, i64 %idxprom
  %46 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %arrayidx83, align 8, !tbaa !1
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call84 = call i32 %46(%struct.jpeg_decompress_struct* %47) #4
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %sw.bb.80
  store i32 0, i32* %retval
  br label %return

if.end.87:                                        ; preds = %sw.bb.80
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.end.9
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 88
  %49 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker89, align 8, !tbaa !23
  %50 = bitcast %struct.jpeg_marker_reader* %49 to %struct.my_marker_reader*
  %process_COM = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %50, i32 0, i32 1
  %51 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %process_COM, align 8, !tbaa !33
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call90 = call i32 %51(%struct.jpeg_decompress_struct* %52) #4
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.end.93, label %if.then.92

if.then.92:                                       ; preds = %sw.bb.88
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %sw.bb.88
  br label %sw.epilog

sw.bb.94:                                         ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 0
  %54 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err95, align 8, !tbaa !11
  %msg_code96 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %54, i32 0, i32 5
  store i32 94, i32* %msg_code96, align 4, !tbaa !12
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 82
  %56 = load i32, i32* %unread_marker97, align 4, !tbaa !7
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err98 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err98, align 8, !tbaa !11
  %msg_parm99 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 6
  %i100 = bitcast %union.anon* %msg_parm99 to [8 x i32]*
  %arrayidx101 = getelementptr inbounds [8 x i32], [8 x i32]* %i100, i32 0, i64 0
  store i32 %56, i32* %arrayidx101, align 4, !tbaa !5
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err102, align 8, !tbaa !11
  %emit_message103 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 1
  %61 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message103, align 8, !tbaa !15
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %63 = bitcast %struct.jpeg_decompress_struct* %62 to %struct.jpeg_common_struct*
  call void %61(%struct.jpeg_common_struct* %63, i32 1) #4
  br label %sw.epilog

sw.bb.104:                                        ; preds = %if.end.9
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call105 = call i32 @skip_variable(%struct.jpeg_decompress_struct* %64) #4
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.end.108, label %if.then.107

if.then.107:                                      ; preds = %sw.bb.104
  store i32 0, i32* %retval
  br label %return

if.end.108:                                       ; preds = %sw.bb.104
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.9
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err109 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err109, align 8, !tbaa !11
  %msg_code110 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 5
  store i32 70, i32* %msg_code110, align 4, !tbaa !12
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker111 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 82
  %68 = load i32, i32* %unread_marker111, align 4, !tbaa !7
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err112 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err112, align 8, !tbaa !11
  %msg_parm113 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 6
  %i114 = bitcast %union.anon* %msg_parm113 to [8 x i32]*
  %arrayidx115 = getelementptr inbounds [8 x i32], [8 x i32]* %i114, i32 0, i64 0
  store i32 %68, i32* %arrayidx115, align 4, !tbaa !5
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err116 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err116, align 8, !tbaa !11
  %error_exit117 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 0
  %73 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit117, align 8, !tbaa !42
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %75 = bitcast %struct.jpeg_decompress_struct* %74 to %struct.jpeg_common_struct*
  call void %73(%struct.jpeg_common_struct* %75) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.108, %sw.bb.94, %if.end.93, %if.end.87, %if.end.79, %if.end.74, %if.end.69, %if.end.64, %if.end.59, %sw.bb.40, %if.end.39, %if.end.34, %if.end.29, %if.end.24, %if.end.19, %if.end.14
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker118 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 82
  store i32 0, i32* %unread_marker118, align 4, !tbaa !7
  br label %for.cond

return:                                           ; preds = %if.then.107, %if.then.92, %if.then.86, %if.then.78, %if.then.73, %if.then.68, %if.then.63, %if.then.58, %sw.bb.50, %if.end.48, %if.then.47, %if.then.38, %if.then.33, %if.then.28, %if.then.23, %if.then.18, %if.then.13, %if.then.6, %if.then.3
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal i32 @read_restart_marker(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 82
  %1 = load i32, i32* %unread_marker, align 4, !tbaa !7
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 @next_marker(%struct.jpeg_decompress_struct* %2) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 82
  %4 = load i32, i32* %unread_marker3, align 4, !tbaa !7
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 88
  %6 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !23
  %next_restart_num = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %6, i32 0, i32 5
  %7 = load i32, i32* %next_restart_num, align 4, !tbaa !43
  %add = add nsw i32 208, %7
  %cmp4 = icmp eq i32 %4, %add
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.2
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 100, i32* %msg_code, align 4, !tbaa !12
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 88
  %11 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker6, align 8, !tbaa !23
  %next_restart_num7 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %11, i32 0, i32 5
  %12 = load i32, i32* %next_restart_num7, align 4, !tbaa !43
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %12, i32* %arrayidx, align 4, !tbaa !5
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 1
  %17 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %19 = bitcast %struct.jpeg_decompress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19, i32 3) #4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 82
  store i32 0, i32* %unread_marker10, align 4, !tbaa !7
  br label %if.end.18

if.else:                                          ; preds = %if.end.2
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 6
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !16
  %resync_to_restart = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 5
  %resync_to_restart11 = bitcast {}** %resync_to_restart to i32 (%struct.jpeg_decompress_struct*, i32)**
  %23 = load i32 (%struct.jpeg_decompress_struct*, i32)*, i32 (%struct.jpeg_decompress_struct*, i32)** %resync_to_restart11, align 8, !tbaa !44
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 88
  %26 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker12, align 8, !tbaa !23
  %next_restart_num13 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %26, i32 0, i32 5
  %27 = load i32, i32* %next_restart_num13, align 4, !tbaa !43
  %call14 = call i32 %23(%struct.jpeg_decompress_struct* %24, i32 %27) #4
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.5
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 88
  %29 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker19, align 8, !tbaa !23
  %next_restart_num20 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %29, i32 0, i32 5
  %30 = load i32, i32* %next_restart_num20, align 4, !tbaa !43
  %add21 = add nsw i32 %30, 1
  %and = and i32 %add21, 7
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 88
  %32 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker22, align 8, !tbaa !23
  %next_restart_num23 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %32, i32 0, i32 5
  store i32 %and, i32* %next_restart_num23, align 4, !tbaa !43
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.16, %if.then.1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @skip_variable(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 6
  %3 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !16
  store %struct.jpeg_source_mgr* %3, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %4 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %5, i32 0, i32 0
  %6 = load i8*, i8** %next_input_byte1, align 8, !tbaa !17
  store i8* %6, i8** %next_input_byte, align 8, !tbaa !1
  %7 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %8, i32 0, i32 1
  %9 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !19
  store i64 %9, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp = icmp eq i64 %10, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %11 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %11, i32 0, i32 3
  %12 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !21
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %12(%struct.jpeg_decompress_struct* %13) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %14, i32 0, i32 0
  %15 = load i8*, i8** %next_input_byte4, align 8, !tbaa !17
  store i8* %15, i8** %next_input_byte, align 8, !tbaa !1
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 1
  %17 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !19
  store i64 %17, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %18 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec = add i64 %18, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !20
  %19 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !22
  %conv = zext i8 %20 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8, !tbaa !20
  %21 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp8 = icmp eq i64 %21, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 3
  %23 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8, !tbaa !21
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call12 = call i32 %23(%struct.jpeg_decompress_struct* %24) #4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  %25 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %25, i32 0, i32 0
  %26 = load i8*, i8** %next_input_byte16, align 8, !tbaa !17
  store i8* %26, i8** %next_input_byte, align 8, !tbaa !1
  %27 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %27, i32 0, i32 1
  %28 = load i64, i64* %bytes_in_buffer17, align 8, !tbaa !19
  store i64 %28, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %29 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec19 = add i64 %29, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8, !tbaa !20
  %30 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !22
  %conv21 = zext i8 %31 to i64
  %32 = load i64, i64* %length, align 8, !tbaa !20
  %add = add nsw i64 %32, %conv21
  store i64 %add, i64* %length, align 8, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load i64, i64* %length, align 8, !tbaa !20
  %sub = sub nsw i64 %33, 2
  store i64 %sub, i64* %length, align 8, !tbaa !20
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 5
  store i32 93, i32* %msg_code, align 4, !tbaa !12
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 82
  %37 = load i32, i32* %unread_marker, align 4, !tbaa !7
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %37, i32* %arrayidx, align 4, !tbaa !5
  %40 = load i64, i64* %length, align 8, !tbaa !20
  %conv23 = trunc i64 %40 to i32
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err24, align 8, !tbaa !11
  %msg_parm25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 6
  %i26 = bitcast %union.anon* %msg_parm25 to [8 x i32]*
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* %i26, i32 0, i64 1
  store i32 %conv23, i32* %arrayidx27, align 4, !tbaa !5
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err28, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 1
  %45 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %47 = bitcast %struct.jpeg_decompress_struct* %46 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* %47, i32 1) #4
  %48 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %49 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte29 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %49, i32 0, i32 0
  store i8* %48, i8** %next_input_byte29, align 8, !tbaa !17
  %50 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %51 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer30 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %51, i32 0, i32 1
  store i64 %50, i64* %bytes_in_buffer30, align 8, !tbaa !19
  %52 = load i64, i64* %length, align 8, !tbaa !20
  %cmp31 = icmp sgt i64 %52, 0
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %do.end
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 6
  %54 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src34, align 8, !tbaa !16
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %54, i32 0, i32 4
  %55 = load void (%struct.jpeg_decompress_struct*, i64)*, void (%struct.jpeg_decompress_struct*, i64)** %skip_input_data, align 8, !tbaa !45
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %57 = load i64, i64* %length, align 8, !tbaa !20
  call void %55(%struct.jpeg_decompress_struct* %56, i64 %57) #4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %do.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.14, %if.then.3
  %58 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @get_interesting_appn(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %b = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %numtoread = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [14 x i8]* %b to i8*
  call void @llvm.lifetime.start(i64 14, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %numtoread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 6
  %6 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !16
  store %struct.jpeg_source_mgr* %6, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %7 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %8, i32 0, i32 0
  %9 = load i8*, i8** %next_input_byte1, align 8, !tbaa !17
  store i8* %9, i8** %next_input_byte, align 8, !tbaa !1
  %10 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %11, i32 0, i32 1
  %12 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !19
  store i64 %12, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %do.body

do.body:                                          ; preds = %entry
  %13 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp = icmp eq i64 %13, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %14 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %14, i32 0, i32 3
  %15 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !21
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %15(%struct.jpeg_decompress_struct* %16) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %17 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %17, i32 0, i32 0
  %18 = load i8*, i8** %next_input_byte4, align 8, !tbaa !17
  store i8* %18, i8** %next_input_byte, align 8, !tbaa !1
  %19 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %19, i32 0, i32 1
  %20 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !19
  store i64 %20, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %21 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec = add i64 %21, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !20
  %22 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !22
  %conv = zext i8 %23 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8, !tbaa !20
  %24 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp8 = icmp eq i64 %24, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %25 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %25, i32 0, i32 3
  %26 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8, !tbaa !21
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call12 = call i32 %26(%struct.jpeg_decompress_struct* %27) #4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  %28 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %28, i32 0, i32 0
  %29 = load i8*, i8** %next_input_byte16, align 8, !tbaa !17
  store i8* %29, i8** %next_input_byte, align 8, !tbaa !1
  %30 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %30, i32 0, i32 1
  %31 = load i64, i64* %bytes_in_buffer17, align 8, !tbaa !19
  store i64 %31, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %32 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec19 = add i64 %32, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8, !tbaa !20
  %33 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !22
  %conv21 = zext i8 %34 to i64
  %35 = load i64, i64* %length, align 8, !tbaa !20
  %add = add nsw i64 %35, %conv21
  store i64 %add, i64* %length, align 8, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load i64, i64* %length, align 8, !tbaa !20
  %sub = sub nsw i64 %36, 2
  store i64 %sub, i64* %length, align 8, !tbaa !20
  %37 = load i64, i64* %length, align 8, !tbaa !20
  %cmp22 = icmp sge i64 %37, 14
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %do.end
  store i32 14, i32* %numtoread, align 4, !tbaa !5
  br label %if.end.31

if.else:                                          ; preds = %do.end
  %38 = load i64, i64* %length, align 8, !tbaa !20
  %cmp25 = icmp sgt i64 %38, 0
  br i1 %cmp25, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.else
  %39 = load i64, i64* %length, align 8, !tbaa !20
  %conv28 = trunc i64 %39 to i32
  store i32 %conv28, i32* %numtoread, align 4, !tbaa !5
  br label %if.end.30

if.else.29:                                       ; preds = %if.else
  store i32 0, i32* %numtoread, align 4, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.then.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.24
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.31
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %41 = load i32, i32* %numtoread, align 4, !tbaa !5
  %cmp32 = icmp ult i32 %40, %41
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.34

do.body.34:                                       ; preds = %for.body
  %42 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp35 = icmp eq i64 %42, 0
  br i1 %cmp35, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %do.body.34
  %43 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer38 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %43, i32 0, i32 3
  %44 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer38, align 8, !tbaa !21
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call39 = call i32 %44(%struct.jpeg_decompress_struct* %45) #4
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.then.37
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.then.37
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte43 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 0
  %47 = load i8*, i8** %next_input_byte43, align 8, !tbaa !17
  store i8* %47, i8** %next_input_byte, align 8, !tbaa !1
  %48 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer44 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %48, i32 0, i32 1
  %49 = load i64, i64* %bytes_in_buffer44, align 8, !tbaa !19
  store i64 %49, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.42, %do.body.34
  %50 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec46 = add i64 %50, -1
  store i64 %dec46, i64* %bytes_in_buffer, align 8, !tbaa !20
  %51 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr47 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr47, i8** %next_input_byte, align 8, !tbaa !1
  %52 = load i8, i8* %51, align 1, !tbaa !22
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %53 to i64
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 %idxprom
  store i8 %52, i8* %arrayidx, align 1, !tbaa !22
  br label %do.cond.48

do.cond.48:                                       ; preds = %if.end.45
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  br label %for.inc

for.inc:                                          ; preds = %do.end.49
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %54, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load i32, i32* %numtoread, align 4, !tbaa !5
  %conv50 = zext i32 %55 to i64
  %56 = load i64, i64* %length, align 8, !tbaa !20
  %sub51 = sub nsw i64 %56, %conv50
  store i64 %sub51, i64* %length, align 8, !tbaa !20
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 82
  %58 = load i32, i32* %unread_marker, align 4, !tbaa !7
  switch i32 %58, label %sw.default [
    i32 224, label %sw.bb
    i32 238, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %for.end
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i32 0
  %60 = load i32, i32* %numtoread, align 4, !tbaa !5
  %61 = load i64, i64* %length, align 8, !tbaa !20
  call void @examine_app0(%struct.jpeg_decompress_struct* %59, i8* %arraydecay, i32 %60, i64 %61) #4
  br label %sw.epilog

sw.bb.52:                                         ; preds = %for.end
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arraydecay53 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i32 0
  %63 = load i32, i32* %numtoread, align 4, !tbaa !5
  %64 = load i64, i64* %length, align 8, !tbaa !20
  call void @examine_app14(%struct.jpeg_decompress_struct* %62, i8* %arraydecay53, i32 %63, i64 %64) #4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 5
  store i32 70, i32* %msg_code, align 4, !tbaa !12
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 82
  %68 = load i32, i32* %unread_marker54, align 4, !tbaa !7
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err55, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 6
  %i56 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx57 = getelementptr inbounds [8 x i32], [8 x i32]* %i56, i32 0, i64 0
  store i32 %68, i32* %arrayidx57, align 4, !tbaa !5
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err58, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 0
  %73 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !42
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %75 = bitcast %struct.jpeg_decompress_struct* %74 to %struct.jpeg_common_struct*
  call void %73(%struct.jpeg_common_struct* %75) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.52, %sw.bb
  %76 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %77 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte59 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %77, i32 0, i32 0
  store i8* %76, i8** %next_input_byte59, align 8, !tbaa !17
  %78 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %79 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer60 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %79, i32 0, i32 1
  store i64 %78, i64* %bytes_in_buffer60, align 8, !tbaa !19
  %80 = load i64, i64* %length, align 8, !tbaa !20
  %cmp61 = icmp sgt i64 %80, 0
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %sw.epilog
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 6
  %82 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src64, align 8, !tbaa !16
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %82, i32 0, i32 4
  %83 = load void (%struct.jpeg_decompress_struct*, i64)*, void (%struct.jpeg_decompress_struct*, i64)** %skip_input_data, align 8, !tbaa !45
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %85 = load i64, i64* %length, align 8, !tbaa !20
  call void %83(%struct.jpeg_decompress_struct* %84, i64 %85) #4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %sw.epilog
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.65, %if.then.41, %if.then.14, %if.then.3
  %86 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast i32* %numtoread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast [14 x i8]* %b to i8*
  call void @llvm.lifetime.end(i64 14, i8* %91) #1
  %92 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define void @jpeg_save_markers(%struct.jpeg_decompress_struct* %cinfo, i32 %marker_code, i32 %length_limit) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %marker_code.addr = alloca i32, align 4
  %length_limit.addr = alloca i32, align 4
  %marker = alloca %struct.my_marker_reader*, align 8
  %maxlength = alloca i64, align 8
  %processor = alloca i32 (%struct.jpeg_decompress_struct*)*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %marker_code, i32* %marker_code.addr, align 4, !tbaa !5
  store i32 %length_limit, i32* %length_limit.addr, align 4, !tbaa !5
  %0 = bitcast %struct.my_marker_reader** %marker to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 88
  %2 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker1, align 8, !tbaa !23
  %3 = bitcast %struct.jpeg_marker_reader* %2 to %struct.my_marker_reader*
  store %struct.my_marker_reader* %3, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %4 = bitcast i64* %maxlength to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32 (%struct.jpeg_decompress_struct*)** %processor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !26
  %max_alloc_chunk = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %7, i32 0, i32 12
  %8 = load i64, i64* %max_alloc_chunk, align 8, !tbaa !46
  %sub = sub i64 %8, 32
  store i64 %sub, i64* %maxlength, align 8, !tbaa !20
  %9 = load i32, i32* %length_limit.addr, align 4, !tbaa !5
  %conv = zext i32 %9 to i64
  %10 = load i64, i64* %maxlength, align 8, !tbaa !20
  %cmp = icmp sgt i64 %conv, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i64, i64* %maxlength, align 8, !tbaa !20
  %conv3 = trunc i64 %11 to i32
  store i32 %conv3, i32* %length_limit.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %length_limit.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.4, label %if.else.18

if.then.4:                                        ; preds = %if.end
  store i32 (%struct.jpeg_decompress_struct*)* @save_marker, i32 (%struct.jpeg_decompress_struct*)** %processor, align 8, !tbaa !1
  %13 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %13, 224
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.4
  %14 = load i32, i32* %length_limit.addr, align 4, !tbaa !5
  %cmp7 = icmp ult i32 %14, 14
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  store i32 14, i32* %length_limit.addr, align 4, !tbaa !5
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true, %if.then.4
  %15 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %15, 238
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.16

land.lhs.true.12:                                 ; preds = %if.else
  %16 = load i32, i32* %length_limit.addr, align 4, !tbaa !5
  %cmp13 = icmp ult i32 %16, 12
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.12
  store i32 12, i32* %length_limit.addr, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true.12, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.9
  br label %if.end.25

if.else.18:                                       ; preds = %if.end
  store i32 (%struct.jpeg_decompress_struct*)* @skip_variable, i32 (%struct.jpeg_decompress_struct*)** %processor, align 8, !tbaa !1
  %17 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %17, 224
  br i1 %cmp19, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.18
  %18 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %18, 238
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.else.18
  store i32 (%struct.jpeg_decompress_struct*)* @get_interesting_appn, i32 (%struct.jpeg_decompress_struct*)** %processor, align 8, !tbaa !1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %lor.lhs.false
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.17
  %19 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %19, 254
  br i1 %cmp26, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.end.25
  %20 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %processor, align 8, !tbaa !1
  %21 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %process_COM = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %21, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*)* %20, i32 (%struct.jpeg_decompress_struct*)** %process_COM, align 8, !tbaa !33
  %22 = load i32, i32* %length_limit.addr, align 4, !tbaa !5
  %23 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %length_limit_COM = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %23, i32 0, i32 3
  store i32 %22, i32* %length_limit_COM, align 4, !tbaa !34
  br label %if.end.45

if.else.29:                                       ; preds = %if.end.25
  %24 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %cmp30 = icmp sge i32 %24, 224
  br i1 %cmp30, label %land.lhs.true.32, label %if.else.40

land.lhs.true.32:                                 ; preds = %if.else.29
  %25 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %cmp33 = icmp sle i32 %25, 239
  br i1 %cmp33, label %if.then.35, label %if.else.40

if.then.35:                                       ; preds = %land.lhs.true.32
  %26 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %processor, align 8, !tbaa !1
  %27 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %sub36 = sub nsw i32 %27, 224
  %idxprom = sext i32 %sub36 to i64
  %28 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %process_APPn = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %28, i32 0, i32 2
  %arrayidx = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn, i32 0, i64 %idxprom
  store i32 (%struct.jpeg_decompress_struct*)* %26, i32 (%struct.jpeg_decompress_struct*)** %arrayidx, align 8, !tbaa !1
  %29 = load i32, i32* %length_limit.addr, align 4, !tbaa !5
  %30 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %sub37 = sub nsw i32 %30, 224
  %idxprom38 = sext i32 %sub37 to i64
  %31 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %length_limit_APPn = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %31, i32 0, i32 4
  %arrayidx39 = getelementptr inbounds [16 x i32], [16 x i32]* %length_limit_APPn, i32 0, i64 %idxprom38
  store i32 %29, i32* %arrayidx39, align 4, !tbaa !5
  br label %if.end.44

if.else.40:                                       ; preds = %land.lhs.true.32, %if.else.29
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 5
  store i32 70, i32* %msg_code, align 4, !tbaa !12
  %34 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err41, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx42 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %34, i32* %arrayidx42, align 4, !tbaa !5
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err43, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !42
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %41 = bitcast %struct.jpeg_decompress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* %41) #4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.40, %if.then.35
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.28
  %42 = bitcast i32 (%struct.jpeg_decompress_struct*)** %processor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i64* %maxlength to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.my_marker_reader** %marker to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @save_marker(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %marker = alloca %struct.my_marker_reader*, align 8
  %cur_marker = alloca %struct.jpeg_marker_struct*, align 8
  %bytes_read = alloca i32, align 4
  %data_length = alloca i32, align 4
  %data = alloca i8*, align 8
  %length = alloca i64, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %limit = alloca i32, align 4
  %prev = alloca %struct.jpeg_marker_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_marker_reader** %marker to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 88
  %2 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker1, align 8, !tbaa !23
  %3 = bitcast %struct.jpeg_marker_reader* %2 to %struct.my_marker_reader*
  store %struct.my_marker_reader* %3, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %4 = bitcast %struct.jpeg_marker_struct** %cur_marker to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %cur_marker2 = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %5, i32 0, i32 5
  %6 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker2, align 8, !tbaa !40
  store %struct.jpeg_marker_struct* %6, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %7 = bitcast i32* %bytes_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %data_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 0, i64* %length, align 8, !tbaa !20
  %11 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 6
  %13 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !16
  store %struct.jpeg_source_mgr* %13, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %14 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte3 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %15, i32 0, i32 0
  %16 = load i8*, i8** %next_input_byte3, align 8, !tbaa !17
  store i8* %16, i8** %next_input_byte, align 8, !tbaa !1
  %17 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 1
  %19 = load i64, i64* %bytes_in_buffer4, align 8, !tbaa !19
  store i64 %19, i64* %bytes_in_buffer, align 8, !tbaa !20
  %20 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %cmp = icmp eq %struct.jpeg_marker_struct* %20, null
  br i1 %cmp, label %if.then, label %if.else.54

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %21 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp5 = icmp eq i64 %21, 0
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %do.body
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 3
  %23 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !21
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %23(%struct.jpeg_decompress_struct* %24) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.6
  %25 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte8 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %25, i32 0, i32 0
  %26 = load i8*, i8** %next_input_byte8, align 8, !tbaa !17
  store i8* %26, i8** %next_input_byte, align 8, !tbaa !1
  %27 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer9 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %27, i32 0, i32 1
  %28 = load i64, i64* %bytes_in_buffer9, align 8, !tbaa !19
  store i64 %28, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %do.body
  %29 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec = add i64 %29, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !20
  %30 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !22
  %conv = zext i8 %31 to i32
  %shl = shl i32 %conv, 8
  %conv11 = zext i32 %shl to i64
  store i64 %conv11, i64* %length, align 8, !tbaa !20
  %32 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp12 = icmp eq i64 %32, 0
  br i1 %cmp12, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.end.10
  %33 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer15 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %33, i32 0, i32 3
  %34 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer15, align 8, !tbaa !21
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call16 = call i32 %34(%struct.jpeg_decompress_struct* %35) #4
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.14
  %36 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte20 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %36, i32 0, i32 0
  %37 = load i8*, i8** %next_input_byte20, align 8, !tbaa !17
  store i8* %37, i8** %next_input_byte, align 8, !tbaa !1
  %38 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer21 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %38, i32 0, i32 1
  %39 = load i64, i64* %bytes_in_buffer21, align 8, !tbaa !19
  store i64 %39, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %if.end.10
  %40 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec23 = add i64 %40, -1
  store i64 %dec23, i64* %bytes_in_buffer, align 8, !tbaa !20
  %41 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr24, i8** %next_input_byte, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !22
  %conv25 = zext i8 %42 to i64
  %43 = load i64, i64* %length, align 8, !tbaa !20
  %add = add nsw i64 %43, %conv25
  store i64 %add, i64* %length, align 8, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  br label %do.end

do.end:                                           ; preds = %do.cond
  %44 = load i64, i64* %length, align 8, !tbaa !20
  %sub = sub nsw i64 %44, 2
  store i64 %sub, i64* %length, align 8, !tbaa !20
  %45 = load i64, i64* %length, align 8, !tbaa !20
  %cmp26 = icmp sge i64 %45, 0
  br i1 %cmp26, label %if.then.28, label %if.else.52

if.then.28:                                       ; preds = %do.end
  %46 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 82
  %48 = load i32, i32* %unread_marker, align 4, !tbaa !7
  %cmp29 = icmp eq i32 %48, 254
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.then.28
  %49 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %length_limit_COM = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %49, i32 0, i32 3
  %50 = load i32, i32* %length_limit_COM, align 4, !tbaa !34
  store i32 %50, i32* %limit, align 4, !tbaa !5
  br label %if.end.34

if.else:                                          ; preds = %if.then.28
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 82
  %52 = load i32, i32* %unread_marker32, align 4, !tbaa !7
  %sub33 = sub nsw i32 %52, 224
  %idxprom = sext i32 %sub33 to i64
  %53 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %length_limit_APPn = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %53, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %length_limit_APPn, i32 0, i64 %idxprom
  %54 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %54, i32* %limit, align 4, !tbaa !5
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.31
  %55 = load i64, i64* %length, align 8, !tbaa !20
  %conv35 = trunc i64 %55 to i32
  %56 = load i32, i32* %limit, align 4, !tbaa !5
  %cmp36 = icmp ult i32 %conv35, %56
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.34
  %57 = load i64, i64* %length, align 8, !tbaa !20
  %conv39 = trunc i64 %57 to i32
  store i32 %conv39, i32* %limit, align 4, !tbaa !5
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.34
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 1
  %59 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !26
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %59, i32 0, i32 1
  %60 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8, !tbaa !47
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %62 = bitcast %struct.jpeg_decompress_struct* %61 to %struct.jpeg_common_struct*
  %63 = load i32, i32* %limit, align 4, !tbaa !5
  %conv41 = zext i32 %63 to i64
  %add42 = add i64 32, %conv41
  %call43 = call i8* %60(%struct.jpeg_common_struct* %62, i32 1, i64 %add42) #4
  %64 = bitcast i8* %call43 to %struct.jpeg_marker_struct*
  store %struct.jpeg_marker_struct* %64, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %65 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.jpeg_marker_struct, %struct.jpeg_marker_struct* %65, i32 0, i32 0
  store %struct.jpeg_marker_struct* null, %struct.jpeg_marker_struct** %next, align 8, !tbaa !48
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 82
  %67 = load i32, i32* %unread_marker44, align 4, !tbaa !7
  %conv45 = trunc i32 %67 to i8
  %68 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %marker46 = getelementptr inbounds %struct.jpeg_marker_struct, %struct.jpeg_marker_struct* %68, i32 0, i32 1
  store i8 %conv45, i8* %marker46, align 1, !tbaa !50
  %69 = load i64, i64* %length, align 8, !tbaa !20
  %conv47 = trunc i64 %69 to i32
  %70 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %original_length = getelementptr inbounds %struct.jpeg_marker_struct, %struct.jpeg_marker_struct* %70, i32 0, i32 2
  store i32 %conv47, i32* %original_length, align 4, !tbaa !51
  %71 = load i32, i32* %limit, align 4, !tbaa !5
  %72 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %data_length48 = getelementptr inbounds %struct.jpeg_marker_struct, %struct.jpeg_marker_struct* %72, i32 0, i32 3
  store i32 %71, i32* %data_length48, align 4, !tbaa !52
  %73 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.jpeg_marker_struct, %struct.jpeg_marker_struct* %73, i64 1
  %74 = bitcast %struct.jpeg_marker_struct* %add.ptr to i8*
  %75 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %data49 = getelementptr inbounds %struct.jpeg_marker_struct, %struct.jpeg_marker_struct* %75, i32 0, i32 4
  store i8* %74, i8** %data49, align 8, !tbaa !53
  store i8* %74, i8** %data, align 8, !tbaa !1
  %76 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %77 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %cur_marker50 = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %77, i32 0, i32 5
  store %struct.jpeg_marker_struct* %76, %struct.jpeg_marker_struct** %cur_marker50, align 8, !tbaa !40
  %78 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %bytes_read51 = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %78, i32 0, i32 6
  store i32 0, i32* %bytes_read51, align 4, !tbaa !54
  store i32 0, i32* %bytes_read, align 4, !tbaa !5
  %79 = load i32, i32* %limit, align 4, !tbaa !5
  store i32 %79, i32* %data_length, align 4, !tbaa !5
  %80 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  br label %if.end.53

if.else.52:                                       ; preds = %do.end
  store i32 0, i32* %data_length, align 4, !tbaa !5
  store i32 0, i32* %bytes_read, align 4, !tbaa !5
  store i8* null, i8** %data, align 8, !tbaa !1
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.end.40
  br label %if.end.59

if.else.54:                                       ; preds = %entry
  %81 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %bytes_read55 = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %81, i32 0, i32 6
  %82 = load i32, i32* %bytes_read55, align 4, !tbaa !54
  store i32 %82, i32* %bytes_read, align 4, !tbaa !5
  %83 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %data_length56 = getelementptr inbounds %struct.jpeg_marker_struct, %struct.jpeg_marker_struct* %83, i32 0, i32 3
  %84 = load i32, i32* %data_length56, align 4, !tbaa !52
  store i32 %84, i32* %data_length, align 4, !tbaa !5
  %85 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %data57 = getelementptr inbounds %struct.jpeg_marker_struct, %struct.jpeg_marker_struct* %85, i32 0, i32 4
  %86 = load i8*, i8** %data57, align 8, !tbaa !53
  %87 = load i32, i32* %bytes_read, align 4, !tbaa !5
  %idx.ext = zext i32 %87 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %86, i64 %idx.ext
  store i8* %add.ptr58, i8** %data, align 8, !tbaa !1
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.54, %if.end.53
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end.59
  %88 = load i32, i32* %bytes_read, align 4, !tbaa !5
  %89 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp60 = icmp ult i32 %88, %89
  br i1 %cmp60, label %while.body, label %while.end.85

while.body:                                       ; preds = %while.cond
  %90 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %91 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte62 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %91, i32 0, i32 0
  store i8* %90, i8** %next_input_byte62, align 8, !tbaa !17
  %92 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %93 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer63 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %93, i32 0, i32 1
  store i64 %92, i64* %bytes_in_buffer63, align 8, !tbaa !19
  %94 = load i32, i32* %bytes_read, align 4, !tbaa !5
  %95 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %bytes_read64 = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %95, i32 0, i32 6
  store i32 %94, i32* %bytes_read64, align 4, !tbaa !54
  %96 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp65 = icmp eq i64 %96, 0
  br i1 %cmp65, label %if.then.67, label %if.end.75

if.then.67:                                       ; preds = %while.body
  %97 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer68 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %97, i32 0, i32 3
  %98 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer68, align 8, !tbaa !21
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call69 = call i32 %98(%struct.jpeg_decompress_struct* %99) #4
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %if.then.67
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %if.then.67
  %100 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte73 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %100, i32 0, i32 0
  %101 = load i8*, i8** %next_input_byte73, align 8, !tbaa !17
  store i8* %101, i8** %next_input_byte, align 8, !tbaa !1
  %102 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer74 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %102, i32 0, i32 1
  %103 = load i64, i64* %bytes_in_buffer74, align 8, !tbaa !19
  store i64 %103, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.72, %while.body
  br label %while.cond.76

while.cond.76:                                    ; preds = %while.body.81, %if.end.75
  %104 = load i32, i32* %bytes_read, align 4, !tbaa !5
  %105 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp77 = icmp ult i32 %104, %105
  br i1 %cmp77, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.76
  %106 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp79 = icmp ugt i64 %106, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.76
  %107 = phi i1 [ false, %while.cond.76 ], [ %cmp79, %land.rhs ]
  br i1 %107, label %while.body.81, label %while.end

while.body.81:                                    ; preds = %land.end
  %108 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr82 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr82, i8** %next_input_byte, align 8, !tbaa !1
  %109 = load i8, i8* %108, align 1, !tbaa !22
  %110 = load i8*, i8** %data, align 8, !tbaa !1
  %incdec.ptr83 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr83, i8** %data, align 8, !tbaa !1
  store i8 %109, i8* %110, align 1, !tbaa !22
  %111 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec84 = add i64 %111, -1
  store i64 %dec84, i64* %bytes_in_buffer, align 8, !tbaa !20
  %112 = load i32, i32* %bytes_read, align 4, !tbaa !5
  %inc = add i32 %112, 1
  store i32 %inc, i32* %bytes_read, align 4, !tbaa !5
  br label %while.cond.76

while.end:                                        ; preds = %land.end
  br label %while.cond

while.end.85:                                     ; preds = %while.cond
  %113 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %cmp86 = icmp ne %struct.jpeg_marker_struct* %113, null
  br i1 %cmp86, label %if.then.88, label %if.end.108

if.then.88:                                       ; preds = %while.end.85
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker_list = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 62
  %115 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %marker_list, align 8, !tbaa !55
  %cmp89 = icmp eq %struct.jpeg_marker_struct* %115, null
  br i1 %cmp89, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %if.then.88
  %116 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker_list92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %117, i32 0, i32 62
  store %struct.jpeg_marker_struct* %116, %struct.jpeg_marker_struct** %marker_list92, align 8, !tbaa !55
  br label %if.end.103

if.else.93:                                       ; preds = %if.then.88
  %118 = bitcast %struct.jpeg_marker_struct** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %118) #1
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker_list94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 62
  %120 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %marker_list94, align 8, !tbaa !55
  store %struct.jpeg_marker_struct* %120, %struct.jpeg_marker_struct** %prev, align 8, !tbaa !1
  br label %while.cond.95

while.cond.95:                                    ; preds = %while.body.99, %if.else.93
  %121 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %prev, align 8, !tbaa !1
  %next96 = getelementptr inbounds %struct.jpeg_marker_struct, %struct.jpeg_marker_struct* %121, i32 0, i32 0
  %122 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %next96, align 8, !tbaa !48
  %cmp97 = icmp ne %struct.jpeg_marker_struct* %122, null
  br i1 %cmp97, label %while.body.99, label %while.end.101

while.body.99:                                    ; preds = %while.cond.95
  %123 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %prev, align 8, !tbaa !1
  %next100 = getelementptr inbounds %struct.jpeg_marker_struct, %struct.jpeg_marker_struct* %123, i32 0, i32 0
  %124 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %next100, align 8, !tbaa !48
  store %struct.jpeg_marker_struct* %124, %struct.jpeg_marker_struct** %prev, align 8, !tbaa !1
  br label %while.cond.95

while.end.101:                                    ; preds = %while.cond.95
  %125 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %126 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %prev, align 8, !tbaa !1
  %next102 = getelementptr inbounds %struct.jpeg_marker_struct, %struct.jpeg_marker_struct* %126, i32 0, i32 0
  store %struct.jpeg_marker_struct* %125, %struct.jpeg_marker_struct** %next102, align 8, !tbaa !48
  %127 = bitcast %struct.jpeg_marker_struct** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  br label %if.end.103

if.end.103:                                       ; preds = %while.end.101, %if.then.91
  %128 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %data104 = getelementptr inbounds %struct.jpeg_marker_struct, %struct.jpeg_marker_struct* %128, i32 0, i32 4
  %129 = load i8*, i8** %data104, align 8, !tbaa !53
  store i8* %129, i8** %data, align 8, !tbaa !1
  %130 = load %struct.jpeg_marker_struct*, %struct.jpeg_marker_struct** %cur_marker, align 8, !tbaa !1
  %original_length105 = getelementptr inbounds %struct.jpeg_marker_struct, %struct.jpeg_marker_struct* %130, i32 0, i32 2
  %131 = load i32, i32* %original_length105, align 4, !tbaa !51
  %132 = load i32, i32* %data_length, align 4, !tbaa !5
  %sub106 = sub i32 %131, %132
  %conv107 = zext i32 %sub106 to i64
  store i64 %conv107, i64* %length, align 8, !tbaa !20
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.103, %while.end.85
  %133 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %cur_marker109 = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %133, i32 0, i32 5
  store %struct.jpeg_marker_struct* null, %struct.jpeg_marker_struct** %cur_marker109, align 8, !tbaa !40
  %134 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %134, i32 0, i32 82
  %135 = load i32, i32* %unread_marker110, align 4, !tbaa !7
  switch i32 %135, label %sw.default [
    i32 224, label %sw.bb
    i32 238, label %sw.bb.111
  ]

sw.bb:                                            ; preds = %if.end.108
  %136 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %137 = load i8*, i8** %data, align 8, !tbaa !1
  %138 = load i32, i32* %data_length, align 4, !tbaa !5
  %139 = load i64, i64* %length, align 8, !tbaa !20
  call void @examine_app0(%struct.jpeg_decompress_struct* %136, i8* %137, i32 %138, i64 %139) #4
  br label %sw.epilog

sw.bb.111:                                        ; preds = %if.end.108
  %140 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %141 = load i8*, i8** %data, align 8, !tbaa !1
  %142 = load i32, i32* %data_length, align 4, !tbaa !5
  %143 = load i64, i64* %length, align 8, !tbaa !20
  call void @examine_app14(%struct.jpeg_decompress_struct* %140, i8* %141, i32 %142, i64 %143) #4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.108
  %144 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %144, i32 0, i32 0
  %145 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %145, i32 0, i32 5
  store i32 93, i32* %msg_code, align 4, !tbaa !12
  %146 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker112 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %146, i32 0, i32 82
  %147 = load i32, i32* %unread_marker112, align 4, !tbaa !7
  %148 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err113 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %148, i32 0, i32 0
  %149 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err113, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %149, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx114 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %147, i32* %arrayidx114, align 4, !tbaa !5
  %150 = load i32, i32* %data_length, align 4, !tbaa !5
  %conv115 = zext i32 %150 to i64
  %151 = load i64, i64* %length, align 8, !tbaa !20
  %add116 = add nsw i64 %conv115, %151
  %conv117 = trunc i64 %add116 to i32
  %152 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err118 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %152, i32 0, i32 0
  %153 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err118, align 8, !tbaa !11
  %msg_parm119 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %153, i32 0, i32 6
  %i120 = bitcast %union.anon* %msg_parm119 to [8 x i32]*
  %arrayidx121 = getelementptr inbounds [8 x i32], [8 x i32]* %i120, i32 0, i64 1
  store i32 %conv117, i32* %arrayidx121, align 4, !tbaa !5
  %154 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err122 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %154, i32 0, i32 0
  %155 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err122, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %155, i32 0, i32 1
  %156 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %157 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %158 = bitcast %struct.jpeg_decompress_struct* %157 to %struct.jpeg_common_struct*
  call void %156(%struct.jpeg_common_struct* %158, i32 1) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.111, %sw.bb
  %159 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %160 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte123 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %160, i32 0, i32 0
  store i8* %159, i8** %next_input_byte123, align 8, !tbaa !17
  %161 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %162 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer124 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %162, i32 0, i32 1
  store i64 %161, i64* %bytes_in_buffer124, align 8, !tbaa !19
  %163 = load i64, i64* %length, align 8, !tbaa !20
  %cmp125 = icmp sgt i64 %163, 0
  br i1 %cmp125, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %sw.epilog
  %164 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src128 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %164, i32 0, i32 6
  %165 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src128, align 8, !tbaa !16
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %165, i32 0, i32 4
  %166 = load void (%struct.jpeg_decompress_struct*, i64)*, void (%struct.jpeg_decompress_struct*, i64)** %skip_input_data, align 8, !tbaa !45
  %167 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %168 = load i64, i64* %length, align 8, !tbaa !20
  call void %166(%struct.jpeg_decompress_struct* %167, i64 %168) #4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %sw.epilog
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.129, %if.then.71, %if.then.18, %if.then.7
  %169 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast i32* %data_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %bytes_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast %struct.jpeg_marker_struct** %cur_marker to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast %struct.my_marker_reader** %marker to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = load i32, i32* %retval
  ret i32 %178
}

; Function Attrs: nounwind uwtable
define void @jpeg_set_marker_processor(%struct.jpeg_decompress_struct* %cinfo, i32 %marker_code, i32 (%struct.jpeg_decompress_struct*)* %routine) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %marker_code.addr = alloca i32, align 4
  %routine.addr = alloca i32 (%struct.jpeg_decompress_struct*)*, align 8
  %marker = alloca %struct.my_marker_reader*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %marker_code, i32* %marker_code.addr, align 4, !tbaa !5
  store i32 (%struct.jpeg_decompress_struct*)* %routine, i32 (%struct.jpeg_decompress_struct*)** %routine.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_marker_reader** %marker to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 88
  %2 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker1, align 8, !tbaa !23
  %3 = bitcast %struct.jpeg_marker_reader* %2 to %struct.my_marker_reader*
  store %struct.my_marker_reader* %3, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %4 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 254
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %routine.addr, align 8, !tbaa !1
  %6 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %process_COM = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %6, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*)* %5, i32 (%struct.jpeg_decompress_struct*)** %process_COM, align 8, !tbaa !33
  br label %if.end.9

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %7, 224
  br i1 %cmp2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %8 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %8, 239
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  %9 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %routine.addr, align 8, !tbaa !1
  %10 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %10, 224
  %idxprom = sext i32 %sub to i64
  %11 = load %struct.my_marker_reader*, %struct.my_marker_reader** %marker, align 8, !tbaa !1
  %process_APPn = getelementptr inbounds %struct.my_marker_reader, %struct.my_marker_reader* %11, i32 0, i32 2
  %arrayidx = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn, i32 0, i64 %idxprom
  store i32 (%struct.jpeg_decompress_struct*)* %9, i32 (%struct.jpeg_decompress_struct*)** %arrayidx, align 8, !tbaa !1
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 70, i32* %msg_code, align 4, !tbaa !12
  %14 = load i32, i32* %marker_code.addr, align 4, !tbaa !5
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %14, i32* %arrayidx7, align 4, !tbaa !5
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !42
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %21 = bitcast %struct.jpeg_decompress_struct* %20 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* %21) #4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %22 = bitcast %struct.my_marker_reader** %marker to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @first_marker(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 6
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !16
  store %struct.jpeg_source_mgr* %4, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %5 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %6, i32 0, i32 0
  %7 = load i8*, i8** %next_input_byte1, align 8, !tbaa !17
  store i8* %7, i8** %next_input_byte, align 8, !tbaa !1
  %8 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %9, i32 0, i32 1
  %10 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !19
  store i64 %10, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %do.body

do.body:                                          ; preds = %entry
  %11 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp = icmp eq i64 %11, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 3
  %13 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !21
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %13(%struct.jpeg_decompress_struct* %14) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %15, i32 0, i32 0
  %16 = load i8*, i8** %next_input_byte4, align 8, !tbaa !17
  store i8* %16, i8** %next_input_byte, align 8, !tbaa !1
  %17 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %17, i32 0, i32 1
  %18 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !19
  store i64 %18, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %19 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec = add i64 %19, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !20
  %20 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !22
  %conv = zext i8 %21 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.7

do.body.7:                                        ; preds = %do.end
  %22 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp8 = icmp eq i64 %22, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %do.body.7
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 3
  %24 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8, !tbaa !21
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call12 = call i32 %24(%struct.jpeg_decompress_struct* %25) #4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  %26 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %26, i32 0, i32 0
  %27 = load i8*, i8** %next_input_byte16, align 8, !tbaa !17
  store i8* %27, i8** %next_input_byte, align 8, !tbaa !1
  %28 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %28, i32 0, i32 1
  %29 = load i64, i64* %bytes_in_buffer17, align 8, !tbaa !19
  store i64 %29, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %do.body.7
  %30 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec19 = add i64 %30, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8, !tbaa !20
  %31 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !22
  %conv21 = zext i8 %32 to i32
  store i32 %conv21, i32* %c2, align 4, !tbaa !5
  br label %do.cond.22

do.cond.22:                                       ; preds = %if.end.18
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %33 = load i32, i32* %c, align 4, !tbaa !5
  %cmp24 = icmp ne i32 %33, 255
  br i1 %cmp24, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.23
  %34 = load i32, i32* %c2, align 4, !tbaa !5
  %cmp26 = icmp ne i32 %34, 216
  br i1 %cmp26, label %if.then.28, label %if.end.35

if.then.28:                                       ; preds = %lor.lhs.false, %do.end.23
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 5
  store i32 55, i32* %msg_code, align 4, !tbaa !12
  %37 = load i32, i32* %c, align 4, !tbaa !5
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err29, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %37, i32* %arrayidx, align 4, !tbaa !5
  %40 = load i32, i32* %c2, align 4, !tbaa !5
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err30, align 8, !tbaa !11
  %msg_parm31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 6
  %i32 = bitcast %union.anon* %msg_parm31 to [8 x i32]*
  %arrayidx33 = getelementptr inbounds [8 x i32], [8 x i32]* %i32, i32 0, i64 1
  store i32 %40, i32* %arrayidx33, align 4, !tbaa !5
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err34, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 0
  %45 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !42
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %47 = bitcast %struct.jpeg_decompress_struct* %46 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* %47) #4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.28, %lor.lhs.false
  %48 = load i32, i32* %c2, align 4, !tbaa !5
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 82
  store i32 %48, i32* %unread_marker, align 4, !tbaa !7
  %50 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %51 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte36 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %51, i32 0, i32 0
  store i8* %50, i8** %next_input_byte36, align 8, !tbaa !17
  %52 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %53 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %53, i32 0, i32 1
  store i64 %52, i64* %bytes_in_buffer37, align 8, !tbaa !19
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.14, %if.then.3
  %54 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal i32 @get_soi(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 0
  %2 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %2, i32 0, i32 5
  store i32 104, i32* %msg_code, align 4, !tbaa !12
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 1
  %5 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %7 = bitcast %struct.jpeg_decompress_struct* %6 to %struct.jpeg_common_struct*
  call void %5(%struct.jpeg_common_struct* %7, i32 1) #4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 88
  %9 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !23
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %9, i32 0, i32 3
  %10 = load i32, i32* %saw_SOI, align 4, !tbaa !41
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !11
  %msg_code3 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 64, i32* %msg_code3, align 4, !tbaa !12
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 0
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !42
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %17 = bitcast %struct.jpeg_decompress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %18, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_L = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 48
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !22
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %21 to i64
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_U = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 49
  %arrayidx6 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U, i32 0, i64 %idxprom5
  store i8 1, i8* %arrayidx6, align 1, !tbaa !22
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %23 to i64
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_ac_K = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 50
  %arrayidx8 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_ac_K, i32 0, i64 %idxprom7
  store i8 5, i8* %arrayidx8, align 1, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 51
  store i32 0, i32* %restart_interval, align 4, !tbaa !56
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 10
  store i32 0, i32* %jpeg_color_space, align 4, !tbaa !57
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 60
  store i32 0, i32* %color_transform, align 4, !tbaa !58
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 61
  store i32 0, i32* %CCIR601_sampling, align 4, !tbaa !59
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 52
  store i32 0, i32* %saw_JFIF_marker, align 4, !tbaa !60
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_major_version = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 53
  store i8 1, i8* %JFIF_major_version, align 1, !tbaa !61
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_minor_version = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 54
  store i8 1, i8* %JFIF_minor_version, align 1, !tbaa !62
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %density_unit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 55
  store i8 0, i8* %density_unit, align 1, !tbaa !63
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %X_density = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 56
  store i16 1, i16* %X_density, align 2, !tbaa !64
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Y_density = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 57
  store i16 1, i16* %Y_density, align 2, !tbaa !65
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 58
  store i32 0, i32* %saw_Adobe_marker, align 4, !tbaa !66
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 59
  store i8 0, i8* %Adobe_transform, align 1, !tbaa !67
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 88
  %39 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker9, align 8, !tbaa !23
  %saw_SOI10 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %39, i32 0, i32 3
  store i32 1, i32* %saw_SOI10, align 4, !tbaa !41
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_sof(%struct.jpeg_decompress_struct* %cinfo, i32 %is_baseline, i32 %is_prog, i32 %is_arith) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %is_baseline.addr = alloca i32, align 4
  %is_prog.addr = alloca i32, align 4
  %is_arith.addr = alloca i32, align 4
  %length = alloca i64, align 8
  %c = alloca i32, align 4
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_mp = alloca i32*, align 8
  %_mp263 = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %is_baseline, i32* %is_baseline.addr, align 4, !tbaa !22
  store i32 %is_prog, i32* %is_prog.addr, align 4, !tbaa !22
  store i32 %is_arith, i32* %is_arith.addr, align 4, !tbaa !22
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 6
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !16
  store %struct.jpeg_source_mgr* %7, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %8 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %9, i32 0, i32 0
  %10 = load i8*, i8** %next_input_byte1, align 8, !tbaa !17
  store i8* %10, i8** %next_input_byte, align 8, !tbaa !1
  %11 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !19
  store i64 %13, i64* %bytes_in_buffer, align 8, !tbaa !20
  %14 = load i32, i32* %is_baseline.addr, align 4, !tbaa !22
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %is_baseline3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 45
  store i32 %14, i32* %is_baseline3, align 4, !tbaa !68
  %16 = load i32, i32* %is_prog.addr, align 4, !tbaa !22
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 46
  store i32 %16, i32* %progressive_mode, align 4, !tbaa !69
  %18 = load i32, i32* %is_arith.addr, align 4, !tbaa !22
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_code = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 47
  store i32 %18, i32* %arith_code, align 4, !tbaa !70
  br label %do.body

do.body:                                          ; preds = %entry
  %20 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp = icmp eq i64 %20, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %do.body
  %21 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %21, i32 0, i32 3
  %22 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !21
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %22(%struct.jpeg_decompress_struct* %23) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %24 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %24, i32 0, i32 0
  %25 = load i8*, i8** %next_input_byte5, align 8, !tbaa !17
  store i8* %25, i8** %next_input_byte, align 8, !tbaa !1
  %26 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer6 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %26, i32 0, i32 1
  %27 = load i64, i64* %bytes_in_buffer6, align 8, !tbaa !19
  store i64 %27, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %do.body
  %28 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec = add i64 %28, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !20
  %29 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !22
  %conv = zext i8 %30 to i32
  %shl = shl i32 %conv, 8
  %conv8 = zext i32 %shl to i64
  store i64 %conv8, i64* %length, align 8, !tbaa !20
  %31 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp9 = icmp eq i64 %31, 0
  br i1 %cmp9, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.end.7
  %32 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer12 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %32, i32 0, i32 3
  %33 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer12, align 8, !tbaa !21
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call13 = call i32 %33(%struct.jpeg_decompress_struct* %34) #4
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.11
  %35 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %35, i32 0, i32 0
  %36 = load i8*, i8** %next_input_byte17, align 8, !tbaa !17
  store i8* %36, i8** %next_input_byte, align 8, !tbaa !1
  %37 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer18 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %37, i32 0, i32 1
  %38 = load i64, i64* %bytes_in_buffer18, align 8, !tbaa !19
  store i64 %38, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.16, %if.end.7
  %39 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec20 = add i64 %39, -1
  store i64 %dec20, i64* %bytes_in_buffer, align 8, !tbaa !20
  %40 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr21, i8** %next_input_byte, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !22
  %conv22 = zext i8 %41 to i64
  %42 = load i64, i64* %length, align 8, !tbaa !20
  %add = add nsw i64 %42, %conv22
  store i64 %add, i64* %length, align 8, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.23

do.body.23:                                       ; preds = %do.end
  %43 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp24 = icmp eq i64 %43, 0
  br i1 %cmp24, label %if.then.26, label %if.end.34

if.then.26:                                       ; preds = %do.body.23
  %44 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer27 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %44, i32 0, i32 3
  %45 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer27, align 8, !tbaa !21
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call28 = call i32 %45(%struct.jpeg_decompress_struct* %46) #4
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.then.26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.then.26
  %47 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte32 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %47, i32 0, i32 0
  %48 = load i8*, i8** %next_input_byte32, align 8, !tbaa !17
  store i8* %48, i8** %next_input_byte, align 8, !tbaa !1
  %49 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer33 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %49, i32 0, i32 1
  %50 = load i64, i64* %bytes_in_buffer33, align 8, !tbaa !19
  store i64 %50, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.31, %do.body.23
  %51 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec35 = add i64 %51, -1
  store i64 %dec35, i64* %bytes_in_buffer, align 8, !tbaa !20
  %52 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr36, i8** %next_input_byte, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !22
  %conv37 = zext i8 %53 to i32
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 43
  store i32 %conv37, i32* %data_precision, align 4, !tbaa !71
  br label %do.cond.38

do.cond.38:                                       ; preds = %if.end.34
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %55 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp41 = icmp eq i64 %55, 0
  br i1 %cmp41, label %if.then.43, label %if.end.51

if.then.43:                                       ; preds = %do.body.40
  %56 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer44 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %56, i32 0, i32 3
  %57 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer44, align 8, !tbaa !21
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call45 = call i32 %57(%struct.jpeg_decompress_struct* %58) #4
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.then.43
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.then.43
  %59 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte49 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %59, i32 0, i32 0
  %60 = load i8*, i8** %next_input_byte49, align 8, !tbaa !17
  store i8* %60, i8** %next_input_byte, align 8, !tbaa !1
  %61 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer50 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %61, i32 0, i32 1
  %62 = load i64, i64* %bytes_in_buffer50, align 8, !tbaa !19
  store i64 %62, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.48, %do.body.40
  %63 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec52 = add i64 %63, -1
  store i64 %dec52, i64* %bytes_in_buffer, align 8, !tbaa !20
  %64 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr53 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr53, i8** %next_input_byte, align 8, !tbaa !1
  %65 = load i8, i8* %64, align 1, !tbaa !22
  %conv54 = zext i8 %65 to i32
  %shl55 = shl i32 %conv54, 8
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 8
  store i32 %shl55, i32* %image_height, align 4, !tbaa !72
  %67 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp56 = icmp eq i64 %67, 0
  br i1 %cmp56, label %if.then.58, label %if.end.66

if.then.58:                                       ; preds = %if.end.51
  %68 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer59 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %68, i32 0, i32 3
  %69 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer59, align 8, !tbaa !21
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call60 = call i32 %69(%struct.jpeg_decompress_struct* %70) #4
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.then.58
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.63:                                        ; preds = %if.then.58
  %71 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte64 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %71, i32 0, i32 0
  %72 = load i8*, i8** %next_input_byte64, align 8, !tbaa !17
  store i8* %72, i8** %next_input_byte, align 8, !tbaa !1
  %73 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer65 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %73, i32 0, i32 1
  %74 = load i64, i64* %bytes_in_buffer65, align 8, !tbaa !19
  store i64 %74, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.63, %if.end.51
  %75 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec67 = add i64 %75, -1
  store i64 %dec67, i64* %bytes_in_buffer, align 8, !tbaa !20
  %76 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr68 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr68, i8** %next_input_byte, align 8, !tbaa !1
  %77 = load i8, i8* %76, align 1, !tbaa !22
  %conv69 = zext i8 %77 to i32
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 8
  %79 = load i32, i32* %image_height70, align 4, !tbaa !72
  %add71 = add i32 %79, %conv69
  store i32 %add71, i32* %image_height70, align 4, !tbaa !72
  br label %do.cond.72

do.cond.72:                                       ; preds = %if.end.66
  br label %do.end.73

do.end.73:                                        ; preds = %do.cond.72
  br label %do.body.74

do.body.74:                                       ; preds = %do.end.73
  %80 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp75 = icmp eq i64 %80, 0
  br i1 %cmp75, label %if.then.77, label %if.end.85

if.then.77:                                       ; preds = %do.body.74
  %81 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer78 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %81, i32 0, i32 3
  %82 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer78, align 8, !tbaa !21
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call79 = call i32 %82(%struct.jpeg_decompress_struct* %83) #4
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %if.then.77
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.82:                                        ; preds = %if.then.77
  %84 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte83 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %84, i32 0, i32 0
  %85 = load i8*, i8** %next_input_byte83, align 8, !tbaa !17
  store i8* %85, i8** %next_input_byte, align 8, !tbaa !1
  %86 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer84 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %86, i32 0, i32 1
  %87 = load i64, i64* %bytes_in_buffer84, align 8, !tbaa !19
  store i64 %87, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.82, %do.body.74
  %88 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec86 = add i64 %88, -1
  store i64 %dec86, i64* %bytes_in_buffer, align 8, !tbaa !20
  %89 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr87 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr87, i8** %next_input_byte, align 8, !tbaa !1
  %90 = load i8, i8* %89, align 1, !tbaa !22
  %conv88 = zext i8 %90 to i32
  %shl89 = shl i32 %conv88, 8
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 7
  store i32 %shl89, i32* %image_width, align 4, !tbaa !73
  %92 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp90 = icmp eq i64 %92, 0
  br i1 %cmp90, label %if.then.92, label %if.end.100

if.then.92:                                       ; preds = %if.end.85
  %93 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer93 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %93, i32 0, i32 3
  %94 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer93, align 8, !tbaa !21
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call94 = call i32 %94(%struct.jpeg_decompress_struct* %95) #4
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %if.then.92
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.97:                                        ; preds = %if.then.92
  %96 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte98 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %96, i32 0, i32 0
  %97 = load i8*, i8** %next_input_byte98, align 8, !tbaa !17
  store i8* %97, i8** %next_input_byte, align 8, !tbaa !1
  %98 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer99 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %98, i32 0, i32 1
  %99 = load i64, i64* %bytes_in_buffer99, align 8, !tbaa !19
  store i64 %99, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.97, %if.end.85
  %100 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec101 = add i64 %100, -1
  store i64 %dec101, i64* %bytes_in_buffer, align 8, !tbaa !20
  %101 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr102, i8** %next_input_byte, align 8, !tbaa !1
  %102 = load i8, i8* %101, align 1, !tbaa !22
  %conv103 = zext i8 %102 to i32
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 7
  %104 = load i32, i32* %image_width104, align 4, !tbaa !73
  %add105 = add i32 %104, %conv103
  store i32 %add105, i32* %image_width104, align 4, !tbaa !73
  br label %do.cond.106

do.cond.106:                                      ; preds = %if.end.100
  br label %do.end.107

do.end.107:                                       ; preds = %do.cond.106
  br label %do.body.108

do.body.108:                                      ; preds = %do.end.107
  %105 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp109 = icmp eq i64 %105, 0
  br i1 %cmp109, label %if.then.111, label %if.end.119

if.then.111:                                      ; preds = %do.body.108
  %106 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer112 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %106, i32 0, i32 3
  %107 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer112, align 8, !tbaa !21
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call113 = call i32 %107(%struct.jpeg_decompress_struct* %108) #4
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %if.then.111
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.116:                                       ; preds = %if.then.111
  %109 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte117 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %109, i32 0, i32 0
  %110 = load i8*, i8** %next_input_byte117, align 8, !tbaa !17
  store i8* %110, i8** %next_input_byte, align 8, !tbaa !1
  %111 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer118 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %111, i32 0, i32 1
  %112 = load i64, i64* %bytes_in_buffer118, align 8, !tbaa !19
  store i64 %112, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.116, %do.body.108
  %113 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec120 = add i64 %113, -1
  store i64 %dec120, i64* %bytes_in_buffer, align 8, !tbaa !20
  %114 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr121 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr121, i8** %next_input_byte, align 8, !tbaa !1
  %115 = load i8, i8* %114, align 1, !tbaa !22
  %conv122 = zext i8 %115 to i32
  %116 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %116, i32 0, i32 9
  store i32 %conv122, i32* %num_components, align 4, !tbaa !74
  br label %do.cond.123

do.cond.123:                                      ; preds = %if.end.119
  br label %do.end.124

do.end.124:                                       ; preds = %do.cond.123
  %117 = load i64, i64* %length, align 8, !tbaa !20
  %sub = sub nsw i64 %117, 8
  store i64 %sub, i64* %length, align 8, !tbaa !20
  br label %do.body.125

do.body.125:                                      ; preds = %do.end.124
  %118 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %118) #1
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 0
  %120 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %120, i32 0, i32 6
  %i126 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i126, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8, !tbaa !1
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %121, i32 0, i32 82
  %122 = load i32, i32* %unread_marker, align 4, !tbaa !7
  %123 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %122, i32* %arrayidx, align 4, !tbaa !5
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width127 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 7
  %125 = load i32, i32* %image_width127, align 4, !tbaa !73
  %126 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 %125, i32* %arrayidx128, align 4, !tbaa !5
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height129 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 8
  %128 = load i32, i32* %image_height129, align 4, !tbaa !72
  %129 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds i32, i32* %129, i64 2
  store i32 %128, i32* %arrayidx130, align 4, !tbaa !5
  %130 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components131 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %130, i32 0, i32 9
  %131 = load i32, i32* %num_components131, align 4, !tbaa !74
  %132 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %132, i64 3
  store i32 %131, i32* %arrayidx132, align 4, !tbaa !5
  %133 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err133 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %133, i32 0, i32 0
  %134 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err133, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %134, i32 0, i32 5
  store i32 102, i32* %msg_code, align 4, !tbaa !12
  %135 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err134 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %135, i32 0, i32 0
  %136 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err134, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %136, i32 0, i32 1
  %137 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %138 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %139 = bitcast %struct.jpeg_decompress_struct* %138 to %struct.jpeg_common_struct*
  call void %137(%struct.jpeg_common_struct* %139, i32 1) #4
  %140 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  br label %do.cond.135

do.cond.135:                                      ; preds = %do.body.125
  br label %do.end.136

do.end.136:                                       ; preds = %do.cond.135
  %141 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %141, i32 0, i32 88
  %142 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !23
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %142, i32 0, i32 4
  %143 = load i32, i32* %saw_SOF, align 4, !tbaa !75
  %tobool137 = icmp ne i32 %143, 0
  br i1 %tobool137, label %if.then.138, label %if.end.142

if.then.138:                                      ; preds = %do.end.136
  %144 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err139 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %144, i32 0, i32 0
  %145 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err139, align 8, !tbaa !11
  %msg_code140 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %145, i32 0, i32 5
  store i32 61, i32* %msg_code140, align 4, !tbaa !12
  %146 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err141 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %146, i32 0, i32 0
  %147 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err141, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %147, i32 0, i32 0
  %148 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !42
  %149 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %150 = bitcast %struct.jpeg_decompress_struct* %149 to %struct.jpeg_common_struct*
  call void %148(%struct.jpeg_common_struct* %150) #4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.138, %do.end.136
  %151 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height143 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %151, i32 0, i32 8
  %152 = load i32, i32* %image_height143, align 4, !tbaa !72
  %cmp144 = icmp ule i32 %152, 0
  br i1 %cmp144, label %if.then.153, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.142
  %153 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width146 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %153, i32 0, i32 7
  %154 = load i32, i32* %image_width146, align 4, !tbaa !73
  %cmp147 = icmp ule i32 %154, 0
  br i1 %cmp147, label %if.then.153, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %lor.lhs.false
  %155 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components150 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %155, i32 0, i32 9
  %156 = load i32, i32* %num_components150, align 4, !tbaa !74
  %cmp151 = icmp sle i32 %156, 0
  br i1 %cmp151, label %if.then.153, label %if.end.158

if.then.153:                                      ; preds = %lor.lhs.false.149, %lor.lhs.false, %if.end.142
  %157 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err154 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %157, i32 0, i32 0
  %158 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err154, align 8, !tbaa !11
  %msg_code155 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %158, i32 0, i32 5
  store i32 33, i32* %msg_code155, align 4, !tbaa !12
  %159 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err156 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %159, i32 0, i32 0
  %160 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err156, align 8, !tbaa !11
  %error_exit157 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %160, i32 0, i32 0
  %161 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit157, align 8, !tbaa !42
  %162 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %163 = bitcast %struct.jpeg_decompress_struct* %162 to %struct.jpeg_common_struct*
  call void %161(%struct.jpeg_common_struct* %163) #4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.153, %lor.lhs.false.149
  %164 = load i64, i64* %length, align 8, !tbaa !20
  %165 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components159 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %165, i32 0, i32 9
  %166 = load i32, i32* %num_components159, align 4, !tbaa !74
  %mul = mul nsw i32 %166, 3
  %conv160 = sext i32 %mul to i64
  %cmp161 = icmp ne i64 %164, %conv160
  br i1 %cmp161, label %if.then.163, label %if.end.168

if.then.163:                                      ; preds = %if.end.158
  %167 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err164 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %167, i32 0, i32 0
  %168 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err164, align 8, !tbaa !11
  %msg_code165 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %168, i32 0, i32 5
  store i32 12, i32* %msg_code165, align 4, !tbaa !12
  %169 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err166 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %169, i32 0, i32 0
  %170 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err166, align 8, !tbaa !11
  %error_exit167 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %170, i32 0, i32 0
  %171 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit167, align 8, !tbaa !42
  %172 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %173 = bitcast %struct.jpeg_decompress_struct* %172 to %struct.jpeg_common_struct*
  call void %171(%struct.jpeg_common_struct* %173) #4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.163, %if.end.158
  %174 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %174, i32 0, i32 44
  %175 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !35
  %cmp169 = icmp eq %struct.jpeg_component_info* %175, null
  br i1 %cmp169, label %if.then.171, label %if.end.177

if.then.171:                                      ; preds = %if.end.168
  %176 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %176, i32 0, i32 1
  %177 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !26
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %177, i32 0, i32 0
  %178 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !27
  %179 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %180 = bitcast %struct.jpeg_decompress_struct* %179 to %struct.jpeg_common_struct*
  %181 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components172 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %181, i32 0, i32 9
  %182 = load i32, i32* %num_components172, align 4, !tbaa !74
  %conv173 = sext i32 %182 to i64
  %mul174 = mul i64 %conv173, 96
  %call175 = call i8* %178(%struct.jpeg_common_struct* %180, i32 1, i64 %mul174) #4
  %183 = bitcast i8* %call175 to %struct.jpeg_component_info*
  %184 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info176 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %184, i32 0, i32 44
  store %struct.jpeg_component_info* %183, %struct.jpeg_component_info** %comp_info176, align 8, !tbaa !35
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.171, %if.end.168
  store i32 0, i32* %ci, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.282, %if.end.177
  %185 = load i32, i32* %ci, align 4, !tbaa !5
  %186 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components178 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %186, i32 0, i32 9
  %187 = load i32, i32* %num_components178, align 4, !tbaa !74
  %cmp179 = icmp slt i32 %185, %187
  br i1 %cmp179, label %for.body, label %for.end.284

for.body:                                         ; preds = %for.cond
  br label %do.body.181

do.body.181:                                      ; preds = %for.body
  %188 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp182 = icmp eq i64 %188, 0
  br i1 %cmp182, label %if.then.184, label %if.end.192

if.then.184:                                      ; preds = %do.body.181
  %189 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer185 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %189, i32 0, i32 3
  %190 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer185, align 8, !tbaa !21
  %191 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call186 = call i32 %190(%struct.jpeg_decompress_struct* %191) #4
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.end.189, label %if.then.188

if.then.188:                                      ; preds = %if.then.184
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.189:                                       ; preds = %if.then.184
  %192 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte190 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %192, i32 0, i32 0
  %193 = load i8*, i8** %next_input_byte190, align 8, !tbaa !17
  store i8* %193, i8** %next_input_byte, align 8, !tbaa !1
  %194 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer191 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %194, i32 0, i32 1
  %195 = load i64, i64* %bytes_in_buffer191, align 8, !tbaa !19
  store i64 %195, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.189, %do.body.181
  %196 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec193 = add i64 %196, -1
  store i64 %dec193, i64* %bytes_in_buffer, align 8, !tbaa !20
  %197 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr194 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %incdec.ptr194, i8** %next_input_byte, align 8, !tbaa !1
  %198 = load i8, i8* %197, align 1, !tbaa !22
  %conv195 = zext i8 %198 to i32
  store i32 %conv195, i32* %c, align 4, !tbaa !5
  br label %do.cond.196

do.cond.196:                                      ; preds = %if.end.192
  br label %do.end.197

do.end.197:                                       ; preds = %do.cond.196
  store i32 0, i32* %i, align 4, !tbaa !5
  %199 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info198 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %199, i32 0, i32 44
  %200 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info198, align 8, !tbaa !35
  store %struct.jpeg_component_info* %200, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc.222, %do.end.197
  %201 = load i32, i32* %i, align 4, !tbaa !5
  %202 = load i32, i32* %ci, align 4, !tbaa !5
  %cmp200 = icmp slt i32 %201, %202
  br i1 %cmp200, label %for.body.202, label %for.end.225

for.body.202:                                     ; preds = %for.cond.199
  %203 = load i32, i32* %c, align 4, !tbaa !5
  %204 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %204, i32 0, i32 0
  %205 = load i32, i32* %component_id, align 4, !tbaa !76
  %cmp203 = icmp eq i32 %203, %205
  br i1 %cmp203, label %if.then.205, label %if.end.221

if.then.205:                                      ; preds = %for.body.202
  %206 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info206 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %206, i32 0, i32 44
  %207 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info206, align 8, !tbaa !35
  store %struct.jpeg_component_info* %207, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %208 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id207 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %208, i32 0, i32 0
  %209 = load i32, i32* %component_id207, align 4, !tbaa !76
  store i32 %209, i32* %c, align 4, !tbaa !5
  %210 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr208 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %210, i32 1
  store %struct.jpeg_component_info* %incdec.ptr208, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc, %if.then.205
  %211 = load i32, i32* %i, align 4, !tbaa !5
  %212 = load i32, i32* %ci, align 4, !tbaa !5
  %cmp210 = icmp slt i32 %211, %212
  br i1 %cmp210, label %for.body.212, label %for.end

for.body.212:                                     ; preds = %for.cond.209
  %213 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id213 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %213, i32 0, i32 0
  %214 = load i32, i32* %component_id213, align 4, !tbaa !76
  %215 = load i32, i32* %c, align 4, !tbaa !5
  %cmp214 = icmp sgt i32 %214, %215
  br i1 %cmp214, label %if.then.216, label %if.end.218

if.then.216:                                      ; preds = %for.body.212
  %216 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id217 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %216, i32 0, i32 0
  %217 = load i32, i32* %component_id217, align 4, !tbaa !76
  store i32 %217, i32* %c, align 4, !tbaa !5
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.216, %for.body.212
  br label %for.inc

for.inc:                                          ; preds = %if.end.218
  %218 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %218, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %219 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr219 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %219, i32 1
  store %struct.jpeg_component_info* %incdec.ptr219, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond.209

for.end:                                          ; preds = %for.cond.209
  %220 = load i32, i32* %c, align 4, !tbaa !5
  %inc220 = add nsw i32 %220, 1
  store i32 %inc220, i32* %c, align 4, !tbaa !5
  br label %for.end.225

if.end.221:                                       ; preds = %for.body.202
  br label %for.inc.222

for.inc.222:                                      ; preds = %if.end.221
  %221 = load i32, i32* %i, align 4, !tbaa !5
  %inc223 = add nsw i32 %221, 1
  store i32 %inc223, i32* %i, align 4, !tbaa !5
  %222 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr224 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %222, i32 1
  store %struct.jpeg_component_info* %incdec.ptr224, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond.199

for.end.225:                                      ; preds = %for.end, %for.cond.199
  %223 = load i32, i32* %c, align 4, !tbaa !5
  %224 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id226 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %224, i32 0, i32 0
  store i32 %223, i32* %component_id226, align 4, !tbaa !76
  %225 = load i32, i32* %ci, align 4, !tbaa !5
  %226 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %226, i32 0, i32 1
  store i32 %225, i32* %component_index, align 4, !tbaa !78
  br label %do.body.227

do.body.227:                                      ; preds = %for.end.225
  %227 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp228 = icmp eq i64 %227, 0
  br i1 %cmp228, label %if.then.230, label %if.end.238

if.then.230:                                      ; preds = %do.body.227
  %228 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer231 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %228, i32 0, i32 3
  %229 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer231, align 8, !tbaa !21
  %230 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call232 = call i32 %229(%struct.jpeg_decompress_struct* %230) #4
  %tobool233 = icmp ne i32 %call232, 0
  br i1 %tobool233, label %if.end.235, label %if.then.234

if.then.234:                                      ; preds = %if.then.230
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.235:                                       ; preds = %if.then.230
  %231 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte236 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %231, i32 0, i32 0
  %232 = load i8*, i8** %next_input_byte236, align 8, !tbaa !17
  store i8* %232, i8** %next_input_byte, align 8, !tbaa !1
  %233 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer237 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %233, i32 0, i32 1
  %234 = load i64, i64* %bytes_in_buffer237, align 8, !tbaa !19
  store i64 %234, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.235, %do.body.227
  %235 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec239 = add i64 %235, -1
  store i64 %dec239, i64* %bytes_in_buffer, align 8, !tbaa !20
  %236 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr240 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %incdec.ptr240, i8** %next_input_byte, align 8, !tbaa !1
  %237 = load i8, i8* %236, align 1, !tbaa !22
  %conv241 = zext i8 %237 to i32
  store i32 %conv241, i32* %c, align 4, !tbaa !5
  br label %do.cond.242

do.cond.242:                                      ; preds = %if.end.238
  br label %do.end.243

do.end.243:                                       ; preds = %do.cond.242
  %238 = load i32, i32* %c, align 4, !tbaa !5
  %shr = ashr i32 %238, 4
  %and = and i32 %shr, 15
  %239 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %239, i32 0, i32 2
  store i32 %and, i32* %h_samp_factor, align 4, !tbaa !79
  %240 = load i32, i32* %c, align 4, !tbaa !5
  %and244 = and i32 %240, 15
  %241 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %241, i32 0, i32 3
  store i32 %and244, i32* %v_samp_factor, align 4, !tbaa !80
  br label %do.body.245

do.body.245:                                      ; preds = %do.end.243
  %242 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp246 = icmp eq i64 %242, 0
  br i1 %cmp246, label %if.then.248, label %if.end.256

if.then.248:                                      ; preds = %do.body.245
  %243 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer249 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %243, i32 0, i32 3
  %244 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer249, align 8, !tbaa !21
  %245 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call250 = call i32 %244(%struct.jpeg_decompress_struct* %245) #4
  %tobool251 = icmp ne i32 %call250, 0
  br i1 %tobool251, label %if.end.253, label %if.then.252

if.then.252:                                      ; preds = %if.then.248
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.253:                                       ; preds = %if.then.248
  %246 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte254 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %246, i32 0, i32 0
  %247 = load i8*, i8** %next_input_byte254, align 8, !tbaa !17
  store i8* %247, i8** %next_input_byte, align 8, !tbaa !1
  %248 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer255 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %248, i32 0, i32 1
  %249 = load i64, i64* %bytes_in_buffer255, align 8, !tbaa !19
  store i64 %249, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.253, %do.body.245
  %250 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec257 = add i64 %250, -1
  store i64 %dec257, i64* %bytes_in_buffer, align 8, !tbaa !20
  %251 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr258 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %incdec.ptr258, i8** %next_input_byte, align 8, !tbaa !1
  %252 = load i8, i8* %251, align 1, !tbaa !22
  %conv259 = zext i8 %252 to i32
  %253 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %253, i32 0, i32 4
  store i32 %conv259, i32* %quant_tbl_no, align 4, !tbaa !81
  br label %do.cond.260

do.cond.260:                                      ; preds = %if.end.256
  br label %do.end.261

do.end.261:                                       ; preds = %do.cond.260
  br label %do.body.262

do.body.262:                                      ; preds = %do.end.261
  %254 = bitcast i32** %_mp263 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %254) #1
  %255 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err264 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %255, i32 0, i32 0
  %256 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err264, align 8, !tbaa !11
  %msg_parm265 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %256, i32 0, i32 6
  %i266 = bitcast %union.anon* %msg_parm265 to [8 x i32]*
  %arraydecay267 = getelementptr inbounds [8 x i32], [8 x i32]* %i266, i32 0, i32 0
  store i32* %arraydecay267, i32** %_mp263, align 8, !tbaa !1
  %257 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id268 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %257, i32 0, i32 0
  %258 = load i32, i32* %component_id268, align 4, !tbaa !76
  %259 = load i32*, i32** %_mp263, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds i32, i32* %259, i64 0
  store i32 %258, i32* %arrayidx269, align 4, !tbaa !5
  %260 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor270 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %260, i32 0, i32 2
  %261 = load i32, i32* %h_samp_factor270, align 4, !tbaa !79
  %262 = load i32*, i32** %_mp263, align 8, !tbaa !1
  %arrayidx271 = getelementptr inbounds i32, i32* %262, i64 1
  store i32 %261, i32* %arrayidx271, align 4, !tbaa !5
  %263 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor272 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %263, i32 0, i32 3
  %264 = load i32, i32* %v_samp_factor272, align 4, !tbaa !80
  %265 = load i32*, i32** %_mp263, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds i32, i32* %265, i64 2
  store i32 %264, i32* %arrayidx273, align 4, !tbaa !5
  %266 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no274 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %266, i32 0, i32 4
  %267 = load i32, i32* %quant_tbl_no274, align 4, !tbaa !81
  %268 = load i32*, i32** %_mp263, align 8, !tbaa !1
  %arrayidx275 = getelementptr inbounds i32, i32* %268, i64 3
  store i32 %267, i32* %arrayidx275, align 4, !tbaa !5
  %269 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err276 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %269, i32 0, i32 0
  %270 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err276, align 8, !tbaa !11
  %msg_code277 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %270, i32 0, i32 5
  store i32 103, i32* %msg_code277, align 4, !tbaa !12
  %271 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err278 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %271, i32 0, i32 0
  %272 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err278, align 8, !tbaa !11
  %emit_message279 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %272, i32 0, i32 1
  %273 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message279, align 8, !tbaa !15
  %274 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %275 = bitcast %struct.jpeg_decompress_struct* %274 to %struct.jpeg_common_struct*
  call void %273(%struct.jpeg_common_struct* %275, i32 1) #4
  %276 = bitcast i32** %_mp263 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  br label %do.cond.280

do.cond.280:                                      ; preds = %do.body.262
  br label %do.end.281

do.end.281:                                       ; preds = %do.cond.280
  br label %for.inc.282

for.inc.282:                                      ; preds = %do.end.281
  %277 = load i32, i32* %ci, align 4, !tbaa !5
  %inc283 = add nsw i32 %277, 1
  store i32 %inc283, i32* %ci, align 4, !tbaa !5
  br label %for.cond

for.end.284:                                      ; preds = %for.cond
  %278 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker285 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %278, i32 0, i32 88
  %279 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker285, align 8, !tbaa !23
  %saw_SOF286 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %279, i32 0, i32 4
  store i32 1, i32* %saw_SOF286, align 4, !tbaa !75
  %280 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %281 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte287 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %281, i32 0, i32 0
  store i8* %280, i8** %next_input_byte287, align 8, !tbaa !17
  %282 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %283 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer288 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %283, i32 0, i32 1
  store i64 %282, i64* %bytes_in_buffer288, align 8, !tbaa !19
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.284, %if.then.252, %if.then.234, %if.then.188, %if.then.115, %if.then.96, %if.then.81, %if.then.62, %if.then.47, %if.then.30, %if.then.15, %if.then.4
  %284 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %284) #1
  %285 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %285) #1
  %286 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %286) #1
  %287 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #1
  %288 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
  %289 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #1
  %292 = load i32, i32* %retval
  ret i32 %292
}

; Function Attrs: nounwind uwtable
define internal i32 @get_sos(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %c = alloca i32, align 4
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_mp = alloca i32*, align 8
  %_mp232 = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 6
  %8 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !16
  store %struct.jpeg_source_mgr* %8, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %9 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 0
  %11 = load i8*, i8** %next_input_byte1, align 8, !tbaa !17
  store i8* %11, i8** %next_input_byte, align 8, !tbaa !1
  %12 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %13, i32 0, i32 1
  %14 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !19
  store i64 %14, i64* %bytes_in_buffer, align 8, !tbaa !20
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 88
  %16 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !23
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %16, i32 0, i32 4
  %17 = load i32, i32* %saw_SOF, align 4, !tbaa !75
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 60, i32* %msg_code, align 4, !tbaa !12
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 6
  %s = bitcast %union.anon* %msg_parm to [80 x i8]*
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %s, i32 0, i32 0
  %call = call i8* @strncpy(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 80) #5
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 0
  %24 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !42
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %26 = bitcast %struct.jpeg_decompress_struct* %25 to %struct.jpeg_common_struct*
  call void %24(%struct.jpeg_common_struct* %26) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %27 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp = icmp eq i64 %27, 0
  br i1 %cmp, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %do.body
  %28 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %28, i32 0, i32 3
  %29 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !21
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call6 = call i32 %29(%struct.jpeg_decompress_struct* %30) #4
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then.5
  %31 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte10 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %31, i32 0, i32 0
  %32 = load i8*, i8** %next_input_byte10, align 8, !tbaa !17
  store i8* %32, i8** %next_input_byte, align 8, !tbaa !1
  %33 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %33, i32 0, i32 1
  %34 = load i64, i64* %bytes_in_buffer11, align 8, !tbaa !19
  store i64 %34, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.9, %do.body
  %35 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec = add i64 %35, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !20
  %36 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !22
  %conv = zext i8 %37 to i32
  %shl = shl i32 %conv, 8
  %conv13 = zext i32 %shl to i64
  store i64 %conv13, i64* %length, align 8, !tbaa !20
  %38 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp14 = icmp eq i64 %38, 0
  br i1 %cmp14, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.end.12
  %39 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %39, i32 0, i32 3
  %40 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer17, align 8, !tbaa !21
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call18 = call i32 %40(%struct.jpeg_decompress_struct* %41) #4
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.then.16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.16
  %42 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte22 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %42, i32 0, i32 0
  %43 = load i8*, i8** %next_input_byte22, align 8, !tbaa !17
  store i8* %43, i8** %next_input_byte, align 8, !tbaa !1
  %44 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer23 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %44, i32 0, i32 1
  %45 = load i64, i64* %bytes_in_buffer23, align 8, !tbaa !19
  store i64 %45, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.21, %if.end.12
  %46 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec25 = add i64 %46, -1
  store i64 %dec25, i64* %bytes_in_buffer, align 8, !tbaa !20
  %47 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr26, i8** %next_input_byte, align 8, !tbaa !1
  %48 = load i8, i8* %47, align 1, !tbaa !22
  %conv27 = zext i8 %48 to i64
  %49 = load i64, i64* %length, align 8, !tbaa !20
  %add = add nsw i64 %49, %conv27
  store i64 %add, i64* %length, align 8, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %if.end.24
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.28

do.body.28:                                       ; preds = %do.end
  %50 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp29 = icmp eq i64 %50, 0
  br i1 %cmp29, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %do.body.28
  %51 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer32 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %51, i32 0, i32 3
  %52 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer32, align 8, !tbaa !21
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call33 = call i32 %52(%struct.jpeg_decompress_struct* %53) #4
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.then.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.then.31
  %54 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte37 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %54, i32 0, i32 0
  %55 = load i8*, i8** %next_input_byte37, align 8, !tbaa !17
  store i8* %55, i8** %next_input_byte, align 8, !tbaa !1
  %56 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer38 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %56, i32 0, i32 1
  %57 = load i64, i64* %bytes_in_buffer38, align 8, !tbaa !19
  store i64 %57, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.36, %do.body.28
  %58 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec40 = add i64 %58, -1
  store i64 %dec40, i64* %bytes_in_buffer, align 8, !tbaa !20
  %59 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr41 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr41, i8** %next_input_byte, align 8, !tbaa !1
  %60 = load i8, i8* %59, align 1, !tbaa !22
  %conv42 = zext i8 %60 to i32
  store i32 %conv42, i32* %n, align 4, !tbaa !5
  br label %do.cond.43

do.cond.43:                                       ; preds = %if.end.39
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err45, align 8, !tbaa !11
  %msg_code46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 5
  store i32 105, i32* %msg_code46, align 4, !tbaa !12
  %63 = load i32, i32* %n, align 4, !tbaa !5
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err47, align 8, !tbaa !11
  %msg_parm48 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 6
  %i49 = bitcast %union.anon* %msg_parm48 to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i49, i32 0, i64 0
  store i32 %63, i32* %arrayidx, align 4, !tbaa !5
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err50, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i32 0, i32 1
  %68 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %70 = bitcast %struct.jpeg_decompress_struct* %69 to %struct.jpeg_common_struct*
  call void %68(%struct.jpeg_common_struct* %70, i32 1) #4
  %71 = load i64, i64* %length, align 8, !tbaa !20
  %72 = load i32, i32* %n, align 4, !tbaa !5
  %mul = mul nsw i32 %72, 2
  %add51 = add nsw i32 %mul, 6
  %conv52 = sext i32 %add51 to i64
  %cmp53 = icmp ne i64 %71, %conv52
  br i1 %cmp53, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.44
  %73 = load i32, i32* %n, align 4, !tbaa !5
  %cmp55 = icmp sgt i32 %73, 4
  br i1 %cmp55, label %if.then.61, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false
  %74 = load i32, i32* %n, align 4, !tbaa !5
  %cmp58 = icmp eq i32 %74, 0
  br i1 %cmp58, label %land.lhs.true, label %if.end.66

land.lhs.true:                                    ; preds = %lor.lhs.false.57
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 46
  %76 = load i32, i32* %progressive_mode, align 4, !tbaa !69
  %tobool60 = icmp ne i32 %76, 0
  br i1 %tobool60, label %if.end.66, label %if.then.61

if.then.61:                                       ; preds = %land.lhs.true, %lor.lhs.false, %do.end.44
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 0
  %78 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err62, align 8, !tbaa !11
  %msg_code63 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %78, i32 0, i32 5
  store i32 12, i32* %msg_code63, align 4, !tbaa !12
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 0
  %80 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err64, align 8, !tbaa !11
  %error_exit65 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %80, i32 0, i32 0
  %81 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit65, align 8, !tbaa !42
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %83 = bitcast %struct.jpeg_decompress_struct* %82 to %struct.jpeg_common_struct*
  call void %81(%struct.jpeg_common_struct* %83) #4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %land.lhs.true, %lor.lhs.false.57
  %84 = load i32, i32* %n, align 4, !tbaa !5
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 69
  store i32 %84, i32* %comps_in_scan, align 4, !tbaa !82
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.174, %if.end.66
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %87 = load i32, i32* %n, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %86, %87
  br i1 %cmp67, label %for.body, label %for.end.176

for.body:                                         ; preds = %for.cond
  br label %do.body.69

do.body.69:                                       ; preds = %for.body
  %88 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp70 = icmp eq i64 %88, 0
  br i1 %cmp70, label %if.then.72, label %if.end.80

if.then.72:                                       ; preds = %do.body.69
  %89 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer73 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %89, i32 0, i32 3
  %90 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer73, align 8, !tbaa !21
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call74 = call i32 %90(%struct.jpeg_decompress_struct* %91) #4
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %if.then.72
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.77:                                        ; preds = %if.then.72
  %92 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte78 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %92, i32 0, i32 0
  %93 = load i8*, i8** %next_input_byte78, align 8, !tbaa !17
  store i8* %93, i8** %next_input_byte, align 8, !tbaa !1
  %94 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer79 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %94, i32 0, i32 1
  %95 = load i64, i64* %bytes_in_buffer79, align 8, !tbaa !19
  store i64 %95, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.77, %do.body.69
  %96 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec81 = add i64 %96, -1
  store i64 %dec81, i64* %bytes_in_buffer, align 8, !tbaa !20
  %97 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr82 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr82, i8** %next_input_byte, align 8, !tbaa !1
  %98 = load i8, i8* %97, align 1, !tbaa !22
  %conv83 = zext i8 %98 to i32
  store i32 %conv83, i32* %c, align 4, !tbaa !5
  br label %do.cond.84

do.cond.84:                                       ; preds = %if.end.80
  br label %do.end.85

do.end.85:                                        ; preds = %do.cond.84
  store i32 0, i32* %ci, align 4, !tbaa !5
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.112, %do.end.85
  %99 = load i32, i32* %ci, align 4, !tbaa !5
  %100 = load i32, i32* %i, align 4, !tbaa !5
  %cmp87 = icmp slt i32 %99, %100
  br i1 %cmp87, label %for.body.89, label %for.end.114

for.body.89:                                      ; preds = %for.cond.86
  %101 = load i32, i32* %c, align 4, !tbaa !5
  %102 = load i32, i32* %ci, align 4, !tbaa !5
  %idxprom = sext i32 %102 to i64
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 70
  %arrayidx90 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %104 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx90, align 8, !tbaa !1
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %104, i32 0, i32 0
  %105 = load i32, i32* %component_id, align 4, !tbaa !76
  %cmp91 = icmp eq i32 %101, %105
  br i1 %cmp91, label %if.then.93, label %if.end.111

if.then.93:                                       ; preds = %for.body.89
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 70
  %arrayidx95 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info94, i32 0, i64 0
  %107 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx95, align 8, !tbaa !1
  %component_id96 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %107, i32 0, i32 0
  %108 = load i32, i32* %component_id96, align 4, !tbaa !76
  store i32 %108, i32* %c, align 4, !tbaa !5
  store i32 1, i32* %ci, align 4, !tbaa !5
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc, %if.then.93
  %109 = load i32, i32* %ci, align 4, !tbaa !5
  %110 = load i32, i32* %i, align 4, !tbaa !5
  %cmp98 = icmp slt i32 %109, %110
  br i1 %cmp98, label %for.body.100, label %for.end

for.body.100:                                     ; preds = %for.cond.97
  %111 = load i32, i32* %ci, align 4, !tbaa !5
  %idxprom101 = sext i32 %111 to i64
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %112, i32 0, i32 70
  %arrayidx103 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info102, i32 0, i64 %idxprom101
  %113 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx103, align 8, !tbaa !1
  store %struct.jpeg_component_info* %113, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %114 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id104 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %114, i32 0, i32 0
  %115 = load i32, i32* %component_id104, align 4, !tbaa !76
  %116 = load i32, i32* %c, align 4, !tbaa !5
  %cmp105 = icmp sgt i32 %115, %116
  br i1 %cmp105, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %for.body.100
  %117 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id108 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %117, i32 0, i32 0
  %118 = load i32, i32* %component_id108, align 4, !tbaa !76
  store i32 %118, i32* %c, align 4, !tbaa !5
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %for.body.100
  br label %for.inc

for.inc:                                          ; preds = %if.end.109
  %119 = load i32, i32* %ci, align 4, !tbaa !5
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !5
  br label %for.cond.97

for.end:                                          ; preds = %for.cond.97
  %120 = load i32, i32* %c, align 4, !tbaa !5
  %inc110 = add nsw i32 %120, 1
  store i32 %inc110, i32* %c, align 4, !tbaa !5
  br label %for.end.114

if.end.111:                                       ; preds = %for.body.89
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %121 = load i32, i32* %ci, align 4, !tbaa !5
  %inc113 = add nsw i32 %121, 1
  store i32 %inc113, i32* %ci, align 4, !tbaa !5
  br label %for.cond.86

for.end.114:                                      ; preds = %for.end, %for.cond.86
  store i32 0, i32* %ci, align 4, !tbaa !5
  %122 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %122, i32 0, i32 44
  %123 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !35
  store %struct.jpeg_component_info* %123, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.124, %for.end.114
  %124 = load i32, i32* %ci, align 4, !tbaa !5
  %125 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %125, i32 0, i32 9
  %126 = load i32, i32* %num_components, align 4, !tbaa !74
  %cmp116 = icmp slt i32 %124, %126
  br i1 %cmp116, label %for.body.118, label %for.end.127

for.body.118:                                     ; preds = %for.cond.115
  %127 = load i32, i32* %c, align 4, !tbaa !5
  %128 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id119 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %128, i32 0, i32 0
  %129 = load i32, i32* %component_id119, align 4, !tbaa !76
  %cmp120 = icmp eq i32 %127, %129
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %for.body.118
  br label %id_found

if.end.123:                                       ; preds = %for.body.118
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123
  %130 = load i32, i32* %ci, align 4, !tbaa !5
  %inc125 = add nsw i32 %130, 1
  store i32 %inc125, i32* %ci, align 4, !tbaa !5
  %131 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr126 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %131, i32 1
  store %struct.jpeg_component_info* %incdec.ptr126, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond.115

for.end.127:                                      ; preds = %for.cond.115
  %132 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err128 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %132, i32 0, i32 0
  %133 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err128, align 8, !tbaa !11
  %msg_code129 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %133, i32 0, i32 5
  store i32 4, i32* %msg_code129, align 4, !tbaa !12
  %134 = load i32, i32* %c, align 4, !tbaa !5
  %135 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err130 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %135, i32 0, i32 0
  %136 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err130, align 8, !tbaa !11
  %msg_parm131 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %136, i32 0, i32 6
  %i132 = bitcast %union.anon* %msg_parm131 to [8 x i32]*
  %arrayidx133 = getelementptr inbounds [8 x i32], [8 x i32]* %i132, i32 0, i64 0
  store i32 %134, i32* %arrayidx133, align 4, !tbaa !5
  %137 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err134 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %137, i32 0, i32 0
  %138 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err134, align 8, !tbaa !11
  %error_exit135 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %138, i32 0, i32 0
  %139 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit135, align 8, !tbaa !42
  %140 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %141 = bitcast %struct.jpeg_decompress_struct* %140 to %struct.jpeg_common_struct*
  call void %139(%struct.jpeg_common_struct* %141) #4
  br label %id_found

id_found:                                         ; preds = %for.end.127, %if.then.122
  %142 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %143 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom136 = sext i32 %143 to i64
  %144 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info137 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %144, i32 0, i32 70
  %arrayidx138 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info137, i32 0, i64 %idxprom136
  store %struct.jpeg_component_info* %142, %struct.jpeg_component_info** %arrayidx138, align 8, !tbaa !1
  br label %do.body.139

do.body.139:                                      ; preds = %id_found
  %145 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp140 = icmp eq i64 %145, 0
  br i1 %cmp140, label %if.then.142, label %if.end.150

if.then.142:                                      ; preds = %do.body.139
  %146 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer143 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %146, i32 0, i32 3
  %147 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer143, align 8, !tbaa !21
  %148 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call144 = call i32 %147(%struct.jpeg_decompress_struct* %148) #4
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.end.147, label %if.then.146

if.then.146:                                      ; preds = %if.then.142
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.147:                                       ; preds = %if.then.142
  %149 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte148 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %149, i32 0, i32 0
  %150 = load i8*, i8** %next_input_byte148, align 8, !tbaa !17
  store i8* %150, i8** %next_input_byte, align 8, !tbaa !1
  %151 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer149 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %151, i32 0, i32 1
  %152 = load i64, i64* %bytes_in_buffer149, align 8, !tbaa !19
  store i64 %152, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.147, %do.body.139
  %153 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec151 = add i64 %153, -1
  store i64 %dec151, i64* %bytes_in_buffer, align 8, !tbaa !20
  %154 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr152 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %incdec.ptr152, i8** %next_input_byte, align 8, !tbaa !1
  %155 = load i8, i8* %154, align 1, !tbaa !22
  %conv153 = zext i8 %155 to i32
  store i32 %conv153, i32* %c, align 4, !tbaa !5
  br label %do.cond.154

do.cond.154:                                      ; preds = %if.end.150
  br label %do.end.155

do.end.155:                                       ; preds = %do.cond.154
  %156 = load i32, i32* %c, align 4, !tbaa !5
  %shr = ashr i32 %156, 4
  %and = and i32 %shr, 15
  %157 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %157, i32 0, i32 5
  store i32 %and, i32* %dc_tbl_no, align 4, !tbaa !83
  %158 = load i32, i32* %c, align 4, !tbaa !5
  %and156 = and i32 %158, 15
  %159 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %159, i32 0, i32 6
  store i32 %and156, i32* %ac_tbl_no, align 4, !tbaa !84
  br label %do.body.157

do.body.157:                                      ; preds = %do.end.155
  %160 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %160) #1
  %161 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err158 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %161, i32 0, i32 0
  %162 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err158, align 8, !tbaa !11
  %msg_parm159 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %162, i32 0, i32 6
  %i160 = bitcast %union.anon* %msg_parm159 to [8 x i32]*
  %arraydecay161 = getelementptr inbounds [8 x i32], [8 x i32]* %i160, i32 0, i32 0
  store i32* %arraydecay161, i32** %_mp, align 8, !tbaa !1
  %163 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id162 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %163, i32 0, i32 0
  %164 = load i32, i32* %component_id162, align 4, !tbaa !76
  %165 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i32, i32* %165, i64 0
  store i32 %164, i32* %arrayidx163, align 4, !tbaa !5
  %166 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no164 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %166, i32 0, i32 5
  %167 = load i32, i32* %dc_tbl_no164, align 4, !tbaa !83
  %168 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i32, i32* %168, i64 1
  store i32 %167, i32* %arrayidx165, align 4, !tbaa !5
  %169 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no166 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %169, i32 0, i32 6
  %170 = load i32, i32* %ac_tbl_no166, align 4, !tbaa !84
  %171 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i32, i32* %171, i64 2
  store i32 %170, i32* %arrayidx167, align 4, !tbaa !5
  %172 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err168 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %172, i32 0, i32 0
  %173 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err168, align 8, !tbaa !11
  %msg_code169 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %173, i32 0, i32 5
  store i32 106, i32* %msg_code169, align 4, !tbaa !12
  %174 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err170 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %174, i32 0, i32 0
  %175 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err170, align 8, !tbaa !11
  %emit_message171 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %175, i32 0, i32 1
  %176 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message171, align 8, !tbaa !15
  %177 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %178 = bitcast %struct.jpeg_decompress_struct* %177 to %struct.jpeg_common_struct*
  call void %176(%struct.jpeg_common_struct* %178, i32 1) #4
  %179 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  br label %do.cond.172

do.cond.172:                                      ; preds = %do.body.157
  br label %do.end.173

do.end.173:                                       ; preds = %do.cond.172
  br label %for.inc.174

for.inc.174:                                      ; preds = %do.end.173
  %180 = load i32, i32* %i, align 4, !tbaa !5
  %inc175 = add nsw i32 %180, 1
  store i32 %inc175, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.176:                                      ; preds = %for.cond
  br label %do.body.177

do.body.177:                                      ; preds = %for.end.176
  %181 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp178 = icmp eq i64 %181, 0
  br i1 %cmp178, label %if.then.180, label %if.end.188

if.then.180:                                      ; preds = %do.body.177
  %182 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer181 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %182, i32 0, i32 3
  %183 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer181, align 8, !tbaa !21
  %184 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call182 = call i32 %183(%struct.jpeg_decompress_struct* %184) #4
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.end.185, label %if.then.184

if.then.184:                                      ; preds = %if.then.180
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.185:                                       ; preds = %if.then.180
  %185 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte186 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %185, i32 0, i32 0
  %186 = load i8*, i8** %next_input_byte186, align 8, !tbaa !17
  store i8* %186, i8** %next_input_byte, align 8, !tbaa !1
  %187 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer187 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %187, i32 0, i32 1
  %188 = load i64, i64* %bytes_in_buffer187, align 8, !tbaa !19
  store i64 %188, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.185, %do.body.177
  %189 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec189 = add i64 %189, -1
  store i64 %dec189, i64* %bytes_in_buffer, align 8, !tbaa !20
  %190 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr190 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %incdec.ptr190, i8** %next_input_byte, align 8, !tbaa !1
  %191 = load i8, i8* %190, align 1, !tbaa !22
  %conv191 = zext i8 %191 to i32
  store i32 %conv191, i32* %c, align 4, !tbaa !5
  br label %do.cond.192

do.cond.192:                                      ; preds = %if.end.188
  br label %do.end.193

do.end.193:                                       ; preds = %do.cond.192
  %192 = load i32, i32* %c, align 4, !tbaa !5
  %193 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %193, i32 0, i32 75
  store i32 %192, i32* %Ss, align 4, !tbaa !85
  br label %do.body.194

do.body.194:                                      ; preds = %do.end.193
  %194 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp195 = icmp eq i64 %194, 0
  br i1 %cmp195, label %if.then.197, label %if.end.205

if.then.197:                                      ; preds = %do.body.194
  %195 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer198 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %195, i32 0, i32 3
  %196 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer198, align 8, !tbaa !21
  %197 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call199 = call i32 %196(%struct.jpeg_decompress_struct* %197) #4
  %tobool200 = icmp ne i32 %call199, 0
  br i1 %tobool200, label %if.end.202, label %if.then.201

if.then.201:                                      ; preds = %if.then.197
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.202:                                       ; preds = %if.then.197
  %198 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte203 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %198, i32 0, i32 0
  %199 = load i8*, i8** %next_input_byte203, align 8, !tbaa !17
  store i8* %199, i8** %next_input_byte, align 8, !tbaa !1
  %200 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer204 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %200, i32 0, i32 1
  %201 = load i64, i64* %bytes_in_buffer204, align 8, !tbaa !19
  store i64 %201, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.202, %do.body.194
  %202 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec206 = add i64 %202, -1
  store i64 %dec206, i64* %bytes_in_buffer, align 8, !tbaa !20
  %203 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr207 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %incdec.ptr207, i8** %next_input_byte, align 8, !tbaa !1
  %204 = load i8, i8* %203, align 1, !tbaa !22
  %conv208 = zext i8 %204 to i32
  store i32 %conv208, i32* %c, align 4, !tbaa !5
  br label %do.cond.209

do.cond.209:                                      ; preds = %if.end.205
  br label %do.end.210

do.end.210:                                       ; preds = %do.cond.209
  %205 = load i32, i32* %c, align 4, !tbaa !5
  %206 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %206, i32 0, i32 76
  store i32 %205, i32* %Se, align 4, !tbaa !86
  br label %do.body.211

do.body.211:                                      ; preds = %do.end.210
  %207 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp212 = icmp eq i64 %207, 0
  br i1 %cmp212, label %if.then.214, label %if.end.222

if.then.214:                                      ; preds = %do.body.211
  %208 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer215 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %208, i32 0, i32 3
  %209 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer215, align 8, !tbaa !21
  %210 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call216 = call i32 %209(%struct.jpeg_decompress_struct* %210) #4
  %tobool217 = icmp ne i32 %call216, 0
  br i1 %tobool217, label %if.end.219, label %if.then.218

if.then.218:                                      ; preds = %if.then.214
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.219:                                       ; preds = %if.then.214
  %211 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte220 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %211, i32 0, i32 0
  %212 = load i8*, i8** %next_input_byte220, align 8, !tbaa !17
  store i8* %212, i8** %next_input_byte, align 8, !tbaa !1
  %213 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer221 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %213, i32 0, i32 1
  %214 = load i64, i64* %bytes_in_buffer221, align 8, !tbaa !19
  store i64 %214, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.219, %do.body.211
  %215 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec223 = add i64 %215, -1
  store i64 %dec223, i64* %bytes_in_buffer, align 8, !tbaa !20
  %216 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr224 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr224, i8** %next_input_byte, align 8, !tbaa !1
  %217 = load i8, i8* %216, align 1, !tbaa !22
  %conv225 = zext i8 %217 to i32
  store i32 %conv225, i32* %c, align 4, !tbaa !5
  br label %do.cond.226

do.cond.226:                                      ; preds = %if.end.222
  br label %do.end.227

do.end.227:                                       ; preds = %do.cond.226
  %218 = load i32, i32* %c, align 4, !tbaa !5
  %shr228 = ashr i32 %218, 4
  %and229 = and i32 %shr228, 15
  %219 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %219, i32 0, i32 77
  store i32 %and229, i32* %Ah, align 4, !tbaa !87
  %220 = load i32, i32* %c, align 4, !tbaa !5
  %and230 = and i32 %220, 15
  %221 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %221, i32 0, i32 78
  store i32 %and230, i32* %Al, align 4, !tbaa !88
  br label %do.body.231

do.body.231:                                      ; preds = %do.end.227
  %222 = bitcast i32** %_mp232 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %222) #1
  %223 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err233 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %223, i32 0, i32 0
  %224 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err233, align 8, !tbaa !11
  %msg_parm234 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %224, i32 0, i32 6
  %i235 = bitcast %union.anon* %msg_parm234 to [8 x i32]*
  %arraydecay236 = getelementptr inbounds [8 x i32], [8 x i32]* %i235, i32 0, i32 0
  store i32* %arraydecay236, i32** %_mp232, align 8, !tbaa !1
  %225 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss237 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %225, i32 0, i32 75
  %226 = load i32, i32* %Ss237, align 4, !tbaa !85
  %227 = load i32*, i32** %_mp232, align 8, !tbaa !1
  %arrayidx238 = getelementptr inbounds i32, i32* %227, i64 0
  store i32 %226, i32* %arrayidx238, align 4, !tbaa !5
  %228 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se239 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %228, i32 0, i32 76
  %229 = load i32, i32* %Se239, align 4, !tbaa !86
  %230 = load i32*, i32** %_mp232, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds i32, i32* %230, i64 1
  store i32 %229, i32* %arrayidx240, align 4, !tbaa !5
  %231 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah241 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %231, i32 0, i32 77
  %232 = load i32, i32* %Ah241, align 4, !tbaa !87
  %233 = load i32*, i32** %_mp232, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds i32, i32* %233, i64 2
  store i32 %232, i32* %arrayidx242, align 4, !tbaa !5
  %234 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al243 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %234, i32 0, i32 78
  %235 = load i32, i32* %Al243, align 4, !tbaa !88
  %236 = load i32*, i32** %_mp232, align 8, !tbaa !1
  %arrayidx244 = getelementptr inbounds i32, i32* %236, i64 3
  store i32 %235, i32* %arrayidx244, align 4, !tbaa !5
  %237 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err245 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %237, i32 0, i32 0
  %238 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err245, align 8, !tbaa !11
  %msg_code246 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %238, i32 0, i32 5
  store i32 107, i32* %msg_code246, align 4, !tbaa !12
  %239 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err247 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %239, i32 0, i32 0
  %240 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err247, align 8, !tbaa !11
  %emit_message248 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %240, i32 0, i32 1
  %241 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message248, align 8, !tbaa !15
  %242 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %243 = bitcast %struct.jpeg_decompress_struct* %242 to %struct.jpeg_common_struct*
  call void %241(%struct.jpeg_common_struct* %243, i32 1) #4
  %244 = bitcast i32** %_mp232 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %244) #1
  br label %do.cond.249

do.cond.249:                                      ; preds = %do.body.231
  br label %do.end.250

do.end.250:                                       ; preds = %do.cond.249
  %245 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker251 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %245, i32 0, i32 88
  %246 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker251, align 8, !tbaa !23
  %next_restart_num = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %246, i32 0, i32 5
  store i32 0, i32* %next_restart_num, align 4, !tbaa !43
  %247 = load i32, i32* %n, align 4, !tbaa !5
  %tobool252 = icmp ne i32 %247, 0
  br i1 %tobool252, label %if.then.253, label %if.end.255

if.then.253:                                      ; preds = %do.end.250
  %248 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %248, i32 0, i32 35
  %249 = load i32, i32* %input_scan_number, align 4, !tbaa !36
  %inc254 = add nsw i32 %249, 1
  store i32 %inc254, i32* %input_scan_number, align 4, !tbaa !36
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.253, %do.end.250
  %250 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %251 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte256 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %251, i32 0, i32 0
  store i8* %250, i8** %next_input_byte256, align 8, !tbaa !17
  %252 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %253 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer257 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %253, i32 0, i32 1
  store i64 %252, i64* %bytes_in_buffer257, align 8, !tbaa !19
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.255, %if.then.218, %if.then.201, %if.then.184, %if.then.146, %if.then.76, %if.then.35, %if.then.20, %if.then.8
  %254 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #1
  %255 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #1
  %256 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %256) #1
  %257 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #1
  %258 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #1
  %259 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #1
  %261 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  %263 = load i32, i32* %retval
  ret i32 %263
}

; Function Attrs: nounwind uwtable
define internal i32 @get_dac(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %index = alloca i32, align 4
  %val = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 6
  %5 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !16
  store %struct.jpeg_source_mgr* %5, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %6 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 0
  %8 = load i8*, i8** %next_input_byte1, align 8, !tbaa !17
  store i8* %8, i8** %next_input_byte, align 8, !tbaa !1
  %9 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 1
  %11 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !19
  store i64 %11, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %do.body

do.body:                                          ; preds = %entry
  %12 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp = icmp eq i64 %12, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %13 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %13, i32 0, i32 3
  %14 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !21
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %14(%struct.jpeg_decompress_struct* %15) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 0
  %17 = load i8*, i8** %next_input_byte4, align 8, !tbaa !17
  store i8* %17, i8** %next_input_byte, align 8, !tbaa !1
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 1
  %19 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !19
  store i64 %19, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %20 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec = add i64 %20, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !20
  %21 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !22
  %conv = zext i8 %22 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8, !tbaa !20
  %23 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp8 = icmp eq i64 %23, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %24 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %24, i32 0, i32 3
  %25 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8, !tbaa !21
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call12 = call i32 %25(%struct.jpeg_decompress_struct* %26) #4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  %27 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %27, i32 0, i32 0
  %28 = load i8*, i8** %next_input_byte16, align 8, !tbaa !17
  store i8* %28, i8** %next_input_byte, align 8, !tbaa !1
  %29 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %29, i32 0, i32 1
  %30 = load i64, i64* %bytes_in_buffer17, align 8, !tbaa !19
  store i64 %30, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %31 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec19 = add i64 %31, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8, !tbaa !20
  %32 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !22
  %conv21 = zext i8 %33 to i64
  %34 = load i64, i64* %length, align 8, !tbaa !20
  %add = add nsw i64 %34, %conv21
  store i64 %add, i64* %length, align 8, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load i64, i64* %length, align 8, !tbaa !20
  %sub = sub nsw i64 %35, 2
  store i64 %sub, i64* %length, align 8, !tbaa !20
  br label %while.cond

while.cond:                                       ; preds = %if.end.110, %do.end
  %36 = load i64, i64* %length, align 8, !tbaa !20
  %cmp22 = icmp sgt i64 %36, 0
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.24

do.body.24:                                       ; preds = %while.body
  %37 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp25 = icmp eq i64 %37, 0
  br i1 %cmp25, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %do.body.24
  %38 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer28 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %38, i32 0, i32 3
  %39 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer28, align 8, !tbaa !21
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call29 = call i32 %39(%struct.jpeg_decompress_struct* %40) #4
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.27
  %41 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte33 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %41, i32 0, i32 0
  %42 = load i8*, i8** %next_input_byte33, align 8, !tbaa !17
  store i8* %42, i8** %next_input_byte, align 8, !tbaa !1
  %43 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %43, i32 0, i32 1
  %44 = load i64, i64* %bytes_in_buffer34, align 8, !tbaa !19
  store i64 %44, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %do.body.24
  %45 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec36 = add i64 %45, -1
  store i64 %dec36, i64* %bytes_in_buffer, align 8, !tbaa !20
  %46 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr37, i8** %next_input_byte, align 8, !tbaa !1
  %47 = load i8, i8* %46, align 1, !tbaa !22
  %conv38 = zext i8 %47 to i32
  store i32 %conv38, i32* %index, align 4, !tbaa !5
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.35
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %48 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp42 = icmp eq i64 %48, 0
  br i1 %cmp42, label %if.then.44, label %if.end.52

if.then.44:                                       ; preds = %do.body.41
  %49 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer45 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %49, i32 0, i32 3
  %50 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer45, align 8, !tbaa !21
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call46 = call i32 %50(%struct.jpeg_decompress_struct* %51) #4
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.then.44
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.then.44
  %52 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte50 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %52, i32 0, i32 0
  %53 = load i8*, i8** %next_input_byte50, align 8, !tbaa !17
  store i8* %53, i8** %next_input_byte, align 8, !tbaa !1
  %54 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer51 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %54, i32 0, i32 1
  %55 = load i64, i64* %bytes_in_buffer51, align 8, !tbaa !19
  store i64 %55, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.49, %do.body.41
  %56 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec53 = add i64 %56, -1
  store i64 %dec53, i64* %bytes_in_buffer, align 8, !tbaa !20
  %57 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr54 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr54, i8** %next_input_byte, align 8, !tbaa !1
  %58 = load i8, i8* %57, align 1, !tbaa !22
  %conv55 = zext i8 %58 to i32
  store i32 %conv55, i32* %val, align 4, !tbaa !5
  br label %do.cond.56

do.cond.56:                                       ; preds = %if.end.52
  br label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  %59 = load i64, i64* %length, align 8, !tbaa !20
  %sub58 = sub nsw i64 %59, 2
  store i64 %sub58, i64* %length, align 8, !tbaa !20
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 5
  store i32 81, i32* %msg_code, align 4, !tbaa !12
  %62 = load i32, i32* %index, align 4, !tbaa !5
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err59, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %62, i32* %arrayidx, align 4, !tbaa !5
  %65 = load i32, i32* %val, align 4, !tbaa !5
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err60, align 8, !tbaa !11
  %msg_parm61 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i32 0, i32 6
  %i62 = bitcast %union.anon* %msg_parm61 to [8 x i32]*
  %arrayidx63 = getelementptr inbounds [8 x i32], [8 x i32]* %i62, i32 0, i64 1
  store i32 %65, i32* %arrayidx63, align 4, !tbaa !5
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 0
  %69 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err64, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %69, i32 0, i32 1
  %70 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %72 = bitcast %struct.jpeg_decompress_struct* %71 to %struct.jpeg_common_struct*
  call void %70(%struct.jpeg_common_struct* %72, i32 1) #4
  %73 = load i32, i32* %index, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %73, 0
  br i1 %cmp65, label %if.then.69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.57
  %74 = load i32, i32* %index, align 4, !tbaa !5
  %cmp67 = icmp sge i32 %74, 32
  br i1 %cmp67, label %if.then.69, label %if.end.77

if.then.69:                                       ; preds = %lor.lhs.false, %do.end.57
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8, !tbaa !11
  %msg_code71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i32 0, i32 5
  store i32 29, i32* %msg_code71, align 4, !tbaa !12
  %77 = load i32, i32* %index, align 4, !tbaa !5
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 0
  %79 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8, !tbaa !11
  %msg_parm73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %79, i32 0, i32 6
  %i74 = bitcast %union.anon* %msg_parm73 to [8 x i32]*
  %arrayidx75 = getelementptr inbounds [8 x i32], [8 x i32]* %i74, i32 0, i64 0
  store i32 %77, i32* %arrayidx75, align 4, !tbaa !5
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err76, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 0
  %82 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !42
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %84 = bitcast %struct.jpeg_decompress_struct* %83 to %struct.jpeg_common_struct*
  call void %82(%struct.jpeg_common_struct* %84) #4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.69, %lor.lhs.false
  %85 = load i32, i32* %index, align 4, !tbaa !5
  %cmp78 = icmp sge i32 %85, 16
  br i1 %cmp78, label %if.then.80, label %if.else

if.then.80:                                       ; preds = %if.end.77
  %86 = load i32, i32* %val, align 4, !tbaa !5
  %conv81 = trunc i32 %86 to i8
  %87 = load i32, i32* %index, align 4, !tbaa !5
  %sub82 = sub nsw i32 %87, 16
  %idxprom = sext i32 %sub82 to i64
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_ac_K = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 50
  %arrayidx83 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_ac_K, i32 0, i64 %idxprom
  store i8 %conv81, i8* %arrayidx83, align 1, !tbaa !22
  br label %if.end.110

if.else:                                          ; preds = %if.end.77
  %89 = load i32, i32* %val, align 4, !tbaa !5
  %and = and i32 %89, 15
  %conv84 = trunc i32 %and to i8
  %90 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom85 = sext i32 %90 to i64
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_L = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 48
  %arrayidx86 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L, i32 0, i64 %idxprom85
  store i8 %conv84, i8* %arrayidx86, align 1, !tbaa !22
  %92 = load i32, i32* %val, align 4, !tbaa !5
  %shr = ashr i32 %92, 4
  %conv87 = trunc i32 %shr to i8
  %93 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom88 = sext i32 %93 to i64
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_U = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 49
  %arrayidx89 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U, i32 0, i64 %idxprom88
  store i8 %conv87, i8* %arrayidx89, align 1, !tbaa !22
  %95 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom90 = sext i32 %95 to i64
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_L91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 48
  %arrayidx92 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L91, i32 0, i64 %idxprom90
  %97 = load i8, i8* %arrayidx92, align 1, !tbaa !22
  %conv93 = zext i8 %97 to i32
  %98 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom94 = sext i32 %98 to i64
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_U95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 49
  %arrayidx96 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U95, i32 0, i64 %idxprom94
  %100 = load i8, i8* %arrayidx96, align 1, !tbaa !22
  %conv97 = zext i8 %100 to i32
  %cmp98 = icmp sgt i32 %conv93, %conv97
  br i1 %cmp98, label %if.then.100, label %if.end.109

if.then.100:                                      ; preds = %if.else
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err101, align 8, !tbaa !11
  %msg_code102 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 5
  store i32 30, i32* %msg_code102, align 4, !tbaa !12
  %103 = load i32, i32* %val, align 4, !tbaa !5
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 0
  %105 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err103, align 8, !tbaa !11
  %msg_parm104 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %105, i32 0, i32 6
  %i105 = bitcast %union.anon* %msg_parm104 to [8 x i32]*
  %arrayidx106 = getelementptr inbounds [8 x i32], [8 x i32]* %i105, i32 0, i64 0
  store i32 %103, i32* %arrayidx106, align 4, !tbaa !5
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err107 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 0
  %107 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err107, align 8, !tbaa !11
  %error_exit108 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %107, i32 0, i32 0
  %108 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit108, align 8, !tbaa !42
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %110 = bitcast %struct.jpeg_decompress_struct* %109 to %struct.jpeg_common_struct*
  call void %108(%struct.jpeg_common_struct* %110) #4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.100, %if.else
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.80
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %111 = load i64, i64* %length, align 8, !tbaa !20
  %cmp111 = icmp ne i64 %111, 0
  br i1 %cmp111, label %if.then.113, label %if.end.118

if.then.113:                                      ; preds = %while.end
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err114 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %112, i32 0, i32 0
  %113 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err114, align 8, !tbaa !11
  %msg_code115 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %113, i32 0, i32 5
  store i32 12, i32* %msg_code115, align 4, !tbaa !12
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err116 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 0
  %115 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err116, align 8, !tbaa !11
  %error_exit117 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %115, i32 0, i32 0
  %116 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit117, align 8, !tbaa !42
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %118 = bitcast %struct.jpeg_decompress_struct* %117 to %struct.jpeg_common_struct*
  call void %116(%struct.jpeg_common_struct* %118) #4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.113, %while.end
  %119 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %120 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte119 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %120, i32 0, i32 0
  store i8* %119, i8** %next_input_byte119, align 8, !tbaa !17
  %121 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %122 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer120 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %122, i32 0, i32 1
  store i64 %121, i64* %bytes_in_buffer120, align 8, !tbaa !19
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.118, %if.then.48, %if.then.31, %if.then.14, %if.then.3
  %123 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = load i32, i32* %retval
  ret i32 %129
}

; Function Attrs: nounwind uwtable
define internal i32 @get_dht(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %bits = alloca [17 x i8], align 16
  %huffval = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %count = alloca i32, align 4
  %htblptr = alloca %struct.JHUFF_TBL**, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_mp = alloca i32*, align 8
  %_mp104 = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [17 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 17, i8* %1) #1
  %2 = bitcast [256 x i8]* %huffval to i8*
  call void @llvm.lifetime.start(i64 256, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.JHUFF_TBL*** %htblptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 6
  %9 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !16
  store %struct.jpeg_source_mgr* %9, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %10 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %11, i32 0, i32 0
  %12 = load i8*, i8** %next_input_byte1, align 8, !tbaa !17
  store i8* %12, i8** %next_input_byte, align 8, !tbaa !1
  %13 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %14, i32 0, i32 1
  %15 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !19
  store i64 %15, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %do.body

do.body:                                          ; preds = %entry
  %16 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp = icmp eq i64 %16, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %17 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %17, i32 0, i32 3
  %18 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !21
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %18(%struct.jpeg_decompress_struct* %19) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %20 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %20, i32 0, i32 0
  %21 = load i8*, i8** %next_input_byte4, align 8, !tbaa !17
  store i8* %21, i8** %next_input_byte, align 8, !tbaa !1
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 1
  %23 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !19
  store i64 %23, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %24 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec = add i64 %24, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !20
  %25 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !22
  %conv = zext i8 %26 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8, !tbaa !20
  %27 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp8 = icmp eq i64 %27, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %28 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %28, i32 0, i32 3
  %29 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8, !tbaa !21
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call12 = call i32 %29(%struct.jpeg_decompress_struct* %30) #4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  %31 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %31, i32 0, i32 0
  %32 = load i8*, i8** %next_input_byte16, align 8, !tbaa !17
  store i8* %32, i8** %next_input_byte, align 8, !tbaa !1
  %33 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %33, i32 0, i32 1
  %34 = load i64, i64* %bytes_in_buffer17, align 8, !tbaa !19
  store i64 %34, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %35 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec19 = add i64 %35, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8, !tbaa !20
  %36 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !22
  %conv21 = zext i8 %37 to i64
  %38 = load i64, i64* %length, align 8, !tbaa !20
  %add = add nsw i64 %38, %conv21
  store i64 %add, i64* %length, align 8, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  %39 = load i64, i64* %length, align 8, !tbaa !20
  %sub = sub nsw i64 %39, 2
  store i64 %sub, i64* %length, align 8, !tbaa !20
  br label %while.cond

while.cond:                                       ; preds = %if.end.205, %do.end
  %40 = load i64, i64* %length, align 8, !tbaa !20
  %cmp22 = icmp sgt i64 %40, 16
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.24

do.body.24:                                       ; preds = %while.body
  %41 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp25 = icmp eq i64 %41, 0
  br i1 %cmp25, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %do.body.24
  %42 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer28 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %42, i32 0, i32 3
  %43 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer28, align 8, !tbaa !21
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call29 = call i32 %43(%struct.jpeg_decompress_struct* %44) #4
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.27
  %45 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte33 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %45, i32 0, i32 0
  %46 = load i8*, i8** %next_input_byte33, align 8, !tbaa !17
  store i8* %46, i8** %next_input_byte, align 8, !tbaa !1
  %47 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %47, i32 0, i32 1
  %48 = load i64, i64* %bytes_in_buffer34, align 8, !tbaa !19
  store i64 %48, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %do.body.24
  %49 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec36 = add i64 %49, -1
  store i64 %dec36, i64* %bytes_in_buffer, align 8, !tbaa !20
  %50 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr37, i8** %next_input_byte, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !22
  %conv38 = zext i8 %51 to i32
  store i32 %conv38, i32* %index, align 4, !tbaa !5
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.35
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 5
  store i32 82, i32* %msg_code, align 4, !tbaa !12
  %54 = load i32, i32* %index, align 4, !tbaa !5
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err41, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 6
  %i42 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i42, i32 0, i64 0
  store i32 %54, i32* %arrayidx, align 4, !tbaa !5
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err43, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 1
  %59 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %61 = bitcast %struct.jpeg_decompress_struct* %60 to %struct.jpeg_common_struct*
  call void %59(%struct.jpeg_common_struct* %61, i32 1) #4
  %arrayidx44 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 0
  store i8 0, i8* %arrayidx44, align 1, !tbaa !22
  store i32 0, i32* %count, align 4, !tbaa !5
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.40
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %cmp45 = icmp sle i32 %62, 16
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.47

do.body.47:                                       ; preds = %for.body
  %63 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp48 = icmp eq i64 %63, 0
  br i1 %cmp48, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %do.body.47
  %64 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer51 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %64, i32 0, i32 3
  %65 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer51, align 8, !tbaa !21
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call52 = call i32 %65(%struct.jpeg_decompress_struct* %66) #4
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.then.50
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %if.then.50
  %67 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte56 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %67, i32 0, i32 0
  %68 = load i8*, i8** %next_input_byte56, align 8, !tbaa !17
  store i8* %68, i8** %next_input_byte, align 8, !tbaa !1
  %69 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer57 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %69, i32 0, i32 1
  %70 = load i64, i64* %bytes_in_buffer57, align 8, !tbaa !19
  store i64 %70, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.55, %do.body.47
  %71 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec59 = add i64 %71, -1
  store i64 %dec59, i64* %bytes_in_buffer, align 8, !tbaa !20
  %72 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr60, i8** %next_input_byte, align 8, !tbaa !1
  %73 = load i8, i8* %72, align 1, !tbaa !22
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %74 to i64
  %arrayidx61 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom
  store i8 %73, i8* %arrayidx61, align 1, !tbaa !22
  br label %do.cond.62

do.cond.62:                                       ; preds = %if.end.58
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %75 to i64
  %arrayidx65 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom64
  %76 = load i8, i8* %arrayidx65, align 1, !tbaa !22
  %conv66 = zext i8 %76 to i32
  %77 = load i32, i32* %count, align 4, !tbaa !5
  %add67 = add nsw i32 %77, %conv66
  store i32 %add67, i32* %count, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %do.end.63
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load i64, i64* %length, align 8, !tbaa !20
  %sub68 = sub nsw i64 %79, 17
  store i64 %sub68, i64* %length, align 8, !tbaa !20
  br label %do.body.69

do.body.69:                                       ; preds = %for.end
  %80 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 0
  %82 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8, !tbaa !11
  %msg_parm71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %82, i32 0, i32 6
  %i72 = bitcast %union.anon* %msg_parm71 to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i72, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 1
  %83 = load i8, i8* %arrayidx73, align 1, !tbaa !22
  %conv74 = zext i8 %83 to i32
  %84 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %conv74, i32* %arrayidx75, align 4, !tbaa !5
  %arrayidx76 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 2
  %85 = load i8, i8* %arrayidx76, align 1, !tbaa !22
  %conv77 = zext i8 %85 to i32
  %86 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %conv77, i32* %arrayidx78, align 4, !tbaa !5
  %arrayidx79 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 3
  %87 = load i8, i8* %arrayidx79, align 1, !tbaa !22
  %conv80 = zext i8 %87 to i32
  %88 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i32, i32* %88, i64 2
  store i32 %conv80, i32* %arrayidx81, align 4, !tbaa !5
  %arrayidx82 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 4
  %89 = load i8, i8* %arrayidx82, align 1, !tbaa !22
  %conv83 = zext i8 %89 to i32
  %90 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i32, i32* %90, i64 3
  store i32 %conv83, i32* %arrayidx84, align 4, !tbaa !5
  %arrayidx85 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 5
  %91 = load i8, i8* %arrayidx85, align 1, !tbaa !22
  %conv86 = zext i8 %91 to i32
  %92 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i32, i32* %92, i64 4
  store i32 %conv86, i32* %arrayidx87, align 4, !tbaa !5
  %arrayidx88 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 6
  %93 = load i8, i8* %arrayidx88, align 1, !tbaa !22
  %conv89 = zext i8 %93 to i32
  %94 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i32, i32* %94, i64 5
  store i32 %conv89, i32* %arrayidx90, align 4, !tbaa !5
  %arrayidx91 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 7
  %95 = load i8, i8* %arrayidx91, align 1, !tbaa !22
  %conv92 = zext i8 %95 to i32
  %96 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i32, i32* %96, i64 6
  store i32 %conv92, i32* %arrayidx93, align 4, !tbaa !5
  %arrayidx94 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 8
  %97 = load i8, i8* %arrayidx94, align 1, !tbaa !22
  %conv95 = zext i8 %97 to i32
  %98 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i32, i32* %98, i64 7
  store i32 %conv95, i32* %arrayidx96, align 4, !tbaa !5
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 0
  %100 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err97, align 8, !tbaa !11
  %msg_code98 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %100, i32 0, i32 5
  store i32 88, i32* %msg_code98, align 4, !tbaa !12
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err99 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err99, align 8, !tbaa !11
  %emit_message100 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 1
  %103 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message100, align 8, !tbaa !15
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %105 = bitcast %struct.jpeg_decompress_struct* %104 to %struct.jpeg_common_struct*
  call void %103(%struct.jpeg_common_struct* %105, i32 2) #4
  %106 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  br label %do.cond.101

do.cond.101:                                      ; preds = %do.body.69
  br label %do.end.102

do.end.102:                                       ; preds = %do.cond.101
  br label %do.body.103

do.body.103:                                      ; preds = %do.end.102
  %107 = bitcast i32** %_mp104 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 0
  %109 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err105, align 8, !tbaa !11
  %msg_parm106 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %109, i32 0, i32 6
  %i107 = bitcast %union.anon* %msg_parm106 to [8 x i32]*
  %arraydecay108 = getelementptr inbounds [8 x i32], [8 x i32]* %i107, i32 0, i32 0
  store i32* %arraydecay108, i32** %_mp104, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 9
  %110 = load i8, i8* %arrayidx109, align 1, !tbaa !22
  %conv110 = zext i8 %110 to i32
  %111 = load i32*, i32** %_mp104, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %conv110, i32* %arrayidx111, align 4, !tbaa !5
  %arrayidx112 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 10
  %112 = load i8, i8* %arrayidx112, align 1, !tbaa !22
  %conv113 = zext i8 %112 to i32
  %113 = load i32*, i32** %_mp104, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %conv113, i32* %arrayidx114, align 4, !tbaa !5
  %arrayidx115 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 11
  %114 = load i8, i8* %arrayidx115, align 1, !tbaa !22
  %conv116 = zext i8 %114 to i32
  %115 = load i32*, i32** %_mp104, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i32, i32* %115, i64 2
  store i32 %conv116, i32* %arrayidx117, align 4, !tbaa !5
  %arrayidx118 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 12
  %116 = load i8, i8* %arrayidx118, align 1, !tbaa !22
  %conv119 = zext i8 %116 to i32
  %117 = load i32*, i32** %_mp104, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds i32, i32* %117, i64 3
  store i32 %conv119, i32* %arrayidx120, align 4, !tbaa !5
  %arrayidx121 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 13
  %118 = load i8, i8* %arrayidx121, align 1, !tbaa !22
  %conv122 = zext i8 %118 to i32
  %119 = load i32*, i32** %_mp104, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds i32, i32* %119, i64 4
  store i32 %conv122, i32* %arrayidx123, align 4, !tbaa !5
  %arrayidx124 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 14
  %120 = load i8, i8* %arrayidx124, align 1, !tbaa !22
  %conv125 = zext i8 %120 to i32
  %121 = load i32*, i32** %_mp104, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i32, i32* %121, i64 5
  store i32 %conv125, i32* %arrayidx126, align 4, !tbaa !5
  %arrayidx127 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 15
  %122 = load i8, i8* %arrayidx127, align 1, !tbaa !22
  %conv128 = zext i8 %122 to i32
  %123 = load i32*, i32** %_mp104, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i32, i32* %123, i64 6
  store i32 %conv128, i32* %arrayidx129, align 4, !tbaa !5
  %arrayidx130 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 16
  %124 = load i8, i8* %arrayidx130, align 1, !tbaa !22
  %conv131 = zext i8 %124 to i32
  %125 = load i32*, i32** %_mp104, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %125, i64 7
  store i32 %conv131, i32* %arrayidx132, align 4, !tbaa !5
  %126 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err133 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %126, i32 0, i32 0
  %127 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err133, align 8, !tbaa !11
  %msg_code134 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %127, i32 0, i32 5
  store i32 88, i32* %msg_code134, align 4, !tbaa !12
  %128 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err135 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %128, i32 0, i32 0
  %129 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err135, align 8, !tbaa !11
  %emit_message136 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %129, i32 0, i32 1
  %130 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message136, align 8, !tbaa !15
  %131 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %132 = bitcast %struct.jpeg_decompress_struct* %131 to %struct.jpeg_common_struct*
  call void %130(%struct.jpeg_common_struct* %132, i32 2) #4
  %133 = bitcast i32** %_mp104 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  br label %do.cond.137

do.cond.137:                                      ; preds = %do.body.103
  br label %do.end.138

do.end.138:                                       ; preds = %do.cond.137
  %134 = load i32, i32* %count, align 4, !tbaa !5
  %cmp139 = icmp sgt i32 %134, 256
  br i1 %cmp139, label %if.then.144, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.138
  %135 = load i32, i32* %count, align 4, !tbaa !5
  %conv141 = sext i32 %135 to i64
  %136 = load i64, i64* %length, align 8, !tbaa !20
  %cmp142 = icmp sgt i64 %conv141, %136
  br i1 %cmp142, label %if.then.144, label %if.end.148

if.then.144:                                      ; preds = %lor.lhs.false, %do.end.138
  %137 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err145 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %137, i32 0, i32 0
  %138 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err145, align 8, !tbaa !11
  %msg_code146 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %138, i32 0, i32 5
  store i32 9, i32* %msg_code146, align 4, !tbaa !12
  %139 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err147 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %139, i32 0, i32 0
  %140 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err147, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %140, i32 0, i32 0
  %141 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !42
  %142 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %143 = bitcast %struct.jpeg_decompress_struct* %142 to %struct.jpeg_common_struct*
  call void %141(%struct.jpeg_common_struct* %143) #4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.144, %lor.lhs.false
  %arraydecay149 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i32 0
  %call150 = call i8* @memset(i8* %arraydecay149, i32 0, i64 256) #5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.173, %if.end.148
  %144 = load i32, i32* %i, align 4, !tbaa !5
  %145 = load i32, i32* %count, align 4, !tbaa !5
  %cmp152 = icmp slt i32 %144, %145
  br i1 %cmp152, label %for.body.154, label %for.end.175

for.body.154:                                     ; preds = %for.cond.151
  br label %do.body.155

do.body.155:                                      ; preds = %for.body.154
  %146 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp156 = icmp eq i64 %146, 0
  br i1 %cmp156, label %if.then.158, label %if.end.166

if.then.158:                                      ; preds = %do.body.155
  %147 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer159 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %147, i32 0, i32 3
  %148 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer159, align 8, !tbaa !21
  %149 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call160 = call i32 %148(%struct.jpeg_decompress_struct* %149) #4
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.end.163, label %if.then.162

if.then.162:                                      ; preds = %if.then.158
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.163:                                       ; preds = %if.then.158
  %150 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte164 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %150, i32 0, i32 0
  %151 = load i8*, i8** %next_input_byte164, align 8, !tbaa !17
  store i8* %151, i8** %next_input_byte, align 8, !tbaa !1
  %152 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer165 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %152, i32 0, i32 1
  %153 = load i64, i64* %bytes_in_buffer165, align 8, !tbaa !19
  store i64 %153, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.163, %do.body.155
  %154 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec167 = add i64 %154, -1
  store i64 %dec167, i64* %bytes_in_buffer, align 8, !tbaa !20
  %155 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr168 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %incdec.ptr168, i8** %next_input_byte, align 8, !tbaa !1
  %156 = load i8, i8* %155, align 1, !tbaa !22
  %157 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom169 = sext i32 %157 to i64
  %arrayidx170 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom169
  store i8 %156, i8* %arrayidx170, align 1, !tbaa !22
  br label %do.cond.171

do.cond.171:                                      ; preds = %if.end.166
  br label %do.end.172

do.end.172:                                       ; preds = %do.cond.171
  br label %for.inc.173

for.inc.173:                                      ; preds = %do.end.172
  %158 = load i32, i32* %i, align 4, !tbaa !5
  %inc174 = add nsw i32 %158, 1
  store i32 %inc174, i32* %i, align 4, !tbaa !5
  br label %for.cond.151

for.end.175:                                      ; preds = %for.cond.151
  %159 = load i32, i32* %count, align 4, !tbaa !5
  %conv176 = sext i32 %159 to i64
  %160 = load i64, i64* %length, align 8, !tbaa !20
  %sub177 = sub nsw i64 %160, %conv176
  store i64 %sub177, i64* %length, align 8, !tbaa !20
  %161 = load i32, i32* %index, align 4, !tbaa !5
  %and = and i32 %161, 16
  %tobool178 = icmp ne i32 %and, 0
  br i1 %tobool178, label %if.then.179, label %if.else

if.then.179:                                      ; preds = %for.end.175
  %162 = load i32, i32* %index, align 4, !tbaa !5
  %sub180 = sub nsw i32 %162, 16
  store i32 %sub180, i32* %index, align 4, !tbaa !5
  %163 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom181 = sext i32 %163 to i64
  %164 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %164, i32 0, i32 42
  %arrayidx182 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom181
  store %struct.JHUFF_TBL** %arrayidx182, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !1
  br label %if.end.185

if.else:                                          ; preds = %for.end.175
  %165 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom183 = sext i32 %165 to i64
  %166 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %166, i32 0, i32 41
  %arrayidx184 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom183
  store %struct.JHUFF_TBL** %arrayidx184, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !1
  br label %if.end.185

if.end.185:                                       ; preds = %if.else, %if.then.179
  %167 = load i32, i32* %index, align 4, !tbaa !5
  %cmp186 = icmp slt i32 %167, 0
  br i1 %cmp186, label %if.then.191, label %lor.lhs.false.188

lor.lhs.false.188:                                ; preds = %if.end.185
  %168 = load i32, i32* %index, align 4, !tbaa !5
  %cmp189 = icmp sge i32 %168, 4
  br i1 %cmp189, label %if.then.191, label %if.end.200

if.then.191:                                      ; preds = %lor.lhs.false.188, %if.end.185
  %169 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err192 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %169, i32 0, i32 0
  %170 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err192, align 8, !tbaa !11
  %msg_code193 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %170, i32 0, i32 5
  store i32 31, i32* %msg_code193, align 4, !tbaa !12
  %171 = load i32, i32* %index, align 4, !tbaa !5
  %172 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err194 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %172, i32 0, i32 0
  %173 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err194, align 8, !tbaa !11
  %msg_parm195 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %173, i32 0, i32 6
  %i196 = bitcast %union.anon* %msg_parm195 to [8 x i32]*
  %arrayidx197 = getelementptr inbounds [8 x i32], [8 x i32]* %i196, i32 0, i64 0
  store i32 %171, i32* %arrayidx197, align 4, !tbaa !5
  %174 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err198 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %174, i32 0, i32 0
  %175 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err198, align 8, !tbaa !11
  %error_exit199 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %175, i32 0, i32 0
  %176 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit199, align 8, !tbaa !42
  %177 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %178 = bitcast %struct.jpeg_decompress_struct* %177 to %struct.jpeg_common_struct*
  call void %176(%struct.jpeg_common_struct* %178) #4
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.191, %lor.lhs.false.188
  %179 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !1
  %180 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %179, align 8, !tbaa !1
  %cmp201 = icmp eq %struct.JHUFF_TBL* %180, null
  br i1 %cmp201, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %if.end.200
  %181 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %182 = bitcast %struct.jpeg_decompress_struct* %181 to %struct.jpeg_common_struct*
  %call204 = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %182) #4
  %183 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !1
  store %struct.JHUFF_TBL* %call204, %struct.JHUFF_TBL** %183, align 8, !tbaa !1
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %if.end.200
  %184 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !1
  %185 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %184, align 8, !tbaa !1
  %bits206 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %185, i32 0, i32 0
  %arraydecay207 = getelementptr inbounds [17 x i8], [17 x i8]* %bits206, i32 0, i32 0
  %arraydecay208 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i32 0
  %call209 = call i8* @memcpy(i8* %arraydecay207, i8* %arraydecay208, i64 17) #5
  %186 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !1
  %187 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %186, align 8, !tbaa !1
  %huffval210 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %187, i32 0, i32 1
  %arraydecay211 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval210, i32 0, i32 0
  %arraydecay212 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i32 0
  %call213 = call i8* @memcpy(i8* %arraydecay211, i8* %arraydecay212, i64 256) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %188 = load i64, i64* %length, align 8, !tbaa !20
  %cmp214 = icmp ne i64 %188, 0
  br i1 %cmp214, label %if.then.216, label %if.end.221

if.then.216:                                      ; preds = %while.end
  %189 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err217 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %189, i32 0, i32 0
  %190 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err217, align 8, !tbaa !11
  %msg_code218 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %190, i32 0, i32 5
  store i32 12, i32* %msg_code218, align 4, !tbaa !12
  %191 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err219 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %191, i32 0, i32 0
  %192 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err219, align 8, !tbaa !11
  %error_exit220 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %192, i32 0, i32 0
  %193 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit220, align 8, !tbaa !42
  %194 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %195 = bitcast %struct.jpeg_decompress_struct* %194 to %struct.jpeg_common_struct*
  call void %193(%struct.jpeg_common_struct* %195) #4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.216, %while.end
  %196 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %197 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte222 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %197, i32 0, i32 0
  store i8* %196, i8** %next_input_byte222, align 8, !tbaa !17
  %198 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %199 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer223 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %199, i32 0, i32 1
  store i64 %198, i64* %bytes_in_buffer223, align 8, !tbaa !19
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.221, %if.then.162, %if.then.54, %if.then.31, %if.then.14, %if.then.3
  %200 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast %struct.JHUFF_TBL*** %htblptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast [256 x i8]* %huffval to i8*
  call void @llvm.lifetime.end(i64 256, i8* %207) #1
  %208 = bitcast [17 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 17, i8* %208) #1
  %209 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = load i32, i32* %retval
  ret i32 %210
}

; Function Attrs: nounwind uwtable
define internal i32 @get_dqt(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %n = alloca i32, align 4
  %prec = alloca i32, align 4
  %tmp = alloca i32, align 4
  %quant_ptr = alloca %struct.JQUANT_TBL*, align 8
  %natural_order = alloca i32*, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_mp = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %count to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.JQUANT_TBL** %quant_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 6
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !16
  store %struct.jpeg_source_mgr* %10, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %11 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 0
  %13 = load i8*, i8** %next_input_byte5, align 8, !tbaa !17
  store i8* %13, i8** %next_input_byte, align 8, !tbaa !1
  %14 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer7 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %15, i32 0, i32 1
  %16 = load i64, i64* %bytes_in_buffer7, align 8, !tbaa !19
  store i64 %16, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %do.body

do.body:                                          ; preds = %entry
  %17 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp = icmp eq i64 %17, 0
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %do.body
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 3
  %19 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !21
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %19(%struct.jpeg_decompress_struct* %20) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %21 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte9 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %21, i32 0, i32 0
  %22 = load i8*, i8** %next_input_byte9, align 8, !tbaa !17
  store i8* %22, i8** %next_input_byte, align 8, !tbaa !1
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer10 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 1
  %24 = load i64, i64* %bytes_in_buffer10, align 8, !tbaa !19
  store i64 %24, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %do.body
  %25 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec = add i64 %25, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !20
  %26 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !22
  %conv = zext i8 %27 to i32
  %shl = shl i32 %conv, 8
  %conv12 = zext i32 %shl to i64
  store i64 %conv12, i64* %length, align 8, !tbaa !20
  %28 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp13 = icmp eq i64 %28, 0
  br i1 %cmp13, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %if.end.11
  %29 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %29, i32 0, i32 3
  %30 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer16, align 8, !tbaa !21
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call17 = call i32 %30(%struct.jpeg_decompress_struct* %31) #4
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.then.15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.then.15
  %32 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte21 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %32, i32 0, i32 0
  %33 = load i8*, i8** %next_input_byte21, align 8, !tbaa !17
  store i8* %33, i8** %next_input_byte, align 8, !tbaa !1
  %34 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer22 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %34, i32 0, i32 1
  %35 = load i64, i64* %bytes_in_buffer22, align 8, !tbaa !19
  store i64 %35, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.20, %if.end.11
  %36 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec24 = add i64 %36, -1
  store i64 %dec24, i64* %bytes_in_buffer, align 8, !tbaa !20
  %37 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr25, i8** %next_input_byte, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !22
  %conv26 = zext i8 %38 to i64
  %39 = load i64, i64* %length, align 8, !tbaa !20
  %add = add nsw i64 %39, %conv26
  store i64 %add, i64* %length, align 8, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  br label %do.end

do.end:                                           ; preds = %do.cond
  %40 = load i64, i64* %length, align 8, !tbaa !20
  %sub = sub nsw i64 %40, 2
  store i64 %sub, i64* %length, align 8, !tbaa !20
  br label %while.cond

while.cond:                                       ; preds = %if.end.240, %do.end
  %41 = load i64, i64* %length, align 8, !tbaa !20
  %cmp27 = icmp sgt i64 %41, 0
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load i64, i64* %length, align 8, !tbaa !20
  %dec29 = add nsw i64 %42, -1
  store i64 %dec29, i64* %length, align 8, !tbaa !20
  br label %do.body.30

do.body.30:                                       ; preds = %while.body
  %43 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp31 = icmp eq i64 %43, 0
  br i1 %cmp31, label %if.then.33, label %if.end.41

if.then.33:                                       ; preds = %do.body.30
  %44 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %44, i32 0, i32 3
  %45 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer34, align 8, !tbaa !21
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call35 = call i32 %45(%struct.jpeg_decompress_struct* %46) #4
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.then.33
  %47 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte39 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %47, i32 0, i32 0
  %48 = load i8*, i8** %next_input_byte39, align 8, !tbaa !17
  store i8* %48, i8** %next_input_byte, align 8, !tbaa !1
  %49 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer40 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %49, i32 0, i32 1
  %50 = load i64, i64* %bytes_in_buffer40, align 8, !tbaa !19
  store i64 %50, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.38, %do.body.30
  %51 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec42 = add i64 %51, -1
  store i64 %dec42, i64* %bytes_in_buffer, align 8, !tbaa !20
  %52 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr43, i8** %next_input_byte, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !22
  %conv44 = zext i8 %53 to i32
  store i32 %conv44, i32* %n, align 4, !tbaa !5
  br label %do.cond.45

do.cond.45:                                       ; preds = %if.end.41
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  %54 = load i32, i32* %n, align 4, !tbaa !5
  %shr = ashr i32 %54, 4
  store i32 %shr, i32* %prec, align 4, !tbaa !5
  %55 = load i32, i32* %n, align 4, !tbaa !5
  %and = and i32 %55, 15
  store i32 %and, i32* %n, align 4, !tbaa !5
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 0
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 5
  store i32 83, i32* %msg_code, align 4, !tbaa !12
  %58 = load i32, i32* %n, align 4, !tbaa !5
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err47, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 6
  %i48 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i48, i32 0, i64 0
  store i32 %58, i32* %arrayidx, align 4, !tbaa !5
  %61 = load i32, i32* %prec, align 4, !tbaa !5
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 0
  %63 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err49, align 8, !tbaa !11
  %msg_parm50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %63, i32 0, i32 6
  %i51 = bitcast %union.anon* %msg_parm50 to [8 x i32]*
  %arrayidx52 = getelementptr inbounds [8 x i32], [8 x i32]* %i51, i32 0, i64 1
  store i32 %61, i32* %arrayidx52, align 4, !tbaa !5
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err53, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 1
  %66 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %68 = bitcast %struct.jpeg_decompress_struct* %67 to %struct.jpeg_common_struct*
  call void %66(%struct.jpeg_common_struct* %68, i32 1) #4
  %69 = load i32, i32* %n, align 4, !tbaa !5
  %cmp54 = icmp sge i32 %69, 4
  br i1 %cmp54, label %if.then.56, label %if.end.64

if.then.56:                                       ; preds = %do.end.46
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %70, i32 0, i32 0
  %71 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8, !tbaa !11
  %msg_code58 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %71, i32 0, i32 5
  store i32 32, i32* %msg_code58, align 4, !tbaa !12
  %72 = load i32, i32* %n, align 4, !tbaa !5
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err59, align 8, !tbaa !11
  %msg_parm60 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i32 0, i32 6
  %i61 = bitcast %union.anon* %msg_parm60 to [8 x i32]*
  %arrayidx62 = getelementptr inbounds [8 x i32], [8 x i32]* %i61, i32 0, i64 0
  store i32 %72, i32* %arrayidx62, align 4, !tbaa !5
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err63, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i32 0, i32 0
  %77 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !42
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %79 = bitcast %struct.jpeg_decompress_struct* %78 to %struct.jpeg_common_struct*
  call void %77(%struct.jpeg_common_struct* %79) #4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.56, %do.end.46
  %80 = load i32, i32* %n, align 4, !tbaa !5
  %idxprom = sext i32 %80 to i64
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 40
  %arrayidx65 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %82 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx65, align 8, !tbaa !1
  %cmp66 = icmp eq %struct.JQUANT_TBL* %82, null
  br i1 %cmp66, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %if.end.64
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %84 = bitcast %struct.jpeg_decompress_struct* %83 to %struct.jpeg_common_struct*
  %call69 = call %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* %84) #4
  %85 = load i32, i32* %n, align 4, !tbaa !5
  %idxprom70 = sext i32 %85 to i64
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quant_tbl_ptrs71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %86, i32 0, i32 40
  %arrayidx72 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs71, i32 0, i64 %idxprom70
  store %struct.JQUANT_TBL* %call69, %struct.JQUANT_TBL** %arrayidx72, align 8, !tbaa !1
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %if.end.64
  %87 = load i32, i32* %n, align 4, !tbaa !5
  %idxprom74 = sext i32 %87 to i64
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quant_tbl_ptrs75 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 40
  %arrayidx76 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs75, i32 0, i64 %idxprom74
  %89 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx76, align 8, !tbaa !1
  store %struct.JQUANT_TBL* %89, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !1
  %90 = load i32, i32* %prec, align 4, !tbaa !5
  %tobool77 = icmp ne i32 %90, 0
  br i1 %tobool77, label %if.then.78, label %if.else.87

if.then.78:                                       ; preds = %if.end.73
  %91 = load i64, i64* %length, align 8, !tbaa !20
  %cmp79 = icmp slt i64 %91, 128
  br i1 %cmp79, label %if.then.81, label %if.else

if.then.81:                                       ; preds = %if.then.78
  store i64 0, i64* %i, align 8, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.81
  %92 = load i64, i64* %i, align 8, !tbaa !20
  %cmp82 = icmp slt i64 %92, 64
  br i1 %cmp82, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %93 = load i64, i64* %i, align 8, !tbaa !20
  %94 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !1
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %94, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 %93
  store i16 1, i16* %arrayidx84, align 2, !tbaa !89
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %95 = load i64, i64* %i, align 8, !tbaa !20
  %inc = add nsw i64 %95, 1
  store i64 %inc, i64* %i, align 8, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %96 = load i64, i64* %length, align 8, !tbaa !20
  %shr85 = ashr i64 %96, 1
  store i64 %shr85, i64* %count, align 8, !tbaa !20
  br label %if.end.86

if.else:                                          ; preds = %if.then.78
  store i64 64, i64* %count, align 8, !tbaa !20
  br label %if.end.86

if.end.86:                                        ; preds = %if.else, %for.end
  br label %if.end.102

if.else.87:                                       ; preds = %if.end.73
  %97 = load i64, i64* %length, align 8, !tbaa !20
  %cmp88 = icmp slt i64 %97, 64
  br i1 %cmp88, label %if.then.90, label %if.else.100

if.then.90:                                       ; preds = %if.else.87
  store i64 0, i64* %i, align 8, !tbaa !20
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.97, %if.then.90
  %98 = load i64, i64* %i, align 8, !tbaa !20
  %cmp92 = icmp slt i64 %98, 64
  br i1 %cmp92, label %for.body.94, label %for.end.99

for.body.94:                                      ; preds = %for.cond.91
  %99 = load i64, i64* %i, align 8, !tbaa !20
  %100 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !1
  %quantval95 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %100, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval95, i32 0, i64 %99
  store i16 1, i16* %arrayidx96, align 2, !tbaa !89
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.94
  %101 = load i64, i64* %i, align 8, !tbaa !20
  %inc98 = add nsw i64 %101, 1
  store i64 %inc98, i64* %i, align 8, !tbaa !20
  br label %for.cond.91

for.end.99:                                       ; preds = %for.cond.91
  %102 = load i64, i64* %length, align 8, !tbaa !20
  store i64 %102, i64* %count, align 8, !tbaa !20
  br label %if.end.101

if.else.100:                                      ; preds = %if.else.87
  store i64 64, i64* %count, align 8, !tbaa !20
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.100, %for.end.99
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.86
  %103 = load i64, i64* %count, align 8, !tbaa !20
  switch i64 %103, label %sw.default [
    i64 4, label %sw.bb
    i64 9, label %sw.bb.103
    i64 16, label %sw.bb.104
    i64 25, label %sw.bb.105
    i64 36, label %sw.bb.106
    i64 49, label %sw.bb.107
  ]

sw.bb:                                            ; preds = %if.end.102
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order2, i32 0, i32 0), i32** %natural_order, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.103:                                        ; preds = %if.end.102
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order3, i32 0, i32 0), i32** %natural_order, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.104:                                        ; preds = %if.end.102
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order4, i32 0, i32 0), i32** %natural_order, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.105:                                        ; preds = %if.end.102
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order5, i32 0, i32 0), i32** %natural_order, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.106:                                        ; preds = %if.end.102
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order6, i32 0, i32 0), i32** %natural_order, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.107:                                        ; preds = %if.end.102
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order7, i32 0, i32 0), i32** %natural_order, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.102
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i32 0), i32** %natural_order, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.107, %sw.bb.106, %sw.bb.105, %sw.bb.104, %sw.bb.103, %sw.bb
  store i64 0, i64* %i, align 8, !tbaa !20
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.171, %sw.epilog
  %104 = load i64, i64* %i, align 8, !tbaa !20
  %105 = load i64, i64* %count, align 8, !tbaa !20
  %cmp109 = icmp slt i64 %104, %105
  br i1 %cmp109, label %for.body.111, label %for.end.173

for.body.111:                                     ; preds = %for.cond.108
  %106 = load i32, i32* %prec, align 4, !tbaa !5
  %tobool112 = icmp ne i32 %106, 0
  br i1 %tobool112, label %if.then.113, label %if.else.147

if.then.113:                                      ; preds = %for.body.111
  br label %do.body.114

do.body.114:                                      ; preds = %if.then.113
  %107 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp115 = icmp eq i64 %107, 0
  br i1 %cmp115, label %if.then.117, label %if.end.125

if.then.117:                                      ; preds = %do.body.114
  %108 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer118 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %108, i32 0, i32 3
  %109 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer118, align 8, !tbaa !21
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call119 = call i32 %109(%struct.jpeg_decompress_struct* %110) #4
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %if.then.117
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.122:                                       ; preds = %if.then.117
  %111 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte123 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %111, i32 0, i32 0
  %112 = load i8*, i8** %next_input_byte123, align 8, !tbaa !17
  store i8* %112, i8** %next_input_byte, align 8, !tbaa !1
  %113 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer124 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %113, i32 0, i32 1
  %114 = load i64, i64* %bytes_in_buffer124, align 8, !tbaa !19
  store i64 %114, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.122, %do.body.114
  %115 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec126 = add i64 %115, -1
  store i64 %dec126, i64* %bytes_in_buffer, align 8, !tbaa !20
  %116 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr127 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr127, i8** %next_input_byte, align 8, !tbaa !1
  %117 = load i8, i8* %116, align 1, !tbaa !22
  %conv128 = zext i8 %117 to i32
  %shl129 = shl i32 %conv128, 8
  store i32 %shl129, i32* %tmp, align 4, !tbaa !5
  %118 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp130 = icmp eq i64 %118, 0
  br i1 %cmp130, label %if.then.132, label %if.end.140

if.then.132:                                      ; preds = %if.end.125
  %119 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer133 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %119, i32 0, i32 3
  %120 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer133, align 8, !tbaa !21
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call134 = call i32 %120(%struct.jpeg_decompress_struct* %121) #4
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.end.137, label %if.then.136

if.then.136:                                      ; preds = %if.then.132
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.137:                                       ; preds = %if.then.132
  %122 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte138 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %122, i32 0, i32 0
  %123 = load i8*, i8** %next_input_byte138, align 8, !tbaa !17
  store i8* %123, i8** %next_input_byte, align 8, !tbaa !1
  %124 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer139 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %124, i32 0, i32 1
  %125 = load i64, i64* %bytes_in_buffer139, align 8, !tbaa !19
  store i64 %125, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.137, %if.end.125
  %126 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec141 = add i64 %126, -1
  store i64 %dec141, i64* %bytes_in_buffer, align 8, !tbaa !20
  %127 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr142 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr142, i8** %next_input_byte, align 8, !tbaa !1
  %128 = load i8, i8* %127, align 1, !tbaa !22
  %conv143 = zext i8 %128 to i32
  %129 = load i32, i32* %tmp, align 4, !tbaa !5
  %add144 = add i32 %129, %conv143
  store i32 %add144, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.145

do.cond.145:                                      ; preds = %if.end.140
  br label %do.end.146

do.end.146:                                       ; preds = %do.cond.145
  br label %if.end.165

if.else.147:                                      ; preds = %for.body.111
  br label %do.body.148

do.body.148:                                      ; preds = %if.else.147
  %130 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp149 = icmp eq i64 %130, 0
  br i1 %cmp149, label %if.then.151, label %if.end.159

if.then.151:                                      ; preds = %do.body.148
  %131 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer152 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %131, i32 0, i32 3
  %132 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer152, align 8, !tbaa !21
  %133 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call153 = call i32 %132(%struct.jpeg_decompress_struct* %133) #4
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.end.156, label %if.then.155

if.then.155:                                      ; preds = %if.then.151
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.156:                                       ; preds = %if.then.151
  %134 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte157 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %134, i32 0, i32 0
  %135 = load i8*, i8** %next_input_byte157, align 8, !tbaa !17
  store i8* %135, i8** %next_input_byte, align 8, !tbaa !1
  %136 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer158 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %136, i32 0, i32 1
  %137 = load i64, i64* %bytes_in_buffer158, align 8, !tbaa !19
  store i64 %137, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.156, %do.body.148
  %138 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec160 = add i64 %138, -1
  store i64 %dec160, i64* %bytes_in_buffer, align 8, !tbaa !20
  %139 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr161 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr161, i8** %next_input_byte, align 8, !tbaa !1
  %140 = load i8, i8* %139, align 1, !tbaa !22
  %conv162 = zext i8 %140 to i32
  store i32 %conv162, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.163

do.cond.163:                                      ; preds = %if.end.159
  br label %do.end.164

do.end.164:                                       ; preds = %do.cond.163
  br label %if.end.165

if.end.165:                                       ; preds = %do.end.164, %do.end.146
  %141 = load i32, i32* %tmp, align 4, !tbaa !5
  %conv166 = trunc i32 %141 to i16
  %142 = load i64, i64* %i, align 8, !tbaa !20
  %143 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i32, i32* %143, i64 %142
  %144 = load i32, i32* %arrayidx167, align 4, !tbaa !5
  %idxprom168 = sext i32 %144 to i64
  %145 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !1
  %quantval169 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %145, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval169, i32 0, i64 %idxprom168
  store i16 %conv166, i16* %arrayidx170, align 2, !tbaa !89
  br label %for.inc.171

for.inc.171:                                      ; preds = %if.end.165
  %146 = load i64, i64* %i, align 8, !tbaa !20
  %inc172 = add nsw i64 %146, 1
  store i64 %inc172, i64* %i, align 8, !tbaa !20
  br label %for.cond.108

for.end.173:                                      ; preds = %for.cond.108
  %147 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err174 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %147, i32 0, i32 0
  %148 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err174, align 8, !tbaa !11
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %148, i32 0, i32 7
  %149 = load i32, i32* %trace_level, align 4, !tbaa !90
  %cmp175 = icmp sge i32 %149, 2
  br i1 %cmp175, label %if.then.177, label %if.end.235

if.then.177:                                      ; preds = %for.end.173
  store i64 0, i64* %i, align 8, !tbaa !20
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.232, %if.then.177
  %150 = load i64, i64* %i, align 8, !tbaa !20
  %cmp179 = icmp slt i64 %150, 64
  br i1 %cmp179, label %for.body.181, label %for.end.234

for.body.181:                                     ; preds = %for.cond.178
  br label %do.body.182

do.body.182:                                      ; preds = %for.body.181
  %151 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %151) #1
  %152 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err184 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %152, i32 0, i32 0
  %153 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err184, align 8, !tbaa !11
  %msg_parm185 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %153, i32 0, i32 6
  %i186 = bitcast %union.anon* %msg_parm185 to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i186, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8, !tbaa !1
  %154 = load i64, i64* %i, align 8, !tbaa !20
  %155 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !1
  %quantval187 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %155, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval187, i32 0, i64 %154
  %156 = load i16, i16* %arrayidx188, align 2, !tbaa !89
  %conv189 = zext i16 %156 to i32
  %157 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds i32, i32* %157, i64 0
  store i32 %conv189, i32* %arrayidx190, align 4, !tbaa !5
  %158 = load i64, i64* %i, align 8, !tbaa !20
  %add191 = add nsw i64 %158, 1
  %159 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !1
  %quantval192 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %159, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval192, i32 0, i64 %add191
  %160 = load i16, i16* %arrayidx193, align 2, !tbaa !89
  %conv194 = zext i16 %160 to i32
  %161 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 %conv194, i32* %arrayidx195, align 4, !tbaa !5
  %162 = load i64, i64* %i, align 8, !tbaa !20
  %add196 = add nsw i64 %162, 2
  %163 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !1
  %quantval197 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %163, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval197, i32 0, i64 %add196
  %164 = load i16, i16* %arrayidx198, align 2, !tbaa !89
  %conv199 = zext i16 %164 to i32
  %165 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i32, i32* %165, i64 2
  store i32 %conv199, i32* %arrayidx200, align 4, !tbaa !5
  %166 = load i64, i64* %i, align 8, !tbaa !20
  %add201 = add nsw i64 %166, 3
  %167 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !1
  %quantval202 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %167, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval202, i32 0, i64 %add201
  %168 = load i16, i16* %arrayidx203, align 2, !tbaa !89
  %conv204 = zext i16 %168 to i32
  %169 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i32, i32* %169, i64 3
  store i32 %conv204, i32* %arrayidx205, align 4, !tbaa !5
  %170 = load i64, i64* %i, align 8, !tbaa !20
  %add206 = add nsw i64 %170, 4
  %171 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !1
  %quantval207 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %171, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval207, i32 0, i64 %add206
  %172 = load i16, i16* %arrayidx208, align 2, !tbaa !89
  %conv209 = zext i16 %172 to i32
  %173 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds i32, i32* %173, i64 4
  store i32 %conv209, i32* %arrayidx210, align 4, !tbaa !5
  %174 = load i64, i64* %i, align 8, !tbaa !20
  %add211 = add nsw i64 %174, 5
  %175 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !1
  %quantval212 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %175, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval212, i32 0, i64 %add211
  %176 = load i16, i16* %arrayidx213, align 2, !tbaa !89
  %conv214 = zext i16 %176 to i32
  %177 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds i32, i32* %177, i64 5
  store i32 %conv214, i32* %arrayidx215, align 4, !tbaa !5
  %178 = load i64, i64* %i, align 8, !tbaa !20
  %add216 = add nsw i64 %178, 6
  %179 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !1
  %quantval217 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %179, i32 0, i32 0
  %arrayidx218 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval217, i32 0, i64 %add216
  %180 = load i16, i16* %arrayidx218, align 2, !tbaa !89
  %conv219 = zext i16 %180 to i32
  %181 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds i32, i32* %181, i64 6
  store i32 %conv219, i32* %arrayidx220, align 4, !tbaa !5
  %182 = load i64, i64* %i, align 8, !tbaa !20
  %add221 = add nsw i64 %182, 7
  %183 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !1
  %quantval222 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %183, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval222, i32 0, i64 %add221
  %184 = load i16, i16* %arrayidx223, align 2, !tbaa !89
  %conv224 = zext i16 %184 to i32
  %185 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx225 = getelementptr inbounds i32, i32* %185, i64 7
  store i32 %conv224, i32* %arrayidx225, align 4, !tbaa !5
  %186 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err226 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %186, i32 0, i32 0
  %187 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err226, align 8, !tbaa !11
  %msg_code227 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %187, i32 0, i32 5
  store i32 95, i32* %msg_code227, align 4, !tbaa !12
  %188 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err228 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %188, i32 0, i32 0
  %189 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err228, align 8, !tbaa !11
  %emit_message229 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %189, i32 0, i32 1
  %190 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message229, align 8, !tbaa !15
  %191 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %192 = bitcast %struct.jpeg_decompress_struct* %191 to %struct.jpeg_common_struct*
  call void %190(%struct.jpeg_common_struct* %192, i32 2) #4
  %193 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  br label %do.cond.230

do.cond.230:                                      ; preds = %do.body.182
  br label %do.end.231

do.end.231:                                       ; preds = %do.cond.230
  br label %for.inc.232

for.inc.232:                                      ; preds = %do.end.231
  %194 = load i64, i64* %i, align 8, !tbaa !20
  %add233 = add nsw i64 %194, 8
  store i64 %add233, i64* %i, align 8, !tbaa !20
  br label %for.cond.178

for.end.234:                                      ; preds = %for.cond.178
  br label %if.end.235

if.end.235:                                       ; preds = %for.end.234, %for.end.173
  %195 = load i64, i64* %count, align 8, !tbaa !20
  %196 = load i64, i64* %length, align 8, !tbaa !20
  %sub236 = sub nsw i64 %196, %195
  store i64 %sub236, i64* %length, align 8, !tbaa !20
  %197 = load i32, i32* %prec, align 4, !tbaa !5
  %tobool237 = icmp ne i32 %197, 0
  br i1 %tobool237, label %if.then.238, label %if.end.240

if.then.238:                                      ; preds = %if.end.235
  %198 = load i64, i64* %count, align 8, !tbaa !20
  %199 = load i64, i64* %length, align 8, !tbaa !20
  %sub239 = sub nsw i64 %199, %198
  store i64 %sub239, i64* %length, align 8, !tbaa !20
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.238, %if.end.235
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %200 = load i64, i64* %length, align 8, !tbaa !20
  %cmp241 = icmp ne i64 %200, 0
  br i1 %cmp241, label %if.then.243, label %if.end.248

if.then.243:                                      ; preds = %while.end
  %201 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err244 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %201, i32 0, i32 0
  %202 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err244, align 8, !tbaa !11
  %msg_code245 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %202, i32 0, i32 5
  store i32 12, i32* %msg_code245, align 4, !tbaa !12
  %203 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err246 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %203, i32 0, i32 0
  %204 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err246, align 8, !tbaa !11
  %error_exit247 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %204, i32 0, i32 0
  %205 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit247, align 8, !tbaa !42
  %206 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %207 = bitcast %struct.jpeg_decompress_struct* %206 to %struct.jpeg_common_struct*
  call void %205(%struct.jpeg_common_struct* %207) #4
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.243, %while.end
  %208 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %209 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte249 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %209, i32 0, i32 0
  store i8* %208, i8** %next_input_byte249, align 8, !tbaa !17
  %210 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %211 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer250 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %211, i32 0, i32 1
  store i64 %210, i64* %bytes_in_buffer250, align 8, !tbaa !19
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.248, %if.then.155, %if.then.136, %if.then.121, %if.then.37, %if.then.19, %if.then.8
  %212 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  %213 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast %struct.JQUANT_TBL** %quant_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  %217 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  %221 = bitcast i64* %count to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = load i32, i32* %retval
  ret i32 %223
}

; Function Attrs: nounwind uwtable
define internal i32 @get_dri(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %tmp = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 6
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !16
  store %struct.jpeg_source_mgr* %4, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %5 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte3 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %6, i32 0, i32 0
  %7 = load i8*, i8** %next_input_byte3, align 8, !tbaa !17
  store i8* %7, i8** %next_input_byte, align 8, !tbaa !1
  %8 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %9, i32 0, i32 1
  %10 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !19
  store i64 %10, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %do.body

do.body:                                          ; preds = %entry
  %11 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp = icmp eq i64 %11, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %do.body
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 3
  %13 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !21
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %13(%struct.jpeg_decompress_struct* %14) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte7 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %15, i32 0, i32 0
  %16 = load i8*, i8** %next_input_byte7, align 8, !tbaa !17
  store i8* %16, i8** %next_input_byte, align 8, !tbaa !1
  %17 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer8 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %17, i32 0, i32 1
  %18 = load i64, i64* %bytes_in_buffer8, align 8, !tbaa !19
  store i64 %18, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %do.body
  %19 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec = add i64 %19, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !20
  %20 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !22
  %conv = zext i8 %21 to i32
  %shl = shl i32 %conv, 8
  %conv10 = zext i32 %shl to i64
  store i64 %conv10, i64* %length, align 8, !tbaa !20
  %22 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp11 = icmp eq i64 %22, 0
  br i1 %cmp11, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.end.9
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer14 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 3
  %24 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer14, align 8, !tbaa !21
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call15 = call i32 %24(%struct.jpeg_decompress_struct* %25) #4
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.then.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.then.13
  %26 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte19 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %26, i32 0, i32 0
  %27 = load i8*, i8** %next_input_byte19, align 8, !tbaa !17
  store i8* %27, i8** %next_input_byte, align 8, !tbaa !1
  %28 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer20 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %28, i32 0, i32 1
  %29 = load i64, i64* %bytes_in_buffer20, align 8, !tbaa !19
  store i64 %29, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.18, %if.end.9
  %30 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec22 = add i64 %30, -1
  store i64 %dec22, i64* %bytes_in_buffer, align 8, !tbaa !20
  %31 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr23 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr23, i8** %next_input_byte, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !22
  %conv24 = zext i8 %32 to i64
  %33 = load i64, i64* %length, align 8, !tbaa !20
  %add = add nsw i64 %33, %conv24
  store i64 %add, i64* %length, align 8, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %if.end.21
  br label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load i64, i64* %length, align 8, !tbaa !20
  %cmp25 = icmp ne i64 %34, 4
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.end
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 5
  store i32 12, i32* %msg_code, align 4, !tbaa !12
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err28, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !42
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %41 = bitcast %struct.jpeg_decompress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* %41) #4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %do.end
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.29
  %42 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp31 = icmp eq i64 %42, 0
  br i1 %cmp31, label %if.then.33, label %if.end.41

if.then.33:                                       ; preds = %do.body.30
  %43 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %43, i32 0, i32 3
  %44 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer34, align 8, !tbaa !21
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call35 = call i32 %44(%struct.jpeg_decompress_struct* %45) #4
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.then.33
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte39 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 0
  %47 = load i8*, i8** %next_input_byte39, align 8, !tbaa !17
  store i8* %47, i8** %next_input_byte, align 8, !tbaa !1
  %48 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer40 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %48, i32 0, i32 1
  %49 = load i64, i64* %bytes_in_buffer40, align 8, !tbaa !19
  store i64 %49, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.38, %do.body.30
  %50 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec42 = add i64 %50, -1
  store i64 %dec42, i64* %bytes_in_buffer, align 8, !tbaa !20
  %51 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr43, i8** %next_input_byte, align 8, !tbaa !1
  %52 = load i8, i8* %51, align 1, !tbaa !22
  %conv44 = zext i8 %52 to i32
  %shl45 = shl i32 %conv44, 8
  store i32 %shl45, i32* %tmp, align 4, !tbaa !5
  %53 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp46 = icmp eq i64 %53, 0
  br i1 %cmp46, label %if.then.48, label %if.end.56

if.then.48:                                       ; preds = %if.end.41
  %54 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer49 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %54, i32 0, i32 3
  %55 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer49, align 8, !tbaa !21
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call50 = call i32 %55(%struct.jpeg_decompress_struct* %56) #4
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.then.48
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.48
  %57 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte54 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %57, i32 0, i32 0
  %58 = load i8*, i8** %next_input_byte54, align 8, !tbaa !17
  store i8* %58, i8** %next_input_byte, align 8, !tbaa !1
  %59 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer55 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %59, i32 0, i32 1
  %60 = load i64, i64* %bytes_in_buffer55, align 8, !tbaa !19
  store i64 %60, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.53, %if.end.41
  %61 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec57 = add i64 %61, -1
  store i64 %dec57, i64* %bytes_in_buffer, align 8, !tbaa !20
  %62 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr58 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr58, i8** %next_input_byte, align 8, !tbaa !1
  %63 = load i8, i8* %62, align 1, !tbaa !22
  %conv59 = zext i8 %63 to i32
  %64 = load i32, i32* %tmp, align 4, !tbaa !5
  %add60 = add i32 %64, %conv59
  store i32 %add60, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.61

do.cond.61:                                       ; preds = %if.end.56
  br label %do.end.62

do.end.62:                                        ; preds = %do.cond.61
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err63, align 8, !tbaa !11
  %msg_code64 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 5
  store i32 84, i32* %msg_code64, align 4, !tbaa !12
  %67 = load i32, i32* %tmp, align 4, !tbaa !5
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 0
  %69 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err65, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %69, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %67, i32* %arrayidx, align 4, !tbaa !5
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %70, i32 0, i32 0
  %71 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err66, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %71, i32 0, i32 1
  %72 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %74 = bitcast %struct.jpeg_decompress_struct* %73 to %struct.jpeg_common_struct*
  call void %72(%struct.jpeg_common_struct* %74, i32 1) #4
  %75 = load i32, i32* %tmp, align 4, !tbaa !5
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 51
  store i32 %75, i32* %restart_interval, align 4, !tbaa !56
  %77 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %78 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte67 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %78, i32 0, i32 0
  store i8* %77, i8** %next_input_byte67, align 8, !tbaa !17
  %79 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %80 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer68 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %80, i32 0, i32 1
  store i64 %79, i64* %bytes_in_buffer68, align 8, !tbaa !19
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.62, %if.then.52, %if.then.37, %if.then.17, %if.then.6
  %81 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal i32 @get_lse(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cid = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 6
  %5 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !16
  store %struct.jpeg_source_mgr* %5, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %6 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 0
  %8 = load i8*, i8** %next_input_byte4, align 8, !tbaa !17
  store i8* %8, i8** %next_input_byte, align 8, !tbaa !1
  %9 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer6 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 1
  %11 = load i64, i64* %bytes_in_buffer6, align 8, !tbaa !19
  store i64 %11, i64* %bytes_in_buffer, align 8, !tbaa !20
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 88
  %13 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !23
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %13, i32 0, i32 4
  %14 = load i32, i32* %saw_SOF, align 4, !tbaa !75
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 60, i32* %msg_code, align 4, !tbaa !12
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 6
  %s = bitcast %union.anon* %msg_parm to [80 x i8]*
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %s, i32 0, i32 0
  %call = call i8* @strncpy(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 80) #5
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !42
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %23 = bitcast %struct.jpeg_decompress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 9
  %25 = load i32, i32* %num_components, align 4, !tbaa !74
  %cmp = icmp slt i32 %25, 3
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  br label %bad

if.end.10:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %26 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp11 = icmp eq i64 %26, 0
  br i1 %cmp11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %do.body
  %27 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %27, i32 0, i32 3
  %28 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !21
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call13 = call i32 %28(%struct.jpeg_decompress_struct* %29) #4
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.12
  %30 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %30, i32 0, i32 0
  %31 = load i8*, i8** %next_input_byte17, align 8, !tbaa !17
  store i8* %31, i8** %next_input_byte, align 8, !tbaa !1
  %32 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer18 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %32, i32 0, i32 1
  %33 = load i64, i64* %bytes_in_buffer18, align 8, !tbaa !19
  store i64 %33, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.16, %do.body
  %34 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec = add i64 %34, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !20
  %35 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !22
  %conv = zext i8 %36 to i32
  %shl = shl i32 %conv, 8
  %conv20 = zext i32 %shl to i64
  store i64 %conv20, i64* %length, align 8, !tbaa !20
  %37 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp21 = icmp eq i64 %37, 0
  br i1 %cmp21, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %if.end.19
  %38 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer24 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %38, i32 0, i32 3
  %39 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer24, align 8, !tbaa !21
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call25 = call i32 %39(%struct.jpeg_decompress_struct* %40) #4
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.23
  %41 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte29 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %41, i32 0, i32 0
  %42 = load i8*, i8** %next_input_byte29, align 8, !tbaa !17
  store i8* %42, i8** %next_input_byte, align 8, !tbaa !1
  %43 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer30 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %43, i32 0, i32 1
  %44 = load i64, i64* %bytes_in_buffer30, align 8, !tbaa !19
  store i64 %44, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.28, %if.end.19
  %45 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec32 = add i64 %45, -1
  store i64 %dec32, i64* %bytes_in_buffer, align 8, !tbaa !20
  %46 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr33, i8** %next_input_byte, align 8, !tbaa !1
  %47 = load i8, i8* %46, align 1, !tbaa !22
  %conv34 = zext i8 %47 to i64
  %48 = load i64, i64* %length, align 8, !tbaa !20
  %add = add nsw i64 %48, %conv34
  store i64 %add, i64* %length, align 8, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %if.end.31
  br label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load i64, i64* %length, align 8, !tbaa !20
  %cmp35 = icmp ne i64 %49, 24
  br i1 %cmp35, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %do.end
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err38, align 8, !tbaa !11
  %msg_code39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 5
  store i32 12, i32* %msg_code39, align 4, !tbaa !12
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err40, align 8, !tbaa !11
  %error_exit41 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 0
  %54 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit41, align 8, !tbaa !42
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %56 = bitcast %struct.jpeg_decompress_struct* %55 to %struct.jpeg_common_struct*
  call void %54(%struct.jpeg_common_struct* %56) #4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %do.end
  br label %do.body.43

do.body.43:                                       ; preds = %if.end.42
  %57 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp44 = icmp eq i64 %57, 0
  br i1 %cmp44, label %if.then.46, label %if.end.54

if.then.46:                                       ; preds = %do.body.43
  %58 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer47 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %58, i32 0, i32 3
  %59 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer47, align 8, !tbaa !21
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call48 = call i32 %59(%struct.jpeg_decompress_struct* %60) #4
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %if.then.46
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.then.46
  %61 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte52 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %61, i32 0, i32 0
  %62 = load i8*, i8** %next_input_byte52, align 8, !tbaa !17
  store i8* %62, i8** %next_input_byte, align 8, !tbaa !1
  %63 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer53 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %63, i32 0, i32 1
  %64 = load i64, i64* %bytes_in_buffer53, align 8, !tbaa !19
  store i64 %64, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.51, %do.body.43
  %65 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec55 = add i64 %65, -1
  store i64 %dec55, i64* %bytes_in_buffer, align 8, !tbaa !20
  %66 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr56 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr56, i8** %next_input_byte, align 8, !tbaa !1
  %67 = load i8, i8* %66, align 1, !tbaa !22
  %conv57 = zext i8 %67 to i32
  store i32 %conv57, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.58

do.cond.58:                                       ; preds = %if.end.54
  br label %do.end.59

do.end.59:                                        ; preds = %do.cond.58
  %68 = load i32, i32* %tmp, align 4, !tbaa !5
  %cmp60 = icmp ne i32 %68, 13
  br i1 %cmp60, label %if.then.62, label %if.end.69

if.then.62:                                       ; preds = %do.end.59
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err63, align 8, !tbaa !11
  %msg_code64 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 5
  store i32 70, i32* %msg_code64, align 4, !tbaa !12
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 82
  %72 = load i32, i32* %unread_marker, align 4, !tbaa !7
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err65, align 8, !tbaa !11
  %msg_parm66 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm66 to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %72, i32* %arrayidx, align 4, !tbaa !5
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err67, align 8, !tbaa !11
  %error_exit68 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i32 0, i32 0
  %77 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit68, align 8, !tbaa !42
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %79 = bitcast %struct.jpeg_decompress_struct* %78 to %struct.jpeg_common_struct*
  call void %77(%struct.jpeg_common_struct* %79) #4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.62, %do.end.59
  br label %do.body.70

do.body.70:                                       ; preds = %if.end.69
  %80 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp71 = icmp eq i64 %80, 0
  br i1 %cmp71, label %if.then.73, label %if.end.81

if.then.73:                                       ; preds = %do.body.70
  %81 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer74 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %81, i32 0, i32 3
  %82 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer74, align 8, !tbaa !21
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call75 = call i32 %82(%struct.jpeg_decompress_struct* %83) #4
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %if.then.73
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %if.then.73
  %84 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte79 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %84, i32 0, i32 0
  %85 = load i8*, i8** %next_input_byte79, align 8, !tbaa !17
  store i8* %85, i8** %next_input_byte, align 8, !tbaa !1
  %86 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer80 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %86, i32 0, i32 1
  %87 = load i64, i64* %bytes_in_buffer80, align 8, !tbaa !19
  store i64 %87, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.78, %do.body.70
  %88 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec82 = add i64 %88, -1
  store i64 %dec82, i64* %bytes_in_buffer, align 8, !tbaa !20
  %89 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr83 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr83, i8** %next_input_byte, align 8, !tbaa !1
  %90 = load i8, i8* %89, align 1, !tbaa !22
  %conv84 = zext i8 %90 to i32
  %shl85 = shl i32 %conv84, 8
  store i32 %shl85, i32* %tmp, align 4, !tbaa !5
  %91 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp86 = icmp eq i64 %91, 0
  br i1 %cmp86, label %if.then.88, label %if.end.96

if.then.88:                                       ; preds = %if.end.81
  %92 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer89 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %92, i32 0, i32 3
  %93 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer89, align 8, !tbaa !21
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call90 = call i32 %93(%struct.jpeg_decompress_struct* %94) #4
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.end.93, label %if.then.92

if.then.92:                                       ; preds = %if.then.88
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.93:                                        ; preds = %if.then.88
  %95 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte94 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %95, i32 0, i32 0
  %96 = load i8*, i8** %next_input_byte94, align 8, !tbaa !17
  store i8* %96, i8** %next_input_byte, align 8, !tbaa !1
  %97 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer95 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %97, i32 0, i32 1
  %98 = load i64, i64* %bytes_in_buffer95, align 8, !tbaa !19
  store i64 %98, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.93, %if.end.81
  %99 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec97 = add i64 %99, -1
  store i64 %dec97, i64* %bytes_in_buffer, align 8, !tbaa !20
  %100 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr98, i8** %next_input_byte, align 8, !tbaa !1
  %101 = load i8, i8* %100, align 1, !tbaa !22
  %conv99 = zext i8 %101 to i32
  %102 = load i32, i32* %tmp, align 4, !tbaa !5
  %add100 = add i32 %102, %conv99
  store i32 %add100, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.101

do.cond.101:                                      ; preds = %if.end.96
  br label %do.end.102

do.end.102:                                       ; preds = %do.cond.101
  %103 = load i32, i32* %tmp, align 4, !tbaa !5
  %cmp103 = icmp ne i32 %103, 255
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %do.end.102
  br label %bad

if.end.106:                                       ; preds = %do.end.102
  br label %do.body.107

do.body.107:                                      ; preds = %if.end.106
  %104 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp108 = icmp eq i64 %104, 0
  br i1 %cmp108, label %if.then.110, label %if.end.118

if.then.110:                                      ; preds = %do.body.107
  %105 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer111 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %105, i32 0, i32 3
  %106 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer111, align 8, !tbaa !21
  %107 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call112 = call i32 %106(%struct.jpeg_decompress_struct* %107) #4
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %if.then.110
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.115:                                       ; preds = %if.then.110
  %108 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte116 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %108, i32 0, i32 0
  %109 = load i8*, i8** %next_input_byte116, align 8, !tbaa !17
  store i8* %109, i8** %next_input_byte, align 8, !tbaa !1
  %110 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer117 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %110, i32 0, i32 1
  %111 = load i64, i64* %bytes_in_buffer117, align 8, !tbaa !19
  store i64 %111, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.115, %do.body.107
  %112 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec119 = add i64 %112, -1
  store i64 %dec119, i64* %bytes_in_buffer, align 8, !tbaa !20
  %113 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr120 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr120, i8** %next_input_byte, align 8, !tbaa !1
  %114 = load i8, i8* %113, align 1, !tbaa !22
  %conv121 = zext i8 %114 to i32
  store i32 %conv121, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.122

do.cond.122:                                      ; preds = %if.end.118
  br label %do.end.123

do.end.123:                                       ; preds = %do.cond.122
  %115 = load i32, i32* %tmp, align 4, !tbaa !5
  %cmp124 = icmp ne i32 %115, 3
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %do.end.123
  br label %bad

if.end.127:                                       ; preds = %do.end.123
  br label %do.body.128

do.body.128:                                      ; preds = %if.end.127
  %116 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp129 = icmp eq i64 %116, 0
  br i1 %cmp129, label %if.then.131, label %if.end.139

if.then.131:                                      ; preds = %do.body.128
  %117 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer132 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %117, i32 0, i32 3
  %118 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer132, align 8, !tbaa !21
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call133 = call i32 %118(%struct.jpeg_decompress_struct* %119) #4
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.end.136, label %if.then.135

if.then.135:                                      ; preds = %if.then.131
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.136:                                       ; preds = %if.then.131
  %120 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte137 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %120, i32 0, i32 0
  %121 = load i8*, i8** %next_input_byte137, align 8, !tbaa !17
  store i8* %121, i8** %next_input_byte, align 8, !tbaa !1
  %122 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer138 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %122, i32 0, i32 1
  %123 = load i64, i64* %bytes_in_buffer138, align 8, !tbaa !19
  store i64 %123, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.136, %do.body.128
  %124 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec140 = add i64 %124, -1
  store i64 %dec140, i64* %bytes_in_buffer, align 8, !tbaa !20
  %125 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr141 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr141, i8** %next_input_byte, align 8, !tbaa !1
  %126 = load i8, i8* %125, align 1, !tbaa !22
  %conv142 = zext i8 %126 to i32
  store i32 %conv142, i32* %cid, align 4, !tbaa !5
  br label %do.cond.143

do.cond.143:                                      ; preds = %if.end.139
  br label %do.end.144

do.end.144:                                       ; preds = %do.cond.143
  %127 = load i32, i32* %cid, align 4, !tbaa !5
  %128 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %128, i32 0, i32 44
  %129 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !35
  %arrayidx145 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %129, i64 1
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx145, i32 0, i32 0
  %130 = load i32, i32* %component_id, align 4, !tbaa !76
  %cmp146 = icmp ne i32 %127, %130
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %do.end.144
  br label %bad

if.end.149:                                       ; preds = %do.end.144
  br label %do.body.150

do.body.150:                                      ; preds = %if.end.149
  %131 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp151 = icmp eq i64 %131, 0
  br i1 %cmp151, label %if.then.153, label %if.end.161

if.then.153:                                      ; preds = %do.body.150
  %132 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer154 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %132, i32 0, i32 3
  %133 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer154, align 8, !tbaa !21
  %134 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call155 = call i32 %133(%struct.jpeg_decompress_struct* %134) #4
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.end.158, label %if.then.157

if.then.157:                                      ; preds = %if.then.153
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.158:                                       ; preds = %if.then.153
  %135 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte159 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %135, i32 0, i32 0
  %136 = load i8*, i8** %next_input_byte159, align 8, !tbaa !17
  store i8* %136, i8** %next_input_byte, align 8, !tbaa !1
  %137 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer160 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %137, i32 0, i32 1
  %138 = load i64, i64* %bytes_in_buffer160, align 8, !tbaa !19
  store i64 %138, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.158, %do.body.150
  %139 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec162 = add i64 %139, -1
  store i64 %dec162, i64* %bytes_in_buffer, align 8, !tbaa !20
  %140 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr163 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr163, i8** %next_input_byte, align 8, !tbaa !1
  %141 = load i8, i8* %140, align 1, !tbaa !22
  %conv164 = zext i8 %141 to i32
  store i32 %conv164, i32* %cid, align 4, !tbaa !5
  br label %do.cond.165

do.cond.165:                                      ; preds = %if.end.161
  br label %do.end.166

do.end.166:                                       ; preds = %do.cond.165
  %142 = load i32, i32* %cid, align 4, !tbaa !5
  %143 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info167 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %143, i32 0, i32 44
  %144 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info167, align 8, !tbaa !35
  %arrayidx168 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %144, i64 0
  %component_id169 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx168, i32 0, i32 0
  %145 = load i32, i32* %component_id169, align 4, !tbaa !76
  %cmp170 = icmp ne i32 %142, %145
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %do.end.166
  br label %bad

if.end.173:                                       ; preds = %do.end.166
  br label %do.body.174

do.body.174:                                      ; preds = %if.end.173
  %146 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp175 = icmp eq i64 %146, 0
  br i1 %cmp175, label %if.then.177, label %if.end.185

if.then.177:                                      ; preds = %do.body.174
  %147 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer178 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %147, i32 0, i32 3
  %148 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer178, align 8, !tbaa !21
  %149 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call179 = call i32 %148(%struct.jpeg_decompress_struct* %149) #4
  %tobool180 = icmp ne i32 %call179, 0
  br i1 %tobool180, label %if.end.182, label %if.then.181

if.then.181:                                      ; preds = %if.then.177
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.182:                                       ; preds = %if.then.177
  %150 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte183 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %150, i32 0, i32 0
  %151 = load i8*, i8** %next_input_byte183, align 8, !tbaa !17
  store i8* %151, i8** %next_input_byte, align 8, !tbaa !1
  %152 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer184 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %152, i32 0, i32 1
  %153 = load i64, i64* %bytes_in_buffer184, align 8, !tbaa !19
  store i64 %153, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.182, %do.body.174
  %154 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec186 = add i64 %154, -1
  store i64 %dec186, i64* %bytes_in_buffer, align 8, !tbaa !20
  %155 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr187 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %incdec.ptr187, i8** %next_input_byte, align 8, !tbaa !1
  %156 = load i8, i8* %155, align 1, !tbaa !22
  %conv188 = zext i8 %156 to i32
  store i32 %conv188, i32* %cid, align 4, !tbaa !5
  br label %do.cond.189

do.cond.189:                                      ; preds = %if.end.185
  br label %do.end.190

do.end.190:                                       ; preds = %do.cond.189
  %157 = load i32, i32* %cid, align 4, !tbaa !5
  %158 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info191 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %158, i32 0, i32 44
  %159 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info191, align 8, !tbaa !35
  %arrayidx192 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %159, i64 2
  %component_id193 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx192, i32 0, i32 0
  %160 = load i32, i32* %component_id193, align 4, !tbaa !76
  %cmp194 = icmp ne i32 %157, %160
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %do.end.190
  br label %bad

if.end.197:                                       ; preds = %do.end.190
  br label %do.body.198

do.body.198:                                      ; preds = %if.end.197
  %161 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp199 = icmp eq i64 %161, 0
  br i1 %cmp199, label %if.then.201, label %if.end.209

if.then.201:                                      ; preds = %do.body.198
  %162 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer202 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %162, i32 0, i32 3
  %163 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer202, align 8, !tbaa !21
  %164 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call203 = call i32 %163(%struct.jpeg_decompress_struct* %164) #4
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %if.end.206, label %if.then.205

if.then.205:                                      ; preds = %if.then.201
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.206:                                       ; preds = %if.then.201
  %165 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte207 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %165, i32 0, i32 0
  %166 = load i8*, i8** %next_input_byte207, align 8, !tbaa !17
  store i8* %166, i8** %next_input_byte, align 8, !tbaa !1
  %167 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer208 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %167, i32 0, i32 1
  %168 = load i64, i64* %bytes_in_buffer208, align 8, !tbaa !19
  store i64 %168, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.206, %do.body.198
  %169 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec210 = add i64 %169, -1
  store i64 %dec210, i64* %bytes_in_buffer, align 8, !tbaa !20
  %170 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr211 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %incdec.ptr211, i8** %next_input_byte, align 8, !tbaa !1
  %171 = load i8, i8* %170, align 1, !tbaa !22
  %conv212 = zext i8 %171 to i32
  store i32 %conv212, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.213

do.cond.213:                                      ; preds = %if.end.209
  br label %do.end.214

do.end.214:                                       ; preds = %do.cond.213
  %172 = load i32, i32* %tmp, align 4, !tbaa !5
  %cmp215 = icmp ne i32 %172, 128
  br i1 %cmp215, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %do.end.214
  br label %bad

if.end.218:                                       ; preds = %do.end.214
  br label %do.body.219

do.body.219:                                      ; preds = %if.end.218
  %173 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp220 = icmp eq i64 %173, 0
  br i1 %cmp220, label %if.then.222, label %if.end.230

if.then.222:                                      ; preds = %do.body.219
  %174 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer223 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %174, i32 0, i32 3
  %175 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer223, align 8, !tbaa !21
  %176 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call224 = call i32 %175(%struct.jpeg_decompress_struct* %176) #4
  %tobool225 = icmp ne i32 %call224, 0
  br i1 %tobool225, label %if.end.227, label %if.then.226

if.then.226:                                      ; preds = %if.then.222
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.227:                                       ; preds = %if.then.222
  %177 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte228 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %177, i32 0, i32 0
  %178 = load i8*, i8** %next_input_byte228, align 8, !tbaa !17
  store i8* %178, i8** %next_input_byte, align 8, !tbaa !1
  %179 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer229 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %179, i32 0, i32 1
  %180 = load i64, i64* %bytes_in_buffer229, align 8, !tbaa !19
  store i64 %180, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.227, %do.body.219
  %181 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec231 = add i64 %181, -1
  store i64 %dec231, i64* %bytes_in_buffer, align 8, !tbaa !20
  %182 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr232 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %incdec.ptr232, i8** %next_input_byte, align 8, !tbaa !1
  %183 = load i8, i8* %182, align 1, !tbaa !22
  %conv233 = zext i8 %183 to i32
  %shl234 = shl i32 %conv233, 8
  store i32 %shl234, i32* %tmp, align 4, !tbaa !5
  %184 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp235 = icmp eq i64 %184, 0
  br i1 %cmp235, label %if.then.237, label %if.end.245

if.then.237:                                      ; preds = %if.end.230
  %185 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer238 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %185, i32 0, i32 3
  %186 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer238, align 8, !tbaa !21
  %187 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call239 = call i32 %186(%struct.jpeg_decompress_struct* %187) #4
  %tobool240 = icmp ne i32 %call239, 0
  br i1 %tobool240, label %if.end.242, label %if.then.241

if.then.241:                                      ; preds = %if.then.237
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.242:                                       ; preds = %if.then.237
  %188 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte243 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %188, i32 0, i32 0
  %189 = load i8*, i8** %next_input_byte243, align 8, !tbaa !17
  store i8* %189, i8** %next_input_byte, align 8, !tbaa !1
  %190 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer244 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %190, i32 0, i32 1
  %191 = load i64, i64* %bytes_in_buffer244, align 8, !tbaa !19
  store i64 %191, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.242, %if.end.230
  %192 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec246 = add i64 %192, -1
  store i64 %dec246, i64* %bytes_in_buffer, align 8, !tbaa !20
  %193 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr247 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %incdec.ptr247, i8** %next_input_byte, align 8, !tbaa !1
  %194 = load i8, i8* %193, align 1, !tbaa !22
  %conv248 = zext i8 %194 to i32
  %195 = load i32, i32* %tmp, align 4, !tbaa !5
  %add249 = add i32 %195, %conv248
  store i32 %add249, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.250

do.cond.250:                                      ; preds = %if.end.245
  br label %do.end.251

do.end.251:                                       ; preds = %do.cond.250
  %196 = load i32, i32* %tmp, align 4, !tbaa !5
  %cmp252 = icmp ne i32 %196, 0
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %do.end.251
  br label %bad

if.end.255:                                       ; preds = %do.end.251
  br label %do.body.256

do.body.256:                                      ; preds = %if.end.255
  %197 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp257 = icmp eq i64 %197, 0
  br i1 %cmp257, label %if.then.259, label %if.end.267

if.then.259:                                      ; preds = %do.body.256
  %198 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer260 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %198, i32 0, i32 3
  %199 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer260, align 8, !tbaa !21
  %200 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call261 = call i32 %199(%struct.jpeg_decompress_struct* %200) #4
  %tobool262 = icmp ne i32 %call261, 0
  br i1 %tobool262, label %if.end.264, label %if.then.263

if.then.263:                                      ; preds = %if.then.259
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.264:                                       ; preds = %if.then.259
  %201 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte265 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %201, i32 0, i32 0
  %202 = load i8*, i8** %next_input_byte265, align 8, !tbaa !17
  store i8* %202, i8** %next_input_byte, align 8, !tbaa !1
  %203 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer266 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %203, i32 0, i32 1
  %204 = load i64, i64* %bytes_in_buffer266, align 8, !tbaa !19
  store i64 %204, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.264, %do.body.256
  %205 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec268 = add i64 %205, -1
  store i64 %dec268, i64* %bytes_in_buffer, align 8, !tbaa !20
  %206 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr269 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %incdec.ptr269, i8** %next_input_byte, align 8, !tbaa !1
  %207 = load i8, i8* %206, align 1, !tbaa !22
  %conv270 = zext i8 %207 to i32
  %shl271 = shl i32 %conv270, 8
  store i32 %shl271, i32* %tmp, align 4, !tbaa !5
  %208 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp272 = icmp eq i64 %208, 0
  br i1 %cmp272, label %if.then.274, label %if.end.282

if.then.274:                                      ; preds = %if.end.267
  %209 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer275 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %209, i32 0, i32 3
  %210 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer275, align 8, !tbaa !21
  %211 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call276 = call i32 %210(%struct.jpeg_decompress_struct* %211) #4
  %tobool277 = icmp ne i32 %call276, 0
  br i1 %tobool277, label %if.end.279, label %if.then.278

if.then.278:                                      ; preds = %if.then.274
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.279:                                       ; preds = %if.then.274
  %212 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte280 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %212, i32 0, i32 0
  %213 = load i8*, i8** %next_input_byte280, align 8, !tbaa !17
  store i8* %213, i8** %next_input_byte, align 8, !tbaa !1
  %214 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer281 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %214, i32 0, i32 1
  %215 = load i64, i64* %bytes_in_buffer281, align 8, !tbaa !19
  store i64 %215, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.279, %if.end.267
  %216 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec283 = add i64 %216, -1
  store i64 %dec283, i64* %bytes_in_buffer, align 8, !tbaa !20
  %217 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr284 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %incdec.ptr284, i8** %next_input_byte, align 8, !tbaa !1
  %218 = load i8, i8* %217, align 1, !tbaa !22
  %conv285 = zext i8 %218 to i32
  %219 = load i32, i32* %tmp, align 4, !tbaa !5
  %add286 = add i32 %219, %conv285
  store i32 %add286, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.287

do.cond.287:                                      ; preds = %if.end.282
  br label %do.end.288

do.end.288:                                       ; preds = %do.cond.287
  %220 = load i32, i32* %tmp, align 4, !tbaa !5
  %cmp289 = icmp ne i32 %220, 0
  br i1 %cmp289, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %do.end.288
  br label %bad

if.end.292:                                       ; preds = %do.end.288
  br label %do.body.293

do.body.293:                                      ; preds = %if.end.292
  %221 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp294 = icmp eq i64 %221, 0
  br i1 %cmp294, label %if.then.296, label %if.end.304

if.then.296:                                      ; preds = %do.body.293
  %222 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer297 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %222, i32 0, i32 3
  %223 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer297, align 8, !tbaa !21
  %224 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call298 = call i32 %223(%struct.jpeg_decompress_struct* %224) #4
  %tobool299 = icmp ne i32 %call298, 0
  br i1 %tobool299, label %if.end.301, label %if.then.300

if.then.300:                                      ; preds = %if.then.296
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.301:                                       ; preds = %if.then.296
  %225 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte302 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %225, i32 0, i32 0
  %226 = load i8*, i8** %next_input_byte302, align 8, !tbaa !17
  store i8* %226, i8** %next_input_byte, align 8, !tbaa !1
  %227 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer303 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %227, i32 0, i32 1
  %228 = load i64, i64* %bytes_in_buffer303, align 8, !tbaa !19
  store i64 %228, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.301, %do.body.293
  %229 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec305 = add i64 %229, -1
  store i64 %dec305, i64* %bytes_in_buffer, align 8, !tbaa !20
  %230 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr306 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %incdec.ptr306, i8** %next_input_byte, align 8, !tbaa !1
  %231 = load i8, i8* %230, align 1, !tbaa !22
  %conv307 = zext i8 %231 to i32
  store i32 %conv307, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.308

do.cond.308:                                      ; preds = %if.end.304
  br label %do.end.309

do.end.309:                                       ; preds = %do.cond.308
  %232 = load i32, i32* %tmp, align 4, !tbaa !5
  %cmp310 = icmp ne i32 %232, 0
  br i1 %cmp310, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %do.end.309
  br label %bad

if.end.313:                                       ; preds = %do.end.309
  br label %do.body.314

do.body.314:                                      ; preds = %if.end.313
  %233 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp315 = icmp eq i64 %233, 0
  br i1 %cmp315, label %if.then.317, label %if.end.325

if.then.317:                                      ; preds = %do.body.314
  %234 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer318 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %234, i32 0, i32 3
  %235 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer318, align 8, !tbaa !21
  %236 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call319 = call i32 %235(%struct.jpeg_decompress_struct* %236) #4
  %tobool320 = icmp ne i32 %call319, 0
  br i1 %tobool320, label %if.end.322, label %if.then.321

if.then.321:                                      ; preds = %if.then.317
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.322:                                       ; preds = %if.then.317
  %237 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte323 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %237, i32 0, i32 0
  %238 = load i8*, i8** %next_input_byte323, align 8, !tbaa !17
  store i8* %238, i8** %next_input_byte, align 8, !tbaa !1
  %239 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer324 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %239, i32 0, i32 1
  %240 = load i64, i64* %bytes_in_buffer324, align 8, !tbaa !19
  store i64 %240, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.322, %do.body.314
  %241 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec326 = add i64 %241, -1
  store i64 %dec326, i64* %bytes_in_buffer, align 8, !tbaa !20
  %242 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr327 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %incdec.ptr327, i8** %next_input_byte, align 8, !tbaa !1
  %243 = load i8, i8* %242, align 1, !tbaa !22
  %conv328 = zext i8 %243 to i32
  %shl329 = shl i32 %conv328, 8
  store i32 %shl329, i32* %tmp, align 4, !tbaa !5
  %244 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp330 = icmp eq i64 %244, 0
  br i1 %cmp330, label %if.then.332, label %if.end.340

if.then.332:                                      ; preds = %if.end.325
  %245 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer333 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %245, i32 0, i32 3
  %246 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer333, align 8, !tbaa !21
  %247 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call334 = call i32 %246(%struct.jpeg_decompress_struct* %247) #4
  %tobool335 = icmp ne i32 %call334, 0
  br i1 %tobool335, label %if.end.337, label %if.then.336

if.then.336:                                      ; preds = %if.then.332
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.337:                                       ; preds = %if.then.332
  %248 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte338 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %248, i32 0, i32 0
  %249 = load i8*, i8** %next_input_byte338, align 8, !tbaa !17
  store i8* %249, i8** %next_input_byte, align 8, !tbaa !1
  %250 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer339 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %250, i32 0, i32 1
  %251 = load i64, i64* %bytes_in_buffer339, align 8, !tbaa !19
  store i64 %251, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.337, %if.end.325
  %252 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec341 = add i64 %252, -1
  store i64 %dec341, i64* %bytes_in_buffer, align 8, !tbaa !20
  %253 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr342 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %incdec.ptr342, i8** %next_input_byte, align 8, !tbaa !1
  %254 = load i8, i8* %253, align 1, !tbaa !22
  %conv343 = zext i8 %254 to i32
  %255 = load i32, i32* %tmp, align 4, !tbaa !5
  %add344 = add i32 %255, %conv343
  store i32 %add344, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.345

do.cond.345:                                      ; preds = %if.end.340
  br label %do.end.346

do.end.346:                                       ; preds = %do.cond.345
  %256 = load i32, i32* %tmp, align 4, !tbaa !5
  %cmp347 = icmp ne i32 %256, 1
  br i1 %cmp347, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %do.end.346
  br label %bad

if.end.350:                                       ; preds = %do.end.346
  br label %do.body.351

do.body.351:                                      ; preds = %if.end.350
  %257 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp352 = icmp eq i64 %257, 0
  br i1 %cmp352, label %if.then.354, label %if.end.362

if.then.354:                                      ; preds = %do.body.351
  %258 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer355 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %258, i32 0, i32 3
  %259 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer355, align 8, !tbaa !21
  %260 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call356 = call i32 %259(%struct.jpeg_decompress_struct* %260) #4
  %tobool357 = icmp ne i32 %call356, 0
  br i1 %tobool357, label %if.end.359, label %if.then.358

if.then.358:                                      ; preds = %if.then.354
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.359:                                       ; preds = %if.then.354
  %261 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte360 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %261, i32 0, i32 0
  %262 = load i8*, i8** %next_input_byte360, align 8, !tbaa !17
  store i8* %262, i8** %next_input_byte, align 8, !tbaa !1
  %263 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer361 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %263, i32 0, i32 1
  %264 = load i64, i64* %bytes_in_buffer361, align 8, !tbaa !19
  store i64 %264, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.359, %do.body.351
  %265 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec363 = add i64 %265, -1
  store i64 %dec363, i64* %bytes_in_buffer, align 8, !tbaa !20
  %266 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr364 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %incdec.ptr364, i8** %next_input_byte, align 8, !tbaa !1
  %267 = load i8, i8* %266, align 1, !tbaa !22
  %conv365 = zext i8 %267 to i32
  %shl366 = shl i32 %conv365, 8
  store i32 %shl366, i32* %tmp, align 4, !tbaa !5
  %268 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp367 = icmp eq i64 %268, 0
  br i1 %cmp367, label %if.then.369, label %if.end.377

if.then.369:                                      ; preds = %if.end.362
  %269 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer370 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %269, i32 0, i32 3
  %270 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer370, align 8, !tbaa !21
  %271 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call371 = call i32 %270(%struct.jpeg_decompress_struct* %271) #4
  %tobool372 = icmp ne i32 %call371, 0
  br i1 %tobool372, label %if.end.374, label %if.then.373

if.then.373:                                      ; preds = %if.then.369
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.374:                                       ; preds = %if.then.369
  %272 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte375 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %272, i32 0, i32 0
  %273 = load i8*, i8** %next_input_byte375, align 8, !tbaa !17
  store i8* %273, i8** %next_input_byte, align 8, !tbaa !1
  %274 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer376 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %274, i32 0, i32 1
  %275 = load i64, i64* %bytes_in_buffer376, align 8, !tbaa !19
  store i64 %275, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.374, %if.end.362
  %276 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec378 = add i64 %276, -1
  store i64 %dec378, i64* %bytes_in_buffer, align 8, !tbaa !20
  %277 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr379 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %incdec.ptr379, i8** %next_input_byte, align 8, !tbaa !1
  %278 = load i8, i8* %277, align 1, !tbaa !22
  %conv380 = zext i8 %278 to i32
  %279 = load i32, i32* %tmp, align 4, !tbaa !5
  %add381 = add i32 %279, %conv380
  store i32 %add381, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.382

do.cond.382:                                      ; preds = %if.end.377
  br label %do.end.383

do.end.383:                                       ; preds = %do.cond.382
  %280 = load i32, i32* %tmp, align 4, !tbaa !5
  %cmp384 = icmp ne i32 %280, 0
  br i1 %cmp384, label %if.then.386, label %if.end.387

if.then.386:                                      ; preds = %do.end.383
  br label %bad

if.end.387:                                       ; preds = %do.end.383
  br label %do.body.388

do.body.388:                                      ; preds = %if.end.387
  %281 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp389 = icmp eq i64 %281, 0
  br i1 %cmp389, label %if.then.391, label %if.end.399

if.then.391:                                      ; preds = %do.body.388
  %282 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer392 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %282, i32 0, i32 3
  %283 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer392, align 8, !tbaa !21
  %284 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call393 = call i32 %283(%struct.jpeg_decompress_struct* %284) #4
  %tobool394 = icmp ne i32 %call393, 0
  br i1 %tobool394, label %if.end.396, label %if.then.395

if.then.395:                                      ; preds = %if.then.391
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.396:                                       ; preds = %if.then.391
  %285 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte397 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %285, i32 0, i32 0
  %286 = load i8*, i8** %next_input_byte397, align 8, !tbaa !17
  store i8* %286, i8** %next_input_byte, align 8, !tbaa !1
  %287 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer398 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %287, i32 0, i32 1
  %288 = load i64, i64* %bytes_in_buffer398, align 8, !tbaa !19
  store i64 %288, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.399

if.end.399:                                       ; preds = %if.end.396, %do.body.388
  %289 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec400 = add i64 %289, -1
  store i64 %dec400, i64* %bytes_in_buffer, align 8, !tbaa !20
  %290 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr401 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %incdec.ptr401, i8** %next_input_byte, align 8, !tbaa !1
  %291 = load i8, i8* %290, align 1, !tbaa !22
  %conv402 = zext i8 %291 to i32
  store i32 %conv402, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.403

do.cond.403:                                      ; preds = %if.end.399
  br label %do.end.404

do.end.404:                                       ; preds = %do.cond.403
  %292 = load i32, i32* %tmp, align 4, !tbaa !5
  %cmp405 = icmp ne i32 %292, 0
  br i1 %cmp405, label %if.then.407, label %if.end.408

if.then.407:                                      ; preds = %do.end.404
  br label %bad

if.end.408:                                       ; preds = %do.end.404
  br label %do.body.409

do.body.409:                                      ; preds = %if.end.408
  %293 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp410 = icmp eq i64 %293, 0
  br i1 %cmp410, label %if.then.412, label %if.end.420

if.then.412:                                      ; preds = %do.body.409
  %294 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer413 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %294, i32 0, i32 3
  %295 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer413, align 8, !tbaa !21
  %296 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call414 = call i32 %295(%struct.jpeg_decompress_struct* %296) #4
  %tobool415 = icmp ne i32 %call414, 0
  br i1 %tobool415, label %if.end.417, label %if.then.416

if.then.416:                                      ; preds = %if.then.412
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.417:                                       ; preds = %if.then.412
  %297 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte418 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %297, i32 0, i32 0
  %298 = load i8*, i8** %next_input_byte418, align 8, !tbaa !17
  store i8* %298, i8** %next_input_byte, align 8, !tbaa !1
  %299 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer419 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %299, i32 0, i32 1
  %300 = load i64, i64* %bytes_in_buffer419, align 8, !tbaa !19
  store i64 %300, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.417, %do.body.409
  %301 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec421 = add i64 %301, -1
  store i64 %dec421, i64* %bytes_in_buffer, align 8, !tbaa !20
  %302 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr422 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %incdec.ptr422, i8** %next_input_byte, align 8, !tbaa !1
  %303 = load i8, i8* %302, align 1, !tbaa !22
  %conv423 = zext i8 %303 to i32
  %shl424 = shl i32 %conv423, 8
  store i32 %shl424, i32* %tmp, align 4, !tbaa !5
  %304 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp425 = icmp eq i64 %304, 0
  br i1 %cmp425, label %if.then.427, label %if.end.435

if.then.427:                                      ; preds = %if.end.420
  %305 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer428 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %305, i32 0, i32 3
  %306 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer428, align 8, !tbaa !21
  %307 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call429 = call i32 %306(%struct.jpeg_decompress_struct* %307) #4
  %tobool430 = icmp ne i32 %call429, 0
  br i1 %tobool430, label %if.end.432, label %if.then.431

if.then.431:                                      ; preds = %if.then.427
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.432:                                       ; preds = %if.then.427
  %308 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte433 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %308, i32 0, i32 0
  %309 = load i8*, i8** %next_input_byte433, align 8, !tbaa !17
  store i8* %309, i8** %next_input_byte, align 8, !tbaa !1
  %310 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer434 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %310, i32 0, i32 1
  %311 = load i64, i64* %bytes_in_buffer434, align 8, !tbaa !19
  store i64 %311, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.435

if.end.435:                                       ; preds = %if.end.432, %if.end.420
  %312 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec436 = add i64 %312, -1
  store i64 %dec436, i64* %bytes_in_buffer, align 8, !tbaa !20
  %313 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr437 = getelementptr inbounds i8, i8* %313, i32 1
  store i8* %incdec.ptr437, i8** %next_input_byte, align 8, !tbaa !1
  %314 = load i8, i8* %313, align 1, !tbaa !22
  %conv438 = zext i8 %314 to i32
  %315 = load i32, i32* %tmp, align 4, !tbaa !5
  %add439 = add i32 %315, %conv438
  store i32 %add439, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.440

do.cond.440:                                      ; preds = %if.end.435
  br label %do.end.441

do.end.441:                                       ; preds = %do.cond.440
  %316 = load i32, i32* %tmp, align 4, !tbaa !5
  %cmp442 = icmp ne i32 %316, 1
  br i1 %cmp442, label %if.then.444, label %if.end.445

if.then.444:                                      ; preds = %do.end.441
  br label %bad

if.end.445:                                       ; preds = %do.end.441
  br label %do.body.446

do.body.446:                                      ; preds = %if.end.445
  %317 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp447 = icmp eq i64 %317, 0
  br i1 %cmp447, label %if.then.449, label %if.end.457

if.then.449:                                      ; preds = %do.body.446
  %318 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer450 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %318, i32 0, i32 3
  %319 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer450, align 8, !tbaa !21
  %320 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call451 = call i32 %319(%struct.jpeg_decompress_struct* %320) #4
  %tobool452 = icmp ne i32 %call451, 0
  br i1 %tobool452, label %if.end.454, label %if.then.453

if.then.453:                                      ; preds = %if.then.449
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.454:                                       ; preds = %if.then.449
  %321 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte455 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %321, i32 0, i32 0
  %322 = load i8*, i8** %next_input_byte455, align 8, !tbaa !17
  store i8* %322, i8** %next_input_byte, align 8, !tbaa !1
  %323 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer456 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %323, i32 0, i32 1
  %324 = load i64, i64* %bytes_in_buffer456, align 8, !tbaa !19
  store i64 %324, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.457

if.end.457:                                       ; preds = %if.end.454, %do.body.446
  %325 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec458 = add i64 %325, -1
  store i64 %dec458, i64* %bytes_in_buffer, align 8, !tbaa !20
  %326 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr459 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %incdec.ptr459, i8** %next_input_byte, align 8, !tbaa !1
  %327 = load i8, i8* %326, align 1, !tbaa !22
  %conv460 = zext i8 %327 to i32
  %shl461 = shl i32 %conv460, 8
  store i32 %shl461, i32* %tmp, align 4, !tbaa !5
  %328 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %cmp462 = icmp eq i64 %328, 0
  br i1 %cmp462, label %if.then.464, label %if.end.472

if.then.464:                                      ; preds = %if.end.457
  %329 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %fill_input_buffer465 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %329, i32 0, i32 3
  %330 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer465, align 8, !tbaa !21
  %331 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call466 = call i32 %330(%struct.jpeg_decompress_struct* %331) #4
  %tobool467 = icmp ne i32 %call466, 0
  br i1 %tobool467, label %if.end.469, label %if.then.468

if.then.468:                                      ; preds = %if.then.464
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.469:                                       ; preds = %if.then.464
  %332 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte470 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %332, i32 0, i32 0
  %333 = load i8*, i8** %next_input_byte470, align 8, !tbaa !17
  store i8* %333, i8** %next_input_byte, align 8, !tbaa !1
  %334 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer471 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %334, i32 0, i32 1
  %335 = load i64, i64* %bytes_in_buffer471, align 8, !tbaa !19
  store i64 %335, i64* %bytes_in_buffer, align 8, !tbaa !20
  br label %if.end.472

if.end.472:                                       ; preds = %if.end.469, %if.end.457
  %336 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %dec473 = add i64 %336, -1
  store i64 %dec473, i64* %bytes_in_buffer, align 8, !tbaa !20
  %337 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr474 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %incdec.ptr474, i8** %next_input_byte, align 8, !tbaa !1
  %338 = load i8, i8* %337, align 1, !tbaa !22
  %conv475 = zext i8 %338 to i32
  %339 = load i32, i32* %tmp, align 4, !tbaa !5
  %add476 = add i32 %339, %conv475
  store i32 %add476, i32* %tmp, align 4, !tbaa !5
  br label %do.cond.477

do.cond.477:                                      ; preds = %if.end.472
  br label %do.end.478

do.end.478:                                       ; preds = %do.cond.477
  %340 = load i32, i32* %tmp, align 4, !tbaa !5
  %cmp479 = icmp ne i32 %340, 0
  br i1 %cmp479, label %if.then.481, label %if.end.486

if.then.481:                                      ; preds = %do.end.478
  br label %bad

bad:                                              ; preds = %if.then.481, %if.then.444, %if.then.407, %if.then.386, %if.then.349, %if.then.312, %if.then.291, %if.then.254, %if.then.217, %if.then.196, %if.then.172, %if.then.148, %if.then.126, %if.then.105, %if.then.9
  %341 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err482 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %341, i32 0, i32 0
  %342 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err482, align 8, !tbaa !11
  %msg_code483 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %342, i32 0, i32 5
  store i32 28, i32* %msg_code483, align 4, !tbaa !12
  %343 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err484 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %343, i32 0, i32 0
  %344 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err484, align 8, !tbaa !11
  %error_exit485 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %344, i32 0, i32 0
  %345 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit485, align 8, !tbaa !42
  %346 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %347 = bitcast %struct.jpeg_decompress_struct* %346 to %struct.jpeg_common_struct*
  call void %345(%struct.jpeg_common_struct* %347) #4
  br label %if.end.486

if.end.486:                                       ; preds = %bad, %do.end.478
  %348 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %348, i32 0, i32 60
  store i32 1, i32* %color_transform, align 4, !tbaa !58
  %349 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %350 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %next_input_byte487 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %350, i32 0, i32 0
  store i8* %349, i8** %next_input_byte487, align 8, !tbaa !17
  %351 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !20
  %352 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !1
  %bytes_in_buffer488 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %352, i32 0, i32 1
  store i64 %351, i64* %bytes_in_buffer488, align 8, !tbaa !19
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.486, %if.then.468, %if.then.453, %if.then.431, %if.then.416, %if.then.395, %if.then.373, %if.then.358, %if.then.336, %if.then.321, %if.then.300, %if.then.278, %if.then.263, %if.then.241, %if.then.226, %if.then.205, %if.then.181, %if.then.157, %if.then.135, %if.then.114, %if.then.92, %if.then.77, %if.then.50, %if.then.27, %if.then.15
  %353 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %353) #1
  %354 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %354) #1
  %355 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %355) #1
  %356 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %356) #1
  %357 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %357) #1
  %358 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #1
  %359 = load i32, i32* %retval
  ret i32 %359
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

declare %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct*) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

declare %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct*) #3

; Function Attrs: nounwind uwtable
define internal void @examine_app0(%struct.jpeg_decompress_struct* %cinfo, i8* %data, i32 %datalen, i64 %remaining) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %data.addr = alloca i8*, align 8
  %datalen.addr = alloca i32, align 4
  %remaining.addr = alloca i64, align 8
  %totallen = alloca i64, align 8
  %_mp = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %datalen, i32* %datalen.addr, align 4, !tbaa !5
  store i64 %remaining, i64* %remaining.addr, align 8, !tbaa !20
  %0 = bitcast i64* %totallen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %datalen.addr, align 4, !tbaa !5
  %conv = zext i32 %1 to i64
  %2 = load i64, i64* %remaining.addr, align 8, !tbaa !20
  %add = add nsw i64 %conv, %2
  store i64 %add, i64* %totallen, align 8, !tbaa !20
  %3 = load i32, i32* %datalen.addr, align 4, !tbaa !5
  %cmp = icmp uge i32 %3, 14
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv2 = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 74
  br i1 %cmp3, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx6, align 1, !tbaa !22
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 70
  br i1 %cmp8, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %land.lhs.true.5
  %8 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx11, align 1, !tbaa !22
  %conv12 = zext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 73
  br i1 %cmp13, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %land.lhs.true.10
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx16, align 1, !tbaa !22
  %conv17 = zext i8 %11 to i32
  %cmp18 = icmp eq i32 %conv17, 70
  br i1 %cmp18, label %land.lhs.true.20, label %if.else

land.lhs.true.20:                                 ; preds = %land.lhs.true.15
  %12 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %12, i64 4
  %13 = load i8, i8* %arrayidx21, align 1, !tbaa !22
  %conv22 = zext i8 %13 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.20
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 52
  store i32 1, i32* %saw_JFIF_marker, align 4, !tbaa !60
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %15, i64 5
  %16 = load i8, i8* %arrayidx25, align 1, !tbaa !22
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_major_version = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 53
  store i8 %16, i8* %JFIF_major_version, align 1, !tbaa !61
  %18 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %18, i64 6
  %19 = load i8, i8* %arrayidx26, align 1, !tbaa !22
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_minor_version = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 54
  store i8 %19, i8* %JFIF_minor_version, align 1, !tbaa !62
  %21 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %21, i64 7
  %22 = load i8, i8* %arrayidx27, align 1, !tbaa !22
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %density_unit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 55
  store i8 %22, i8* %density_unit, align 1, !tbaa !63
  %24 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %24, i64 8
  %25 = load i8, i8* %arrayidx28, align 1, !tbaa !22
  %conv29 = zext i8 %25 to i32
  %shl = shl i32 %conv29, 8
  %26 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %26, i64 9
  %27 = load i8, i8* %arrayidx30, align 1, !tbaa !22
  %conv31 = zext i8 %27 to i32
  %add32 = add nsw i32 %shl, %conv31
  %conv33 = trunc i32 %add32 to i16
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %X_density = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 56
  store i16 %conv33, i16* %X_density, align 2, !tbaa !64
  %29 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %29, i64 10
  %30 = load i8, i8* %arrayidx34, align 1, !tbaa !22
  %conv35 = zext i8 %30 to i32
  %shl36 = shl i32 %conv35, 8
  %31 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %31, i64 11
  %32 = load i8, i8* %arrayidx37, align 1, !tbaa !22
  %conv38 = zext i8 %32 to i32
  %add39 = add nsw i32 %shl36, %conv38
  %conv40 = trunc i32 %add39 to i16
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Y_density = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 57
  store i16 %conv40, i16* %Y_density, align 2, !tbaa !65
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_major_version41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 53
  %35 = load i8, i8* %JFIF_major_version41, align 1, !tbaa !61
  %conv42 = zext i8 %35 to i32
  %cmp43 = icmp ne i32 %conv42, 1
  br i1 %cmp43, label %land.lhs.true.45, label %if.end

land.lhs.true.45:                                 ; preds = %if.then
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_major_version46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 53
  %37 = load i8, i8* %JFIF_major_version46, align 1, !tbaa !61
  %conv47 = zext i8 %37 to i32
  %cmp48 = icmp ne i32 %conv47, 2
  br i1 %cmp48, label %if.then.50, label %if.end

if.then.50:                                       ; preds = %land.lhs.true.45
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 5
  store i32 122, i32* %msg_code, align 4, !tbaa !12
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_major_version51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 53
  %41 = load i8, i8* %JFIF_major_version51, align 1, !tbaa !61
  %conv52 = zext i8 %41 to i32
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err53, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx54 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %conv52, i32* %arrayidx54, align 4, !tbaa !5
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_minor_version55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 54
  %45 = load i8, i8* %JFIF_minor_version55, align 1, !tbaa !62
  %conv56 = zext i8 %45 to i32
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 0
  %47 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8, !tbaa !11
  %msg_parm58 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %47, i32 0, i32 6
  %i59 = bitcast %union.anon* %msg_parm58 to [8 x i32]*
  %arrayidx60 = getelementptr inbounds [8 x i32], [8 x i32]* %i59, i32 0, i64 1
  store i32 %conv56, i32* %arrayidx60, align 4, !tbaa !5
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err61, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 1
  %50 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %52 = bitcast %struct.jpeg_decompress_struct* %51 to %struct.jpeg_common_struct*
  call void %50(%struct.jpeg_common_struct* %52, i32 -1) #4
  br label %if.end

if.end:                                           ; preds = %if.then.50, %land.lhs.true.45, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %53 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err62, align 8, !tbaa !11
  %msg_parm63 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 6
  %i64 = bitcast %union.anon* %msg_parm63 to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i64, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8, !tbaa !1
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_major_version65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 53
  %57 = load i8, i8* %JFIF_major_version65, align 1, !tbaa !61
  %conv66 = zext i8 %57 to i32
  %58 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %conv66, i32* %arrayidx67, align 4, !tbaa !5
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_minor_version68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 54
  %60 = load i8, i8* %JFIF_minor_version68, align 1, !tbaa !62
  %conv69 = zext i8 %60 to i32
  %61 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %conv69, i32* %arrayidx70, align 4, !tbaa !5
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %X_density71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 56
  %63 = load i16, i16* %X_density71, align 2, !tbaa !64
  %conv72 = zext i16 %63 to i32
  %64 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %conv72, i32* %arrayidx73, align 4, !tbaa !5
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Y_density74 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 57
  %66 = load i16, i16* %Y_density74, align 2, !tbaa !65
  %conv75 = zext i16 %66 to i32
  %67 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i32, i32* %67, i64 3
  store i32 %conv75, i32* %arrayidx76, align 4, !tbaa !5
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %density_unit77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 55
  %69 = load i8, i8* %density_unit77, align 1, !tbaa !63
  %conv78 = zext i8 %69 to i32
  %70 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i32, i32* %70, i64 4
  store i32 %conv78, i32* %arrayidx79, align 4, !tbaa !5
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err80, align 8, !tbaa !11
  %msg_code81 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 5
  store i32 89, i32* %msg_code81, align 4, !tbaa !12
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err82 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err82, align 8, !tbaa !11
  %emit_message83 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i32 0, i32 1
  %75 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message83, align 8, !tbaa !15
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %77 = bitcast %struct.jpeg_decompress_struct* %76 to %struct.jpeg_common_struct*
  call void %75(%struct.jpeg_common_struct* %77, i32 1) #4
  %78 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %79 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %79, i64 12
  %80 = load i8, i8* %arrayidx84, align 1, !tbaa !22
  %conv85 = zext i8 %80 to i32
  %81 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i8, i8* %81, i64 13
  %82 = load i8, i8* %arrayidx86, align 1, !tbaa !22
  %conv87 = zext i8 %82 to i32
  %or = or i32 %conv85, %conv87
  %tobool = icmp ne i32 %or, 0
  br i1 %tobool, label %if.then.88, label %if.end.105

if.then.88:                                       ; preds = %do.end
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %83, i32 0, i32 0
  %84 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err89, align 8, !tbaa !11
  %msg_code90 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %84, i32 0, i32 5
  store i32 92, i32* %msg_code90, align 4, !tbaa !12
  %85 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i8, i8* %85, i64 12
  %86 = load i8, i8* %arrayidx91, align 1, !tbaa !22
  %conv92 = zext i8 %86 to i32
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 0
  %88 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err93, align 8, !tbaa !11
  %msg_parm94 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %88, i32 0, i32 6
  %i95 = bitcast %union.anon* %msg_parm94 to [8 x i32]*
  %arrayidx96 = getelementptr inbounds [8 x i32], [8 x i32]* %i95, i32 0, i64 0
  store i32 %conv92, i32* %arrayidx96, align 4, !tbaa !5
  %89 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i8, i8* %89, i64 13
  %90 = load i8, i8* %arrayidx97, align 1, !tbaa !22
  %conv98 = zext i8 %90 to i32
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err99 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 0
  %92 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err99, align 8, !tbaa !11
  %msg_parm100 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %92, i32 0, i32 6
  %i101 = bitcast %union.anon* %msg_parm100 to [8 x i32]*
  %arrayidx102 = getelementptr inbounds [8 x i32], [8 x i32]* %i101, i32 0, i64 1
  store i32 %conv98, i32* %arrayidx102, align 4, !tbaa !5
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 0
  %94 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err103, align 8, !tbaa !11
  %emit_message104 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %94, i32 0, i32 1
  %95 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message104, align 8, !tbaa !15
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %97 = bitcast %struct.jpeg_decompress_struct* %96 to %struct.jpeg_common_struct*
  call void %95(%struct.jpeg_common_struct* %97, i32 1) #4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.88, %do.end
  %98 = load i64, i64* %totallen, align 8, !tbaa !20
  %sub = sub nsw i64 %98, 14
  store i64 %sub, i64* %totallen, align 8, !tbaa !20
  %99 = load i64, i64* %totallen, align 8, !tbaa !20
  %100 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i8, i8* %100, i64 12
  %101 = load i8, i8* %arrayidx106, align 1, !tbaa !22
  %conv107 = zext i8 %101 to i64
  %102 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds i8, i8* %102, i64 13
  %103 = load i8, i8* %arrayidx108, align 1, !tbaa !22
  %conv109 = zext i8 %103 to i64
  %mul = mul nsw i64 %conv107, %conv109
  %mul110 = mul nsw i64 %mul, 3
  %cmp111 = icmp ne i64 %99, %mul110
  br i1 %cmp111, label %if.then.113, label %if.end.123

if.then.113:                                      ; preds = %if.end.105
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err114 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 0
  %105 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err114, align 8, !tbaa !11
  %msg_code115 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %105, i32 0, i32 5
  store i32 90, i32* %msg_code115, align 4, !tbaa !12
  %106 = load i64, i64* %totallen, align 8, !tbaa !20
  %conv116 = trunc i64 %106 to i32
  %107 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err117 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %107, i32 0, i32 0
  %108 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err117, align 8, !tbaa !11
  %msg_parm118 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %108, i32 0, i32 6
  %i119 = bitcast %union.anon* %msg_parm118 to [8 x i32]*
  %arrayidx120 = getelementptr inbounds [8 x i32], [8 x i32]* %i119, i32 0, i64 0
  store i32 %conv116, i32* %arrayidx120, align 4, !tbaa !5
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err121 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %109, i32 0, i32 0
  %110 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err121, align 8, !tbaa !11
  %emit_message122 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %110, i32 0, i32 1
  %111 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message122, align 8, !tbaa !15
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %113 = bitcast %struct.jpeg_decompress_struct* %112 to %struct.jpeg_common_struct*
  call void %111(%struct.jpeg_common_struct* %113, i32 1) #4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.113, %if.end.105
  br label %if.end.209

if.else:                                          ; preds = %land.lhs.true.20, %land.lhs.true.15, %land.lhs.true.10, %land.lhs.true.5, %land.lhs.true, %entry
  %114 = load i32, i32* %datalen.addr, align 4, !tbaa !5
  %cmp124 = icmp uge i32 %114, 6
  br i1 %cmp124, label %land.lhs.true.126, label %if.else.198

land.lhs.true.126:                                ; preds = %if.else
  %115 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i8, i8* %115, i64 0
  %116 = load i8, i8* %arrayidx127, align 1, !tbaa !22
  %conv128 = zext i8 %116 to i32
  %cmp129 = icmp eq i32 %conv128, 74
  br i1 %cmp129, label %land.lhs.true.131, label %if.else.198

land.lhs.true.131:                                ; preds = %land.lhs.true.126
  %117 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i8, i8* %117, i64 1
  %118 = load i8, i8* %arrayidx132, align 1, !tbaa !22
  %conv133 = zext i8 %118 to i32
  %cmp134 = icmp eq i32 %conv133, 70
  br i1 %cmp134, label %land.lhs.true.136, label %if.else.198

land.lhs.true.136:                                ; preds = %land.lhs.true.131
  %119 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i8, i8* %119, i64 2
  %120 = load i8, i8* %arrayidx137, align 1, !tbaa !22
  %conv138 = zext i8 %120 to i32
  %cmp139 = icmp eq i32 %conv138, 88
  br i1 %cmp139, label %land.lhs.true.141, label %if.else.198

land.lhs.true.141:                                ; preds = %land.lhs.true.136
  %121 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds i8, i8* %121, i64 3
  %122 = load i8, i8* %arrayidx142, align 1, !tbaa !22
  %conv143 = zext i8 %122 to i32
  %cmp144 = icmp eq i32 %conv143, 88
  br i1 %cmp144, label %land.lhs.true.146, label %if.else.198

land.lhs.true.146:                                ; preds = %land.lhs.true.141
  %123 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i8, i8* %123, i64 4
  %124 = load i8, i8* %arrayidx147, align 1, !tbaa !22
  %conv148 = zext i8 %124 to i32
  %cmp149 = icmp eq i32 %conv148, 0
  br i1 %cmp149, label %if.then.151, label %if.else.198

if.then.151:                                      ; preds = %land.lhs.true.146
  %125 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i8, i8* %125, i64 5
  %126 = load i8, i8* %arrayidx152, align 1, !tbaa !22
  %conv153 = zext i8 %126 to i32
  switch i32 %conv153, label %sw.default [
    i32 16, label %sw.bb
    i32 17, label %sw.bb.163
    i32 19, label %sw.bb.173
  ]

sw.bb:                                            ; preds = %if.then.151
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err154 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 0
  %128 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err154, align 8, !tbaa !11
  %msg_code155 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %128, i32 0, i32 5
  store i32 110, i32* %msg_code155, align 4, !tbaa !12
  %129 = load i64, i64* %totallen, align 8, !tbaa !20
  %conv156 = trunc i64 %129 to i32
  %130 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err157 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %130, i32 0, i32 0
  %131 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err157, align 8, !tbaa !11
  %msg_parm158 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %131, i32 0, i32 6
  %i159 = bitcast %union.anon* %msg_parm158 to [8 x i32]*
  %arrayidx160 = getelementptr inbounds [8 x i32], [8 x i32]* %i159, i32 0, i64 0
  store i32 %conv156, i32* %arrayidx160, align 4, !tbaa !5
  %132 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err161 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %132, i32 0, i32 0
  %133 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err161, align 8, !tbaa !11
  %emit_message162 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %133, i32 0, i32 1
  %134 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message162, align 8, !tbaa !15
  %135 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %136 = bitcast %struct.jpeg_decompress_struct* %135 to %struct.jpeg_common_struct*
  call void %134(%struct.jpeg_common_struct* %136, i32 1) #4
  br label %sw.epilog

sw.bb.163:                                        ; preds = %if.then.151
  %137 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err164 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %137, i32 0, i32 0
  %138 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err164, align 8, !tbaa !11
  %msg_code165 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %138, i32 0, i32 5
  store i32 111, i32* %msg_code165, align 4, !tbaa !12
  %139 = load i64, i64* %totallen, align 8, !tbaa !20
  %conv166 = trunc i64 %139 to i32
  %140 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err167 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %140, i32 0, i32 0
  %141 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err167, align 8, !tbaa !11
  %msg_parm168 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %141, i32 0, i32 6
  %i169 = bitcast %union.anon* %msg_parm168 to [8 x i32]*
  %arrayidx170 = getelementptr inbounds [8 x i32], [8 x i32]* %i169, i32 0, i64 0
  store i32 %conv166, i32* %arrayidx170, align 4, !tbaa !5
  %142 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err171 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %142, i32 0, i32 0
  %143 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err171, align 8, !tbaa !11
  %emit_message172 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %143, i32 0, i32 1
  %144 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message172, align 8, !tbaa !15
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %146 = bitcast %struct.jpeg_decompress_struct* %145 to %struct.jpeg_common_struct*
  call void %144(%struct.jpeg_common_struct* %146, i32 1) #4
  br label %sw.epilog

sw.bb.173:                                        ; preds = %if.then.151
  %147 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err174 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %147, i32 0, i32 0
  %148 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err174, align 8, !tbaa !11
  %msg_code175 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %148, i32 0, i32 5
  store i32 112, i32* %msg_code175, align 4, !tbaa !12
  %149 = load i64, i64* %totallen, align 8, !tbaa !20
  %conv176 = trunc i64 %149 to i32
  %150 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err177 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %150, i32 0, i32 0
  %151 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err177, align 8, !tbaa !11
  %msg_parm178 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %151, i32 0, i32 6
  %i179 = bitcast %union.anon* %msg_parm178 to [8 x i32]*
  %arrayidx180 = getelementptr inbounds [8 x i32], [8 x i32]* %i179, i32 0, i64 0
  store i32 %conv176, i32* %arrayidx180, align 4, !tbaa !5
  %152 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err181 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %152, i32 0, i32 0
  %153 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err181, align 8, !tbaa !11
  %emit_message182 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %153, i32 0, i32 1
  %154 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message182, align 8, !tbaa !15
  %155 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %156 = bitcast %struct.jpeg_decompress_struct* %155 to %struct.jpeg_common_struct*
  call void %154(%struct.jpeg_common_struct* %156, i32 1) #4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.151
  %157 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err183 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %157, i32 0, i32 0
  %158 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err183, align 8, !tbaa !11
  %msg_code184 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %158, i32 0, i32 5
  store i32 91, i32* %msg_code184, align 4, !tbaa !12
  %159 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i8, i8* %159, i64 5
  %160 = load i8, i8* %arrayidx185, align 1, !tbaa !22
  %conv186 = zext i8 %160 to i32
  %161 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err187 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %161, i32 0, i32 0
  %162 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err187, align 8, !tbaa !11
  %msg_parm188 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %162, i32 0, i32 6
  %i189 = bitcast %union.anon* %msg_parm188 to [8 x i32]*
  %arrayidx190 = getelementptr inbounds [8 x i32], [8 x i32]* %i189, i32 0, i64 0
  store i32 %conv186, i32* %arrayidx190, align 4, !tbaa !5
  %163 = load i64, i64* %totallen, align 8, !tbaa !20
  %conv191 = trunc i64 %163 to i32
  %164 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err192 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %164, i32 0, i32 0
  %165 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err192, align 8, !tbaa !11
  %msg_parm193 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %165, i32 0, i32 6
  %i194 = bitcast %union.anon* %msg_parm193 to [8 x i32]*
  %arrayidx195 = getelementptr inbounds [8 x i32], [8 x i32]* %i194, i32 0, i64 1
  store i32 %conv191, i32* %arrayidx195, align 4, !tbaa !5
  %166 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err196 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %166, i32 0, i32 0
  %167 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err196, align 8, !tbaa !11
  %emit_message197 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %167, i32 0, i32 1
  %168 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message197, align 8, !tbaa !15
  %169 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %170 = bitcast %struct.jpeg_decompress_struct* %169 to %struct.jpeg_common_struct*
  call void %168(%struct.jpeg_common_struct* %170, i32 1) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.173, %sw.bb.163, %sw.bb
  br label %if.end.208

if.else.198:                                      ; preds = %land.lhs.true.146, %land.lhs.true.141, %land.lhs.true.136, %land.lhs.true.131, %land.lhs.true.126, %if.else
  %171 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err199 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %171, i32 0, i32 0
  %172 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err199, align 8, !tbaa !11
  %msg_code200 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %172, i32 0, i32 5
  store i32 79, i32* %msg_code200, align 4, !tbaa !12
  %173 = load i64, i64* %totallen, align 8, !tbaa !20
  %conv201 = trunc i64 %173 to i32
  %174 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err202 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %174, i32 0, i32 0
  %175 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err202, align 8, !tbaa !11
  %msg_parm203 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %175, i32 0, i32 6
  %i204 = bitcast %union.anon* %msg_parm203 to [8 x i32]*
  %arrayidx205 = getelementptr inbounds [8 x i32], [8 x i32]* %i204, i32 0, i64 0
  store i32 %conv201, i32* %arrayidx205, align 4, !tbaa !5
  %176 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err206 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %176, i32 0, i32 0
  %177 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err206, align 8, !tbaa !11
  %emit_message207 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %177, i32 0, i32 1
  %178 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message207, align 8, !tbaa !15
  %179 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %180 = bitcast %struct.jpeg_decompress_struct* %179 to %struct.jpeg_common_struct*
  call void %178(%struct.jpeg_common_struct* %180, i32 1) #4
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.198, %sw.epilog
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.123
  %181 = bitcast i64* %totallen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @examine_app14(%struct.jpeg_decompress_struct* %cinfo, i8* %data, i32 %datalen, i64 %remaining) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %data.addr = alloca i8*, align 8
  %datalen.addr = alloca i32, align 4
  %remaining.addr = alloca i64, align 8
  %version = alloca i32, align 4
  %flags0 = alloca i32, align 4
  %flags1 = alloca i32, align 4
  %transform = alloca i32, align 4
  %_mp = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %datalen, i32* %datalen.addr, align 4, !tbaa !5
  store i64 %remaining, i64* %remaining.addr, align 8, !tbaa !20
  %0 = bitcast i32* %version to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %flags0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %flags1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %transform to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %datalen.addr, align 4, !tbaa !5
  %cmp = icmp uge i32 %4, 12
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 65
  br i1 %cmp1, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %7 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx4, align 1, !tbaa !22
  %conv5 = zext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 100
  br i1 %cmp6, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %land.lhs.true.3
  %9 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load i8, i8* %arrayidx9, align 1, !tbaa !22
  %conv10 = zext i8 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 111
  br i1 %cmp11, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %land.lhs.true.8
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %11, i64 3
  %12 = load i8, i8* %arrayidx14, align 1, !tbaa !22
  %conv15 = zext i8 %12 to i32
  %cmp16 = icmp eq i32 %conv15, 98
  br i1 %cmp16, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %land.lhs.true.13
  %13 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %13, i64 4
  %14 = load i8, i8* %arrayidx19, align 1, !tbaa !22
  %conv20 = zext i8 %14 to i32
  %cmp21 = icmp eq i32 %conv20, 101
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.18
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %15, i64 5
  %16 = load i8, i8* %arrayidx23, align 1, !tbaa !22
  %conv24 = zext i8 %16 to i32
  %shl = shl i32 %conv24, 8
  %17 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %17, i64 6
  %18 = load i8, i8* %arrayidx25, align 1, !tbaa !22
  %conv26 = zext i8 %18 to i32
  %add = add nsw i32 %shl, %conv26
  store i32 %add, i32* %version, align 4, !tbaa !5
  %19 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %19, i64 7
  %20 = load i8, i8* %arrayidx27, align 1, !tbaa !22
  %conv28 = zext i8 %20 to i32
  %shl29 = shl i32 %conv28, 8
  %21 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %21, i64 8
  %22 = load i8, i8* %arrayidx30, align 1, !tbaa !22
  %conv31 = zext i8 %22 to i32
  %add32 = add nsw i32 %shl29, %conv31
  store i32 %add32, i32* %flags0, align 4, !tbaa !5
  %23 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %23, i64 9
  %24 = load i8, i8* %arrayidx33, align 1, !tbaa !22
  %conv34 = zext i8 %24 to i32
  %shl35 = shl i32 %conv34, 8
  %25 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %25, i64 10
  %26 = load i8, i8* %arrayidx36, align 1, !tbaa !22
  %conv37 = zext i8 %26 to i32
  %add38 = add nsw i32 %shl35, %conv37
  store i32 %add38, i32* %flags1, align 4, !tbaa !5
  %27 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %27, i64 11
  %28 = load i8, i8* %arrayidx39, align 1, !tbaa !22
  %conv40 = zext i8 %28 to i32
  store i32 %conv40, i32* %transform, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.then
  %29 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8, !tbaa !1
  %32 = load i32, i32* %version, align 4, !tbaa !5
  %33 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %32, i32* %arrayidx41, align 4, !tbaa !5
  %34 = load i32, i32* %flags0, align 4, !tbaa !5
  %35 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %34, i32* %arrayidx42, align 4, !tbaa !5
  %36 = load i32, i32* %flags1, align 4, !tbaa !5
  %37 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %36, i32* %arrayidx43, align 4, !tbaa !5
  %38 = load i32, i32* %transform, align 4, !tbaa !5
  %39 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %38, i32* %arrayidx44, align 4, !tbaa !5
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err45, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 5
  store i32 78, i32* %msg_code, align 4, !tbaa !12
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8, !tbaa !11
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 1
  %44 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !15
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %46 = bitcast %struct.jpeg_decompress_struct* %45 to %struct.jpeg_common_struct*
  call void %44(%struct.jpeg_common_struct* %46, i32 1) #4
  %47 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 58
  store i32 1, i32* %saw_Adobe_marker, align 4, !tbaa !66
  %49 = load i32, i32* %transform, align 4, !tbaa !5
  %conv47 = trunc i32 %49 to i8
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 59
  store i8 %conv47, i8* %Adobe_transform, align 1, !tbaa !67
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.18, %land.lhs.true.13, %land.lhs.true.8, %land.lhs.true.3, %land.lhs.true, %entry
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8, !tbaa !11
  %msg_code49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i32 0, i32 5
  store i32 80, i32* %msg_code49, align 4, !tbaa !12
  %53 = load i32, i32* %datalen.addr, align 4, !tbaa !5
  %conv50 = zext i32 %53 to i64
  %54 = load i64, i64* %remaining.addr, align 8, !tbaa !20
  %add51 = add nsw i64 %conv50, %54
  %conv52 = trunc i64 %add51 to i32
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err53, align 8, !tbaa !11
  %msg_parm54 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 6
  %i55 = bitcast %union.anon* %msg_parm54 to [8 x i32]*
  %arrayidx56 = getelementptr inbounds [8 x i32], [8 x i32]* %i55, i32 0, i64 0
  store i32 %conv52, i32* %arrayidx56, align 4, !tbaa !5
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8, !tbaa !11
  %emit_message58 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 1
  %59 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message58, align 8, !tbaa !15
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %61 = bitcast %struct.jpeg_decompress_struct* %60 to %struct.jpeg_common_struct*
  call void %59(%struct.jpeg_common_struct* %61, i32 1) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %62 = bitcast i32* %transform to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %flags1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %flags0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %version to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !6, i64 788}
!8 = !{!"jpeg_decompress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !6, i64 36, !2, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !3, i64 60, !3, i64 64, !6, i64 68, !6, i64 72, !9, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !6, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !2, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !2, i64 192, !3, i64 200, !3, i64 232, !3, i64 264, !6, i64 296, !2, i64 304, !3, i64 312, !3, i64 316, !3, i64 320, !3, i64 324, !3, i64 340, !3, i64 356, !6, i64 372, !3, i64 376, !3, i64 380, !3, i64 381, !3, i64 382, !10, i64 384, !10, i64 386, !3, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !2, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !6, i64 428, !6, i64 432, !2, i64 440, !6, i64 448, !3, i64 456, !6, i64 488, !6, i64 492, !6, i64 496, !3, i64 500, !6, i64 756, !6, i64 760, !6, i64 764, !6, i64 768, !6, i64 772, !2, i64 776, !6, i64 784, !6, i64 788, !2, i64 792, !2, i64 800, !2, i64 808, !2, i64 816, !2, i64 824, !2, i64 832, !2, i64 840, !2, i64 848, !2, i64 856, !2, i64 864, !2, i64 872}
!9 = !{!"double", !3, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!8, !2, i64 0}
!12 = !{!13, !6, i64 40}
!13 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !3, i64 44, !6, i64 124, !14, i64 128, !2, i64 136, !6, i64 144, !2, i64 152, !6, i64 160, !6, i64 164}
!14 = !{!"long", !3, i64 0}
!15 = !{!13, !2, i64 8}
!16 = !{!8, !2, i64 40}
!17 = !{!18, !2, i64 0}
!18 = !{!"jpeg_source_mgr", !2, i64 0, !14, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!19 = !{!18, !14, i64 8}
!20 = !{!14, !14, i64 0}
!21 = !{!18, !2, i64 24}
!22 = !{!3, !3, i64 0}
!23 = !{!8, !2, i64 832}
!24 = !{!25, !6, i64 36}
!25 = !{!"jpeg_marker_reader", !2, i64 0, !2, i64 8, !2, i64 16, !3, i64 24, !3, i64 28, !6, i64 32, !6, i64 36}
!26 = !{!8, !2, i64 8}
!27 = !{!28, !2, i64 0}
!28 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !14, i64 88, !14, i64 96}
!29 = !{!30, !2, i64 0}
!30 = !{!"", !25, i64 0, !2, i64 40, !3, i64 48, !6, i64 176, !3, i64 180, !2, i64 248, !6, i64 256}
!31 = !{!30, !2, i64 8}
!32 = !{!30, !2, i64 16}
!33 = !{!30, !2, i64 40}
!34 = !{!30, !6, i64 176}
!35 = !{!8, !2, i64 304}
!36 = !{!8, !6, i64 172}
!37 = !{!30, !3, i64 24}
!38 = !{!30, !3, i64 28}
!39 = !{!30, !6, i64 36}
!40 = !{!30, !2, i64 248}
!41 = !{!25, !3, i64 24}
!42 = !{!13, !2, i64 0}
!43 = !{!25, !6, i64 32}
!44 = !{!18, !2, i64 40}
!45 = !{!18, !2, i64 32}
!46 = !{!28, !14, i64 96}
!47 = !{!28, !2, i64 8}
!48 = !{!49, !2, i64 0}
!49 = !{!"jpeg_marker_struct", !2, i64 0, !3, i64 8, !6, i64 12, !6, i64 16, !2, i64 24}
!50 = !{!49, !3, i64 8}
!51 = !{!49, !6, i64 12}
!52 = !{!49, !6, i64 16}
!53 = !{!49, !2, i64 24}
!54 = !{!30, !6, i64 256}
!55 = !{!8, !2, i64 408}
!56 = !{!8, !6, i64 372}
!57 = !{!8, !3, i64 60}
!58 = !{!8, !3, i64 396}
!59 = !{!8, !3, i64 400}
!60 = !{!8, !3, i64 376}
!61 = !{!8, !3, i64 380}
!62 = !{!8, !3, i64 381}
!63 = !{!8, !3, i64 382}
!64 = !{!8, !10, i64 384}
!65 = !{!8, !10, i64 386}
!66 = !{!8, !3, i64 388}
!67 = !{!8, !3, i64 392}
!68 = !{!8, !3, i64 312}
!69 = !{!8, !3, i64 316}
!70 = !{!8, !3, i64 320}
!71 = !{!8, !6, i64 296}
!72 = !{!8, !6, i64 52}
!73 = !{!8, !6, i64 48}
!74 = !{!8, !6, i64 56}
!75 = !{!25, !3, i64 28}
!76 = !{!77, !6, i64 0}
!77 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !3, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !2, i64 80, !2, i64 88}
!78 = !{!77, !6, i64 4}
!79 = !{!77, !6, i64 8}
!80 = !{!77, !6, i64 12}
!81 = !{!77, !6, i64 16}
!82 = !{!8, !6, i64 448}
!83 = !{!77, !6, i64 20}
!84 = !{!77, !6, i64 24}
!85 = !{!8, !6, i64 756}
!86 = !{!8, !6, i64 760}
!87 = !{!8, !6, i64 764}
!88 = !{!8, !6, i64 768}
!89 = !{!10, !10, i64 0}
!90 = !{!13, !6, i64 124}
