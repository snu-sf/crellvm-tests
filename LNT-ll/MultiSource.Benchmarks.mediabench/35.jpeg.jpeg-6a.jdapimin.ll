; ModuleID = './MultiSource.Benchmarks.mediabench/35.jpeg.jpeg-6a.jdapimin.bc'
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
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
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

; Function Attrs: nounwind uwtable
define void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* %cinfo, i32 %version, i64 %structsize) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %version.addr = alloca i32, align 4
  %structsize.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %err23 = alloca %struct.jpeg_error_mgr*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %version, i32* %version.addr, align 4
  store i64 %structsize, i64* %structsize.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %mem, align 8
  %1 = load i32, i32* %version.addr, align 4
  %cmp = icmp ne i32 %1, 61
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 10, i32* %msg_code, align 4
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 6
  %i2 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i2, i32 0, i64 0
  store i32 61, i32* %arrayidx, align 4
  %6 = load i32, i32* %version.addr, align 4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %msg_parm4 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 6
  %i5 = bitcast %union.anon* %msg_parm4 to [8 x i32]*
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %i5, i32 0, i64 1
  store i32 %6, i32* %arrayidx6, align 4
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 0
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %13 = bitcast %struct.jpeg_decompress_struct* %12 to %struct.jpeg_common_struct*
  call void %11(%struct.jpeg_common_struct* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i64, i64* %structsize.addr, align 8
  %cmp8 = icmp ne i64 %14, 616
  br i1 %cmp8, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %if.end
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 19, i32* %msg_code11, align 4
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8
  %msg_parm13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 6
  %i14 = bitcast %union.anon* %msg_parm13 to [8 x i32]*
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %i14, i32 0, i64 0
  store i32 616, i32* %arrayidx15, align 4
  %19 = load i64, i64* %structsize.addr, align 8
  %conv = trunc i64 %19 to i32
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err16, align 8
  %msg_parm17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 6
  %i18 = bitcast %union.anon* %msg_parm17 to [8 x i32]*
  %arrayidx19 = getelementptr inbounds [8 x i32], [8 x i32]* %i18, i32 0, i64 1
  store i32 %conv, i32* %arrayidx19, align 4
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8
  %error_exit21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 0
  %24 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit21, align 8
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %26 = bitcast %struct.jpeg_decompress_struct* %25 to %struct.jpeg_common_struct*
  call void %24(%struct.jpeg_common_struct* %26)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.9, %if.end
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err24, align 8
  store %struct.jpeg_error_mgr* %28, %struct.jpeg_error_mgr** %err23, align 8
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %30 = bitcast %struct.jpeg_decompress_struct* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 616, i32 1, i1 false)
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err23, align 8
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  store %struct.jpeg_error_mgr* %31, %struct.jpeg_error_mgr** %err25, align 8
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %is_decompressor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 3
  store i32 1, i32* %is_decompressor, align 4
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %35 = bitcast %struct.jpeg_decompress_struct* %34 to %struct.jpeg_common_struct*
  call void @jinit_memory_mgr(%struct.jpeg_common_struct* %35)
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 2
  store %struct.jpeg_progress_mgr* null, %struct.jpeg_progress_mgr** %progress, align 8
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 5
  store %struct.jpeg_source_mgr* null, %struct.jpeg_source_mgr** %src, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %38 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %38, 4
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %i, align 4
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 39
  %arrayidx28 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  store %struct.JQUANT_TBL* null, %struct.JQUANT_TBL** %arrayidx28, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.37, %for.end
  %42 = load i32, i32* %i, align 4
  %cmp30 = icmp slt i32 %42, 4
  br i1 %cmp30, label %for.body.32, label %for.end.39

for.body.32:                                      ; preds = %for.cond.29
  %43 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %43 to i64
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 40
  %arrayidx34 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom33
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %arrayidx34, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %45 to i64
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 41
  %arrayidx36 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom35
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %arrayidx36, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.32
  %47 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %47, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.29

for.end.39:                                       ; preds = %for.cond.29
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jinit_marker_reader(%struct.jpeg_decompress_struct* %48)
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jinit_input_controller(%struct.jpeg_decompress_struct* %49)
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 4
  store i32 200, i32* %global_state, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare void @jinit_memory_mgr(%struct.jpeg_common_struct*) #2

declare void @jinit_marker_reader(%struct.jpeg_decompress_struct*) #2

declare void @jinit_input_controller(%struct.jpeg_decompress_struct*) #2

; Function Attrs: nounwind uwtable
define void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %1 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_destroy(%struct.jpeg_common_struct* %1)
  ret void
}

declare void @jpeg_destroy(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind uwtable
define void @jpeg_abort_decompress(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %1 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* %1)
  ret void
}

declare void @jpeg_abort(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind uwtable
define void @jpeg_set_marker_processor(%struct.jpeg_decompress_struct* %cinfo, i32 %marker_code, i32 (%struct.jpeg_decompress_struct*)* %routine) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %marker_code.addr = alloca i32, align 4
  %routine.addr = alloca i32 (%struct.jpeg_decompress_struct*)*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %marker_code, i32* %marker_code.addr, align 4
  store i32 (%struct.jpeg_decompress_struct*)* %routine, i32 (%struct.jpeg_decompress_struct*)** %routine.addr, align 8
  %0 = load i32, i32* %marker_code.addr, align 4
  %cmp = icmp eq i32 %0, 254
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %routine.addr, align 8
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 78
  %3 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8
  %process_COM = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %3, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*)* %1, i32 (%struct.jpeg_decompress_struct*)** %process_COM, align 8
  br label %if.end.9

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %marker_code.addr, align 4
  %cmp1 = icmp sge i32 %4, 224
  br i1 %cmp1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load i32, i32* %marker_code.addr, align 4
  %cmp2 = icmp sle i32 %5, 239
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %routine.addr, align 8
  %7 = load i32, i32* %marker_code.addr, align 4
  %sub = sub nsw i32 %7, 224
  %idxprom = sext i32 %sub to i64
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 78
  %9 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker4, align 8
  %process_APPn = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %9, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn, i32 0, i64 %idxprom
  store i32 (%struct.jpeg_decompress_struct*)* %6, i32 (%struct.jpeg_decompress_struct*)** %arrayidx, align 8
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 67, i32* %msg_code, align 4
  %12 = load i32, i32* %marker_code.addr, align 4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %12, i32* %arrayidx7, align 4
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %19 = bitcast %struct.jpeg_decompress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19)
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @jpeg_read_header(%struct.jpeg_decompress_struct* %cinfo, i32 %require_image) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %require_image.addr = alloca i32, align 4
  %retcode = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %require_image, i32* %require_image.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4
  %cmp = icmp ne i32 %1, 200
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %global_state1, align 4
  %cmp2 = icmp ne i32 %3, 201
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 4
  %7 = load i32, i32* %global_state3, align 4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 @jpeg_consume_input(%struct.jpeg_decompress_struct* %15)
  store i32 %call, i32* %retcode, align 4
  %16 = load i32, i32* %retcode, align 4
  switch i32 %16, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.6
    i32 0, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %retcode, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %17 = load i32, i32* %require_image.addr, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %sw.bb.6
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 50, i32* %msg_code9, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit11, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %sw.bb.6
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %26 = bitcast %struct.jpeg_decompress_struct* %25 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* %26)
  store i32 2, i32* %retcode, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.13, %if.end.12, %sw.bb
  %27 = load i32, i32* %retcode, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @jpeg_consume_input(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %retcode = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 0, i32* %retcode, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4
  switch i32 %1, label %sw.default [
    i32 200, label %sw.bb
    i32 201, label %sw.bb.2
    i32 202, label %sw.bb.5
    i32 203, label %sw.bb.6
    i32 204, label %sw.bb.6
    i32 205, label %sw.bb.6
    i32 206, label %sw.bb.6
    i32 207, label %sw.bb.6
    i32 208, label %sw.bb.6
    i32 210, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 77
  %3 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %reset_input_controller = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %3, i32 0, i32 1
  %4 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %reset_input_controller, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %4(%struct.jpeg_decompress_struct* %5)
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 5
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  %init_source = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 2
  %8 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %init_source, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %8(%struct.jpeg_decompress_struct* %9)
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 4
  store i32 201, i32* %global_state1, align 4
  br label %sw.bb.2

sw.bb.2:                                          ; preds = %entry, %sw.bb
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 77
  %12 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl3, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %12, i32 0, i32 0
  %13 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %13(%struct.jpeg_decompress_struct* %14)
  store i32 %call, i32* %retcode, align 4
  %15 = load i32, i32* %retcode, align 4
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @default_decompress_parms(%struct.jpeg_decompress_struct* %16)
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 4
  store i32 202, i32* %global_state4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i32 1, i32* %retcode, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 77
  %19 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl7, align 8
  %consume_input8 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %19, i32 0, i32 0
  %20 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_input8, align 8
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call9 = call i32 %20(%struct.jpeg_decompress_struct* %21)
  store i32 %call9, i32* %retcode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 4
  %25 = load i32, i32* %global_state10, align 4
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %25, i32* %arrayidx, align 4
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 0
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %32 = bitcast %struct.jpeg_decompress_struct* %31 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* %32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %sw.bb.5, %if.end
  %33 = load i32, i32* %retcode, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal void @default_decompress_parms(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cid0 = alloca i32, align 4
  %cid1 = alloca i32, align 4
  %cid2 = alloca i32, align 4
  %_mp = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 8
  %1 = load i32, i32* %num_components, align 4
  switch i32 %1, label %sw.default.84 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 9
  store i32 1, i32* %jpeg_color_space, align 4
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 10
  store i32 1, i32* %out_color_space, align 4
  br label %sw.epilog.87

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 50
  %5 = load i32, i32* %saw_JFIF_marker, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 9
  store i32 3, i32* %jpeg_color_space2, align 4
  br label %if.end.55

if.else:                                          ; preds = %sw.bb.1
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 54
  %8 = load i32, i32* %saw_Adobe_marker, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then.4, label %if.else.14

if.then.4:                                        ; preds = %if.else
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 55
  %10 = load i8, i8* %Adobe_transform, align 1
  %conv = zext i8 %10 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb.5
    i32 1, label %sw.bb.7
  ]

sw.bb.5:                                          ; preds = %if.then.4
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 9
  store i32 2, i32* %jpeg_color_space6, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then.4
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 9
  store i32 3, i32* %jpeg_color_space8, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 110, i32* %msg_code, align 4
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Adobe_transform9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 55
  %16 = load i8, i8* %Adobe_transform9, align 1
  %conv10 = zext i8 %16 to i32
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %conv10, i32* %arrayidx, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 1
  %21 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %23 = bitcast %struct.jpeg_decompress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23, i32 -1)
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 9
  store i32 3, i32* %jpeg_color_space13, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.5
  br label %if.end.54

if.else.14:                                       ; preds = %if.else
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 43
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  %arrayidx15 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i64 0
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx15, i32 0, i32 0
  %27 = load i32, i32* %component_id, align 4
  store i32 %27, i32* %cid0, align 4
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 43
  %29 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info16, align 8
  %arrayidx17 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %29, i64 1
  %component_id18 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx17, i32 0, i32 0
  %30 = load i32, i32* %component_id18, align 4
  store i32 %30, i32* %cid1, align 4
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 43
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info19, align 8
  %arrayidx20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i64 2
  %component_id21 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx20, i32 0, i32 0
  %33 = load i32, i32* %component_id21, align 4
  store i32 %33, i32* %cid2, align 4
  %34 = load i32, i32* %cid0, align 4
  %cmp = icmp eq i32 %34, 1
  br i1 %cmp, label %land.lhs.true, label %if.else.30

land.lhs.true:                                    ; preds = %if.else.14
  %35 = load i32, i32* %cid1, align 4
  %cmp23 = icmp eq i32 %35, 2
  br i1 %cmp23, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %36 = load i32, i32* %cid2, align 4
  %cmp26 = icmp eq i32 %36, 3
  br i1 %cmp26, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %land.lhs.true.25
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 9
  store i32 3, i32* %jpeg_color_space29, align 4
  br label %if.end.53

if.else.30:                                       ; preds = %land.lhs.true.25, %land.lhs.true, %if.else.14
  %38 = load i32, i32* %cid0, align 4
  %cmp31 = icmp eq i32 %38, 82
  br i1 %cmp31, label %land.lhs.true.33, label %if.else.41

land.lhs.true.33:                                 ; preds = %if.else.30
  %39 = load i32, i32* %cid1, align 4
  %cmp34 = icmp eq i32 %39, 71
  br i1 %cmp34, label %land.lhs.true.36, label %if.else.41

land.lhs.true.36:                                 ; preds = %land.lhs.true.33
  %40 = load i32, i32* %cid2, align 4
  %cmp37 = icmp eq i32 %40, 66
  br i1 %cmp37, label %if.then.39, label %if.else.41

if.then.39:                                       ; preds = %land.lhs.true.36
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 9
  store i32 2, i32* %jpeg_color_space40, align 4
  br label %if.end

if.else.41:                                       ; preds = %land.lhs.true.36, %land.lhs.true.33, %if.else.30
  br label %do.body

do.body:                                          ; preds = %if.else.41
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err42, align 8
  %msg_parm43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 6
  %i44 = bitcast %union.anon* %msg_parm43 to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i44, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8
  %44 = load i32, i32* %cid0, align 4
  %45 = load i32*, i32** %_mp, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %44, i32* %arrayidx45, align 4
  %46 = load i32, i32* %cid1, align 4
  %47 = load i32*, i32** %_mp, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %arrayidx46, align 4
  %48 = load i32, i32* %cid2, align 4
  %49 = load i32*, i32** %_mp, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %48, i32* %arrayidx47, align 4
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8
  %msg_code49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 5
  store i32 107, i32* %msg_code49, align 4
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err50, align 8
  %emit_message51 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 1
  %54 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message51, align 8
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %56 = bitcast %struct.jpeg_decompress_struct* %55 to %struct.jpeg_common_struct*
  call void %54(%struct.jpeg_common_struct* %56, i32 1)
  br label %do.end

do.end:                                           ; preds = %do.body
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 9
  store i32 3, i32* %jpeg_color_space52, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.39
  br label %if.end.53

if.end.53:                                        ; preds = %if.end, %if.then.28
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %sw.epilog
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 10
  store i32 2, i32* %out_color_space56, align 4
  br label %sw.epilog.87

sw.bb.57:                                         ; preds = %entry
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %saw_Adobe_marker58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 54
  %60 = load i32, i32* %saw_Adobe_marker58, align 4
  %tobool59 = icmp ne i32 %60, 0
  br i1 %tobool59, label %if.then.60, label %if.else.80

if.then.60:                                       ; preds = %sw.bb.57
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Adobe_transform61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 55
  %62 = load i8, i8* %Adobe_transform61, align 1
  %conv62 = zext i8 %62 to i32
  switch i32 %conv62, label %sw.default.67 [
    i32 0, label %sw.bb.63
    i32 2, label %sw.bb.65
  ]

sw.bb.63:                                         ; preds = %if.then.60
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 9
  store i32 4, i32* %jpeg_color_space64, align 4
  br label %sw.epilog.79

sw.bb.65:                                         ; preds = %if.then.60
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 9
  store i32 5, i32* %jpeg_color_space66, align 4
  br label %sw.epilog.79

sw.default.67:                                    ; preds = %if.then.60
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8
  %msg_code69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 5
  store i32 110, i32* %msg_code69, align 4
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Adobe_transform70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 55
  %68 = load i8, i8* %Adobe_transform70, align 1
  %conv71 = zext i8 %68 to i32
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8
  %msg_parm73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 6
  %i74 = bitcast %union.anon* %msg_parm73 to [8 x i32]*
  %arrayidx75 = getelementptr inbounds [8 x i32], [8 x i32]* %i74, i32 0, i64 0
  store i32 %conv71, i32* %arrayidx75, align 4
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err76, align 8
  %emit_message77 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 1
  %73 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message77, align 8
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %75 = bitcast %struct.jpeg_decompress_struct* %74 to %struct.jpeg_common_struct*
  call void %73(%struct.jpeg_common_struct* %75, i32 -1)
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 9
  store i32 5, i32* %jpeg_color_space78, align 4
  br label %sw.epilog.79

sw.epilog.79:                                     ; preds = %sw.default.67, %sw.bb.65, %sw.bb.63
  br label %if.end.82

if.else.80:                                       ; preds = %sw.bb.57
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 9
  store i32 4, i32* %jpeg_color_space81, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.80, %sw.epilog.79
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space83 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 10
  store i32 4, i32* %out_color_space83, align 4
  br label %sw.epilog.87

sw.default.84:                                    ; preds = %entry
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 9
  store i32 0, i32* %jpeg_color_space85, align 4
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 10
  store i32 0, i32* %out_color_space86, align 4
  br label %sw.epilog.87

sw.epilog.87:                                     ; preds = %sw.default.84, %if.end.82, %if.end.55, %sw.bb
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %scale_num = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 11
  store i32 1, i32* %scale_num, align 4
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %scale_denom = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 12
  store i32 1, i32* %scale_denom, align 4
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_gamma = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %83, i32 0, i32 13
  store double 1.000000e+00, double* %output_gamma, align 8
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 14
  store i32 0, i32* %buffered_image, align 4
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 15
  store i32 0, i32* %raw_data_out, align 4
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %86, i32 0, i32 16
  store i32 0, i32* %dct_method, align 4
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 17
  store i32 1, i32* %do_fancy_upsampling, align 4
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %do_block_smoothing = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 18
  store i32 1, i32* %do_block_smoothing, align 4
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 19
  store i32 0, i32* %quantize_colors, align 4
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 20
  store i32 2, i32* %dither_mode, align 4
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 21
  store i32 1, i32* %two_pass_quantize, align 4
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %92, i32 0, i32 22
  store i32 256, i32* %desired_number_of_colors, align 4
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 32
  store i8** null, i8*** %colormap, align 8
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_1pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 23
  store i32 0, i32* %enable_1pass_quant, align 4
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_external_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 24
  store i32 0, i32* %enable_external_quant, align 4
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 25
  store i32 0, i32* %enable_2pass_quant, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @jpeg_input_complete(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4
  %cmp = icmp slt i32 %1, 200
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %global_state1, align 4
  %cmp2 = icmp sgt i32 %3, 210
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 4
  %7 = load i32, i32* %global_state3, align 4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 77
  %16 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %16, i32 0, i32 5
  %17 = load i32, i32* %eoi_reached, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @jpeg_has_multiple_scans(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4
  %cmp = icmp slt i32 %1, 202
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %global_state1, align 4
  %cmp2 = icmp sgt i32 %3, 210
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 4
  %7 = load i32, i32* %global_state3, align 4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 77
  %16 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %16, i32 0, i32 4
  %17 = load i32, i32* %has_multiple_scans, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4
  %cmp = icmp eq i32 %1, 205
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %global_state1, align 4
  %cmp2 = icmp eq i32 %3, 206
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 14
  %5 = load i32, i32* %buffered_image, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 33
  %7 = load i32, i32* %output_scanline, align 4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 27
  %9 = load i32, i32* %output_height, align 4
  %cmp3 = icmp ult i32 %7, %9
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 66, i32* %msg_code, align 4
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 73
  %18 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master, align 8
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %18, i32 0, i32 1
  %19 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %finish_output_pass, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %19(%struct.jpeg_decompress_struct* %20)
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 4
  store i32 210, i32* %global_state6, align 4
  br label %if.end.23

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 4
  %23 = load i32, i32* %global_state7, align 4
  %cmp8 = icmp eq i32 %23, 207
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 4
  store i32 210, i32* %global_state10, align 4
  br label %if.end.22

if.else.11:                                       ; preds = %if.else
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 4
  %26 = load i32, i32* %global_state12, align 4
  %cmp13 = icmp ne i32 %26, 210
  br i1 %cmp13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %if.else.11
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 5
  store i32 18, i32* %msg_code16, align 4
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 4
  %30 = load i32, i32* %global_state17, align 4
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err18, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %30, i32* %arrayidx, align 4
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8
  %error_exit20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 0
  %35 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit20, align 8
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %37 = bitcast %struct.jpeg_decompress_struct* %36 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* %37)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.14, %if.else.11
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.9
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %if.end.23
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 77
  %39 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %39, i32 0, i32 5
  %40 = load i32, i32* %eoi_reached, align 4
  %tobool24 = icmp ne i32 %40, 0
  %lnot = xor i1 %tobool24, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 77
  %42 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl25, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %42, i32 0, i32 0
  %43 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %43(%struct.jpeg_decompress_struct* %44)
  %cmp26 = icmp eq i32 %call, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 5
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  %term_source = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 6
  %47 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %term_source, align 8
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %47(%struct.jpeg_decompress_struct* %48)
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %50 = bitcast %struct.jpeg_decompress_struct* %49 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* %50)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.27
  %51 = load i32, i32* %retval
  ret i32 %51
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
