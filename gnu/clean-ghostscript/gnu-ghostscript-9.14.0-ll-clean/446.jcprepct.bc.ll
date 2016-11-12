; ModuleID = './jcprepct.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x i32], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32*, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder*, %struct.jpeg_scan_info*, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i32, i32)*, void (%struct.jpeg_compress_struct*, i32)* }
%struct.jpeg_color_converter = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { void (%struct.jpeg_compress_struct*)*, [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*] }
%struct.jpeg_entropy_encoder = type { {}*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.my_prep_controller = type { %struct.jpeg_c_prep_controller, [10 x i8**], i32, i32 }

; Function Attrs: nounwind uwtable
define void @jinit_c_prep_controller(%struct.jpeg_compress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %prep = alloca %struct.my_prep_controller*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4, !tbaa !5
  %0 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %need_full_buffer.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !6
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 3, i32* %msg_code, align 4, !tbaa !11
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !6
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %8 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !14
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  call void %8(%struct.jpeg_common_struct* %10) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 1
  %12 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !15
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %12, i32 0, i32 0
  %13 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !16
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %15 = bitcast %struct.jpeg_compress_struct* %14 to %struct.jpeg_common_struct*
  %call = call i8* %13(%struct.jpeg_common_struct* %15, i32 1, i64 104) #3
  %16 = bitcast i8* %call to %struct.my_prep_controller*
  store %struct.my_prep_controller* %16, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %17 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %18 = bitcast %struct.my_prep_controller* %17 to %struct.jpeg_c_prep_controller*
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %prep2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 68
  store %struct.jpeg_c_prep_controller* %18, %struct.jpeg_c_prep_controller** %prep2, align 8, !tbaa !18
  %20 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %20, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_prep, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8, !tbaa !19
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 72
  %22 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample, align 8, !tbaa !22
  %need_context_rows = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %22, i32 0, i32 2
  %23 = load i32, i32* %need_context_rows, align 4, !tbaa !23
  %tobool3 = icmp ne i32 %23, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !6
  %msg_code6 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 5
  store i32 49, i32* %msg_code6, align 4, !tbaa !11
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !6
  %error_exit8 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 0
  %28 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit8, align 8, !tbaa !14
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %30 = bitcast %struct.jpeg_compress_struct* %29 to %struct.jpeg_common_struct*
  call void %28(%struct.jpeg_common_struct* %30) #3
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %31 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %pub9 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %31, i32 0, i32 0
  %pre_process_data = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %pub9, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* @pre_process_data, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)** %pre_process_data, align 8, !tbaa !25
  store i32 0, i32* %ci, align 4, !tbaa !26
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 19
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %33, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %34 = load i32, i32* %ci, align 4, !tbaa !26
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 17
  %36 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp = icmp slt i32 %34, %36
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 1
  %38 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem10, align 8, !tbaa !15
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %38, i32 0, i32 2
  %39 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !29
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %41 = bitcast %struct.jpeg_compress_struct* %40 to %struct.jpeg_common_struct*
  %42 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 7
  %43 = load i32, i32* %width_in_blocks, align 4, !tbaa !30
  %conv = zext i32 %43 to i64
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 50
  %45 = load i32, i32* %min_DCT_h_scaled_size, align 4, !tbaa !32
  %conv11 = sext i32 %45 to i64
  %mul = mul nsw i64 %conv, %conv11
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 48
  %47 = load i32, i32* %max_h_samp_factor, align 4, !tbaa !33
  %conv12 = sext i32 %47 to i64
  %mul13 = mul nsw i64 %mul, %conv12
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %48, i32 0, i32 2
  %49 = load i32, i32* %h_samp_factor, align 4, !tbaa !34
  %conv14 = sext i32 %49 to i64
  %div = sdiv i64 %mul13, %conv14
  %conv15 = trunc i64 %div to i32
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 49
  %51 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  %call16 = call i8** %39(%struct.jpeg_common_struct* %41, i32 1, i32 %conv15, i32 %51) #3
  %52 = load i32, i32* %ci, align 4, !tbaa !26
  %idxprom = sext i32 %52 to i64
  %53 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %color_buf = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %53, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i64 %idxprom
  store i8** %call16, i8*** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %ci, align 4, !tbaa !26
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !26
  %55 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %55, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.17

if.end.17:                                        ; preds = %for.end, %if.then.4
  %56 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_prep(%struct.jpeg_compress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %prep = alloca %struct.my_prep_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %pass_mode, i32* %pass_mode.addr, align 4, !tbaa !5
  %0 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 68
  %2 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep1, align 8, !tbaa !18
  %3 = bitcast %struct.jpeg_c_prep_controller* %2 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %3, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %4 = load i32, i32* %pass_mode.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !6
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 5
  store i32 3, i32* %msg_code, align 4, !tbaa !11
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !6
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 0
  %9 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !14
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %11 = bitcast %struct.jpeg_compress_struct* %10 to %struct.jpeg_common_struct*
  call void %9(%struct.jpeg_common_struct* %11) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 8
  %13 = load i32, i32* %image_height, align 4, !tbaa !36
  %14 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %rows_to_go = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %14, i32 0, i32 2
  store i32 %13, i32* %rows_to_go, align 4, !tbaa !37
  %15 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %next_buf_row = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %15, i32 0, i32 3
  store i32 0, i32* %next_buf_row, align 4, !tbaa !38
  %16 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pre_process_data(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i32* %in_row_ctr, i32 %in_rows_avail, i8*** %output_buf, i32* %out_row_group_ctr, i32 %out_row_groups_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %in_row_ctr.addr = alloca i32*, align 8
  %in_rows_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca i8***, align 8
  %out_row_group_ctr.addr = alloca i32*, align 8
  %out_row_groups_avail.addr = alloca i32, align 4
  %prep = alloca %struct.my_prep_controller*, align 8
  %numrows = alloca i32, align 4
  %ci = alloca i32, align 4
  %inrows = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !1
  store i32* %in_row_ctr, i32** %in_row_ctr.addr, align 8, !tbaa !1
  store i32 %in_rows_avail, i32* %in_rows_avail.addr, align 4, !tbaa !26
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !1
  store i32* %out_row_group_ctr, i32** %out_row_group_ctr.addr, align 8, !tbaa !1
  store i32 %out_row_groups_avail, i32* %out_row_groups_avail.addr, align 4, !tbaa !26
  %0 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 68
  %2 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep1, align 8, !tbaa !18
  %3 = bitcast %struct.jpeg_c_prep_controller* %2 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %3, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %4 = bitcast i32* %numrows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %inrows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %entry
  %8 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !1
  %9 = load i32, i32* %8, align 4, !tbaa !26
  %10 = load i32, i32* %in_rows_avail.addr, align 4, !tbaa !26
  %cmp = icmp ult i32 %9, %10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !1
  %12 = load i32, i32* %11, align 4, !tbaa !26
  %13 = load i32, i32* %out_row_groups_avail.addr, align 4, !tbaa !26
  %cmp2 = icmp ult i32 %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i32, i32* %in_rows_avail.addr, align 4, !tbaa !26
  %16 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !1
  %17 = load i32, i32* %16, align 4, !tbaa !26
  %sub = sub i32 %15, %17
  store i32 %sub, i32* %inrows, align 4, !tbaa !26
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 49
  %19 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  %20 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %next_buf_row = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %20, i32 0, i32 3
  %21 = load i32, i32* %next_buf_row, align 4, !tbaa !38
  %sub3 = sub nsw i32 %19, %21
  store i32 %sub3, i32* %numrows, align 4, !tbaa !26
  %22 = load i32, i32* %numrows, align 4, !tbaa !26
  %23 = load i32, i32* %inrows, align 4, !tbaa !26
  %cmp4 = icmp ult i32 %22, %23
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %24 = load i32, i32* %numrows, align 4, !tbaa !26
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %25 = load i32, i32* %inrows, align 4, !tbaa !26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ]
  store i32 %cond, i32* %numrows, align 4, !tbaa !26
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 71
  %27 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert, align 8, !tbaa !39
  %color_convert = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %27, i32 0, i32 1
  %28 = load void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert, align 8, !tbaa !40
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %30 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !1
  %31 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !1
  %32 = load i32, i32* %31, align 4, !tbaa !26
  %idx.ext = zext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %30, i64 %idx.ext
  %33 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %color_buf = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %33, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i32 0
  %34 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %next_buf_row5 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %34, i32 0, i32 3
  %35 = load i32, i32* %next_buf_row5, align 4, !tbaa !38
  %36 = load i32, i32* %numrows, align 4, !tbaa !26
  call void %28(%struct.jpeg_compress_struct* %29, i8** %add.ptr, i8*** %arraydecay, i32 %35, i32 %36) #3
  %37 = load i32, i32* %numrows, align 4, !tbaa !26
  %38 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !1
  %39 = load i32, i32* %38, align 4, !tbaa !26
  %add = add i32 %39, %37
  store i32 %add, i32* %38, align 4, !tbaa !26
  %40 = load i32, i32* %numrows, align 4, !tbaa !26
  %41 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %next_buf_row6 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %41, i32 0, i32 3
  %42 = load i32, i32* %next_buf_row6, align 4, !tbaa !38
  %add7 = add nsw i32 %42, %40
  store i32 %add7, i32* %next_buf_row6, align 4, !tbaa !38
  %43 = load i32, i32* %numrows, align 4, !tbaa !26
  %44 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %rows_to_go = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %44, i32 0, i32 2
  %45 = load i32, i32* %rows_to_go, align 4, !tbaa !37
  %sub8 = sub i32 %45, %43
  store i32 %sub8, i32* %rows_to_go, align 4, !tbaa !37
  %46 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %rows_to_go9 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %46, i32 0, i32 2
  %47 = load i32, i32* %rows_to_go9, align 4, !tbaa !37
  %cmp10 = icmp eq i32 %47, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %48 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %next_buf_row11 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %48, i32 0, i32 3
  %49 = load i32, i32* %next_buf_row11, align 4, !tbaa !38
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 49
  %51 = load i32, i32* %max_v_samp_factor12, align 4, !tbaa !35
  %cmp13 = icmp slt i32 %49, %51
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %ci, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %52 = load i32, i32* %ci, align 4, !tbaa !26
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 17
  %54 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp14 = icmp slt i32 %52, %54
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i32, i32* %ci, align 4, !tbaa !26
  %idxprom = sext i32 %55 to i64
  %56 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %color_buf15 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %56, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf15, i32 0, i64 %idxprom
  %57 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 7
  %59 = load i32, i32* %image_width, align 4, !tbaa !42
  %60 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %next_buf_row16 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %60, i32 0, i32 3
  %61 = load i32, i32* %next_buf_row16, align 4, !tbaa !38
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 49
  %63 = load i32, i32* %max_v_samp_factor17, align 4, !tbaa !35
  call void @expand_bottom_edge(i8** %57, i32 %59, i32 %61, i32 %63) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, i32* %ci, align 4, !tbaa !26
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 49
  %66 = load i32, i32* %max_v_samp_factor18, align 4, !tbaa !35
  %67 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %next_buf_row19 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %67, i32 0, i32 3
  store i32 %66, i32* %next_buf_row19, align 4, !tbaa !38
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %cond.end
  %68 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %next_buf_row20 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %68, i32 0, i32 3
  %69 = load i32, i32* %next_buf_row20, align 4, !tbaa !38
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 49
  %71 = load i32, i32* %max_v_samp_factor21, align 4, !tbaa !35
  %cmp22 = icmp eq i32 %69, %71
  br i1 %cmp22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.end
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 72
  %73 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample, align 8, !tbaa !22
  %downsample24 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %73, i32 0, i32 1
  %74 = load void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)** %downsample24, align 8, !tbaa !43
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %76 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %color_buf25 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %76, i32 0, i32 1
  %arraydecay26 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf25, i32 0, i32 0
  %77 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %78 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !1
  %79 = load i32, i32* %78, align 4, !tbaa !26
  call void %74(%struct.jpeg_compress_struct* %75, i8*** %arraydecay26, i32 0, i8*** %77, i32 %79) #3
  %80 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %next_buf_row27 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %80, i32 0, i32 3
  store i32 0, i32* %next_buf_row27, align 4, !tbaa !38
  %81 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !1
  %82 = load i32, i32* %81, align 4, !tbaa !26
  %inc28 = add i32 %82, 1
  store i32 %inc28, i32* %81, align 4, !tbaa !26
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.23, %if.end
  %83 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !1
  %rows_to_go30 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %83, i32 0, i32 2
  %84 = load i32, i32* %rows_to_go30, align 4, !tbaa !37
  %cmp31 = icmp eq i32 %84, 0
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.47

land.lhs.true.32:                                 ; preds = %if.end.29
  %85 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !1
  %86 = load i32, i32* %85, align 4, !tbaa !26
  %87 = load i32, i32* %out_row_groups_avail.addr, align 4, !tbaa !26
  %cmp33 = icmp ult i32 %86, %87
  br i1 %cmp33, label %if.then.34, label %if.end.47

if.then.34:                                       ; preds = %land.lhs.true.32
  store i32 0, i32* %ci, align 4, !tbaa !26
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %88, i32 0, i32 19
  %89 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %89, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.44, %if.then.34
  %90 = load i32, i32* %ci, align 4, !tbaa !26
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %91, i32 0, i32 17
  %92 = load i32, i32* %num_components36, align 4, !tbaa !28
  %cmp37 = icmp slt i32 %90, %92
  br i1 %cmp37, label %for.body.38, label %for.end.46

for.body.38:                                      ; preds = %for.cond.35
  %93 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %93, i32 0, i32 3
  %94 = load i32, i32* %v_samp_factor, align 4, !tbaa !44
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 0, i32 10
  %96 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !45
  %mul = mul nsw i32 %94, %96
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %97, i32 0, i32 51
  %98 = load i32, i32* %min_DCT_v_scaled_size, align 4, !tbaa !46
  %div = sdiv i32 %mul, %98
  store i32 %div, i32* %numrows, align 4, !tbaa !26
  %99 = load i32, i32* %ci, align 4, !tbaa !26
  %idxprom39 = sext i32 %99 to i64
  %100 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8**, i8*** %100, i64 %idxprom39
  %101 = load i8**, i8*** %arrayidx40, align 8, !tbaa !1
  %102 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %102, i32 0, i32 7
  %103 = load i32, i32* %width_in_blocks, align 4, !tbaa !30
  %104 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %104, i32 0, i32 9
  %105 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !47
  %mul41 = mul i32 %103, %105
  %106 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !1
  %107 = load i32, i32* %106, align 4, !tbaa !26
  %108 = load i32, i32* %numrows, align 4, !tbaa !26
  %mul42 = mul i32 %107, %108
  %109 = load i32, i32* %out_row_groups_avail.addr, align 4, !tbaa !26
  %110 = load i32, i32* %numrows, align 4, !tbaa !26
  %mul43 = mul i32 %109, %110
  call void @expand_bottom_edge(i8** %101, i32 %mul41, i32 %mul42, i32 %mul43) #3
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.38
  %111 = load i32, i32* %ci, align 4, !tbaa !26
  %inc45 = add nsw i32 %111, 1
  store i32 %inc45, i32* %ci, align 4, !tbaa !26
  %112 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %112, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond.35

for.end.46:                                       ; preds = %for.cond.35
  %113 = load i32, i32* %out_row_groups_avail.addr, align 4, !tbaa !26
  %114 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !1
  store i32 %113, i32* %114, align 4, !tbaa !26
  br label %while.end

if.end.47:                                        ; preds = %land.lhs.true.32, %if.end.29
  br label %while.cond

while.end:                                        ; preds = %for.end.46, %land.end
  %115 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast i32* %inrows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %numrows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @expand_bottom_edge(i8** %image_data, i32 %num_cols, i32 %input_rows, i32 %output_rows) #0 {
entry:
  %image_data.addr = alloca i8**, align 8
  %num_cols.addr = alloca i32, align 4
  %input_rows.addr = alloca i32, align 4
  %output_rows.addr = alloca i32, align 4
  %row = alloca i32, align 4
  store i8** %image_data, i8*** %image_data.addr, align 8, !tbaa !1
  store i32 %num_cols, i32* %num_cols.addr, align 4, !tbaa !26
  store i32 %input_rows, i32* %input_rows.addr, align 4, !tbaa !26
  store i32 %output_rows, i32* %output_rows.addr, align 4, !tbaa !26
  %0 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %input_rows.addr, align 4, !tbaa !26
  store i32 %1, i32* %row, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %row, align 4, !tbaa !26
  %3 = load i32, i32* %output_rows.addr, align 4, !tbaa !26
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %image_data.addr, align 8, !tbaa !1
  %5 = load i32, i32* %input_rows.addr, align 4, !tbaa !26
  %sub = sub nsw i32 %5, 1
  %6 = load i8**, i8*** %image_data.addr, align 8, !tbaa !1
  %7 = load i32, i32* %row, align 4, !tbaa !26
  %8 = load i32, i32* %num_cols.addr, align 4, !tbaa !26
  call void @jcopy_sample_rows(i8** %4, i32 %sub, i8** %6, i32 %7, i32 1, i32 %8) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %row, align 4, !tbaa !26
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %row, align 4, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret void
}

declare void @jcopy_sample_rows(i8**, i32, i8**, i32, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 0}
!7 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !8, i64 36, !2, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !3, i64 60, !9, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !8, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !8, i64 308, !3, i64 312, !8, i64 316, !8, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !10, i64 332, !10, i64 334, !3, i64 336, !3, i64 340, !8, i64 344, !3, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !3, i64 376, !8, i64 408, !8, i64 412, !8, i64 416, !3, i64 420, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !8, i64 476, !2, i64 480, !8, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !8, i64 576}
!8 = !{!"int", !3, i64 0}
!9 = !{!"double", !3, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !8, i64 40}
!12 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !3, i64 44, !8, i64 124, !13, i64 128, !2, i64 136, !8, i64 144, !2, i64 152, !8, i64 160, !8, i64 164}
!13 = !{!"long", !3, i64 0}
!14 = !{!12, !2, i64 0}
!15 = !{!7, !2, i64 8}
!16 = !{!17, !2, i64 0}
!17 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !13, i64 88, !13, i64 96}
!18 = !{!7, !2, i64 512}
!19 = !{!20, !2, i64 0}
!20 = !{!"", !21, i64 0, !3, i64 16, !8, i64 96, !8, i64 100}
!21 = !{!"jpeg_c_prep_controller", !2, i64 0, !2, i64 8}
!22 = !{!7, !2, i64 544}
!23 = !{!24, !3, i64 16}
!24 = !{!"jpeg_downsampler", !2, i64 0, !2, i64 8, !3, i64 16}
!25 = !{!20, !2, i64 8}
!26 = !{!8, !8, i64 0}
!27 = !{!7, !2, i64 104}
!28 = !{!7, !8, i64 92}
!29 = !{!17, !2, i64 16}
!30 = !{!31, !8, i64 28}
!31 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !3, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !2, i64 80, !2, i64 88}
!32 = !{!7, !8, i64 360}
!33 = !{!7, !8, i64 352}
!34 = !{!31, !8, i64 8}
!35 = !{!7, !8, i64 356}
!36 = !{!7, !8, i64 52}
!37 = !{!20, !8, i64 96}
!38 = !{!20, !8, i64 100}
!39 = !{!7, !2, i64 536}
!40 = !{!41, !2, i64 8}
!41 = !{!"jpeg_color_converter", !2, i64 0, !2, i64 8}
!42 = !{!7, !8, i64 48}
!43 = !{!24, !2, i64 8}
!44 = !{!31, !8, i64 12}
!45 = !{!31, !8, i64 40}
!46 = !{!7, !8, i64 364}
!47 = !{!31, !8, i64 36}
