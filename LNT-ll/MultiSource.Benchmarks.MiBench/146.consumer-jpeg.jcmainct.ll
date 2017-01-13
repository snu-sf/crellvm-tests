; ModuleID = './MultiSource.Benchmarks.MiBench/146.consumer-jpeg.jcmainct.bc'
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
%struct.my_main_controller = type { %struct.jpeg_c_main_controller, i32, i32, i32, i32, [10 x i8**] }

; Function Attrs: nounwind uwtable
define void @jinit_c_main_controller(%struct.jpeg_compress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %main = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 112)
  %5 = bitcast i8* %call to %struct.my_main_controller*
  store %struct.my_main_controller* %5, %struct.my_main_controller** %main, align 8
  %6 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %7 = bitcast %struct.my_main_controller* %6 to %struct.jpeg_c_main_controller*
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 52
  store %struct.jpeg_c_main_controller* %7, %struct.jpeg_c_main_controller** %main1, align 8
  %9 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %pub = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_main_controller, %struct.jpeg_c_main_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_main, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 23
  %11 = load i32, i32* %raw_data_in, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %12 = load i32, i32* %need_full_buffer.addr, align 4
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %19 = bitcast %struct.jpeg_compress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19)
  br label %if.end.8

if.else:                                          ; preds = %if.end
  store i32 0, i32* %ci, align 4
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 14
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %21, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %22 = load i32, i32* %ci, align 4
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 12
  %24 = load i32, i32* %num_components, align 4
  %cmp = icmp slt i32 %22, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 1
  %26 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem5, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %26, i32 0, i32 2
  %27 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %29 = bitcast %struct.jpeg_compress_struct* %28 to %struct.jpeg_common_struct*
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i32 0, i32 7
  %31 = load i32, i32* %width_in_blocks, align 4
  %mul = mul i32 %31, 8
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 0, i32 3
  %33 = load i32, i32* %v_samp_factor, align 4
  %mul6 = mul nsw i32 %33, 8
  %call7 = call i8** %27(%struct.jpeg_common_struct* %29, i32 1, i32 %mul, i32 %mul6)
  %34 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %35, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i64 %idxprom
  store i8** %call7, i8*** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %ci, align 4
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %for.end, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_main(%struct.jpeg_compress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %main = alloca %struct.my_main_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %pass_mode, i32* %pass_mode.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 52
  %1 = load %struct.jpeg_c_main_controller*, %struct.jpeg_c_main_controller** %main1, align 8
  %2 = bitcast %struct.jpeg_c_main_controller* %1 to %struct.my_main_controller*
  store %struct.my_main_controller* %2, %struct.my_main_controller** %main, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 23
  %4 = load i32, i32* %raw_data_in, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %5 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %cur_iMCU_row = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i32 0, i32 1
  store i32 0, i32* %cur_iMCU_row, align 4
  %6 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %6, i32 0, i32 2
  store i32 0, i32* %rowgroup_ctr, align 4
  %7 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %suspended = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i32 0, i32 3
  store i32 0, i32* %suspended, align 4
  %8 = load i32, i32* %pass_mode.addr, align 4
  %9 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %pass_mode2 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %9, i32 0, i32 4
  store i32 %8, i32* %pass_mode2, align 4
  %10 = load i32, i32* %pass_mode.addr, align 4
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %11 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %pub = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %11, i32 0, i32 0
  %process_data = getelementptr inbounds %struct.jpeg_c_main_controller, %struct.jpeg_c_main_controller* %pub, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* @process_data_simple_main, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)** %process_data, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_simple_main(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i32* %in_row_ctr, i32 %in_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %in_row_ctr.addr = alloca i32*, align 8
  %in_rows_avail.addr = alloca i32, align 4
  %main = alloca %struct.my_main_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8** %input_buf, i8*** %input_buf.addr, align 8
  store i32* %in_row_ctr, i32** %in_row_ctr.addr, align 8
  store i32 %in_rows_avail, i32* %in_rows_avail.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 52
  %1 = load %struct.jpeg_c_main_controller*, %struct.jpeg_c_main_controller** %main1, align 8
  %2 = bitcast %struct.jpeg_c_main_controller* %1 to %struct.my_main_controller*
  store %struct.my_main_controller* %2, %struct.my_main_controller** %main, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %entry
  %3 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %cur_iMCU_row = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %3, i32 0, i32 1
  %4 = load i32, i32* %cur_iMCU_row, align 4
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 40
  %6 = load i32, i32* %total_iMCU_rows, align 4
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i32 0, i32 2
  %8 = load i32, i32* %rowgroup_ctr, align 4
  %cmp2 = icmp ult i32 %8, 8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %prep = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 53
  %10 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep, align 8
  %pre_process_data = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %10, i32 0, i32 1
  %11 = load void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)** %pre_process_data, align 8
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %13 = load i8**, i8*** %input_buf.addr, align 8
  %14 = load i32*, i32** %in_row_ctr.addr, align 8
  %15 = load i32, i32* %in_rows_avail.addr, align 4
  %16 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %16, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i32 0
  %17 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr3 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %17, i32 0, i32 2
  call void %11(%struct.jpeg_compress_struct* %12, i8** %13, i32* %14, i32 %15, i8*** %arraydecay, i32* %rowgroup_ctr3, i32 8)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %18 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr4 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %18, i32 0, i32 2
  %19 = load i32, i32* %rowgroup_ctr4, align 4
  %cmp5 = icmp ne i32 %19, 8
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %while.end

if.end.7:                                         ; preds = %if.end
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 54
  %21 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef, align 8
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %21, i32 0, i32 1
  %22 = load i32 (%struct.jpeg_compress_struct*, i8***)*, i32 (%struct.jpeg_compress_struct*, i8***)** %compress_data, align 8
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %24 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %buffer8 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %24, i32 0, i32 5
  %arraydecay9 = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer8, i32 0, i32 0
  %call = call i32 %22(%struct.jpeg_compress_struct* %23, i8*** %arraydecay9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.15, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %25 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %suspended = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %25, i32 0, i32 3
  %26 = load i32, i32* %suspended, align 4
  %tobool11 = icmp ne i32 %26, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.then.10
  %27 = load i32*, i32** %in_row_ctr.addr, align 8
  %28 = load i32, i32* %27, align 4
  %dec = add i32 %28, -1
  store i32 %dec, i32* %27, align 4
  %29 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %suspended13 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %29, i32 0, i32 3
  store i32 1, i32* %suspended13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.then.10
  br label %while.end

if.end.15:                                        ; preds = %if.end.7
  %30 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %suspended16 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %30, i32 0, i32 3
  %31 = load i32, i32* %suspended16, align 4
  %tobool17 = icmp ne i32 %31, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %32 = load i32*, i32** %in_row_ctr.addr, align 8
  %33 = load i32, i32* %32, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %32, align 4
  %34 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %suspended19 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %34, i32 0, i32 3
  store i32 0, i32* %suspended19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  %35 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr21 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %35, i32 0, i32 2
  store i32 0, i32* %rowgroup_ctr21, align 4
  %36 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %cur_iMCU_row22 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %36, i32 0, i32 1
  %37 = load i32, i32* %cur_iMCU_row22, align 4
  %inc23 = add i32 %37, 1
  store i32 %inc23, i32* %cur_iMCU_row22, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.6, %if.end.14, %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
