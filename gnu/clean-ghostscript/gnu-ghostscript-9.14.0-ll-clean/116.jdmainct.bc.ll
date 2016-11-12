; ModuleID = './jdmainct.bc'
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
%struct.jpeg_color_quantizer = type { {}*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.my_main_controller = type { %struct.jpeg_d_main_controller, [10 x i8**], i32, i32, [2 x i8***], i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define void @jinit_d_main_controller(%struct.jpeg_decompress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %mainp = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %ngroups = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4, !tbaa !5
  %0 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %ngroups to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %7 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %9 = bitcast %struct.jpeg_decompress_struct* %8 to %struct.jpeg_common_struct*
  %call = call i8* %7(%struct.jpeg_common_struct* %9, i32 1, i64 136) #2
  %10 = bitcast i8* %call to %struct.my_main_controller*
  store %struct.my_main_controller* %10, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %11 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %11, i32 0, i32 0
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 84
  store %struct.jpeg_d_main_controller* %pub, %struct.jpeg_d_main_controller** %main, align 8, !tbaa !14
  %13 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %pub1 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %13, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %pub1, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, i32)* @start_pass_main, void (%struct.jpeg_decompress_struct*, i32)** %start_pass, align 8, !tbaa !15
  %14 = load i32, i32* %need_full_buffer.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !18
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 3, i32* %msg_code, align 4, !tbaa !19
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !18
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !21
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %21 = bitcast %struct.jpeg_decompress_struct* %20 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* %21) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 91
  %23 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8, !tbaa !22
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %23, i32 0, i32 2
  %24 = load i32, i32* %need_context_rows, align 4, !tbaa !23
  %tobool3 = icmp ne i32 %24, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 66
  %26 = load i32, i32* %min_DCT_v_scaled_size, align 4, !tbaa !25
  %cmp = icmp slt i32 %26, 2
  br i1 %cmp, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.then.4
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !18
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 5
  store i32 48, i32* %msg_code7, align 4, !tbaa !19
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !18
  %error_exit9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 0
  %31 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit9, align 8, !tbaa !21
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %33 = bitcast %struct.jpeg_decompress_struct* %32 to %struct.jpeg_common_struct*
  call void %31(%struct.jpeg_common_struct* %33) #2
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.then.4
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @alloc_funny_pointers(%struct.jpeg_decompress_struct* %34) #2
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 66
  %36 = load i32, i32* %min_DCT_v_scaled_size11, align 4, !tbaa !25
  %add = add nsw i32 %36, 2
  store i32 %add, i32* %ngroups, align 4, !tbaa !26
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 66
  %38 = load i32, i32* %min_DCT_v_scaled_size12, align 4, !tbaa !25
  store i32 %38, i32* %ngroups, align 4, !tbaa !26
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end.10
  store i32 0, i32* %ci, align 4, !tbaa !26
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 44
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %40, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %41 = load i32, i32* %ci, align 4, !tbaa !26
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 9
  %43 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp14 = icmp slt i32 %41, %43
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %44, i32 0, i32 3
  %45 = load i32, i32* %v_samp_factor, align 4, !tbaa !29
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i32 0, i32 10
  %47 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !31
  %mul = mul nsw i32 %45, %47
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 66
  %49 = load i32, i32* %min_DCT_v_scaled_size15, align 4, !tbaa !25
  %div = sdiv i32 %mul, %49
  store i32 %div, i32* %rgroup, align 4, !tbaa !26
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 1
  %51 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem16, align 8, !tbaa !6
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %51, i32 0, i32 2
  %52 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !32
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %54 = bitcast %struct.jpeg_decompress_struct* %53 to %struct.jpeg_common_struct*
  %55 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %55, i32 0, i32 7
  %56 = load i32, i32* %width_in_blocks, align 4, !tbaa !33
  %57 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %57, i32 0, i32 9
  %58 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !34
  %mul17 = mul i32 %56, %58
  %59 = load i32, i32* %rgroup, align 4, !tbaa !26
  %60 = load i32, i32* %ngroups, align 4, !tbaa !26
  %mul18 = mul nsw i32 %59, %60
  %call19 = call i8** %52(%struct.jpeg_common_struct* %54, i32 1, i32 %mul17, i32 %mul18) #2
  %61 = load i32, i32* %ci, align 4, !tbaa !26
  %idxprom = sext i32 %61 to i64
  %62 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %62, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i64 %idxprom
  store i8** %call19, i8*** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %63 = load i32, i32* %ci, align 4, !tbaa !26
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !26
  %64 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %64, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32* %ngroups to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_main(%struct.jpeg_decompress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %mainp = alloca %struct.my_main_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %pass_mode, i32* %pass_mode.addr, align 4, !tbaa !5
  %0 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 84
  %2 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_d_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %4 = load i32, i32* %pass_mode.addr, align 4, !tbaa !5
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 91
  %6 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8, !tbaa !22
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %6, i32 0, i32 2
  %7 = load i32, i32* %need_context_rows, align 4, !tbaa !23
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %8 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %8, i32 0, i32 0
  %process_data = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %pub, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* @process_data_context_main, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %process_data, align 8, !tbaa !35
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @make_funny_pointers(%struct.jpeg_decompress_struct* %9) #2
  %10 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %whichptr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %10, i32 0, i32 5
  store i32 0, i32* %whichptr, align 4, !tbaa !36
  %11 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %context_state = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %11, i32 0, i32 6
  store i32 0, i32* %context_state, align 4, !tbaa !37
  %12 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %iMCU_row_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %12, i32 0, i32 8
  store i32 0, i32* %iMCU_row_ctr, align 4, !tbaa !38
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %13 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %pub1 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %13, i32 0, i32 0
  %process_data2 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %pub1, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* @process_data_simple_main, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %process_data2, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %buffer_full = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %14, i32 0, i32 2
  store i32 0, i32* %buffer_full, align 4, !tbaa !39
  %15 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %15, i32 0, i32 3
  store i32 0, i32* %rowgroup_ctr, align 4, !tbaa !40
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !18
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 3, i32* %msg_code, align 4, !tbaa !19
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !18
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !21
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %22 = bitcast %struct.jpeg_decompress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  %23 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alloc_funny_pointers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %mainp = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %xbuf = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 84
  %2 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_d_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 66
  %8 = load i32, i32* %min_DCT_v_scaled_size, align 4, !tbaa !25
  store i32 %8, i32* %M, align 4, !tbaa !26
  %9 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8*** %xbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 1
  %12 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %12, i32 0, i32 0
  %13 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %15 = bitcast %struct.jpeg_decompress_struct* %14 to %struct.jpeg_common_struct*
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 9
  %17 = load i32, i32* %num_components, align 4, !tbaa !28
  %mul = mul nsw i32 %17, 2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 8
  %call = call i8* %13(%struct.jpeg_common_struct* %15, i32 1, i64 %mul1) #2
  %18 = bitcast i8* %call to i8***
  %19 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %19, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 0
  store i8*** %18, i8**** %arrayidx, align 8, !tbaa !1
  %20 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %xbuffer2 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %20, i32 0, i32 4
  %arrayidx3 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer2, i32 0, i64 0
  %21 = load i8***, i8**** %arrayidx3, align 8, !tbaa !1
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 9
  %23 = load i32, i32* %num_components4, align 4, !tbaa !28
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8**, i8*** %21, i64 %idx.ext
  %24 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %xbuffer5 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %24, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer5, i32 0, i64 1
  store i8*** %add.ptr, i8**** %arrayidx6, align 8, !tbaa !1
  store i32 0, i32* %ci, align 4, !tbaa !26
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 44
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %26, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %27 = load i32, i32* %ci, align 4, !tbaa !26
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 9
  %29 = load i32, i32* %num_components7, align 4, !tbaa !28
  %cmp = icmp slt i32 %27, %29
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i32 0, i32 3
  %31 = load i32, i32* %v_samp_factor, align 4, !tbaa !29
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 0, i32 10
  %33 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !31
  %mul9 = mul nsw i32 %31, %33
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 66
  %35 = load i32, i32* %min_DCT_v_scaled_size10, align 4, !tbaa !25
  %div = sdiv i32 %mul9, %35
  store i32 %div, i32* %rgroup, align 4, !tbaa !26
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 1
  %37 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem11, align 8, !tbaa !6
  %alloc_small12 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %37, i32 0, i32 0
  %38 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small12, align 8, !tbaa !11
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %40 = bitcast %struct.jpeg_decompress_struct* %39 to %struct.jpeg_common_struct*
  %41 = load i32, i32* %rgroup, align 4, !tbaa !26
  %42 = load i32, i32* %M, align 4, !tbaa !26
  %add = add nsw i32 %42, 4
  %mul13 = mul nsw i32 %41, %add
  %mul14 = mul nsw i32 2, %mul13
  %conv15 = sext i32 %mul14 to i64
  %mul16 = mul i64 %conv15, 8
  %call17 = call i8* %38(%struct.jpeg_common_struct* %40, i32 1, i64 %mul16) #2
  %43 = bitcast i8* %call17 to i8**
  store i8** %43, i8*** %xbuf, align 8, !tbaa !1
  %44 = load i32, i32* %rgroup, align 4, !tbaa !26
  %45 = load i8**, i8*** %xbuf, align 8, !tbaa !1
  %idx.ext18 = sext i32 %44 to i64
  %add.ptr19 = getelementptr inbounds i8*, i8** %45, i64 %idx.ext18
  store i8** %add.ptr19, i8*** %xbuf, align 8, !tbaa !1
  %46 = load i8**, i8*** %xbuf, align 8, !tbaa !1
  %47 = load i32, i32* %ci, align 4, !tbaa !26
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %xbuffer20 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %48, i32 0, i32 4
  %arrayidx21 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer20, i32 0, i64 0
  %49 = load i8***, i8**** %arrayidx21, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8**, i8*** %49, i64 %idxprom
  store i8** %46, i8*** %arrayidx22, align 8, !tbaa !1
  %50 = load i32, i32* %rgroup, align 4, !tbaa !26
  %51 = load i32, i32* %M, align 4, !tbaa !26
  %add23 = add nsw i32 %51, 4
  %mul24 = mul nsw i32 %50, %add23
  %52 = load i8**, i8*** %xbuf, align 8, !tbaa !1
  %idx.ext25 = sext i32 %mul24 to i64
  %add.ptr26 = getelementptr inbounds i8*, i8** %52, i64 %idx.ext25
  store i8** %add.ptr26, i8*** %xbuf, align 8, !tbaa !1
  %53 = load i8**, i8*** %xbuf, align 8, !tbaa !1
  %54 = load i32, i32* %ci, align 4, !tbaa !26
  %idxprom27 = sext i32 %54 to i64
  %55 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %xbuffer28 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %55, i32 0, i32 4
  %arrayidx29 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer28, i32 0, i64 1
  %56 = load i8***, i8**** %arrayidx29, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8**, i8*** %56, i64 %idxprom27
  store i8** %53, i8*** %arrayidx30, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, i32* %ci, align 4, !tbaa !26
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !26
  %58 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %58, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = bitcast i8*** %xbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i32* %M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @process_data_context_main(%struct.jpeg_decompress_struct* %cinfo, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %mainp = alloca %struct.my_main_controller*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !1
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8, !tbaa !1
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4, !tbaa !26
  %0 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 84
  %2 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_d_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %4 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %buffer_full = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i32 0, i32 2
  %5 = load i32, i32* %buffer_full, align 4, !tbaa !39
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.4, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 85
  %7 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef, align 8, !tbaa !41
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %7, i32 0, i32 3
  %8 = load i32 (%struct.jpeg_decompress_struct*, i8***)*, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data, align 8, !tbaa !42
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %10 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %whichptr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %10, i32 0, i32 5
  %11 = load i32, i32* %whichptr, align 4, !tbaa !36
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %12, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 %idxprom
  %13 = load i8***, i8**** %arrayidx, align 8, !tbaa !1
  %call = call i32 %8(%struct.jpeg_decompress_struct* %9, i8*** %13) #2
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %buffer_full3 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %14, i32 0, i32 2
  store i32 1, i32* %buffer_full3, align 4, !tbaa !39
  %15 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %iMCU_row_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %15, i32 0, i32 8
  %16 = load i32, i32* %iMCU_row_ctr, align 4, !tbaa !38
  %inc = add i32 %16, 1
  store i32 %inc, i32* %iMCU_row_ctr, align 4, !tbaa !38
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %17 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %context_state = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %17, i32 0, i32 6
  %18 = load i32, i32* %context_state, align 4, !tbaa !37
  switch i32 %18, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.17
    i32 1, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.end.4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 86
  %20 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post, align 8, !tbaa !44
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %20, i32 0, i32 1
  %21 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data, align 8, !tbaa !45
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %23 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %whichptr5 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %23, i32 0, i32 5
  %24 = load i32, i32* %whichptr5, align 4, !tbaa !36
  %idxprom6 = sext i32 %24 to i64
  %25 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %xbuffer7 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %25, i32 0, i32 4
  %arrayidx8 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer7, i32 0, i64 %idxprom6
  %26 = load i8***, i8**** %arrayidx8, align 8, !tbaa !1
  %27 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %27, i32 0, i32 3
  %28 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroups_avail = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %28, i32 0, i32 7
  %29 = load i32, i32* %rowgroups_avail, align 4, !tbaa !47
  %30 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %31 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !1
  %32 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !26
  call void %21(%struct.jpeg_decompress_struct* %22, i8*** %26, i32* %rowgroup_ctr, i32 %29, i8** %30, i32* %31, i32 %32) #2
  %33 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr9 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %33, i32 0, i32 3
  %34 = load i32, i32* %rowgroup_ctr9, align 4, !tbaa !40
  %35 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroups_avail10 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %35, i32 0, i32 7
  %36 = load i32, i32* %rowgroups_avail10, align 4, !tbaa !47
  %cmp = icmp ult i32 %34, %36
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.bb
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %sw.bb
  %37 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %context_state13 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %37, i32 0, i32 6
  store i32 0, i32* %context_state13, align 4, !tbaa !37
  %38 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !1
  %39 = load i32, i32* %38, align 4, !tbaa !26
  %40 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !26
  %cmp14 = icmp uge i32 %39, %40
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.12
  br label %sw.bb.17

sw.bb.17:                                         ; preds = %if.end.4, %if.end.16
  %41 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr18 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %41, i32 0, i32 3
  store i32 0, i32* %rowgroup_ctr18, align 4, !tbaa !40
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 66
  %43 = load i32, i32* %min_DCT_v_scaled_size, align 4, !tbaa !25
  %sub = sub nsw i32 %43, 1
  %44 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroups_avail19 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %44, i32 0, i32 7
  store i32 %sub, i32* %rowgroups_avail19, align 4, !tbaa !47
  %45 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %iMCU_row_ctr20 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %45, i32 0, i32 8
  %46 = load i32, i32* %iMCU_row_ctr20, align 4, !tbaa !38
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 67
  %48 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !48
  %cmp21 = icmp eq i32 %46, %48
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %sw.bb.17
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @set_bottom_pointers(%struct.jpeg_decompress_struct* %49) #2
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %sw.bb.17
  %50 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %context_state24 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %50, i32 0, i32 6
  store i32 1, i32* %context_state24, align 4, !tbaa !37
  br label %sw.bb.25

sw.bb.25:                                         ; preds = %if.end.4, %if.end.23
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %post26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 86
  %52 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post26, align 8, !tbaa !44
  %post_process_data27 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %52, i32 0, i32 1
  %53 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data27, align 8, !tbaa !45
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %55 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %whichptr28 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %55, i32 0, i32 5
  %56 = load i32, i32* %whichptr28, align 4, !tbaa !36
  %idxprom29 = sext i32 %56 to i64
  %57 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %xbuffer30 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %57, i32 0, i32 4
  %arrayidx31 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer30, i32 0, i64 %idxprom29
  %58 = load i8***, i8**** %arrayidx31, align 8, !tbaa !1
  %59 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr32 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %59, i32 0, i32 3
  %60 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroups_avail33 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %60, i32 0, i32 7
  %61 = load i32, i32* %rowgroups_avail33, align 4, !tbaa !47
  %62 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %63 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !1
  %64 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !26
  call void %53(%struct.jpeg_decompress_struct* %54, i8*** %58, i32* %rowgroup_ctr32, i32 %61, i8** %62, i32* %63, i32 %64) #2
  %65 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr34 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %65, i32 0, i32 3
  %66 = load i32, i32* %rowgroup_ctr34, align 4, !tbaa !40
  %67 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroups_avail35 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %67, i32 0, i32 7
  %68 = load i32, i32* %rowgroups_avail35, align 4, !tbaa !47
  %cmp36 = icmp ult i32 %66, %68
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %sw.bb.25
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %sw.bb.25
  %69 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %iMCU_row_ctr39 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %69, i32 0, i32 8
  %70 = load i32, i32* %iMCU_row_ctr39, align 4, !tbaa !38
  %cmp40 = icmp eq i32 %70, 1
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @set_wraparound_pointers(%struct.jpeg_decompress_struct* %71) #2
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.38
  %72 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %whichptr43 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %72, i32 0, i32 5
  %73 = load i32, i32* %whichptr43, align 4, !tbaa !36
  %xor = xor i32 %73, 1
  store i32 %xor, i32* %whichptr43, align 4, !tbaa !36
  %74 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %buffer_full44 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %74, i32 0, i32 2
  store i32 0, i32* %buffer_full44, align 4, !tbaa !39
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 66
  %76 = load i32, i32* %min_DCT_v_scaled_size45, align 4, !tbaa !25
  %add = add nsw i32 %76, 1
  %77 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr46 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %77, i32 0, i32 3
  store i32 %add, i32* %rowgroup_ctr46, align 4, !tbaa !40
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 66
  %79 = load i32, i32* %min_DCT_v_scaled_size47, align 4, !tbaa !25
  %add48 = add nsw i32 %79, 2
  %80 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroups_avail49 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %80, i32 0, i32 7
  store i32 %add48, i32* %rowgroups_avail49, align 4, !tbaa !47
  %81 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %context_state50 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %81, i32 0, i32 6
  store i32 2, i32* %context_state50, align 4, !tbaa !37
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.42, %if.end.4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.37, %if.then.15, %if.then.11, %if.then.2
  %82 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
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

; Function Attrs: nounwind uwtable
define internal void @make_funny_pointers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %mainp = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %buf = alloca i8**, align 8
  %xbuf0 = alloca i8**, align 8
  %xbuf1 = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 84
  %2 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_d_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 66
  %9 = load i32, i32* %min_DCT_v_scaled_size, align 4, !tbaa !25
  store i32 %9, i32* %M, align 4, !tbaa !26
  %10 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8*** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i8*** %xbuf0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8*** %xbuf1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32 0, i32* %ci, align 4, !tbaa !26
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 44
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %15, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %entry
  %16 = load i32, i32* %ci, align 4, !tbaa !26
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 9
  %18 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i32 0, i32 3
  %20 = load i32, i32* %v_samp_factor, align 4, !tbaa !29
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 10
  %22 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !31
  %mul = mul nsw i32 %20, %22
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 66
  %24 = load i32, i32* %min_DCT_v_scaled_size1, align 4, !tbaa !25
  %div = sdiv i32 %mul, %24
  store i32 %div, i32* %rgroup, align 4, !tbaa !26
  %25 = load i32, i32* %ci, align 4, !tbaa !26
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %26, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 0
  %27 = load i8***, i8**** %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8**, i8*** %27, i64 %idxprom
  %28 = load i8**, i8*** %arrayidx2, align 8, !tbaa !1
  store i8** %28, i8*** %xbuf0, align 8, !tbaa !1
  %29 = load i32, i32* %ci, align 4, !tbaa !26
  %idxprom3 = sext i32 %29 to i64
  %30 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %xbuffer4 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %30, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer4, i32 0, i64 1
  %31 = load i8***, i8**** %arrayidx5, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8**, i8*** %31, i64 %idxprom3
  %32 = load i8**, i8*** %arrayidx6, align 8, !tbaa !1
  store i8** %32, i8*** %xbuf1, align 8, !tbaa !1
  %33 = load i32, i32* %ci, align 4, !tbaa !26
  %idxprom7 = sext i32 %33 to i64
  %34 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %34, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i64 %idxprom7
  %35 = load i8**, i8*** %arrayidx8, align 8, !tbaa !1
  store i8** %35, i8*** %buf, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %36 = load i32, i32* %i, align 4, !tbaa !26
  %37 = load i32, i32* %rgroup, align 4, !tbaa !26
  %38 = load i32, i32* %M, align 4, !tbaa !26
  %add = add nsw i32 %38, 2
  %mul10 = mul nsw i32 %37, %add
  %cmp11 = icmp slt i32 %36, %mul10
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %39 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom13 = sext i32 %39 to i64
  %40 = load i8**, i8*** %buf, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8*, i8** %40, i64 %idxprom13
  %41 = load i8*, i8** %arrayidx14, align 8, !tbaa !1
  %42 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom15 = sext i32 %42 to i64
  %43 = load i8**, i8*** %xbuf1, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8*, i8** %43, i64 %idxprom15
  store i8* %41, i8** %arrayidx16, align 8, !tbaa !1
  %44 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom17 = sext i32 %44 to i64
  %45 = load i8**, i8*** %xbuf0, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8*, i8** %45, i64 %idxprom17
  store i8* %41, i8** %arrayidx18, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %46 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.40, %for.end
  %47 = load i32, i32* %i, align 4, !tbaa !26
  %48 = load i32, i32* %rgroup, align 4, !tbaa !26
  %mul20 = mul nsw i32 %48, 2
  %cmp21 = icmp slt i32 %47, %mul20
  br i1 %cmp21, label %for.body.22, label %for.end.42

for.body.22:                                      ; preds = %for.cond.19
  %49 = load i32, i32* %rgroup, align 4, !tbaa !26
  %50 = load i32, i32* %M, align 4, !tbaa !26
  %mul23 = mul nsw i32 %49, %50
  %51 = load i32, i32* %i, align 4, !tbaa !26
  %add24 = add nsw i32 %mul23, %51
  %idxprom25 = sext i32 %add24 to i64
  %52 = load i8**, i8*** %buf, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8*, i8** %52, i64 %idxprom25
  %53 = load i8*, i8** %arrayidx26, align 8, !tbaa !1
  %54 = load i32, i32* %rgroup, align 4, !tbaa !26
  %55 = load i32, i32* %M, align 4, !tbaa !26
  %sub = sub nsw i32 %55, 2
  %mul27 = mul nsw i32 %54, %sub
  %56 = load i32, i32* %i, align 4, !tbaa !26
  %add28 = add nsw i32 %mul27, %56
  %idxprom29 = sext i32 %add28 to i64
  %57 = load i8**, i8*** %xbuf1, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8*, i8** %57, i64 %idxprom29
  store i8* %53, i8** %arrayidx30, align 8, !tbaa !1
  %58 = load i32, i32* %rgroup, align 4, !tbaa !26
  %59 = load i32, i32* %M, align 4, !tbaa !26
  %sub31 = sub nsw i32 %59, 2
  %mul32 = mul nsw i32 %58, %sub31
  %60 = load i32, i32* %i, align 4, !tbaa !26
  %add33 = add nsw i32 %mul32, %60
  %idxprom34 = sext i32 %add33 to i64
  %61 = load i8**, i8*** %buf, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8*, i8** %61, i64 %idxprom34
  %62 = load i8*, i8** %arrayidx35, align 8, !tbaa !1
  %63 = load i32, i32* %rgroup, align 4, !tbaa !26
  %64 = load i32, i32* %M, align 4, !tbaa !26
  %mul36 = mul nsw i32 %63, %64
  %65 = load i32, i32* %i, align 4, !tbaa !26
  %add37 = add nsw i32 %mul36, %65
  %idxprom38 = sext i32 %add37 to i64
  %66 = load i8**, i8*** %xbuf1, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8*, i8** %66, i64 %idxprom38
  store i8* %62, i8** %arrayidx39, align 8, !tbaa !1
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.22
  %67 = load i32, i32* %i, align 4, !tbaa !26
  %inc41 = add nsw i32 %67, 1
  store i32 %inc41, i32* %i, align 4, !tbaa !26
  br label %for.cond.19

for.end.42:                                       ; preds = %for.cond.19
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.50, %for.end.42
  %68 = load i32, i32* %i, align 4, !tbaa !26
  %69 = load i32, i32* %rgroup, align 4, !tbaa !26
  %cmp44 = icmp slt i32 %68, %69
  br i1 %cmp44, label %for.body.45, label %for.end.52

for.body.45:                                      ; preds = %for.cond.43
  %70 = load i8**, i8*** %xbuf0, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8*, i8** %70, i64 0
  %71 = load i8*, i8** %arrayidx46, align 8, !tbaa !1
  %72 = load i32, i32* %i, align 4, !tbaa !26
  %73 = load i32, i32* %rgroup, align 4, !tbaa !26
  %sub47 = sub nsw i32 %72, %73
  %idxprom48 = sext i32 %sub47 to i64
  %74 = load i8**, i8*** %xbuf0, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8*, i8** %74, i64 %idxprom48
  store i8* %71, i8** %arrayidx49, align 8, !tbaa !1
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.45
  %75 = load i32, i32* %i, align 4, !tbaa !26
  %inc51 = add nsw i32 %75, 1
  store i32 %inc51, i32* %i, align 4, !tbaa !26
  br label %for.cond.43

for.end.52:                                       ; preds = %for.cond.43
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end.52
  %76 = load i32, i32* %ci, align 4, !tbaa !26
  %inc54 = add nsw i32 %76, 1
  store i32 %inc54, i32* %ci, align 4, !tbaa !26
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %77, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  %78 = bitcast i8*** %xbuf1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i8*** %xbuf0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i8*** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_simple_main(%struct.jpeg_decompress_struct* %cinfo, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %mainp = alloca %struct.my_main_controller*, align 8
  %rowgroups_avail = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !1
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8, !tbaa !1
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4, !tbaa !26
  %0 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 84
  %2 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_d_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %4 = bitcast i32* %rowgroups_avail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %buffer_full = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i32 0, i32 2
  %6 = load i32, i32* %buffer_full, align 4, !tbaa !39
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.4, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 85
  %8 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef, align 8, !tbaa !41
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %8, i32 0, i32 3
  %9 = load i32 (%struct.jpeg_decompress_struct*, i8***)*, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data, align 8, !tbaa !42
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %11 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %11, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i32 0
  %call = call i32 %9(%struct.jpeg_decompress_struct* %10, i8*** %arraydecay) #2
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %12 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %buffer_full3 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %12, i32 0, i32 2
  store i32 1, i32* %buffer_full3, align 4, !tbaa !39
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 66
  %14 = load i32, i32* %min_DCT_v_scaled_size, align 4, !tbaa !25
  store i32 %14, i32* %rowgroups_avail, align 4, !tbaa !26
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 86
  %16 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post, align 8, !tbaa !44
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %16, i32 0, i32 1
  %17 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data, align 8, !tbaa !45
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %19 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %buffer5 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %19, i32 0, i32 1
  %arraydecay6 = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer5, i32 0, i32 0
  %20 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %20, i32 0, i32 3
  %21 = load i32, i32* %rowgroups_avail, align 4, !tbaa !26
  %22 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %23 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !1
  %24 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !26
  call void %17(%struct.jpeg_decompress_struct* %18, i8*** %arraydecay6, i32* %rowgroup_ctr, i32 %21, i8** %22, i32* %23, i32 %24) #2
  %25 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr7 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %25, i32 0, i32 3
  %26 = load i32, i32* %rowgroup_ctr7, align 4, !tbaa !40
  %27 = load i32, i32* %rowgroups_avail, align 4, !tbaa !26
  %cmp = icmp uge i32 %26, %27
  br i1 %cmp, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.4
  %28 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %buffer_full9 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %28, i32 0, i32 2
  store i32 0, i32* %buffer_full9, align 4, !tbaa !39
  %29 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroup_ctr10 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %29, i32 0, i32 3
  store i32 0, i32* %rowgroup_ctr10, align 4, !tbaa !40
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.2
  %30 = bitcast i32* %rowgroups_avail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
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

; Function Attrs: nounwind uwtable
define internal void @set_bottom_pointers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %mainp = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %iMCUheight = alloca i32, align 4
  %rows_left = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %xbuf = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 84
  %2 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_d_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %iMCUheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %rows_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8*** %xbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32 0, i32* %ci, align 4, !tbaa !26
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 44
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %12, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %13 = load i32, i32* %ci, align 4, !tbaa !26
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 9
  %15 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 3
  %17 = load i32, i32* %v_samp_factor, align 4, !tbaa !29
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 10
  %19 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !31
  %mul = mul nsw i32 %17, %19
  store i32 %mul, i32* %iMCUheight, align 4, !tbaa !26
  %20 = load i32, i32* %iMCUheight, align 4, !tbaa !26
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 66
  %22 = load i32, i32* %min_DCT_v_scaled_size, align 4, !tbaa !25
  %div = sdiv i32 %20, %22
  store i32 %div, i32* %rgroup, align 4, !tbaa !26
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i32 0, i32 12
  %24 = load i32, i32* %downsampled_height, align 4, !tbaa !49
  %25 = load i32, i32* %iMCUheight, align 4, !tbaa !26
  %rem = urem i32 %24, %25
  store i32 %rem, i32* %rows_left, align 4, !tbaa !26
  %26 = load i32, i32* %rows_left, align 4, !tbaa !26
  %cmp1 = icmp eq i32 %26, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %27 = load i32, i32* %iMCUheight, align 4, !tbaa !26
  store i32 %27, i32* %rows_left, align 4, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %28 = load i32, i32* %ci, align 4, !tbaa !26
  %cmp2 = icmp eq i32 %28, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %29 = load i32, i32* %rows_left, align 4, !tbaa !26
  %sub = sub nsw i32 %29, 1
  %30 = load i32, i32* %rgroup, align 4, !tbaa !26
  %div4 = sdiv i32 %sub, %30
  %add = add nsw i32 %div4, 1
  %31 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %rowgroups_avail = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %31, i32 0, i32 7
  store i32 %add, i32* %rowgroups_avail, align 4, !tbaa !47
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %32 = load i32, i32* %ci, align 4, !tbaa !26
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %whichptr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %33, i32 0, i32 5
  %34 = load i32, i32* %whichptr, align 4, !tbaa !36
  %idxprom6 = sext i32 %34 to i64
  %35 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %35, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 %idxprom6
  %36 = load i8***, i8**** %arrayidx, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8**, i8*** %36, i64 %idxprom
  %37 = load i8**, i8*** %arrayidx7, align 8, !tbaa !1
  store i8** %37, i8*** %xbuf, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.end.5
  %38 = load i32, i32* %i, align 4, !tbaa !26
  %39 = load i32, i32* %rgroup, align 4, !tbaa !26
  %mul9 = mul nsw i32 %39, 2
  %cmp10 = icmp slt i32 %38, %mul9
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %40 = load i32, i32* %rows_left, align 4, !tbaa !26
  %sub12 = sub nsw i32 %40, 1
  %idxprom13 = sext i32 %sub12 to i64
  %41 = load i8**, i8*** %xbuf, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8*, i8** %41, i64 %idxprom13
  %42 = load i8*, i8** %arrayidx14, align 8, !tbaa !1
  %43 = load i32, i32* %rows_left, align 4, !tbaa !26
  %44 = load i32, i32* %i, align 4, !tbaa !26
  %add15 = add nsw i32 %43, %44
  %idxprom16 = sext i32 %add15 to i64
  %45 = load i8**, i8*** %xbuf, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8*, i8** %45, i64 %idxprom16
  store i8* %42, i8** %arrayidx17, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %46 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %47 = load i32, i32* %ci, align 4, !tbaa !26
  %inc19 = add nsw i32 %47, 1
  store i32 %inc19, i32* %ci, align 4, !tbaa !26
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %48, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  %49 = bitcast i8*** %xbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %rows_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %iMCUheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_wraparound_pointers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %mainp = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %xbuf0 = alloca i8**, align 8
  %xbuf1 = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 84
  %2 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_d_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 66
  %9 = load i32, i32* %min_DCT_v_scaled_size, align 4, !tbaa !25
  store i32 %9, i32* %M, align 4, !tbaa !26
  %10 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8*** %xbuf0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i8*** %xbuf1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32 0, i32* %ci, align 4, !tbaa !26
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 44
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %14, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %15 = load i32, i32* %ci, align 4, !tbaa !26
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 9
  %17 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 3
  %19 = load i32, i32* %v_samp_factor, align 4, !tbaa !29
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i32 0, i32 10
  %21 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !31
  %mul = mul nsw i32 %19, %21
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 66
  %23 = load i32, i32* %min_DCT_v_scaled_size1, align 4, !tbaa !25
  %div = sdiv i32 %mul, %23
  store i32 %div, i32* %rgroup, align 4, !tbaa !26
  %24 = load i32, i32* %ci, align 4, !tbaa !26
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %25, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 0
  %26 = load i8***, i8**** %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8**, i8*** %26, i64 %idxprom
  %27 = load i8**, i8*** %arrayidx2, align 8, !tbaa !1
  store i8** %27, i8*** %xbuf0, align 8, !tbaa !1
  %28 = load i32, i32* %ci, align 4, !tbaa !26
  %idxprom3 = sext i32 %28 to i64
  %29 = load %struct.my_main_controller*, %struct.my_main_controller** %mainp, align 8, !tbaa !1
  %xbuffer4 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %29, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer4, i32 0, i64 1
  %30 = load i8***, i8**** %arrayidx5, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8**, i8*** %30, i64 %idxprom3
  %31 = load i8**, i8*** %arrayidx6, align 8, !tbaa !1
  store i8** %31, i8*** %xbuf1, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %32 = load i32, i32* %i, align 4, !tbaa !26
  %33 = load i32, i32* %rgroup, align 4, !tbaa !26
  %cmp8 = icmp slt i32 %32, %33
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %34 = load i32, i32* %rgroup, align 4, !tbaa !26
  %35 = load i32, i32* %M, align 4, !tbaa !26
  %add = add nsw i32 %35, 1
  %mul10 = mul nsw i32 %34, %add
  %36 = load i32, i32* %i, align 4, !tbaa !26
  %add11 = add nsw i32 %mul10, %36
  %idxprom12 = sext i32 %add11 to i64
  %37 = load i8**, i8*** %xbuf0, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8*, i8** %37, i64 %idxprom12
  %38 = load i8*, i8** %arrayidx13, align 8, !tbaa !1
  %39 = load i32, i32* %i, align 4, !tbaa !26
  %40 = load i32, i32* %rgroup, align 4, !tbaa !26
  %sub = sub nsw i32 %39, %40
  %idxprom14 = sext i32 %sub to i64
  %41 = load i8**, i8*** %xbuf0, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8*, i8** %41, i64 %idxprom14
  store i8* %38, i8** %arrayidx15, align 8, !tbaa !1
  %42 = load i32, i32* %rgroup, align 4, !tbaa !26
  %43 = load i32, i32* %M, align 4, !tbaa !26
  %add16 = add nsw i32 %43, 1
  %mul17 = mul nsw i32 %42, %add16
  %44 = load i32, i32* %i, align 4, !tbaa !26
  %add18 = add nsw i32 %mul17, %44
  %idxprom19 = sext i32 %add18 to i64
  %45 = load i8**, i8*** %xbuf1, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8*, i8** %45, i64 %idxprom19
  %46 = load i8*, i8** %arrayidx20, align 8, !tbaa !1
  %47 = load i32, i32* %i, align 4, !tbaa !26
  %48 = load i32, i32* %rgroup, align 4, !tbaa !26
  %sub21 = sub nsw i32 %47, %48
  %idxprom22 = sext i32 %sub21 to i64
  %49 = load i8**, i8*** %xbuf1, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8*, i8** %49, i64 %idxprom22
  store i8* %46, i8** %arrayidx23, align 8, !tbaa !1
  %50 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom24 = sext i32 %50 to i64
  %51 = load i8**, i8*** %xbuf0, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8*, i8** %51, i64 %idxprom24
  %52 = load i8*, i8** %arrayidx25, align 8, !tbaa !1
  %53 = load i32, i32* %rgroup, align 4, !tbaa !26
  %54 = load i32, i32* %M, align 4, !tbaa !26
  %add26 = add nsw i32 %54, 2
  %mul27 = mul nsw i32 %53, %add26
  %55 = load i32, i32* %i, align 4, !tbaa !26
  %add28 = add nsw i32 %mul27, %55
  %idxprom29 = sext i32 %add28 to i64
  %56 = load i8**, i8*** %xbuf0, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8*, i8** %56, i64 %idxprom29
  store i8* %52, i8** %arrayidx30, align 8, !tbaa !1
  %57 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom31 = sext i32 %57 to i64
  %58 = load i8**, i8*** %xbuf1, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8*, i8** %58, i64 %idxprom31
  %59 = load i8*, i8** %arrayidx32, align 8, !tbaa !1
  %60 = load i32, i32* %rgroup, align 4, !tbaa !26
  %61 = load i32, i32* %M, align 4, !tbaa !26
  %add33 = add nsw i32 %61, 2
  %mul34 = mul nsw i32 %60, %add33
  %62 = load i32, i32* %i, align 4, !tbaa !26
  %add35 = add nsw i32 %mul34, %62
  %idxprom36 = sext i32 %add35 to i64
  %63 = load i8**, i8*** %xbuf1, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8*, i8** %63, i64 %idxprom36
  store i8* %59, i8** %arrayidx37, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %64 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %65 = load i32, i32* %ci, align 4, !tbaa !26
  %inc39 = add nsw i32 %65, 1
  store i32 %inc39, i32* %ci, align 4, !tbaa !26
  %66 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %67 = bitcast i8*** %xbuf1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i8*** %xbuf0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i32* %M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast %struct.my_main_controller** %mainp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  ret void
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
!7 = !{!"jpeg_decompress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !8, i64 36, !2, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !3, i64 60, !3, i64 64, !8, i64 68, !8, i64 72, !9, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !8, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !2, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !2, i64 192, !3, i64 200, !3, i64 232, !3, i64 264, !8, i64 296, !2, i64 304, !3, i64 312, !3, i64 316, !3, i64 320, !3, i64 324, !3, i64 340, !3, i64 356, !8, i64 372, !3, i64 376, !3, i64 380, !3, i64 381, !3, i64 382, !10, i64 384, !10, i64 386, !3, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !2, i64 408, !8, i64 416, !8, i64 420, !8, i64 424, !8, i64 428, !8, i64 432, !2, i64 440, !8, i64 448, !3, i64 456, !8, i64 488, !8, i64 492, !8, i64 496, !3, i64 500, !8, i64 756, !8, i64 760, !8, i64 764, !8, i64 768, !8, i64 772, !2, i64 776, !8, i64 784, !8, i64 788, !2, i64 792, !2, i64 800, !2, i64 808, !2, i64 816, !2, i64 824, !2, i64 832, !2, i64 840, !2, i64 848, !2, i64 856, !2, i64 864, !2, i64 872}
!8 = !{!"int", !3, i64 0}
!9 = !{!"double", !3, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !2, i64 0}
!12 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !13, i64 88, !13, i64 96}
!13 = !{!"long", !3, i64 0}
!14 = !{!7, !2, i64 800}
!15 = !{!16, !2, i64 0}
!16 = !{!"", !17, i64 0, !3, i64 16, !3, i64 96, !8, i64 100, !3, i64 104, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132}
!17 = !{!"jpeg_d_main_controller", !2, i64 0, !2, i64 8}
!18 = !{!7, !2, i64 0}
!19 = !{!20, !8, i64 40}
!20 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !3, i64 44, !8, i64 124, !13, i64 128, !2, i64 136, !8, i64 144, !2, i64 152, !8, i64 160, !8, i64 164}
!21 = !{!20, !2, i64 0}
!22 = !{!7, !2, i64 856}
!23 = !{!24, !3, i64 16}
!24 = !{!"jpeg_upsampler", !2, i64 0, !2, i64 8, !3, i64 16}
!25 = !{!7, !8, i64 428}
!26 = !{!8, !8, i64 0}
!27 = !{!7, !2, i64 304}
!28 = !{!7, !8, i64 56}
!29 = !{!30, !8, i64 12}
!30 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !3, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !2, i64 80, !2, i64 88}
!31 = !{!30, !8, i64 40}
!32 = !{!12, !2, i64 16}
!33 = !{!30, !8, i64 28}
!34 = !{!30, !8, i64 36}
!35 = !{!16, !2, i64 8}
!36 = !{!16, !8, i64 120}
!37 = !{!16, !8, i64 124}
!38 = !{!16, !8, i64 132}
!39 = !{!16, !3, i64 96}
!40 = !{!16, !8, i64 100}
!41 = !{!7, !2, i64 808}
!42 = !{!43, !2, i64 24}
!43 = !{!"jpeg_d_coef_controller", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!44 = !{!7, !2, i64 816}
!45 = !{!46, !2, i64 8}
!46 = !{!"jpeg_d_post_controller", !2, i64 0, !2, i64 8}
!47 = !{!16, !8, i64 128}
!48 = !{!7, !8, i64 432}
!49 = !{!30, !8, i64 48}
