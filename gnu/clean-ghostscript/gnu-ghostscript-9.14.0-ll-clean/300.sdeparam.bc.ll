; ModuleID = './sdeparam.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.dcte_scalars_s = type { i32, i32, i32, %struct.gs_param_string_s, i32, i32, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_item_s = type { i8*, i8, i16 }
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.stream_DCT_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.gs_const_string_s, float, i32, i32, %struct.gs_memory_s*, %union._jd, %struct.cmm_profile_s*, i8, i64, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%union._jd = type { %struct.jpeg_stream_data_s* }
%struct.jpeg_stream_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, %struct.gsfix_jmp_buf, %struct.gs_memory_s*, %struct.gs_memory_s*, i8*, i32, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.gsfix_jmp_buf = type { [208 x i8] }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gx_device_s = type opaque
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type opaque
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.jpeg_compress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, %struct.gsfix_jmp_buf, %struct.gs_memory_s*, %struct.gs_memory_s*, i8*, i32, i32, %struct.jpeg_compress_struct, %struct.jpeg_destination_mgr, [100 x i8], i32, i32 }
%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x i32], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32*, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder*, %struct.jpeg_scan_info*, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.gs_param_int_array_s = type { i32*, i32, i32 }

@st_jpeg_compress_data = external constant %struct.gs_memory_struct_type_s, align 8
@.str = private unnamed_addr constant [18 x i8] c"s_DCTE_get_params\00", align 1
@s_DCTE_template = external constant %struct.stream_template_s, align 8
@dcte_scalars_default = internal constant %struct.dcte_scalars_s { i32 0, i32 0, i32 -1, %struct.gs_param_string_s zeroinitializer, i32 0, i32 0, i32 0 }, align 8
@s_DCTE_param_items = internal constant [8 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8 2, i16 0 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8 2, i16 4 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8 2, i16 8 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8 5, i16 16 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8 1, i16 32 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8 2, i16 36 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8 2, i16 40 }, %struct.gs_param_item_s zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"HSamples\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"VSamples\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Columns\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Rows\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Colors\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Marker\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"NoMarker\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Resync\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Blend\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"dcte_get_samples\00", align 1

; Function Attrs: nounwind uwtable
define i32 @s_DCTE_get_params(%struct.gs_param_list_s* %plist, %struct.stream_DCT_state_s* %ss, i32 %all) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ss.addr = alloca %struct.stream_DCT_state_s*, align 8
  %all.addr = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %dcts_defaults = alloca %struct.stream_DCT_state_s, align 8
  %defaults = alloca %struct.stream_DCT_state_s*, align 8
  %params = alloca %struct.dcte_scalars_s, align 8
  %jcdp = alloca %struct.jpeg_compress_data_s*, align 8
  %code = alloca i32, align 4
  %jcdp_default = alloca %struct.jpeg_compress_data_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.stream_DCT_state_s* %ss, %struct.stream_DCT_state_s** %ss.addr, align 8, !tbaa !1
  store i32 %all, i32* %all.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.stream_DCT_state_s* %dcts_defaults to i8*
  call void @llvm.lifetime.start(i64 192, i8* %3) #1
  %4 = bitcast %struct.stream_DCT_state_s** %defaults to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.stream_DCT_state_s* null, %struct.stream_DCT_state_s** %defaults, align 8, !tbaa !1
  %5 = bitcast %struct.dcte_scalars_s* %params to i8*
  call void @llvm.lifetime.start(i64 48, i8* %5) #1
  %6 = bitcast %struct.jpeg_compress_data_s** %jcdp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %7, i32 0, i32 10
  %compress = bitcast %union._jd* %data to %struct.jpeg_compress_data_s**
  %8 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  store %struct.jpeg_compress_data_s* %8, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %all.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.12, label %if.then

if.then:                                          ; preds = %entry
  %11 = bitcast %struct.jpeg_compress_data_s** %jcdp_default to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 9
  %13 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !12
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i8* %13(%struct.gs_memory_s* %14, %struct.gs_memory_struct_type_s* @st_jpeg_compress_data, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #4
  %15 = bitcast i8* %call to %struct.jpeg_compress_data_s*
  store %struct.jpeg_compress_data_s* %15, %struct.jpeg_compress_data_s** %jcdp_default, align 8, !tbaa !1
  %16 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp_default, align 8, !tbaa !1
  %cmp = icmp eq %struct.jpeg_compress_data_s* %16, null
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store %struct.stream_DCT_state_s* %dcts_defaults, %struct.stream_DCT_state_s** %defaults, align 8, !tbaa !1
  %17 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 6), align 8, !tbaa !15
  %18 = bitcast %struct.stream_DCT_state_s* %dcts_defaults to %struct.stream_state_s*
  call void %17(%struct.stream_state_s* %18) #4
  %19 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp_default, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %dcts_defaults, i32 0, i32 10
  %compress3 = bitcast %union._jd* %data2 to %struct.jpeg_compress_data_s**
  store %struct.jpeg_compress_data_s* %19, %struct.jpeg_compress_data_s** %compress3, align 8, !tbaa !1
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %jpeg_memory = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %dcts_defaults, i32 0, i32 9
  store %struct.gs_memory_s* %20, %struct.gs_memory_s** %jpeg_memory, align 8, !tbaa !17
  %21 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp_default, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %21, i32 0, i32 3
  store %struct.gs_memory_s* %20, %struct.gs_memory_s** %memory4, align 8, !tbaa !18
  %call5 = call i32 @gs_jpeg_create_compress(%struct.stream_DCT_state_s* %dcts_defaults) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %data9 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %dcts_defaults, i32 0, i32 10
  %common = bitcast %union._jd* %data9 to %struct.jpeg_stream_data_s**
  %22 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common, align 8, !tbaa !1
  %Picky = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %22, i32 0, i32 6
  store i32 0, i32* %Picky, align 4, !tbaa !26
  %data10 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %dcts_defaults, i32 0, i32 10
  %common11 = bitcast %union._jd* %data10 to %struct.jpeg_stream_data_s**
  %23 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common11, align 8, !tbaa !1
  %Relax = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %23, i32 0, i32 7
  store i32 0, i32* %Relax, align 4, !tbaa !28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.7, %if.end.8, %if.then.1
  %24 = bitcast %struct.jpeg_compress_data_s** %jcdp_default to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.51 [
    i32 0, label %cleanup.cont
    i32 2, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.12

if.end.12:                                        ; preds = %cleanup.cont, %entry
  %25 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %25, i32 0, i32 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 7
  %26 = load i32, i32* %image_width, align 4, !tbaa !29
  %Columns = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 0
  store i32 %26, i32* %Columns, align 4, !tbaa !30
  %27 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo13 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %27, i32 0, i32 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo13, i32 0, i32 8
  %28 = load i32, i32* %image_height, align 4, !tbaa !33
  %Rows = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 1
  store i32 %28, i32* %Rows, align 4, !tbaa !34
  %29 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo14 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %29, i32 0, i32 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo14, i32 0, i32 9
  %30 = load i32, i32* %input_components, align 4, !tbaa !35
  %Colors = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 2
  store i32 %30, i32* %Colors, align 4, !tbaa !36
  %31 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss.addr, align 8, !tbaa !1
  %Markers = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %31, i32 0, i32 5
  %data15 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers, i32 0, i32 0
  %32 = load i8*, i8** %data15, align 8, !tbaa !37
  %Markers16 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 3
  %data17 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Markers16, i32 0, i32 0
  store i8* %32, i8** %data17, align 8, !tbaa !38
  %33 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss.addr, align 8, !tbaa !1
  %Markers18 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %33, i32 0, i32 5
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers18, i32 0, i32 1
  %34 = load i32, i32* %size, align 4, !tbaa !39
  %Markers19 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 3
  %size20 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Markers19, i32 0, i32 1
  store i32 %34, i32* %size20, align 4, !tbaa !40
  %Markers21 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 3
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Markers21, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !41
  %35 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss.addr, align 8, !tbaa !1
  %NoMarker = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %35, i32 0, i32 8
  %36 = load i32, i32* %NoMarker, align 4, !tbaa !42
  %NoMarker22 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 4
  store i32 %36, i32* %NoMarker22, align 4, !tbaa !43
  %37 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo23 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %37, i32 0, i32 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo23, i32 0, i32 36
  %38 = load i32, i32* %restart_interval, align 4, !tbaa !44
  %Resync = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 5
  store i32 %38, i32* %Resync, align 4, !tbaa !45
  %39 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %40 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss.addr, align 8, !tbaa !1
  %41 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %defaults, align 8, !tbaa !1
  %call24 = call i32 @s_DCT_get_params(%struct.gs_param_list_s* %39, %struct.stream_DCT_state_s* %40, %struct.stream_DCT_state_s* %41) #4
  store i32 %call24, i32* %code, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %42 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %43 = bitcast %struct.dcte_scalars_s* %params to i8*
  %call26 = call i32 @gs_param_write_items(%struct.gs_param_list_s* %42, i8* %43, i8* bitcast (%struct.dcte_scalars_s* @dcte_scalars_default to i8*), %struct.gs_param_item_s* getelementptr inbounds ([8 x %struct.gs_param_item_s], [8 x %struct.gs_param_item_s]* @s_DCTE_param_items, i32 0, i32 0)) #4
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.42, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %44 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %Colors29 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 2
  %45 = load i32, i32* %Colors29, align 4, !tbaa !36
  %46 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %48 = load i32, i32* %all.addr, align 4, !tbaa !5
  %call30 = call i32 @dcte_get_samples(%struct.gs_param_list_s* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %45, %struct.jpeg_compress_data_s* %46, %struct.gs_memory_s* %47, i32 0, i32 %48) #4
  store i32 %call30, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.42, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.28
  %49 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %Colors33 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 2
  %50 = load i32, i32* %Colors33, align 4, !tbaa !36
  %51 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %53 = load i32, i32* %all.addr, align 4, !tbaa !5
  %call34 = call i32 @dcte_get_samples(%struct.gs_param_list_s* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 %50, %struct.jpeg_compress_data_s* %51, %struct.gs_memory_s* %52, i32 1, i32 %53) #4
  store i32 %call34, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.42, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.32
  %54 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %55 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss.addr, align 8, !tbaa !1
  %56 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %defaults, align 8, !tbaa !1
  %call37 = call i32 @s_DCT_get_quantization_tables(%struct.gs_param_list_s* %54, %struct.stream_DCT_state_s* %55, %struct.stream_DCT_state_s* %56, i32 1) #4
  store i32 %call37, i32* %code, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then.42, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.36
  %57 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %58 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss.addr, align 8, !tbaa !1
  %59 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %defaults, align 8, !tbaa !1
  %call40 = call i32 @s_DCT_get_huffman_tables(%struct.gs_param_list_s* %57, %struct.stream_DCT_state_s* %58, %struct.stream_DCT_state_s* %59, i32 1) #4
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false.39, %lor.lhs.false.36, %lor.lhs.false.32, %lor.lhs.false.28, %lor.lhs.false, %if.end.12
  br label %do.body

do.body:                                          ; preds = %if.then.42
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.43

if.end.43:                                        ; preds = %do.end, %lor.lhs.false.39
  br label %fail

fail:                                             ; preds = %if.end.43, %cleanup
  %60 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %defaults, align 8, !tbaa !1
  %tobool44 = icmp ne %struct.stream_DCT_state_s* %60, null
  br i1 %tobool44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %fail
  %call46 = call i32 @gs_jpeg_destroy(%struct.stream_DCT_state_s* %dcts_defaults) #4
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs47, i32 0, i32 2
  %62 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !46
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %data48 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %dcts_defaults, i32 0, i32 10
  %compress49 = bitcast %union._jd* %data48 to %struct.jpeg_compress_data_s**
  %64 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress49, align 8, !tbaa !1
  %65 = bitcast %struct.jpeg_compress_data_s* %64 to i8*
  call void %62(%struct.gs_memory_s* %63, i8* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %fail
  %66 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

cleanup.51:                                       ; preds = %if.end.50, %cleanup
  %67 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast %struct.jpeg_compress_data_s** %jcdp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.dcte_scalars_s* %params to i8*
  call void @llvm.lifetime.end(i64 48, i8* %69) #1
  %70 = bitcast %struct.stream_DCT_state_s** %defaults to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.stream_DCT_state_s* %dcts_defaults to i8*
  call void @llvm.lifetime.end(i64 192, i8* %71) #1
  %72 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_jpeg_create_compress(%struct.stream_DCT_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @s_DCT_get_params(%struct.gs_param_list_s*, %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s*) #2

declare i32 @gs_param_write_items(%struct.gs_param_list_s*, i8*, i8*, %struct.gs_param_item_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @dcte_get_samples(%struct.gs_param_list_s* %plist, i8* %key, i32 %num_colors, %struct.jpeg_compress_data_s* %jcdp, %struct.gs_memory_s* %mem, i32 %is_vert, i32 %all) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %num_colors.addr = alloca i32, align 4
  %jcdp.addr = alloca %struct.jpeg_compress_data_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %is_vert.addr = alloca i32, align 4
  %all.addr = alloca i32, align 4
  %comp_info = alloca %struct.jpeg_component_info*, align 8
  %samples = alloca [4 x i32], align 16
  %write = alloca i32, align 4
  %i = alloca i32, align 4
  %data = alloca i32*, align 8
  %sa = alloca %struct.gs_param_int_array_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i32 %num_colors, i32* %num_colors.addr, align 4, !tbaa !5
  store %struct.jpeg_compress_data_s* %jcdp, %struct.jpeg_compress_data_s** %jcdp.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %is_vert, i32* %is_vert.addr, align 4, !tbaa !5
  store i32 %all, i32* %all.addr, align 4, !tbaa !5
  %0 = bitcast %struct.jpeg_component_info** %comp_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp.addr, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %1, i32 0, i32 8
  %comp_info1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 19
  %2 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info1, align 8, !tbaa !47
  store %struct.jpeg_component_info* %2, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %3 = bitcast [4 x i32]* %samples to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %write to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %all.addr, align 4, !tbaa !5
  store i32 %5, i32* %write, align 4, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %is_vert.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i64 %idxprom
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 3
  %12 = load i32, i32* %v_samp_factor, align 4, !tbaa !48
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %13 to i64
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i64 %idxprom2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx3, i32 0, i32 2
  %15 = load i32, i32* %h_samp_factor, align 4, !tbaa !50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %15, %cond.false ]
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %16 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %samples, i32 0, i64 %idxprom4
  store i32 %cond, i32* %arrayidx5, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %cond, 1
  %conv = zext i1 %cmp6 to i32
  %17 = load i32, i32* %write, align 4, !tbaa !5
  %or = or i32 %17, %conv
  store i32 %or, i32* %write, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %write, align 4, !tbaa !5
  %tobool7 = icmp ne i32 %19, 0
  br i1 %tobool7, label %if.then, label %if.end.16

if.then:                                          ; preds = %for.end
  %20 = bitcast i32** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %22 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !51
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %24 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %call = call i8* %22(%struct.gs_memory_s* %23, i32 %24, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)) #4
  %25 = bitcast i8* %call to i32*
  store i32* %25, i32** %data, align 8, !tbaa !1
  %26 = bitcast %struct.gs_param_int_array_s* %sa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %26) #1
  %27 = load i32*, i32** %data, align 8, !tbaa !1
  %cmp8 = icmp eq i32* %27, null
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %28 = load i32*, i32** %data, align 8, !tbaa !1
  %data11 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %sa, i32 0, i32 0
  store i32* %28, i32** %data11, align 8, !tbaa !52
  %29 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %size = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %sa, i32 0, i32 1
  store i32 %29, i32* %size, align 4, !tbaa !54
  %persistent = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %sa, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !55
  %30 = load i32*, i32** %data, align 8, !tbaa !1
  %31 = bitcast i32* %30 to i8*
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %samples, i32 0, i32 0
  %32 = bitcast i32* %arraydecay to i8*
  %33 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %conv12 = sext i32 %33 to i64
  %mul = mul i64 %conv12, 4
  %call13 = call i8* @memcpy(i8* %31, i8* %32, i64 %mul) #5
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call14 = call i32 @param_write_int_array(%struct.gs_param_list_s* %34, i8* %35, %struct.gs_param_int_array_s* %sa) #4
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.10
  %36 = bitcast %struct.gs_param_int_array_s* %sa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %36) #1
  %37 = bitcast i32** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %cleanup.17

if.end.16:                                        ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17

cleanup.17:                                       ; preds = %if.end.16, %cleanup
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %write to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast [4 x i32]* %samples to i8*
  call void @llvm.lifetime.end(i64 16, i8* %40) #1
  %41 = bitcast %struct.jpeg_component_info** %comp_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @s_DCT_get_quantization_tables(%struct.gs_param_list_s*, %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s*, i32) #2

declare i32 @s_DCT_get_huffman_tables(%struct.gs_param_list_s*, %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s*, i32) #2

declare i32 @gs_jpeg_destroy(%struct.stream_DCT_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @s_DCTE_put_params(%struct.gs_param_list_s* %plist, %struct.stream_DCT_state_s* %pdct) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdct.addr = alloca %struct.stream_DCT_state_s*, align 8
  %jcdp = alloca %struct.jpeg_compress_data_s*, align 8
  %params = alloca %struct.dcte_scalars_s, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %comp_info = alloca %struct.jpeg_component_info*, align 8
  %num_samples = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.stream_DCT_state_s* %pdct, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %0 = bitcast %struct.jpeg_compress_data_s** %jcdp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %1, i32 0, i32 10
  %compress = bitcast %union._jd* %data to %struct.jpeg_compress_data_s**
  %2 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  store %struct.jpeg_compress_data_s* %2, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %3 = bitcast %struct.dcte_scalars_s* %params to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.dcte_scalars_s* %params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct.dcte_scalars_s* @dcte_scalars_default to i8*), i64 48, i32 8, i1 false), !tbaa.struct !56
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = bitcast %struct.dcte_scalars_s* %params to i8*
  %call = call i32 @gs_param_read_items(%struct.gs_param_list_s* %7, i8* %8, %struct.gs_param_item_s* getelementptr inbounds ([8 x %struct.gs_param_item_s], [8 x %struct.gs_param_item_s]* @s_DCTE_param_items, i32 0, i32 0)) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end:                                           ; preds = %entry
  %Columns = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 0
  %11 = load i32, i32* %Columns, align 4, !tbaa !30
  %cmp1 = icmp sle i32 %11, 0
  br i1 %cmp1, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %Columns2 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 0
  %12 = load i32, i32* %Columns2, align 4, !tbaa !30
  %cmp3 = icmp sgt i32 %12, 65535
  br i1 %cmp3, label %if.then.27, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %Rows = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 1
  %13 = load i32, i32* %Rows, align 4, !tbaa !34
  %cmp5 = icmp sle i32 %13, 0
  br i1 %cmp5, label %if.then.27, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %Rows7 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 1
  %14 = load i32, i32* %Rows7, align 4, !tbaa !34
  %cmp8 = icmp sgt i32 %14, 65535
  br i1 %cmp8, label %if.then.27, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %Colors = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 2
  %15 = load i32, i32* %Colors, align 4, !tbaa !36
  %cmp10 = icmp sle i32 %15, 0
  br i1 %cmp10, label %if.then.27, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %Colors12 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 2
  %16 = load i32, i32* %Colors12, align 4, !tbaa !36
  %cmp13 = icmp eq i32 %16, 2
  br i1 %cmp13, label %if.then.27, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %Colors15 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 2
  %17 = load i32, i32* %Colors15, align 4, !tbaa !36
  %cmp16 = icmp sgt i32 %17, 4
  br i1 %cmp16, label %if.then.27, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %Resync = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 5
  %18 = load i32, i32* %Resync, align 4, !tbaa !45
  %cmp18 = icmp slt i32 %18, 0
  br i1 %cmp18, label %if.then.27, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.17
  %Resync20 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 5
  %19 = load i32, i32* %Resync20, align 4, !tbaa !45
  %cmp21 = icmp sgt i32 %19, 65535
  br i1 %cmp21, label %if.then.27, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.19
  %Blend = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 6
  %20 = load i32, i32* %Blend, align 4, !tbaa !57
  %cmp23 = icmp slt i32 %20, 0
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.22
  %Blend25 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 6
  %21 = load i32, i32* %Blend25, align 4, !tbaa !57
  %cmp26 = icmp sgt i32 %21, 1
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false.22, %lor.lhs.false.19, %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.28:                                        ; preds = %lor.lhs.false.24
  %22 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %Picky = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %22, i32 0, i32 6
  store i32 0, i32* %Picky, align 4, !tbaa !58
  %23 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %Relax = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %23, i32 0, i32 7
  store i32 0, i32* %Relax, align 4, !tbaa !59
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %25 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %call29 = call i32 @s_DCT_put_params(%struct.gs_param_list_s* %24, %struct.stream_DCT_state_s* %25) #4
  store i32 %call29, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.32:                                        ; preds = %if.end.28
  %Columns33 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 0
  %27 = load i32, i32* %Columns33, align 4, !tbaa !30
  %28 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %28, i32 0, i32 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 7
  store i32 %27, i32* %image_width, align 4, !tbaa !29
  %Rows34 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 1
  %29 = load i32, i32* %Rows34, align 4, !tbaa !34
  %30 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo35 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %30, i32 0, i32 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo35, i32 0, i32 8
  store i32 %29, i32* %image_height, align 4, !tbaa !33
  %Colors36 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 2
  %31 = load i32, i32* %Colors36, align 4, !tbaa !36
  %32 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo37 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %32, i32 0, i32 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo37, i32 0, i32 9
  store i32 %31, i32* %input_components, align 4, !tbaa !35
  %Colors38 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 2
  %33 = load i32, i32* %Colors38, align 4, !tbaa !36
  switch i32 %33, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.40
    i32 4, label %sw.bb.43
  ]

sw.bb:                                            ; preds = %if.end.32
  %34 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo39 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %34, i32 0, i32 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo39, i32 0, i32 10
  store i32 1, i32* %in_color_space, align 4, !tbaa !60
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end.32
  %35 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo41 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %35, i32 0, i32 8
  %in_color_space42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo41, i32 0, i32 10
  store i32 2, i32* %in_color_space42, align 4, !tbaa !60
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.32
  %36 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo44 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %36, i32 0, i32 8
  %in_color_space45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo44, i32 0, i32 10
  store i32 4, i32* %in_color_space45, align 4, !tbaa !60
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.32
  %37 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo46 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %37, i32 0, i32 8
  %in_color_space47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo46, i32 0, i32 10
  store i32 0, i32* %in_color_space47, align 4, !tbaa !60
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.43, %sw.bb.40, %sw.bb
  %38 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %call48 = call i32 @gs_jpeg_set_defaults(%struct.stream_DCT_state_s* %38) #4
  store i32 %call48, i32* %code, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %sw.epilog
  %39 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.51:                                        ; preds = %sw.epilog
  %40 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %41 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %call52 = call i32 @s_DCT_put_huffman_tables(%struct.gs_param_list_s* %40, %struct.stream_DCT_state_s* %41, i32 1) #4
  store i32 %call52, i32* %code, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  %42 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.55:                                        ; preds = %if.end.51
  %43 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %44 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %call56 = call i32 @s_DCT_put_quantization_tables(%struct.gs_param_list_s* %43, %struct.stream_DCT_state_s* %44, i32 1) #4
  store i32 %call56, i32* %code, align 4, !tbaa !5
  switch i32 %call56, label %sw.default.57 [
    i32 0, label %sw.epilog.75
    i32 1, label %sw.bb.58
  ]

sw.default.57:                                    ; preds = %if.end.55
  %45 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

sw.bb.58:                                         ; preds = %if.end.55
  %46 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %QFactor = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %46, i32 0, i32 6
  %47 = load float, float* %QFactor, align 4, !tbaa !61
  %conv = fpext float %47 to double
  %cmp59 = fcmp une double %conv, 1.000000e+00
  br i1 %cmp59, label %if.then.61, label %if.end.74

if.then.61:                                       ; preds = %sw.bb.58
  %48 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %49 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %QFactor62 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %49, i32 0, i32 6
  %50 = load float, float* %QFactor62, align 4, !tbaa !61
  %conv63 = fpext float %50 to double
  %cmp64 = fcmp olt double %conv63, 1.000000e+02
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.61
  %51 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %QFactor66 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %51, i32 0, i32 6
  %52 = load float, float* %QFactor66, align 4, !tbaa !61
  %conv67 = fpext float %52 to double
  br label %cond.end

cond.false:                                       ; preds = %if.then.61
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv67, %cond.true ], [ 1.000000e+02, %cond.false ]
  %mul = fmul double %cond, 1.000000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv68 = fptosi double %add to i32
  %call69 = call i32 @gs_jpeg_set_linear_quality(%struct.stream_DCT_state_s* %48, i32 %conv68, i32 1) #4
  store i32 %call69, i32* %code, align 4, !tbaa !5
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %53, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %cond.end
  %54 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.73:                                        ; preds = %cond.end
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %sw.bb.58
  br label %sw.epilog.75

sw.epilog.75:                                     ; preds = %if.end.74, %if.end.55
  %Colors76 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 2
  %55 = load i32, i32* %Colors76, align 4, !tbaa !36
  switch i32 %55, label %sw.default.118 [
    i32 3, label %sw.bb.77
    i32 4, label %sw.bb.94
  ]

sw.bb.77:                                         ; preds = %sw.epilog.75
  %56 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %ColorTransform = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %56, i32 0, i32 7
  %57 = load i32, i32* %ColorTransform, align 4, !tbaa !62
  %cmp78 = icmp slt i32 %57, 0
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %sw.bb.77
  %58 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %ColorTransform81 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %58, i32 0, i32 7
  store i32 1, i32* %ColorTransform81, align 4, !tbaa !62
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %sw.bb.77
  %59 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %ColorTransform83 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %59, i32 0, i32 7
  %60 = load i32, i32* %ColorTransform83, align 4, !tbaa !62
  %cmp84 = icmp eq i32 %60, 0
  br i1 %cmp84, label %if.then.86, label %if.else

if.then.86:                                       ; preds = %if.end.82
  %61 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %call87 = call i32 @gs_jpeg_set_colorspace(%struct.stream_DCT_state_s* %61, i32 2) #4
  store i32 %call87, i32* %code, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.then.86
  %62 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.91:                                        ; preds = %if.then.86
  br label %if.end.93

if.else:                                          ; preds = %if.end.82
  %63 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %ColorTransform92 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %63, i32 0, i32 7
  store i32 1, i32* %ColorTransform92, align 4, !tbaa !62
  br label %if.end.93

if.end.93:                                        ; preds = %if.else, %if.end.91
  br label %sw.epilog.120

sw.bb.94:                                         ; preds = %sw.epilog.75
  %64 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %ColorTransform95 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %64, i32 0, i32 7
  %65 = load i32, i32* %ColorTransform95, align 4, !tbaa !62
  %cmp96 = icmp slt i32 %65, 0
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %sw.bb.94
  %66 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %ColorTransform99 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %66, i32 0, i32 7
  store i32 0, i32* %ColorTransform99, align 4, !tbaa !62
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %sw.bb.94
  %67 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %ColorTransform101 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %67, i32 0, i32 7
  %68 = load i32, i32* %ColorTransform101, align 4, !tbaa !62
  %cmp102 = icmp ne i32 %68, 0
  br i1 %cmp102, label %if.then.104, label %if.else.111

if.then.104:                                      ; preds = %if.end.100
  %69 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %call105 = call i32 @gs_jpeg_set_colorspace(%struct.stream_DCT_state_s* %69, i32 5) #4
  store i32 %call105, i32* %code, align 4, !tbaa !5
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.then.104
  %70 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.109:                                       ; preds = %if.then.104
  %71 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %ColorTransform110 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %71, i32 0, i32 7
  store i32 2, i32* %ColorTransform110, align 4, !tbaa !62
  br label %if.end.117

if.else.111:                                      ; preds = %if.end.100
  %72 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %call112 = call i32 @gs_jpeg_set_colorspace(%struct.stream_DCT_state_s* %72, i32 4) #4
  store i32 %call112, i32* %code, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.else.111
  %73 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.116:                                       ; preds = %if.else.111
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.109
  br label %sw.epilog.120

sw.default.118:                                   ; preds = %sw.epilog.75
  %74 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %ColorTransform119 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %74, i32 0, i32 7
  store i32 0, i32* %ColorTransform119, align 4, !tbaa !62
  br label %sw.epilog.120

sw.epilog.120:                                    ; preds = %sw.default.118, %if.end.117, %if.end.93
  %Markers = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 3
  %data121 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Markers, i32 0, i32 0
  %75 = load i8*, i8** %data121, align 8, !tbaa !38
  %76 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %Markers122 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %76, i32 0, i32 5
  %data123 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers122, i32 0, i32 0
  store i8* %75, i8** %data123, align 8, !tbaa !37
  %Markers124 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 3
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %Markers124, i32 0, i32 1
  %77 = load i32, i32* %size, align 4, !tbaa !40
  %78 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %Markers125 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %78, i32 0, i32 5
  %size126 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers125, i32 0, i32 1
  store i32 %77, i32* %size126, align 4, !tbaa !39
  %NoMarker = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 4
  %79 = load i32, i32* %NoMarker, align 4, !tbaa !43
  %80 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %NoMarker127 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %80, i32 0, i32 8
  store i32 %79, i32* %NoMarker127, align 4, !tbaa !42
  %81 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %Colors128 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 2
  %82 = load i32, i32* %Colors128, align 4, !tbaa !36
  %83 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %call129 = call i32 @dcte_put_samples(%struct.gs_param_list_s* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %82, %struct.jpeg_compress_data_s* %83, i32 0) #4
  store i32 %call129, i32* %code, align 4, !tbaa !5
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.then.137, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %sw.epilog.120
  %84 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %Colors133 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 2
  %85 = load i32, i32* %Colors133, align 4, !tbaa !36
  %86 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %call134 = call i32 @dcte_put_samples(%struct.gs_param_list_s* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 %85, %struct.jpeg_compress_data_s* %86, i32 1) #4
  store i32 %call134, i32* %code, align 4, !tbaa !5
  %cmp135 = icmp slt i32 %call134, 0
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %lor.lhs.false.132, %sw.epilog.120
  %87 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.138:                                       ; preds = %lor.lhs.false.132
  %88 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo139 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %88, i32 0, i32 8
  %write_JFIF_header = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo139, i32 0, i32 38
  store i32 0, i32* %write_JFIF_header, align 4, !tbaa !63
  %89 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo140 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %89, i32 0, i32 8
  %write_Adobe_marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo140, i32 0, i32 44
  store i32 0, i32* %write_Adobe_marker, align 4, !tbaa !64
  %Resync141 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 5
  %90 = load i32, i32* %Resync141, align 4, !tbaa !45
  %91 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo142 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %91, i32 0, i32 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo142, i32 0, i32 36
  store i32 %90, i32* %restart_interval, align 4, !tbaa !44
  %92 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %pdct.addr, align 8, !tbaa !1
  %data143 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %92, i32 0, i32 10
  %common = bitcast %union._jd* %data143 to %struct.jpeg_stream_data_s**
  %93 = load %struct.jpeg_stream_data_s*, %struct.jpeg_stream_data_s** %common, align 8, !tbaa !1
  %Relax144 = getelementptr inbounds %struct.jpeg_stream_data_s, %struct.jpeg_stream_data_s* %93, i32 0, i32 7
  %94 = load i32, i32* %Relax144, align 4, !tbaa !28
  %cmp145 = icmp eq i32 %94, 0
  br i1 %cmp145, label %if.then.147, label %if.end.162

if.then.147:                                      ; preds = %if.end.138
  %95 = bitcast %struct.jpeg_component_info** %comp_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  %96 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo148 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %96, i32 0, i32 8
  %comp_info149 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo148, i32 0, i32 19
  %97 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info149, align 8, !tbaa !47
  store %struct.jpeg_component_info* %97, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %98 = bitcast i32* %num_samples to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %num_samples, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.147
  %99 = load i32, i32* %i, align 4, !tbaa !5
  %Colors150 = getelementptr inbounds %struct.dcte_scalars_s, %struct.dcte_scalars_s* %params, i32 0, i32 2
  %100 = load i32, i32* %Colors150, align 4, !tbaa !36
  %cmp151 = icmp slt i32 %99, %100
  br i1 %cmp151, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %101 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %101 to i64
  %102 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %102, i64 %idxprom
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 2
  %103 = load i32, i32* %h_samp_factor, align 4, !tbaa !50
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom153 = sext i32 %104 to i64
  %105 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %105, i64 %idxprom153
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx154, i32 0, i32 3
  %106 = load i32, i32* %v_samp_factor, align 4, !tbaa !48
  %mul155 = mul nsw i32 %103, %106
  %107 = load i32, i32* %num_samples, align 4, !tbaa !5
  %add156 = add nsw i32 %107, %mul155
  store i32 %add156, i32* %num_samples, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %108 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %108, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %109 = load i32, i32* %num_samples, align 4, !tbaa !5
  %cmp157 = icmp sgt i32 %109, 10
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %for.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.160:                                       ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.160, %if.then.159
  %110 = bitcast i32* %num_samples to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast %struct.jpeg_component_info** %comp_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.163 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.162

if.end.162:                                       ; preds = %cleanup.cont, %if.end.138
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

cleanup.163:                                      ; preds = %if.end.162, %cleanup, %if.then.137, %if.then.115, %if.then.108, %if.then.90, %if.then.72, %sw.default.57, %if.then.54, %if.then.50, %if.then.31, %if.then.27, %if.then
  %112 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast %struct.dcte_scalars_s* %params to i8*
  call void @llvm.lifetime.end(i64 48, i8* %114) #1
  %115 = bitcast %struct.jpeg_compress_data_s** %jcdp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = load i32, i32* %retval
  ret i32 %116
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_param_read_items(%struct.gs_param_list_s*, i8*, %struct.gs_param_item_s*) #2

declare i32 @s_DCT_put_params(%struct.gs_param_list_s*, %struct.stream_DCT_state_s*) #2

declare i32 @gs_jpeg_set_defaults(%struct.stream_DCT_state_s*) #2

declare i32 @s_DCT_put_huffman_tables(%struct.gs_param_list_s*, %struct.stream_DCT_state_s*, i32) #2

declare i32 @s_DCT_put_quantization_tables(%struct.gs_param_list_s*, %struct.stream_DCT_state_s*, i32) #2

declare i32 @gs_jpeg_set_linear_quality(%struct.stream_DCT_state_s*, i32, i32) #2

declare i32 @gs_jpeg_set_colorspace(%struct.stream_DCT_state_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @dcte_put_samples(%struct.gs_param_list_s* %plist, i8* %key, i32 %num_colors, %struct.jpeg_compress_data_s* %jcdp, i32 %is_vert) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %num_colors.addr = alloca i32, align 4
  %jcdp.addr = alloca %struct.jpeg_compress_data_s*, align 8
  %is_vert.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %comp_info = alloca %struct.jpeg_component_info*, align 8
  %samples = alloca [4 x i8], align 1
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i32 %num_colors, i32* %num_colors.addr, align 4, !tbaa !5
  store %struct.jpeg_compress_data_s* %jcdp, %struct.jpeg_compress_data_s** %jcdp.addr, align 8, !tbaa !1
  store i32 %is_vert, i32* %is_vert.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.jpeg_component_info** %comp_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp.addr, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %3, i32 0, i32 8
  %comp_info1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 19
  %4 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info1, align 8, !tbaa !47
  store %struct.jpeg_component_info* %4, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %5 = bitcast [4 x i8]* %samples to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %8 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %samples, i32 0, i32 0
  %call = call i32 @s_DCT_byte_params(%struct.gs_param_list_s* %6, i8* %7, i32 0, i32 %8, i8* %arraydecay) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %samples, i32 0, i64 3
  store i8 1, i8* %arrayidx, align 1, !tbaa !65
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %samples, i32 0, i64 2
  store i8 1, i8* %arrayidx2, align 1, !tbaa !65
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %samples, i32 0, i64 1
  store i8 1, i8* %arrayidx3, align 1, !tbaa !65
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %samples, i32 0, i64 0
  store i8 1, i8* %arrayidx4, align 1, !tbaa !65
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %samples, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx5, align 1, !tbaa !65
  %conv = zext i8 %13 to i32
  %cmp6 = icmp slt i32 %conv, 1
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %samples, i32 0, i64 %idxprom8
  %15 = load i8, i8* %arrayidx9, align 1, !tbaa !65
  %conv10 = zext i8 %15 to i32
  %cmp11 = icmp sgt i32 %conv10, 4
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %16 = load i32, i32* %is_vert.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %samples, i32 0, i64 %idxprom14
  %18 = load i8, i8* %arrayidx15, align 1, !tbaa !65
  %conv16 = zext i8 %18 to i32
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i64 %idxprom17
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx18, i32 0, i32 3
  store i32 %conv16, i32* %v_samp_factor, align 4, !tbaa !48
  br label %if.end.24

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds [4 x i8], [4 x i8]* %samples, i32 0, i64 %idxprom19
  %22 = load i8, i8* %arrayidx20, align 1, !tbaa !65
  %conv21 = zext i8 %22 to i32
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %23 to i64
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i64 %idxprom22
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx23, i32 0, i32 2
  store i32 %conv21, i32* %h_samp_factor, align 4, !tbaa !50
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then, %sw.default
  %26 = bitcast [4 x i8]* %samples to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.jpeg_component_info** %comp_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @param_write_int_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_int_array_s*) #2

declare i32 @s_DCT_byte_params(%struct.gs_param_list_s*, i8*, i32, i32, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !2, i64 8}
!8 = !{!"stream_DCT_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !9, i64 112, !10, i64 128, !6, i64 132, !6, i64 136, !2, i64 144, !3, i64 152, !2, i64 160, !3, i64 168, !11, i64 176, !6, i64 184, !6, i64 188}
!9 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!10 = !{!"float", !3, i64 0}
!11 = !{!"long", !3, i64 0}
!12 = !{!13, !2, i64 80}
!13 = !{!"gs_memory_s", !2, i64 0, !14, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!14 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!15 = !{!16, !2, i64 40}
!16 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!17 = !{!8, !2, i64 144}
!18 = !{!19, !2, i64 432}
!19 = !{!"jpeg_compress_data_s", !16, i64 0, !20, i64 56, !21, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !6, i64 456, !6, i64 460, !22, i64 464, !25, i64 1048, !3, i64 1088, !6, i64 1188, !6, i64 1192}
!20 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !3, i64 44, !6, i64 124, !11, i64 128, !2, i64 136, !6, i64 144, !2, i64 152, !6, i64 160, !6, i64 164}
!21 = !{!"", !3, i64 0}
!22 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !6, i64 36, !2, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !3, i64 60, !23, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !6, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !6, i64 308, !3, i64 312, !6, i64 316, !6, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !24, i64 332, !24, i64 334, !3, i64 336, !3, i64 340, !6, i64 344, !3, i64 348, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !3, i64 376, !6, i64 408, !6, i64 412, !6, i64 416, !3, i64 420, !6, i64 460, !6, i64 464, !6, i64 468, !6, i64 472, !6, i64 476, !2, i64 480, !6, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !6, i64 576}
!23 = !{!"double", !3, i64 0}
!24 = !{!"short", !3, i64 0}
!25 = !{!"jpeg_destination_mgr", !2, i64 0, !11, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!26 = !{!27, !6, i64 456}
!27 = !{!"jpeg_stream_data_s", !16, i64 0, !20, i64 56, !21, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !6, i64 456, !6, i64 460}
!28 = !{!27, !6, i64 460}
!29 = !{!19, !6, i64 512}
!30 = !{!31, !6, i64 0}
!31 = !{!"dcte_scalars_s", !6, i64 0, !6, i64 4, !6, i64 8, !32, i64 16, !6, i64 32, !6, i64 36, !6, i64 40}
!32 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!33 = !{!19, !6, i64 516}
!34 = !{!31, !6, i64 4}
!35 = !{!19, !6, i64 520}
!36 = !{!31, !6, i64 8}
!37 = !{!8, !2, i64 112}
!38 = !{!31, !2, i64 16}
!39 = !{!8, !6, i64 120}
!40 = !{!31, !6, i64 24}
!41 = !{!31, !6, i64 28}
!42 = !{!8, !6, i64 136}
!43 = !{!31, !6, i64 32}
!44 = !{!19, !6, i64 780}
!45 = !{!31, !6, i64 36}
!46 = !{!13, !2, i64 24}
!47 = !{!19, !2, i64 568}
!48 = !{!49, !6, i64 12}
!49 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !3, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !2, i64 80, !2, i64 88}
!50 = !{!49, !6, i64 8}
!51 = !{!13, !2, i64 88}
!52 = !{!53, !2, i64 0}
!53 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!54 = !{!53, !6, i64 8}
!55 = !{!53, !6, i64 12}
!56 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 16, i64 8, !1, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !5}
!57 = !{!31, !6, i64 40}
!58 = !{!19, !6, i64 456}
!59 = !{!19, !6, i64 460}
!60 = !{!19, !3, i64 524}
!61 = !{!8, !10, i64 128}
!62 = !{!8, !6, i64 132}
!63 = !{!19, !3, i64 788}
!64 = !{!19, !3, i64 800}
!65 = !{!3, !3, i64 0}
