; ModuleID = './MultiSource.Benchmarks.mediabench/2.jpeg.jpeg-6a.jdmerge.bc'
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
%struct.jpeg_source_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, {}* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type { {}*, {}*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, {}*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, {}*, {}*, {}*, i32, i32 }
%struct.jpeg_marker_reader = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { {}*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { {}*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, {}*, {}* }
%struct.my_upsampler = type { %struct.jpeg_upsampler, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)*, i32*, i32*, i64*, i64*, i8*, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define void @jinit_merged_upsampler(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 88)
  %5 = bitcast i8* %call to %struct.my_upsampler*
  store %struct.my_upsampler* %5, %struct.my_upsampler** %upsample, align 8
  %6 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %7 = bitcast %struct.my_upsampler* %6 to %struct.jpeg_upsampler*
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 81
  store %struct.jpeg_upsampler* %7, %struct.jpeg_upsampler** %upsample1, align 8
  %9 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %pub = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_merged_upsample, void (%struct.jpeg_decompress_struct*)** %start_pass2, align 8
  %10 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %pub3 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i32 0, i32 0
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub3, i32 0, i32 2
  store i32 0, i32* %need_context_rows, align 4
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 26
  %12 = load i32, i32* %output_width, align 4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 28
  %14 = load i32, i32* %out_color_components, align 4
  %mul = mul i32 %12, %14
  %15 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %out_row_width = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %15, i32 0, i32 8
  store i32 %mul, i32* %out_row_width, align 4
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 58
  %17 = load i32, i32* %max_v_samp_factor, align 4
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %pub4 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %18, i32 0, i32 0
  %upsample5 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub4, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @merged_2v_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample5, align 8
  %19 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %upmethod = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %19, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)* @h2v2_merged_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %upmethod, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 1
  %21 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem6, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %21, i32 0, i32 1
  %22 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  %25 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %out_row_width7 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %25, i32 0, i32 8
  %26 = load i32, i32* %out_row_width7, align 4
  %conv = zext i32 %26 to i64
  %mul8 = mul i64 %conv, 1
  %call9 = call i8* %22(%struct.jpeg_common_struct* %24, i32 1, i64 %mul8)
  %27 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %spare_row = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %27, i32 0, i32 6
  store i8* %call9, i8** %spare_row, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %28 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %pub10 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %28, i32 0, i32 0
  %upsample11 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub10, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @merged_1v_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample11, align 8
  %29 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %upmethod12 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %29, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)* @h2v1_merged_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %upmethod12, align 8
  %30 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %spare_row13 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %30, i32 0, i32 6
  store i8* null, i8** %spare_row13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_merged_upsample(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 81
  %1 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8
  %2 = bitcast %struct.jpeg_upsampler* %1 to %struct.my_upsampler*
  store %struct.my_upsampler* %2, %struct.my_upsampler** %upsample, align 8
  %3 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %spare_full = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %3, i32 0, i32 7
  store i32 0, i32* %spare_full, align 4
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 27
  %5 = load i32, i32* %output_height, align 4
  %6 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %6, i32 0, i32 9
  store i32 %5, i32* %rows_to_go, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @merged_2v_upsample(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32* %in_row_group_ctr, i32 %in_row_groups_avail, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32*, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %upsample = alloca %struct.my_upsampler*, align 8
  %work_ptrs = alloca [2 x i8*], align 16
  %num_rows = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  store i32* %in_row_group_ctr, i32** %in_row_group_ctr.addr, align 8
  store i32 %in_row_groups_avail, i32* %in_row_groups_avail.addr, align 4
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 81
  %1 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8
  %2 = bitcast %struct.jpeg_upsampler* %1 to %struct.my_upsampler*
  store %struct.my_upsampler* %2, %struct.my_upsampler** %upsample, align 8
  %3 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %spare_full = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %3, i32 0, i32 7
  %4 = load i32, i32* %spare_full, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %spare_row = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %5, i32 0, i32 6
  %6 = load i8**, i8*** %output_buf.addr, align 8
  %7 = load i32*, i32** %out_row_ctr.addr, align 8
  %8 = load i32, i32* %7, align 4
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %6, i64 %idx.ext
  %9 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %out_row_width = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %9, i32 0, i32 8
  %10 = load i32, i32* %out_row_width, align 4
  call void @jcopy_sample_rows(i8** %spare_row, i32 0, i8** %add.ptr, i32 0, i32 1, i32 %10)
  store i32 1, i32* %num_rows, align 4
  %11 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %spare_full2 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i32 0, i32 7
  store i32 0, i32* %spare_full2, align 4
  br label %if.end.19

if.else:                                          ; preds = %entry
  store i32 2, i32* %num_rows, align 4
  %12 = load i32, i32* %num_rows, align 4
  %13 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %13, i32 0, i32 9
  %14 = load i32, i32* %rows_to_go, align 4
  %cmp = icmp ugt i32 %12, %14
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %15 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %rows_to_go4 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %15, i32 0, i32 9
  %16 = load i32, i32* %rows_to_go4, align 4
  store i32 %16, i32* %num_rows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  %17 = load i32*, i32** %out_row_ctr.addr, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %out_rows_avail.addr, align 4
  %sub = sub i32 %19, %18
  store i32 %sub, i32* %out_rows_avail.addr, align 4
  %20 = load i32, i32* %num_rows, align 4
  %21 = load i32, i32* %out_rows_avail.addr, align 4
  %cmp5 = icmp ugt i32 %20, %21
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %22 = load i32, i32* %out_rows_avail.addr, align 4
  store i32 %22, i32* %num_rows, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %23 = load i32*, i32** %out_row_ctr.addr, align 8
  %24 = load i32, i32* %23, align 4
  %idxprom = zext i32 %24 to i64
  %25 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %25, i64 %idxprom
  %26 = load i8*, i8** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds [2 x i8*], [2 x i8*]* %work_ptrs, i32 0, i64 0
  store i8* %26, i8** %arrayidx8, align 8
  %27 = load i32, i32* %num_rows, align 4
  %cmp9 = icmp ugt i32 %27, 1
  br i1 %cmp9, label %if.then.10, label %if.else.14

if.then.10:                                       ; preds = %if.end.7
  %28 = load i32*, i32** %out_row_ctr.addr, align 8
  %29 = load i32, i32* %28, align 4
  %add = add i32 %29, 1
  %idxprom11 = zext i32 %add to i64
  %30 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %30, i64 %idxprom11
  %31 = load i8*, i8** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %work_ptrs, i32 0, i64 1
  store i8* %31, i8** %arrayidx13, align 8
  br label %if.end.18

if.else.14:                                       ; preds = %if.end.7
  %32 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %spare_row15 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %32, i32 0, i32 6
  %33 = load i8*, i8** %spare_row15, align 8
  %arrayidx16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %work_ptrs, i32 0, i64 1
  store i8* %33, i8** %arrayidx16, align 8
  %34 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %spare_full17 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %34, i32 0, i32 7
  store i32 1, i32* %spare_full17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.14, %if.then.10
  %35 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %upmethod = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %35, i32 0, i32 1
  %36 = load void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %upmethod, align 8
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %38 = load i8***, i8**** %input_buf.addr, align 8
  %39 = load i32*, i32** %in_row_group_ctr.addr, align 8
  %40 = load i32, i32* %39, align 4
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %work_ptrs, i32 0, i32 0
  call void %36(%struct.jpeg_decompress_struct* %37, i8*** %38, i32 %40, i8** %arraydecay)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then
  %41 = load i32, i32* %num_rows, align 4
  %42 = load i32*, i32** %out_row_ctr.addr, align 8
  %43 = load i32, i32* %42, align 4
  %add20 = add i32 %43, %41
  store i32 %add20, i32* %42, align 4
  %44 = load i32, i32* %num_rows, align 4
  %45 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %rows_to_go21 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %45, i32 0, i32 9
  %46 = load i32, i32* %rows_to_go21, align 4
  %sub22 = sub i32 %46, %44
  store i32 %sub22, i32* %rows_to_go21, align 4
  %47 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %spare_full23 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %47, i32 0, i32 7
  %48 = load i32, i32* %spare_full23, align 4
  %tobool24 = icmp ne i32 %48, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.19
  %49 = load i32*, i32** %in_row_group_ctr.addr, align 8
  %50 = load i32, i32* %49, align 4
  %inc = add i32 %50, 1
  store i32 %inc, i32* %49, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v2_merged_upsample(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %in_row_group_ctr, i8** %output_buf) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  %y = alloca i32, align 4
  %cred = alloca i32, align 4
  %cgreen = alloca i32, align 4
  %cblue = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  %outptr0 = alloca i8*, align 8
  %outptr1 = alloca i8*, align 8
  %inptr00 = alloca i8*, align 8
  %inptr01 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %inptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %range_limit = alloca i8*, align 8
  %Crrtab = alloca i32*, align 8
  %Cbbtab = alloca i32*, align 8
  %Crgtab = alloca i64*, align 8
  %Cbgtab = alloca i64*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  store i32 %in_row_group_ctr, i32* %in_row_group_ctr.addr, align 4
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 81
  %1 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8
  %2 = bitcast %struct.jpeg_upsampler* %1 to %struct.my_upsampler*
  store %struct.my_upsampler* %2, %struct.my_upsampler** %upsample, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 61
  %4 = load i8*, i8** %sample_range_limit, align 8
  store i8* %4, i8** %range_limit, align 8
  %5 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %5, i32 0, i32 2
  %6 = load i32*, i32** %Cr_r_tab, align 8
  store i32* %6, i32** %Crrtab, align 8
  %7 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i32 0, i32 3
  %8 = load i32*, i32** %Cb_b_tab, align 8
  store i32* %8, i32** %Cbbtab, align 8
  %9 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %9, i32 0, i32 4
  %10 = load i64*, i64** %Cr_g_tab, align 8
  store i64* %10, i64** %Crgtab, align 8
  %11 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i32 0, i32 5
  %12 = load i64*, i64** %Cb_g_tab, align 8
  store i64* %12, i64** %Cbgtab, align 8
  %13 = load i32, i32* %in_row_group_ctr.addr, align 4
  %mul = mul i32 %13, 2
  %idxprom = zext i32 %mul to i64
  %14 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %14, i64 0
  %15 = load i8**, i8*** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx2, align 8
  store i8* %16, i8** %inptr00, align 8
  %17 = load i32, i32* %in_row_group_ctr.addr, align 4
  %mul3 = mul i32 %17, 2
  %add = add i32 %mul3, 1
  %idxprom4 = zext i32 %add to i64
  %18 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx5 = getelementptr inbounds i8**, i8*** %18, i64 0
  %19 = load i8**, i8*** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %19, i64 %idxprom4
  %20 = load i8*, i8** %arrayidx6, align 8
  store i8* %20, i8** %inptr01, align 8
  %21 = load i32, i32* %in_row_group_ctr.addr, align 4
  %idxprom7 = zext i32 %21 to i64
  %22 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx8 = getelementptr inbounds i8**, i8*** %22, i64 1
  %23 = load i8**, i8*** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %23, i64 %idxprom7
  %24 = load i8*, i8** %arrayidx9, align 8
  store i8* %24, i8** %inptr1, align 8
  %25 = load i32, i32* %in_row_group_ctr.addr, align 4
  %idxprom10 = zext i32 %25 to i64
  %26 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx11 = getelementptr inbounds i8**, i8*** %26, i64 2
  %27 = load i8**, i8*** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %27, i64 %idxprom10
  %28 = load i8*, i8** %arrayidx12, align 8
  store i8* %28, i8** %inptr2, align 8
  %29 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %29, i64 0
  %30 = load i8*, i8** %arrayidx13, align 8
  store i8* %30, i8** %outptr0, align 8
  %31 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %31, i64 1
  %32 = load i8*, i8** %arrayidx14, align 8
  store i8* %32, i8** %outptr1, align 8
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 26
  %34 = load i32, i32* %output_width, align 4
  %shr = lshr i32 %34, 1
  store i32 %shr, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %35 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %35, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i8*, i8** %inptr1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %inptr1, align 8
  %37 = load i8, i8* %36, align 1
  %conv = zext i8 %37 to i32
  store i32 %conv, i32* %cb, align 4
  %38 = load i8*, i8** %inptr2, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr15, i8** %inptr2, align 8
  %39 = load i8, i8* %38, align 1
  %conv16 = zext i8 %39 to i32
  store i32 %conv16, i32* %cr, align 4
  %40 = load i32, i32* %cr, align 4
  %idxprom17 = sext i32 %40 to i64
  %41 = load i32*, i32** %Crrtab, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %41, i64 %idxprom17
  %42 = load i32, i32* %arrayidx18, align 4
  store i32 %42, i32* %cred, align 4
  %43 = load i32, i32* %cb, align 4
  %idxprom19 = sext i32 %43 to i64
  %44 = load i64*, i64** %Cbgtab, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %44, i64 %idxprom19
  %45 = load i64, i64* %arrayidx20, align 8
  %46 = load i32, i32* %cr, align 4
  %idxprom21 = sext i32 %46 to i64
  %47 = load i64*, i64** %Crgtab, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %47, i64 %idxprom21
  %48 = load i64, i64* %arrayidx22, align 8
  %add23 = add nsw i64 %45, %48
  %shr24 = ashr i64 %add23, 16
  %conv25 = trunc i64 %shr24 to i32
  store i32 %conv25, i32* %cgreen, align 4
  %49 = load i32, i32* %cb, align 4
  %idxprom26 = sext i32 %49 to i64
  %50 = load i32*, i32** %Cbbtab, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %50, i64 %idxprom26
  %51 = load i32, i32* %arrayidx27, align 4
  store i32 %51, i32* %cblue, align 4
  %52 = load i8*, i8** %inptr00, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr28, i8** %inptr00, align 8
  %53 = load i8, i8* %52, align 1
  %conv29 = zext i8 %53 to i32
  store i32 %conv29, i32* %y, align 4
  %54 = load i32, i32* %y, align 4
  %55 = load i32, i32* %cred, align 4
  %add30 = add nsw i32 %54, %55
  %idxprom31 = sext i32 %add30 to i64
  %56 = load i8*, i8** %range_limit, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %56, i64 %idxprom31
  %57 = load i8, i8* %arrayidx32, align 1
  %58 = load i8*, i8** %outptr0, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 %57, i8* %arrayidx33, align 1
  %59 = load i32, i32* %y, align 4
  %60 = load i32, i32* %cgreen, align 4
  %add34 = add nsw i32 %59, %60
  %idxprom35 = sext i32 %add34 to i64
  %61 = load i8*, i8** %range_limit, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %61, i64 %idxprom35
  %62 = load i8, i8* %arrayidx36, align 1
  %63 = load i8*, i8** %outptr0, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %63, i64 1
  store i8 %62, i8* %arrayidx37, align 1
  %64 = load i32, i32* %y, align 4
  %65 = load i32, i32* %cblue, align 4
  %add38 = add nsw i32 %64, %65
  %idxprom39 = sext i32 %add38 to i64
  %66 = load i8*, i8** %range_limit, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %66, i64 %idxprom39
  %67 = load i8, i8* %arrayidx40, align 1
  %68 = load i8*, i8** %outptr0, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %68, i64 2
  store i8 %67, i8* %arrayidx41, align 1
  %69 = load i8*, i8** %outptr0, align 8
  %add.ptr = getelementptr inbounds i8, i8* %69, i64 3
  store i8* %add.ptr, i8** %outptr0, align 8
  %70 = load i8*, i8** %inptr00, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr42, i8** %inptr00, align 8
  %71 = load i8, i8* %70, align 1
  %conv43 = zext i8 %71 to i32
  store i32 %conv43, i32* %y, align 4
  %72 = load i32, i32* %y, align 4
  %73 = load i32, i32* %cred, align 4
  %add44 = add nsw i32 %72, %73
  %idxprom45 = sext i32 %add44 to i64
  %74 = load i8*, i8** %range_limit, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %74, i64 %idxprom45
  %75 = load i8, i8* %arrayidx46, align 1
  %76 = load i8*, i8** %outptr0, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %76, i64 0
  store i8 %75, i8* %arrayidx47, align 1
  %77 = load i32, i32* %y, align 4
  %78 = load i32, i32* %cgreen, align 4
  %add48 = add nsw i32 %77, %78
  %idxprom49 = sext i32 %add48 to i64
  %79 = load i8*, i8** %range_limit, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %79, i64 %idxprom49
  %80 = load i8, i8* %arrayidx50, align 1
  %81 = load i8*, i8** %outptr0, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %81, i64 1
  store i8 %80, i8* %arrayidx51, align 1
  %82 = load i32, i32* %y, align 4
  %83 = load i32, i32* %cblue, align 4
  %add52 = add nsw i32 %82, %83
  %idxprom53 = sext i32 %add52 to i64
  %84 = load i8*, i8** %range_limit, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %84, i64 %idxprom53
  %85 = load i8, i8* %arrayidx54, align 1
  %86 = load i8*, i8** %outptr0, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %86, i64 2
  store i8 %85, i8* %arrayidx55, align 1
  %87 = load i8*, i8** %outptr0, align 8
  %add.ptr56 = getelementptr inbounds i8, i8* %87, i64 3
  store i8* %add.ptr56, i8** %outptr0, align 8
  %88 = load i8*, i8** %inptr01, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr57, i8** %inptr01, align 8
  %89 = load i8, i8* %88, align 1
  %conv58 = zext i8 %89 to i32
  store i32 %conv58, i32* %y, align 4
  %90 = load i32, i32* %y, align 4
  %91 = load i32, i32* %cred, align 4
  %add59 = add nsw i32 %90, %91
  %idxprom60 = sext i32 %add59 to i64
  %92 = load i8*, i8** %range_limit, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %92, i64 %idxprom60
  %93 = load i8, i8* %arrayidx61, align 1
  %94 = load i8*, i8** %outptr1, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 %93, i8* %arrayidx62, align 1
  %95 = load i32, i32* %y, align 4
  %96 = load i32, i32* %cgreen, align 4
  %add63 = add nsw i32 %95, %96
  %idxprom64 = sext i32 %add63 to i64
  %97 = load i8*, i8** %range_limit, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %97, i64 %idxprom64
  %98 = load i8, i8* %arrayidx65, align 1
  %99 = load i8*, i8** %outptr1, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %99, i64 1
  store i8 %98, i8* %arrayidx66, align 1
  %100 = load i32, i32* %y, align 4
  %101 = load i32, i32* %cblue, align 4
  %add67 = add nsw i32 %100, %101
  %idxprom68 = sext i32 %add67 to i64
  %102 = load i8*, i8** %range_limit, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %102, i64 %idxprom68
  %103 = load i8, i8* %arrayidx69, align 1
  %104 = load i8*, i8** %outptr1, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %104, i64 2
  store i8 %103, i8* %arrayidx70, align 1
  %105 = load i8*, i8** %outptr1, align 8
  %add.ptr71 = getelementptr inbounds i8, i8* %105, i64 3
  store i8* %add.ptr71, i8** %outptr1, align 8
  %106 = load i8*, i8** %inptr01, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr72, i8** %inptr01, align 8
  %107 = load i8, i8* %106, align 1
  %conv73 = zext i8 %107 to i32
  store i32 %conv73, i32* %y, align 4
  %108 = load i32, i32* %y, align 4
  %109 = load i32, i32* %cred, align 4
  %add74 = add nsw i32 %108, %109
  %idxprom75 = sext i32 %add74 to i64
  %110 = load i8*, i8** %range_limit, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %110, i64 %idxprom75
  %111 = load i8, i8* %arrayidx76, align 1
  %112 = load i8*, i8** %outptr1, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %112, i64 0
  store i8 %111, i8* %arrayidx77, align 1
  %113 = load i32, i32* %y, align 4
  %114 = load i32, i32* %cgreen, align 4
  %add78 = add nsw i32 %113, %114
  %idxprom79 = sext i32 %add78 to i64
  %115 = load i8*, i8** %range_limit, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %115, i64 %idxprom79
  %116 = load i8, i8* %arrayidx80, align 1
  %117 = load i8*, i8** %outptr1, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %117, i64 1
  store i8 %116, i8* %arrayidx81, align 1
  %118 = load i32, i32* %y, align 4
  %119 = load i32, i32* %cblue, align 4
  %add82 = add nsw i32 %118, %119
  %idxprom83 = sext i32 %add82 to i64
  %120 = load i8*, i8** %range_limit, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %120, i64 %idxprom83
  %121 = load i8, i8* %arrayidx84, align 1
  %122 = load i8*, i8** %outptr1, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %122, i64 2
  store i8 %121, i8* %arrayidx85, align 1
  %123 = load i8*, i8** %outptr1, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %123, i64 3
  store i8* %add.ptr86, i8** %outptr1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %124 = load i32, i32* %col, align 4
  %dec = add i32 %124, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %125 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width87 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %125, i32 0, i32 26
  %126 = load i32, i32* %output_width87, align 4
  %and = and i32 %126, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %127 = load i8*, i8** %inptr1, align 8
  %128 = load i8, i8* %127, align 1
  %conv88 = zext i8 %128 to i32
  store i32 %conv88, i32* %cb, align 4
  %129 = load i8*, i8** %inptr2, align 8
  %130 = load i8, i8* %129, align 1
  %conv89 = zext i8 %130 to i32
  store i32 %conv89, i32* %cr, align 4
  %131 = load i32, i32* %cr, align 4
  %idxprom90 = sext i32 %131 to i64
  %132 = load i32*, i32** %Crrtab, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %132, i64 %idxprom90
  %133 = load i32, i32* %arrayidx91, align 4
  store i32 %133, i32* %cred, align 4
  %134 = load i32, i32* %cb, align 4
  %idxprom92 = sext i32 %134 to i64
  %135 = load i64*, i64** %Cbgtab, align 8
  %arrayidx93 = getelementptr inbounds i64, i64* %135, i64 %idxprom92
  %136 = load i64, i64* %arrayidx93, align 8
  %137 = load i32, i32* %cr, align 4
  %idxprom94 = sext i32 %137 to i64
  %138 = load i64*, i64** %Crgtab, align 8
  %arrayidx95 = getelementptr inbounds i64, i64* %138, i64 %idxprom94
  %139 = load i64, i64* %arrayidx95, align 8
  %add96 = add nsw i64 %136, %139
  %shr97 = ashr i64 %add96, 16
  %conv98 = trunc i64 %shr97 to i32
  store i32 %conv98, i32* %cgreen, align 4
  %140 = load i32, i32* %cb, align 4
  %idxprom99 = sext i32 %140 to i64
  %141 = load i32*, i32** %Cbbtab, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %141, i64 %idxprom99
  %142 = load i32, i32* %arrayidx100, align 4
  store i32 %142, i32* %cblue, align 4
  %143 = load i8*, i8** %inptr00, align 8
  %144 = load i8, i8* %143, align 1
  %conv101 = zext i8 %144 to i32
  store i32 %conv101, i32* %y, align 4
  %145 = load i32, i32* %y, align 4
  %146 = load i32, i32* %cred, align 4
  %add102 = add nsw i32 %145, %146
  %idxprom103 = sext i32 %add102 to i64
  %147 = load i8*, i8** %range_limit, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %147, i64 %idxprom103
  %148 = load i8, i8* %arrayidx104, align 1
  %149 = load i8*, i8** %outptr0, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %149, i64 0
  store i8 %148, i8* %arrayidx105, align 1
  %150 = load i32, i32* %y, align 4
  %151 = load i32, i32* %cgreen, align 4
  %add106 = add nsw i32 %150, %151
  %idxprom107 = sext i32 %add106 to i64
  %152 = load i8*, i8** %range_limit, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %152, i64 %idxprom107
  %153 = load i8, i8* %arrayidx108, align 1
  %154 = load i8*, i8** %outptr0, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %154, i64 1
  store i8 %153, i8* %arrayidx109, align 1
  %155 = load i32, i32* %y, align 4
  %156 = load i32, i32* %cblue, align 4
  %add110 = add nsw i32 %155, %156
  %idxprom111 = sext i32 %add110 to i64
  %157 = load i8*, i8** %range_limit, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %157, i64 %idxprom111
  %158 = load i8, i8* %arrayidx112, align 1
  %159 = load i8*, i8** %outptr0, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %159, i64 2
  store i8 %158, i8* %arrayidx113, align 1
  %160 = load i8*, i8** %inptr01, align 8
  %161 = load i8, i8* %160, align 1
  %conv114 = zext i8 %161 to i32
  store i32 %conv114, i32* %y, align 4
  %162 = load i32, i32* %y, align 4
  %163 = load i32, i32* %cred, align 4
  %add115 = add nsw i32 %162, %163
  %idxprom116 = sext i32 %add115 to i64
  %164 = load i8*, i8** %range_limit, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %164, i64 %idxprom116
  %165 = load i8, i8* %arrayidx117, align 1
  %166 = load i8*, i8** %outptr1, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %166, i64 0
  store i8 %165, i8* %arrayidx118, align 1
  %167 = load i32, i32* %y, align 4
  %168 = load i32, i32* %cgreen, align 4
  %add119 = add nsw i32 %167, %168
  %idxprom120 = sext i32 %add119 to i64
  %169 = load i8*, i8** %range_limit, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %169, i64 %idxprom120
  %170 = load i8, i8* %arrayidx121, align 1
  %171 = load i8*, i8** %outptr1, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %171, i64 1
  store i8 %170, i8* %arrayidx122, align 1
  %172 = load i32, i32* %y, align 4
  %173 = load i32, i32* %cblue, align 4
  %add123 = add nsw i32 %172, %173
  %idxprom124 = sext i32 %add123 to i64
  %174 = load i8*, i8** %range_limit, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %174, i64 %idxprom124
  %175 = load i8, i8* %arrayidx125, align 1
  %176 = load i8*, i8** %outptr1, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %176, i64 2
  store i8 %175, i8* %arrayidx126, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @merged_1v_upsample(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32* %in_row_group_ctr, i32 %in_row_groups_avail, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32*, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %upsample = alloca %struct.my_upsampler*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  store i32* %in_row_group_ctr, i32** %in_row_group_ctr.addr, align 8
  store i32 %in_row_groups_avail, i32* %in_row_groups_avail.addr, align 4
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 81
  %1 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8
  %2 = bitcast %struct.jpeg_upsampler* %1 to %struct.my_upsampler*
  store %struct.my_upsampler* %2, %struct.my_upsampler** %upsample, align 8
  %3 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %upmethod = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %3, i32 0, i32 1
  %4 = load void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %upmethod, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %6 = load i8***, i8**** %input_buf.addr, align 8
  %7 = load i32*, i32** %in_row_group_ctr.addr, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i8**, i8*** %output_buf.addr, align 8
  %10 = load i32*, i32** %out_row_ctr.addr, align 8
  %11 = load i32, i32* %10, align 4
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %9, i64 %idx.ext
  call void %4(%struct.jpeg_decompress_struct* %5, i8*** %6, i32 %8, i8** %add.ptr)
  %12 = load i32*, i32** %out_row_ctr.addr, align 8
  %13 = load i32, i32* %12, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %12, align 4
  %14 = load i32*, i32** %in_row_group_ctr.addr, align 8
  %15 = load i32, i32* %14, align 4
  %inc2 = add i32 %15, 1
  store i32 %inc2, i32* %14, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v1_merged_upsample(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %in_row_group_ctr, i8** %output_buf) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  %y = alloca i32, align 4
  %cred = alloca i32, align 4
  %cgreen = alloca i32, align 4
  %cblue = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  %outptr = alloca i8*, align 8
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %inptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %range_limit = alloca i8*, align 8
  %Crrtab = alloca i32*, align 8
  %Cbbtab = alloca i32*, align 8
  %Crgtab = alloca i64*, align 8
  %Cbgtab = alloca i64*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  store i32 %in_row_group_ctr, i32* %in_row_group_ctr.addr, align 4
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 81
  %1 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8
  %2 = bitcast %struct.jpeg_upsampler* %1 to %struct.my_upsampler*
  store %struct.my_upsampler* %2, %struct.my_upsampler** %upsample, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 61
  %4 = load i8*, i8** %sample_range_limit, align 8
  store i8* %4, i8** %range_limit, align 8
  %5 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %5, i32 0, i32 2
  %6 = load i32*, i32** %Cr_r_tab, align 8
  store i32* %6, i32** %Crrtab, align 8
  %7 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i32 0, i32 3
  %8 = load i32*, i32** %Cb_b_tab, align 8
  store i32* %8, i32** %Cbbtab, align 8
  %9 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %9, i32 0, i32 4
  %10 = load i64*, i64** %Cr_g_tab, align 8
  store i64* %10, i64** %Crgtab, align 8
  %11 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i32 0, i32 5
  %12 = load i64*, i64** %Cb_g_tab, align 8
  store i64* %12, i64** %Cbgtab, align 8
  %13 = load i32, i32* %in_row_group_ctr.addr, align 4
  %idxprom = zext i32 %13 to i64
  %14 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %14, i64 0
  %15 = load i8**, i8*** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx2, align 8
  store i8* %16, i8** %inptr0, align 8
  %17 = load i32, i32* %in_row_group_ctr.addr, align 4
  %idxprom3 = zext i32 %17 to i64
  %18 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8**, i8*** %18, i64 1
  %19 = load i8**, i8*** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %19, i64 %idxprom3
  %20 = load i8*, i8** %arrayidx5, align 8
  store i8* %20, i8** %inptr1, align 8
  %21 = load i32, i32* %in_row_group_ctr.addr, align 4
  %idxprom6 = zext i32 %21 to i64
  %22 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx7 = getelementptr inbounds i8**, i8*** %22, i64 2
  %23 = load i8**, i8*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %23, i64 %idxprom6
  %24 = load i8*, i8** %arrayidx8, align 8
  store i8* %24, i8** %inptr2, align 8
  %25 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %25, i64 0
  %26 = load i8*, i8** %arrayidx9, align 8
  store i8* %26, i8** %outptr, align 8
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 26
  %28 = load i32, i32* %output_width, align 4
  %shr = lshr i32 %28, 1
  store i32 %shr, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %29 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %29, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i8*, i8** %inptr1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %inptr1, align 8
  %31 = load i8, i8* %30, align 1
  %conv = zext i8 %31 to i32
  store i32 %conv, i32* %cb, align 4
  %32 = load i8*, i8** %inptr2, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr10, i8** %inptr2, align 8
  %33 = load i8, i8* %32, align 1
  %conv11 = zext i8 %33 to i32
  store i32 %conv11, i32* %cr, align 4
  %34 = load i32, i32* %cr, align 4
  %idxprom12 = sext i32 %34 to i64
  %35 = load i32*, i32** %Crrtab, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %35, i64 %idxprom12
  %36 = load i32, i32* %arrayidx13, align 4
  store i32 %36, i32* %cred, align 4
  %37 = load i32, i32* %cb, align 4
  %idxprom14 = sext i32 %37 to i64
  %38 = load i64*, i64** %Cbgtab, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %38, i64 %idxprom14
  %39 = load i64, i64* %arrayidx15, align 8
  %40 = load i32, i32* %cr, align 4
  %idxprom16 = sext i32 %40 to i64
  %41 = load i64*, i64** %Crgtab, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %41, i64 %idxprom16
  %42 = load i64, i64* %arrayidx17, align 8
  %add = add nsw i64 %39, %42
  %shr18 = ashr i64 %add, 16
  %conv19 = trunc i64 %shr18 to i32
  store i32 %conv19, i32* %cgreen, align 4
  %43 = load i32, i32* %cb, align 4
  %idxprom20 = sext i32 %43 to i64
  %44 = load i32*, i32** %Cbbtab, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %44, i64 %idxprom20
  %45 = load i32, i32* %arrayidx21, align 4
  store i32 %45, i32* %cblue, align 4
  %46 = load i8*, i8** %inptr0, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr22, i8** %inptr0, align 8
  %47 = load i8, i8* %46, align 1
  %conv23 = zext i8 %47 to i32
  store i32 %conv23, i32* %y, align 4
  %48 = load i32, i32* %y, align 4
  %49 = load i32, i32* %cred, align 4
  %add24 = add nsw i32 %48, %49
  %idxprom25 = sext i32 %add24 to i64
  %50 = load i8*, i8** %range_limit, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %50, i64 %idxprom25
  %51 = load i8, i8* %arrayidx26, align 1
  %52 = load i8*, i8** %outptr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 %51, i8* %arrayidx27, align 1
  %53 = load i32, i32* %y, align 4
  %54 = load i32, i32* %cgreen, align 4
  %add28 = add nsw i32 %53, %54
  %idxprom29 = sext i32 %add28 to i64
  %55 = load i8*, i8** %range_limit, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %55, i64 %idxprom29
  %56 = load i8, i8* %arrayidx30, align 1
  %57 = load i8*, i8** %outptr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %57, i64 1
  store i8 %56, i8* %arrayidx31, align 1
  %58 = load i32, i32* %y, align 4
  %59 = load i32, i32* %cblue, align 4
  %add32 = add nsw i32 %58, %59
  %idxprom33 = sext i32 %add32 to i64
  %60 = load i8*, i8** %range_limit, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %60, i64 %idxprom33
  %61 = load i8, i8* %arrayidx34, align 1
  %62 = load i8*, i8** %outptr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %62, i64 2
  store i8 %61, i8* %arrayidx35, align 1
  %63 = load i8*, i8** %outptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %63, i64 3
  store i8* %add.ptr, i8** %outptr, align 8
  %64 = load i8*, i8** %inptr0, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr36, i8** %inptr0, align 8
  %65 = load i8, i8* %64, align 1
  %conv37 = zext i8 %65 to i32
  store i32 %conv37, i32* %y, align 4
  %66 = load i32, i32* %y, align 4
  %67 = load i32, i32* %cred, align 4
  %add38 = add nsw i32 %66, %67
  %idxprom39 = sext i32 %add38 to i64
  %68 = load i8*, i8** %range_limit, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %68, i64 %idxprom39
  %69 = load i8, i8* %arrayidx40, align 1
  %70 = load i8*, i8** %outptr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 %69, i8* %arrayidx41, align 1
  %71 = load i32, i32* %y, align 4
  %72 = load i32, i32* %cgreen, align 4
  %add42 = add nsw i32 %71, %72
  %idxprom43 = sext i32 %add42 to i64
  %73 = load i8*, i8** %range_limit, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %73, i64 %idxprom43
  %74 = load i8, i8* %arrayidx44, align 1
  %75 = load i8*, i8** %outptr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %75, i64 1
  store i8 %74, i8* %arrayidx45, align 1
  %76 = load i32, i32* %y, align 4
  %77 = load i32, i32* %cblue, align 4
  %add46 = add nsw i32 %76, %77
  %idxprom47 = sext i32 %add46 to i64
  %78 = load i8*, i8** %range_limit, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %78, i64 %idxprom47
  %79 = load i8, i8* %arrayidx48, align 1
  %80 = load i8*, i8** %outptr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %80, i64 2
  store i8 %79, i8* %arrayidx49, align 1
  %81 = load i8*, i8** %outptr, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %81, i64 3
  store i8* %add.ptr50, i8** %outptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %82 = load i32, i32* %col, align 4
  %dec = add i32 %82, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %83, i32 0, i32 26
  %84 = load i32, i32* %output_width51, align 4
  %and = and i32 %84, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %85 = load i8*, i8** %inptr1, align 8
  %86 = load i8, i8* %85, align 1
  %conv52 = zext i8 %86 to i32
  store i32 %conv52, i32* %cb, align 4
  %87 = load i8*, i8** %inptr2, align 8
  %88 = load i8, i8* %87, align 1
  %conv53 = zext i8 %88 to i32
  store i32 %conv53, i32* %cr, align 4
  %89 = load i32, i32* %cr, align 4
  %idxprom54 = sext i32 %89 to i64
  %90 = load i32*, i32** %Crrtab, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %90, i64 %idxprom54
  %91 = load i32, i32* %arrayidx55, align 4
  store i32 %91, i32* %cred, align 4
  %92 = load i32, i32* %cb, align 4
  %idxprom56 = sext i32 %92 to i64
  %93 = load i64*, i64** %Cbgtab, align 8
  %arrayidx57 = getelementptr inbounds i64, i64* %93, i64 %idxprom56
  %94 = load i64, i64* %arrayidx57, align 8
  %95 = load i32, i32* %cr, align 4
  %idxprom58 = sext i32 %95 to i64
  %96 = load i64*, i64** %Crgtab, align 8
  %arrayidx59 = getelementptr inbounds i64, i64* %96, i64 %idxprom58
  %97 = load i64, i64* %arrayidx59, align 8
  %add60 = add nsw i64 %94, %97
  %shr61 = ashr i64 %add60, 16
  %conv62 = trunc i64 %shr61 to i32
  store i32 %conv62, i32* %cgreen, align 4
  %98 = load i32, i32* %cb, align 4
  %idxprom63 = sext i32 %98 to i64
  %99 = load i32*, i32** %Cbbtab, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %99, i64 %idxprom63
  %100 = load i32, i32* %arrayidx64, align 4
  store i32 %100, i32* %cblue, align 4
  %101 = load i8*, i8** %inptr0, align 8
  %102 = load i8, i8* %101, align 1
  %conv65 = zext i8 %102 to i32
  store i32 %conv65, i32* %y, align 4
  %103 = load i32, i32* %y, align 4
  %104 = load i32, i32* %cred, align 4
  %add66 = add nsw i32 %103, %104
  %idxprom67 = sext i32 %add66 to i64
  %105 = load i8*, i8** %range_limit, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %105, i64 %idxprom67
  %106 = load i8, i8* %arrayidx68, align 1
  %107 = load i8*, i8** %outptr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %107, i64 0
  store i8 %106, i8* %arrayidx69, align 1
  %108 = load i32, i32* %y, align 4
  %109 = load i32, i32* %cgreen, align 4
  %add70 = add nsw i32 %108, %109
  %idxprom71 = sext i32 %add70 to i64
  %110 = load i8*, i8** %range_limit, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %110, i64 %idxprom71
  %111 = load i8, i8* %arrayidx72, align 1
  %112 = load i8*, i8** %outptr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %112, i64 1
  store i8 %111, i8* %arrayidx73, align 1
  %113 = load i32, i32* %y, align 4
  %114 = load i32, i32* %cblue, align 4
  %add74 = add nsw i32 %113, %114
  %idxprom75 = sext i32 %add74 to i64
  %115 = load i8*, i8** %range_limit, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %115, i64 %idxprom75
  %116 = load i8, i8* %arrayidx76, align 1
  %117 = load i8*, i8** %outptr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %117, i64 2
  store i8 %116, i8* %arrayidx77, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 81
  %1 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8
  %2 = bitcast %struct.jpeg_upsampler* %1 to %struct.my_upsampler*
  store %struct.my_upsampler* %2, %struct.my_upsampler** %upsample, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i32 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %7 = bitcast %struct.jpeg_decompress_struct* %6 to %struct.jpeg_common_struct*
  %call = call i8* %5(%struct.jpeg_common_struct* %7, i32 1, i64 1024)
  %8 = bitcast i8* %call to i32*
  %9 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %9, i32 0, i32 2
  store i32* %8, i32** %Cr_r_tab, align 8
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 1
  %11 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem2, align 8
  %alloc_small3 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %11, i32 0, i32 0
  %12 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small3, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  %call4 = call i8* %12(%struct.jpeg_common_struct* %14, i32 1, i64 1024)
  %15 = bitcast i8* %call4 to i32*
  %16 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %16, i32 0, i32 3
  store i32* %15, i32** %Cb_b_tab, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 1
  %18 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem5, align 8
  %alloc_small6 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %18, i32 0, i32 0
  %19 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small6, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %21 = bitcast %struct.jpeg_decompress_struct* %20 to %struct.jpeg_common_struct*
  %call7 = call i8* %19(%struct.jpeg_common_struct* %21, i32 1, i64 2048)
  %22 = bitcast i8* %call7 to i64*
  %23 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %23, i32 0, i32 4
  store i64* %22, i64** %Cr_g_tab, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 1
  %25 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem8, align 8
  %alloc_small9 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %25, i32 0, i32 0
  %26 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small9, align 8
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %28 = bitcast %struct.jpeg_decompress_struct* %27 to %struct.jpeg_common_struct*
  %call10 = call i8* %26(%struct.jpeg_common_struct* %28, i32 1, i64 2048)
  %29 = bitcast i8* %call10 to i64*
  %30 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %30, i32 0, i32 5
  store i64* %29, i64** %Cb_g_tab, align 8
  store i32 0, i32* %i, align 4
  store i64 -128, i64* %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %31 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %31, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i64, i64* %x, align 8
  %mul = mul nsw i64 91881, %32
  %add = add nsw i64 %mul, 32768
  %shr = ashr i64 %add, 16
  %conv = trunc i64 %shr to i32
  %33 = load i32, i32* %i, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cr_r_tab11 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %34, i32 0, i32 2
  %35 = load i32*, i32** %Cr_r_tab11, align 8
  %arrayidx = getelementptr inbounds i32, i32* %35, i64 %idxprom
  store i32 %conv, i32* %arrayidx, align 4
  %36 = load i64, i64* %x, align 8
  %mul12 = mul nsw i64 116130, %36
  %add13 = add nsw i64 %mul12, 32768
  %shr14 = ashr i64 %add13, 16
  %conv15 = trunc i64 %shr14 to i32
  %37 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %37 to i64
  %38 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cb_b_tab17 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %38, i32 0, i32 3
  %39 = load i32*, i32** %Cb_b_tab17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %39, i64 %idxprom16
  store i32 %conv15, i32* %arrayidx18, align 4
  %40 = load i64, i64* %x, align 8
  %mul19 = mul nsw i64 -46802, %40
  %41 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %41 to i64
  %42 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cr_g_tab21 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %42, i32 0, i32 4
  %43 = load i64*, i64** %Cr_g_tab21, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %43, i64 %idxprom20
  store i64 %mul19, i64* %arrayidx22, align 8
  %44 = load i64, i64* %x, align 8
  %mul23 = mul nsw i64 -22554, %44
  %add24 = add nsw i64 %mul23, 32768
  %45 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %45 to i64
  %46 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %Cb_g_tab26 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %46, i32 0, i32 5
  %47 = load i64*, i64** %Cb_g_tab26, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %47, i64 %idxprom25
  store i64 %add24, i64* %arrayidx27, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  %49 = load i64, i64* %x, align 8
  %inc28 = add nsw i64 %49, 1
  store i64 %inc28, i64* %x, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @jcopy_sample_rows(i8**, i32, i8**, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
