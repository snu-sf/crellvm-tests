; ModuleID = './MultiSource.Benchmarks.MiBench/137.consumer-jpeg.jdmarker.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, {}*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define i32 @jpeg_resync_to_restart(%struct.jpeg_decompress_struct* %cinfo, i32 %desired) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %desired.addr = alloca i32, align 4
  %marker = alloca i32, align 4
  %action = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %desired, i32* %desired.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 72
  %1 = load i32, i32* %unread_marker, align 4
  store i32 %1, i32* %marker, align 4
  store i32 1, i32* %action, align 4
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 117, i32* %msg_code, align 4
  %4 = load i32, i32* %marker, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %4, i32* %arrayidx, align 4
  %7 = load i32, i32* %desired.addr, align 4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %msg_parm3 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i4 = bitcast %union.anon* %msg_parm3 to [8 x i32]*
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %i4, i32 0, i64 1
  store i32 %7, i32* %arrayidx5, align 4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 1
  %12 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14, i32 -1)
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %15 = load i32, i32* %marker, align 4
  %cmp = icmp slt i32 %15, 192
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  store i32 2, i32* %action, align 4
  br label %if.end.32

if.else:                                          ; preds = %for.cond
  %16 = load i32, i32* %marker, align 4
  %cmp7 = icmp slt i32 %16, 208
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %17 = load i32, i32* %marker, align 4
  %cmp8 = icmp sgt i32 %17, 215
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.else
  store i32 3, i32* %action, align 4
  br label %if.end.31

if.else.10:                                       ; preds = %lor.lhs.false
  %18 = load i32, i32* %marker, align 4
  %19 = load i32, i32* %desired.addr, align 4
  %add = add nsw i32 %19, 1
  %and = and i32 %add, 7
  %add11 = add nsw i32 208, %and
  %cmp12 = icmp eq i32 %18, %add11
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.else.10
  %20 = load i32, i32* %marker, align 4
  %21 = load i32, i32* %desired.addr, align 4
  %add14 = add nsw i32 %21, 2
  %and15 = and i32 %add14, 7
  %add16 = add nsw i32 208, %and15
  %cmp17 = icmp eq i32 %20, %add16
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %lor.lhs.false.13, %if.else.10
  store i32 3, i32* %action, align 4
  br label %if.end.30

if.else.19:                                       ; preds = %lor.lhs.false.13
  %22 = load i32, i32* %marker, align 4
  %23 = load i32, i32* %desired.addr, align 4
  %sub = sub nsw i32 %23, 1
  %and20 = and i32 %sub, 7
  %add21 = add nsw i32 208, %and20
  %cmp22 = icmp eq i32 %22, %add21
  br i1 %cmp22, label %if.then.28, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.else.19
  %24 = load i32, i32* %marker, align 4
  %25 = load i32, i32* %desired.addr, align 4
  %sub24 = sub nsw i32 %25, 2
  %and25 = and i32 %sub24, 7
  %add26 = add nsw i32 208, %and25
  %cmp27 = icmp eq i32 %24, %add26
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %lor.lhs.false.23, %if.else.19
  store i32 2, i32* %action, align 4
  br label %if.end

if.else.29:                                       ; preds = %lor.lhs.false.23
  store i32 1, i32* %action, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.29, %if.then.28
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then.18
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.9
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8
  %msg_code34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 5
  store i32 96, i32* %msg_code34, align 4
  %28 = load i32, i32* %marker, align 4
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8
  %msg_parm36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 6
  %i37 = bitcast %union.anon* %msg_parm36 to [8 x i32]*
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* %i37, i32 0, i64 0
  store i32 %28, i32* %arrayidx38, align 4
  %31 = load i32, i32* %action, align 4
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8
  %msg_parm40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 6
  %i41 = bitcast %union.anon* %msg_parm40 to [8 x i32]*
  %arrayidx42 = getelementptr inbounds [8 x i32], [8 x i32]* %i41, i32 0, i64 1
  store i32 %31, i32* %arrayidx42, align 4
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err43, align 8
  %emit_message44 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 1
  %36 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message44, align 8
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %38 = bitcast %struct.jpeg_decompress_struct* %37 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* %38, i32 4)
  %39 = load i32, i32* %action, align 4
  switch i32 %39, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.46
    i32 3, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %if.end.32
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 72
  store i32 0, i32* %unread_marker45, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.46:                                         ; preds = %if.end.32
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 @next_marker(%struct.jpeg_decompress_struct* %41)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %sw.bb.46
  store i32 0, i32* %retval
  br label %return

if.end.48:                                        ; preds = %sw.bb.46
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 72
  %43 = load i32, i32* %unread_marker49, align 4
  store i32 %43, i32* %marker, align 4
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.32
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.32, %if.end.48
  br label %for.cond

return:                                           ; preds = %sw.bb.50, %if.then.47, %sw.bb
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @next_marker(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %c = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  store %struct.jpeg_source_mgr* %1, %struct.jpeg_source_mgr** %datasrc, align 8
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %2, i32 0, i32 0
  %3 = load i8*, i8** %next_input_byte1, align 8
  store i8* %3, i8** %next_input_byte, align 8
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %4, i32 0, i32 1
  %5 = load i64, i64* %bytes_in_buffer2, align 8
  store i64 %5, i64* %bytes_in_buffer, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.50, %entry
  br label %do.body

do.body:                                          ; preds = %for.cond
  %6 = load i64, i64* %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 3
  %8 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %8(%struct.jpeg_decompress_struct* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 0
  %11 = load i8*, i8** %next_input_byte4, align 8
  store i8* %11, i8** %next_input_byte, align 8
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %bytes_in_buffer5, align 8
  store i64 %13, i64* %bytes_in_buffer, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %14 = load i64, i64* %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8
  %15 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  store i32 %conv, i32* %c, align 4
  br label %do.end

do.end:                                           ; preds = %if.end.6
  br label %while.cond

while.cond:                                       ; preds = %do.end.26, %do.end
  %17 = load i32, i32* %c, align 4
  %cmp7 = icmp ne i32 %17, 255
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 78
  %19 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %19, i32 0, i32 8
  %20 = load i32, i32* %discarded_bytes, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %discarded_bytes, align 4
  %21 = load i8*, i8** %next_input_byte, align 8
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte9 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 0
  store i8* %21, i8** %next_input_byte9, align 8
  %23 = load i64, i64* %bytes_in_buffer, align 8
  %24 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer10 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %24, i32 0, i32 1
  store i64 %23, i64* %bytes_in_buffer10, align 8
  br label %do.body.11

do.body.11:                                       ; preds = %while.body
  %25 = load i64, i64* %bytes_in_buffer, align 8
  %cmp12 = icmp eq i64 %25, 0
  br i1 %cmp12, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %do.body.11
  %26 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer15 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %26, i32 0, i32 3
  %27 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer15, align 8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call16 = call i32 %27(%struct.jpeg_decompress_struct* %28)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.14
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.14
  %29 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte20 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %29, i32 0, i32 0
  %30 = load i8*, i8** %next_input_byte20, align 8
  store i8* %30, i8** %next_input_byte, align 8
  %31 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer21 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %31, i32 0, i32 1
  %32 = load i64, i64* %bytes_in_buffer21, align 8
  store i64 %32, i64* %bytes_in_buffer, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %do.body.11
  %33 = load i64, i64* %bytes_in_buffer, align 8
  %dec23 = add i64 %33, -1
  store i64 %dec23, i64* %bytes_in_buffer, align 8
  %34 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr24, i8** %next_input_byte, align 8
  %35 = load i8, i8* %34, align 1
  %conv25 = zext i8 %35 to i32
  store i32 %conv25, i32* %c, align 4
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.22
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.27

do.body.27:                                       ; preds = %do.cond, %while.end
  br label %do.body.28

do.body.28:                                       ; preds = %do.body.27
  %36 = load i64, i64* %bytes_in_buffer, align 8
  %cmp29 = icmp eq i64 %36, 0
  br i1 %cmp29, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %do.body.28
  %37 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer32 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %37, i32 0, i32 3
  %38 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer32, align 8
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call33 = call i32 %38(%struct.jpeg_decompress_struct* %39)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.then.31
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.then.31
  %40 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte37 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %40, i32 0, i32 0
  %41 = load i8*, i8** %next_input_byte37, align 8
  store i8* %41, i8** %next_input_byte, align 8
  %42 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer38 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %42, i32 0, i32 1
  %43 = load i64, i64* %bytes_in_buffer38, align 8
  store i64 %43, i64* %bytes_in_buffer, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.36, %do.body.28
  %44 = load i64, i64* %bytes_in_buffer, align 8
  %dec40 = add i64 %44, -1
  store i64 %dec40, i64* %bytes_in_buffer, align 8
  %45 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr41, i8** %next_input_byte, align 8
  %46 = load i8, i8* %45, align 1
  %conv42 = zext i8 %46 to i32
  store i32 %conv42, i32* %c, align 4
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.39
  br label %do.cond

do.cond:                                          ; preds = %do.end.43
  %47 = load i32, i32* %c, align 4
  %cmp44 = icmp eq i32 %47, 255
  br i1 %cmp44, label %do.body.27, label %do.end.46

do.end.46:                                        ; preds = %do.cond
  %48 = load i32, i32* %c, align 4
  %cmp47 = icmp ne i32 %48, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %do.end.46
  br label %for.end

if.end.50:                                        ; preds = %do.end.46
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 78
  %50 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker51, align 8
  %discarded_bytes52 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %50, i32 0, i32 8
  %51 = load i32, i32* %discarded_bytes52, align 4
  %add = add i32 %51, 2
  store i32 %add, i32* %discarded_bytes52, align 4
  %52 = load i8*, i8** %next_input_byte, align 8
  %53 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte53 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %53, i32 0, i32 0
  store i8* %52, i8** %next_input_byte53, align 8
  %54 = load i64, i64* %bytes_in_buffer, align 8
  %55 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer54 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %55, i32 0, i32 1
  store i64 %54, i64* %bytes_in_buffer54, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.49
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 78
  %57 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker55, align 8
  %discarded_bytes56 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %57, i32 0, i32 8
  %58 = load i32, i32* %discarded_bytes56, align 4
  %cmp57 = icmp ne i32 %58, 0
  br i1 %cmp57, label %if.then.59, label %if.end.70

if.then.59:                                       ; preds = %for.end
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 5
  store i32 112, i32* %msg_code, align 4
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 78
  %62 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker60, align 8
  %discarded_bytes61 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %62, i32 0, i32 8
  %63 = load i32, i32* %discarded_bytes61, align 4
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err62, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %63, i32* %arrayidx, align 4
  %66 = load i32, i32* %c, align 4
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err63, align 8
  %msg_parm64 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 6
  %i65 = bitcast %union.anon* %msg_parm64 to [8 x i32]*
  %arrayidx66 = getelementptr inbounds [8 x i32], [8 x i32]* %i65, i32 0, i64 1
  store i32 %66, i32* %arrayidx66, align 4
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err67, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 1
  %71 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %73 = bitcast %struct.jpeg_decompress_struct* %72 to %struct.jpeg_common_struct*
  call void %71(%struct.jpeg_common_struct* %73, i32 -1)
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 78
  %75 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker68, align 8
  %discarded_bytes69 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %75, i32 0, i32 8
  store i32 0, i32* %discarded_bytes69, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.59, %for.end
  %76 = load i32, i32* %c, align 4
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 72
  store i32 %76, i32* %unread_marker, align 4
  %78 = load i8*, i8** %next_input_byte, align 8
  %79 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte71 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %79, i32 0, i32 0
  store i8* %78, i8** %next_input_byte71, align 8
  %80 = load i64, i64* %bytes_in_buffer, align 8
  %81 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer72 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %81, i32 0, i32 1
  store i64 %80, i64* %bytes_in_buffer72, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.then.35, %if.then.18, %if.then.3
  %82 = load i32, i32* %retval
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define void @jinit_marker_reader(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 0, i64 176)
  %5 = bitcast i8* %call to %struct.jpeg_marker_reader*
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 78
  store %struct.jpeg_marker_reader* %5, %struct.jpeg_marker_reader** %marker, align 8
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 78
  %8 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker1, align 8
  %reset_marker_reader = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %8, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*)* @reset_marker_reader, void (%struct.jpeg_decompress_struct*)** %reset_marker_reader, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 78
  %10 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker2, align 8
  %read_markers = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %10, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*)* @read_markers, i32 (%struct.jpeg_decompress_struct*)** %read_markers, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 78
  %12 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker3, align 8
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %12, i32 0, i32 2
  store i32 (%struct.jpeg_decompress_struct*)* @read_restart_marker, i32 (%struct.jpeg_decompress_struct*)** %read_restart_marker, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 78
  %14 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker4, align 8
  %process_COM = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %14, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*)* @skip_variable, i32 (%struct.jpeg_decompress_struct*)** %process_COM, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %15, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 78
  %18 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker5, align 8
  %process_APPn = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %18, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn, i32 0, i64 %idxprom
  store i32 (%struct.jpeg_decompress_struct*)* @skip_variable, i32 (%struct.jpeg_decompress_struct*)** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 78
  %21 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker6, align 8
  %process_APPn7 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %21, i32 0, i32 4
  %arrayidx8 = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn7, i32 0, i64 0
  store i32 (%struct.jpeg_decompress_struct*)* @get_app0, i32 (%struct.jpeg_decompress_struct*)** %arrayidx8, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 78
  %23 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker9, align 8
  %process_APPn10 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %23, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn10, i32 0, i64 14
  store i32 (%struct.jpeg_decompress_struct*)* @get_app14, i32 (%struct.jpeg_decompress_struct*)** %arrayidx11, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @reset_marker_reader(%struct.jpeg_decompress_struct* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reset_marker_reader(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 43
  store %struct.jpeg_component_info* null, %struct.jpeg_component_info** %comp_info, align 8
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 34
  store i32 0, i32* %input_scan_number, align 4
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 72
  store i32 0, i32* %unread_marker, align 4
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 78
  %4 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %4, i32 0, i32 5
  store i32 0, i32* %saw_SOI, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 78
  %6 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker1, align 8
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %6, i32 0, i32 6
  store i32 0, i32* %saw_SOF, align 4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 78
  %8 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker2, align 8
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %8, i32 0, i32 8
  store i32 0, i32* %discarded_bytes, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @read_markers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 72
  %1 = load i32, i32* %unread_marker, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.cond
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 78
  %3 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %3, i32 0, i32 5
  %4 = load i32, i32* %saw_SOI, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 @first_marker(%struct.jpeg_decompress_struct* %5)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then.1
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.1
  br label %if.end.8

if.else:                                          ; preds = %if.then
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call4 = call i32 @next_marker(%struct.jpeg_decompress_struct* %6)
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
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 72
  %8 = load i32, i32* %unread_marker10, align 4
  switch i32 %8, label %sw.default [
    i32 216, label %sw.bb
    i32 192, label %sw.bb.15
    i32 193, label %sw.bb.15
    i32 194, label %sw.bb.20
    i32 201, label %sw.bb.25
    i32 202, label %sw.bb.30
    i32 195, label %sw.bb.35
    i32 197, label %sw.bb.35
    i32 198, label %sw.bb.35
    i32 199, label %sw.bb.35
    i32 200, label %sw.bb.35
    i32 203, label %sw.bb.35
    i32 205, label %sw.bb.35
    i32 206, label %sw.bb.35
    i32 207, label %sw.bb.35
    i32 218, label %sw.bb.39
    i32 217, label %sw.bb.45
    i32 204, label %sw.bb.50
    i32 196, label %sw.bb.55
    i32 219, label %sw.bb.60
    i32 221, label %sw.bb.65
    i32 224, label %sw.bb.70
    i32 225, label %sw.bb.70
    i32 226, label %sw.bb.70
    i32 227, label %sw.bb.70
    i32 228, label %sw.bb.70
    i32 229, label %sw.bb.70
    i32 230, label %sw.bb.70
    i32 231, label %sw.bb.70
    i32 232, label %sw.bb.70
    i32 233, label %sw.bb.70
    i32 234, label %sw.bb.70
    i32 235, label %sw.bb.70
    i32 236, label %sw.bb.70
    i32 237, label %sw.bb.70
    i32 238, label %sw.bb.70
    i32 239, label %sw.bb.70
    i32 254, label %sw.bb.78
    i32 208, label %sw.bb.84
    i32 209, label %sw.bb.84
    i32 210, label %sw.bb.84
    i32 211, label %sw.bb.84
    i32 212, label %sw.bb.84
    i32 213, label %sw.bb.84
    i32 214, label %sw.bb.84
    i32 215, label %sw.bb.84
    i32 1, label %sw.bb.84
    i32 220, label %sw.bb.94
  ]

sw.bb:                                            ; preds = %if.end.9
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call11 = call i32 @get_soi(%struct.jpeg_decompress_struct* %9)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end.9, %if.end.9
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call16 = call i32 @get_sof(%struct.jpeg_decompress_struct* %10, i32 0, i32 0)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %sw.bb.15
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %sw.bb.15
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end.9
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call21 = call i32 @get_sof(%struct.jpeg_decompress_struct* %11, i32 1, i32 0)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %sw.bb.20
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %sw.bb.20
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.9
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call26 = call i32 @get_sof(%struct.jpeg_decompress_struct* %12, i32 0, i32 1)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %sw.bb.25
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %sw.bb.25
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.9
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call31 = call i32 @get_sof(%struct.jpeg_decompress_struct* %13, i32 1, i32 1)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %sw.bb.30
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %sw.bb.30
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 59, i32* %msg_code, align 4
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 72
  %17 = load i32, i32* %unread_marker36, align 4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %17, i32* %arrayidx, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err38, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24)
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end.9
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call40 = call i32 @get_sos(%struct.jpeg_decompress_struct* %25)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %sw.bb.39
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %sw.bb.39
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 72
  store i32 0, i32* %unread_marker44, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.45:                                         ; preds = %if.end.9
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8
  %msg_code47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 5
  store i32 84, i32* %msg_code47, align 4
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 1
  %31 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %33 = bitcast %struct.jpeg_decompress_struct* %32 to %struct.jpeg_common_struct*
  call void %31(%struct.jpeg_common_struct* %33, i32 1)
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 72
  store i32 0, i32* %unread_marker49, align 4
  store i32 2, i32* %retval
  br label %return

sw.bb.50:                                         ; preds = %if.end.9
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call51 = call i32 @get_dac(%struct.jpeg_decompress_struct* %35)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %sw.bb.50
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %sw.bb.50
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.9
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call56 = call i32 @get_dht(%struct.jpeg_decompress_struct* %36)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %sw.bb.55
  store i32 0, i32* %retval
  br label %return

if.end.59:                                        ; preds = %sw.bb.55
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end.9
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call61 = call i32 @get_dqt(%struct.jpeg_decompress_struct* %37)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %sw.bb.60
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %sw.bb.60
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end.9
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call66 = call i32 @get_dri(%struct.jpeg_decompress_struct* %38)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %sw.bb.65
  store i32 0, i32* %retval
  br label %return

if.end.69:                                        ; preds = %sw.bb.65
  br label %sw.epilog

sw.bb.70:                                         ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 72
  %40 = load i32, i32* %unread_marker71, align 4
  %sub = sub nsw i32 %40, 224
  %idxprom = sext i32 %sub to i64
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 78
  %42 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker72, align 8
  %process_APPn = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %42, i32 0, i32 4
  %arrayidx73 = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn, i32 0, i64 %idxprom
  %43 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %arrayidx73, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call74 = call i32 %43(%struct.jpeg_decompress_struct* %44)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %sw.bb.70
  store i32 0, i32* %retval
  br label %return

if.end.77:                                        ; preds = %sw.bb.70
  br label %sw.epilog

sw.bb.78:                                         ; preds = %if.end.9
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 78
  %46 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker79, align 8
  %process_COM = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %46, i32 0, i32 3
  %47 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %process_COM, align 8
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call80 = call i32 %47(%struct.jpeg_decompress_struct* %48)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %sw.bb.78
  store i32 0, i32* %retval
  br label %return

if.end.83:                                        ; preds = %sw.bb.78
  br label %sw.epilog

sw.bb.84:                                         ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err85, align 8
  %msg_code86 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i32 0, i32 5
  store i32 91, i32* %msg_code86, align 4
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker87 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 72
  %52 = load i32, i32* %unread_marker87, align 4
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 0
  %54 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err88, align 8
  %msg_parm89 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %54, i32 0, i32 6
  %i90 = bitcast %union.anon* %msg_parm89 to [8 x i32]*
  %arrayidx91 = getelementptr inbounds [8 x i32], [8 x i32]* %i90, i32 0, i64 0
  store i32 %52, i32* %arrayidx91, align 4
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err92, align 8
  %emit_message93 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 1
  %57 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message93, align 8
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %59 = bitcast %struct.jpeg_decompress_struct* %58 to %struct.jpeg_common_struct*
  call void %57(%struct.jpeg_common_struct* %59, i32 1)
  br label %sw.epilog

sw.bb.94:                                         ; preds = %if.end.9
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call95 = call i32 @skip_variable(%struct.jpeg_decompress_struct* %60)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.end.98, label %if.then.97

if.then.97:                                       ; preds = %sw.bb.94
  store i32 0, i32* %retval
  br label %return

if.end.98:                                        ; preds = %sw.bb.94
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.9
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err99 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err99, align 8
  %msg_code100 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 5
  store i32 67, i32* %msg_code100, align 4
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 72
  %64 = load i32, i32* %unread_marker101, align 4
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err102, align 8
  %msg_parm103 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 6
  %i104 = bitcast %union.anon* %msg_parm103 to [8 x i32]*
  %arrayidx105 = getelementptr inbounds [8 x i32], [8 x i32]* %i104, i32 0, i64 0
  store i32 %64, i32* %arrayidx105, align 4
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err106 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err106, align 8
  %error_exit107 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 0
  %69 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit107, align 8
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %71 = bitcast %struct.jpeg_decompress_struct* %70 to %struct.jpeg_common_struct*
  call void %69(%struct.jpeg_common_struct* %71)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.98, %sw.bb.84, %if.end.83, %if.end.77, %if.end.69, %if.end.64, %if.end.59, %if.end.54, %sw.bb.35, %if.end.34, %if.end.29, %if.end.24, %if.end.19, %if.end.14
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker108 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 72
  store i32 0, i32* %unread_marker108, align 4
  br label %for.cond

return:                                           ; preds = %if.then.97, %if.then.82, %if.then.76, %if.then.68, %if.then.63, %if.then.58, %if.then.53, %sw.bb.45, %if.end.43, %if.then.42, %if.then.33, %if.then.28, %if.then.23, %if.then.18, %if.then.13, %if.then.6, %if.then.3
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal i32 @read_restart_marker(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 72
  %1 = load i32, i32* %unread_marker, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 @next_marker(%struct.jpeg_decompress_struct* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 72
  %4 = load i32, i32* %unread_marker3, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 78
  %6 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8
  %next_restart_num = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %6, i32 0, i32 7
  %7 = load i32, i32* %next_restart_num, align 4
  %add = add nsw i32 208, %7
  %cmp4 = icmp eq i32 %4, %add
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.2
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 97, i32* %msg_code, align 4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 78
  %11 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker6, align 8
  %next_restart_num7 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %11, i32 0, i32 7
  %12 = load i32, i32* %next_restart_num7, align 4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %12, i32* %arrayidx, align 4
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 1
  %17 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %19 = bitcast %struct.jpeg_decompress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19, i32 3)
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 72
  store i32 0, i32* %unread_marker10, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.end.2
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 5
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  %resync_to_restart = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 5
  %resync_to_restart11 = bitcast {}** %resync_to_restart to i32 (%struct.jpeg_decompress_struct*, i32)**
  %23 = load i32 (%struct.jpeg_decompress_struct*, i32)*, i32 (%struct.jpeg_decompress_struct*, i32)** %resync_to_restart11, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 78
  %26 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker12, align 8
  %next_restart_num13 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %26, i32 0, i32 7
  %27 = load i32, i32* %next_restart_num13, align 4
  %call14 = call i32 %23(%struct.jpeg_decompress_struct* %24, i32 %27)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.5
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 78
  %29 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker19, align 8
  %next_restart_num20 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %29, i32 0, i32 7
  %30 = load i32, i32* %next_restart_num20, align 4
  %add21 = add nsw i32 %30, 1
  %and = and i32 %add21, 7
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 78
  %32 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker22, align 8
  %next_restart_num23 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %32, i32 0, i32 7
  store i32 %and, i32* %next_restart_num23, align 4
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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  store %struct.jpeg_source_mgr* %1, %struct.jpeg_source_mgr** %datasrc, align 8
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %2, i32 0, i32 0
  %3 = load i8*, i8** %next_input_byte1, align 8
  store i8* %3, i8** %next_input_byte, align 8
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %4, i32 0, i32 1
  %5 = load i64, i64* %bytes_in_buffer2, align 8
  store i64 %5, i64* %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, i64* %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 3
  %8 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %8(%struct.jpeg_decompress_struct* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 0
  %11 = load i8*, i8** %next_input_byte4, align 8
  store i8* %11, i8** %next_input_byte, align 8
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %bytes_in_buffer5, align 8
  store i64 %13, i64* %bytes_in_buffer, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %14 = load i64, i64* %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8
  %15 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8
  %17 = load i64, i64* %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 3
  %19 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call12 = call i32 %19(%struct.jpeg_decompress_struct* %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.10
  %21 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %21, i32 0, i32 0
  %22 = load i8*, i8** %next_input_byte16, align 8
  store i8* %22, i8** %next_input_byte, align 8
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 1
  %24 = load i64, i64* %bytes_in_buffer17, align 8
  store i64 %24, i64* %bytes_in_buffer, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %25 = load i64, i64* %bytes_in_buffer, align 8
  %dec19 = add i64 %25, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8
  %26 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8
  %27 = load i8, i8* %26, align 1
  %conv21 = zext i8 %27 to i64
  %28 = load i64, i64* %length, align 8
  %add = add nsw i64 %28, %conv21
  store i64 %add, i64* %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 5
  store i32 90, i32* %msg_code, align 4
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 72
  %32 = load i32, i32* %unread_marker, align 4
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %32, i32* %arrayidx, align 4
  %35 = load i64, i64* %length, align 8
  %conv23 = trunc i64 %35 to i32
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err24, align 8
  %msg_parm25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 6
  %i26 = bitcast %union.anon* %msg_parm25 to [8 x i32]*
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* %i26, i32 0, i64 1
  store i32 %conv23, i32* %arrayidx27, align 4
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err28, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 1
  %40 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %42 = bitcast %struct.jpeg_decompress_struct* %41 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* %42, i32 1)
  %43 = load i8*, i8** %next_input_byte, align 8
  %44 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte29 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %44, i32 0, i32 0
  store i8* %43, i8** %next_input_byte29, align 8
  %45 = load i64, i64* %bytes_in_buffer, align 8
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer30 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 1
  store i64 %45, i64* %bytes_in_buffer30, align 8
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 5
  %48 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src31, align 8
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %48, i32 0, i32 4
  %49 = load void (%struct.jpeg_decompress_struct*, i64)*, void (%struct.jpeg_decompress_struct*, i64)** %skip_input_data, align 8
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %51 = load i64, i64* %length, align 8
  %sub = sub nsw i64 %51, 2
  call void %49(%struct.jpeg_decompress_struct* %50, i64 %sub)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.14, %if.then.3
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @get_app0(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %b = alloca [14 x i8], align 1
  %buffp = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %_mp = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  store %struct.jpeg_source_mgr* %1, %struct.jpeg_source_mgr** %datasrc, align 8
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %2, i32 0, i32 0
  %3 = load i8*, i8** %next_input_byte1, align 8
  store i8* %3, i8** %next_input_byte, align 8
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %4, i32 0, i32 1
  %5 = load i64, i64* %bytes_in_buffer2, align 8
  store i64 %5, i64* %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, i64* %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 3
  %8 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %8(%struct.jpeg_decompress_struct* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 0
  %11 = load i8*, i8** %next_input_byte4, align 8
  store i8* %11, i8** %next_input_byte, align 8
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %bytes_in_buffer5, align 8
  store i64 %13, i64* %bytes_in_buffer, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %14 = load i64, i64* %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8
  %15 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8
  %17 = load i64, i64* %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 3
  %19 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call12 = call i32 %19(%struct.jpeg_decompress_struct* %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.10
  %21 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %21, i32 0, i32 0
  %22 = load i8*, i8** %next_input_byte16, align 8
  store i8* %22, i8** %next_input_byte, align 8
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 1
  %24 = load i64, i64* %bytes_in_buffer17, align 8
  store i64 %24, i64* %bytes_in_buffer, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %25 = load i64, i64* %bytes_in_buffer, align 8
  %dec19 = add i64 %25, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8
  %26 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8
  %27 = load i8, i8* %26, align 1
  %conv21 = zext i8 %27 to i64
  %28 = load i64, i64* %length, align 8
  %add = add nsw i64 %28, %conv21
  store i64 %add, i64* %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %29 = load i64, i64* %length, align 8
  %sub = sub nsw i64 %29, 2
  store i64 %sub, i64* %length, align 8
  %30 = load i64, i64* %length, align 8
  %cmp22 = icmp sge i64 %30, 14
  br i1 %cmp22, label %if.then.24, label %if.else.192

if.then.24:                                       ; preds = %do.end
  store i32 0, i32* %buffp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.24
  %31 = load i32, i32* %buffp, align 4
  %cmp25 = icmp slt i32 %31, 14
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.27

do.body.27:                                       ; preds = %for.body
  %32 = load i64, i64* %bytes_in_buffer, align 8
  %cmp28 = icmp eq i64 %32, 0
  br i1 %cmp28, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %do.body.27
  %33 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer31 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %33, i32 0, i32 3
  %34 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer31, align 8
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call32 = call i32 %34(%struct.jpeg_decompress_struct* %35)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.30
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.30
  %36 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte36 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %36, i32 0, i32 0
  %37 = load i8*, i8** %next_input_byte36, align 8
  store i8* %37, i8** %next_input_byte, align 8
  %38 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %38, i32 0, i32 1
  %39 = load i64, i64* %bytes_in_buffer37, align 8
  store i64 %39, i64* %bytes_in_buffer, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.35, %do.body.27
  %40 = load i64, i64* %bytes_in_buffer, align 8
  %dec39 = add i64 %40, -1
  store i64 %dec39, i64* %bytes_in_buffer, align 8
  %41 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr40, i8** %next_input_byte, align 8
  %42 = load i8, i8* %41, align 1
  %43 = load i32, i32* %buffp, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 %idxprom
  store i8 %42, i8* %arrayidx, align 1
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.38
  br label %for.inc

for.inc:                                          ; preds = %do.end.41
  %44 = load i32, i32* %buffp, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %buffp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i64, i64* %length, align 8
  %sub42 = sub nsw i64 %45, 14
  store i64 %sub42, i64* %length, align 8
  %arrayidx43 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 0
  %46 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %46 to i32
  %cmp45 = icmp eq i32 %conv44, 74
  br i1 %cmp45, label %land.lhs.true, label %if.else.180

land.lhs.true:                                    ; preds = %for.end
  %arrayidx47 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 1
  %47 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %47 to i32
  %cmp49 = icmp eq i32 %conv48, 70
  br i1 %cmp49, label %land.lhs.true.51, label %if.else.180

land.lhs.true.51:                                 ; preds = %land.lhs.true
  %arrayidx52 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 2
  %48 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %48 to i32
  %cmp54 = icmp eq i32 %conv53, 73
  br i1 %cmp54, label %land.lhs.true.56, label %if.else.180

land.lhs.true.56:                                 ; preds = %land.lhs.true.51
  %arrayidx57 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 3
  %49 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %49 to i32
  %cmp59 = icmp eq i32 %conv58, 70
  br i1 %cmp59, label %land.lhs.true.61, label %if.else.180

land.lhs.true.61:                                 ; preds = %land.lhs.true.56
  %arrayidx62 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 4
  %50 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %50 to i32
  %cmp64 = icmp eq i32 %conv63, 0
  br i1 %cmp64, label %if.then.66, label %if.else.180

if.then.66:                                       ; preds = %land.lhs.true.61
  %arrayidx67 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 5
  %51 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %51 to i32
  %cmp69 = icmp ne i32 %conv68, 1
  br i1 %cmp69, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %if.then.66
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 5
  store i32 115, i32* %msg_code, align 4
  %arrayidx72 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 5
  %54 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %54 to i32
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err74 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err74, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx75 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %conv73, i32* %arrayidx75, align 4
  %arrayidx76 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 6
  %57 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %57 to i32
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err78, align 8
  %msg_parm79 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 6
  %i80 = bitcast %union.anon* %msg_parm79 to [8 x i32]*
  %arrayidx81 = getelementptr inbounds [8 x i32], [8 x i32]* %i80, i32 0, i64 1
  store i32 %conv77, i32* %arrayidx81, align 4
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err82 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err82, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 1
  %62 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %64 = bitcast %struct.jpeg_decompress_struct* %63 to %struct.jpeg_common_struct*
  call void %62(%struct.jpeg_common_struct* %64, i32 -1)
  br label %if.end.105

if.else:                                          ; preds = %if.then.66
  %arrayidx83 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 6
  %65 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %65 to i32
  %cmp85 = icmp sgt i32 %conv84, 2
  br i1 %cmp85, label %if.then.87, label %if.end.104

if.then.87:                                       ; preds = %if.else
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err88, align 8
  %msg_code89 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i32 0, i32 5
  store i32 88, i32* %msg_code89, align 4
  %arrayidx90 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 5
  %68 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %68 to i32
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err92, align 8
  %msg_parm93 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 6
  %i94 = bitcast %union.anon* %msg_parm93 to [8 x i32]*
  %arrayidx95 = getelementptr inbounds [8 x i32], [8 x i32]* %i94, i32 0, i64 0
  store i32 %conv91, i32* %arrayidx95, align 4
  %arrayidx96 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 6
  %71 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %71 to i32
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err98 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err98, align 8
  %msg_parm99 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i32 0, i32 6
  %i100 = bitcast %union.anon* %msg_parm99 to [8 x i32]*
  %arrayidx101 = getelementptr inbounds [8 x i32], [8 x i32]* %i100, i32 0, i64 1
  store i32 %conv97, i32* %arrayidx101, align 4
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 0
  %75 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err102, align 8
  %emit_message103 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %75, i32 0, i32 1
  %76 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message103, align 8
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %78 = bitcast %struct.jpeg_decompress_struct* %77 to %struct.jpeg_common_struct*
  call void %76(%struct.jpeg_common_struct* %78, i32 1)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.87, %if.else
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.71
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 50
  store i32 1, i32* %saw_JFIF_marker, align 4
  %arrayidx106 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 7
  %80 = load i8, i8* %arrayidx106, align 1
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %density_unit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 51
  store i8 %80, i8* %density_unit, align 1
  %arrayidx107 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 8
  %82 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %82 to i32
  %shl109 = shl i32 %conv108, 8
  %arrayidx110 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 9
  %83 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %83 to i32
  %add112 = add nsw i32 %shl109, %conv111
  %conv113 = trunc i32 %add112 to i16
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 52
  store i16 %conv113, i16* %X_density, align 2
  %arrayidx114 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 10
  %85 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %85 to i32
  %shl116 = shl i32 %conv115, 8
  %arrayidx117 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 11
  %86 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %86 to i32
  %add119 = add nsw i32 %shl116, %conv118
  %conv120 = trunc i32 %add119 to i16
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Y_density = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 53
  store i16 %conv120, i16* %Y_density, align 2
  br label %do.body.121

do.body.121:                                      ; preds = %if.end.105
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err122 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err122, align 8
  %msg_parm123 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 6
  %i124 = bitcast %union.anon* %msg_parm123 to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i124, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %X_density125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 52
  %91 = load i16, i16* %X_density125, align 2
  %conv126 = zext i16 %91 to i32
  %92 = load i32*, i32** %_mp, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %conv126, i32* %arrayidx127, align 4
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Y_density128 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 53
  %94 = load i16, i16* %Y_density128, align 2
  %conv129 = zext i16 %94 to i32
  %95 = load i32*, i32** %_mp, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %conv129, i32* %arrayidx130, align 4
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %density_unit131 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 51
  %97 = load i8, i8* %density_unit131, align 1
  %conv132 = zext i8 %97 to i32
  %98 = load i32*, i32** %_mp, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %conv132, i32* %arrayidx133, align 4
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err134 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 0
  %100 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err134, align 8
  %msg_code135 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %100, i32 0, i32 5
  store i32 86, i32* %msg_code135, align 4
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err136 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err136, align 8
  %emit_message137 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 1
  %103 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message137, align 8
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %105 = bitcast %struct.jpeg_decompress_struct* %104 to %struct.jpeg_common_struct*
  call void %103(%struct.jpeg_common_struct* %105, i32 1)
  br label %do.end.138

do.end.138:                                       ; preds = %do.body.121
  %arrayidx139 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 12
  %106 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %106 to i32
  %arrayidx141 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 13
  %107 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %107 to i32
  %or = or i32 %conv140, %conv142
  %tobool143 = icmp ne i32 %or, 0
  br i1 %tobool143, label %if.then.144, label %if.end.161

if.then.144:                                      ; preds = %do.end.138
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err145 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 0
  %109 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err145, align 8
  %msg_code146 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %109, i32 0, i32 5
  store i32 89, i32* %msg_code146, align 4
  %arrayidx147 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 12
  %110 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %110 to i32
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err149 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %111, i32 0, i32 0
  %112 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err149, align 8
  %msg_parm150 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %112, i32 0, i32 6
  %i151 = bitcast %union.anon* %msg_parm150 to [8 x i32]*
  %arrayidx152 = getelementptr inbounds [8 x i32], [8 x i32]* %i151, i32 0, i64 0
  store i32 %conv148, i32* %arrayidx152, align 4
  %arrayidx153 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 13
  %113 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %113 to i32
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err155 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 0
  %115 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err155, align 8
  %msg_parm156 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %115, i32 0, i32 6
  %i157 = bitcast %union.anon* %msg_parm156 to [8 x i32]*
  %arrayidx158 = getelementptr inbounds [8 x i32], [8 x i32]* %i157, i32 0, i64 1
  store i32 %conv154, i32* %arrayidx158, align 4
  %116 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err159 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %116, i32 0, i32 0
  %117 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err159, align 8
  %emit_message160 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %117, i32 0, i32 1
  %118 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message160, align 8
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %120 = bitcast %struct.jpeg_decompress_struct* %119 to %struct.jpeg_common_struct*
  call void %118(%struct.jpeg_common_struct* %120, i32 1)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.144, %do.end.138
  %121 = load i64, i64* %length, align 8
  %arrayidx162 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 12
  %122 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %122 to i64
  %arrayidx164 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 13
  %123 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %123 to i64
  %mul = mul nsw i64 %conv163, %conv165
  %mul166 = mul nsw i64 %mul, 3
  %cmp167 = icmp ne i64 %121, %mul166
  br i1 %cmp167, label %if.then.169, label %if.end.179

if.then.169:                                      ; preds = %if.end.161
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err170 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 0
  %125 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err170, align 8
  %msg_code171 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %125, i32 0, i32 5
  store i32 87, i32* %msg_code171, align 4
  %126 = load i64, i64* %length, align 8
  %conv172 = trunc i64 %126 to i32
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err173 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 0
  %128 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err173, align 8
  %msg_parm174 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %128, i32 0, i32 6
  %i175 = bitcast %union.anon* %msg_parm174 to [8 x i32]*
  %arrayidx176 = getelementptr inbounds [8 x i32], [8 x i32]* %i175, i32 0, i64 0
  store i32 %conv172, i32* %arrayidx176, align 4
  %129 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err177 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %129, i32 0, i32 0
  %130 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err177, align 8
  %emit_message178 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %130, i32 0, i32 1
  %131 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message178, align 8
  %132 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %133 = bitcast %struct.jpeg_decompress_struct* %132 to %struct.jpeg_common_struct*
  call void %131(%struct.jpeg_common_struct* %133, i32 1)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.169, %if.end.161
  br label %if.end.191

if.else.180:                                      ; preds = %land.lhs.true.61, %land.lhs.true.56, %land.lhs.true.51, %land.lhs.true, %for.end
  %134 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err181 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %134, i32 0, i32 0
  %135 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err181, align 8
  %msg_code182 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %135, i32 0, i32 5
  store i32 76, i32* %msg_code182, align 4
  %136 = load i64, i64* %length, align 8
  %conv183 = trunc i64 %136 to i32
  %add184 = add nsw i32 %conv183, 14
  %137 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err185 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %137, i32 0, i32 0
  %138 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err185, align 8
  %msg_parm186 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %138, i32 0, i32 6
  %i187 = bitcast %union.anon* %msg_parm186 to [8 x i32]*
  %arrayidx188 = getelementptr inbounds [8 x i32], [8 x i32]* %i187, i32 0, i64 0
  store i32 %add184, i32* %arrayidx188, align 4
  %139 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err189 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %139, i32 0, i32 0
  %140 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err189, align 8
  %emit_message190 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %140, i32 0, i32 1
  %141 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message190, align 8
  %142 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %143 = bitcast %struct.jpeg_decompress_struct* %142 to %struct.jpeg_common_struct*
  call void %141(%struct.jpeg_common_struct* %143, i32 1)
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.180, %if.end.179
  br label %if.end.202

if.else.192:                                      ; preds = %do.end
  %144 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err193 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %144, i32 0, i32 0
  %145 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err193, align 8
  %msg_code194 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %145, i32 0, i32 5
  store i32 76, i32* %msg_code194, align 4
  %146 = load i64, i64* %length, align 8
  %conv195 = trunc i64 %146 to i32
  %147 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err196 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %147, i32 0, i32 0
  %148 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err196, align 8
  %msg_parm197 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %148, i32 0, i32 6
  %i198 = bitcast %union.anon* %msg_parm197 to [8 x i32]*
  %arrayidx199 = getelementptr inbounds [8 x i32], [8 x i32]* %i198, i32 0, i64 0
  store i32 %conv195, i32* %arrayidx199, align 4
  %149 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err200 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %149, i32 0, i32 0
  %150 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err200, align 8
  %emit_message201 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %150, i32 0, i32 1
  %151 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message201, align 8
  %152 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %153 = bitcast %struct.jpeg_decompress_struct* %152 to %struct.jpeg_common_struct*
  call void %151(%struct.jpeg_common_struct* %153, i32 1)
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.192, %if.end.191
  %154 = load i8*, i8** %next_input_byte, align 8
  %155 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte203 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %155, i32 0, i32 0
  store i8* %154, i8** %next_input_byte203, align 8
  %156 = load i64, i64* %bytes_in_buffer, align 8
  %157 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer204 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %157, i32 0, i32 1
  store i64 %156, i64* %bytes_in_buffer204, align 8
  %158 = load i64, i64* %length, align 8
  %cmp205 = icmp sgt i64 %158, 0
  br i1 %cmp205, label %if.then.207, label %if.end.209

if.then.207:                                      ; preds = %if.end.202
  %159 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src208 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %159, i32 0, i32 5
  %160 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src208, align 8
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %160, i32 0, i32 4
  %161 = load void (%struct.jpeg_decompress_struct*, i64)*, void (%struct.jpeg_decompress_struct*, i64)** %skip_input_data, align 8
  %162 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %163 = load i64, i64* %length, align 8
  call void %161(%struct.jpeg_decompress_struct* %162, i64 %163)
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.207, %if.end.202
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.209, %if.then.34, %if.then.14, %if.then.3
  %164 = load i32, i32* %retval
  ret i32 %164
}

; Function Attrs: nounwind uwtable
define internal i32 @get_app14(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %b = alloca [12 x i8], align 1
  %buffp = alloca i32, align 4
  %version = alloca i32, align 4
  %flags0 = alloca i32, align 4
  %flags1 = alloca i32, align 4
  %transform = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %_mp = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  store %struct.jpeg_source_mgr* %1, %struct.jpeg_source_mgr** %datasrc, align 8
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %2, i32 0, i32 0
  %3 = load i8*, i8** %next_input_byte1, align 8
  store i8* %3, i8** %next_input_byte, align 8
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %4, i32 0, i32 1
  %5 = load i64, i64* %bytes_in_buffer2, align 8
  store i64 %5, i64* %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, i64* %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 3
  %8 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %8(%struct.jpeg_decompress_struct* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 0
  %11 = load i8*, i8** %next_input_byte4, align 8
  store i8* %11, i8** %next_input_byte, align 8
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %bytes_in_buffer5, align 8
  store i64 %13, i64* %bytes_in_buffer, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %14 = load i64, i64* %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8
  %15 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8
  %17 = load i64, i64* %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 3
  %19 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call12 = call i32 %19(%struct.jpeg_decompress_struct* %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.10
  %21 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %21, i32 0, i32 0
  %22 = load i8*, i8** %next_input_byte16, align 8
  store i8* %22, i8** %next_input_byte, align 8
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 1
  %24 = load i64, i64* %bytes_in_buffer17, align 8
  store i64 %24, i64* %bytes_in_buffer, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %25 = load i64, i64* %bytes_in_buffer, align 8
  %dec19 = add i64 %25, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8
  %26 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8
  %27 = load i8, i8* %26, align 1
  %conv21 = zext i8 %27 to i64
  %28 = load i64, i64* %length, align 8
  %add = add nsw i64 %28, %conv21
  store i64 %add, i64* %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %29 = load i64, i64* %length, align 8
  %sub = sub nsw i64 %29, 2
  store i64 %sub, i64* %length, align 8
  %30 = load i64, i64* %length, align 8
  %cmp22 = icmp sge i64 %30, 12
  br i1 %cmp22, label %if.then.24, label %if.else.107

if.then.24:                                       ; preds = %do.end
  store i32 0, i32* %buffp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.24
  %31 = load i32, i32* %buffp, align 4
  %cmp25 = icmp slt i32 %31, 12
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.27

do.body.27:                                       ; preds = %for.body
  %32 = load i64, i64* %bytes_in_buffer, align 8
  %cmp28 = icmp eq i64 %32, 0
  br i1 %cmp28, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %do.body.27
  %33 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer31 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %33, i32 0, i32 3
  %34 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer31, align 8
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call32 = call i32 %34(%struct.jpeg_decompress_struct* %35)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.30
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.30
  %36 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte36 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %36, i32 0, i32 0
  %37 = load i8*, i8** %next_input_byte36, align 8
  store i8* %37, i8** %next_input_byte, align 8
  %38 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %38, i32 0, i32 1
  %39 = load i64, i64* %bytes_in_buffer37, align 8
  store i64 %39, i64* %bytes_in_buffer, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.35, %do.body.27
  %40 = load i64, i64* %bytes_in_buffer, align 8
  %dec39 = add i64 %40, -1
  store i64 %dec39, i64* %bytes_in_buffer, align 8
  %41 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr40, i8** %next_input_byte, align 8
  %42 = load i8, i8* %41, align 1
  %43 = load i32, i32* %buffp, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 %idxprom
  store i8 %42, i8* %arrayidx, align 1
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.38
  br label %for.inc

for.inc:                                          ; preds = %do.end.41
  %44 = load i32, i32* %buffp, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %buffp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i64, i64* %length, align 8
  %sub42 = sub nsw i64 %45, 12
  store i64 %sub42, i64* %length, align 8
  %arrayidx43 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 0
  %46 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %46 to i32
  %cmp45 = icmp eq i32 %conv44, 65
  br i1 %cmp45, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %arrayidx47 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 1
  %47 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %47 to i32
  %cmp49 = icmp eq i32 %conv48, 100
  br i1 %cmp49, label %land.lhs.true.51, label %if.else

land.lhs.true.51:                                 ; preds = %land.lhs.true
  %arrayidx52 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 2
  %48 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %48 to i32
  %cmp54 = icmp eq i32 %conv53, 111
  br i1 %cmp54, label %land.lhs.true.56, label %if.else

land.lhs.true.56:                                 ; preds = %land.lhs.true.51
  %arrayidx57 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 3
  %49 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %49 to i32
  %cmp59 = icmp eq i32 %conv58, 98
  br i1 %cmp59, label %land.lhs.true.61, label %if.else

land.lhs.true.61:                                 ; preds = %land.lhs.true.56
  %arrayidx62 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 4
  %50 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %50 to i32
  %cmp64 = icmp eq i32 %conv63, 101
  br i1 %cmp64, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %land.lhs.true.61
  %arrayidx67 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 5
  %51 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %51 to i32
  %shl69 = shl i32 %conv68, 8
  %arrayidx70 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 6
  %52 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %52 to i32
  %add72 = add nsw i32 %shl69, %conv71
  store i32 %add72, i32* %version, align 4
  %arrayidx73 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 7
  %53 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %53 to i32
  %shl75 = shl i32 %conv74, 8
  %arrayidx76 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 8
  %54 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %54 to i32
  %add78 = add nsw i32 %shl75, %conv77
  store i32 %add78, i32* %flags0, align 4
  %arrayidx79 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 9
  %55 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %55 to i32
  %shl81 = shl i32 %conv80, 8
  %arrayidx82 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 10
  %56 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %56 to i32
  %add84 = add nsw i32 %shl81, %conv83
  store i32 %add84, i32* %flags1, align 4
  %arrayidx85 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 11
  %57 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %57 to i32
  store i32 %conv86, i32* %transform, align 4
  br label %do.body.87

do.body.87:                                       ; preds = %if.then.66
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8
  %60 = load i32, i32* %version, align 4
  %61 = load i32*, i32** %_mp, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %arrayidx88, align 4
  %62 = load i32, i32* %flags0, align 4
  %63 = load i32*, i32** %_mp, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %62, i32* %arrayidx89, align 4
  %64 = load i32, i32* %flags1, align 4
  %65 = load i32*, i32** %_mp, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %64, i32* %arrayidx90, align 4
  %66 = load i32, i32* %transform, align 4
  %67 = load i32*, i32** %_mp, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %67, i64 3
  store i32 %66, i32* %arrayidx91, align 4
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 0
  %69 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err92, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %69, i32 0, i32 5
  store i32 75, i32* %msg_code, align 4
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %70, i32 0, i32 0
  %71 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err93, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %71, i32 0, i32 1
  %72 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %74 = bitcast %struct.jpeg_decompress_struct* %73 to %struct.jpeg_common_struct*
  call void %72(%struct.jpeg_common_struct* %74, i32 1)
  br label %do.end.94

do.end.94:                                        ; preds = %do.body.87
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 54
  store i32 1, i32* %saw_Adobe_marker, align 4
  %76 = load i32, i32* %transform, align 4
  %conv95 = trunc i32 %76 to i8
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 55
  store i8 %conv95, i8* %Adobe_transform, align 1
  br label %if.end.106

if.else:                                          ; preds = %land.lhs.true.61, %land.lhs.true.56, %land.lhs.true.51, %land.lhs.true, %for.end
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 0
  %79 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err96, align 8
  %msg_code97 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %79, i32 0, i32 5
  store i32 77, i32* %msg_code97, align 4
  %80 = load i64, i64* %length, align 8
  %conv98 = trunc i64 %80 to i32
  %add99 = add nsw i32 %conv98, 12
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 0
  %82 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err100, align 8
  %msg_parm101 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %82, i32 0, i32 6
  %i102 = bitcast %union.anon* %msg_parm101 to [8 x i32]*
  %arrayidx103 = getelementptr inbounds [8 x i32], [8 x i32]* %i102, i32 0, i64 0
  store i32 %add99, i32* %arrayidx103, align 4
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %83, i32 0, i32 0
  %84 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err104, align 8
  %emit_message105 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %84, i32 0, i32 1
  %85 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message105, align 8
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %87 = bitcast %struct.jpeg_decompress_struct* %86 to %struct.jpeg_common_struct*
  call void %85(%struct.jpeg_common_struct* %87, i32 1)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else, %do.end.94
  br label %if.end.117

if.else.107:                                      ; preds = %do.end
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err108 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err108, align 8
  %msg_code109 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 5
  store i32 77, i32* %msg_code109, align 4
  %90 = load i64, i64* %length, align 8
  %conv110 = trunc i64 %90 to i32
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err111 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 0
  %92 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err111, align 8
  %msg_parm112 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %92, i32 0, i32 6
  %i113 = bitcast %union.anon* %msg_parm112 to [8 x i32]*
  %arrayidx114 = getelementptr inbounds [8 x i32], [8 x i32]* %i113, i32 0, i64 0
  store i32 %conv110, i32* %arrayidx114, align 4
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err115 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 0
  %94 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err115, align 8
  %emit_message116 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %94, i32 0, i32 1
  %95 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message116, align 8
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %97 = bitcast %struct.jpeg_decompress_struct* %96 to %struct.jpeg_common_struct*
  call void %95(%struct.jpeg_common_struct* %97, i32 1)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.107, %if.end.106
  %98 = load i8*, i8** %next_input_byte, align 8
  %99 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte118 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %99, i32 0, i32 0
  store i8* %98, i8** %next_input_byte118, align 8
  %100 = load i64, i64* %bytes_in_buffer, align 8
  %101 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer119 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %101, i32 0, i32 1
  store i64 %100, i64* %bytes_in_buffer119, align 8
  %102 = load i64, i64* %length, align 8
  %cmp120 = icmp sgt i64 %102, 0
  br i1 %cmp120, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %if.end.117
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src123 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 5
  %104 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src123, align 8
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %104, i32 0, i32 4
  %105 = load void (%struct.jpeg_decompress_struct*, i64)*, void (%struct.jpeg_decompress_struct*, i64)** %skip_input_data, align 8
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %107 = load i64, i64* %length, align 8
  call void %105(%struct.jpeg_decompress_struct* %106, i64 %107)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.end.117
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.124, %if.then.34, %if.then.14, %if.then.3
  %108 = load i32, i32* %retval
  ret i32 %108
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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  store %struct.jpeg_source_mgr* %1, %struct.jpeg_source_mgr** %datasrc, align 8
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %2, i32 0, i32 0
  %3 = load i8*, i8** %next_input_byte1, align 8
  store i8* %3, i8** %next_input_byte, align 8
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %4, i32 0, i32 1
  %5 = load i64, i64* %bytes_in_buffer2, align 8
  store i64 %5, i64* %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, i64* %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 3
  %8 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %8(%struct.jpeg_decompress_struct* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 0
  %11 = load i8*, i8** %next_input_byte4, align 8
  store i8* %11, i8** %next_input_byte, align 8
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %bytes_in_buffer5, align 8
  store i64 %13, i64* %bytes_in_buffer, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %14 = load i64, i64* %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8
  %15 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  store i32 %conv, i32* %c, align 4
  br label %do.end

do.end:                                           ; preds = %if.end.6
  br label %do.body.7

do.body.7:                                        ; preds = %do.end
  %17 = load i64, i64* %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %do.body.7
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 3
  %19 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call12 = call i32 %19(%struct.jpeg_decompress_struct* %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.10
  %21 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %21, i32 0, i32 0
  %22 = load i8*, i8** %next_input_byte16, align 8
  store i8* %22, i8** %next_input_byte, align 8
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 1
  %24 = load i64, i64* %bytes_in_buffer17, align 8
  store i64 %24, i64* %bytes_in_buffer, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %do.body.7
  %25 = load i64, i64* %bytes_in_buffer, align 8
  %dec19 = add i64 %25, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8
  %26 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8
  %27 = load i8, i8* %26, align 1
  %conv21 = zext i8 %27 to i32
  store i32 %conv21, i32* %c2, align 4
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.18
  %28 = load i32, i32* %c, align 4
  %cmp23 = icmp ne i32 %28, 255
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.22
  %29 = load i32, i32* %c2, align 4
  %cmp25 = icmp ne i32 %29, 216
  br i1 %cmp25, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %lor.lhs.false, %do.end.22
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 5
  store i32 52, i32* %msg_code, align 4
  %32 = load i32, i32* %c, align 4
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err28, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %32, i32* %arrayidx, align 4
  %35 = load i32, i32* %c2, align 4
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err29, align 8
  %msg_parm30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 6
  %i31 = bitcast %union.anon* %msg_parm30 to [8 x i32]*
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* %i31, i32 0, i64 1
  store i32 %35, i32* %arrayidx32, align 4
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 0
  %40 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %42 = bitcast %struct.jpeg_decompress_struct* %41 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* %42)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.27, %lor.lhs.false
  %43 = load i32, i32* %c2, align 4
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 72
  store i32 %43, i32* %unread_marker, align 4
  %45 = load i8*, i8** %next_input_byte, align 8
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte35 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 0
  store i8* %45, i8** %next_input_byte35, align 8
  %47 = load i64, i64* %bytes_in_buffer, align 8
  %48 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer36 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %48, i32 0, i32 1
  store i64 %47, i64* %bytes_in_buffer36, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.14, %if.then.3
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @get_soi(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 5
  store i32 101, i32* %msg_code, align 4
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 1
  %4 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  call void %4(%struct.jpeg_common_struct* %6, i32 1)
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 78
  %8 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %8, i32 0, i32 5
  %9 = load i32, i32* %saw_SOI, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %msg_code3 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 60, i32* %msg_code3, align 4
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %17, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %arith_dc_L = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 46
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %20 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %20 to i64
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %arith_dc_U = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 47
  %arrayidx6 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U, i32 0, i64 %idxprom5
  store i8 1, i8* %arrayidx6, align 1
  %22 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %22 to i64
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %arith_ac_K = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 48
  %arrayidx8 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_ac_K, i32 0, i64 %idxprom7
  store i8 5, i8* %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 49
  store i32 0, i32* %restart_interval, align 4
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 9
  store i32 0, i32* %jpeg_color_space, align 4
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 56
  store i32 0, i32* %CCIR601_sampling, align 4
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 50
  store i32 0, i32* %saw_JFIF_marker, align 4
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %density_unit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 51
  store i8 0, i8* %density_unit, align 1
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 52
  store i16 1, i16* %X_density, align 2
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Y_density = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 53
  store i16 1, i16* %Y_density, align 2
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 54
  store i32 0, i32* %saw_Adobe_marker, align 4
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 55
  store i8 0, i8* %Adobe_transform, align 1
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 78
  %35 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker9, align 8
  %saw_SOI10 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %35, i32 0, i32 5
  store i32 1, i32* %saw_SOI10, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_sof(%struct.jpeg_decompress_struct* %cinfo, i32 %is_prog, i32 %is_arith) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %is_prog.addr = alloca i32, align 4
  %is_arith.addr = alloca i32, align 4
  %length = alloca i64, align 8
  %c = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %_mp = alloca i32*, align 8
  %_mp225 = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %is_prog, i32* %is_prog.addr, align 4
  store i32 %is_arith, i32* %is_arith.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  store %struct.jpeg_source_mgr* %1, %struct.jpeg_source_mgr** %datasrc, align 8
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %2, i32 0, i32 0
  %3 = load i8*, i8** %next_input_byte1, align 8
  store i8* %3, i8** %next_input_byte, align 8
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %4, i32 0, i32 1
  %5 = load i64, i64* %bytes_in_buffer2, align 8
  store i64 %5, i64* %bytes_in_buffer, align 8
  %6 = load i32, i32* %is_prog.addr, align 4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 44
  store i32 %6, i32* %progressive_mode, align 4
  %8 = load i32, i32* %is_arith.addr, align 4
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 45
  store i32 %8, i32* %arith_code, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load i64, i64* %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %10, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %11 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %11, i32 0, i32 3
  %12 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %12(%struct.jpeg_decompress_struct* %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %14, i32 0, i32 0
  %15 = load i8*, i8** %next_input_byte4, align 8
  store i8* %15, i8** %next_input_byte, align 8
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 1
  %17 = load i64, i64* %bytes_in_buffer5, align 8
  store i64 %17, i64* %bytes_in_buffer, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %18 = load i64, i64* %bytes_in_buffer, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8
  %19 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8
  %20 = load i8, i8* %19, align 1
  %conv = zext i8 %20 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8
  %21 = load i64, i64* %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %21, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 3
  %23 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call12 = call i32 %23(%struct.jpeg_decompress_struct* %24)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.10
  %25 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %25, i32 0, i32 0
  %26 = load i8*, i8** %next_input_byte16, align 8
  store i8* %26, i8** %next_input_byte, align 8
  %27 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %27, i32 0, i32 1
  %28 = load i64, i64* %bytes_in_buffer17, align 8
  store i64 %28, i64* %bytes_in_buffer, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %29 = load i64, i64* %bytes_in_buffer, align 8
  %dec19 = add i64 %29, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8
  %30 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8
  %31 = load i8, i8* %30, align 1
  %conv21 = zext i8 %31 to i64
  %32 = load i64, i64* %length, align 8
  %add = add nsw i64 %32, %conv21
  store i64 %add, i64* %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %do.body.22

do.body.22:                                       ; preds = %do.end
  %33 = load i64, i64* %bytes_in_buffer, align 8
  %cmp23 = icmp eq i64 %33, 0
  br i1 %cmp23, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %do.body.22
  %34 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer26 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %34, i32 0, i32 3
  %35 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer26, align 8
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call27 = call i32 %35(%struct.jpeg_decompress_struct* %36)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.25
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.25
  %37 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte31 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %37, i32 0, i32 0
  %38 = load i8*, i8** %next_input_byte31, align 8
  store i8* %38, i8** %next_input_byte, align 8
  %39 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer32 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %39, i32 0, i32 1
  %40 = load i64, i64* %bytes_in_buffer32, align 8
  store i64 %40, i64* %bytes_in_buffer, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.30, %do.body.22
  %41 = load i64, i64* %bytes_in_buffer, align 8
  %dec34 = add i64 %41, -1
  store i64 %dec34, i64* %bytes_in_buffer, align 8
  %42 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr35, i8** %next_input_byte, align 8
  %43 = load i8, i8* %42, align 1
  %conv36 = zext i8 %43 to i32
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 42
  store i32 %conv36, i32* %data_precision, align 4
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.33
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  %45 = load i64, i64* %bytes_in_buffer, align 8
  %cmp39 = icmp eq i64 %45, 0
  br i1 %cmp39, label %if.then.41, label %if.end.49

if.then.41:                                       ; preds = %do.body.38
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer42 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 3
  %47 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer42, align 8
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call43 = call i32 %47(%struct.jpeg_decompress_struct* %48)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %if.then.41
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.41
  %49 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte47 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %49, i32 0, i32 0
  %50 = load i8*, i8** %next_input_byte47, align 8
  store i8* %50, i8** %next_input_byte, align 8
  %51 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer48 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %51, i32 0, i32 1
  %52 = load i64, i64* %bytes_in_buffer48, align 8
  store i64 %52, i64* %bytes_in_buffer, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.46, %do.body.38
  %53 = load i64, i64* %bytes_in_buffer, align 8
  %dec50 = add i64 %53, -1
  store i64 %dec50, i64* %bytes_in_buffer, align 8
  %54 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr51, i8** %next_input_byte, align 8
  %55 = load i8, i8* %54, align 1
  %conv52 = zext i8 %55 to i32
  %shl53 = shl i32 %conv52, 8
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 7
  store i32 %shl53, i32* %image_height, align 4
  %57 = load i64, i64* %bytes_in_buffer, align 8
  %cmp54 = icmp eq i64 %57, 0
  br i1 %cmp54, label %if.then.56, label %if.end.64

if.then.56:                                       ; preds = %if.end.49
  %58 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer57 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %58, i32 0, i32 3
  %59 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer57, align 8
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call58 = call i32 %59(%struct.jpeg_decompress_struct* %60)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.then.56
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.56
  %61 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte62 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %61, i32 0, i32 0
  %62 = load i8*, i8** %next_input_byte62, align 8
  store i8* %62, i8** %next_input_byte, align 8
  %63 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer63 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %63, i32 0, i32 1
  %64 = load i64, i64* %bytes_in_buffer63, align 8
  store i64 %64, i64* %bytes_in_buffer, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.61, %if.end.49
  %65 = load i64, i64* %bytes_in_buffer, align 8
  %dec65 = add i64 %65, -1
  store i64 %dec65, i64* %bytes_in_buffer, align 8
  %66 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr66, i8** %next_input_byte, align 8
  %67 = load i8, i8* %66, align 1
  %conv67 = zext i8 %67 to i32
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_height68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 7
  %69 = load i32, i32* %image_height68, align 4
  %add69 = add i32 %69, %conv67
  store i32 %add69, i32* %image_height68, align 4
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.64
  br label %do.body.71

do.body.71:                                       ; preds = %do.end.70
  %70 = load i64, i64* %bytes_in_buffer, align 8
  %cmp72 = icmp eq i64 %70, 0
  br i1 %cmp72, label %if.then.74, label %if.end.82

if.then.74:                                       ; preds = %do.body.71
  %71 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer75 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %71, i32 0, i32 3
  %72 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer75, align 8
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call76 = call i32 %72(%struct.jpeg_decompress_struct* %73)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %if.then.74
  store i32 0, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.then.74
  %74 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte80 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %74, i32 0, i32 0
  %75 = load i8*, i8** %next_input_byte80, align 8
  store i8* %75, i8** %next_input_byte, align 8
  %76 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer81 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %76, i32 0, i32 1
  %77 = load i64, i64* %bytes_in_buffer81, align 8
  store i64 %77, i64* %bytes_in_buffer, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.79, %do.body.71
  %78 = load i64, i64* %bytes_in_buffer, align 8
  %dec83 = add i64 %78, -1
  store i64 %dec83, i64* %bytes_in_buffer, align 8
  %79 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr84, i8** %next_input_byte, align 8
  %80 = load i8, i8* %79, align 1
  %conv85 = zext i8 %80 to i32
  %shl86 = shl i32 %conv85, 8
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 6
  store i32 %shl86, i32* %image_width, align 4
  %82 = load i64, i64* %bytes_in_buffer, align 8
  %cmp87 = icmp eq i64 %82, 0
  br i1 %cmp87, label %if.then.89, label %if.end.97

if.then.89:                                       ; preds = %if.end.82
  %83 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer90 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %83, i32 0, i32 3
  %84 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer90, align 8
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call91 = call i32 %84(%struct.jpeg_decompress_struct* %85)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %if.then.89
  store i32 0, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.then.89
  %86 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte95 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %86, i32 0, i32 0
  %87 = load i8*, i8** %next_input_byte95, align 8
  store i8* %87, i8** %next_input_byte, align 8
  %88 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer96 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %88, i32 0, i32 1
  %89 = load i64, i64* %bytes_in_buffer96, align 8
  store i64 %89, i64* %bytes_in_buffer, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.94, %if.end.82
  %90 = load i64, i64* %bytes_in_buffer, align 8
  %dec98 = add i64 %90, -1
  store i64 %dec98, i64* %bytes_in_buffer, align 8
  %91 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr99, i8** %next_input_byte, align 8
  %92 = load i8, i8* %91, align 1
  %conv100 = zext i8 %92 to i32
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_width101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 6
  %94 = load i32, i32* %image_width101, align 4
  %add102 = add i32 %94, %conv100
  store i32 %add102, i32* %image_width101, align 4
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.97
  br label %do.body.104

do.body.104:                                      ; preds = %do.end.103
  %95 = load i64, i64* %bytes_in_buffer, align 8
  %cmp105 = icmp eq i64 %95, 0
  br i1 %cmp105, label %if.then.107, label %if.end.115

if.then.107:                                      ; preds = %do.body.104
  %96 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer108 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %96, i32 0, i32 3
  %97 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer108, align 8
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call109 = call i32 %97(%struct.jpeg_decompress_struct* %98)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %if.then.107
  store i32 0, i32* %retval
  br label %return

if.end.112:                                       ; preds = %if.then.107
  %99 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte113 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %99, i32 0, i32 0
  %100 = load i8*, i8** %next_input_byte113, align 8
  store i8* %100, i8** %next_input_byte, align 8
  %101 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer114 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %101, i32 0, i32 1
  %102 = load i64, i64* %bytes_in_buffer114, align 8
  store i64 %102, i64* %bytes_in_buffer, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.112, %do.body.104
  %103 = load i64, i64* %bytes_in_buffer, align 8
  %dec116 = add i64 %103, -1
  store i64 %dec116, i64* %bytes_in_buffer, align 8
  %104 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr117, i8** %next_input_byte, align 8
  %105 = load i8, i8* %104, align 1
  %conv118 = zext i8 %105 to i32
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 8
  store i32 %conv118, i32* %num_components, align 4
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.115
  %107 = load i64, i64* %length, align 8
  %sub = sub nsw i64 %107, 8
  store i64 %sub, i64* %length, align 8
  br label %do.body.120

do.body.120:                                      ; preds = %do.end.119
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 0
  %109 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %109, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 72
  %111 = load i32, i32* %unread_marker, align 4
  %112 = load i32*, i32** %_mp, align 8
  %arrayidx = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %111, i32* %arrayidx, align 4
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_width121 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 6
  %114 = load i32, i32* %image_width121, align 4
  %115 = load i32*, i32** %_mp, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 %114, i32* %arrayidx122, align 4
  %116 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_height123 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %116, i32 0, i32 7
  %117 = load i32, i32* %image_height123, align 4
  %118 = load i32*, i32** %_mp, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %118, i64 2
  store i32 %117, i32* %arrayidx124, align 4
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 8
  %120 = load i32, i32* %num_components125, align 4
  %121 = load i32*, i32** %_mp, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %121, i64 3
  store i32 %120, i32* %arrayidx126, align 4
  %122 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err127 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %122, i32 0, i32 0
  %123 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err127, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %123, i32 0, i32 5
  store i32 99, i32* %msg_code, align 4
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err128 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 0
  %125 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err128, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %125, i32 0, i32 1
  %126 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %128 = bitcast %struct.jpeg_decompress_struct* %127 to %struct.jpeg_common_struct*
  call void %126(%struct.jpeg_common_struct* %128, i32 1)
  br label %do.end.129

do.end.129:                                       ; preds = %do.body.120
  %129 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %129, i32 0, i32 78
  %130 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %130, i32 0, i32 6
  %131 = load i32, i32* %saw_SOF, align 4
  %tobool130 = icmp ne i32 %131, 0
  br i1 %tobool130, label %if.then.131, label %if.end.135

if.then.131:                                      ; preds = %do.end.129
  %132 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %132, i32 0, i32 0
  %133 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err132, align 8
  %msg_code133 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %133, i32 0, i32 5
  store i32 57, i32* %msg_code133, align 4
  %134 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err134 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %134, i32 0, i32 0
  %135 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err134, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %135, i32 0, i32 0
  %136 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %137 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %138 = bitcast %struct.jpeg_decompress_struct* %137 to %struct.jpeg_common_struct*
  call void %136(%struct.jpeg_common_struct* %138)
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.131, %do.end.129
  %139 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_height136 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %139, i32 0, i32 7
  %140 = load i32, i32* %image_height136, align 4
  %cmp137 = icmp ule i32 %140, 0
  br i1 %cmp137, label %if.then.146, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.135
  %141 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_width139 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %141, i32 0, i32 6
  %142 = load i32, i32* %image_width139, align 4
  %cmp140 = icmp ule i32 %142, 0
  br i1 %cmp140, label %if.then.146, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %lor.lhs.false
  %143 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components143 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %143, i32 0, i32 8
  %144 = load i32, i32* %num_components143, align 4
  %cmp144 = icmp sle i32 %144, 0
  br i1 %cmp144, label %if.then.146, label %if.end.151

if.then.146:                                      ; preds = %lor.lhs.false.142, %lor.lhs.false, %if.end.135
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err147 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %145, i32 0, i32 0
  %146 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err147, align 8
  %msg_code148 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %146, i32 0, i32 5
  store i32 31, i32* %msg_code148, align 4
  %147 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err149 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %147, i32 0, i32 0
  %148 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err149, align 8
  %error_exit150 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %148, i32 0, i32 0
  %149 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit150, align 8
  %150 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %151 = bitcast %struct.jpeg_decompress_struct* %150 to %struct.jpeg_common_struct*
  call void %149(%struct.jpeg_common_struct* %151)
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.146, %lor.lhs.false.142
  %152 = load i64, i64* %length, align 8
  %153 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components152 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %153, i32 0, i32 8
  %154 = load i32, i32* %num_components152, align 4
  %mul = mul nsw i32 %154, 3
  %conv153 = sext i32 %mul to i64
  %cmp154 = icmp ne i64 %152, %conv153
  br i1 %cmp154, label %if.then.156, label %if.end.161

if.then.156:                                      ; preds = %if.end.151
  %155 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err157 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %155, i32 0, i32 0
  %156 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err157, align 8
  %msg_code158 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %156, i32 0, i32 5
  store i32 9, i32* %msg_code158, align 4
  %157 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err159 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %157, i32 0, i32 0
  %158 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err159, align 8
  %error_exit160 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %158, i32 0, i32 0
  %159 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit160, align 8
  %160 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %161 = bitcast %struct.jpeg_decompress_struct* %160 to %struct.jpeg_common_struct*
  call void %159(%struct.jpeg_common_struct* %161)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.156, %if.end.151
  %162 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %162, i32 0, i32 43
  %163 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  %cmp162 = icmp eq %struct.jpeg_component_info* %163, null
  br i1 %cmp162, label %if.then.164, label %if.end.170

if.then.164:                                      ; preds = %if.end.161
  %164 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %164, i32 0, i32 1
  %165 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %165, i32 0, i32 0
  %166 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %167 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %168 = bitcast %struct.jpeg_decompress_struct* %167 to %struct.jpeg_common_struct*
  %169 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components165 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %169, i32 0, i32 8
  %170 = load i32, i32* %num_components165, align 4
  %conv166 = sext i32 %170 to i64
  %mul167 = mul i64 %conv166, 96
  %call168 = call i8* %166(%struct.jpeg_common_struct* %168, i32 1, i64 %mul167)
  %171 = bitcast i8* %call168 to %struct.jpeg_component_info*
  %172 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info169 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %172, i32 0, i32 43
  store %struct.jpeg_component_info* %171, %struct.jpeg_component_info** %comp_info169, align 8
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.164, %if.end.161
  store i32 0, i32* %ci, align 4
  %173 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info171 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %173, i32 0, i32 43
  %174 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info171, align 8
  store %struct.jpeg_component_info* %174, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.170
  %175 = load i32, i32* %ci, align 4
  %176 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components172 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %176, i32 0, i32 8
  %177 = load i32, i32* %num_components172, align 4
  %cmp173 = icmp slt i32 %175, %177
  br i1 %cmp173, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %178 = load i32, i32* %ci, align 4
  %179 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %179, i32 0, i32 1
  store i32 %178, i32* %component_index, align 4
  br label %do.body.175

do.body.175:                                      ; preds = %for.body
  %180 = load i64, i64* %bytes_in_buffer, align 8
  %cmp176 = icmp eq i64 %180, 0
  br i1 %cmp176, label %if.then.178, label %if.end.186

if.then.178:                                      ; preds = %do.body.175
  %181 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer179 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %181, i32 0, i32 3
  %182 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer179, align 8
  %183 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call180 = call i32 %182(%struct.jpeg_decompress_struct* %183)
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.end.183, label %if.then.182

if.then.182:                                      ; preds = %if.then.178
  store i32 0, i32* %retval
  br label %return

if.end.183:                                       ; preds = %if.then.178
  %184 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte184 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %184, i32 0, i32 0
  %185 = load i8*, i8** %next_input_byte184, align 8
  store i8* %185, i8** %next_input_byte, align 8
  %186 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer185 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %186, i32 0, i32 1
  %187 = load i64, i64* %bytes_in_buffer185, align 8
  store i64 %187, i64* %bytes_in_buffer, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.183, %do.body.175
  %188 = load i64, i64* %bytes_in_buffer, align 8
  %dec187 = add i64 %188, -1
  store i64 %dec187, i64* %bytes_in_buffer, align 8
  %189 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr188 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %incdec.ptr188, i8** %next_input_byte, align 8
  %190 = load i8, i8* %189, align 1
  %conv189 = zext i8 %190 to i32
  %191 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %191, i32 0, i32 0
  store i32 %conv189, i32* %component_id, align 4
  br label %do.end.190

do.end.190:                                       ; preds = %if.end.186
  br label %do.body.191

do.body.191:                                      ; preds = %do.end.190
  %192 = load i64, i64* %bytes_in_buffer, align 8
  %cmp192 = icmp eq i64 %192, 0
  br i1 %cmp192, label %if.then.194, label %if.end.202

if.then.194:                                      ; preds = %do.body.191
  %193 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer195 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %193, i32 0, i32 3
  %194 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer195, align 8
  %195 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call196 = call i32 %194(%struct.jpeg_decompress_struct* %195)
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %if.end.199, label %if.then.198

if.then.198:                                      ; preds = %if.then.194
  store i32 0, i32* %retval
  br label %return

if.end.199:                                       ; preds = %if.then.194
  %196 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte200 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %196, i32 0, i32 0
  %197 = load i8*, i8** %next_input_byte200, align 8
  store i8* %197, i8** %next_input_byte, align 8
  %198 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer201 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %198, i32 0, i32 1
  %199 = load i64, i64* %bytes_in_buffer201, align 8
  store i64 %199, i64* %bytes_in_buffer, align 8
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.199, %do.body.191
  %200 = load i64, i64* %bytes_in_buffer, align 8
  %dec203 = add i64 %200, -1
  store i64 %dec203, i64* %bytes_in_buffer, align 8
  %201 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr204 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %incdec.ptr204, i8** %next_input_byte, align 8
  %202 = load i8, i8* %201, align 1
  %conv205 = zext i8 %202 to i32
  store i32 %conv205, i32* %c, align 4
  br label %do.end.206

do.end.206:                                       ; preds = %if.end.202
  %203 = load i32, i32* %c, align 4
  %shr = ashr i32 %203, 4
  %and = and i32 %shr, 15
  %204 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %204, i32 0, i32 2
  store i32 %and, i32* %h_samp_factor, align 4
  %205 = load i32, i32* %c, align 4
  %and207 = and i32 %205, 15
  %206 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %206, i32 0, i32 3
  store i32 %and207, i32* %v_samp_factor, align 4
  br label %do.body.208

do.body.208:                                      ; preds = %do.end.206
  %207 = load i64, i64* %bytes_in_buffer, align 8
  %cmp209 = icmp eq i64 %207, 0
  br i1 %cmp209, label %if.then.211, label %if.end.219

if.then.211:                                      ; preds = %do.body.208
  %208 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer212 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %208, i32 0, i32 3
  %209 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer212, align 8
  %210 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call213 = call i32 %209(%struct.jpeg_decompress_struct* %210)
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.end.216, label %if.then.215

if.then.215:                                      ; preds = %if.then.211
  store i32 0, i32* %retval
  br label %return

if.end.216:                                       ; preds = %if.then.211
  %211 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte217 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %211, i32 0, i32 0
  %212 = load i8*, i8** %next_input_byte217, align 8
  store i8* %212, i8** %next_input_byte, align 8
  %213 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer218 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %213, i32 0, i32 1
  %214 = load i64, i64* %bytes_in_buffer218, align 8
  store i64 %214, i64* %bytes_in_buffer, align 8
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.216, %do.body.208
  %215 = load i64, i64* %bytes_in_buffer, align 8
  %dec220 = add i64 %215, -1
  store i64 %dec220, i64* %bytes_in_buffer, align 8
  %216 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr221 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr221, i8** %next_input_byte, align 8
  %217 = load i8, i8* %216, align 1
  %conv222 = zext i8 %217 to i32
  %218 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %218, i32 0, i32 4
  store i32 %conv222, i32* %quant_tbl_no, align 4
  br label %do.end.223

do.end.223:                                       ; preds = %if.end.219
  br label %do.body.224

do.body.224:                                      ; preds = %do.end.223
  %219 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err226 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %219, i32 0, i32 0
  %220 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err226, align 8
  %msg_parm227 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %220, i32 0, i32 6
  %i228 = bitcast %union.anon* %msg_parm227 to [8 x i32]*
  %arraydecay229 = getelementptr inbounds [8 x i32], [8 x i32]* %i228, i32 0, i32 0
  store i32* %arraydecay229, i32** %_mp225, align 8
  %221 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_id230 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %221, i32 0, i32 0
  %222 = load i32, i32* %component_id230, align 4
  %223 = load i32*, i32** %_mp225, align 8
  %arrayidx231 = getelementptr inbounds i32, i32* %223, i64 0
  store i32 %222, i32* %arrayidx231, align 4
  %224 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor232 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %224, i32 0, i32 2
  %225 = load i32, i32* %h_samp_factor232, align 4
  %226 = load i32*, i32** %_mp225, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %226, i64 1
  store i32 %225, i32* %arrayidx233, align 4
  %227 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor234 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %227, i32 0, i32 3
  %228 = load i32, i32* %v_samp_factor234, align 4
  %229 = load i32*, i32** %_mp225, align 8
  %arrayidx235 = getelementptr inbounds i32, i32* %229, i64 2
  store i32 %228, i32* %arrayidx235, align 4
  %230 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %quant_tbl_no236 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %230, i32 0, i32 4
  %231 = load i32, i32* %quant_tbl_no236, align 4
  %232 = load i32*, i32** %_mp225, align 8
  %arrayidx237 = getelementptr inbounds i32, i32* %232, i64 3
  store i32 %231, i32* %arrayidx237, align 4
  %233 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err238 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %233, i32 0, i32 0
  %234 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err238, align 8
  %msg_code239 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %234, i32 0, i32 5
  store i32 100, i32* %msg_code239, align 4
  %235 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err240 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %235, i32 0, i32 0
  %236 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err240, align 8
  %emit_message241 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %236, i32 0, i32 1
  %237 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message241, align 8
  %238 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %239 = bitcast %struct.jpeg_decompress_struct* %238 to %struct.jpeg_common_struct*
  call void %237(%struct.jpeg_common_struct* %239, i32 1)
  br label %do.end.242

do.end.242:                                       ; preds = %do.body.224
  br label %for.inc

for.inc:                                          ; preds = %do.end.242
  %240 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %240, 1
  store i32 %inc, i32* %ci, align 4
  %241 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr243 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %241, i32 1
  store %struct.jpeg_component_info* %incdec.ptr243, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %242 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker244 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %242, i32 0, i32 78
  %243 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker244, align 8
  %saw_SOF245 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %243, i32 0, i32 6
  store i32 1, i32* %saw_SOF245, align 4
  %244 = load i8*, i8** %next_input_byte, align 8
  %245 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte246 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %245, i32 0, i32 0
  store i8* %244, i8** %next_input_byte246, align 8
  %246 = load i64, i64* %bytes_in_buffer, align 8
  %247 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer247 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %247, i32 0, i32 1
  store i64 %246, i64* %bytes_in_buffer247, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.215, %if.then.198, %if.then.182, %if.then.111, %if.then.93, %if.then.78, %if.then.60, %if.then.45, %if.then.29, %if.then.14, %if.then.3
  %248 = load i32, i32* %retval
  ret i32 %248
}

; Function Attrs: nounwind uwtable
define internal i32 @get_sos(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %i = alloca i32, align 4
  %ci = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %cc = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %_mp = alloca i32*, align 8
  %_mp184 = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  store %struct.jpeg_source_mgr* %1, %struct.jpeg_source_mgr** %datasrc, align 8
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %2, i32 0, i32 0
  %3 = load i8*, i8** %next_input_byte1, align 8
  store i8* %3, i8** %next_input_byte, align 8
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %4, i32 0, i32 1
  %5 = load i64, i64* %bytes_in_buffer2, align 8
  store i64 %5, i64* %bytes_in_buffer, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 78
  %7 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %7, i32 0, i32 6
  %8 = load i32, i32* %saw_SOF, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 5
  store i32 61, i32* %msg_code, align 4
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %15 = bitcast %struct.jpeg_decompress_struct* %14 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %16 = load i64, i64* %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %16, 0
  br i1 %cmp, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %do.body
  %17 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %17, i32 0, i32 3
  %18 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %18(%struct.jpeg_decompress_struct* %19)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.then.4
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.4
  %20 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte8 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %20, i32 0, i32 0
  %21 = load i8*, i8** %next_input_byte8, align 8
  store i8* %21, i8** %next_input_byte, align 8
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer9 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 1
  %23 = load i64, i64* %bytes_in_buffer9, align 8
  store i64 %23, i64* %bytes_in_buffer, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.7, %do.body
  %24 = load i64, i64* %bytes_in_buffer, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8
  %25 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8
  %26 = load i8, i8* %25, align 1
  %conv = zext i8 %26 to i32
  %shl = shl i32 %conv, 8
  %conv11 = zext i32 %shl to i64
  store i64 %conv11, i64* %length, align 8
  %27 = load i64, i64* %bytes_in_buffer, align 8
  %cmp12 = icmp eq i64 %27, 0
  br i1 %cmp12, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.end.10
  %28 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer15 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %28, i32 0, i32 3
  %29 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer15, align 8
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call16 = call i32 %29(%struct.jpeg_decompress_struct* %30)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.14
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.14
  %31 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte20 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %31, i32 0, i32 0
  %32 = load i8*, i8** %next_input_byte20, align 8
  store i8* %32, i8** %next_input_byte, align 8
  %33 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer21 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %33, i32 0, i32 1
  %34 = load i64, i64* %bytes_in_buffer21, align 8
  store i64 %34, i64* %bytes_in_buffer, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %if.end.10
  %35 = load i64, i64* %bytes_in_buffer, align 8
  %dec23 = add i64 %35, -1
  store i64 %dec23, i64* %bytes_in_buffer, align 8
  %36 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr24, i8** %next_input_byte, align 8
  %37 = load i8, i8* %36, align 1
  %conv25 = zext i8 %37 to i64
  %38 = load i64, i64* %length, align 8
  %add = add nsw i64 %38, %conv25
  store i64 %add, i64* %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.22
  br label %do.body.26

do.body.26:                                       ; preds = %do.end
  %39 = load i64, i64* %bytes_in_buffer, align 8
  %cmp27 = icmp eq i64 %39, 0
  br i1 %cmp27, label %if.then.29, label %if.end.37

if.then.29:                                       ; preds = %do.body.26
  %40 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer30 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %40, i32 0, i32 3
  %41 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer30, align 8
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call31 = call i32 %41(%struct.jpeg_decompress_struct* %42)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.29
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.then.29
  %43 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte35 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %43, i32 0, i32 0
  %44 = load i8*, i8** %next_input_byte35, align 8
  store i8* %44, i8** %next_input_byte, align 8
  %45 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer36 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %45, i32 0, i32 1
  %46 = load i64, i64* %bytes_in_buffer36, align 8
  store i64 %46, i64* %bytes_in_buffer, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.34, %do.body.26
  %47 = load i64, i64* %bytes_in_buffer, align 8
  %dec38 = add i64 %47, -1
  store i64 %dec38, i64* %bytes_in_buffer, align 8
  %48 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr39, i8** %next_input_byte, align 8
  %49 = load i8, i8* %48, align 1
  %conv40 = zext i8 %49 to i32
  store i32 %conv40, i32* %n, align 4
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.37
  %50 = load i64, i64* %length, align 8
  %51 = load i32, i32* %n, align 4
  %mul = mul nsw i32 %51, 2
  %add42 = add nsw i32 %mul, 6
  %conv43 = sext i32 %add42 to i64
  %cmp44 = icmp ne i64 %50, %conv43
  br i1 %cmp44, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.41
  %52 = load i32, i32* %n, align 4
  %cmp46 = icmp slt i32 %52, 1
  br i1 %cmp46, label %if.then.51, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false
  %53 = load i32, i32* %n, align 4
  %cmp49 = icmp sgt i32 %53, 4
  br i1 %cmp49, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %lor.lhs.false.48, %lor.lhs.false, %do.end.41
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err52, align 8
  %msg_code53 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 5
  store i32 9, i32* %msg_code53, align 4
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 0
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err54, align 8
  %error_exit55 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 0
  %58 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit55, align 8
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %60 = bitcast %struct.jpeg_decompress_struct* %59 to %struct.jpeg_common_struct*
  call void %58(%struct.jpeg_common_struct* %60)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %lor.lhs.false.48
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8
  %msg_code58 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 5
  store i32 102, i32* %msg_code58, align 4
  %63 = load i32, i32* %n, align 4
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err59, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 6
  %i60 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i60, i32 0, i64 0
  store i32 %63, i32* %arrayidx, align 4
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err61, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i32 0, i32 1
  %68 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %70 = bitcast %struct.jpeg_decompress_struct* %69 to %struct.jpeg_common_struct*
  call void %68(%struct.jpeg_common_struct* %70, i32 1)
  %71 = load i32, i32* %n, align 4
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 62
  store i32 %71, i32* %comps_in_scan, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.129, %if.end.56
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %n, align 4
  %cmp62 = icmp slt i32 %73, %74
  br i1 %cmp62, label %for.body, label %for.end.131

for.body:                                         ; preds = %for.cond
  br label %do.body.64

do.body.64:                                       ; preds = %for.body
  %75 = load i64, i64* %bytes_in_buffer, align 8
  %cmp65 = icmp eq i64 %75, 0
  br i1 %cmp65, label %if.then.67, label %if.end.75

if.then.67:                                       ; preds = %do.body.64
  %76 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer68 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %76, i32 0, i32 3
  %77 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer68, align 8
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call69 = call i32 %77(%struct.jpeg_decompress_struct* %78)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %if.then.67
  store i32 0, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.then.67
  %79 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte73 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %79, i32 0, i32 0
  %80 = load i8*, i8** %next_input_byte73, align 8
  store i8* %80, i8** %next_input_byte, align 8
  %81 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer74 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %81, i32 0, i32 1
  %82 = load i64, i64* %bytes_in_buffer74, align 8
  store i64 %82, i64* %bytes_in_buffer, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.72, %do.body.64
  %83 = load i64, i64* %bytes_in_buffer, align 8
  %dec76 = add i64 %83, -1
  store i64 %dec76, i64* %bytes_in_buffer, align 8
  %84 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr77, i8** %next_input_byte, align 8
  %85 = load i8, i8* %84, align 1
  %conv78 = zext i8 %85 to i32
  store i32 %conv78, i32* %cc, align 4
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.75
  br label %do.body.80

do.body.80:                                       ; preds = %do.end.79
  %86 = load i64, i64* %bytes_in_buffer, align 8
  %cmp81 = icmp eq i64 %86, 0
  br i1 %cmp81, label %if.then.83, label %if.end.91

if.then.83:                                       ; preds = %do.body.80
  %87 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer84 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %87, i32 0, i32 3
  %88 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer84, align 8
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call85 = call i32 %88(%struct.jpeg_decompress_struct* %89)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %if.then.83
  store i32 0, i32* %retval
  br label %return

if.end.88:                                        ; preds = %if.then.83
  %90 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte89 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %90, i32 0, i32 0
  %91 = load i8*, i8** %next_input_byte89, align 8
  store i8* %91, i8** %next_input_byte, align 8
  %92 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer90 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %92, i32 0, i32 1
  %93 = load i64, i64* %bytes_in_buffer90, align 8
  store i64 %93, i64* %bytes_in_buffer, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.88, %do.body.80
  %94 = load i64, i64* %bytes_in_buffer, align 8
  %dec92 = add i64 %94, -1
  store i64 %dec92, i64* %bytes_in_buffer, align 8
  %95 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr93 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr93, i8** %next_input_byte, align 8
  %96 = load i8, i8* %95, align 1
  %conv94 = zext i8 %96 to i32
  store i32 %conv94, i32* %c, align 4
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.91
  store i32 0, i32* %ci, align 4
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 43
  %98 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %98, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc, %do.end.95
  %99 = load i32, i32* %ci, align 4
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 8
  %101 = load i32, i32* %num_components, align 4
  %cmp97 = icmp slt i32 %99, %101
  br i1 %cmp97, label %for.body.99, label %for.end

for.body.99:                                      ; preds = %for.cond.96
  %102 = load i32, i32* %cc, align 4
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 0
  %104 = load i32, i32* %component_id, align 4
  %cmp100 = icmp eq i32 %102, %104
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %for.body.99
  br label %id_found

if.end.103:                                       ; preds = %for.body.99
  br label %for.inc

for.inc:                                          ; preds = %if.end.103
  %105 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %105, 1
  store i32 %inc, i32* %ci, align 4
  %106 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr104 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %106, i32 1
  store %struct.jpeg_component_info* %incdec.ptr104, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond.96

for.end:                                          ; preds = %for.cond.96
  %107 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %107, i32 0, i32 0
  %108 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err105, align 8
  %msg_code106 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %108, i32 0, i32 5
  store i32 5, i32* %msg_code106, align 4
  %109 = load i32, i32* %cc, align 4
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err107 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 0
  %111 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err107, align 8
  %msg_parm108 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %111, i32 0, i32 6
  %i109 = bitcast %union.anon* %msg_parm108 to [8 x i32]*
  %arrayidx110 = getelementptr inbounds [8 x i32], [8 x i32]* %i109, i32 0, i64 0
  store i32 %109, i32* %arrayidx110, align 4
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err111 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %112, i32 0, i32 0
  %113 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err111, align 8
  %error_exit112 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %113, i32 0, i32 0
  %114 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit112, align 8
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %116 = bitcast %struct.jpeg_decompress_struct* %115 to %struct.jpeg_common_struct*
  call void %114(%struct.jpeg_common_struct* %116)
  br label %id_found

id_found:                                         ; preds = %for.end, %if.then.102
  %117 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %118 = load i32, i32* %i, align 4
  %idxprom = sext i32 %118 to i64
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 63
  %arrayidx113 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  store %struct.jpeg_component_info* %117, %struct.jpeg_component_info** %arrayidx113, align 8
  %120 = load i32, i32* %c, align 4
  %shr = ashr i32 %120, 4
  %and = and i32 %shr, 15
  %121 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %121, i32 0, i32 5
  store i32 %and, i32* %dc_tbl_no, align 4
  %122 = load i32, i32* %c, align 4
  %and114 = and i32 %122, 15
  %123 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %123, i32 0, i32 6
  store i32 %and114, i32* %ac_tbl_no, align 4
  br label %do.body.115

do.body.115:                                      ; preds = %id_found
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err116 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 0
  %125 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err116, align 8
  %msg_parm117 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %125, i32 0, i32 6
  %i118 = bitcast %union.anon* %msg_parm117 to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i118, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8
  %126 = load i32, i32* %cc, align 4
  %127 = load i32*, i32** %_mp, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %127, i64 0
  store i32 %126, i32* %arrayidx119, align 4
  %128 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no120 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %128, i32 0, i32 5
  %129 = load i32, i32* %dc_tbl_no120, align 4
  %130 = load i32*, i32** %_mp, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 %129, i32* %arrayidx121, align 4
  %131 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no122 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %131, i32 0, i32 6
  %132 = load i32, i32* %ac_tbl_no122, align 4
  %133 = load i32*, i32** %_mp, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %133, i64 2
  store i32 %132, i32* %arrayidx123, align 4
  %134 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err124 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %134, i32 0, i32 0
  %135 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err124, align 8
  %msg_code125 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %135, i32 0, i32 5
  store i32 103, i32* %msg_code125, align 4
  %136 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err126 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %136, i32 0, i32 0
  %137 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err126, align 8
  %emit_message127 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %137, i32 0, i32 1
  %138 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message127, align 8
  %139 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %140 = bitcast %struct.jpeg_decompress_struct* %139 to %struct.jpeg_common_struct*
  call void %138(%struct.jpeg_common_struct* %140, i32 1)
  br label %do.end.128

do.end.128:                                       ; preds = %do.body.115
  br label %for.inc.129

for.inc.129:                                      ; preds = %do.end.128
  %141 = load i32, i32* %i, align 4
  %inc130 = add nsw i32 %141, 1
  store i32 %inc130, i32* %i, align 4
  br label %for.cond

for.end.131:                                      ; preds = %for.cond
  br label %do.body.132

do.body.132:                                      ; preds = %for.end.131
  %142 = load i64, i64* %bytes_in_buffer, align 8
  %cmp133 = icmp eq i64 %142, 0
  br i1 %cmp133, label %if.then.135, label %if.end.143

if.then.135:                                      ; preds = %do.body.132
  %143 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer136 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %143, i32 0, i32 3
  %144 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer136, align 8
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call137 = call i32 %144(%struct.jpeg_decompress_struct* %145)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.end.140, label %if.then.139

if.then.139:                                      ; preds = %if.then.135
  store i32 0, i32* %retval
  br label %return

if.end.140:                                       ; preds = %if.then.135
  %146 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte141 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %146, i32 0, i32 0
  %147 = load i8*, i8** %next_input_byte141, align 8
  store i8* %147, i8** %next_input_byte, align 8
  %148 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer142 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %148, i32 0, i32 1
  %149 = load i64, i64* %bytes_in_buffer142, align 8
  store i64 %149, i64* %bytes_in_buffer, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.140, %do.body.132
  %150 = load i64, i64* %bytes_in_buffer, align 8
  %dec144 = add i64 %150, -1
  store i64 %dec144, i64* %bytes_in_buffer, align 8
  %151 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr145 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %incdec.ptr145, i8** %next_input_byte, align 8
  %152 = load i8, i8* %151, align 1
  %conv146 = zext i8 %152 to i32
  store i32 %conv146, i32* %c, align 4
  br label %do.end.147

do.end.147:                                       ; preds = %if.end.143
  %153 = load i32, i32* %c, align 4
  %154 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %154, i32 0, i32 68
  store i32 %153, i32* %Ss, align 4
  br label %do.body.148

do.body.148:                                      ; preds = %do.end.147
  %155 = load i64, i64* %bytes_in_buffer, align 8
  %cmp149 = icmp eq i64 %155, 0
  br i1 %cmp149, label %if.then.151, label %if.end.159

if.then.151:                                      ; preds = %do.body.148
  %156 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer152 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %156, i32 0, i32 3
  %157 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer152, align 8
  %158 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call153 = call i32 %157(%struct.jpeg_decompress_struct* %158)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.end.156, label %if.then.155

if.then.155:                                      ; preds = %if.then.151
  store i32 0, i32* %retval
  br label %return

if.end.156:                                       ; preds = %if.then.151
  %159 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte157 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %159, i32 0, i32 0
  %160 = load i8*, i8** %next_input_byte157, align 8
  store i8* %160, i8** %next_input_byte, align 8
  %161 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer158 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %161, i32 0, i32 1
  %162 = load i64, i64* %bytes_in_buffer158, align 8
  store i64 %162, i64* %bytes_in_buffer, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.156, %do.body.148
  %163 = load i64, i64* %bytes_in_buffer, align 8
  %dec160 = add i64 %163, -1
  store i64 %dec160, i64* %bytes_in_buffer, align 8
  %164 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr161 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %incdec.ptr161, i8** %next_input_byte, align 8
  %165 = load i8, i8* %164, align 1
  %conv162 = zext i8 %165 to i32
  store i32 %conv162, i32* %c, align 4
  br label %do.end.163

do.end.163:                                       ; preds = %if.end.159
  %166 = load i32, i32* %c, align 4
  %167 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %167, i32 0, i32 69
  store i32 %166, i32* %Se, align 4
  br label %do.body.164

do.body.164:                                      ; preds = %do.end.163
  %168 = load i64, i64* %bytes_in_buffer, align 8
  %cmp165 = icmp eq i64 %168, 0
  br i1 %cmp165, label %if.then.167, label %if.end.175

if.then.167:                                      ; preds = %do.body.164
  %169 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer168 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %169, i32 0, i32 3
  %170 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer168, align 8
  %171 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call169 = call i32 %170(%struct.jpeg_decompress_struct* %171)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.end.172, label %if.then.171

if.then.171:                                      ; preds = %if.then.167
  store i32 0, i32* %retval
  br label %return

if.end.172:                                       ; preds = %if.then.167
  %172 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte173 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %172, i32 0, i32 0
  %173 = load i8*, i8** %next_input_byte173, align 8
  store i8* %173, i8** %next_input_byte, align 8
  %174 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer174 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %174, i32 0, i32 1
  %175 = load i64, i64* %bytes_in_buffer174, align 8
  store i64 %175, i64* %bytes_in_buffer, align 8
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.172, %do.body.164
  %176 = load i64, i64* %bytes_in_buffer, align 8
  %dec176 = add i64 %176, -1
  store i64 %dec176, i64* %bytes_in_buffer, align 8
  %177 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr177 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %incdec.ptr177, i8** %next_input_byte, align 8
  %178 = load i8, i8* %177, align 1
  %conv178 = zext i8 %178 to i32
  store i32 %conv178, i32* %c, align 4
  br label %do.end.179

do.end.179:                                       ; preds = %if.end.175
  %179 = load i32, i32* %c, align 4
  %shr180 = ashr i32 %179, 4
  %and181 = and i32 %shr180, 15
  %180 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %180, i32 0, i32 70
  store i32 %and181, i32* %Ah, align 4
  %181 = load i32, i32* %c, align 4
  %and182 = and i32 %181, 15
  %182 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %182, i32 0, i32 71
  store i32 %and182, i32* %Al, align 4
  br label %do.body.183

do.body.183:                                      ; preds = %do.end.179
  %183 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err185 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %183, i32 0, i32 0
  %184 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err185, align 8
  %msg_parm186 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %184, i32 0, i32 6
  %i187 = bitcast %union.anon* %msg_parm186 to [8 x i32]*
  %arraydecay188 = getelementptr inbounds [8 x i32], [8 x i32]* %i187, i32 0, i32 0
  store i32* %arraydecay188, i32** %_mp184, align 8
  %185 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ss189 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %185, i32 0, i32 68
  %186 = load i32, i32* %Ss189, align 4
  %187 = load i32*, i32** %_mp184, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %187, i64 0
  store i32 %186, i32* %arrayidx190, align 4
  %188 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Se191 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %188, i32 0, i32 69
  %189 = load i32, i32* %Se191, align 4
  %190 = load i32*, i32** %_mp184, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %190, i64 1
  store i32 %189, i32* %arrayidx192, align 4
  %191 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ah193 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %191, i32 0, i32 70
  %192 = load i32, i32* %Ah193, align 4
  %193 = load i32*, i32** %_mp184, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %193, i64 2
  store i32 %192, i32* %arrayidx194, align 4
  %194 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Al195 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %194, i32 0, i32 71
  %195 = load i32, i32* %Al195, align 4
  %196 = load i32*, i32** %_mp184, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %196, i64 3
  store i32 %195, i32* %arrayidx196, align 4
  %197 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err197 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %197, i32 0, i32 0
  %198 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err197, align 8
  %msg_code198 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %198, i32 0, i32 5
  store i32 104, i32* %msg_code198, align 4
  %199 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err199 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %199, i32 0, i32 0
  %200 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err199, align 8
  %emit_message200 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %200, i32 0, i32 1
  %201 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message200, align 8
  %202 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %203 = bitcast %struct.jpeg_decompress_struct* %202 to %struct.jpeg_common_struct*
  call void %201(%struct.jpeg_common_struct* %203, i32 1)
  br label %do.end.201

do.end.201:                                       ; preds = %do.body.183
  %204 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker202 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %204, i32 0, i32 78
  %205 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker202, align 8
  %next_restart_num = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %205, i32 0, i32 7
  store i32 0, i32* %next_restart_num, align 4
  %206 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %206, i32 0, i32 34
  %207 = load i32, i32* %input_scan_number, align 4
  %inc203 = add nsw i32 %207, 1
  store i32 %inc203, i32* %input_scan_number, align 4
  %208 = load i8*, i8** %next_input_byte, align 8
  %209 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte204 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %209, i32 0, i32 0
  store i8* %208, i8** %next_input_byte204, align 8
  %210 = load i64, i64* %bytes_in_buffer, align 8
  %211 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer205 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %211, i32 0, i32 1
  store i64 %210, i64* %bytes_in_buffer205, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.201, %if.then.171, %if.then.155, %if.then.139, %if.then.87, %if.then.71, %if.then.33, %if.then.18, %if.then.6
  %212 = load i32, i32* %retval
  ret i32 %212
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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  store %struct.jpeg_source_mgr* %1, %struct.jpeg_source_mgr** %datasrc, align 8
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %2, i32 0, i32 0
  %3 = load i8*, i8** %next_input_byte1, align 8
  store i8* %3, i8** %next_input_byte, align 8
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %4, i32 0, i32 1
  %5 = load i64, i64* %bytes_in_buffer2, align 8
  store i64 %5, i64* %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, i64* %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 3
  %8 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %8(%struct.jpeg_decompress_struct* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 0
  %11 = load i8*, i8** %next_input_byte4, align 8
  store i8* %11, i8** %next_input_byte, align 8
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %bytes_in_buffer5, align 8
  store i64 %13, i64* %bytes_in_buffer, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %14 = load i64, i64* %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8
  %15 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8
  %17 = load i64, i64* %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 3
  %19 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call12 = call i32 %19(%struct.jpeg_decompress_struct* %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.10
  %21 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %21, i32 0, i32 0
  %22 = load i8*, i8** %next_input_byte16, align 8
  store i8* %22, i8** %next_input_byte, align 8
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 1
  %24 = load i64, i64* %bytes_in_buffer17, align 8
  store i64 %24, i64* %bytes_in_buffer, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %25 = load i64, i64* %bytes_in_buffer, align 8
  %dec19 = add i64 %25, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8
  %26 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8
  %27 = load i8, i8* %26, align 1
  %conv21 = zext i8 %27 to i64
  %28 = load i64, i64* %length, align 8
  %add = add nsw i64 %28, %conv21
  store i64 %add, i64* %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %29 = load i64, i64* %length, align 8
  %sub = sub nsw i64 %29, 2
  store i64 %sub, i64* %length, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.108, %do.end
  %30 = load i64, i64* %length, align 8
  %cmp22 = icmp sgt i64 %30, 0
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.24

do.body.24:                                       ; preds = %while.body
  %31 = load i64, i64* %bytes_in_buffer, align 8
  %cmp25 = icmp eq i64 %31, 0
  br i1 %cmp25, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %do.body.24
  %32 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer28 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %32, i32 0, i32 3
  %33 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer28, align 8
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call29 = call i32 %33(%struct.jpeg_decompress_struct* %34)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.27
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.27
  %35 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte33 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %35, i32 0, i32 0
  %36 = load i8*, i8** %next_input_byte33, align 8
  store i8* %36, i8** %next_input_byte, align 8
  %37 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %37, i32 0, i32 1
  %38 = load i64, i64* %bytes_in_buffer34, align 8
  store i64 %38, i64* %bytes_in_buffer, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %do.body.24
  %39 = load i64, i64* %bytes_in_buffer, align 8
  %dec36 = add i64 %39, -1
  store i64 %dec36, i64* %bytes_in_buffer, align 8
  %40 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr37, i8** %next_input_byte, align 8
  %41 = load i8, i8* %40, align 1
  %conv38 = zext i8 %41 to i32
  store i32 %conv38, i32* %index, align 4
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.35
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %42 = load i64, i64* %bytes_in_buffer, align 8
  %cmp41 = icmp eq i64 %42, 0
  br i1 %cmp41, label %if.then.43, label %if.end.51

if.then.43:                                       ; preds = %do.body.40
  %43 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer44 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %43, i32 0, i32 3
  %44 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer44, align 8
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call45 = call i32 %44(%struct.jpeg_decompress_struct* %45)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.then.43
  store i32 0, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.then.43
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte49 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 0
  %47 = load i8*, i8** %next_input_byte49, align 8
  store i8* %47, i8** %next_input_byte, align 8
  %48 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer50 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %48, i32 0, i32 1
  %49 = load i64, i64* %bytes_in_buffer50, align 8
  store i64 %49, i64* %bytes_in_buffer, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.48, %do.body.40
  %50 = load i64, i64* %bytes_in_buffer, align 8
  %dec52 = add i64 %50, -1
  store i64 %dec52, i64* %bytes_in_buffer, align 8
  %51 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr53, i8** %next_input_byte, align 8
  %52 = load i8, i8* %51, align 1
  %conv54 = zext i8 %52 to i32
  store i32 %conv54, i32* %val, align 4
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.51
  %53 = load i64, i64* %length, align 8
  %sub56 = sub nsw i64 %53, 2
  store i64 %sub56, i64* %length, align 8
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 5
  store i32 78, i32* %msg_code, align 4
  %56 = load i32, i32* %index, align 4
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %56, i32* %arrayidx, align 4
  %59 = load i32, i32* %val, align 4
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err58, align 8
  %msg_parm59 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 6
  %i60 = bitcast %union.anon* %msg_parm59 to [8 x i32]*
  %arrayidx61 = getelementptr inbounds [8 x i32], [8 x i32]* %i60, i32 0, i64 1
  store i32 %59, i32* %arrayidx61, align 4
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 0
  %63 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err62, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %63, i32 0, i32 1
  %64 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %66 = bitcast %struct.jpeg_decompress_struct* %65 to %struct.jpeg_common_struct*
  call void %64(%struct.jpeg_common_struct* %66, i32 1)
  %67 = load i32, i32* %index, align 4
  %cmp63 = icmp slt i32 %67, 0
  br i1 %cmp63, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.55
  %68 = load i32, i32* %index, align 4
  %cmp65 = icmp sge i32 %68, 32
  br i1 %cmp65, label %if.then.67, label %if.end.75

if.then.67:                                       ; preds = %lor.lhs.false, %do.end.55
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8
  %msg_code69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 5
  store i32 26, i32* %msg_code69, align 4
  %71 = load i32, i32* %index, align 4
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8
  %msg_parm71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i32 0, i32 6
  %i72 = bitcast %union.anon* %msg_parm71 to [8 x i32]*
  %arrayidx73 = getelementptr inbounds [8 x i32], [8 x i32]* %i72, i32 0, i64 0
  store i32 %71, i32* %arrayidx73, align 4
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err74 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 0
  %75 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err74, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %75, i32 0, i32 0
  %76 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %78 = bitcast %struct.jpeg_decompress_struct* %77 to %struct.jpeg_common_struct*
  call void %76(%struct.jpeg_common_struct* %78)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.67, %lor.lhs.false
  %79 = load i32, i32* %index, align 4
  %cmp76 = icmp sge i32 %79, 16
  br i1 %cmp76, label %if.then.78, label %if.else

if.then.78:                                       ; preds = %if.end.75
  %80 = load i32, i32* %val, align 4
  %conv79 = trunc i32 %80 to i8
  %81 = load i32, i32* %index, align 4
  %sub80 = sub nsw i32 %81, 16
  %idxprom = sext i32 %sub80 to i64
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %arith_ac_K = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 48
  %arrayidx81 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_ac_K, i32 0, i64 %idxprom
  store i8 %conv79, i8* %arrayidx81, align 1
  br label %if.end.108

if.else:                                          ; preds = %if.end.75
  %83 = load i32, i32* %val, align 4
  %and = and i32 %83, 15
  %conv82 = trunc i32 %and to i8
  %84 = load i32, i32* %index, align 4
  %idxprom83 = sext i32 %84 to i64
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %arith_dc_L = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 46
  %arrayidx84 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L, i32 0, i64 %idxprom83
  store i8 %conv82, i8* %arrayidx84, align 1
  %86 = load i32, i32* %val, align 4
  %shr = ashr i32 %86, 4
  %conv85 = trunc i32 %shr to i8
  %87 = load i32, i32* %index, align 4
  %idxprom86 = sext i32 %87 to i64
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %arith_dc_U = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 47
  %arrayidx87 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U, i32 0, i64 %idxprom86
  store i8 %conv85, i8* %arrayidx87, align 1
  %89 = load i32, i32* %index, align 4
  %idxprom88 = sext i32 %89 to i64
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %arith_dc_L89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 46
  %arrayidx90 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L89, i32 0, i64 %idxprom88
  %91 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %91 to i32
  %92 = load i32, i32* %index, align 4
  %idxprom92 = sext i32 %92 to i64
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %arith_dc_U93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 47
  %arrayidx94 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U93, i32 0, i64 %idxprom92
  %94 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %94 to i32
  %cmp96 = icmp sgt i32 %conv91, %conv95
  br i1 %cmp96, label %if.then.98, label %if.end.107

if.then.98:                                       ; preds = %if.else
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err99 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 0
  %96 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err99, align 8
  %msg_code100 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %96, i32 0, i32 5
  store i32 27, i32* %msg_code100, align 4
  %97 = load i32, i32* %val, align 4
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %98, i32 0, i32 0
  %99 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err101, align 8
  %msg_parm102 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %99, i32 0, i32 6
  %i103 = bitcast %union.anon* %msg_parm102 to [8 x i32]*
  %arrayidx104 = getelementptr inbounds [8 x i32], [8 x i32]* %i103, i32 0, i64 0
  store i32 %97, i32* %arrayidx104, align 4
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 0
  %101 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err105, align 8
  %error_exit106 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %101, i32 0, i32 0
  %102 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit106, align 8
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %104 = bitcast %struct.jpeg_decompress_struct* %103 to %struct.jpeg_common_struct*
  call void %102(%struct.jpeg_common_struct* %104)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.98, %if.else
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.78
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %105 = load i8*, i8** %next_input_byte, align 8
  %106 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte109 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %106, i32 0, i32 0
  store i8* %105, i8** %next_input_byte109, align 8
  %107 = load i64, i64* %bytes_in_buffer, align 8
  %108 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer110 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %108, i32 0, i32 1
  store i64 %107, i64* %bytes_in_buffer110, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.47, %if.then.31, %if.then.14, %if.then.3
  %109 = load i32, i32* %retval
  ret i32 %109
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
  %_mp = alloca i32*, align 8
  %_mp101 = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  store %struct.jpeg_source_mgr* %1, %struct.jpeg_source_mgr** %datasrc, align 8
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %2, i32 0, i32 0
  %3 = load i8*, i8** %next_input_byte1, align 8
  store i8* %3, i8** %next_input_byte, align 8
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %4, i32 0, i32 1
  %5 = load i64, i64* %bytes_in_buffer2, align 8
  store i64 %5, i64* %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, i64* %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 3
  %8 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %8(%struct.jpeg_decompress_struct* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 0
  %11 = load i8*, i8** %next_input_byte4, align 8
  store i8* %11, i8** %next_input_byte, align 8
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %bytes_in_buffer5, align 8
  store i64 %13, i64* %bytes_in_buffer, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %14 = load i64, i64* %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8
  %15 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8
  %17 = load i64, i64* %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 3
  %19 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call12 = call i32 %19(%struct.jpeg_decompress_struct* %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.10
  %21 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %21, i32 0, i32 0
  %22 = load i8*, i8** %next_input_byte16, align 8
  store i8* %22, i8** %next_input_byte, align 8
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 1
  %24 = load i64, i64* %bytes_in_buffer17, align 8
  store i64 %24, i64* %bytes_in_buffer, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %25 = load i64, i64* %bytes_in_buffer, align 8
  %dec19 = add i64 %25, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8
  %26 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8
  %27 = load i8, i8* %26, align 1
  %conv21 = zext i8 %27 to i64
  %28 = load i64, i64* %length, align 8
  %add = add nsw i64 %28, %conv21
  store i64 %add, i64* %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %29 = load i64, i64* %length, align 8
  %sub = sub nsw i64 %29, 2
  store i64 %sub, i64* %length, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.198, %do.end
  %30 = load i64, i64* %length, align 8
  %cmp22 = icmp sgt i64 %30, 0
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.24

do.body.24:                                       ; preds = %while.body
  %31 = load i64, i64* %bytes_in_buffer, align 8
  %cmp25 = icmp eq i64 %31, 0
  br i1 %cmp25, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %do.body.24
  %32 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer28 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %32, i32 0, i32 3
  %33 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer28, align 8
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call29 = call i32 %33(%struct.jpeg_decompress_struct* %34)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.27
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.27
  %35 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte33 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %35, i32 0, i32 0
  %36 = load i8*, i8** %next_input_byte33, align 8
  store i8* %36, i8** %next_input_byte, align 8
  %37 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %37, i32 0, i32 1
  %38 = load i64, i64* %bytes_in_buffer34, align 8
  store i64 %38, i64* %bytes_in_buffer, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %do.body.24
  %39 = load i64, i64* %bytes_in_buffer, align 8
  %dec36 = add i64 %39, -1
  store i64 %dec36, i64* %bytes_in_buffer, align 8
  %40 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr37, i8** %next_input_byte, align 8
  %41 = load i8, i8* %40, align 1
  %conv38 = zext i8 %41 to i32
  store i32 %conv38, i32* %index, align 4
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.35
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 5
  store i32 79, i32* %msg_code, align 4
  %44 = load i32, i32* %index, align 4
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err40, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 6
  %i41 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i41, i32 0, i64 0
  store i32 %44, i32* %arrayidx, align 4
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err42, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 1
  %49 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %51 = bitcast %struct.jpeg_decompress_struct* %50 to %struct.jpeg_common_struct*
  call void %49(%struct.jpeg_common_struct* %51, i32 1)
  %arrayidx43 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 0
  store i8 0, i8* %arrayidx43, align 1
  store i32 0, i32* %count, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.39
  %52 = load i32, i32* %i, align 4
  %cmp44 = icmp sle i32 %52, 16
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.46

do.body.46:                                       ; preds = %for.body
  %53 = load i64, i64* %bytes_in_buffer, align 8
  %cmp47 = icmp eq i64 %53, 0
  br i1 %cmp47, label %if.then.49, label %if.end.57

if.then.49:                                       ; preds = %do.body.46
  %54 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer50 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %54, i32 0, i32 3
  %55 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer50, align 8
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call51 = call i32 %55(%struct.jpeg_decompress_struct* %56)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.then.49
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.then.49
  %57 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte55 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %57, i32 0, i32 0
  %58 = load i8*, i8** %next_input_byte55, align 8
  store i8* %58, i8** %next_input_byte, align 8
  %59 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer56 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %59, i32 0, i32 1
  %60 = load i64, i64* %bytes_in_buffer56, align 8
  store i64 %60, i64* %bytes_in_buffer, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.54, %do.body.46
  %61 = load i64, i64* %bytes_in_buffer, align 8
  %dec58 = add i64 %61, -1
  store i64 %dec58, i64* %bytes_in_buffer, align 8
  %62 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr59, i8** %next_input_byte, align 8
  %63 = load i8, i8* %62, align 1
  %64 = load i32, i32* %i, align 4
  %idxprom = sext i32 %64 to i64
  %arrayidx60 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom
  store i8 %63, i8* %arrayidx60, align 1
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.57
  %65 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %65 to i64
  %arrayidx63 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom62
  %66 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %66 to i32
  %67 = load i32, i32* %count, align 4
  %add65 = add nsw i32 %67, %conv64
  store i32 %add65, i32* %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end.61
  %68 = load i32, i32* %i, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %69 = load i64, i64* %length, align 8
  %sub66 = sub nsw i64 %69, 17
  store i64 %sub66, i64* %length, align 8
  br label %do.body.67

do.body.67:                                       ; preds = %for.end
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %70, i32 0, i32 0
  %71 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8
  %msg_parm69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %71, i32 0, i32 6
  %i70 = bitcast %union.anon* %msg_parm69 to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i70, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8
  %arrayidx71 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 1
  %72 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %72 to i32
  %73 = load i32*, i32** %_mp, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %conv72, i32* %arrayidx73, align 4
  %arrayidx74 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 2
  %74 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %74 to i32
  %75 = load i32*, i32** %_mp, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %conv75, i32* %arrayidx76, align 4
  %arrayidx77 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 3
  %76 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %76 to i32
  %77 = load i32*, i32** %_mp, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 %conv78, i32* %arrayidx79, align 4
  %arrayidx80 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 4
  %78 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %78 to i32
  %79 = load i32*, i32** %_mp, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 %conv81, i32* %arrayidx82, align 4
  %arrayidx83 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 5
  %80 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %80 to i32
  %81 = load i32*, i32** %_mp, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %81, i64 4
  store i32 %conv84, i32* %arrayidx85, align 4
  %arrayidx86 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 6
  %82 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %82 to i32
  %83 = load i32*, i32** %_mp, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %83, i64 5
  store i32 %conv87, i32* %arrayidx88, align 4
  %arrayidx89 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 7
  %84 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %84 to i32
  %85 = load i32*, i32** %_mp, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %85, i64 6
  store i32 %conv90, i32* %arrayidx91, align 4
  %arrayidx92 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 8
  %86 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %86 to i32
  %87 = load i32*, i32** %_mp, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %87, i64 7
  store i32 %conv93, i32* %arrayidx94, align 4
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err95, align 8
  %msg_code96 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 5
  store i32 85, i32* %msg_code96, align 4
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 0
  %91 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err97, align 8
  %emit_message98 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %91, i32 0, i32 1
  %92 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message98, align 8
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %94 = bitcast %struct.jpeg_decompress_struct* %93 to %struct.jpeg_common_struct*
  call void %92(%struct.jpeg_common_struct* %94, i32 2)
  br label %do.end.99

do.end.99:                                        ; preds = %do.body.67
  br label %do.body.100

do.body.100:                                      ; preds = %do.end.99
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 0
  %96 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err102, align 8
  %msg_parm103 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %96, i32 0, i32 6
  %i104 = bitcast %union.anon* %msg_parm103 to [8 x i32]*
  %arraydecay105 = getelementptr inbounds [8 x i32], [8 x i32]* %i104, i32 0, i32 0
  store i32* %arraydecay105, i32** %_mp101, align 8
  %arrayidx106 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 9
  %97 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %97 to i32
  %98 = load i32*, i32** %_mp101, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %conv107, i32* %arrayidx108, align 4
  %arrayidx109 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 10
  %99 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %99 to i32
  %100 = load i32*, i32** %_mp101, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %conv110, i32* %arrayidx111, align 4
  %arrayidx112 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 11
  %101 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %101 to i32
  %102 = load i32*, i32** %_mp101, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %102, i64 2
  store i32 %conv113, i32* %arrayidx114, align 4
  %arrayidx115 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 12
  %103 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %103 to i32
  %104 = load i32*, i32** %_mp101, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %104, i64 3
  store i32 %conv116, i32* %arrayidx117, align 4
  %arrayidx118 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 13
  %105 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %105 to i32
  %106 = load i32*, i32** %_mp101, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %106, i64 4
  store i32 %conv119, i32* %arrayidx120, align 4
  %arrayidx121 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 14
  %107 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %107 to i32
  %108 = load i32*, i32** %_mp101, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %108, i64 5
  store i32 %conv122, i32* %arrayidx123, align 4
  %arrayidx124 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 15
  %109 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %109 to i32
  %110 = load i32*, i32** %_mp101, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %110, i64 6
  store i32 %conv125, i32* %arrayidx126, align 4
  %arrayidx127 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 16
  %111 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %111 to i32
  %112 = load i32*, i32** %_mp101, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %112, i64 7
  store i32 %conv128, i32* %arrayidx129, align 4
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err130 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 0
  %114 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err130, align 8
  %msg_code131 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %114, i32 0, i32 5
  store i32 85, i32* %msg_code131, align 4
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %115, i32 0, i32 0
  %116 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err132, align 8
  %emit_message133 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %116, i32 0, i32 1
  %117 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message133, align 8
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %119 = bitcast %struct.jpeg_decompress_struct* %118 to %struct.jpeg_common_struct*
  call void %117(%struct.jpeg_common_struct* %119, i32 2)
  br label %do.end.134

do.end.134:                                       ; preds = %do.body.100
  %120 = load i32, i32* %count, align 4
  %cmp135 = icmp sgt i32 %120, 256
  br i1 %cmp135, label %if.then.140, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.134
  %121 = load i32, i32* %count, align 4
  %conv137 = sext i32 %121 to i64
  %122 = load i64, i64* %length, align 8
  %cmp138 = icmp sgt i64 %conv137, %122
  br i1 %cmp138, label %if.then.140, label %if.end.144

if.then.140:                                      ; preds = %lor.lhs.false, %do.end.134
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err141 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %123, i32 0, i32 0
  %124 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err141, align 8
  %msg_code142 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %124, i32 0, i32 5
  store i32 28, i32* %msg_code142, align 4
  %125 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err143 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %125, i32 0, i32 0
  %126 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err143, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %126, i32 0, i32 0
  %127 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %128 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %129 = bitcast %struct.jpeg_decompress_struct* %128 to %struct.jpeg_common_struct*
  call void %127(%struct.jpeg_common_struct* %129)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.140, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.166, %if.end.144
  %130 = load i32, i32* %i, align 4
  %131 = load i32, i32* %count, align 4
  %cmp146 = icmp slt i32 %130, %131
  br i1 %cmp146, label %for.body.148, label %for.end.168

for.body.148:                                     ; preds = %for.cond.145
  br label %do.body.149

do.body.149:                                      ; preds = %for.body.148
  %132 = load i64, i64* %bytes_in_buffer, align 8
  %cmp150 = icmp eq i64 %132, 0
  br i1 %cmp150, label %if.then.152, label %if.end.160

if.then.152:                                      ; preds = %do.body.149
  %133 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer153 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %133, i32 0, i32 3
  %134 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer153, align 8
  %135 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call154 = call i32 %134(%struct.jpeg_decompress_struct* %135)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.end.157, label %if.then.156

if.then.156:                                      ; preds = %if.then.152
  store i32 0, i32* %retval
  br label %return

if.end.157:                                       ; preds = %if.then.152
  %136 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte158 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %136, i32 0, i32 0
  %137 = load i8*, i8** %next_input_byte158, align 8
  store i8* %137, i8** %next_input_byte, align 8
  %138 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer159 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %138, i32 0, i32 1
  %139 = load i64, i64* %bytes_in_buffer159, align 8
  store i64 %139, i64* %bytes_in_buffer, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.157, %do.body.149
  %140 = load i64, i64* %bytes_in_buffer, align 8
  %dec161 = add i64 %140, -1
  store i64 %dec161, i64* %bytes_in_buffer, align 8
  %141 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr162 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr162, i8** %next_input_byte, align 8
  %142 = load i8, i8* %141, align 1
  %143 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %143 to i64
  %arrayidx164 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom163
  store i8 %142, i8* %arrayidx164, align 1
  br label %do.end.165

do.end.165:                                       ; preds = %if.end.160
  br label %for.inc.166

for.inc.166:                                      ; preds = %do.end.165
  %144 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %144, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond.145

for.end.168:                                      ; preds = %for.cond.145
  %145 = load i32, i32* %count, align 4
  %conv169 = sext i32 %145 to i64
  %146 = load i64, i64* %length, align 8
  %sub170 = sub nsw i64 %146, %conv169
  store i64 %sub170, i64* %length, align 8
  %147 = load i32, i32* %index, align 4
  %and = and i32 %147, 16
  %tobool171 = icmp ne i32 %and, 0
  br i1 %tobool171, label %if.then.172, label %if.else

if.then.172:                                      ; preds = %for.end.168
  %148 = load i32, i32* %index, align 4
  %sub173 = sub nsw i32 %148, 16
  store i32 %sub173, i32* %index, align 4
  %149 = load i32, i32* %index, align 4
  %idxprom174 = sext i32 %149 to i64
  %150 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %150, i32 0, i32 41
  %arrayidx175 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom174
  store %struct.JHUFF_TBL** %arrayidx175, %struct.JHUFF_TBL*** %htblptr, align 8
  br label %if.end.178

if.else:                                          ; preds = %for.end.168
  %151 = load i32, i32* %index, align 4
  %idxprom176 = sext i32 %151 to i64
  %152 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %152, i32 0, i32 40
  %arrayidx177 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom176
  store %struct.JHUFF_TBL** %arrayidx177, %struct.JHUFF_TBL*** %htblptr, align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.else, %if.then.172
  %153 = load i32, i32* %index, align 4
  %cmp179 = icmp slt i32 %153, 0
  br i1 %cmp179, label %if.then.184, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %if.end.178
  %154 = load i32, i32* %index, align 4
  %cmp182 = icmp sge i32 %154, 4
  br i1 %cmp182, label %if.then.184, label %if.end.193

if.then.184:                                      ; preds = %lor.lhs.false.181, %if.end.178
  %155 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err185 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %155, i32 0, i32 0
  %156 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err185, align 8
  %msg_code186 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %156, i32 0, i32 5
  store i32 29, i32* %msg_code186, align 4
  %157 = load i32, i32* %index, align 4
  %158 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err187 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %158, i32 0, i32 0
  %159 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err187, align 8
  %msg_parm188 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %159, i32 0, i32 6
  %i189 = bitcast %union.anon* %msg_parm188 to [8 x i32]*
  %arrayidx190 = getelementptr inbounds [8 x i32], [8 x i32]* %i189, i32 0, i64 0
  store i32 %157, i32* %arrayidx190, align 4
  %160 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err191 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %160, i32 0, i32 0
  %161 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err191, align 8
  %error_exit192 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %161, i32 0, i32 0
  %162 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit192, align 8
  %163 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %164 = bitcast %struct.jpeg_decompress_struct* %163 to %struct.jpeg_common_struct*
  call void %162(%struct.jpeg_common_struct* %164)
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.184, %lor.lhs.false.181
  %165 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8
  %166 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %165, align 8
  %cmp194 = icmp eq %struct.JHUFF_TBL* %166, null
  br i1 %cmp194, label %if.then.196, label %if.end.198

if.then.196:                                      ; preds = %if.end.193
  %167 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %168 = bitcast %struct.jpeg_decompress_struct* %167 to %struct.jpeg_common_struct*
  %call197 = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %168)
  %169 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8
  store %struct.JHUFF_TBL* %call197, %struct.JHUFF_TBL** %169, align 8
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.196, %if.end.193
  %170 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8
  %171 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %170, align 8
  %bits199 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %171, i32 0, i32 0
  %arraydecay200 = getelementptr inbounds [17 x i8], [17 x i8]* %bits199, i32 0, i32 0
  %arraydecay201 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay200, i8* %arraydecay201, i64 17, i32 1, i1 false)
  %172 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8
  %173 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %172, align 8
  %huffval202 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %173, i32 0, i32 1
  %arraydecay203 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval202, i32 0, i32 0
  %arraydecay204 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay203, i8* %arraydecay204, i64 256, i32 1, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %174 = load i8*, i8** %next_input_byte, align 8
  %175 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte205 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %175, i32 0, i32 0
  store i8* %174, i8** %next_input_byte205, align 8
  %176 = load i64, i64* %bytes_in_buffer, align 8
  %177 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer206 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %177, i32 0, i32 1
  store i64 %176, i64* %bytes_in_buffer206, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.156, %if.then.53, %if.then.31, %if.then.14, %if.then.3
  %178 = load i32, i32* %retval
  ret i32 %178
}

; Function Attrs: nounwind uwtable
define internal i32 @get_dqt(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %prec = alloca i32, align 4
  %tmp = alloca i32, align 4
  %quant_ptr = alloca %struct.JQUANT_TBL*, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %_mp = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  store %struct.jpeg_source_mgr* %1, %struct.jpeg_source_mgr** %datasrc, align 8
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %2, i32 0, i32 0
  %3 = load i8*, i8** %next_input_byte4, align 8
  store i8* %3, i8** %next_input_byte, align 8
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer6 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %4, i32 0, i32 1
  %5 = load i64, i64* %bytes_in_buffer6, align 8
  store i64 %5, i64* %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, i64* %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %do.body
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 3
  %8 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %8(%struct.jpeg_decompress_struct* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte8 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 0
  %11 = load i8*, i8** %next_input_byte8, align 8
  store i8* %11, i8** %next_input_byte, align 8
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer9 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %bytes_in_buffer9, align 8
  store i64 %13, i64* %bytes_in_buffer, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %do.body
  %14 = load i64, i64* %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8
  %15 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %conv11 = zext i32 %shl to i64
  store i64 %conv11, i64* %length, align 8
  %17 = load i64, i64* %bytes_in_buffer, align 8
  %cmp12 = icmp eq i64 %17, 0
  br i1 %cmp12, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.end.10
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer15 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 3
  %19 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer15, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call16 = call i32 %19(%struct.jpeg_decompress_struct* %20)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.14
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.14
  %21 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte20 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %21, i32 0, i32 0
  %22 = load i8*, i8** %next_input_byte20, align 8
  store i8* %22, i8** %next_input_byte, align 8
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer21 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 1
  %24 = load i64, i64* %bytes_in_buffer21, align 8
  store i64 %24, i64* %bytes_in_buffer, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %if.end.10
  %25 = load i64, i64* %bytes_in_buffer, align 8
  %dec23 = add i64 %25, -1
  store i64 %dec23, i64* %bytes_in_buffer, align 8
  %26 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr24, i8** %next_input_byte, align 8
  %27 = load i8, i8* %26, align 1
  %conv25 = zext i8 %27 to i64
  %28 = load i64, i64* %length, align 8
  %add = add nsw i64 %28, %conv25
  store i64 %add, i64* %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %29 = load i64, i64* %length, align 8
  %sub = sub nsw i64 %29, 2
  store i64 %sub, i64* %length, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.205, %do.end
  %30 = load i64, i64* %length, align 8
  %cmp26 = icmp sgt i64 %30, 0
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.28

do.body.28:                                       ; preds = %while.body
  %31 = load i64, i64* %bytes_in_buffer, align 8
  %cmp29 = icmp eq i64 %31, 0
  br i1 %cmp29, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %do.body.28
  %32 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer32 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %32, i32 0, i32 3
  %33 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer32, align 8
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call33 = call i32 %33(%struct.jpeg_decompress_struct* %34)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.then.31
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.then.31
  %35 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte37 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %35, i32 0, i32 0
  %36 = load i8*, i8** %next_input_byte37, align 8
  store i8* %36, i8** %next_input_byte, align 8
  %37 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer38 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %37, i32 0, i32 1
  %38 = load i64, i64* %bytes_in_buffer38, align 8
  store i64 %38, i64* %bytes_in_buffer, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.36, %do.body.28
  %39 = load i64, i64* %bytes_in_buffer, align 8
  %dec40 = add i64 %39, -1
  store i64 %dec40, i64* %bytes_in_buffer, align 8
  %40 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr41, i8** %next_input_byte, align 8
  %41 = load i8, i8* %40, align 1
  %conv42 = zext i8 %41 to i32
  store i32 %conv42, i32* %n, align 4
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.39
  %42 = load i32, i32* %n, align 4
  %shr = ashr i32 %42, 4
  store i32 %shr, i32* %prec, align 4
  %43 = load i32, i32* %n, align 4
  %and = and i32 %43, 15
  store i32 %and, i32* %n, align 4
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 5
  store i32 80, i32* %msg_code, align 4
  %46 = load i32, i32* %n, align 4
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err44, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 6
  %i45 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i45, i32 0, i64 0
  store i32 %46, i32* %arrayidx, align 4
  %49 = load i32, i32* %prec, align 4
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8
  %msg_parm47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 6
  %i48 = bitcast %union.anon* %msg_parm47 to [8 x i32]*
  %arrayidx49 = getelementptr inbounds [8 x i32], [8 x i32]* %i48, i32 0, i64 1
  store i32 %49, i32* %arrayidx49, align 4
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err50, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 1
  %54 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %56 = bitcast %struct.jpeg_decompress_struct* %55 to %struct.jpeg_common_struct*
  call void %54(%struct.jpeg_common_struct* %56, i32 1)
  %57 = load i32, i32* %n, align 4
  %cmp51 = icmp sge i32 %57, 4
  br i1 %cmp51, label %if.then.53, label %if.end.61

if.then.53:                                       ; preds = %do.end.43
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err54, align 8
  %msg_code55 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 5
  store i32 30, i32* %msg_code55, align 4
  %60 = load i32, i32* %n, align 4
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err56, align 8
  %msg_parm57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 6
  %i58 = bitcast %union.anon* %msg_parm57 to [8 x i32]*
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %i58, i32 0, i64 0
  store i32 %60, i32* %arrayidx59, align 4
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err60, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 0
  %65 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %67 = bitcast %struct.jpeg_decompress_struct* %66 to %struct.jpeg_common_struct*
  call void %65(%struct.jpeg_common_struct* %67)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.53, %do.end.43
  %68 = load i32, i32* %n, align 4
  %idxprom = sext i32 %68 to i64
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 39
  %arrayidx62 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %70 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx62, align 8
  %cmp63 = icmp eq %struct.JQUANT_TBL* %70, null
  br i1 %cmp63, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %if.end.61
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %72 = bitcast %struct.jpeg_decompress_struct* %71 to %struct.jpeg_common_struct*
  %call66 = call %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* %72)
  %73 = load i32, i32* %n, align 4
  %idxprom67 = sext i32 %73 to i64
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quant_tbl_ptrs68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 39
  %arrayidx69 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs68, i32 0, i64 %idxprom67
  store %struct.JQUANT_TBL* %call66, %struct.JQUANT_TBL** %arrayidx69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %if.end.61
  %75 = load i32, i32* %n, align 4
  %idxprom71 = sext i32 %75 to i64
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quant_tbl_ptrs72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 39
  %arrayidx73 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs72, i32 0, i64 %idxprom71
  %77 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx73, align 8
  store %struct.JQUANT_TBL* %77, %struct.JQUANT_TBL** %quant_ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.70
  %78 = load i32, i32* %i, align 4
  %cmp74 = icmp slt i32 %78, 64
  br i1 %cmp74, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %79 = load i32, i32* %prec, align 4
  %tobool76 = icmp ne i32 %79, 0
  br i1 %tobool76, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %for.body
  br label %do.body.78

do.body.78:                                       ; preds = %if.then.77
  %80 = load i64, i64* %bytes_in_buffer, align 8
  %cmp79 = icmp eq i64 %80, 0
  br i1 %cmp79, label %if.then.81, label %if.end.89

if.then.81:                                       ; preds = %do.body.78
  %81 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer82 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %81, i32 0, i32 3
  %82 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer82, align 8
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call83 = call i32 %82(%struct.jpeg_decompress_struct* %83)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %if.then.81
  store i32 0, i32* %retval
  br label %return

if.end.86:                                        ; preds = %if.then.81
  %84 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte87 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %84, i32 0, i32 0
  %85 = load i8*, i8** %next_input_byte87, align 8
  store i8* %85, i8** %next_input_byte, align 8
  %86 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer88 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %86, i32 0, i32 1
  %87 = load i64, i64* %bytes_in_buffer88, align 8
  store i64 %87, i64* %bytes_in_buffer, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.86, %do.body.78
  %88 = load i64, i64* %bytes_in_buffer, align 8
  %dec90 = add i64 %88, -1
  store i64 %dec90, i64* %bytes_in_buffer, align 8
  %89 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr91, i8** %next_input_byte, align 8
  %90 = load i8, i8* %89, align 1
  %conv92 = zext i8 %90 to i32
  %shl93 = shl i32 %conv92, 8
  store i32 %shl93, i32* %tmp, align 4
  %91 = load i64, i64* %bytes_in_buffer, align 8
  %cmp94 = icmp eq i64 %91, 0
  br i1 %cmp94, label %if.then.96, label %if.end.104

if.then.96:                                       ; preds = %if.end.89
  %92 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer97 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %92, i32 0, i32 3
  %93 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer97, align 8
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call98 = call i32 %93(%struct.jpeg_decompress_struct* %94)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.end.101, label %if.then.100

if.then.100:                                      ; preds = %if.then.96
  store i32 0, i32* %retval
  br label %return

if.end.101:                                       ; preds = %if.then.96
  %95 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte102 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %95, i32 0, i32 0
  %96 = load i8*, i8** %next_input_byte102, align 8
  store i8* %96, i8** %next_input_byte, align 8
  %97 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer103 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %97, i32 0, i32 1
  %98 = load i64, i64* %bytes_in_buffer103, align 8
  store i64 %98, i64* %bytes_in_buffer, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.101, %if.end.89
  %99 = load i64, i64* %bytes_in_buffer, align 8
  %dec105 = add i64 %99, -1
  store i64 %dec105, i64* %bytes_in_buffer, align 8
  %100 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr106, i8** %next_input_byte, align 8
  %101 = load i8, i8* %100, align 1
  %conv107 = zext i8 %101 to i32
  %102 = load i32, i32* %tmp, align 4
  %add108 = add i32 %102, %conv107
  store i32 %add108, i32* %tmp, align 4
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.104
  br label %if.end.126

if.else:                                          ; preds = %for.body
  br label %do.body.110

do.body.110:                                      ; preds = %if.else
  %103 = load i64, i64* %bytes_in_buffer, align 8
  %cmp111 = icmp eq i64 %103, 0
  br i1 %cmp111, label %if.then.113, label %if.end.121

if.then.113:                                      ; preds = %do.body.110
  %104 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer114 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %104, i32 0, i32 3
  %105 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer114, align 8
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call115 = call i32 %105(%struct.jpeg_decompress_struct* %106)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %if.then.113
  store i32 0, i32* %retval
  br label %return

if.end.118:                                       ; preds = %if.then.113
  %107 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte119 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %107, i32 0, i32 0
  %108 = load i8*, i8** %next_input_byte119, align 8
  store i8* %108, i8** %next_input_byte, align 8
  %109 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer120 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %109, i32 0, i32 1
  %110 = load i64, i64* %bytes_in_buffer120, align 8
  store i64 %110, i64* %bytes_in_buffer, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.118, %do.body.110
  %111 = load i64, i64* %bytes_in_buffer, align 8
  %dec122 = add i64 %111, -1
  store i64 %dec122, i64* %bytes_in_buffer, align 8
  %112 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr123, i8** %next_input_byte, align 8
  %113 = load i8, i8* %112, align 1
  %conv124 = zext i8 %113 to i32
  store i32 %conv124, i32* %tmp, align 4
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.121
  br label %if.end.126

if.end.126:                                       ; preds = %do.end.125, %do.end.109
  %114 = load i32, i32* %tmp, align 4
  %conv127 = trunc i32 %114 to i16
  %115 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %115 to i64
  %arrayidx129 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom128
  %116 = load i32, i32* %arrayidx129, align 4
  %idxprom130 = sext i32 %116 to i64
  %117 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %117, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 %idxprom130
  store i16 %conv127, i16* %arrayidx131, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.126
  %118 = load i32, i32* %i, align 4
  %inc = add nsw i32 %118, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 0
  %120 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err132, align 8
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %120, i32 0, i32 7
  %121 = load i32, i32* %trace_level, align 4
  %cmp133 = icmp sge i32 %121, 2
  br i1 %cmp133, label %if.then.135, label %if.end.200

if.then.135:                                      ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.197, %if.then.135
  %122 = load i32, i32* %i, align 4
  %cmp137 = icmp slt i32 %122, 64
  br i1 %cmp137, label %for.body.139, label %for.end.199

for.body.139:                                     ; preds = %for.cond.136
  br label %do.body.140

do.body.140:                                      ; preds = %for.body.139
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err142 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %123, i32 0, i32 0
  %124 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err142, align 8
  %msg_parm143 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %124, i32 0, i32 6
  %i144 = bitcast %union.anon* %msg_parm143 to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i144, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8
  %125 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %125 to i64
  %126 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8
  %quantval146 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %126, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval146, i32 0, i64 %idxprom145
  %127 = load i16, i16* %arrayidx147, align 2
  %conv148 = zext i16 %127 to i32
  %128 = load i32*, i32** %_mp, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %conv148, i32* %arrayidx149, align 4
  %129 = load i32, i32* %i, align 4
  %add150 = add nsw i32 %129, 1
  %idxprom151 = sext i32 %add150 to i64
  %130 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8
  %quantval152 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %130, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval152, i32 0, i64 %idxprom151
  %131 = load i16, i16* %arrayidx153, align 2
  %conv154 = zext i16 %131 to i32
  %132 = load i32*, i32** %_mp, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %132, i64 1
  store i32 %conv154, i32* %arrayidx155, align 4
  %133 = load i32, i32* %i, align 4
  %add156 = add nsw i32 %133, 2
  %idxprom157 = sext i32 %add156 to i64
  %134 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8
  %quantval158 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %134, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval158, i32 0, i64 %idxprom157
  %135 = load i16, i16* %arrayidx159, align 2
  %conv160 = zext i16 %135 to i32
  %136 = load i32*, i32** %_mp, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %136, i64 2
  store i32 %conv160, i32* %arrayidx161, align 4
  %137 = load i32, i32* %i, align 4
  %add162 = add nsw i32 %137, 3
  %idxprom163 = sext i32 %add162 to i64
  %138 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8
  %quantval164 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %138, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval164, i32 0, i64 %idxprom163
  %139 = load i16, i16* %arrayidx165, align 2
  %conv166 = zext i16 %139 to i32
  %140 = load i32*, i32** %_mp, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %140, i64 3
  store i32 %conv166, i32* %arrayidx167, align 4
  %141 = load i32, i32* %i, align 4
  %add168 = add nsw i32 %141, 4
  %idxprom169 = sext i32 %add168 to i64
  %142 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8
  %quantval170 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %142, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval170, i32 0, i64 %idxprom169
  %143 = load i16, i16* %arrayidx171, align 2
  %conv172 = zext i16 %143 to i32
  %144 = load i32*, i32** %_mp, align 8
  %arrayidx173 = getelementptr inbounds i32, i32* %144, i64 4
  store i32 %conv172, i32* %arrayidx173, align 4
  %145 = load i32, i32* %i, align 4
  %add174 = add nsw i32 %145, 5
  %idxprom175 = sext i32 %add174 to i64
  %146 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8
  %quantval176 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %146, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval176, i32 0, i64 %idxprom175
  %147 = load i16, i16* %arrayidx177, align 2
  %conv178 = zext i16 %147 to i32
  %148 = load i32*, i32** %_mp, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %148, i64 5
  store i32 %conv178, i32* %arrayidx179, align 4
  %149 = load i32, i32* %i, align 4
  %add180 = add nsw i32 %149, 6
  %idxprom181 = sext i32 %add180 to i64
  %150 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8
  %quantval182 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %150, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval182, i32 0, i64 %idxprom181
  %151 = load i16, i16* %arrayidx183, align 2
  %conv184 = zext i16 %151 to i32
  %152 = load i32*, i32** %_mp, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %152, i64 6
  store i32 %conv184, i32* %arrayidx185, align 4
  %153 = load i32, i32* %i, align 4
  %add186 = add nsw i32 %153, 7
  %idxprom187 = sext i32 %add186 to i64
  %154 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8
  %quantval188 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %154, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval188, i32 0, i64 %idxprom187
  %155 = load i16, i16* %arrayidx189, align 2
  %conv190 = zext i16 %155 to i32
  %156 = load i32*, i32** %_mp, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %156, i64 7
  store i32 %conv190, i32* %arrayidx191, align 4
  %157 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err192 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %157, i32 0, i32 0
  %158 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err192, align 8
  %msg_code193 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %158, i32 0, i32 5
  store i32 92, i32* %msg_code193, align 4
  %159 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err194 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %159, i32 0, i32 0
  %160 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err194, align 8
  %emit_message195 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %160, i32 0, i32 1
  %161 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message195, align 8
  %162 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %163 = bitcast %struct.jpeg_decompress_struct* %162 to %struct.jpeg_common_struct*
  call void %161(%struct.jpeg_common_struct* %163, i32 2)
  br label %do.end.196

do.end.196:                                       ; preds = %do.body.140
  br label %for.inc.197

for.inc.197:                                      ; preds = %do.end.196
  %164 = load i32, i32* %i, align 4
  %add198 = add nsw i32 %164, 8
  store i32 %add198, i32* %i, align 4
  br label %for.cond.136

for.end.199:                                      ; preds = %for.cond.136
  br label %if.end.200

if.end.200:                                       ; preds = %for.end.199, %for.end
  %165 = load i64, i64* %length, align 8
  %sub201 = sub nsw i64 %165, 65
  store i64 %sub201, i64* %length, align 8
  %166 = load i32, i32* %prec, align 4
  %tobool202 = icmp ne i32 %166, 0
  br i1 %tobool202, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %if.end.200
  %167 = load i64, i64* %length, align 8
  %sub204 = sub nsw i64 %167, 64
  store i64 %sub204, i64* %length, align 8
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %if.end.200
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %168 = load i8*, i8** %next_input_byte, align 8
  %169 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte206 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %169, i32 0, i32 0
  store i8* %168, i8** %next_input_byte206, align 8
  %170 = load i64, i64* %bytes_in_buffer, align 8
  %171 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer207 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %171, i32 0, i32 1
  store i64 %170, i64* %bytes_in_buffer207, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.117, %if.then.100, %if.then.85, %if.then.35, %if.then.18, %if.then.7
  %172 = load i32, i32* %retval
  ret i32 %172
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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  store %struct.jpeg_source_mgr* %1, %struct.jpeg_source_mgr** %datasrc, align 8
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte3 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %2, i32 0, i32 0
  %3 = load i8*, i8** %next_input_byte3, align 8
  store i8* %3, i8** %next_input_byte, align 8
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %4, i32 0, i32 1
  %5 = load i64, i64* %bytes_in_buffer5, align 8
  store i64 %5, i64* %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, i64* %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %do.body
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 3
  %8 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %8(%struct.jpeg_decompress_struct* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte7 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 0
  %11 = load i8*, i8** %next_input_byte7, align 8
  store i8* %11, i8** %next_input_byte, align 8
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer8 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %bytes_in_buffer8, align 8
  store i64 %13, i64* %bytes_in_buffer, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %do.body
  %14 = load i64, i64* %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8
  %15 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %conv10 = zext i32 %shl to i64
  store i64 %conv10, i64* %length, align 8
  %17 = load i64, i64* %bytes_in_buffer, align 8
  %cmp11 = icmp eq i64 %17, 0
  br i1 %cmp11, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.end.9
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer14 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 3
  %19 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer14, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call15 = call i32 %19(%struct.jpeg_decompress_struct* %20)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.then.13
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.13
  %21 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte19 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %21, i32 0, i32 0
  %22 = load i8*, i8** %next_input_byte19, align 8
  store i8* %22, i8** %next_input_byte, align 8
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer20 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 1
  %24 = load i64, i64* %bytes_in_buffer20, align 8
  store i64 %24, i64* %bytes_in_buffer, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.18, %if.end.9
  %25 = load i64, i64* %bytes_in_buffer, align 8
  %dec22 = add i64 %25, -1
  store i64 %dec22, i64* %bytes_in_buffer, align 8
  %26 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr23, i8** %next_input_byte, align 8
  %27 = load i8, i8* %26, align 1
  %conv24 = zext i8 %27 to i64
  %28 = load i64, i64* %length, align 8
  %add = add nsw i64 %28, %conv24
  store i64 %add, i64* %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.21
  %29 = load i64, i64* %length, align 8
  %cmp25 = icmp ne i64 %29, 4
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.end
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 5
  store i32 9, i32* %msg_code, align 4
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err28, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 0
  %34 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %36 = bitcast %struct.jpeg_decompress_struct* %35 to %struct.jpeg_common_struct*
  call void %34(%struct.jpeg_common_struct* %36)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %do.end
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.29
  %37 = load i64, i64* %bytes_in_buffer, align 8
  %cmp31 = icmp eq i64 %37, 0
  br i1 %cmp31, label %if.then.33, label %if.end.41

if.then.33:                                       ; preds = %do.body.30
  %38 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %38, i32 0, i32 3
  %39 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer34, align 8
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call35 = call i32 %39(%struct.jpeg_decompress_struct* %40)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.33
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.33
  %41 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte39 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %41, i32 0, i32 0
  %42 = load i8*, i8** %next_input_byte39, align 8
  store i8* %42, i8** %next_input_byte, align 8
  %43 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer40 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %43, i32 0, i32 1
  %44 = load i64, i64* %bytes_in_buffer40, align 8
  store i64 %44, i64* %bytes_in_buffer, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.38, %do.body.30
  %45 = load i64, i64* %bytes_in_buffer, align 8
  %dec42 = add i64 %45, -1
  store i64 %dec42, i64* %bytes_in_buffer, align 8
  %46 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr43, i8** %next_input_byte, align 8
  %47 = load i8, i8* %46, align 1
  %conv44 = zext i8 %47 to i32
  %shl45 = shl i32 %conv44, 8
  store i32 %shl45, i32* %tmp, align 4
  %48 = load i64, i64* %bytes_in_buffer, align 8
  %cmp46 = icmp eq i64 %48, 0
  br i1 %cmp46, label %if.then.48, label %if.end.56

if.then.48:                                       ; preds = %if.end.41
  %49 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %fill_input_buffer49 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %49, i32 0, i32 3
  %50 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer49, align 8
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call50 = call i32 %50(%struct.jpeg_decompress_struct* %51)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.then.48
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.then.48
  %52 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte54 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %52, i32 0, i32 0
  %53 = load i8*, i8** %next_input_byte54, align 8
  store i8* %53, i8** %next_input_byte, align 8
  %54 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer55 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %54, i32 0, i32 1
  %55 = load i64, i64* %bytes_in_buffer55, align 8
  store i64 %55, i64* %bytes_in_buffer, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.53, %if.end.41
  %56 = load i64, i64* %bytes_in_buffer, align 8
  %dec57 = add i64 %56, -1
  store i64 %dec57, i64* %bytes_in_buffer, align 8
  %57 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr58, i8** %next_input_byte, align 8
  %58 = load i8, i8* %57, align 1
  %conv59 = zext i8 %58 to i32
  %59 = load i32, i32* %tmp, align 4
  %add60 = add i32 %59, %conv59
  store i32 %add60, i32* %tmp, align 4
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.56
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err62, align 8
  %msg_code63 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 5
  store i32 81, i32* %msg_code63, align 4
  %62 = load i32, i32* %tmp, align 4
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err64, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %62, i32* %arrayidx, align 4
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err65, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 1
  %67 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %69 = bitcast %struct.jpeg_decompress_struct* %68 to %struct.jpeg_common_struct*
  call void %67(%struct.jpeg_common_struct* %69, i32 1)
  %70 = load i32, i32* %tmp, align 4
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 49
  store i32 %70, i32* %restart_interval, align 4
  %72 = load i8*, i8** %next_input_byte, align 8
  %73 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %next_input_byte66 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %73, i32 0, i32 0
  store i8* %72, i8** %next_input_byte66, align 8
  %74 = load i64, i64* %bytes_in_buffer, align 8
  %75 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8
  %bytes_in_buffer67 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %75, i32 0, i32 1
  store i64 %74, i64* %bytes_in_buffer67, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.61, %if.then.52, %if.then.37, %if.then.17, %if.then.6
  %76 = load i32, i32* %retval
  ret i32 %76
}

declare %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
