; ModuleID = './MultiSource.Benchmarks.MiBench/122.consumer-jpeg.jcprepct.bc'
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
%struct.my_prep_controller = type { %struct.jpeg_c_prep_controller, [10 x i8**], i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define void @jinit_c_prep_controller(%struct.jpeg_compress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %prep = alloca %struct.my_prep_controller*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4
  %0 = load i32, i32* %need_full_buffer.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 0
  %2 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %2, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 0
  %5 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %7 = bitcast %struct.jpeg_compress_struct* %6 to %struct.jpeg_common_struct*
  call void %5(%struct.jpeg_common_struct* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 1
  %9 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %9, i32 0, i32 0
  %10 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %12 = bitcast %struct.jpeg_compress_struct* %11 to %struct.jpeg_common_struct*
  %call = call i8* %10(%struct.jpeg_common_struct* %12, i32 1, i64 112)
  %13 = bitcast i8* %call to %struct.my_prep_controller*
  store %struct.my_prep_controller* %13, %struct.my_prep_controller** %prep, align 8
  %14 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %15 = bitcast %struct.my_prep_controller* %14 to %struct.jpeg_c_prep_controller*
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %prep2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 53
  store %struct.jpeg_c_prep_controller* %15, %struct.jpeg_c_prep_controller** %prep2, align 8
  %17 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %pub = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %17, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_prep, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 57
  %19 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample, align 8
  %need_context_rows = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %19, i32 0, i32 2
  %20 = load i32, i32* %need_context_rows, align 4
  %tobool3 = icmp ne i32 %20, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %21 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %pub5 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %21, i32 0, i32 0
  %pre_process_data = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %pub5, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* @pre_process_context, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)** %pre_process_data, align 8
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @create_context_buffer(%struct.jpeg_compress_struct* %22)
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %23 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %pub6 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %23, i32 0, i32 0
  %pre_process_data7 = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %pub6, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* @pre_process_data, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)** %pre_process_data7, align 8
  store i32 0, i32* %ci, align 4
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 14
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %25, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %26 = load i32, i32* %ci, align 4
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 12
  %28 = load i32, i32* %num_components, align 4
  %cmp = icmp slt i32 %26, %28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 1
  %30 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem8, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %30, i32 0, i32 2
  %31 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %33 = bitcast %struct.jpeg_compress_struct* %32 to %struct.jpeg_common_struct*
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 0, i32 7
  %35 = load i32, i32* %width_in_blocks, align 4
  %conv = zext i32 %35 to i64
  %mul = mul nsw i64 %conv, 8
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 38
  %37 = load i32, i32* %max_h_samp_factor, align 4
  %conv9 = sext i32 %37 to i64
  %mul10 = mul nsw i64 %mul, %conv9
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 2
  %39 = load i32, i32* %h_samp_factor, align 4
  %conv11 = sext i32 %39 to i64
  %div = sdiv i64 %mul10, %conv11
  %conv12 = trunc i64 %div to i32
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 39
  %41 = load i32, i32* %max_v_samp_factor, align 4
  %call13 = call i8** %31(%struct.jpeg_common_struct* %33, i32 1, i32 %conv12, i32 %41)
  %42 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %42 to i64
  %43 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %color_buf = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %43, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i64 %idxprom
  store i8** %call13, i8*** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %ci, align 4
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %45, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %if.then.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_prep(%struct.jpeg_compress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %prep = alloca %struct.my_prep_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %pass_mode, i32* %pass_mode.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 53
  %1 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep1, align 8
  %2 = bitcast %struct.jpeg_c_prep_controller* %1 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %2, %struct.my_prep_controller** %prep, align 8
  %3 = load i32, i32* %pass_mode.addr, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %8 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  call void %8(%struct.jpeg_common_struct* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 7
  %12 = load i32, i32* %image_height, align 4
  %13 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %rows_to_go = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %13, i32 0, i32 2
  store i32 %12, i32* %rows_to_go, align 4
  %14 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %14, i32 0, i32 3
  store i32 0, i32* %next_buf_row, align 4
  %15 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %this_row_group = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %15, i32 0, i32 4
  store i32 0, i32* %this_row_group, align 4
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 39
  %17 = load i32, i32* %max_v_samp_factor, align 4
  %mul = mul nsw i32 2, %17
  %18 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_stop = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %18, i32 0, i32 5
  store i32 %mul, i32* %next_buf_stop, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pre_process_context(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i32* %in_row_ctr, i32 %in_rows_avail, i8*** %output_buf, i32* %out_row_group_ctr, i32 %out_row_groups_avail) #0 {
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
  %buf_height = alloca i32, align 4
  %inrows = alloca i32, align 4
  %row = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8** %input_buf, i8*** %input_buf.addr, align 8
  store i32* %in_row_ctr, i32** %in_row_ctr.addr, align 8
  store i32 %in_rows_avail, i32* %in_rows_avail.addr, align 4
  store i8*** %output_buf, i8**** %output_buf.addr, align 8
  store i32* %out_row_group_ctr, i32** %out_row_group_ctr.addr, align 8
  store i32 %out_row_groups_avail, i32* %out_row_groups_avail.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 53
  %1 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep1, align 8
  %2 = bitcast %struct.jpeg_c_prep_controller* %1 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %2, %struct.my_prep_controller** %prep, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 39
  %4 = load i32, i32* %max_v_samp_factor, align 4
  %mul = mul nsw i32 %4, 3
  store i32 %mul, i32* %buf_height, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.75, %entry
  %5 = load i32*, i32** %out_row_group_ctr.addr, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %out_row_groups_avail.addr, align 4
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32*, i32** %in_row_ctr.addr, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %in_rows_avail.addr, align 4
  %cmp2 = icmp ult i32 %9, %10
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %in_rows_avail.addr, align 4
  %12 = load i32*, i32** %in_row_ctr.addr, align 8
  %13 = load i32, i32* %12, align 4
  %sub = sub i32 %11, %13
  store i32 %sub, i32* %inrows, align 4
  %14 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_stop = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %14, i32 0, i32 5
  %15 = load i32, i32* %next_buf_stop, align 4
  %16 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %16, i32 0, i32 3
  %17 = load i32, i32* %next_buf_row, align 4
  %sub3 = sub nsw i32 %15, %17
  store i32 %sub3, i32* %numrows, align 4
  %18 = load i32, i32* %numrows, align 4
  %19 = load i32, i32* %inrows, align 4
  %cmp4 = icmp ult i32 %18, %19
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %20 = load i32, i32* %numrows, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %21 = load i32, i32* %inrows, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, i32* %numrows, align 4
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 56
  %23 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert, align 8
  %color_convert = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %23, i32 0, i32 1
  %24 = load void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert, align 8
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %26 = load i8**, i8*** %input_buf.addr, align 8
  %27 = load i32*, i32** %in_row_ctr.addr, align 8
  %28 = load i32, i32* %27, align 4
  %idx.ext = zext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %26, i64 %idx.ext
  %29 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %color_buf = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %29, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i32 0
  %30 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row5 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %30, i32 0, i32 3
  %31 = load i32, i32* %next_buf_row5, align 4
  %32 = load i32, i32* %numrows, align 4
  call void %24(%struct.jpeg_compress_struct* %25, i8** %add.ptr, i8*** %arraydecay, i32 %31, i32 %32)
  %33 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %rows_to_go = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %33, i32 0, i32 2
  %34 = load i32, i32* %rows_to_go, align 4
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 7
  %36 = load i32, i32* %image_height, align 4
  %cmp6 = icmp eq i32 %34, %36
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %cond.end
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.then.7
  %37 = load i32, i32* %ci, align 4
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 12
  %39 = load i32, i32* %num_components, align 4
  %cmp8 = icmp slt i32 %37, %39
  br i1 %cmp8, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %row, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %40 = load i32, i32* %row, align 4
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 39
  %42 = load i32, i32* %max_v_samp_factor10, align 4
  %cmp11 = icmp sle i32 %40, %42
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %43 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %43 to i64
  %44 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %color_buf13 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %44, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf13, i32 0, i64 %idxprom
  %45 = load i8**, i8*** %arrayidx, align 8
  %46 = load i32, i32* %ci, align 4
  %idxprom14 = sext i32 %46 to i64
  %47 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %color_buf15 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %47, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf15, i32 0, i64 %idxprom14
  %48 = load i8**, i8*** %arrayidx16, align 8
  %49 = load i32, i32* %row, align 4
  %sub17 = sub nsw i32 0, %49
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 6
  %51 = load i32, i32* %image_width, align 4
  call void @jcopy_sample_rows(i8** %45, i32 0, i8** %48, i32 %sub17, i32 1, i32 %51)
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %52 = load i32, i32* %row, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %53 = load i32, i32* %ci, align 4
  %inc19 = add nsw i32 %53, 1
  store i32 %inc19, i32* %ci, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end.20, %cond.end
  %54 = load i32, i32* %numrows, align 4
  %55 = load i32*, i32** %in_row_ctr.addr, align 8
  %56 = load i32, i32* %55, align 4
  %add = add i32 %56, %54
  store i32 %add, i32* %55, align 4
  %57 = load i32, i32* %numrows, align 4
  %58 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row21 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %58, i32 0, i32 3
  %59 = load i32, i32* %next_buf_row21, align 4
  %add22 = add nsw i32 %59, %57
  store i32 %add22, i32* %next_buf_row21, align 4
  %60 = load i32, i32* %numrows, align 4
  %61 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %rows_to_go23 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %61, i32 0, i32 2
  %62 = load i32, i32* %rows_to_go23, align 4
  %sub24 = sub i32 %62, %60
  store i32 %sub24, i32* %rows_to_go23, align 4
  br label %if.end.49

if.else:                                          ; preds = %while.body
  %63 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %rows_to_go25 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %63, i32 0, i32 2
  %64 = load i32, i32* %rows_to_go25, align 4
  %cmp26 = icmp ne i32 %64, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else
  br label %while.end

if.end.28:                                        ; preds = %if.else
  %65 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row29 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %65, i32 0, i32 3
  %66 = load i32, i32* %next_buf_row29, align 4
  %67 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_stop30 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %67, i32 0, i32 5
  %68 = load i32, i32* %next_buf_stop30, align 4
  %cmp31 = icmp slt i32 %66, %68
  br i1 %cmp31, label %if.then.32, label %if.end.48

if.then.32:                                       ; preds = %if.end.28
  store i32 0, i32* %ci, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.43, %if.then.32
  %69 = load i32, i32* %ci, align 4
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 12
  %71 = load i32, i32* %num_components34, align 4
  %cmp35 = icmp slt i32 %69, %71
  br i1 %cmp35, label %for.body.36, label %for.end.45

for.body.36:                                      ; preds = %for.cond.33
  %72 = load i32, i32* %ci, align 4
  %idxprom37 = sext i32 %72 to i64
  %73 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %color_buf38 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %73, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf38, i32 0, i64 %idxprom37
  %74 = load i8**, i8*** %arrayidx39, align 8
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %75, i32 0, i32 6
  %76 = load i32, i32* %image_width40, align 4
  %77 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row41 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %77, i32 0, i32 3
  %78 = load i32, i32* %next_buf_row41, align 4
  %79 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_stop42 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %79, i32 0, i32 5
  %80 = load i32, i32* %next_buf_stop42, align 4
  call void @expand_bottom_edge(i8** %74, i32 %76, i32 %78, i32 %80)
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.36
  %81 = load i32, i32* %ci, align 4
  %inc44 = add nsw i32 %81, 1
  store i32 %inc44, i32* %ci, align 4
  br label %for.cond.33

for.end.45:                                       ; preds = %for.cond.33
  %82 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_stop46 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %82, i32 0, i32 5
  %83 = load i32, i32* %next_buf_stop46, align 4
  %84 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row47 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %84, i32 0, i32 3
  store i32 %83, i32* %next_buf_row47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.45, %if.end.28
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end
  %85 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row50 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %85, i32 0, i32 3
  %86 = load i32, i32* %next_buf_row50, align 4
  %87 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_stop51 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %87, i32 0, i32 5
  %88 = load i32, i32* %next_buf_stop51, align 4
  %cmp52 = icmp eq i32 %86, %88
  br i1 %cmp52, label %if.then.53, label %if.end.75

if.then.53:                                       ; preds = %if.end.49
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %89, i32 0, i32 57
  %90 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample, align 8
  %downsample54 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %90, i32 0, i32 1
  %91 = load void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)** %downsample54, align 8
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %93 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %color_buf55 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %93, i32 0, i32 1
  %arraydecay56 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf55, i32 0, i32 0
  %94 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %this_row_group = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %94, i32 0, i32 4
  %95 = load i32, i32* %this_row_group, align 4
  %96 = load i8***, i8**** %output_buf.addr, align 8
  %97 = load i32*, i32** %out_row_group_ctr.addr, align 8
  %98 = load i32, i32* %97, align 4
  call void %91(%struct.jpeg_compress_struct* %92, i8*** %arraydecay56, i32 %95, i8*** %96, i32 %98)
  %99 = load i32*, i32** %out_row_group_ctr.addr, align 8
  %100 = load i32, i32* %99, align 4
  %inc57 = add i32 %100, 1
  store i32 %inc57, i32* %99, align 4
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor58 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 39
  %102 = load i32, i32* %max_v_samp_factor58, align 4
  %103 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %this_row_group59 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %103, i32 0, i32 4
  %104 = load i32, i32* %this_row_group59, align 4
  %add60 = add nsw i32 %104, %102
  store i32 %add60, i32* %this_row_group59, align 4
  %105 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %this_row_group61 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %105, i32 0, i32 4
  %106 = load i32, i32* %this_row_group61, align 4
  %107 = load i32, i32* %buf_height, align 4
  %cmp62 = icmp sge i32 %106, %107
  br i1 %cmp62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.then.53
  %108 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %this_row_group64 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %108, i32 0, i32 4
  store i32 0, i32* %this_row_group64, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.then.53
  %109 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row66 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %109, i32 0, i32 3
  %110 = load i32, i32* %next_buf_row66, align 4
  %111 = load i32, i32* %buf_height, align 4
  %cmp67 = icmp sge i32 %110, %111
  br i1 %cmp67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.65
  %112 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row69 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %112, i32 0, i32 3
  store i32 0, i32* %next_buf_row69, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.65
  %113 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row71 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %113, i32 0, i32 3
  %114 = load i32, i32* %next_buf_row71, align 4
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor72 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %115, i32 0, i32 39
  %116 = load i32, i32* %max_v_samp_factor72, align 4
  %add73 = add nsw i32 %114, %116
  %117 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_stop74 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %117, i32 0, i32 5
  store i32 %add73, i32* %next_buf_stop74, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.70, %if.end.49
  br label %while.cond

while.end:                                        ; preds = %if.then.27, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_context_buffer(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %prep = alloca %struct.my_prep_controller*, align 8
  %rgroup_height = alloca i32, align 4
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %true_buffer = alloca i8**, align 8
  %fake_buffer = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 53
  %1 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep1, align 8
  %2 = bitcast %struct.jpeg_c_prep_controller* %1 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %2, %struct.my_prep_controller** %prep, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 39
  %4 = load i32, i32* %max_v_samp_factor, align 4
  store i32 %4, i32* %rgroup_height, align 4
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %7 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %9 = bitcast %struct.jpeg_compress_struct* %8 to %struct.jpeg_common_struct*
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 12
  %11 = load i32, i32* %num_components, align 4
  %mul = mul nsw i32 %11, 5
  %12 = load i32, i32* %rgroup_height, align 4
  %mul2 = mul nsw i32 %mul, %12
  %conv = sext i32 %mul2 to i64
  %mul3 = mul i64 %conv, 8
  %call = call i8* %7(%struct.jpeg_common_struct* %9, i32 1, i64 %mul3)
  %13 = bitcast i8* %call to i8**
  store i8** %13, i8*** %fake_buffer, align 8
  store i32 0, i32* %ci, align 4
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 14
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %15, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %16 = load i32, i32* %ci, align 4
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 12
  %18 = load i32, i32* %num_components4, align 4
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 1
  %20 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem6, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %20, i32 0, i32 2
  %21 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i32 0, i32 7
  %25 = load i32, i32* %width_in_blocks, align 4
  %conv7 = zext i32 %25 to i64
  %mul8 = mul nsw i64 %conv7, 8
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 38
  %27 = load i32, i32* %max_h_samp_factor, align 4
  %conv9 = sext i32 %27 to i64
  %mul10 = mul nsw i64 %mul8, %conv9
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 2
  %29 = load i32, i32* %h_samp_factor, align 4
  %conv11 = sext i32 %29 to i64
  %div = sdiv i64 %mul10, %conv11
  %conv12 = trunc i64 %div to i32
  %30 = load i32, i32* %rgroup_height, align 4
  %mul13 = mul nsw i32 3, %30
  %call14 = call i8** %21(%struct.jpeg_common_struct* %23, i32 1, i32 %conv12, i32 %mul13)
  store i8** %call14, i8*** %true_buffer, align 8
  %31 = load i8**, i8*** %fake_buffer, align 8
  %32 = load i32, i32* %rgroup_height, align 4
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %31, i64 %idx.ext
  %33 = bitcast i8** %add.ptr to i8*
  %34 = load i8**, i8*** %true_buffer, align 8
  %35 = bitcast i8** %34 to i8*
  %36 = load i32, i32* %rgroup_height, align 4
  %mul15 = mul nsw i32 3, %36
  %conv16 = sext i32 %mul15 to i64
  %mul17 = mul i64 %conv16, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %35, i64 %mul17, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %rgroup_height, align 4
  %cmp19 = icmp slt i32 %37, %38
  br i1 %cmp19, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.18
  %39 = load i32, i32* %rgroup_height, align 4
  %mul22 = mul nsw i32 2, %39
  %40 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul22, %40
  %idxprom = sext i32 %add to i64
  %41 = load i8**, i8*** %true_buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %41, i64 %idxprom
  %42 = load i8*, i8** %arrayidx, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %43 to i64
  %44 = load i8**, i8*** %fake_buffer, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %44, i64 %idxprom23
  store i8* %42, i8** %arrayidx24, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %45 to i64
  %46 = load i8**, i8*** %true_buffer, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %46, i64 %idxprom25
  %47 = load i8*, i8** %arrayidx26, align 8
  %48 = load i32, i32* %rgroup_height, align 4
  %mul27 = mul nsw i32 4, %48
  %49 = load i32, i32* %i, align 4
  %add28 = add nsw i32 %mul27, %49
  %idxprom29 = sext i32 %add28 to i64
  %50 = load i8**, i8*** %fake_buffer, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %50, i64 %idxprom29
  store i8* %47, i8** %arrayidx30, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %52 = load i8**, i8*** %fake_buffer, align 8
  %53 = load i32, i32* %rgroup_height, align 4
  %idx.ext31 = sext i32 %53 to i64
  %add.ptr32 = getelementptr inbounds i8*, i8** %52, i64 %idx.ext31
  %54 = load i32, i32* %ci, align 4
  %idxprom33 = sext i32 %54 to i64
  %55 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %color_buf = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %55, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i64 %idxprom33
  store i8** %add.ptr32, i8*** %arrayidx34, align 8
  %56 = load i32, i32* %rgroup_height, align 4
  %mul35 = mul nsw i32 5, %56
  %57 = load i8**, i8*** %fake_buffer, align 8
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i8*, i8** %57, i64 %idx.ext36
  store i8** %add.ptr37, i8*** %fake_buffer, align 8
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %58 = load i32, i32* %ci, align 4
  %inc39 = add nsw i32 %58, 1
  store i32 %inc39, i32* %ci, align 4
  %59 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %59, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
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
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8** %input_buf, i8*** %input_buf.addr, align 8
  store i32* %in_row_ctr, i32** %in_row_ctr.addr, align 8
  store i32 %in_rows_avail, i32* %in_rows_avail.addr, align 4
  store i8*** %output_buf, i8**** %output_buf.addr, align 8
  store i32* %out_row_group_ctr, i32** %out_row_group_ctr.addr, align 8
  store i32 %out_row_groups_avail, i32* %out_row_groups_avail.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 53
  %1 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep1, align 8
  %2 = bitcast %struct.jpeg_c_prep_controller* %1 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %2, %struct.my_prep_controller** %prep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %entry
  %3 = load i32*, i32** %in_row_ctr.addr, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* %in_rows_avail.addr, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32*, i32** %out_row_group_ctr.addr, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %out_row_groups_avail.addr, align 4
  %cmp2 = icmp ult i32 %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %in_rows_avail.addr, align 4
  %11 = load i32*, i32** %in_row_ctr.addr, align 8
  %12 = load i32, i32* %11, align 4
  %sub = sub i32 %10, %12
  store i32 %sub, i32* %inrows, align 4
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 39
  %14 = load i32, i32* %max_v_samp_factor, align 4
  %15 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %15, i32 0, i32 3
  %16 = load i32, i32* %next_buf_row, align 4
  %sub3 = sub nsw i32 %14, %16
  store i32 %sub3, i32* %numrows, align 4
  %17 = load i32, i32* %numrows, align 4
  %18 = load i32, i32* %inrows, align 4
  %cmp4 = icmp ult i32 %17, %18
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %19 = load i32, i32* %numrows, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %20 = load i32, i32* %inrows, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ]
  store i32 %cond, i32* %numrows, align 4
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 56
  %22 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert, align 8
  %color_convert = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %22, i32 0, i32 1
  %23 = load void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert, align 8
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %25 = load i8**, i8*** %input_buf.addr, align 8
  %26 = load i32*, i32** %in_row_ctr.addr, align 8
  %27 = load i32, i32* %26, align 4
  %idx.ext = zext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %25, i64 %idx.ext
  %28 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %color_buf = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %28, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i32 0
  %29 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row5 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %29, i32 0, i32 3
  %30 = load i32, i32* %next_buf_row5, align 4
  %31 = load i32, i32* %numrows, align 4
  call void %23(%struct.jpeg_compress_struct* %24, i8** %add.ptr, i8*** %arraydecay, i32 %30, i32 %31)
  %32 = load i32, i32* %numrows, align 4
  %33 = load i32*, i32** %in_row_ctr.addr, align 8
  %34 = load i32, i32* %33, align 4
  %add = add i32 %34, %32
  store i32 %add, i32* %33, align 4
  %35 = load i32, i32* %numrows, align 4
  %36 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row6 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %36, i32 0, i32 3
  %37 = load i32, i32* %next_buf_row6, align 4
  %add7 = add nsw i32 %37, %35
  store i32 %add7, i32* %next_buf_row6, align 4
  %38 = load i32, i32* %numrows, align 4
  %39 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %rows_to_go = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %39, i32 0, i32 2
  %40 = load i32, i32* %rows_to_go, align 4
  %sub8 = sub i32 %40, %38
  store i32 %sub8, i32* %rows_to_go, align 4
  %41 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %rows_to_go9 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %41, i32 0, i32 2
  %42 = load i32, i32* %rows_to_go9, align 4
  %cmp10 = icmp eq i32 %42, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %43 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row11 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %43, i32 0, i32 3
  %44 = load i32, i32* %next_buf_row11, align 4
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 39
  %46 = load i32, i32* %max_v_samp_factor12, align 4
  %cmp13 = icmp slt i32 %44, %46
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %47 = load i32, i32* %ci, align 4
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 12
  %49 = load i32, i32* %num_components, align 4
  %cmp14 = icmp slt i32 %47, %49
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %color_buf15 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %51, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf15, i32 0, i64 %idxprom
  %52 = load i8**, i8*** %arrayidx, align 8
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 6
  %54 = load i32, i32* %image_width, align 4
  %55 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row16 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %55, i32 0, i32 3
  %56 = load i32, i32* %next_buf_row16, align 4
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 39
  %58 = load i32, i32* %max_v_samp_factor17, align 4
  call void @expand_bottom_edge(i8** %52, i32 %54, i32 %56, i32 %58)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 39
  %61 = load i32, i32* %max_v_samp_factor18, align 4
  %62 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row19 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %62, i32 0, i32 3
  store i32 %61, i32* %next_buf_row19, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %cond.end
  %63 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row20 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %63, i32 0, i32 3
  %64 = load i32, i32* %next_buf_row20, align 4
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 39
  %66 = load i32, i32* %max_v_samp_factor21, align 4
  %cmp22 = icmp eq i32 %64, %66
  br i1 %cmp22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.end
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 57
  %68 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample, align 8
  %downsample24 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %68, i32 0, i32 1
  %69 = load void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)** %downsample24, align 8
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %71 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %color_buf25 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %71, i32 0, i32 1
  %arraydecay26 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf25, i32 0, i32 0
  %72 = load i8***, i8**** %output_buf.addr, align 8
  %73 = load i32*, i32** %out_row_group_ctr.addr, align 8
  %74 = load i32, i32* %73, align 4
  call void %69(%struct.jpeg_compress_struct* %70, i8*** %arraydecay26, i32 0, i8*** %72, i32 %74)
  %75 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %next_buf_row27 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %75, i32 0, i32 3
  store i32 0, i32* %next_buf_row27, align 4
  %76 = load i32*, i32** %out_row_group_ctr.addr, align 8
  %77 = load i32, i32* %76, align 4
  %inc28 = add i32 %77, 1
  store i32 %inc28, i32* %76, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.23, %if.end
  %78 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8
  %rows_to_go30 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %78, i32 0, i32 2
  %79 = load i32, i32* %rows_to_go30, align 4
  %cmp31 = icmp eq i32 %79, 0
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.47

land.lhs.true.32:                                 ; preds = %if.end.29
  %80 = load i32*, i32** %out_row_group_ctr.addr, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %out_row_groups_avail.addr, align 4
  %cmp33 = icmp ult i32 %81, %82
  br i1 %cmp33, label %if.then.34, label %if.end.47

if.then.34:                                       ; preds = %land.lhs.true.32
  store i32 0, i32* %ci, align 4
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 14
  %84 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %84, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.44, %if.then.34
  %85 = load i32, i32* %ci, align 4
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %86, i32 0, i32 12
  %87 = load i32, i32* %num_components36, align 4
  %cmp37 = icmp slt i32 %85, %87
  br i1 %cmp37, label %for.body.38, label %for.end.46

for.body.38:                                      ; preds = %for.cond.35
  %88 = load i32, i32* %ci, align 4
  %idxprom39 = sext i32 %88 to i64
  %89 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx40 = getelementptr inbounds i8**, i8*** %89, i64 %idxprom39
  %90 = load i8**, i8*** %arrayidx40, align 8
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i32 0, i32 7
  %92 = load i32, i32* %width_in_blocks, align 4
  %mul = mul i32 %92, 8
  %93 = load i32*, i32** %out_row_group_ctr.addr, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 0, i32 3
  %96 = load i32, i32* %v_samp_factor, align 4
  %mul41 = mul i32 %94, %96
  %97 = load i32, i32* %out_row_groups_avail.addr, align 4
  %98 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %98, i32 0, i32 3
  %99 = load i32, i32* %v_samp_factor42, align 4
  %mul43 = mul i32 %97, %99
  call void @expand_bottom_edge(i8** %90, i32 %mul, i32 %mul41, i32 %mul43)
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.38
  %100 = load i32, i32* %ci, align 4
  %inc45 = add nsw i32 %100, 1
  store i32 %inc45, i32* %ci, align 4
  %101 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %101, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond.35

for.end.46:                                       ; preds = %for.cond.35
  %102 = load i32, i32* %out_row_groups_avail.addr, align 4
  %103 = load i32*, i32** %out_row_group_ctr.addr, align 8
  store i32 %102, i32* %103, align 4
  br label %while.end

if.end.47:                                        ; preds = %land.lhs.true.32, %if.end.29
  br label %while.cond

while.end:                                        ; preds = %for.end.46, %land.end
  ret void
}

declare void @jcopy_sample_rows(i8**, i32, i8**, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @expand_bottom_edge(i8** %image_data, i32 %num_cols, i32 %input_rows, i32 %output_rows) #0 {
entry:
  %image_data.addr = alloca i8**, align 8
  %num_cols.addr = alloca i32, align 4
  %input_rows.addr = alloca i32, align 4
  %output_rows.addr = alloca i32, align 4
  %row = alloca i32, align 4
  store i8** %image_data, i8*** %image_data.addr, align 8
  store i32 %num_cols, i32* %num_cols.addr, align 4
  store i32 %input_rows, i32* %input_rows.addr, align 4
  store i32 %output_rows, i32* %output_rows.addr, align 4
  %0 = load i32, i32* %input_rows.addr, align 4
  store i32 %0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %row, align 4
  %2 = load i32, i32* %output_rows.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %image_data.addr, align 8
  %4 = load i32, i32* %input_rows.addr, align 4
  %sub = sub nsw i32 %4, 1
  %5 = load i8**, i8*** %image_data.addr, align 8
  %6 = load i32, i32* %row, align 4
  %7 = load i32, i32* %num_cols.addr, align 4
  call void @jcopy_sample_rows(i8** %3, i32 %sub, i8** %5, i32 %6, i32 1, i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %row, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
