; ModuleID = './jdapimin.bc'
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
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
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

; Function Attrs: nounwind uwtable
define void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* %cinfo, i32 %version, i64 %structsize) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %version.addr = alloca i32, align 4
  %structsize.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %err23 = alloca %struct.jpeg_error_mgr*, align 8
  %client_data = alloca i8*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %version, i32* %version.addr, align 4, !tbaa !5
  store i64 %structsize, i64* %structsize.addr, align 8, !tbaa !7
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !9
  %2 = load i32, i32* %version.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %2, 90
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 5
  store i32 13, i32* %msg_code, align 4, !tbaa !14
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !13
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 6
  %i2 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i2, i32 0, i64 0
  store i32 90, i32* %arrayidx, align 4, !tbaa !5
  %7 = load i32, i32* %version.addr, align 4, !tbaa !5
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !13
  %msg_parm4 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i5 = bitcast %union.anon* %msg_parm4 to [8 x i32]*
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %i5, i32 0, i64 1
  store i32 %7, i32* %arrayidx6, align 4, !tbaa !5
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !13
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i64, i64* %structsize.addr, align 8, !tbaa !7
  %cmp8 = icmp ne i64 %15, 880
  br i1 %cmp8, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %if.end
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !13
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 22, i32* %msg_code11, align 4, !tbaa !14
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8, !tbaa !13
  %msg_parm13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 6
  %i14 = bitcast %union.anon* %msg_parm13 to [8 x i32]*
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %i14, i32 0, i64 0
  store i32 880, i32* %arrayidx15, align 4, !tbaa !5
  %20 = load i64, i64* %structsize.addr, align 8, !tbaa !7
  %conv = trunc i64 %20 to i32
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err16, align 8, !tbaa !13
  %msg_parm17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 6
  %i18 = bitcast %union.anon* %msg_parm17 to [8 x i32]*
  %arrayidx19 = getelementptr inbounds [8 x i32], [8 x i32]* %i18, i32 0, i64 1
  store i32 %conv, i32* %arrayidx19, align 4, !tbaa !5
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8, !tbaa !13
  %error_exit21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 0
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit21, align 8, !tbaa !16
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %27 = bitcast %struct.jpeg_decompress_struct* %26 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* %27) #4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.9, %if.end
  %28 = bitcast %struct.jpeg_error_mgr** %err23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err24, align 8, !tbaa !13
  store %struct.jpeg_error_mgr* %30, %struct.jpeg_error_mgr** %err23, align 8, !tbaa !1
  %31 = bitcast i8** %client_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %client_data25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 3
  %33 = load i8*, i8** %client_data25, align 8, !tbaa !17
  store i8* %33, i8** %client_data, align 8, !tbaa !1
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %35 = bitcast %struct.jpeg_decompress_struct* %34 to i8*
  %call = call i8* @memset(i8* %35, i32 0, i64 880) #5
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err23, align 8, !tbaa !1
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  store %struct.jpeg_error_mgr* %36, %struct.jpeg_error_mgr** %err26, align 8, !tbaa !13
  %38 = load i8*, i8** %client_data, align 8, !tbaa !1
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %client_data27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 3
  store i8* %38, i8** %client_data27, align 8, !tbaa !17
  %40 = bitcast i8** %client_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.jpeg_error_mgr** %err23 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 4
  store i32 1, i32* %is_decompressor, align 4, !tbaa !18
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %44 = bitcast %struct.jpeg_decompress_struct* %43 to %struct.jpeg_common_struct*
  call void @jinit_memory_mgr(%struct.jpeg_common_struct* %44) #4
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 2
  store %struct.jpeg_progress_mgr* null, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !19
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 6
  store %struct.jpeg_source_mgr* null, %struct.jpeg_source_mgr** %src, align 8, !tbaa !20
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %47, 4
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %48 to i64
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 40
  %arrayidx30 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  store %struct.JQUANT_TBL* null, %struct.JQUANT_TBL** %arrayidx30, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.39, %for.end
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %51, 4
  br i1 %cmp32, label %for.body.34, label %for.end.41

for.body.34:                                      ; preds = %for.cond.31
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %52 to i64
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 41
  %arrayidx36 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom35
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %arrayidx36, align 8, !tbaa !1
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %54 to i64
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 42
  %arrayidx38 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom37
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %arrayidx38, align 8, !tbaa !1
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.34
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %inc40 = add nsw i32 %56, 1
  store i32 %inc40, i32* %i, align 4, !tbaa !5
  br label %for.cond.31

for.end.41:                                       ; preds = %for.cond.31
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker_list = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 62
  store %struct.jpeg_marker_struct* null, %struct.jpeg_marker_struct** %marker_list, align 8, !tbaa !21
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_marker_reader(%struct.jpeg_decompress_struct* %58) #4
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_input_controller(%struct.jpeg_decompress_struct* %59) #4
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 5
  store i32 200, i32* %global_state, align 4, !tbaa !22
  %61 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @jinit_memory_mgr(%struct.jpeg_common_struct*) #3

declare void @jinit_marker_reader(%struct.jpeg_decompress_struct*) #3

declare void @jinit_input_controller(%struct.jpeg_decompress_struct*) #3

; Function Attrs: nounwind uwtable
define void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %1 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_destroy(%struct.jpeg_common_struct* %1) #4
  ret void
}

declare void @jpeg_destroy(%struct.jpeg_common_struct*) #3

; Function Attrs: nounwind uwtable
define void @jpeg_abort_decompress(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %1 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* %1) #4
  ret void
}

declare void @jpeg_abort(%struct.jpeg_common_struct*) #3

; Function Attrs: nounwind uwtable
define i32 @jpeg_read_header(%struct.jpeg_decompress_struct* %cinfo, i32 %require_image) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %require_image.addr = alloca i32, align 4
  %retcode = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %require_image, i32* %require_image.addr, align 4, !tbaa !23
  %0 = bitcast i32* %retcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 5
  %2 = load i32, i32* %global_state, align 4, !tbaa !22
  %cmp = icmp ne i32 %2, 200
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 5
  %4 = load i32, i32* %global_state1, align 4, !tbaa !22
  %cmp2 = icmp ne i32 %4, 201
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 5
  store i32 21, i32* %msg_code, align 4, !tbaa !14
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 5
  %8 = load i32, i32* %global_state3, align 4, !tbaa !22
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !13
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %8, i32* %arrayidx, align 4, !tbaa !5
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !13
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %15 = bitcast %struct.jpeg_decompress_struct* %14 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* %15) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 @jpeg_consume_input(%struct.jpeg_decompress_struct* %16) #4
  store i32 %call, i32* %retcode, align 4, !tbaa !5
  %17 = load i32, i32* %retcode, align 4, !tbaa !5
  switch i32 %17, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.6
    i32 0, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %retcode, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %18 = load i32, i32* %require_image.addr, align 4, !tbaa !23
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %sw.bb.6
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !13
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 53, i32* %msg_code9, align 4, !tbaa !14
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !13
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit11, align 8, !tbaa !16
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %25 = bitcast %struct.jpeg_decompress_struct* %24 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* %25) #4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %sw.bb.6
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %27 = bitcast %struct.jpeg_decompress_struct* %26 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* %27) #4
  store i32 2, i32* %retcode, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end, %if.end.12, %sw.bb
  %28 = load i32, i32* %retcode, align 4, !tbaa !5
  %29 = bitcast i32* %retcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @jpeg_consume_input(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %retcode = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %retcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %retcode, align 4, !tbaa !5
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 5
  %2 = load i32, i32* %global_state, align 4, !tbaa !22
  switch i32 %2, label %sw.default [
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
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 87
  %4 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !24
  %reset_input_controller = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %4, i32 0, i32 1
  %5 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %reset_input_controller, align 8, !tbaa !25
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %5(%struct.jpeg_decompress_struct* %6) #4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 6
  %8 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !20
  %init_source = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %8, i32 0, i32 2
  %9 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %init_source, align 8, !tbaa !27
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %9(%struct.jpeg_decompress_struct* %10) #4
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 5
  store i32 201, i32* %global_state1, align 4, !tbaa !22
  br label %sw.bb.2

sw.bb.2:                                          ; preds = %entry, %sw.bb
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 87
  %13 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl3, align 8, !tbaa !24
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %13, i32 0, i32 0
  %14 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8, !tbaa !29
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %14(%struct.jpeg_decompress_struct* %15) #4
  store i32 %call, i32* %retcode, align 4, !tbaa !5
  %16 = load i32, i32* %retcode, align 4, !tbaa !5
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @default_decompress_parms(%struct.jpeg_decompress_struct* %17) #4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 5
  store i32 202, i32* %global_state4, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i32 1, i32* %retcode, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 87
  %20 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl7, align 8, !tbaa !24
  %consume_input8 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %20, i32 0, i32 0
  %21 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_input8, align 8, !tbaa !29
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call9 = call i32 %21(%struct.jpeg_decompress_struct* %22) #4
  store i32 %call9, i32* %retcode, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 5
  store i32 21, i32* %msg_code, align 4, !tbaa !14
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 5
  %26 = load i32, i32* %global_state10, align 4, !tbaa !22
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8, !tbaa !13
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %26, i32* %arrayidx, align 4, !tbaa !5
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8, !tbaa !13
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 0
  %31 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %33 = bitcast %struct.jpeg_decompress_struct* %32 to %struct.jpeg_common_struct*
  call void %31(%struct.jpeg_common_struct* %33) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %sw.bb.5, %if.end
  %34 = load i32, i32* %retcode, align 4, !tbaa !5
  %35 = bitcast i32* %retcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal void @default_decompress_parms(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cid0 = alloca i32, align 4
  %cid1 = alloca i32, align 4
  %cid2 = alloca i32, align 4
  %_mp = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %cid0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %cid1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %cid2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 9
  %4 = load i32, i32* %num_components, align 4, !tbaa !30
  switch i32 %4, label %sw.default.96 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.69
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 10
  store i32 1, i32* %jpeg_color_space, align 4, !tbaa !31
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 11
  store i32 1, i32* %out_color_space, align 4, !tbaa !32
  br label %sw.epilog.99

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 44
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %8, i64 0
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 0
  %9 = load i32, i32* %component_id, align 4, !tbaa !34
  store i32 %9, i32* %cid0, align 4, !tbaa !5
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 44
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info2, align 8, !tbaa !33
  %arrayidx3 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i64 1
  %component_id4 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx3, i32 0, i32 0
  %12 = load i32, i32* %component_id4, align 4, !tbaa !34
  store i32 %12, i32* %cid1, align 4, !tbaa !5
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 44
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info5, align 8, !tbaa !33
  %arrayidx6 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i64 2
  %component_id7 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx6, i32 0, i32 0
  %15 = load i32, i32* %component_id7, align 4, !tbaa !34
  store i32 %15, i32* %cid2, align 4, !tbaa !5
  %16 = load i32, i32* %cid0, align 4, !tbaa !5
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb.1
  %17 = load i32, i32* %cid1, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %17, 2
  br i1 %cmp8, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %18 = load i32, i32* %cid2, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %18, 3
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.9
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 10
  store i32 3, i32* %jpeg_color_space11, align 4, !tbaa !31
  br label %if.end.67

if.else:                                          ; preds = %land.lhs.true.9, %land.lhs.true, %sw.bb.1
  %20 = load i32, i32* %cid0, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %20, 1
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.19

land.lhs.true.13:                                 ; preds = %if.else
  %21 = load i32, i32* %cid1, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %21, 34
  br i1 %cmp14, label %land.lhs.true.15, label %if.else.19

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %22 = load i32, i32* %cid2, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %22, 35
  br i1 %cmp16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %land.lhs.true.15
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 10
  store i32 7, i32* %jpeg_color_space18, align 4, !tbaa !31
  br label %if.end.66

if.else.19:                                       ; preds = %land.lhs.true.15, %land.lhs.true.13, %if.else
  %24 = load i32, i32* %cid0, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %24, 82
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.27

land.lhs.true.21:                                 ; preds = %if.else.19
  %25 = load i32, i32* %cid1, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %25, 71
  br i1 %cmp22, label %land.lhs.true.23, label %if.else.27

land.lhs.true.23:                                 ; preds = %land.lhs.true.21
  %26 = load i32, i32* %cid2, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %26, 66
  br i1 %cmp24, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %land.lhs.true.23
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 10
  store i32 2, i32* %jpeg_color_space26, align 4, !tbaa !31
  br label %if.end.65

if.else.27:                                       ; preds = %land.lhs.true.23, %land.lhs.true.21, %if.else.19
  %28 = load i32, i32* %cid0, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %28, 114
  br i1 %cmp28, label %land.lhs.true.29, label %if.else.35

land.lhs.true.29:                                 ; preds = %if.else.27
  %29 = load i32, i32* %cid1, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %29, 103
  br i1 %cmp30, label %land.lhs.true.31, label %if.else.35

land.lhs.true.31:                                 ; preds = %land.lhs.true.29
  %30 = load i32, i32* %cid2, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %30, 98
  br i1 %cmp32, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %land.lhs.true.31
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 10
  store i32 6, i32* %jpeg_color_space34, align 4, !tbaa !31
  br label %if.end.64

if.else.35:                                       ; preds = %land.lhs.true.31, %land.lhs.true.29, %if.else.27
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 52
  %33 = load i32, i32* %saw_JFIF_marker, align 4, !tbaa !36
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.else.35
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 10
  store i32 3, i32* %jpeg_color_space37, align 4, !tbaa !31
  br label %if.end.63

if.else.38:                                       ; preds = %if.else.35
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 58
  %36 = load i32, i32* %saw_Adobe_marker, align 4, !tbaa !37
  %tobool39 = icmp ne i32 %36, 0
  br i1 %tobool39, label %if.then.40, label %if.else.51

if.then.40:                                       ; preds = %if.else.38
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 59
  %38 = load i8, i8* %Adobe_transform, align 1, !tbaa !38
  %conv = zext i8 %38 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb.41
    i32 1, label %sw.bb.43
  ]

sw.bb.41:                                         ; preds = %if.then.40
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 10
  store i32 2, i32* %jpeg_color_space42, align 4, !tbaa !31
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.then.40
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 10
  store i32 3, i32* %jpeg_color_space44, align 4, !tbaa !31
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.40
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 5
  store i32 116, i32* %msg_code, align 4, !tbaa !14
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Adobe_transform45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 59
  %44 = load i8, i8* %Adobe_transform45, align 1, !tbaa !38
  %conv46 = zext i8 %44 to i32
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err47, align 8, !tbaa !13
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx48 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %conv46, i32* %arrayidx48, align 4, !tbaa !5
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err49, align 8, !tbaa !13
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 1
  %49 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !39
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %51 = bitcast %struct.jpeg_decompress_struct* %50 to %struct.jpeg_common_struct*
  call void %49(%struct.jpeg_common_struct* %51, i32 -1) #4
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 10
  store i32 3, i32* %jpeg_color_space50, align 4, !tbaa !31
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.43, %sw.bb.41
  br label %if.end

if.else.51:                                       ; preds = %if.else.38
  br label %do.body

do.body:                                          ; preds = %if.else.51
  %53 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err52, align 8, !tbaa !13
  %msg_parm53 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 6
  %i54 = bitcast %union.anon* %msg_parm53 to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i54, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8, !tbaa !1
  %56 = load i32, i32* %cid0, align 4, !tbaa !5
  %57 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %arrayidx55, align 4, !tbaa !5
  %58 = load i32, i32* %cid1, align 4, !tbaa !5
  %59 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %58, i32* %arrayidx56, align 4, !tbaa !5
  %60 = load i32, i32* %cid2, align 4, !tbaa !5
  %61 = load i32*, i32** %_mp, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 %60, i32* %arrayidx57, align 4, !tbaa !5
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 0
  %63 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err58, align 8, !tbaa !13
  %msg_code59 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %63, i32 0, i32 5
  store i32 113, i32* %msg_code59, align 4, !tbaa !14
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err60, align 8, !tbaa !13
  %emit_message61 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 1
  %66 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message61, align 8, !tbaa !39
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %68 = bitcast %struct.jpeg_decompress_struct* %67 to %struct.jpeg_common_struct*
  call void %66(%struct.jpeg_common_struct* %68, i32 1) #4
  %69 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %70, i32 0, i32 10
  store i32 3, i32* %jpeg_color_space62, align 4, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.epilog
  br label %if.end.63

if.end.63:                                        ; preds = %if.end, %if.then.36
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.33
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.25
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.17
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_space68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 11
  store i32 2, i32* %out_color_space68, align 4, !tbaa !32
  br label %sw.epilog.99

sw.bb.69:                                         ; preds = %entry
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %saw_Adobe_marker70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 58
  %73 = load i32, i32* %saw_Adobe_marker70, align 4, !tbaa !37
  %tobool71 = icmp ne i32 %73, 0
  br i1 %tobool71, label %if.then.72, label %if.else.92

if.then.72:                                       ; preds = %sw.bb.69
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Adobe_transform73 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 59
  %75 = load i8, i8* %Adobe_transform73, align 1, !tbaa !38
  %conv74 = zext i8 %75 to i32
  switch i32 %conv74, label %sw.default.79 [
    i32 0, label %sw.bb.75
    i32 2, label %sw.bb.77
  ]

sw.bb.75:                                         ; preds = %if.then.72
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 10
  store i32 4, i32* %jpeg_color_space76, align 4, !tbaa !31
  br label %sw.epilog.91

sw.bb.77:                                         ; preds = %if.then.72
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 10
  store i32 5, i32* %jpeg_color_space78, align 4, !tbaa !31
  br label %sw.epilog.91

sw.default.79:                                    ; preds = %if.then.72
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 0
  %79 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err80, align 8, !tbaa !13
  %msg_code81 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %79, i32 0, i32 5
  store i32 116, i32* %msg_code81, align 4, !tbaa !14
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Adobe_transform82 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 59
  %81 = load i8, i8* %Adobe_transform82, align 1, !tbaa !38
  %conv83 = zext i8 %81 to i32
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err84 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 0
  %83 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err84, align 8, !tbaa !13
  %msg_parm85 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %83, i32 0, i32 6
  %i86 = bitcast %union.anon* %msg_parm85 to [8 x i32]*
  %arrayidx87 = getelementptr inbounds [8 x i32], [8 x i32]* %i86, i32 0, i64 0
  store i32 %conv83, i32* %arrayidx87, align 4, !tbaa !5
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 0
  %85 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err88, align 8, !tbaa !13
  %emit_message89 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %85, i32 0, i32 1
  %86 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message89, align 8, !tbaa !39
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %88 = bitcast %struct.jpeg_decompress_struct* %87 to %struct.jpeg_common_struct*
  call void %86(%struct.jpeg_common_struct* %88, i32 -1) #4
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 10
  store i32 5, i32* %jpeg_color_space90, align 4, !tbaa !31
  br label %sw.epilog.91

sw.epilog.91:                                     ; preds = %sw.default.79, %sw.bb.77, %sw.bb.75
  br label %if.end.94

if.else.92:                                       ; preds = %sw.bb.69
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 10
  store i32 4, i32* %jpeg_color_space93, align 4, !tbaa !31
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.92, %sw.epilog.91
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_space95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 11
  store i32 4, i32* %out_color_space95, align 4, !tbaa !32
  br label %sw.epilog.99

sw.default.96:                                    ; preds = %entry
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %92, i32 0, i32 10
  store i32 0, i32* %jpeg_color_space97, align 4, !tbaa !31
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_space98 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 11
  store i32 0, i32* %out_color_space98, align 4, !tbaa !32
  br label %sw.epilog.99

sw.epilog.99:                                     ; preds = %sw.default.96, %if.end.94, %if.end.67, %sw.bb
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 79
  %95 = load i32, i32* %block_size, align 4, !tbaa !40
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 12
  store i32 %95, i32* %scale_num, align 4, !tbaa !41
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 79
  %98 = load i32, i32* %block_size100, align 4, !tbaa !40
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 13
  store i32 %98, i32* %scale_denom, align 4, !tbaa !42
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_gamma = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 14
  store double 1.000000e+00, double* %output_gamma, align 8, !tbaa !43
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 15
  store i32 0, i32* %buffered_image, align 4, !tbaa !44
  %102 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %102, i32 0, i32 16
  store i32 0, i32* %raw_data_out, align 4, !tbaa !45
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %dct_method = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 17
  store i32 0, i32* %dct_method, align 4, !tbaa !46
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 18
  store i32 1, i32* %do_fancy_upsampling, align 4, !tbaa !47
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %do_block_smoothing = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 19
  store i32 1, i32* %do_block_smoothing, align 4, !tbaa !48
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 20
  store i32 0, i32* %quantize_colors, align 4, !tbaa !49
  %107 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %107, i32 0, i32 21
  store i32 2, i32* %dither_mode, align 4, !tbaa !50
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 22
  store i32 0, i32* %two_pass_quantize, align 4, !tbaa !51
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %109, i32 0, i32 23
  store i32 256, i32* %desired_number_of_colors, align 4, !tbaa !52
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 33
  store i8** null, i8*** %colormap, align 8, !tbaa !53
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_1pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %111, i32 0, i32 24
  store i32 0, i32* %enable_1pass_quant, align 4, !tbaa !54
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_external_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %112, i32 0, i32 25
  store i32 0, i32* %enable_external_quant, align 4, !tbaa !55
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 26
  store i32 0, i32* %enable_2pass_quant, align 4, !tbaa !56
  %114 = bitcast i32* %cid2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %cid1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %cid0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @jpeg_input_complete(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load i32, i32* %global_state, align 4, !tbaa !22
  %cmp = icmp slt i32 %1, 200
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 5
  %3 = load i32, i32* %global_state1, align 4, !tbaa !22
  %cmp2 = icmp sgt i32 %3, 210
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 21, i32* %msg_code, align 4, !tbaa !14
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 5
  %7 = load i32, i32* %global_state3, align 4, !tbaa !22
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !13
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4, !tbaa !5
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !13
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 87
  %16 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !24
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %16, i32 0, i32 5
  %17 = load i32, i32* %eoi_reached, align 4, !tbaa !57
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @jpeg_has_multiple_scans(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load i32, i32* %global_state, align 4, !tbaa !22
  %cmp = icmp slt i32 %1, 202
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 5
  %3 = load i32, i32* %global_state1, align 4, !tbaa !22
  %cmp2 = icmp sgt i32 %3, 210
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 21, i32* %msg_code, align 4, !tbaa !14
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 5
  %7 = load i32, i32* %global_state3, align 4, !tbaa !22
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !13
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4, !tbaa !5
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !13
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 87
  %16 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !24
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %16, i32 0, i32 4
  %17 = load i32, i32* %has_multiple_scans, align 4, !tbaa !58
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load i32, i32* %global_state, align 4, !tbaa !22
  %cmp = icmp eq i32 %1, 205
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 5
  %3 = load i32, i32* %global_state1, align 4, !tbaa !22
  %cmp2 = icmp eq i32 %3, 206
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 15
  %5 = load i32, i32* %buffered_image, align 4, !tbaa !44
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 34
  %7 = load i32, i32* %output_scanline, align 4, !tbaa !59
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 28
  %9 = load i32, i32* %output_height, align 4, !tbaa !60
  %cmp3 = icmp ult i32 %7, %9
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 69, i32* %msg_code, align 4, !tbaa !14
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !13
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16) #4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %master = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 83
  %18 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master, align 8, !tbaa !61
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %18, i32 0, i32 1
  %19 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %finish_output_pass, align 8, !tbaa !62
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %19(%struct.jpeg_decompress_struct* %20) #4
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 5
  store i32 210, i32* %global_state6, align 4, !tbaa !22
  br label %if.end.23

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 5
  %23 = load i32, i32* %global_state7, align 4, !tbaa !22
  %cmp8 = icmp eq i32 %23, 207
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 5
  store i32 210, i32* %global_state10, align 4, !tbaa !22
  br label %if.end.22

if.else.11:                                       ; preds = %if.else
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 5
  %26 = load i32, i32* %global_state12, align 4, !tbaa !22
  %cmp13 = icmp ne i32 %26, 210
  br i1 %cmp13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %if.else.11
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !13
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 5
  store i32 21, i32* %msg_code16, align 4, !tbaa !14
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 5
  %30 = load i32, i32* %global_state17, align 4, !tbaa !22
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err18, align 8, !tbaa !13
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %30, i32* %arrayidx, align 4, !tbaa !5
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8, !tbaa !13
  %error_exit20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 0
  %35 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit20, align 8, !tbaa !16
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %37 = bitcast %struct.jpeg_decompress_struct* %36 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* %37) #4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.14, %if.else.11
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.9
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %if.end.23
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 87
  %39 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !24
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %39, i32 0, i32 5
  %40 = load i32, i32* %eoi_reached, align 4, !tbaa !57
  %tobool24 = icmp ne i32 %40, 0
  %lnot = xor i1 %tobool24, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 87
  %42 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl25, align 8, !tbaa !24
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %42, i32 0, i32 0
  %43 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8, !tbaa !29
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %43(%struct.jpeg_decompress_struct* %44) #4
  %cmp26 = icmp eq i32 %call, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 6
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !20
  %term_source = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 6
  %47 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %term_source, align 8, !tbaa !64
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %47(%struct.jpeg_decompress_struct* %48) #4
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %50 = bitcast %struct.jpeg_decompress_struct* %49 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* %50) #4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.27
  %51 = load i32, i32* %retval
  ret i32 %51
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
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !2, i64 8}
!10 = !{!"jpeg_decompress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !6, i64 36, !2, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !3, i64 60, !3, i64 64, !6, i64 68, !6, i64 72, !11, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !6, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !2, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !2, i64 192, !3, i64 200, !3, i64 232, !3, i64 264, !6, i64 296, !2, i64 304, !3, i64 312, !3, i64 316, !3, i64 320, !3, i64 324, !3, i64 340, !3, i64 356, !6, i64 372, !3, i64 376, !3, i64 380, !3, i64 381, !3, i64 382, !12, i64 384, !12, i64 386, !3, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !2, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !6, i64 428, !6, i64 432, !2, i64 440, !6, i64 448, !3, i64 456, !6, i64 488, !6, i64 492, !6, i64 496, !3, i64 500, !6, i64 756, !6, i64 760, !6, i64 764, !6, i64 768, !6, i64 772, !2, i64 776, !6, i64 784, !6, i64 788, !2, i64 792, !2, i64 800, !2, i64 808, !2, i64 816, !2, i64 824, !2, i64 832, !2, i64 840, !2, i64 848, !2, i64 856, !2, i64 864, !2, i64 872}
!11 = !{!"double", !3, i64 0}
!12 = !{!"short", !3, i64 0}
!13 = !{!10, !2, i64 0}
!14 = !{!15, !6, i64 40}
!15 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !3, i64 44, !6, i64 124, !8, i64 128, !2, i64 136, !6, i64 144, !2, i64 152, !6, i64 160, !6, i64 164}
!16 = !{!15, !2, i64 0}
!17 = !{!10, !2, i64 24}
!18 = !{!10, !3, i64 32}
!19 = !{!10, !2, i64 16}
!20 = !{!10, !2, i64 40}
!21 = !{!10, !2, i64 408}
!22 = !{!10, !6, i64 36}
!23 = !{!3, !3, i64 0}
!24 = !{!10, !2, i64 824}
!25 = !{!26, !2, i64 8}
!26 = !{!"jpeg_input_controller", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !3, i64 36}
!27 = !{!28, !2, i64 16}
!28 = !{!"jpeg_source_mgr", !2, i64 0, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!29 = !{!26, !2, i64 0}
!30 = !{!10, !6, i64 56}
!31 = !{!10, !3, i64 60}
!32 = !{!10, !3, i64 64}
!33 = !{!10, !2, i64 304}
!34 = !{!35, !6, i64 0}
!35 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !3, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !2, i64 80, !2, i64 88}
!36 = !{!10, !3, i64 376}
!37 = !{!10, !3, i64 388}
!38 = !{!10, !3, i64 392}
!39 = !{!15, !2, i64 8}
!40 = !{!10, !6, i64 772}
!41 = !{!10, !6, i64 68}
!42 = !{!10, !6, i64 72}
!43 = !{!10, !11, i64 80}
!44 = !{!10, !3, i64 88}
!45 = !{!10, !3, i64 92}
!46 = !{!10, !3, i64 96}
!47 = !{!10, !3, i64 100}
!48 = !{!10, !3, i64 104}
!49 = !{!10, !3, i64 108}
!50 = !{!10, !3, i64 112}
!51 = !{!10, !3, i64 116}
!52 = !{!10, !6, i64 120}
!53 = !{!10, !2, i64 160}
!54 = !{!10, !3, i64 124}
!55 = !{!10, !3, i64 128}
!56 = !{!10, !3, i64 132}
!57 = !{!26, !3, i64 36}
!58 = !{!26, !3, i64 32}
!59 = !{!10, !6, i64 168}
!60 = !{!10, !6, i64 140}
!61 = !{!10, !2, i64 792}
!62 = !{!63, !2, i64 8}
!63 = !{!"jpeg_decomp_master", !2, i64 0, !2, i64 8, !3, i64 16}
!64 = !{!28, !2, i64 48}
