; ModuleID = './MultiSource.Benchmarks.mediabench/25.jpeg.jpeg-6a.jdtrans.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jvirt_barray_control = type opaque
%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
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
define %struct.jvirt_barray_control** @jpeg_read_coefficients(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca %struct.jvirt_barray_control**, align 8
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %retcode = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4
  %cmp = icmp eq i32 %1, 202
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @transdecode_master_selection(%struct.jpeg_decompress_struct* %2)
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 4
  store i32 209, i32* %global_state1, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 4
  %5 = load i32, i32* %global_state2, align 4
  %cmp3 = icmp ne i32 %5, 209
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 4
  %9 = load i32, i32* %global_state5, align 4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %9, i32* %arrayidx, align 4
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %for.cond

for.cond:                                         ; preds = %if.end.32, %if.end.8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 2
  %18 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8
  %cmp9 = icmp ne %struct.jpeg_progress_mgr* %18, null
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %for.cond
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 2
  %20 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress11, align 8
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %20, i32 0, i32 0
  %progress_monitor12 = bitcast {}** %progress_monitor to void (%struct.jpeg_common_struct*)**
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %progress_monitor12, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %23 = bitcast %struct.jpeg_decompress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %for.cond
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 77
  %25 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %25, i32 0, i32 0
  %26 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %26(%struct.jpeg_decompress_struct* %27)
  store i32 %call, i32* %retcode, align 4
  %28 = load i32, i32* %retcode, align 4
  %cmp14 = icmp eq i32 %28, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  store %struct.jvirt_barray_control** null, %struct.jvirt_barray_control*** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.13
  %29 = load i32, i32* %retcode, align 4
  %cmp17 = icmp eq i32 %29, 2
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  br label %for.end

if.end.19:                                        ; preds = %if.end.16
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 2
  %31 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress20, align 8
  %cmp21 = icmp ne %struct.jpeg_progress_mgr* %31, null
  br i1 %cmp21, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.end.19
  %32 = load i32, i32* %retcode, align 4
  %cmp22 = icmp eq i32 %32, 3
  br i1 %cmp22, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %33 = load i32, i32* %retcode, align 4
  %cmp23 = icmp eq i32 %33, 1
  br i1 %cmp23, label %if.then.24, label %if.end.32

if.then.24:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 2
  %35 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress25, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %35, i32 0, i32 1
  %36 = load i64, i64* %pass_counter, align 8
  %inc = add nsw i64 %36, 1
  store i64 %inc, i64* %pass_counter, align 8
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 2
  %38 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress26, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %38, i32 0, i32 2
  %39 = load i64, i64* %pass_limit, align 8
  %cmp27 = icmp sge i64 %inc, %39
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.then.24
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 60
  %41 = load i32, i32* %total_iMCU_rows, align 4
  %conv = zext i32 %41 to i64
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 2
  %43 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress29, align 8
  %pass_limit30 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %43, i32 0, i32 2
  %44 = load i64, i64* %pass_limit30, align 8
  %add = add nsw i64 %44, %conv
  store i64 %add, i64* %pass_limit30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.then.24
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %lor.lhs.false, %if.end.19
  br label %for.cond

for.end:                                          ; preds = %if.then.18
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 4
  store i32 210, i32* %global_state33, align 4
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 75
  %47 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef, align 8
  %coef_arrays = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %47, i32 0, i32 4
  %48 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %coef_arrays, align 8
  store %struct.jvirt_barray_control** %48, %struct.jvirt_barray_control*** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.15
  %49 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %retval
  ret %struct.jvirt_barray_control** %49
}

; Function Attrs: nounwind uwtable
define internal void @transdecode_master_selection(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %nscans = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 45
  %1 = load i32, i32* %arith_code, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 1, i32* %msg_code, align 4
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 0
  %6 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %8 = bitcast %struct.jpeg_decompress_struct* %7 to %struct.jpeg_common_struct*
  call void %6(%struct.jpeg_common_struct* %8)
  br label %if.end.5

if.else:                                          ; preds = %entry
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 44
  %10 = load i32, i32* %progressive_mode, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jinit_phuff_decoder(%struct.jpeg_decompress_struct* %11)
  br label %if.end

if.else.4:                                        ; preds = %if.else
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jinit_huff_decoder(%struct.jpeg_decompress_struct* %12)
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jinit_d_coef_controller(%struct.jpeg_decompress_struct* %13, i32 1)
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 1
  %15 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %15, i32 0, i32 6
  %realize_virt_arrays6 = bitcast {}** %realize_virt_arrays to void (%struct.jpeg_common_struct*)**
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %realize_virt_arrays6, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_decompress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 77
  %20 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %start_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %20, i32 0, i32 2
  %21 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_input_pass, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %21(%struct.jpeg_decompress_struct* %22)
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 2
  %24 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8
  %cmp = icmp ne %struct.jpeg_progress_mgr* %24, null
  br i1 %cmp, label %if.then.7, label %if.end.25

if.then.7:                                        ; preds = %if.end.5
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progressive_mode8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 44
  %26 = load i32, i32* %progressive_mode8, align 4
  %tobool9 = icmp ne i32 %26, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.then.7
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 8
  %28 = load i32, i32* %num_components, align 4
  %mul = mul nsw i32 3, %28
  %add = add nsw i32 2, %mul
  store i32 %add, i32* %nscans, align 4
  br label %if.end.18

if.else.11:                                       ; preds = %if.then.7
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 77
  %30 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl12, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %30, i32 0, i32 4
  %31 = load i32, i32* %has_multiple_scans, align 4
  %tobool13 = icmp ne i32 %31, 0
  br i1 %tobool13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.else.11
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 8
  %33 = load i32, i32* %num_components15, align 4
  store i32 %33, i32* %nscans, align 4
  br label %if.end.17

if.else.16:                                       ; preds = %if.else.11
  store i32 1, i32* %nscans, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 2
  %35 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress19, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %35, i32 0, i32 1
  store i64 0, i64* %pass_counter, align 8
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 60
  %37 = load i32, i32* %total_iMCU_rows, align 4
  %conv = zext i32 %37 to i64
  %38 = load i32, i32* %nscans, align 4
  %conv20 = sext i32 %38 to i64
  %mul21 = mul nsw i64 %conv, %conv20
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 2
  %40 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress22, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %40, i32 0, i32 2
  store i64 %mul21, i64* %pass_limit, align 8
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 2
  %42 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress23, align 8
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %42, i32 0, i32 3
  store i32 0, i32* %completed_passes, align 4
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 2
  %44 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress24, align 8
  %total_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %44, i32 0, i32 4
  store i32 1, i32* %total_passes, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.18, %if.end.5
  ret void
}

declare void @jinit_phuff_decoder(%struct.jpeg_decompress_struct*) #1

declare void @jinit_huff_decoder(%struct.jpeg_decompress_struct*) #1

declare void @jinit_d_coef_controller(%struct.jpeg_decompress_struct*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
