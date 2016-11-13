; ModuleID = './jcmainct.bc'
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
%struct.my_main_controller = type { %struct.jpeg_c_main_controller, i32, i32, i32, i32, [10 x i8**] }

; Function Attrs: nounwind uwtable
define void @jinit_c_main_controller(%struct.jpeg_compress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %mainp = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4, !tbaa !5
  %0 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i32 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %7 = bitcast %struct.jpeg_compress_struct* %6 to %struct.jpeg_common_struct*
  %call = call i8* %5(%struct.jpeg_common_struct* %7, i32 1, i64 112) #2
  %8 = bitcast i8* %call to %struct.my_main_controller*
  store %struct.my_main_controller* %8, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %9 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %9, i32 0, i32 0
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %main = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 67
  store %struct.jpeg_c_main_controller* %pub, %struct.jpeg_c_main_controller** %main, align 8, !tbaa !14
  %11 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %pub1 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %11, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_main_controller, %struct.jpeg_c_main_controller* %pub1, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_main, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8, !tbaa !15
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 29
  %13 = load i32, i32* %raw_data_in, align 4, !tbaa !18
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load i32, i32* %need_full_buffer.addr, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %14, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !19
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 3, i32* %msg_code, align 4, !tbaa !20
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !19
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !22
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %21 = bitcast %struct.jpeg_compress_struct* %20 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* %21) #2
  br label %if.end.8

if.else:                                          ; preds = %if.end
  store i32 0, i32* %ci, align 4, !tbaa !23
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 19
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !24
  store %struct.jpeg_component_info* %23, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %24 = load i32, i32* %ci, align 4, !tbaa !23
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 17
  %26 = load i32, i32* %num_components, align 4, !tbaa !25
  %cmp = icmp slt i32 %24, %26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 1
  %28 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem5, align 8, !tbaa !6
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %28, i32 0, i32 2
  %29 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !26
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %31 = bitcast %struct.jpeg_compress_struct* %30 to %struct.jpeg_common_struct*
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 0, i32 7
  %33 = load i32, i32* %width_in_blocks, align 4, !tbaa !27
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 0, i32 9
  %35 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !29
  %mul = mul i32 %33, %35
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %36, i32 0, i32 3
  %37 = load i32, i32* %v_samp_factor, align 4, !tbaa !30
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 10
  %39 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !31
  %mul6 = mul nsw i32 %37, %39
  %call7 = call i8** %29(%struct.jpeg_common_struct* %31, i32 1, i32 %mul, i32 %mul6) #2
  %40 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom = sext i32 %40 to i64
  %41 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %41, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i64 %idxprom
  store i8** %call7, i8*** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %ci, align 4, !tbaa !23
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !23
  %43 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %43, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %if.then.3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then
  %44 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_main(%struct.jpeg_compress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %mainp = alloca %struct.my_main_controller*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %pass_mode, i32* %pass_mode.addr, align 4, !tbaa !5
  %0 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %main = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 67
  %2 = load %struct.jpeg_c_main_controller*, %struct.jpeg_c_main_controller** %main, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_c_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 29
  %5 = load i32, i32* %raw_data_in, align 4, !tbaa !18
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %cur_iMCU_row = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %6, i32 0, i32 1
  store i32 0, i32* %cur_iMCU_row, align 4, !tbaa !32
  %7 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i32 0, i32 2
  store i32 0, i32* %rowgroup_ctr, align 4, !tbaa !33
  %8 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %suspended = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %8, i32 0, i32 3
  store i32 0, i32* %suspended, align 4, !tbaa !34
  %9 = load i32, i32* %pass_mode.addr, align 4, !tbaa !5
  %10 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %pass_mode1 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %10, i32 0, i32 4
  store i32 %9, i32* %pass_mode1, align 4, !tbaa !35
  %11 = load i32, i32* %pass_mode.addr, align 4, !tbaa !5
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %12 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %12, i32 0, i32 0
  %process_data = getelementptr inbounds %struct.jpeg_c_main_controller, %struct.jpeg_c_main_controller* %pub, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* @process_data_simple_main, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)** %process_data, align 8, !tbaa !36
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !19
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 3, i32* %msg_code, align 4, !tbaa !20
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !19
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !22
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %19 = bitcast %struct.jpeg_compress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %20 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @process_data_simple_main(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i32* %in_row_ctr, i32 %in_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %in_row_ctr.addr = alloca i32*, align 8
  %in_rows_avail.addr = alloca i32, align 4
  %mainp = alloca %struct.my_main_controller*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !1
  store i32* %in_row_ctr, i32** %in_row_ctr.addr, align 8, !tbaa !1
  store i32 %in_rows_avail, i32* %in_rows_avail.addr, align 4, !tbaa !23
  %0 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %main = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 67
  %2 = load %struct.jpeg_c_main_controller*, %struct.jpeg_c_main_controller** %main, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_c_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %entry
  %4 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %cur_iMCU_row = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i32 0, i32 1
  %5 = load i32, i32* %cur_iMCU_row, align 4, !tbaa !32
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 52
  %7 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !37
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %8, i32 0, i32 2
  %9 = load i32, i32* %rowgroup_ctr, align 4, !tbaa !33
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 51
  %11 = load i32, i32* %min_DCT_v_scaled_size, align 4, !tbaa !38
  %cmp1 = icmp ult i32 %9, %11
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %prep = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 68
  %13 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep, align 8, !tbaa !39
  %pre_process_data = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %13, i32 0, i32 1
  %14 = load void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)** %pre_process_data, align 8, !tbaa !40
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %16 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !1
  %17 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !1
  %18 = load i32, i32* %in_rows_avail.addr, align 4, !tbaa !23
  %19 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %19, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i32 0
  %20 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr2 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %20, i32 0, i32 2
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 51
  %22 = load i32, i32* %min_DCT_v_scaled_size3, align 4, !tbaa !38
  call void %14(%struct.jpeg_compress_struct* %15, i8** %16, i32* %17, i32 %18, i8*** %arraydecay, i32* %rowgroup_ctr2, i32 %22) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %23 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr4 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %23, i32 0, i32 2
  %24 = load i32, i32* %rowgroup_ctr4, align 4, !tbaa !33
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 51
  %26 = load i32, i32* %min_DCT_v_scaled_size5, align 4, !tbaa !38
  %cmp6 = icmp ne i32 %24, %26
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 69
  %28 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef, align 8, !tbaa !42
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %28, i32 0, i32 1
  %29 = load i32 (%struct.jpeg_compress_struct*, i8***)*, i32 (%struct.jpeg_compress_struct*, i8***)** %compress_data, align 8, !tbaa !43
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %31 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %buffer9 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %31, i32 0, i32 5
  %arraydecay10 = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer9, i32 0, i32 0
  %call = call i32 %29(%struct.jpeg_compress_struct* %30, i8*** %arraydecay10) #2
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.16, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  %32 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %suspended = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %32, i32 0, i32 3
  %33 = load i32, i32* %suspended, align 4, !tbaa !34
  %tobool12 = icmp ne i32 %33, 0
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.then.11
  %34 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !1
  %35 = load i32, i32* %34, align 4, !tbaa !23
  %dec = add i32 %35, -1
  store i32 %dec, i32* %34, align 4, !tbaa !23
  %36 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %suspended14 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %36, i32 0, i32 3
  store i32 1, i32* %suspended14, align 4, !tbaa !34
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.11
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.8
  %37 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %suspended17 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %37, i32 0, i32 3
  %38 = load i32, i32* %suspended17, align 4, !tbaa !34
  %tobool18 = icmp ne i32 %38, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.16
  %39 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !1
  %40 = load i32, i32* %39, align 4, !tbaa !23
  %inc = add i32 %40, 1
  store i32 %inc, i32* %39, align 4, !tbaa !23
  %41 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %suspended20 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %41, i32 0, i32 3
  store i32 0, i32* %suspended20, align 4, !tbaa !34
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.16
  %42 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr22 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %42, i32 0, i32 2
  store i32 0, i32* %rowgroup_ctr22, align 4, !tbaa !33
  %43 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %cur_iMCU_row23 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %43, i32 0, i32 1
  %44 = load i32, i32* %cur_iMCU_row23, align 4, !tbaa !32
  %inc24 = add i32 %44, 1
  store i32 %inc24, i32* %cur_iMCU_row23, align 4, !tbaa !32
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.15, %if.then.7
  %45 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 8}
!7 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !8, i64 36, !2, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !3, i64 60, !9, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !8, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !8, i64 308, !3, i64 312, !8, i64 316, !8, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !10, i64 332, !10, i64 334, !3, i64 336, !3, i64 340, !8, i64 344, !3, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !3, i64 376, !8, i64 408, !8, i64 412, !8, i64 416, !3, i64 420, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !8, i64 476, !2, i64 480, !8, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !8, i64 576}
!8 = !{!"int", !3, i64 0}
!9 = !{!"double", !3, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !2, i64 0}
!12 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !13, i64 88, !13, i64 96}
!13 = !{!"long", !3, i64 0}
!14 = !{!7, !2, i64 504}
!15 = !{!16, !2, i64 0}
!16 = !{!"", !17, i64 0, !8, i64 16, !8, i64 20, !3, i64 24, !3, i64 28, !3, i64 32}
!17 = !{!"jpeg_c_main_controller", !2, i64 0, !2, i64 8}
!18 = !{!7, !3, i64 288}
!19 = !{!7, !2, i64 0}
!20 = !{!21, !8, i64 40}
!21 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !3, i64 44, !8, i64 124, !13, i64 128, !2, i64 136, !8, i64 144, !2, i64 152, !8, i64 160, !8, i64 164}
!22 = !{!21, !2, i64 0}
!23 = !{!8, !8, i64 0}
!24 = !{!7, !2, i64 104}
!25 = !{!7, !8, i64 92}
!26 = !{!12, !2, i64 16}
!27 = !{!28, !8, i64 28}
!28 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !3, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !2, i64 80, !2, i64 88}
!29 = !{!28, !8, i64 36}
!30 = !{!28, !8, i64 12}
!31 = !{!28, !8, i64 40}
!32 = !{!16, !8, i64 16}
!33 = !{!16, !8, i64 20}
!34 = !{!16, !3, i64 24}
!35 = !{!16, !3, i64 28}
!36 = !{!16, !2, i64 8}
!37 = !{!7, !8, i64 368}
!38 = !{!7, !8, i64 364}
!39 = !{!7, !2, i64 512}
!40 = !{!41, !2, i64 8}
!41 = !{!"jpeg_c_prep_controller", !2, i64 0, !2, i64 8}
!42 = !{!7, !2, i64 520}
!43 = !{!44, !2, i64 8}
!44 = !{!"jpeg_c_coef_controller", !2, i64 0, !2, i64 8}
