; ModuleID = './MultiSource.Benchmarks.mediabench/3.jpeg.jpeg-6a.jccoefct.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_color_converter = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { {}*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, [10 x [64 x i16]*], [10 x %struct.jvirt_barray_control*] }

; Function Attrs: nounwind uwtable
define void @jinit_c_coef_controller(%struct.jpeg_compress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %coef = alloca %struct.my_coef_controller*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %buffer = alloca [64 x i16]*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 192)
  %5 = bitcast i8* %call to %struct.my_coef_controller*
  store %struct.my_coef_controller* %5, %struct.my_coef_controller** %coef, align 8
  %6 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %7 = bitcast %struct.my_coef_controller* %6 to %struct.jpeg_c_coef_controller*
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 54
  store %struct.jpeg_c_coef_controller* %7, %struct.jpeg_c_coef_controller** %coef1, align 8
  %9 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_coef, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8
  %10 = load i32, i32* %need_full_buffer.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %ci, align 4
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 14
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %12, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, i32* %ci, align 4
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 12
  %15 = load i32, i32* %num_components, align 4
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 1
  %17 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem2, align 8
  %request_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %17, i32 0, i32 5
  %18 = load %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_barray, align 8
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %20 = bitcast %struct.jpeg_compress_struct* %19 to %struct.jpeg_common_struct*
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 7
  %22 = load i32, i32* %width_in_blocks, align 4
  %conv = zext i32 %22 to i64
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i32 0, i32 2
  %24 = load i32, i32* %h_samp_factor, align 4
  %conv3 = sext i32 %24 to i64
  %call4 = call i64 @jround_up(i64 %conv, i64 %conv3)
  %conv5 = trunc i64 %call4 to i32
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i32 0, i32 8
  %26 = load i32, i32* %height_in_blocks, align 4
  %conv6 = zext i32 %26 to i64
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i32 0, i32 3
  %28 = load i32, i32* %v_samp_factor, align 4
  %conv7 = sext i32 %28 to i64
  %call8 = call i64 @jround_up(i64 %conv6, i64 %conv7)
  %conv9 = trunc i64 %call8 to i32
  %29 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %29, i32 0, i32 3
  %30 = load i32, i32* %v_samp_factor10, align 4
  %call11 = call %struct.jvirt_barray_control* %18(%struct.jpeg_common_struct* %20, i32 1, i32 0, i32 %conv5, i32 %conv9, i32 %30)
  %31 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %32, i32 0, i32 6
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom
  store %struct.jvirt_barray_control* %call11, %struct.jvirt_barray_control** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %ci, align 4
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 1
  %36 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem12, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %36, i32 0, i32 1
  %37 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %39 = bitcast %struct.jpeg_compress_struct* %38 to %struct.jpeg_common_struct*
  %call13 = call i8* %37(%struct.jpeg_common_struct* %39, i32 1, i64 1280)
  %40 = bitcast i8* %call13 to [64 x i16]*
  store [64 x i16]* %40, [64 x i16]** %buffer, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.20, %if.else
  %41 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %41, 10
  br i1 %cmp15, label %for.body.17, label %for.end.22

for.body.17:                                      ; preds = %for.cond.14
  %42 = load [64 x i16]*, [64 x i16]** %buffer, align 8
  %43 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %43 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %42, i64 %idx.ext
  %44 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %44 to i64
  %45 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %45, i32 0, i32 5
  %arrayidx19 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom18
  store [64 x i16]* %add.ptr, [64 x i16]** %arrayidx19, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.17
  %46 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %46, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.14

for.end.22:                                       ; preds = %for.cond.14
  %47 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image23 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %47, i32 0, i32 6
  %arrayidx24 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image23, i32 0, i64 0
  store %struct.jvirt_barray_control* null, %struct.jvirt_barray_control** %arrayidx24, align 8
  br label %if.end

if.end:                                           ; preds = %for.end.22, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_coef(%struct.jpeg_compress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %pass_mode, i32* %pass_mode.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 54
  %1 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_c_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  %3 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %3, i32 0, i32 1
  store i32 0, i32* %iMCU_row_num, align 4
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @start_iMCU_row(%struct.jpeg_compress_struct* %4)
  %5 = load i32, i32* %pass_mode.addr, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.3
    i32 2, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i32 0, i32 6
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 0
  %7 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx, align 8
  %cmp = icmp ne %struct.jvirt_barray_control* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %15 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %15, i32 0, i32 0
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %pub, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, i8***)* @compress_data, i32 (%struct.jpeg_compress_struct*, i8***)** %compress_data, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %16 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image4 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %16, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image4, i32 0, i64 0
  %17 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx5, align 8
  %cmp6 = icmp eq %struct.jvirt_barray_control* %17, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %sw.bb.3
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 4, i32* %msg_code9, align 4
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit11, align 8
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %24 = bitcast %struct.jpeg_compress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %sw.bb.3
  %25 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub13 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %25, i32 0, i32 0
  %compress_data14 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %pub13, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, i8***)* @compress_first_pass, i32 (%struct.jpeg_compress_struct*, i8***)** %compress_data14, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %26 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image16 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %26, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image16, i32 0, i64 0
  %27 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx17, align 8
  %cmp18 = icmp eq %struct.jvirt_barray_control* %27, null
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %sw.bb.15
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8
  %msg_code21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 5
  store i32 4, i32* %msg_code21, align 4
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8
  %error_exit23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 0
  %32 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit23, align 8
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %34 = bitcast %struct.jpeg_compress_struct* %33 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* %34)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %sw.bb.15
  %35 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub25 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %35, i32 0, i32 0
  %compress_data26 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %pub25, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, i8***)* @compress_output, i32 (%struct.jpeg_compress_struct*, i8***)** %compress_data26, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8
  %msg_code28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 5
  store i32 4, i32* %msg_code28, align 4
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err29, align 8
  %error_exit30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 0
  %40 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit30, align 8
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %42 = bitcast %struct.jpeg_compress_struct* %41 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* %42)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.24, %if.end.12, %if.end
  ret void
}

declare i64 @jround_up(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @start_iMCU_row(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 54
  %1 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_c_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 41
  %4 = load i32, i32* %comps_in_scan, align 4
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i32 0, i32 4
  store i32 1, i32* %MCU_rows_per_iMCU_row, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %6 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i32 0, i32 1
  %7 = load i32, i32* %iMCU_row_num, align 4
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 40
  %9 = load i32, i32* %total_iMCU_rows, align 4
  %sub = sub i32 %9, 1
  %cmp2 = icmp ult i32 %7, %sub
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i32 0, i32 3
  %12 = load i32, i32* %v_samp_factor, align 4
  %13 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_rows_per_iMCU_row4 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %13, i32 0, i32 4
  store i32 %12, i32* %MCU_rows_per_iMCU_row4, align 4
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 42
  %arrayidx7 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info6, i32 0, i64 0
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx7, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 18
  %16 = load i32, i32* %last_row_height, align 4
  %17 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_rows_per_iMCU_row8 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %17, i32 0, i32 4
  store i32 %16, i32* %MCU_rows_per_iMCU_row8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %18 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %18, i32 0, i32 2
  store i32 0, i32* %mcu_ctr, align 4
  %19 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %19, i32 0, i32 3
  store i32 0, i32* %MCU_vert_offset, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @compress_data(%struct.jpeg_compress_struct* %cinfo, i8*** %input_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %MCU_col_num = alloca i32, align 4
  %last_MCU_col = alloca i32, align 4
  %last_iMCU_row = alloca i32, align 4
  %blkn = alloca i32, align 4
  %bi = alloca i32, align 4
  %ci = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %blockcnt = alloca i32, align 4
  %ypos = alloca i32, align 4
  %xpos = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 54
  %1 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_c_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 43
  %4 = load i32, i32* %MCUs_per_row, align 4
  %sub = sub i32 %4, 1
  store i32 %sub, i32* %last_MCU_col, align 4
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 40
  %6 = load i32, i32* %total_iMCU_rows, align 4
  %sub2 = sub i32 %6, 1
  store i32 %sub2, i32* %last_iMCU_row, align 4
  %7 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i32 0, i32 3
  %8 = load i32, i32* %MCU_vert_offset, align 4
  store i32 %8, i32* %yoffset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.93, %entry
  %9 = load i32, i32* %yoffset, align 4
  %10 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %10, i32 0, i32 4
  %11 = load i32, i32* %MCU_rows_per_iMCU_row, align 4
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end.95

for.body:                                         ; preds = %for.cond
  %12 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %12, i32 0, i32 2
  %13 = load i32, i32* %mcu_ctr, align 4
  store i32 %13, i32* %MCU_col_num, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.89, %for.body
  %14 = load i32, i32* %MCU_col_num, align 4
  %15 = load i32, i32* %last_MCU_col, align 4
  %cmp4 = icmp ule i32 %14, %15
  br i1 %cmp4, label %for.body.5, label %for.end.91

for.body.5:                                       ; preds = %for.cond.3
  store i32 0, i32* %blkn, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.81, %for.body.5
  %16 = load i32, i32* %ci, align 4
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 41
  %18 = load i32, i32* %comps_in_scan, align 4
  %cmp7 = icmp slt i32 %16, %18
  br i1 %cmp7, label %for.body.8, label %for.end.83

for.body.8:                                       ; preds = %for.cond.6
  %19 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  store %struct.jpeg_component_info* %21, %struct.jpeg_component_info** %compptr, align 8
  %22 = load i32, i32* %MCU_col_num, align 4
  %23 = load i32, i32* %last_MCU_col, align 4
  %cmp9 = icmp ult i32 %22, %23
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.8
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i32 0, i32 13
  %25 = load i32, i32* %MCU_width, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.8
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 17
  %27 = load i32, i32* %last_col_width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %27, %cond.false ]
  store i32 %cond, i32* %blockcnt, align 4
  %28 = load i32, i32* %MCU_col_num, align 4
  %29 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %29, i32 0, i32 16
  %30 = load i32, i32* %MCU_sample_width, align 4
  %mul = mul i32 %28, %30
  store i32 %mul, i32* %xpos, align 4
  %31 = load i32, i32* %yoffset, align 4
  %mul10 = mul nsw i32 %31, 8
  store i32 %mul10, i32* %ypos, align 4
  store i32 0, i32* %yindex, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.78, %cond.end
  %32 = load i32, i32* %yindex, align 4
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 0, i32 14
  %34 = load i32, i32* %MCU_height, align 4
  %cmp12 = icmp slt i32 %32, %34
  br i1 %cmp12, label %for.body.13, label %for.end.80

for.body.13:                                      ; preds = %for.cond.11
  %35 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %35, i32 0, i32 1
  %36 = load i32, i32* %iMCU_row_num, align 4
  %37 = load i32, i32* %last_iMCU_row, align 4
  %cmp14 = icmp ult i32 %36, %37
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.13
  %38 = load i32, i32* %yoffset, align 4
  %39 = load i32, i32* %yindex, align 4
  %add = add nsw i32 %38, %39
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 0, i32 18
  %41 = load i32, i32* %last_row_height, align 4
  %cmp15 = icmp slt i32 %add, %41
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body.13
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 58
  %43 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct, align 8
  %forward_DCT = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %43, i32 0, i32 1
  %44 = load void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %forward_DCT, align 8
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %47 = load i32, i32* %ci, align 4
  %idxprom16 = sext i32 %47 to i64
  %48 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx17 = getelementptr inbounds i8**, i8*** %48, i64 %idxprom16
  %49 = load i8**, i8*** %arrayidx17, align 8
  %50 = load i32, i32* %blkn, align 4
  %idxprom18 = sext i32 %50 to i64
  %51 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %51, i32 0, i32 5
  %arrayidx19 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom18
  %52 = load [64 x i16]*, [64 x i16]** %arrayidx19, align 8
  %53 = load i32, i32* %ypos, align 4
  %54 = load i32, i32* %xpos, align 4
  %55 = load i32, i32* %blockcnt, align 4
  call void %44(%struct.jpeg_compress_struct* %45, %struct.jpeg_component_info* %46, i8** %49, [64 x i16]* %52, i32 %53, i32 %54, i32 %55)
  %56 = load i32, i32* %blockcnt, align 4
  %57 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %57, i32 0, i32 13
  %58 = load i32, i32* %MCU_width20, align 4
  %cmp21 = icmp slt i32 %56, %58
  br i1 %cmp21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then
  %59 = load i32, i32* %blkn, align 4
  %60 = load i32, i32* %blockcnt, align 4
  %add23 = add nsw i32 %59, %60
  %idxprom24 = sext i32 %add23 to i64
  %61 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer25 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %61, i32 0, i32 5
  %arrayidx26 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer25, i32 0, i64 %idxprom24
  %62 = load [64 x i16]*, [64 x i16]** %arrayidx26, align 8
  %63 = bitcast [64 x i16]* %62 to i8*
  %64 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width27 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %64, i32 0, i32 13
  %65 = load i32, i32* %MCU_width27, align 4
  %66 = load i32, i32* %blockcnt, align 4
  %sub28 = sub nsw i32 %65, %66
  %conv = sext i32 %sub28 to i64
  %mul29 = mul i64 %conv, 128
  call void @jzero_far(i8* %63, i64 %mul29)
  %67 = load i32, i32* %blockcnt, align 4
  store i32 %67, i32* %bi, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %if.then.22
  %68 = load i32, i32* %bi, align 4
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width31 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %69, i32 0, i32 13
  %70 = load i32, i32* %MCU_width31, align 4
  %cmp32 = icmp slt i32 %68, %70
  br i1 %cmp32, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.30
  %71 = load i32, i32* %blkn, align 4
  %72 = load i32, i32* %bi, align 4
  %add35 = add nsw i32 %71, %72
  %sub36 = sub nsw i32 %add35, 1
  %idxprom37 = sext i32 %sub36 to i64
  %73 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer38 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %73, i32 0, i32 5
  %arrayidx39 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer38, i32 0, i64 %idxprom37
  %74 = load [64 x i16]*, [64 x i16]** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds [64 x i16], [64 x i16]* %74, i64 0
  %arrayidx41 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx40, i32 0, i64 0
  %75 = load i16, i16* %arrayidx41, align 2
  %76 = load i32, i32* %blkn, align 4
  %77 = load i32, i32* %bi, align 4
  %add42 = add nsw i32 %76, %77
  %idxprom43 = sext i32 %add42 to i64
  %78 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer44 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %78, i32 0, i32 5
  %arrayidx45 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer44, i32 0, i64 %idxprom43
  %79 = load [64 x i16]*, [64 x i16]** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds [64 x i16], [64 x i16]* %79, i64 0
  %arrayidx47 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx46, i32 0, i64 0
  store i16 %75, i16* %arrayidx47, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.34
  %80 = load i32, i32* %bi, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %bi, align 4
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end.74

if.else:                                          ; preds = %lor.lhs.false
  %81 = load i32, i32* %blkn, align 4
  %idxprom48 = sext i32 %81 to i64
  %82 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer49 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %82, i32 0, i32 5
  %arrayidx50 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer49, i32 0, i64 %idxprom48
  %83 = load [64 x i16]*, [64 x i16]** %arrayidx50, align 8
  %84 = bitcast [64 x i16]* %83 to i8*
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width51 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %85, i32 0, i32 13
  %86 = load i32, i32* %MCU_width51, align 4
  %conv52 = sext i32 %86 to i64
  %mul53 = mul i64 %conv52, 128
  call void @jzero_far(i8* %84, i64 %mul53)
  store i32 0, i32* %bi, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.71, %if.else
  %87 = load i32, i32* %bi, align 4
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i32 0, i32 13
  %89 = load i32, i32* %MCU_width55, align 4
  %cmp56 = icmp slt i32 %87, %89
  br i1 %cmp56, label %for.body.58, label %for.end.73

for.body.58:                                      ; preds = %for.cond.54
  %90 = load i32, i32* %blkn, align 4
  %sub59 = sub nsw i32 %90, 1
  %idxprom60 = sext i32 %sub59 to i64
  %91 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer61 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %91, i32 0, i32 5
  %arrayidx62 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer61, i32 0, i64 %idxprom60
  %92 = load [64 x i16]*, [64 x i16]** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds [64 x i16], [64 x i16]* %92, i64 0
  %arrayidx64 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx63, i32 0, i64 0
  %93 = load i16, i16* %arrayidx64, align 2
  %94 = load i32, i32* %blkn, align 4
  %95 = load i32, i32* %bi, align 4
  %add65 = add nsw i32 %94, %95
  %idxprom66 = sext i32 %add65 to i64
  %96 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer67 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %96, i32 0, i32 5
  %arrayidx68 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer67, i32 0, i64 %idxprom66
  %97 = load [64 x i16]*, [64 x i16]** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds [64 x i16], [64 x i16]* %97, i64 0
  %arrayidx70 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx69, i32 0, i64 0
  store i16 %93, i16* %arrayidx70, align 2
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.58
  %98 = load i32, i32* %bi, align 4
  %inc72 = add nsw i32 %98, 1
  store i32 %inc72, i32* %bi, align 4
  br label %for.cond.54

for.end.73:                                       ; preds = %for.cond.54
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.73, %if.end
  %99 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width75 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %99, i32 0, i32 13
  %100 = load i32, i32* %MCU_width75, align 4
  %101 = load i32, i32* %blkn, align 4
  %add76 = add nsw i32 %101, %100
  store i32 %add76, i32* %blkn, align 4
  %102 = load i32, i32* %ypos, align 4
  %add77 = add i32 %102, 8
  store i32 %add77, i32* %ypos, align 4
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.74
  %103 = load i32, i32* %yindex, align 4
  %inc79 = add nsw i32 %103, 1
  store i32 %inc79, i32* %yindex, align 4
  br label %for.cond.11

for.end.80:                                       ; preds = %for.cond.11
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end.80
  %104 = load i32, i32* %ci, align 4
  %inc82 = add nsw i32 %104, 1
  store i32 %inc82, i32* %ci, align 4
  br label %for.cond.6

for.end.83:                                       ; preds = %for.cond.6
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %105, i32 0, i32 59
  %106 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %106, i32 0, i32 1
  %107 = load i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu, align 8
  %108 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %109 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer84 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %109, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer84, i32 0, i32 0
  %call = call i32 %107(%struct.jpeg_compress_struct* %108, [64 x i16]** %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.88, label %if.then.85

if.then.85:                                       ; preds = %for.end.83
  %110 = load i32, i32* %yoffset, align 4
  %111 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_vert_offset86 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %111, i32 0, i32 3
  store i32 %110, i32* %MCU_vert_offset86, align 4
  %112 = load i32, i32* %MCU_col_num, align 4
  %113 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %mcu_ctr87 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %113, i32 0, i32 2
  store i32 %112, i32* %mcu_ctr87, align 4
  store i32 0, i32* %retval
  br label %return

if.end.88:                                        ; preds = %for.end.83
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %114 = load i32, i32* %MCU_col_num, align 4
  %inc90 = add i32 %114, 1
  store i32 %inc90, i32* %MCU_col_num, align 4
  br label %for.cond.3

for.end.91:                                       ; preds = %for.cond.3
  %115 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %mcu_ctr92 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %115, i32 0, i32 2
  store i32 0, i32* %mcu_ctr92, align 4
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end.91
  %116 = load i32, i32* %yoffset, align 4
  %inc94 = add nsw i32 %116, 1
  store i32 %inc94, i32* %yoffset, align 4
  br label %for.cond

for.end.95:                                       ; preds = %for.cond
  %117 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %iMCU_row_num96 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %117, i32 0, i32 1
  %118 = load i32, i32* %iMCU_row_num96, align 4
  %inc97 = add i32 %118, 1
  store i32 %inc97, i32* %iMCU_row_num96, align 4
  %119 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @start_iMCU_row(%struct.jpeg_compress_struct* %119)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.95, %if.then.85
  %120 = load i32, i32* %retval
  ret i32 %120
}

; Function Attrs: nounwind uwtable
define internal i32 @compress_first_pass(%struct.jpeg_compress_struct* %cinfo, i8*** %input_buf) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %last_iMCU_row = alloca i32, align 4
  %blocks_across = alloca i32, align 4
  %MCUs_across = alloca i32, align 4
  %MCUindex = alloca i32, align 4
  %bi = alloca i32, align 4
  %ci = alloca i32, align 4
  %h_samp_factor = alloca i32, align 4
  %block_row = alloca i32, align 4
  %block_rows = alloca i32, align 4
  %ndummy = alloca i32, align 4
  %lastDC = alloca i16, align 2
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %buffer = alloca [64 x i16]**, align 8
  %thisblockrow = alloca [64 x i16]*, align 8
  %lastblockrow = alloca [64 x i16]*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 54
  %1 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_c_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 40
  %4 = load i32, i32* %total_iMCU_rows, align 4
  %sub = sub i32 %4, 1
  store i32 %sub, i32* %last_iMCU_row, align 4
  store i32 0, i32* %ci, align 4
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 14
  %6 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %6, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %entry
  %7 = load i32, i32* %ci, align 4
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 12
  %9 = load i32, i32* %num_components, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.88

for.body:                                         ; preds = %for.cond
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 1
  %11 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %11, i32 0, i32 8
  %12 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  %15 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %16, i32 0, i32 6
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom
  %17 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx, align 8
  %18 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %18, i32 0, i32 1
  %19 = load i32, i32* %iMCU_row_num, align 4
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i32 0, i32 3
  %21 = load i32, i32* %v_samp_factor, align 4
  %mul = mul i32 %19, %21
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor2 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i32 0, i32 3
  %23 = load i32, i32* %v_samp_factor2, align 4
  %call = call [64 x i16]** %12(%struct.jpeg_common_struct* %14, %struct.jvirt_barray_control* %17, i32 %mul, i32 %23, i32 1)
  store [64 x i16]** %call, [64 x i16]*** %buffer, align 8
  %24 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %iMCU_row_num3 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %24, i32 0, i32 1
  %25 = load i32, i32* %iMCU_row_num3, align 4
  %26 = load i32, i32* %last_iMCU_row, align 4
  %cmp4 = icmp ult i32 %25, %26
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i32 0, i32 3
  %28 = load i32, i32* %v_samp_factor5, align 4
  store i32 %28, i32* %block_rows, align 4
  br label %if.end.10

if.else:                                          ; preds = %for.body
  %29 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %29, i32 0, i32 8
  %30 = load i32, i32* %height_in_blocks, align 4
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor6 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %31, i32 0, i32 3
  %32 = load i32, i32* %v_samp_factor6, align 4
  %rem = urem i32 %30, %32
  store i32 %rem, i32* %block_rows, align 4
  %33 = load i32, i32* %block_rows, align 4
  %cmp7 = icmp eq i32 %33, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor9 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 0, i32 3
  %35 = load i32, i32* %v_samp_factor9, align 4
  store i32 %35, i32* %block_rows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %36, i32 0, i32 7
  %37 = load i32, i32* %width_in_blocks, align 4
  store i32 %37, i32* %blocks_across, align 4
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor11 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 2
  %39 = load i32, i32* %h_samp_factor11, align 4
  store i32 %39, i32* %h_samp_factor, align 4
  %40 = load i32, i32* %blocks_across, align 4
  %41 = load i32, i32* %h_samp_factor, align 4
  %rem12 = urem i32 %40, %41
  store i32 %rem12, i32* %ndummy, align 4
  %42 = load i32, i32* %ndummy, align 4
  %cmp13 = icmp sgt i32 %42, 0
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %43 = load i32, i32* %h_samp_factor, align 4
  %44 = load i32, i32* %ndummy, align 4
  %sub15 = sub nsw i32 %43, %44
  store i32 %sub15, i32* %ndummy, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  store i32 0, i32* %block_row, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.38, %if.end.16
  %45 = load i32, i32* %block_row, align 4
  %46 = load i32, i32* %block_rows, align 4
  %cmp18 = icmp slt i32 %45, %46
  br i1 %cmp18, label %for.body.19, label %for.end.40

for.body.19:                                      ; preds = %for.cond.17
  %47 = load i32, i32* %block_row, align 4
  %idxprom20 = sext i32 %47 to i64
  %48 = load [64 x i16]**, [64 x i16]*** %buffer, align 8
  %arrayidx21 = getelementptr inbounds [64 x i16]*, [64 x i16]** %48, i64 %idxprom20
  %49 = load [64 x i16]*, [64 x i16]** %arrayidx21, align 8
  store [64 x i16]* %49, [64 x i16]** %thisblockrow, align 8
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 58
  %51 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct, align 8
  %forward_DCT = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %51, i32 0, i32 1
  %52 = load void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %forward_DCT, align 8
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %55 = load i32, i32* %ci, align 4
  %idxprom22 = sext i32 %55 to i64
  %56 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx23 = getelementptr inbounds i8**, i8*** %56, i64 %idxprom22
  %57 = load i8**, i8*** %arrayidx23, align 8
  %58 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8
  %59 = load i32, i32* %block_row, align 4
  %mul24 = mul nsw i32 %59, 8
  %60 = load i32, i32* %blocks_across, align 4
  call void %52(%struct.jpeg_compress_struct* %53, %struct.jpeg_component_info* %54, i8** %57, [64 x i16]* %58, i32 %mul24, i32 0, i32 %60)
  %61 = load i32, i32* %ndummy, align 4
  %cmp25 = icmp sgt i32 %61, 0
  br i1 %cmp25, label %if.then.26, label %if.end.37

if.then.26:                                       ; preds = %for.body.19
  %62 = load i32, i32* %blocks_across, align 4
  %63 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8
  %idx.ext = zext i32 %62 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %63, i64 %idx.ext
  store [64 x i16]* %add.ptr, [64 x i16]** %thisblockrow, align 8
  %64 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8
  %65 = bitcast [64 x i16]* %64 to i8*
  %66 = load i32, i32* %ndummy, align 4
  %conv = sext i32 %66 to i64
  %mul27 = mul i64 %conv, 128
  call void @jzero_far(i8* %65, i64 %mul27)
  %67 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8
  %arrayidx28 = getelementptr inbounds [64 x i16], [64 x i16]* %67, i64 -1
  %arrayidx29 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx28, i32 0, i64 0
  %68 = load i16, i16* %arrayidx29, align 2
  store i16 %68, i16* %lastDC, align 2
  store i32 0, i32* %bi, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %if.then.26
  %69 = load i32, i32* %bi, align 4
  %70 = load i32, i32* %ndummy, align 4
  %cmp31 = icmp slt i32 %69, %70
  br i1 %cmp31, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.30
  %71 = load i16, i16* %lastDC, align 2
  %72 = load i32, i32* %bi, align 4
  %idxprom34 = sext i32 %72 to i64
  %73 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8
  %arrayidx35 = getelementptr inbounds [64 x i16], [64 x i16]* %73, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx35, i32 0, i64 0
  store i16 %71, i16* %arrayidx36, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.33
  %74 = load i32, i32* %bi, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %bi, align 4
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  br label %if.end.37

if.end.37:                                        ; preds = %for.end, %for.body.19
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %75 = load i32, i32* %block_row, align 4
  %inc39 = add nsw i32 %75, 1
  store i32 %inc39, i32* %block_row, align 4
  br label %for.cond.17

for.end.40:                                       ; preds = %for.cond.17
  %76 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %iMCU_row_num41 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %76, i32 0, i32 1
  %77 = load i32, i32* %iMCU_row_num41, align 4
  %78 = load i32, i32* %last_iMCU_row, align 4
  %cmp42 = icmp eq i32 %77, %78
  br i1 %cmp42, label %if.then.44, label %if.end.85

if.then.44:                                       ; preds = %for.end.40
  %79 = load i32, i32* %ndummy, align 4
  %80 = load i32, i32* %blocks_across, align 4
  %add = add i32 %80, %79
  store i32 %add, i32* %blocks_across, align 4
  %81 = load i32, i32* %blocks_across, align 4
  %82 = load i32, i32* %h_samp_factor, align 4
  %div = udiv i32 %81, %82
  store i32 %div, i32* %MCUs_across, align 4
  %83 = load i32, i32* %block_rows, align 4
  store i32 %83, i32* %block_row, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.82, %if.then.44
  %84 = load i32, i32* %block_row, align 4
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor46 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %85, i32 0, i32 3
  %86 = load i32, i32* %v_samp_factor46, align 4
  %cmp47 = icmp slt i32 %84, %86
  br i1 %cmp47, label %for.body.49, label %for.end.84

for.body.49:                                      ; preds = %for.cond.45
  %87 = load i32, i32* %block_row, align 4
  %idxprom50 = sext i32 %87 to i64
  %88 = load [64 x i16]**, [64 x i16]*** %buffer, align 8
  %arrayidx51 = getelementptr inbounds [64 x i16]*, [64 x i16]** %88, i64 %idxprom50
  %89 = load [64 x i16]*, [64 x i16]** %arrayidx51, align 8
  store [64 x i16]* %89, [64 x i16]** %thisblockrow, align 8
  %90 = load i32, i32* %block_row, align 4
  %sub52 = sub nsw i32 %90, 1
  %idxprom53 = sext i32 %sub52 to i64
  %91 = load [64 x i16]**, [64 x i16]*** %buffer, align 8
  %arrayidx54 = getelementptr inbounds [64 x i16]*, [64 x i16]** %91, i64 %idxprom53
  %92 = load [64 x i16]*, [64 x i16]** %arrayidx54, align 8
  store [64 x i16]* %92, [64 x i16]** %lastblockrow, align 8
  %93 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8
  %94 = bitcast [64 x i16]* %93 to i8*
  %95 = load i32, i32* %blocks_across, align 4
  %conv55 = zext i32 %95 to i64
  %mul56 = mul i64 %conv55, 128
  call void @jzero_far(i8* %94, i64 %mul56)
  store i32 0, i32* %MCUindex, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.79, %for.body.49
  %96 = load i32, i32* %MCUindex, align 4
  %97 = load i32, i32* %MCUs_across, align 4
  %cmp58 = icmp ult i32 %96, %97
  br i1 %cmp58, label %for.body.60, label %for.end.81

for.body.60:                                      ; preds = %for.cond.57
  %98 = load i32, i32* %h_samp_factor, align 4
  %sub61 = sub nsw i32 %98, 1
  %idxprom62 = sext i32 %sub61 to i64
  %99 = load [64 x i16]*, [64 x i16]** %lastblockrow, align 8
  %arrayidx63 = getelementptr inbounds [64 x i16], [64 x i16]* %99, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx63, i32 0, i64 0
  %100 = load i16, i16* %arrayidx64, align 2
  store i16 %100, i16* %lastDC, align 2
  store i32 0, i32* %bi, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.72, %for.body.60
  %101 = load i32, i32* %bi, align 4
  %102 = load i32, i32* %h_samp_factor, align 4
  %cmp66 = icmp slt i32 %101, %102
  br i1 %cmp66, label %for.body.68, label %for.end.74

for.body.68:                                      ; preds = %for.cond.65
  %103 = load i16, i16* %lastDC, align 2
  %104 = load i32, i32* %bi, align 4
  %idxprom69 = sext i32 %104 to i64
  %105 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8
  %arrayidx70 = getelementptr inbounds [64 x i16], [64 x i16]* %105, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx70, i32 0, i64 0
  store i16 %103, i16* %arrayidx71, align 2
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.68
  %106 = load i32, i32* %bi, align 4
  %inc73 = add nsw i32 %106, 1
  store i32 %inc73, i32* %bi, align 4
  br label %for.cond.65

for.end.74:                                       ; preds = %for.cond.65
  %107 = load i32, i32* %h_samp_factor, align 4
  %108 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8
  %idx.ext75 = sext i32 %107 to i64
  %add.ptr76 = getelementptr inbounds [64 x i16], [64 x i16]* %108, i64 %idx.ext75
  store [64 x i16]* %add.ptr76, [64 x i16]** %thisblockrow, align 8
  %109 = load i32, i32* %h_samp_factor, align 4
  %110 = load [64 x i16]*, [64 x i16]** %lastblockrow, align 8
  %idx.ext77 = sext i32 %109 to i64
  %add.ptr78 = getelementptr inbounds [64 x i16], [64 x i16]* %110, i64 %idx.ext77
  store [64 x i16]* %add.ptr78, [64 x i16]** %lastblockrow, align 8
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.74
  %111 = load i32, i32* %MCUindex, align 4
  %inc80 = add i32 %111, 1
  store i32 %inc80, i32* %MCUindex, align 4
  br label %for.cond.57

for.end.81:                                       ; preds = %for.cond.57
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end.81
  %112 = load i32, i32* %block_row, align 4
  %inc83 = add nsw i32 %112, 1
  store i32 %inc83, i32* %block_row, align 4
  br label %for.cond.45

for.end.84:                                       ; preds = %for.cond.45
  br label %if.end.85

if.end.85:                                        ; preds = %for.end.84, %for.end.40
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %113 = load i32, i32* %ci, align 4
  %inc87 = add nsw i32 %113, 1
  store i32 %inc87, i32* %ci, align 4
  %114 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %114, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end.88:                                       ; preds = %for.cond
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %116 = load i8***, i8**** %input_buf.addr, align 8
  %call89 = call i32 @compress_output(%struct.jpeg_compress_struct* %115, i8*** %116)
  ret i32 %call89
}

; Function Attrs: nounwind uwtable
define internal i32 @compress_output(%struct.jpeg_compress_struct* %cinfo, i8*** %input_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %MCU_col_num = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %start_col = alloca i32, align 4
  %buffer = alloca [4 x [64 x i16]**], align 16
  %buffer_ptr = alloca [64 x i16]*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 54
  %1 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_c_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %ci, align 4
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 41
  %5 = load i32, i32* %comps_in_scan, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  store %struct.jpeg_component_info* %8, %struct.jpeg_component_info** %compptr, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 1
  %10 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %10, i32 0, i32 8
  %11 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %13 = bitcast %struct.jpeg_compress_struct* %12 to %struct.jpeg_common_struct*
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i32 0, i32 1
  %15 = load i32, i32* %component_index, align 4
  %idxprom2 = sext i32 %15 to i64
  %16 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %16, i32 0, i32 6
  %arrayidx3 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom2
  %17 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx3, align 8
  %18 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %18, i32 0, i32 1
  %19 = load i32, i32* %iMCU_row_num, align 4
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i32 0, i32 3
  %21 = load i32, i32* %v_samp_factor, align 4
  %mul = mul i32 %19, %21
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor4 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i32 0, i32 3
  %23 = load i32, i32* %v_samp_factor4, align 4
  %call = call [64 x i16]** %11(%struct.jpeg_common_struct* %13, %struct.jvirt_barray_control* %17, i32 %mul, i32 %23, i32 0)
  %24 = load i32, i32* %ci, align 4
  %idxprom5 = sext i32 %24 to i64
  %arrayidx6 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %buffer, i32 0, i64 %idxprom5
  store [64 x i16]** %call, [64 x i16]*** %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %26, i32 0, i32 3
  %27 = load i32, i32* %MCU_vert_offset, align 4
  store i32 %27, i32* %yoffset, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.52, %for.end
  %28 = load i32, i32* %yoffset, align 4
  %29 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %29, i32 0, i32 4
  %30 = load i32, i32* %MCU_rows_per_iMCU_row, align 4
  %cmp8 = icmp slt i32 %28, %30
  br i1 %cmp8, label %for.body.9, label %for.end.54

for.body.9:                                       ; preds = %for.cond.7
  %31 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %31, i32 0, i32 2
  %32 = load i32, i32* %mcu_ctr, align 4
  store i32 %32, i32* %MCU_col_num, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.48, %for.body.9
  %33 = load i32, i32* %MCU_col_num, align 4
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 43
  %35 = load i32, i32* %MCUs_per_row, align 4
  %cmp11 = icmp ult i32 %33, %35
  br i1 %cmp11, label %for.body.12, label %for.end.50

for.body.12:                                      ; preds = %for.cond.10
  store i32 0, i32* %blkn, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.41, %for.body.12
  %36 = load i32, i32* %ci, align 4
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 41
  %38 = load i32, i32* %comps_in_scan14, align 4
  %cmp15 = icmp slt i32 %36, %38
  br i1 %cmp15, label %for.body.16, label %for.end.43

for.body.16:                                      ; preds = %for.cond.13
  %39 = load i32, i32* %ci, align 4
  %idxprom17 = sext i32 %39 to i64
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 42
  %arrayidx19 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info18, i32 0, i64 %idxprom17
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx19, align 8
  store %struct.jpeg_component_info* %41, %struct.jpeg_component_info** %compptr, align 8
  %42 = load i32, i32* %MCU_col_num, align 4
  %43 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %43, i32 0, i32 13
  %44 = load i32, i32* %MCU_width, align 4
  %mul20 = mul i32 %42, %44
  store i32 %mul20, i32* %start_col, align 4
  store i32 0, i32* %yindex, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.38, %for.body.16
  %45 = load i32, i32* %yindex, align 4
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i32 0, i32 14
  %47 = load i32, i32* %MCU_height, align 4
  %cmp22 = icmp slt i32 %45, %47
  br i1 %cmp22, label %for.body.23, label %for.end.40

for.body.23:                                      ; preds = %for.cond.21
  %48 = load i32, i32* %yindex, align 4
  %49 = load i32, i32* %yoffset, align 4
  %add = add nsw i32 %48, %49
  %idxprom24 = sext i32 %add to i64
  %50 = load i32, i32* %ci, align 4
  %idxprom25 = sext i32 %50 to i64
  %arrayidx26 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %buffer, i32 0, i64 %idxprom25
  %51 = load [64 x i16]**, [64 x i16]*** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds [64 x i16]*, [64 x i16]** %51, i64 %idxprom24
  %52 = load [64 x i16]*, [64 x i16]** %arrayidx27, align 8
  %53 = load i32, i32* %start_col, align 4
  %idx.ext = zext i32 %53 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %52, i64 %idx.ext
  store [64 x i16]* %add.ptr, [64 x i16]** %buffer_ptr, align 8
  store i32 0, i32* %xindex, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.35, %for.body.23
  %54 = load i32, i32* %xindex, align 4
  %55 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %55, i32 0, i32 13
  %56 = load i32, i32* %MCU_width29, align 4
  %cmp30 = icmp slt i32 %54, %56
  br i1 %cmp30, label %for.body.31, label %for.end.37

for.body.31:                                      ; preds = %for.cond.28
  %57 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8
  %incdec.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %57, i32 1
  store [64 x i16]* %incdec.ptr, [64 x i16]** %buffer_ptr, align 8
  %58 = load i32, i32* %blkn, align 4
  %inc32 = add nsw i32 %58, 1
  store i32 %inc32, i32* %blkn, align 4
  %idxprom33 = sext i32 %58 to i64
  %59 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %59, i32 0, i32 5
  %arrayidx34 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom33
  store [64 x i16]* %57, [64 x i16]** %arrayidx34, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.31
  %60 = load i32, i32* %xindex, align 4
  %inc36 = add nsw i32 %60, 1
  store i32 %inc36, i32* %xindex, align 4
  br label %for.cond.28

for.end.37:                                       ; preds = %for.cond.28
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %61 = load i32, i32* %yindex, align 4
  %inc39 = add nsw i32 %61, 1
  store i32 %inc39, i32* %yindex, align 4
  br label %for.cond.21

for.end.40:                                       ; preds = %for.cond.21
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end.40
  %62 = load i32, i32* %ci, align 4
  %inc42 = add nsw i32 %62, 1
  store i32 %inc42, i32* %ci, align 4
  br label %for.cond.13

for.end.43:                                       ; preds = %for.cond.13
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 59
  %64 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %64, i32 0, i32 1
  %65 = load i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu, align 8
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %67 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer44 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %67, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer44, i32 0, i32 0
  %call45 = call i32 %65(%struct.jpeg_compress_struct* %66, [64 x i16]** %arraydecay)
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end.43
  %68 = load i32, i32* %yoffset, align 4
  %69 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_vert_offset46 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %69, i32 0, i32 3
  store i32 %68, i32* %MCU_vert_offset46, align 4
  %70 = load i32, i32* %MCU_col_num, align 4
  %71 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %mcu_ctr47 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %71, i32 0, i32 2
  store i32 %70, i32* %mcu_ctr47, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end.43
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end
  %72 = load i32, i32* %MCU_col_num, align 4
  %inc49 = add i32 %72, 1
  store i32 %inc49, i32* %MCU_col_num, align 4
  br label %for.cond.10

for.end.50:                                       ; preds = %for.cond.10
  %73 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %mcu_ctr51 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %73, i32 0, i32 2
  store i32 0, i32* %mcu_ctr51, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.50
  %74 = load i32, i32* %yoffset, align 4
  %inc53 = add nsw i32 %74, 1
  store i32 %inc53, i32* %yoffset, align 4
  br label %for.cond.7

for.end.54:                                       ; preds = %for.cond.7
  %75 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %iMCU_row_num55 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %75, i32 0, i32 1
  %76 = load i32, i32* %iMCU_row_num55, align 4
  %inc56 = add i32 %76, 1
  store i32 %inc56, i32* %iMCU_row_num55, align 4
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @start_iMCU_row(%struct.jpeg_compress_struct* %77)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.54, %if.then
  %78 = load i32, i32* %retval
  ret i32 %78
}

declare void @jzero_far(i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
