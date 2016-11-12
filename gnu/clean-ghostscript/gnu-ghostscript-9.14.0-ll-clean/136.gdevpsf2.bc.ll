; ModuleID = './gdevpsf2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_font_type1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type1_data_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gx_path_s = type opaque
%struct.gs_text_enum_s = type opaque
%struct.gs_show_enum_s = type opaque
%struct.gs_state_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon, float, i32, %struct.anon.0, %struct.anon.1, i32, %struct.anon.2, i32, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7, [16 x i8], i32 }
%struct.gs_type1_data_procs_s = type { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type1_state_s = type opaque
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.anon = type { i32, [14 x float] }
%struct.anon.0 = type { i32, [14 x float] }
%struct.anon.1 = type { i32, [10 x float] }
%struct.anon.2 = type { i32, [10 x float] }
%struct.anon.3 = type { i32, [1 x float] }
%struct.anon.4 = type { i32, [1 x float] }
%struct.anon.5 = type { i32, [12 x float] }
%struct.anon.6 = type { i32, [12 x float] }
%struct.anon.7 = type { i32, [16 x float] }
%struct.cff_writer_s = type { i32, %struct.stream_s*, %struct.gs_font_base_s*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)*, i64, i64, %struct.cff_string_table_s, %struct.cff_string_table_s, %struct.gs_int_rect_s }
%struct.cff_string_table_s = type { %struct.cff_string_item_s*, i32, i32, i32, i32 }
%struct.cff_string_item_s = type { %struct.gs_const_string_s, i32 }
%struct.cff_glyph_subset_s = type { %struct.psf_outline_glyphs_s, i32, i32 }
%struct.psf_outline_glyphs_s = type { i64, i64*, i64*, i32 }
%struct.psf_glyph_enum_s = type { %struct.gs_font_s*, %struct.su_, i32, i64, i32 (%struct.psf_glyph_enum_s*, i64*)* }
%struct.su_ = type { %union.sus_, i32 }
%union.sus_ = type { i64* }
%struct.gs_font_cid0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_font_cid0_data_s }
%struct.gs_font_cid0_data_s = type { %struct.gs_font_cid_data_s, i64, %struct.gs_font_type1_s**, i32, i32, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i8* }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }

@default_defaultWidthX = constant i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"psf_write_type2_font\00", align 1
@cff_write_Top_common.fm_default = internal constant %struct.gs_matrix_s { float 0x3F50624DE0000000, float 0.000000e+00, float 0.000000e+00, float 0x3F50624DE0000000, float 0.000000e+00, float 0.000000e+00 }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"cff_write_Subrs_offsets\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cff_write_CharStrings_offsets\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\01\00\04\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"cff_write_Subrs\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"cff_write_CharStrings\00", align 1

; Function Attrs: nounwind uwtable
define i32 @psf_write_type2_font(%struct.stream_s* %s, %struct.gs_font_type1_s* %pfont, i32 %options, i64* %subset_glyphs, i32 %subset_size, %struct.gs_const_string_s* %alt_font_name, %struct.gs_int_rect_s* %FontBBox) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %options.addr = alloca i32, align 4
  %subset_glyphs.addr = alloca i64*, align 8
  %subset_size.addr = alloca i32, align 4
  %alt_font_name.addr = alloca %struct.gs_const_string_s*, align 8
  %FontBBox.addr = alloca %struct.gs_int_rect_s*, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %writer = alloca %struct.cff_writer_s, align 8
  %subset = alloca %struct.cff_glyph_subset_s, align 8
  %std_string_items = alloca %struct.cff_string_item_s*, align 8
  %string_items = alloca %struct.cff_string_item_s*, align 8
  %font_name = alloca %struct.gs_const_string_s, align 8
  %poss = alloca %struct.stream_s, align 8
  %charstrings_count = alloca i32, align 4
  %charstrings_size = alloca i32, align 4
  %subrs_count = alloca i32, align 4
  %subrs_size = alloca i32, align 4
  %gsubrs_count = alloca i32, align 4
  %gsubrs_size = alloca i32, align 4
  %encoding_size = alloca i32, align 4
  %charset_size = alloca i32, align 4
  %number_of_glyphs = alloca i32, align 4
  %number_of_strings = alloca i32, align 4
  %Top_size = alloca i32, align 4
  %GSubrs_offset = alloca i32, align 4
  %Encoding_offset = alloca i32, align 4
  %charset_offset = alloca i32, align 4
  %CharStrings_offset = alloca i32, align 4
  %Private_offset = alloca i32, align 4
  %Private_size = alloca i32, align 4
  %Subrs_offset = alloca i32, align 4
  %End_offset = alloca i32, align 4
  %j = alloca i32, align 4
  %genum = alloca %struct.psf_glyph_enum_s, align 8
  %glyph = alloca i64, align 8
  %start_pos = alloca i64, align 8
  %offset = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %encoded = alloca [256 x i64], align 16
  %num_enc = alloca i32, align 4
  %num_enc_chars = alloca i32, align 4
  %num_glyphs = alloca i32, align 4
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %str = alloca %struct.gs_const_string_s, align 8
  %ignore = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  store i64* %subset_glyphs, i64** %subset_glyphs.addr, align 8, !tbaa !1
  store i32 %subset_size, i32* %subset_size.addr, align 4, !tbaa !5
  store %struct.gs_const_string_s* %alt_font_name, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %FontBBox, %struct.gs_int_rect_s** %FontBBox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_type1_s* %1 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %2, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %3 = bitcast %struct.cff_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 112, i8* %3) #1
  %4 = bitcast %struct.cff_glyph_subset_s* %subset to i8*
  call void @llvm.lifetime.start(i64 40, i8* %4) #1
  %5 = bitcast %struct.cff_string_item_s** %std_string_items to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.cff_string_item_s** %string_items to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.gs_const_string_s* %font_name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.stream_s* %poss to i8*
  call void @llvm.lifetime.start(i64 352, i8* %8) #1
  %9 = bitcast i32* %charstrings_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %charstrings_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %subrs_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %subrs_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %gsubrs_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %gsubrs_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %encoding_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %charset_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %number_of_glyphs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %number_of_glyphs, align 4, !tbaa !5
  %18 = bitcast i32* %number_of_strings to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %Top_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 8388607, i32* %Top_size, align 4, !tbaa !5
  %20 = bitcast i32* %GSubrs_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %Encoding_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %charset_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %CharStrings_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %Private_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %Private_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 8388607, i32* %Private_size, align 4, !tbaa !5
  %26 = bitcast i32* %Subrs_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %End_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 8388607, i32* %End_offset, align 4, !tbaa !5
  %28 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.start(i64 48, i8* %29) #1
  %30 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = bitcast i64* %start_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gs_font_type1_s* %34 to %struct.gs_font_s*
  call void @psf_enumerate_list_begin(%struct.psf_glyph_enum_s* %genum, %struct.gs_font_s* %35, i64* null, i32 0, i32 0) #4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %genum, i64* %glyph) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i32, i32* %number_of_glyphs, align 4, !tbaa !5
  %inc = add i32 %36, 1
  store i32 %inc, i32* %number_of_glyphs, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %37 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %37, i32 0, i32 2
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %39 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !22
  %40 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %40, i32 0, i32 2
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %42 = load i32, i32* %number_of_glyphs, align 4, !tbaa !5
  %conv = zext i32 %42 to i64
  %mul = mul i64 %conv, 8
  %conv2 = trunc i64 %mul to i32
  %call3 = call i8* %39(%struct.gs_memory_s* %41, i32 %conv2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #4
  %43 = bitcast i8* %call3 to i64*
  %glyphs = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_data = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs, i32 0, i32 1
  store i64* %43, i64** %subset_data, align 8, !tbaa !25
  %44 = load i32, i32* %number_of_glyphs, align 4, !tbaa !5
  %add = add i32 %44, 40
  store i32 %add, i32* %number_of_strings, align 4, !tbaa !5
  %45 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %45, i32 0, i32 2
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !7
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %alloc_bytes6 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 7
  %47 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes6, align 8, !tbaa !22
  %48 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %48, i32 0, i32 2
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !7
  %50 = load i32, i32* %number_of_strings, align 4, !tbaa !5
  %add8 = add i32 500, %50
  %conv9 = zext i32 %add8 to i64
  %mul10 = mul i64 %conv9, 24
  %conv11 = trunc i64 %mul10 to i32
  %call12 = call i8* %47(%struct.gs_memory_s* %49, i32 %conv11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #4
  %51 = bitcast i8* %call12 to %struct.cff_string_item_s*
  store %struct.cff_string_item_s* %51, %struct.cff_string_item_s** %std_string_items, align 8, !tbaa !1
  %52 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %std_string_items, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.cff_string_item_s* %52, null
  br i1 %cmp13, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %glyphs15 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_data16 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs15, i32 0, i32 1
  %53 = load i64*, i64** %subset_data16, align 8, !tbaa !25
  %cmp17 = icmp eq i64* %53, null
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

if.end:                                           ; preds = %lor.lhs.false
  %54 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %std_string_items, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %54, i64 500
  store %struct.cff_string_item_s* %add.ptr, %struct.cff_string_item_s** %string_items, align 8, !tbaa !1
  %glyphs19 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %55 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %56 = load i64*, i64** %subset_glyphs.addr, align 8, !tbaa !1
  %57 = load i32, i32* %subset_size.addr, align 4, !tbaa !5
  %call20 = call i32 @psf_get_type1_glyphs(%struct.psf_outline_glyphs_s* %glyphs19, %struct.gs_font_type1_s* %55, i64* %56, i32 %57) #4
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %58 = load i32, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %58, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  %59 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

if.end.24:                                        ; preds = %if.end
  %glyphs25 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %notdef = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs25, i32 0, i32 0
  %60 = load i64, i64* %notdef, align 8, !tbaa !28
  %cmp26 = icmp eq i64 %60, 2147483647
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

if.end.29:                                        ; preds = %if.end.24
  %61 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and = and i32 %61, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %if.end.29
  %62 = load i32, i32* %options.addr, align 4, !tbaa !5
  %or = or i32 %62, 1
  store i32 %or, i32* %options.addr, align 4, !tbaa !5
  %63 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %63, i32 0, i32 11
  %64 = load i32, i32* %FontType, align 4, !tbaa !29
  %cmp31 = icmp ne i32 %64, 2
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.30
  %65 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %65, i32 0, i32 29
  %nominalWidthX = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 9
  store i32 0, i32* %nominalWidthX, align 4, !tbaa !30
  %66 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data34 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %66, i32 0, i32 29
  %defaultWidthX = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data34, i32 0, i32 8
  store i32 0, i32* %defaultWidthX, align 4, !tbaa !31
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.29
  %67 = load i32, i32* %options.addr, align 4, !tbaa !5
  %options37 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 0
  store i32 %67, i32* %options37, align 4, !tbaa !32
  call void @s_init(%struct.stream_s* %poss, %struct.gs_memory_s* null) #4
  call void @swrite_position_only(%struct.stream_s* %poss) #4
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  store %struct.stream_s* %poss, %struct.stream_s** %strm, align 8, !tbaa !37
  %68 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %pfont38 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 2
  store %struct.gs_font_base_s* %68, %struct.gs_font_base_s** %pfont38, align 8, !tbaa !38
  %glyph_data = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 3
  store i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)* @psf_type1_glyph_data, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)** %glyph_data, align 8, !tbaa !39
  %offset_size = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 4
  store i64 1, i64* %offset_size, align 8, !tbaa !40
  %69 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call39 = call i64 @stell(%struct.stream_s* %69) #4
  %start_pos40 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 5
  store i64 %call39, i64* %start_pos40, align 8, !tbaa !41
  %FontBBox41 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 8
  %70 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %FontBBox.addr, align 8, !tbaa !1
  %71 = bitcast %struct.gs_int_rect_s* %FontBBox41 to i8*
  %72 = bitcast %struct.gs_int_rect_s* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 16, i32 4, i1 false), !tbaa.struct !42
  %73 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %74 = bitcast %struct.gs_font_type1_s* %73 to %struct.gs_font_s*
  %glyphs42 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_glyphs43 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs42, i32 0, i32 2
  %75 = load i64*, i64** %subset_glyphs43, align 8, !tbaa !43
  %glyphs44 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_glyphs45 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs44, i32 0, i32 2
  %76 = load i64*, i64** %subset_glyphs45, align 8, !tbaa !43
  %tobool46 = icmp ne i64* %76, null
  br i1 %tobool46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.36
  %glyphs47 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_size48 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs47, i32 0, i32 3
  %77 = load i32, i32* %subset_size48, align 4, !tbaa !44
  br label %cond.end

cond.false:                                       ; preds = %if.end.36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %77, %cond.true ], [ 0, %cond.false ]
  call void @psf_enumerate_list_begin(%struct.psf_glyph_enum_s* %genum, %struct.gs_font_s* %74, i64* %75, i32 %cond, i32 0) #4
  %78 = bitcast [256 x i64]* %encoded to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %78) #1
  %79 = bitcast i32* %num_enc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %80 = bitcast i32* %num_enc_chars to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  store i32 0, i32* %num_enc_chars, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %81 = load i32, i32* %j, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %81, 256
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %82 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %procs51 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %82, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs51, i32 0, i32 4
  %83 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !45
  %84 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %85 = bitcast %struct.gs_font_type1_s* %84 to %struct.gs_font_s*
  %86 = load i32, i32* %j, align 4, !tbaa !5
  %conv52 = sext i32 %86 to i64
  %call53 = call i64 %83(%struct.gs_font_s* %85, i64 %conv52, i32 0) #4
  store i64 %call53, i64* %glyph, align 8, !tbaa !46
  %87 = load i64, i64* %glyph, align 8, !tbaa !46
  %cmp54 = icmp ne i64 %87, 2147483647
  br i1 %cmp54, label %land.lhs.true, label %if.end.74

land.lhs.true:                                    ; preds = %for.body
  %88 = load i64, i64* %glyph, align 8, !tbaa !46
  %glyphs56 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %notdef57 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs56, i32 0, i32 0
  %89 = load i64, i64* %notdef57, align 8, !tbaa !28
  %cmp58 = icmp ne i64 %88, %89
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.74

land.lhs.true.60:                                 ; preds = %land.lhs.true
  %glyphs61 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_glyphs62 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs61, i32 0, i32 2
  %90 = load i64*, i64** %subset_glyphs62, align 8, !tbaa !43
  %cmp63 = icmp eq i64* %90, null
  br i1 %cmp63, label %if.then.72, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %land.lhs.true.60
  %glyphs66 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_data67 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs66, i32 0, i32 1
  %91 = load i64*, i64** %subset_data67, align 8, !tbaa !25
  %glyphs68 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_size69 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs68, i32 0, i32 3
  %92 = load i32, i32* %subset_size69, align 4, !tbaa !44
  %93 = load i64, i64* %glyph, align 8, !tbaa !46
  %call70 = call i32 @psf_sorted_glyphs_include(i64* %91, i32 %92, i64 %93) #4
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %lor.lhs.false.65, %land.lhs.true.60
  %94 = load i64, i64* %glyph, align 8, !tbaa !46
  %95 = load i32, i32* %num_enc_chars, align 4, !tbaa !5
  %inc73 = add nsw i32 %95, 1
  store i32 %inc73, i32* %num_enc_chars, align 4, !tbaa !5
  %idxprom = sext i32 %95 to i64
  %arrayidx = getelementptr inbounds [256 x i64], [256 x i64]* %encoded, i32 0, i64 %idxprom
  store i64 %94, i64* %arrayidx, align 8, !tbaa !46
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %lor.lhs.false.65, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.74
  %96 = load i32, i32* %j, align 4, !tbaa !5
  %inc75 = add nsw i32 %96, 1
  store i32 %inc75, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %97 = load i32, i32* %num_enc_chars, align 4, !tbaa !5
  %num_encoded_chars = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 2
  store i32 %97, i32* %num_encoded_chars, align 4, !tbaa !47
  %arraydecay = getelementptr inbounds [256 x i64], [256 x i64]* %encoded, i32 0, i32 0
  %98 = load i32, i32* %num_enc_chars, align 4, !tbaa !5
  %call76 = call i32 @psf_sort_glyphs(i64* %arraydecay, i32 %98) #4
  store i32 %call76, i32* %num_enc, align 4, !tbaa !5
  %num_encoded = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 1
  store i32 %call76, i32* %num_encoded, align 4, !tbaa !48
  %glyphs77 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_glyphs78 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs77, i32 0, i32 2
  %99 = load i64*, i64** %subset_glyphs78, align 8, !tbaa !43
  %tobool79 = icmp ne i64* %99, null
  br i1 %tobool79, label %if.end.109, label %if.then.80

if.then.80:                                       ; preds = %for.end
  %100 = bitcast i32* %num_glyphs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  store i32 0, i32* %num_glyphs, align 4, !tbaa !5
  call void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s* %genum) #4
  br label %while.cond.81

while.cond.81:                                    ; preds = %if.end.98, %if.then.80
  %call82 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %genum, i64* %glyph) #4
  store i32 %call82, i32* %code, align 4, !tbaa !5
  %cmp83 = icmp ne i32 %call82, 1
  br i1 %cmp83, label %while.body.85, label %while.end.99

while.body.85:                                    ; preds = %while.cond.81
  %101 = load i32, i32* %code, align 4, !tbaa !5
  %cmp86 = icmp eq i32 %101, 0
  br i1 %cmp86, label %if.then.88, label %if.end.98

if.then.88:                                       ; preds = %while.body.85
  %102 = load i32, i32* %num_glyphs, align 4, !tbaa !5
  %103 = load i32, i32* %number_of_glyphs, align 4, !tbaa !5
  %cmp89 = icmp eq i32 %102, %103
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.then.88
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %if.then.88
  %104 = load i64, i64* %glyph, align 8, !tbaa !46
  %105 = load i32, i32* %num_glyphs, align 4, !tbaa !5
  %inc93 = add nsw i32 %105, 1
  store i32 %inc93, i32* %num_glyphs, align 4, !tbaa !5
  %idxprom94 = sext i32 %105 to i64
  %glyphs95 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_data96 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs95, i32 0, i32 1
  %106 = load i64*, i64** %subset_data96, align 8, !tbaa !25
  %arrayidx97 = getelementptr inbounds i64, i64* %106, i64 %idxprom94
  store i64 %104, i64* %arrayidx97, align 8, !tbaa !46
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.92, %while.body.85
  br label %while.cond.81

while.end.99:                                     ; preds = %while.cond.81
  %glyphs100 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_data101 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs100, i32 0, i32 1
  %107 = load i64*, i64** %subset_data101, align 8, !tbaa !25
  %108 = load i32, i32* %num_glyphs, align 4, !tbaa !5
  %call102 = call i32 @psf_sort_glyphs(i64* %107, i32 %108) #4
  %glyphs103 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_size104 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs103, i32 0, i32 3
  store i32 %call102, i32* %subset_size104, align 4, !tbaa !44
  %glyphs105 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_data106 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs105, i32 0, i32 1
  %109 = load i64*, i64** %subset_data106, align 8, !tbaa !25
  %glyphs107 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_glyphs108 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs107, i32 0, i32 2
  store i64* %109, i64** %subset_glyphs108, align 8, !tbaa !43
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.99, %if.then.91
  %110 = bitcast i32* %num_glyphs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.148 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.109

if.end.109:                                       ; preds = %cleanup.cont, %for.end
  %111 = bitcast i32* %from to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #1
  %glyphs110 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_size111 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs110, i32 0, i32 3
  %112 = load i32, i32* %subset_size111, align 4, !tbaa !44
  store i32 %112, i32* %from, align 4, !tbaa !5
  %113 = bitcast i32* %to to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  %114 = load i32, i32* %from, align 4, !tbaa !5
  store i32 %114, i32* %to, align 4, !tbaa !5
  br label %while.cond.112

while.cond.112:                                   ; preds = %if.end.134, %if.end.109
  %115 = load i32, i32* %from, align 4, !tbaa !5
  %cmp113 = icmp sgt i32 %115, 0
  br i1 %cmp113, label %while.body.115, label %while.end.135

while.body.115:                                   ; preds = %while.cond.112
  %116 = load i32, i32* %from, align 4, !tbaa !5
  %dec = add nsw i32 %116, -1
  store i32 %dec, i32* %from, align 4, !tbaa !5
  %idxprom116 = sext i32 %dec to i64
  %glyphs117 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_data118 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs117, i32 0, i32 1
  %117 = load i64*, i64** %subset_data118, align 8, !tbaa !25
  %arrayidx119 = getelementptr inbounds i64, i64* %117, i64 %idxprom116
  %118 = load i64, i64* %arrayidx119, align 8, !tbaa !46
  store i64 %118, i64* %glyph, align 8, !tbaa !46
  %119 = load i64, i64* %glyph, align 8, !tbaa !46
  %glyphs120 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %notdef121 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs120, i32 0, i32 0
  %120 = load i64, i64* %notdef121, align 8, !tbaa !28
  %cmp122 = icmp ne i64 %119, %120
  br i1 %cmp122, label %land.lhs.true.124, label %if.end.134

land.lhs.true.124:                                ; preds = %while.body.115
  %arraydecay125 = getelementptr inbounds [256 x i64], [256 x i64]* %encoded, i32 0, i32 0
  %121 = load i32, i32* %num_enc, align 4, !tbaa !5
  %122 = load i64, i64* %glyph, align 8, !tbaa !46
  %call126 = call i32 @psf_sorted_glyphs_include(i64* %arraydecay125, i32 %121, i64 %122) #4
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.end.134, label %if.then.128

if.then.128:                                      ; preds = %land.lhs.true.124
  %123 = load i64, i64* %glyph, align 8, !tbaa !46
  %124 = load i32, i32* %to, align 4, !tbaa !5
  %dec129 = add nsw i32 %124, -1
  store i32 %dec129, i32* %to, align 4, !tbaa !5
  %idxprom130 = sext i32 %dec129 to i64
  %glyphs131 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_data132 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs131, i32 0, i32 1
  %125 = load i64*, i64** %subset_data132, align 8, !tbaa !25
  %arrayidx133 = getelementptr inbounds i64, i64* %125, i64 %idxprom130
  store i64 %123, i64* %arrayidx133, align 8, !tbaa !46
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.128, %land.lhs.true.124, %while.body.115
  br label %while.cond.112

while.end.135:                                    ; preds = %while.cond.112
  %126 = bitcast i32* %to to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %from to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %glyphs136 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %notdef137 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs136, i32 0, i32 0
  %128 = load i64, i64* %notdef137, align 8, !tbaa !28
  %glyphs138 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_data139 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs138, i32 0, i32 1
  %129 = load i64*, i64** %subset_data139, align 8, !tbaa !25
  %arrayidx140 = getelementptr inbounds i64, i64* %129, i64 0
  store i64 %128, i64* %arrayidx140, align 8, !tbaa !46
  %glyphs141 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_data142 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs141, i32 0, i32 1
  %130 = load i64*, i64** %subset_data142, align 8, !tbaa !25
  %add.ptr143 = getelementptr inbounds i64, i64* %130, i64 1
  %131 = bitcast i64* %add.ptr143 to i8*
  %arraydecay144 = getelementptr inbounds [256 x i64], [256 x i64]* %encoded, i32 0, i32 0
  %132 = bitcast i64* %arraydecay144 to i8*
  %133 = load i32, i32* %num_enc, align 4, !tbaa !5
  %conv145 = sext i32 %133 to i64
  %mul146 = mul i64 8, %conv145
  %call147 = call i8* @memcpy(i8* %131, i8* %132, i64 %mul146) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.148

cleanup.148:                                      ; preds = %while.end.135, %cleanup
  %134 = bitcast i32* %num_enc_chars to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %num_enc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast [256 x i64]* %encoded to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %136) #1
  %cleanup.dest.151 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.151, label %cleanup.374 [
    i32 0, label %cleanup.cont.152
  ]

cleanup.cont.152:                                 ; preds = %cleanup.148
  %137 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %tobool153 = icmp ne %struct.gs_const_string_s* %137, null
  br i1 %tobool153, label %if.then.154, label %if.else

if.then.154:                                      ; preds = %cleanup.cont.152
  %138 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %139 = bitcast %struct.gs_const_string_s* %font_name to i8*
  %140 = bitcast %struct.gs_const_string_s* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %139, i8* %140, i64 16, i32 8, i1 false), !tbaa.struct !49
  br label %if.end.160

if.else:                                          ; preds = %cleanup.cont.152
  %141 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %font_name155 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %141, i32 0, i32 22
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name155, i32 0, i32 0
  %arraydecay156 = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  %data157 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 0
  store i8* %arraydecay156, i8** %data157, align 8, !tbaa !50
  %142 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %font_name158 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %142, i32 0, i32 22
  %size = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name158, i32 0, i32 1
  %143 = load i32, i32* %size, align 4, !tbaa !52
  %size159 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 1
  store i32 %143, i32* %size159, align 4, !tbaa !53
  br label %if.end.160

if.end.160:                                       ; preds = %if.else, %if.then.154
  %std_strings = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 6
  %144 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %std_string_items, align 8, !tbaa !1
  call void @cff_string_table_init(%struct.cff_string_table_s* %std_strings, %struct.cff_string_item_s* %144, i32 500) #4
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.172, %if.end.160
  %145 = load i32, i32* %j, align 4, !tbaa !5
  %conv162 = sext i32 %145 to i64
  %call163 = call i64 @gs_c_known_encode(i64 %conv162, i32 10) #4
  store i64 %call163, i64* %glyph, align 8, !tbaa !46
  %cmp164 = icmp ne i64 %call163, 2147483647
  br i1 %cmp164, label %for.body.166, label %for.end.174

for.body.166:                                     ; preds = %for.cond.161
  %146 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %146) #1
  %147 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.start(i64 4, i8* %147) #1
  %148 = load i64, i64* %glyph, align 8, !tbaa !46
  %call167 = call i32 @gs_c_glyph_name(i64 %148, %struct.gs_const_string_s* %str) #4
  %std_strings168 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 6
  %data169 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %149 = load i8*, i8** %data169, align 8, !tbaa !50
  %size170 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %150 = load i32, i32* %size170, align 4, !tbaa !53
  %call171 = call i32 @cff_string_index(%struct.cff_string_table_s* %std_strings168, i8* %149, i32 %150, i32 1, i32* %ignore) #4
  %151 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %152) #1
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.body.166
  %153 = load i32, i32* %j, align 4, !tbaa !5
  %inc173 = add nsw i32 %153, 1
  store i32 %inc173, i32* %j, align 4, !tbaa !5
  br label %for.cond.161

for.end.174:                                      ; preds = %for.cond.161
  %strings = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 7
  %154 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %string_items, align 8, !tbaa !1
  %155 = load i32, i32* %number_of_strings, align 4, !tbaa !5
  call void @cff_string_table_init(%struct.cff_string_table_s* %strings, %struct.cff_string_item_s* %154, i32 %155) #4
  call void @cff_write_Top_font(%struct.cff_writer_s* %writer, i32 0, i32 0, i32 0, i32 0, i32 0) #4
  %156 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %157 = bitcast %struct.gs_font_type1_s* %156 to %struct.gs_font_s*
  %glyphs175 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_data176 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs175, i32 0, i32 1
  %158 = load i64*, i64** %subset_data176, align 8, !tbaa !25
  %glyphs177 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_size178 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs177, i32 0, i32 3
  %159 = load i32, i32* %subset_size178, align 4, !tbaa !44
  call void @psf_enumerate_list_begin(%struct.psf_glyph_enum_s* %genum, %struct.gs_font_s* %157, i64* %158, i32 %159, i32 0) #4
  br label %while.cond.179

while.cond.179:                                   ; preds = %if.end.192, %for.end.174
  %call180 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %genum, i64* %glyph) #4
  store i32 %call180, i32* %code, align 4, !tbaa !5
  %cmp181 = icmp ne i32 %call180, 1
  br i1 %cmp181, label %while.body.183, label %while.end.193

while.body.183:                                   ; preds = %while.cond.179
  %160 = load i32, i32* %code, align 4, !tbaa !5
  %cmp184 = icmp eq i32 %160, 0
  br i1 %cmp184, label %if.then.186, label %if.end.192

if.then.186:                                      ; preds = %while.body.183
  %161 = load i64, i64* %glyph, align 8, !tbaa !46
  %call187 = call i32 @cff_glyph_sid(%struct.cff_writer_s* %writer, i64 %161) #4
  store i32 %call187, i32* %code, align 4, !tbaa !5
  %162 = load i32, i32* %code, align 4, !tbaa !5
  %cmp188 = icmp slt i32 %162, 0
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.then.186
  %163 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %163, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

if.end.191:                                       ; preds = %if.then.186
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %while.body.183
  br label %while.cond.179

while.end.193:                                    ; preds = %while.cond.179
  %164 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and194 = and i32 %164, 8
  %cmp195 = icmp ne i32 %and194, 0
  br i1 %cmp195, label %if.then.200, label %lor.lhs.false.197

lor.lhs.false.197:                                ; preds = %while.end.193
  %165 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %call198 = call i32 @cff_convert_charstrings(%struct.cff_writer_s* %writer, %struct.gs_font_base_s* %165) #4
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %if.then.200, label %if.else.201

if.then.200:                                      ; preds = %lor.lhs.false.197, %while.end.193
  store i32 0, i32* %gsubrs_count, align 4, !tbaa !5
  store i32 0, i32* %gsubrs_size, align 4, !tbaa !5
  br label %if.end.203

if.else.201:                                      ; preds = %lor.lhs.false.197
  %166 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %call202 = call i32 @cff_write_Subrs_offsets(%struct.cff_writer_s* %writer, i32* %gsubrs_count, %struct.gs_font_type1_s* %166, i32 1) #4
  store i32 %call202, i32* %gsubrs_size, align 4, !tbaa !5
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.201, %if.then.200
  %num_encoded204 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 1
  %167 = load i32, i32* %num_encoded204, align 4, !tbaa !48
  %num_encoded_chars205 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 2
  %168 = load i32, i32* %num_encoded_chars205, align 4, !tbaa !47
  %call206 = call i32 @cff_Encoding_size(i32 %167, i32 %168) #4
  store i32 %call206, i32* %encoding_size, align 4, !tbaa !5
  %glyphs207 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_size208 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs207, i32 0, i32 3
  %169 = load i32, i32* %subset_size208, align 4, !tbaa !44
  %sub = sub i32 %169, 1
  %mul209 = mul i32 %sub, 2
  %add210 = add i32 1, %mul209
  store i32 %add210, i32* %charset_size, align 4, !tbaa !5
  %call211 = call i32 @cff_write_CharStrings_offsets(%struct.cff_writer_s* %writer, %struct.psf_glyph_enum_s* %genum, i32* %charstrings_count) #4
  store i32 %call211, i32* %code, align 4, !tbaa !5
  %170 = load i32, i32* %code, align 4, !tbaa !5
  %cmp212 = icmp slt i32 %170, 0
  br i1 %cmp212, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %if.end.203
  %171 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %171, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

if.end.215:                                       ; preds = %if.end.203
  %172 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %172, i32* %charstrings_size, align 4, !tbaa !5
  %173 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %call216 = call i32 @cff_convert_charstrings(%struct.cff_writer_s* %writer, %struct.gs_font_base_s* %173) #4
  %tobool217 = icmp ne i32 %call216, 0
  br i1 %tobool217, label %cond.true.218, label %cond.false.219

cond.true.218:                                    ; preds = %if.end.215
  br label %cond.end.221

cond.false.219:                                   ; preds = %if.end.215
  %174 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %call220 = call i32 @cff_write_Subrs_offsets(%struct.cff_writer_s* %writer, i32* %subrs_count, %struct.gs_font_type1_s* %174, i32 0) #4
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.219, %cond.true.218
  %cond222 = phi i32 [ 0, %cond.true.218 ], [ %call220, %cond.false.219 ]
  store i32 %cond222, i32* %subrs_size, align 4, !tbaa !5
  br label %iter

iter:                                             ; preds = %if.else.363, %cond.end.221
  call void @swrite_position_only(%struct.stream_s* %poss) #4
  %strm223 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  store %struct.stream_s* %poss, %struct.stream_s** %strm223, align 8, !tbaa !37
  %size224 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 1
  %175 = load i32, i32* %size224, align 4, !tbaa !53
  %call225 = call i32 @cff_Index_size(i32 1, i32 %175) #4
  %add226 = add i32 4, %call225
  %176 = load i32, i32* %Top_size, align 4, !tbaa !5
  %call227 = call i32 @cff_Index_size(i32 1, i32 %176) #4
  %add228 = add i32 %add226, %call227
  %strings229 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 7
  %count = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %strings229, i32 0, i32 1
  %177 = load i32, i32* %count, align 4, !tbaa !54
  %strings230 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 7
  %total = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %strings230, i32 0, i32 3
  %178 = load i32, i32* %total, align 4, !tbaa !55
  %call231 = call i32 @cff_Index_size(i32 %177, i32 %178) #4
  %add232 = add i32 %add228, %call231
  store i32 %add232, i32* %GSubrs_offset, align 4, !tbaa !5
  %179 = load i32, i32* %GSubrs_offset, align 4, !tbaa !5
  %180 = load i32, i32* %gsubrs_count, align 4, !tbaa !5
  %181 = load i32, i32* %gsubrs_size, align 4, !tbaa !5
  %call233 = call i32 @cff_Index_size(i32 %180, i32 %181) #4
  %add234 = add i32 %179, %call233
  store i32 %add234, i32* %Encoding_offset, align 4, !tbaa !5
  %182 = load i32, i32* %Encoding_offset, align 4, !tbaa !5
  %183 = load i32, i32* %encoding_size, align 4, !tbaa !5
  %add235 = add i32 %182, %183
  store i32 %add235, i32* %charset_offset, align 4, !tbaa !5
  %184 = load i32, i32* %charset_offset, align 4, !tbaa !5
  %185 = load i32, i32* %charset_size, align 4, !tbaa !5
  %add236 = add i32 %184, %185
  store i32 %add236, i32* %CharStrings_offset, align 4, !tbaa !5
  %186 = load i32, i32* %CharStrings_offset, align 4, !tbaa !5
  %187 = load i32, i32* %charstrings_count, align 4, !tbaa !5
  %188 = load i32, i32* %charstrings_size, align 4, !tbaa !5
  %call237 = call i32 @cff_Index_size(i32 %187, i32 %188) #4
  %add238 = add i32 %186, %call237
  store i32 %add238, i32* %Private_offset, align 4, !tbaa !5
  %189 = load i32, i32* %Private_size, align 4, !tbaa !5
  store i32 %189, i32* %Subrs_offset, align 4, !tbaa !5
  br label %write

write:                                            ; preds = %if.then.360, %iter
  %strm239 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %190 = load %struct.stream_s*, %struct.stream_s** %strm239, align 8, !tbaa !37
  %call240 = call i32 @check_ioerror(%struct.stream_s* %190) #4
  %tobool241 = icmp ne i32 %call240, 0
  br i1 %tobool241, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %write
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

if.end.243:                                       ; preds = %write
  %strm244 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %191 = load %struct.stream_s*, %struct.stream_s** %strm244, align 8, !tbaa !37
  %call245 = call i64 @stell(%struct.stream_s* %191) #4
  store i64 %call245, i64* %start_pos, align 8, !tbaa !46
  %192 = load i32, i32* %End_offset, align 4, !tbaa !5
  %call246 = call i32 @cff_write_header(%struct.cff_writer_s* %writer, i32 %192) #4
  %size247 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 1
  %193 = load i32, i32* %size247, align 4, !tbaa !53
  call void @cff_put_Index_header(%struct.cff_writer_s* %writer, i32 1, i32 %193) #4
  %size248 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 1
  %194 = load i32, i32* %size248, align 4, !tbaa !53
  %add249 = add i32 %194, 1
  call void @put_offset(%struct.cff_writer_s* %writer, i32 %add249) #4
  %strm250 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %195 = load %struct.stream_s*, %struct.stream_s** %strm250, align 8, !tbaa !37
  %data251 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 0
  %196 = load i8*, i8** %data251, align 8, !tbaa !50
  %size252 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 1
  %197 = load i32, i32* %size252, align 4, !tbaa !53
  %call253 = call i32 @put_bytes(%struct.stream_s* %195, i8* %196, i32 %197) #4
  %198 = load i32, i32* %Top_size, align 4, !tbaa !5
  call void @cff_put_Index_header(%struct.cff_writer_s* %writer, i32 1, i32 %198) #4
  %199 = load i32, i32* %Top_size, align 4, !tbaa !5
  %add254 = add i32 %199, 1
  call void @put_offset(%struct.cff_writer_s* %writer, i32 %add254) #4
  %strm255 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %200 = load %struct.stream_s*, %struct.stream_s** %strm255, align 8, !tbaa !37
  %call256 = call i64 @stell(%struct.stream_s* %200) #4
  %201 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub257 = sub nsw i64 %call256, %201
  %conv258 = trunc i64 %sub257 to i32
  store i32 %conv258, i32* %offset, align 4, !tbaa !5
  %202 = load i32, i32* %Encoding_offset, align 4, !tbaa !5
  %203 = load i32, i32* %charset_offset, align 4, !tbaa !5
  %204 = load i32, i32* %CharStrings_offset, align 4, !tbaa !5
  %205 = load i32, i32* %Private_offset, align 4, !tbaa !5
  %206 = load i32, i32* %Private_size, align 4, !tbaa !5
  call void @cff_write_Top_font(%struct.cff_writer_s* %writer, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206) #4
  %strm259 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %207 = load %struct.stream_s*, %struct.stream_s** %strm259, align 8, !tbaa !37
  %call260 = call i64 @stell(%struct.stream_s* %207) #4
  %208 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub261 = sub nsw i64 %call260, %208
  %209 = load i32, i32* %offset, align 4, !tbaa !5
  %conv262 = zext i32 %209 to i64
  %sub263 = sub nsw i64 %sub261, %conv262
  %conv264 = trunc i64 %sub263 to i32
  store i32 %conv264, i32* %Top_size, align 4, !tbaa !5
  %strings265 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 7
  call void @cff_put_Index(%struct.cff_writer_s* %writer, %struct.cff_string_table_s* %strings265) #4
  %strm266 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %210 = load %struct.stream_s*, %struct.stream_s** %strm266, align 8, !tbaa !37
  %call267 = call i32 @check_ioerror(%struct.stream_s* %210) #4
  %tobool268 = icmp ne i32 %call267, 0
  br i1 %tobool268, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.end.243
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

if.end.270:                                       ; preds = %if.end.243
  %strm271 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %211 = load %struct.stream_s*, %struct.stream_s** %strm271, align 8, !tbaa !37
  %call272 = call i64 @stell(%struct.stream_s* %211) #4
  %212 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub273 = sub nsw i64 %call272, %212
  %conv274 = trunc i64 %sub273 to i32
  store i32 %conv274, i32* %offset, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.end.270
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %213 = load i32, i32* %offset, align 4, !tbaa !5
  %214 = load i32, i32* %GSubrs_offset, align 4, !tbaa !5
  %cmp275 = icmp ugt i32 %213, %214
  br i1 %cmp275, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

if.end.278:                                       ; preds = %do.end
  %215 = load i32, i32* %offset, align 4, !tbaa !5
  store i32 %215, i32* %GSubrs_offset, align 4, !tbaa !5
  %216 = load i32, i32* %gsubrs_count, align 4, !tbaa !5
  %cmp279 = icmp eq i32 %216, 0
  br i1 %cmp279, label %if.then.284, label %lor.lhs.false.281

lor.lhs.false.281:                                ; preds = %if.end.278
  %217 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %call282 = call i32 @cff_convert_charstrings(%struct.cff_writer_s* %writer, %struct.gs_font_base_s* %217) #4
  %tobool283 = icmp ne i32 %call282, 0
  br i1 %tobool283, label %if.then.284, label %if.else.285

if.then.284:                                      ; preds = %lor.lhs.false.281, %if.end.278
  call void @cff_put_Index_header(%struct.cff_writer_s* %writer, i32 0, i32 0) #4
  br label %if.end.286

if.else.285:                                      ; preds = %lor.lhs.false.281
  %218 = load i32, i32* %gsubrs_count, align 4, !tbaa !5
  %219 = load i32, i32* %gsubrs_size, align 4, !tbaa !5
  %220 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  call void @cff_write_Subrs(%struct.cff_writer_s* %writer, i32 %218, i32 %219, %struct.gs_font_type1_s* %220, i32 1) #4
  br label %if.end.286

if.end.286:                                       ; preds = %if.else.285, %if.then.284
  %call287 = call i32 @cff_write_Encoding(%struct.cff_writer_s* %writer, %struct.cff_glyph_subset_s* %subset) #4
  %call288 = call i32 @cff_write_charset(%struct.cff_writer_s* %writer, %struct.cff_glyph_subset_s* %subset) #4
  %strm289 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %221 = load %struct.stream_s*, %struct.stream_s** %strm289, align 8, !tbaa !37
  %call290 = call i64 @stell(%struct.stream_s* %221) #4
  %222 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub291 = sub nsw i64 %call290, %222
  %conv292 = trunc i64 %sub291 to i32
  store i32 %conv292, i32* %offset, align 4, !tbaa !5
  %223 = load i32, i32* %offset, align 4, !tbaa !5
  %224 = load i32, i32* %CharStrings_offset, align 4, !tbaa !5
  %cmp293 = icmp ugt i32 %223, %224
  br i1 %cmp293, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %if.end.286
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

if.end.296:                                       ; preds = %if.end.286
  %225 = load i32, i32* %offset, align 4, !tbaa !5
  store i32 %225, i32* %CharStrings_offset, align 4, !tbaa !5
  %226 = load i32, i32* %charstrings_count, align 4, !tbaa !5
  %227 = load i32, i32* %charstrings_size, align 4, !tbaa !5
  call void @cff_write_CharStrings(%struct.cff_writer_s* %writer, %struct.psf_glyph_enum_s* %genum, i32 %226, i32 %227) #4
  %strm297 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %228 = load %struct.stream_s*, %struct.stream_s** %strm297, align 8, !tbaa !37
  %call298 = call i32 @check_ioerror(%struct.stream_s* %228) #4
  %tobool299 = icmp ne i32 %call298, 0
  br i1 %tobool299, label %if.then.300, label %if.end.301

if.then.300:                                      ; preds = %if.end.296
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

if.end.301:                                       ; preds = %if.end.296
  %strm302 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %229 = load %struct.stream_s*, %struct.stream_s** %strm302, align 8, !tbaa !37
  %call303 = call i64 @stell(%struct.stream_s* %229) #4
  %230 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub304 = sub nsw i64 %call303, %230
  %conv305 = trunc i64 %sub304 to i32
  store i32 %conv305, i32* %offset, align 4, !tbaa !5
  %231 = load i32, i32* %offset, align 4, !tbaa !5
  %232 = load i32, i32* %Private_offset, align 4, !tbaa !5
  %cmp306 = icmp ugt i32 %231, %232
  br i1 %cmp306, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %if.end.301
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

if.end.309:                                       ; preds = %if.end.301
  %233 = load i32, i32* %offset, align 4, !tbaa !5
  store i32 %233, i32* %Private_offset, align 4, !tbaa !5
  %234 = load i32, i32* %subrs_size, align 4, !tbaa !5
  %cmp310 = icmp eq i32 %234, 0
  br i1 %cmp310, label %cond.true.312, label %cond.false.313

cond.true.312:                                    ; preds = %if.end.309
  br label %cond.end.314

cond.false.313:                                   ; preds = %if.end.309
  %235 = load i32, i32* %Subrs_offset, align 4, !tbaa !5
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.false.313, %cond.true.312
  %cond315 = phi i32 [ 0, %cond.true.312 ], [ %235, %cond.false.313 ]
  %236 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  call void @cff_write_Private(%struct.cff_writer_s* %writer, i32 %cond315, %struct.gs_font_type1_s* %236) #4
  %strm316 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %237 = load %struct.stream_s*, %struct.stream_s** %strm316, align 8, !tbaa !37
  %call317 = call i64 @stell(%struct.stream_s* %237) #4
  %238 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub318 = sub nsw i64 %call317, %238
  %239 = load i32, i32* %offset, align 4, !tbaa !5
  %conv319 = zext i32 %239 to i64
  %sub320 = sub nsw i64 %sub318, %conv319
  %conv321 = trunc i64 %sub320 to i32
  store i32 %conv321, i32* %Private_size, align 4, !tbaa !5
  %strm322 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %240 = load %struct.stream_s*, %struct.stream_s** %strm322, align 8, !tbaa !37
  %call323 = call i64 @stell(%struct.stream_s* %240) #4
  %241 = load i64, i64* %start_pos, align 8, !tbaa !46
  %242 = load i32, i32* %Private_offset, align 4, !tbaa !5
  %conv324 = zext i32 %242 to i64
  %add325 = add nsw i64 %241, %conv324
  %sub326 = sub nsw i64 %call323, %add325
  %conv327 = trunc i64 %sub326 to i32
  store i32 %conv327, i32* %offset, align 4, !tbaa !5
  %243 = load i32, i32* %offset, align 4, !tbaa !5
  %244 = load i32, i32* %Subrs_offset, align 4, !tbaa !5
  %cmp328 = icmp ugt i32 %243, %244
  br i1 %cmp328, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %cond.end.314
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

if.end.331:                                       ; preds = %cond.end.314
  %245 = load i32, i32* %offset, align 4, !tbaa !5
  store i32 %245, i32* %Subrs_offset, align 4, !tbaa !5
  %246 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %call332 = call i32 @cff_convert_charstrings(%struct.cff_writer_s* %writer, %struct.gs_font_base_s* %246) #4
  %tobool333 = icmp ne i32 %call332, 0
  br i1 %tobool333, label %if.then.334, label %if.else.335

if.then.334:                                      ; preds = %if.end.331
  call void @cff_put_Index_header(%struct.cff_writer_s* %writer, i32 0, i32 0) #4
  br label %if.end.340

if.else.335:                                      ; preds = %if.end.331
  %247 = load i32, i32* %subrs_size, align 4, !tbaa !5
  %cmp336 = icmp ne i32 %247, 0
  br i1 %cmp336, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %if.else.335
  %248 = load i32, i32* %subrs_count, align 4, !tbaa !5
  %249 = load i32, i32* %subrs_size, align 4, !tbaa !5
  %250 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  call void @cff_write_Subrs(%struct.cff_writer_s* %writer, i32 %248, i32 %249, %struct.gs_font_type1_s* %250, i32 0) #4
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.338, %if.else.335
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %if.then.334
  %strm341 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %251 = load %struct.stream_s*, %struct.stream_s** %strm341, align 8, !tbaa !37
  %call342 = call i32 @check_ioerror(%struct.stream_s* %251) #4
  %tobool343 = icmp ne i32 %call342, 0
  br i1 %tobool343, label %if.then.344, label %if.end.345

if.then.344:                                      ; preds = %if.end.340
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

if.end.345:                                       ; preds = %if.end.340
  %strm346 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %252 = load %struct.stream_s*, %struct.stream_s** %strm346, align 8, !tbaa !37
  %call347 = call i64 @stell(%struct.stream_s* %252) #4
  %253 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub348 = sub nsw i64 %call347, %253
  %conv349 = trunc i64 %sub348 to i32
  store i32 %conv349, i32* %offset, align 4, !tbaa !5
  %254 = load i32, i32* %offset, align 4, !tbaa !5
  %255 = load i32, i32* %End_offset, align 4, !tbaa !5
  %cmp350 = icmp ugt i32 %254, %255
  br i1 %cmp350, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %if.end.345
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

if.end.353:                                       ; preds = %if.end.345
  %256 = load i32, i32* %offset, align 4, !tbaa !5
  %257 = load i32, i32* %End_offset, align 4, !tbaa !5
  %cmp354 = icmp eq i32 %256, %257
  br i1 %cmp354, label %if.then.356, label %if.else.363

if.then.356:                                      ; preds = %if.end.353
  %strm357 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %258 = load %struct.stream_s*, %struct.stream_s** %strm357, align 8, !tbaa !37
  %cmp358 = icmp eq %struct.stream_s* %258, %poss
  br i1 %cmp358, label %if.then.360, label %if.end.362

if.then.360:                                      ; preds = %if.then.356
  %259 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %strm361 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  store %struct.stream_s* %259, %struct.stream_s** %strm361, align 8, !tbaa !37
  br label %write

if.end.362:                                       ; preds = %if.then.356
  br label %if.end.364

if.else.363:                                      ; preds = %if.end.353
  %260 = load i32, i32* %offset, align 4, !tbaa !5
  store i32 %260, i32* %End_offset, align 4, !tbaa !5
  br label %iter

if.end.364:                                       ; preds = %if.end.362
  %261 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory365 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %261, i32 0, i32 2
  %262 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory365, align 8, !tbaa !7
  %procs366 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %262, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs366, i32 0, i32 2
  %263 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !56
  %264 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory367 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %264, i32 0, i32 2
  %265 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory367, align 8, !tbaa !7
  %266 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %std_string_items, align 8, !tbaa !1
  %267 = bitcast %struct.cff_string_item_s* %266 to i8*
  call void %263(%struct.gs_memory_s* %265, i8* %267, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #4
  %268 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory368 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %268, i32 0, i32 2
  %269 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory368, align 8, !tbaa !7
  %procs369 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %269, i32 0, i32 1
  %free_object370 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs369, i32 0, i32 2
  %270 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object370, align 8, !tbaa !56
  %271 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory371 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %271, i32 0, i32 2
  %272 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory371, align 8, !tbaa !7
  %glyphs372 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %subset, i32 0, i32 0
  %subset_data373 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs372, i32 0, i32 1
  %273 = load i64*, i64** %subset_data373, align 8, !tbaa !25
  %274 = bitcast i64* %273 to i8*
  call void %270(%struct.gs_memory_s* %272, i8* %274, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

cleanup.374:                                      ; preds = %if.end.364, %if.then.352, %if.then.344, %if.then.330, %if.then.308, %if.then.300, %if.then.295, %if.then.277, %if.then.269, %if.then.242, %if.then.214, %if.then.190, %cleanup.148, %if.then.28, %if.then.23, %if.then
  %275 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast i64* %start_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #1
  %279 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.end(i64 48, i8* %279) #1
  %280 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #1
  %281 = bitcast i32* %End_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #1
  %282 = bitcast i32* %Subrs_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %283 = bitcast i32* %Private_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #1
  %284 = bitcast i32* %Private_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %285 = bitcast i32* %CharStrings_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #1
  %286 = bitcast i32* %charset_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #1
  %287 = bitcast i32* %Encoding_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #1
  %288 = bitcast i32* %GSubrs_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
  %289 = bitcast i32* %Top_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast i32* %number_of_strings to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i32* %number_of_glyphs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast i32* %charset_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %encoding_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i32* %gsubrs_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast i32* %gsubrs_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i32* %subrs_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32* %subrs_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i32* %charstrings_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i32* %charstrings_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast %struct.stream_s* %poss to i8*
  call void @llvm.lifetime.end(i64 352, i8* %300) #1
  %301 = bitcast %struct.gs_const_string_s* %font_name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %301) #1
  %302 = bitcast %struct.cff_string_item_s** %string_items to i8*
  call void @llvm.lifetime.end(i64 8, i8* %302) #1
  %303 = bitcast %struct.cff_string_item_s** %std_string_items to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #1
  %304 = bitcast %struct.cff_glyph_subset_s* %subset to i8*
  call void @llvm.lifetime.end(i64 40, i8* %304) #1
  %305 = bitcast %struct.cff_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 112, i8* %305) #1
  %306 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  %307 = load i32, i32* %retval
  ret i32 %307
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @psf_enumerate_list_begin(%struct.psf_glyph_enum_s*, %struct.gs_font_s*, i64*, i32, i32) #2

declare i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s*, i64*) #2

declare i32 @psf_get_type1_glyphs(%struct.psf_outline_glyphs_s*, %struct.gs_font_type1_s*, i64*, i32) #2

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #2

declare void @swrite_position_only(%struct.stream_s*) #2

declare i32 @psf_type1_glyph_data(%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**) #2

declare i64 @stell(%struct.stream_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @psf_sorted_glyphs_include(i64*, i32, i64) #2

declare i32 @psf_sort_glyphs(i64*, i32) #2

declare void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @cff_string_table_init(%struct.cff_string_table_s* %pcst, %struct.cff_string_item_s* %items, i32 %size) #0 {
entry:
  %pcst.addr = alloca %struct.cff_string_table_s*, align 8
  %items.addr = alloca %struct.cff_string_item_s*, align 8
  %size.addr = alloca i32, align 4
  %reprobe = alloca i32, align 4
  store %struct.cff_string_table_s* %pcst, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  store %struct.cff_string_item_s* %items, %struct.cff_string_item_s** %items.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %reprobe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 17, i32* %reprobe, align 4, !tbaa !5
  %1 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %items.addr, align 8, !tbaa !1
  %2 = bitcast %struct.cff_string_item_s* %1 to i8*
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 24
  %call = call i8* @memset(i8* %2, i32 0, i64 %mul) #5
  %4 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %items.addr, align 8, !tbaa !1
  %5 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %items1 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %5, i32 0, i32 0
  store %struct.cff_string_item_s* %4, %struct.cff_string_item_s** %items1, align 8, !tbaa !57
  %6 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %6, i32 0, i32 1
  store i32 0, i32* %count, align 4, !tbaa !58
  %7 = load i32, i32* %size.addr, align 4, !tbaa !5
  %8 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %8, i32 0, i32 2
  store i32 %7, i32* %size2, align 4, !tbaa !59
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i32, i32* %reprobe, align 4, !tbaa !5
  %cmp = icmp ne i32 %9, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load i32, i32* %size.addr, align 4, !tbaa !5
  %11 = load i32, i32* %reprobe, align 4, !tbaa !5
  %call4 = call i32 @igcd(i32 %10, i32 %11) #4
  %cmp5 = icmp ne i32 %call4, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i32, i32* %reprobe, align 4, !tbaa !5
  %mul7 = mul nsw i32 %13, 2
  %add = add nsw i32 %mul7, 1
  %14 = load i32, i32* %size.addr, align 4, !tbaa !5
  %rem = srem i32 %add, %14
  store i32 %rem, i32* %reprobe, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %total = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %15, i32 0, i32 3
  store i32 0, i32* %total, align 4, !tbaa !60
  %16 = load i32, i32* %reprobe, align 4, !tbaa !5
  %17 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %reprobe8 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %17, i32 0, i32 4
  store i32 %16, i32* %reprobe8, align 4, !tbaa !61
  %18 = bitcast i32* %reprobe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  ret void
}

declare i64 @gs_c_known_encode(i64, i32) #2

declare i32 @gs_c_glyph_name(i64, %struct.gs_const_string_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cff_string_index(%struct.cff_string_table_s* %pcst, i8* %data, i32 %size, i32 %enter, i32* %pindex) #0 {
entry:
  %retval = alloca i32, align 4
  %pcst.addr = alloca %struct.cff_string_table_s*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %enter.addr = alloca i32, align 4
  %pindex.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %index = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cff_string_table_s* %pcst, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %enter, i32* %enter.addr, align 4, !tbaa !5
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !62
  %conv = zext i8 %3 to i32
  %mul = mul nsw i32 %conv, 23
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %sub = sub i32 %4, 1
  %idxprom = zext i32 %sub to i64
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx1, align 1, !tbaa !62
  %conv2 = zext i8 %6 to i32
  %mul3 = mul nsw i32 %conv2, 59
  %add = add nsw i32 %mul, %mul3
  %7 = load i32, i32* %size.addr, align 4, !tbaa !5
  %add4 = add i32 %add, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add4, %cond.false ]
  store i32 %cond, i32* %j, align 4, !tbaa !5
  %8 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %c, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %cond.end
  %10 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %size5 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %10, i32 0, i32 2
  %11 = load i32, i32* %size5, align 4, !tbaa !59
  %12 = load i32, i32* %j, align 4, !tbaa !5
  %rem = srem i32 %12, %11
  store i32 %rem, i32* %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %rem to i64
  %13 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %items = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %13, i32 0, i32 0
  %14 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %items, align 8, !tbaa !57
  %arrayidx7 = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %14, i64 %idxprom6
  %index1 = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %arrayidx7, i32 0, i32 1
  %15 = load i32, i32* %index1, align 4, !tbaa !63
  store i32 %15, i32* %index, align 4, !tbaa !5
  %cmp8 = icmp ne i32 %15, 0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32, i32* %index, align 4, !tbaa !5
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %index, align 4, !tbaa !5
  %17 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %items11 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %18, i32 0, i32 0
  %19 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %items11, align 8, !tbaa !57
  %arrayidx12 = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %19, i64 %idxprom10
  %key = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %arrayidx12, i32 0, i32 0
  %data13 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %key, i32 0, i32 0
  %20 = load i8*, i8** %data13, align 8, !tbaa !65
  %21 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom14 = sext i32 %21 to i64
  %22 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %items15 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %22, i32 0, i32 0
  %23 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %items15, align 8, !tbaa !57
  %arrayidx16 = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %23, i64 %idxprom14
  %key17 = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %arrayidx16, i32 0, i32 0
  %size18 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %key17, i32 0, i32 1
  %24 = load i32, i32* %size18, align 4, !tbaa !66
  %25 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %26 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 @bytes_compare(i8* %20, i32 %24, i8* %25, i32 %26) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %27 = load i32, i32* %index, align 4, !tbaa !5
  %28 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %27, i32* %28, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %29 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %reprobe = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %29, i32 0, i32 4
  %30 = load i32, i32* %reprobe, align 4, !tbaa !61
  %31 = load i32, i32* %j, align 4, !tbaa !5
  %add19 = add nsw i32 %31, %30
  store i32 %add19, i32* %j, align 4, !tbaa !5
  %32 = load i32, i32* %c, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %c, align 4, !tbaa !5
  %33 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %size20 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %33, i32 0, i32 2
  %34 = load i32, i32* %size20, align 4, !tbaa !59
  %cmp21 = icmp sge i32 %inc, %34
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  br label %while.end

if.end.24:                                        ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %if.then.23, %while.cond
  %35 = load i32, i32* %enter.addr, align 4, !tbaa !5
  %tobool25 = icmp ne i32 %35, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %while.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %while.end
  %36 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %38 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call28 = call i32 @cff_string_add(%struct.cff_string_table_s* %36, i8* %37, i32 %38) #4
  store i32 %call28, i32* %index, align 4, !tbaa !5
  %39 = load i32, i32* %index, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %39, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  %40 = load i32, i32* %index, align 4, !tbaa !5
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.27
  %41 = load i32, i32* %index, align 4, !tbaa !5
  %add33 = add nsw i32 %41, 1
  %42 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom34 = sext i32 %42 to i64
  %43 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %items35 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %43, i32 0, i32 0
  %44 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %items35, align 8, !tbaa !57
  %arrayidx36 = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %44, i64 %idxprom34
  %index137 = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %arrayidx36, i32 0, i32 1
  store i32 %add33, i32* %index137, align 4, !tbaa !63
  %45 = load i32, i32* %index, align 4, !tbaa !5
  %46 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %45, i32* %46, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.31, %if.then.26, %if.then
  %47 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal void @cff_write_Top_font(%struct.cff_writer_s* %pcw, i32 %Encoding_offset, i32 %charset_offset, i32 %CharStrings_offset, i32 %Private_offset, i32 %Private_size) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %Encoding_offset.addr = alloca i32, align 4
  %charset_offset.addr = alloca i32, align 4
  %CharStrings_offset.addr = alloca i32, align 4
  %Private_offset.addr = alloca i32, align 4
  %Private_size.addr = alloca i32, align 4
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %info = alloca %struct.gs_font_info_s, align 8
  %type = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32 %Encoding_offset, i32* %Encoding_offset.addr, align 4, !tbaa !5
  store i32 %charset_offset, i32* %charset_offset.addr, align 4, !tbaa !5
  store i32 %CharStrings_offset, i32* %CharStrings_offset.addr, align 4, !tbaa !5
  store i32 %Private_offset, i32* %Private_offset.addr, align 4, !tbaa !5
  store i32 %Private_size, i32* %Private_size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %pfont = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %1, i32 0, i32 2
  %2 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !38
  store %struct.gs_font_base_s* %2, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 160, i8* %3) #1
  %4 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %5 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %call = call i32 @cff_get_Top_info_common(%struct.cff_writer_s* %4, %struct.gs_font_base_s* %5, i32 1, %struct.gs_font_info_s* %info) #4
  %6 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  call void @cff_write_Top_common(%struct.cff_writer_s* %6, %struct.gs_font_base_s* %7, i32 0, %struct.gs_font_info_s* %info) #4
  %8 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %9 = load i32, i32* %Private_size.addr, align 4, !tbaa !5
  call void @cff_put_int(%struct.cff_writer_s* %8, i32 %9) #4
  %10 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %11 = load i32, i32* %Private_offset.addr, align 4, !tbaa !5
  call void @cff_put_int_value(%struct.cff_writer_s* %10, i32 %11, i32 18) #4
  %12 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %13 = load i32, i32* %CharStrings_offset.addr, align 4, !tbaa !5
  call void @cff_put_int_value(%struct.cff_writer_s* %12, i32 %13, i32 17) #4
  %14 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %15 = load i32, i32* %charset_offset.addr, align 4, !tbaa !5
  call void @cff_put_int_if_ne(%struct.cff_writer_s* %14, i32 %15, i32 0, i32 15) #4
  %16 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %17 = load i32, i32* %Encoding_offset.addr, align 4, !tbaa !5
  call void @cff_put_int_if_ne(%struct.cff_writer_s* %16, i32 %17, i32 0, i32 16) #4
  %18 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %options = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %19, i32 0, i32 0
  %20 = load i32, i32* %options, align 4, !tbaa !32
  %and = and i32 %20, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %21 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %21, i32 0, i32 11
  %22 = load i32, i32* %FontType, align 4, !tbaa !67
  %cmp = icmp eq i32 %22, 2
  %cond = select i1 %cmp, i32 2, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1 = phi i32 [ 2, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond1, i32* %type, align 4, !tbaa !5
  %23 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %24 = load i32, i32* %type, align 4, !tbaa !5
  call void @cff_put_int_if_ne(%struct.cff_writer_s* %23, i32 %24, i32 2, i32 38) #4
  %25 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 160, i8* %26) #1
  %27 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_glyph_sid(%struct.cff_writer_s* %pcw, i64 %glyph) #0 {
entry:
  %retval = alloca i32, align 4
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %glyph.addr = alloca i64, align 8
  %str = alloca %struct.gs_const_string_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !46
  %0 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %pfont = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %2, i32 0, i32 2
  %3 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !38
  %procs = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %3, i32 0, i32 20
  %glyph_name = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 9
  %4 = load i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)** %glyph_name, align 8, !tbaa !69
  %5 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %5, i32 0, i32 2
  %6 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont1, align 8, !tbaa !38
  %7 = bitcast %struct.gs_font_base_s* %6 to %struct.gs_font_s*
  %8 = load i64, i64* %glyph.addr, align 8, !tbaa !46
  %call = call i32 %4(%struct.gs_font_s* %7, i64 %8, %struct.gs_const_string_s* %str) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8, !tbaa !50
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %13 = load i32, i32* %size, align 4, !tbaa !53
  %call2 = call i32 @cff_string_sid(%struct.cff_writer_s* %11, i8* %12, i32 %13) #4
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_convert_charstrings(%struct.cff_writer_s* %pcw, %struct.gs_font_base_s* %pfont) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %pfont.addr = alloca %struct.gs_font_base_s*, align 8
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %pfont, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %0, i32 0, i32 11
  %1 = load i32, i32* %FontType, align 4, !tbaa !67
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %options = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %2, i32 0, i32 0
  %3 = load i32, i32* %options, align 4, !tbaa !32
  %and = and i32 %3, 2
  %cmp1 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_write_Subrs_offsets(%struct.cff_writer_s* %pcw, i32* %pcount, %struct.gs_font_type1_s* %pfont, i32 %global) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %pcount.addr = alloca i32*, align 8
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %global.addr = alloca i32, align 4
  %extra_lenIV = alloca i32, align 4
  %j = alloca i32, align 4
  %offset = alloca i32, align 4
  %code = alloca i32, align 4
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32* %pcount, i32** %pcount.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i32 %global, i32* %global.addr, align 4, !tbaa !5
  %0 = bitcast i32* %extra_lenIV to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %2 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %call = call i32 @cff_extra_lenIV(%struct.cff_writer_s* %1, %struct.gs_font_type1_s* %2) #4
  store i32 %call, i32* %extra_lenIV, align 4, !tbaa !5
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %6) #1
  %7 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %7, i32 0, i32 2
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %memory1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %memory1, align 8, !tbaa !70
  store i32 0, i32* %j, align 4, !tbaa !5
  store i32 1, i32* %offset, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %9, i32 0, i32 29
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 0
  %subr_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 1
  %10 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data, align 8, !tbaa !73
  %11 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %12 = load i32, i32* %j, align 4, !tbaa !5
  %13 = load i32, i32* %global.addr, align 4, !tbaa !5
  %call2 = call i32 %10(%struct.gs_font_type1_s* %11, i32 %12, i32 %13, %struct.gs_glyph_data_s* %gdata) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %call2, -15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %14, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %15 = load i32, i32* %size, align 4, !tbaa !74
  %16 = load i32, i32* %extra_lenIV, align 4, !tbaa !5
  %cmp4 = icmp uge i32 %15, %16
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %bits5 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size6 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits5, i32 0, i32 1
  %17 = load i32, i32* %size6, align 4, !tbaa !74
  %18 = load i32, i32* %extra_lenIV, align 4, !tbaa !5
  %sub = sub i32 %17, %18
  %19 = load i32, i32* %offset, align 4, !tbaa !5
  %add = add i32 %19, %sub
  store i32 %add, i32* %offset, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %20 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %21 = load i32, i32* %offset, align 4, !tbaa !5
  call void @put_offset(%struct.cff_writer_s* %20, i32 %21) #4
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp sge i32 %22, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %23 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %j, align 4, !tbaa !5
  %25 = load i32*, i32** %pcount.addr, align 8, !tbaa !1
  store i32 %24, i32* %25, align 4, !tbaa !5
  %26 = load i32, i32* %offset, align 4, !tbaa !5
  %sub10 = sub nsw i32 %26, 1
  %27 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %27) #1
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %extra_lenIV to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  ret i32 %sub10
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_Encoding_size(i32 %num_encoded, i32 %num_encoded_chars) #0 {
entry:
  %num_encoded.addr = alloca i32, align 4
  %num_encoded_chars.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %num_encoded, i32* %num_encoded.addr, align 4, !tbaa !5
  store i32 %num_encoded_chars, i32* %num_encoded_chars.addr, align 4, !tbaa !5
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %num_encoded.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 255
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %num_encoded.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 255, %cond.false ]
  store i32 %cond, i32* %n, align 4, !tbaa !5
  %3 = load i32, i32* %n, align 4, !tbaa !5
  %add = add nsw i32 2, %3
  %4 = load i32, i32* %num_encoded_chars.addr, align 4, !tbaa !5
  %5 = load i32, i32* %n, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %4, %5
  br i1 %cmp1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.end
  %6 = load i32, i32* %num_encoded_chars.addr, align 4, !tbaa !5
  %7 = load i32, i32* %n, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %7
  %mul = mul nsw i32 %sub, 3
  %add3 = add nsw i32 1, %mul
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.2
  %cond6 = phi i32 [ %add3, %cond.true.2 ], [ 0, %cond.false.4 ]
  %add7 = add nsw i32 %add, %cond6
  %8 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret i32 %add7
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_write_CharStrings_offsets(%struct.cff_writer_s* %pcw, %struct.psf_glyph_enum_s* %penum, i32* %pcount) #0 {
entry:
  %retval = alloca i32, align 4
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %penum.addr = alloca %struct.psf_glyph_enum_s*, align 8
  %pcount.addr = alloca i32*, align 8
  %pfont = alloca %struct.gs_font_base_s*, align 8
  %offset = alloca i32, align 4
  %glyph = alloca i64, align 8
  %count = alloca i32, align 4
  %poss = alloca %struct.stream_s, align 8
  %code = alloca i32, align 4
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %pfd = alloca %struct.gs_font_type1_s*, align 8
  %gcode = alloca i32, align 4
  %extra_lenIV = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store %struct.psf_glyph_enum_s* %penum, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  store i32* %pcount, i32** %pcount.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %1, i32 0, i32 2
  %2 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont1, align 8, !tbaa !38
  store %struct.gs_font_base_s* %2, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %3 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.stream_s* %poss to i8*
  call void @llvm.lifetime.start(i64 352, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  call void @s_init(%struct.stream_s* %poss, %struct.gs_memory_s* null) #4
  %8 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  call void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s* %8) #4
  store i64 2147483647, i64* %glyph, align 8, !tbaa !46
  store i32 0, i32* %count, align 4, !tbaa !5
  store i32 1, i32* %offset, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  %call = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %9, i64* %glyph) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %10) #1
  %11 = bitcast %struct.gs_font_type1_s** %pfd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %gcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %13, i32 0, i32 2
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !75
  %memory2 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %14, %struct.gs_memory_s** %memory2, align 8, !tbaa !70
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %15, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %for.body
  %16 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %glyph_data = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %16, i32 0, i32 3
  %17 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)** %glyph_data, align 8, !tbaa !39
  %18 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %19 = load i64, i64* %glyph, align 8, !tbaa !46
  %call4 = call i32 %17(%struct.gs_font_base_s* %18, i64 %19, %struct.gs_glyph_data_s* %gdata, %struct.gs_font_type1_s** %pfd) #4
  store i32 %call4, i32* %gcode, align 4, !tbaa !5
  %cmp5 = icmp sge i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end.21

if.then:                                          ; preds = %land.lhs.true
  %20 = bitcast i32* %extra_lenIV to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %21 = load i32, i32* %size, align 4, !tbaa !74
  %22 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %23 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfd, align 8, !tbaa !1
  %call6 = call i32 @cff_extra_lenIV(%struct.cff_writer_s* %22, %struct.gs_font_type1_s* %23) #4
  store i32 %call6, i32* %extra_lenIV, align 4, !tbaa !5
  %cmp7 = icmp uge i32 %21, %call6
  br i1 %cmp7, label %if.then.8, label %if.end.20

if.then.8:                                        ; preds = %if.then
  %24 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %25 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfd, align 8, !tbaa !1
  %26 = bitcast %struct.gs_font_type1_s* %25 to %struct.gs_font_base_s*
  %call9 = call i32 @cff_convert_charstrings(%struct.cff_writer_s* %24, %struct.gs_font_base_s* %26) #4
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.8
  call void @swrite_position_only(%struct.stream_s* %poss) #4
  %27 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfd, align 8, !tbaa !1
  %call11 = call i32 @psf_convert_type1_to_type2(%struct.stream_s* %poss, %struct.gs_glyph_data_s* %gdata, %struct.gs_font_type1_s* %27) #4
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %28, 0
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.10
  %29 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.10
  %call14 = call i64 @stell(%struct.stream_s* %poss) #4
  %30 = load i32, i32* %offset, align 4, !tbaa !5
  %conv = sext i32 %30 to i64
  %add = add nsw i64 %conv, %call14
  %conv15 = trunc i64 %add to i32
  store i32 %conv15, i32* %offset, align 4, !tbaa !5
  br label %if.end.19

if.else:                                          ; preds = %if.then.8
  %bits16 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size17 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits16, i32 0, i32 1
  %31 = load i32, i32* %size17, align 4, !tbaa !74
  %32 = load i32, i32* %extra_lenIV, align 4, !tbaa !5
  %sub = sub i32 %31, %32
  %33 = load i32, i32* %offset, align 4, !tbaa !5
  %add18 = add i32 %33, %sub
  store i32 %add18, i32* %offset, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.13
  %34 = bitcast i32* %extra_lenIV to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.22 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.21

if.end.21:                                        ; preds = %cleanup.cont, %land.lhs.true, %for.body
  %35 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %36 = load i32, i32* %offset, align 4, !tbaa !5
  call void @put_offset(%struct.cff_writer_s* %35, i32 %36) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.22

cleanup.22:                                       ; preds = %if.end.21, %cleanup
  %37 = bitcast i32* %gcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast %struct.gs_font_type1_s** %pfd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %39) #1
  %cleanup.dest.25 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.25, label %cleanup.28 [
    i32 0, label %cleanup.cont.26
  ]

cleanup.cont.26:                                  ; preds = %cleanup.22
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.26
  %40 = load i32, i32* %count, align 4, !tbaa !5
  %inc = add i32 %40, 1
  store i32 %inc, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %count, align 4, !tbaa !5
  %42 = load i32*, i32** %pcount.addr, align 8, !tbaa !1
  store i32 %41, i32* %42, align 4, !tbaa !5
  %43 = load i32, i32* %offset, align 4, !tbaa !5
  %sub27 = sub nsw i32 %43, 1
  store i32 %sub27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.28

cleanup.28:                                       ; preds = %for.end, %cleanup.22
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast %struct.stream_s* %poss to i8*
  call void @llvm.lifetime.end(i64 352, i8* %45) #1
  %46 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_Index_size(i32 %count, i32 %total) #0 {
entry:
  %count.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i32 %total, i32* %total.addr, align 4, !tbaa !5
  %0 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %total.addr, align 4, !tbaa !5
  %add = add i32 %1, 1
  %call = call i32 @offset_size(i32 %add) #4
  %2 = load i32, i32* %count.addr, align 4, !tbaa !5
  %add1 = add i32 %2, 1
  %mul = mul i32 %call, %add1
  %add2 = add i32 3, %mul
  %3 = load i32, i32* %total.addr, align 4, !tbaa !5
  %add3 = add i32 %add2, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @check_ioerror(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %used = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = bitcast i32* %used to i8*
  %call = call i32 @sputs(%struct.stream_s* %1, i8* %2, i32 0, i32* %used) #4
  %3 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_write_header(%struct.cff_writer_s* %pcw, i32 %end_offset) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %end_offset.addr = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32 %end_offset, i32* %end_offset.addr, align 4, !tbaa !5
  %0 = load i32, i32* %end_offset.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %0, 32767
  %cond = select i1 %cmp, i32 3, i32 2
  %conv = sext i32 %cond to i64
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %offset_size = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %1, i32 0, i32 4
  store i64 %conv, i64* %offset_size, align 8, !tbaa !40
  %2 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %2, i32 0, i32 1
  %3 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !37
  %call = call i32 @put_bytes(%struct.stream_s* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 3) #4
  %4 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm1 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %4, i32 0, i32 1
  %5 = load %struct.stream_s*, %struct.stream_s** %strm1, align 8, !tbaa !37
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %6 = load i8*, i8** %ptr, align 8, !tbaa !76
  %7 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm2 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %7, i32 0, i32 1
  %8 = load %struct.stream_s*, %struct.stream_s** %strm2, align 8, !tbaa !37
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 2
  %9 = load i8*, i8** %limit, align 8, !tbaa !78
  %cmp5 = icmp uge i8* %6, %9
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %10 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm7 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %10, i32 0, i32 1
  %11 = load %struct.stream_s*, %struct.stream_s** %strm7, align 8, !tbaa !37
  %cursor8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w9 = bitcast %union.stream_cursor_s* %cursor8 to %struct.stream_cursor_write_s*
  %ptr10 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w9, i32 0, i32 1
  %12 = load i8*, i8** %ptr10, align 8, !tbaa !76
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %ptr10, align 8, !tbaa !76
  %13 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %offset_size11 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %13, i32 0, i32 4
  %14 = load i64, i64* %offset_size11, align 8, !tbaa !40
  %conv12 = trunc i64 %14 to i8
  %15 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm13 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %15, i32 0, i32 1
  %16 = load %struct.stream_s*, %struct.stream_s** %strm13, align 8, !tbaa !37
  %cursor14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 5
  %w15 = bitcast %union.stream_cursor_s* %cursor14 to %struct.stream_cursor_write_s*
  %ptr16 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w15, i32 0, i32 1
  %17 = load i8*, i8** %ptr16, align 8, !tbaa !76
  store i8 %conv12, i8* %17, align 1, !tbaa !62
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm17 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %18, i32 0, i32 1
  %19 = load %struct.stream_s*, %struct.stream_s** %strm17, align 8, !tbaa !37
  %20 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %offset_size18 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %20, i32 0, i32 4
  %21 = load i64, i64* %offset_size18, align 8, !tbaa !40
  %conv19 = trunc i64 %21 to i8
  %call20 = call i32 @spputc(%struct.stream_s* %19, i8 zeroext %conv19) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond21 = phi i32 [ 0, %cond.true ], [ %call20, %cond.false ]
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @cff_put_Index_header(%struct.cff_writer_s* %pcw, i32 %count, i32 %total) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %count.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i32 %total, i32* %total.addr, align 4, !tbaa !5
  %0 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %1 = load i32, i32* %count.addr, align 4, !tbaa !5
  call void @put_card16(%struct.cff_writer_s* %0, i32 %1) #4
  %2 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %total.addr, align 4, !tbaa !5
  %add = add i32 %3, 1
  %call = call i32 @offset_size(i32 %add) #4
  %conv = sext i32 %call to i64
  %4 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %offset_size = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %4, i32 0, i32 4
  store i64 %conv, i64* %offset_size, align 8, !tbaa !40
  %5 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %5, i32 0, i32 1
  %6 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !37
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %7 = load i8*, i8** %ptr, align 8, !tbaa !76
  %8 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm1 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %8, i32 0, i32 1
  %9 = load %struct.stream_s*, %struct.stream_s** %strm1, align 8, !tbaa !37
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w3, i32 0, i32 2
  %10 = load i8*, i8** %limit, align 8, !tbaa !78
  %cmp4 = icmp uge i8* %7, %10
  br i1 %cmp4, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %11 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm6 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %11, i32 0, i32 1
  %12 = load %struct.stream_s*, %struct.stream_s** %strm6, align 8, !tbaa !37
  %cursor7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 5
  %w8 = bitcast %union.stream_cursor_s* %cursor7 to %struct.stream_cursor_write_s*
  %ptr9 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w8, i32 0, i32 1
  %13 = load i8*, i8** %ptr9, align 8, !tbaa !76
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %ptr9, align 8, !tbaa !76
  %14 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %offset_size10 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %14, i32 0, i32 4
  %15 = load i64, i64* %offset_size10, align 8, !tbaa !40
  %conv11 = trunc i64 %15 to i8
  %16 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm12 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %16, i32 0, i32 1
  %17 = load %struct.stream_s*, %struct.stream_s** %strm12, align 8, !tbaa !37
  %cursor13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 5
  %w14 = bitcast %union.stream_cursor_s* %cursor13 to %struct.stream_cursor_write_s*
  %ptr15 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w14, i32 0, i32 1
  %18 = load i8*, i8** %ptr15, align 8, !tbaa !76
  store i8 %conv11, i8* %18, align 1, !tbaa !62
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %19 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm16 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %19, i32 0, i32 1
  %20 = load %struct.stream_s*, %struct.stream_s** %strm16, align 8, !tbaa !37
  %21 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %offset_size17 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %21, i32 0, i32 4
  %22 = load i64, i64* %offset_size17, align 8, !tbaa !40
  %conv18 = trunc i64 %22 to i8
  %call19 = call i32 @spputc(%struct.stream_s* %20, i8 zeroext %conv18) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call19, %cond.false ]
  %23 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  call void @put_offset(%struct.cff_writer_s* %23, i32 1) #4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_offset(%struct.cff_writer_s* %pcw, i32 %offset) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %offset_size = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %1, i32 0, i32 4
  %2 = load i64, i64* %offset_size, align 8, !tbaa !40
  %sub = sub nsw i64 %2, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %4, i32 0, i32 1
  %5 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !37
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %6 = load i8*, i8** %ptr, align 8, !tbaa !76
  %7 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm2 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %7, i32 0, i32 1
  %8 = load %struct.stream_s*, %struct.stream_s** %strm2, align 8, !tbaa !37
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 2
  %9 = load i8*, i8** %limit, align 8, !tbaa !78
  %cmp5 = icmp uge i8* %6, %9
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  %10 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm7 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %10, i32 0, i32 1
  %11 = load %struct.stream_s*, %struct.stream_s** %strm7, align 8, !tbaa !37
  %cursor8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w9 = bitcast %union.stream_cursor_s* %cursor8 to %struct.stream_cursor_write_s*
  %ptr10 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w9, i32 0, i32 1
  %12 = load i8*, i8** %ptr10, align 8, !tbaa !76
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %ptr10, align 8, !tbaa !76
  %13 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul nsw i32 %14, 8
  %shr = ashr i32 %13, %mul
  %conv11 = trunc i32 %shr to i8
  %15 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm12 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %15, i32 0, i32 1
  %16 = load %struct.stream_s*, %struct.stream_s** %strm12, align 8, !tbaa !37
  %cursor13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 5
  %w14 = bitcast %union.stream_cursor_s* %cursor13 to %struct.stream_cursor_write_s*
  %ptr15 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w14, i32 0, i32 1
  %17 = load i8*, i8** %ptr15, align 8, !tbaa !76
  store i8 %conv11, i8* %17, align 1, !tbaa !62
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %18 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm16 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %18, i32 0, i32 1
  %19 = load %struct.stream_s*, %struct.stream_s** %strm16, align 8, !tbaa !37
  %20 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %mul17 = mul nsw i32 %21, 8
  %shr18 = ashr i32 %20, %mul17
  %conv19 = trunc i32 %shr18 to i8
  %call = call i32 @spputc(%struct.stream_s* %19, i8 zeroext %conv19) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @put_bytes(%struct.stream_s* %s, i8* %ptr, i32 %count) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %used = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %3 = load i32, i32* %count.addr, align 4, !tbaa !5
  %call = call i32 @sputs(%struct.stream_s* %1, i8* %2, i32 %3, i32* %used) #4
  %4 = load i32, i32* %used, align 4, !tbaa !5
  %5 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @cff_put_Index(%struct.cff_writer_s* %pcw, %struct.cff_string_table_s* %pcst) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %pcst.addr = alloca %struct.cff_string_table_s*, align 8
  %j = alloca i32, align 4
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store %struct.cff_string_table_s* %pcst, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %2, i32 0, i32 1
  %3 = load i32, i32* %count, align 4, !tbaa !58
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  call void @put_card16(%struct.cff_writer_s* %4, i32 0) #4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %6 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %count1 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %6, i32 0, i32 1
  %7 = load i32, i32* %count1, align 4, !tbaa !58
  %8 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %total = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %8, i32 0, i32 3
  %9 = load i32, i32* %total, align 4, !tbaa !60
  call void @cff_put_Index_header(%struct.cff_writer_s* %5, i32 %7, i32 %9) #4
  store i32 0, i32* %j, align 4, !tbaa !5
  store i32 1, i32* %offset, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %j, align 4, !tbaa !5
  %11 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %count2 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %11, i32 0, i32 1
  %12 = load i32, i32* %count2, align 4, !tbaa !58
  %cmp3 = icmp ult i32 %10, %12
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %items = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %14, i32 0, i32 0
  %15 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %items, align 8, !tbaa !57
  %arrayidx = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %15, i64 %idxprom
  %key = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %arrayidx, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %key, i32 0, i32 1
  %16 = load i32, i32* %size, align 4, !tbaa !66
  %17 = load i32, i32* %offset, align 4, !tbaa !5
  %add = add i32 %17, %16
  store i32 %add, i32* %offset, align 4, !tbaa !5
  %18 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %19 = load i32, i32* %offset, align 4, !tbaa !5
  call void @put_offset(%struct.cff_writer_s* %18, i32 %19) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %20, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.17, %for.end
  %21 = load i32, i32* %j, align 4, !tbaa !5
  %22 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %count5 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %22, i32 0, i32 1
  %23 = load i32, i32* %count5, align 4, !tbaa !58
  %cmp6 = icmp ult i32 %21, %23
  br i1 %cmp6, label %for.body.7, label %for.end.19

for.body.7:                                       ; preds = %for.cond.4
  %24 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %24, i32 0, i32 1
  %25 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !37
  %26 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom8 = zext i32 %26 to i64
  %27 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %items9 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %27, i32 0, i32 0
  %28 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %items9, align 8, !tbaa !57
  %arrayidx10 = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %28, i64 %idxprom8
  %key11 = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %arrayidx10, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %key11, i32 0, i32 0
  %29 = load i8*, i8** %data, align 8, !tbaa !65
  %30 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom12 = zext i32 %30 to i64
  %31 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %items13 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %31, i32 0, i32 0
  %32 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %items13, align 8, !tbaa !57
  %arrayidx14 = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %32, i64 %idxprom12
  %key15 = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %arrayidx14, i32 0, i32 0
  %size16 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %key15, i32 0, i32 1
  %33 = load i32, i32* %size16, align 4, !tbaa !66
  %call = call i32 @put_bytes(%struct.stream_s* %25, i8* %29, i32 %33) #4
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.7
  %34 = load i32, i32* %j, align 4, !tbaa !5
  %inc18 = add i32 %34, 1
  store i32 %inc18, i32* %j, align 4, !tbaa !5
  br label %for.cond.4

for.end.19:                                       ; preds = %for.cond.4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.19, %if.then
  %35 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
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
define internal void @cff_write_Subrs(%struct.cff_writer_s* %pcw, i32 %subrs_count, i32 %subrs_size, %struct.gs_font_type1_s* %pfont, i32 %global) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %subrs_count.addr = alloca i32, align 4
  %subrs_size.addr = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %global.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %ignore_count = alloca i32, align 4
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %code = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32 %subrs_count, i32* %subrs_count.addr, align 4, !tbaa !5
  store i32 %subrs_size, i32* %subrs_size.addr, align 4, !tbaa !5
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i32 %global, i32* %global.addr, align 4, !tbaa !5
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ignore_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %4, i32 0, i32 2
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %memory1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %memory1, align 8, !tbaa !70
  %6 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %7 = load i32, i32* %subrs_count.addr, align 4, !tbaa !5
  %8 = load i32, i32* %subrs_size.addr, align 4, !tbaa !5
  call void @cff_put_Index_header(%struct.cff_writer_s* %6, i32 %7, i32 %8) #4
  %9 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %10 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %11 = load i32, i32* %global.addr, align 4, !tbaa !5
  %call = call i32 @cff_write_Subrs_offsets(%struct.cff_writer_s* %9, i32* %ignore_count, %struct.gs_font_type1_s* %10, i32 %11) #4
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %12, i32 0, i32 29
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 0
  %subr_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 1
  %13 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data, align 8, !tbaa !73
  %14 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %15 = load i32, i32* %j, align 4, !tbaa !5
  %16 = load i32, i32* %global.addr, align 4, !tbaa !5
  %call2 = call i32 %13(%struct.gs_font_type1_s* %14, i32 %15, i32 %16, %struct.gs_glyph_data_s* %gdata) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %call2, -15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %17, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %data4 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %19 = load i8*, i8** %data4, align 8, !tbaa !79
  %bits5 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits5, i32 0, i32 1
  %20 = load i32, i32* %size, align 4, !tbaa !74
  %21 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %call6 = call i32 @cff_put_CharString(%struct.cff_writer_s* %18, i8* %19, i32 %20, %struct.gs_font_type1_s* %21) #4
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %24) #1
  %25 = bitcast i32* %ignore_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_write_Encoding(%struct.cff_writer_s* %pcw, %struct.cff_glyph_subset_s* %pgsub) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %pgsub.addr = alloca %struct.cff_glyph_subset_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pfont = alloca %struct.gs_font_type1_s*, align 8
  %used = alloca [255 x i8], align 16
  %index = alloca [255 x i8], align 16
  %supplement = alloca [256 x i8], align 16
  %num_enc = alloca i32, align 4
  %nsupp = alloca i32, align 4
  %j = alloca i32, align 4
  %glyph = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %chr = alloca i8, align 1
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store %struct.cff_glyph_subset_s* %pgsub, %struct.cff_glyph_subset_s** %pgsub.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %1, i32 0, i32 1
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !37
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %4, i32 0, i32 2
  %5 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont1, align 8, !tbaa !38
  %6 = bitcast %struct.gs_font_base_s* %5 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %6, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %7 = bitcast [255 x i8]* %used to i8*
  call void @llvm.lifetime.start(i64 255, i8* %7) #1
  %8 = bitcast [255 x i8]* %index to i8*
  call void @llvm.lifetime.start(i64 255, i8* %8) #1
  %9 = bitcast [256 x i8]* %supplement to i8*
  call void @llvm.lifetime.start(i64 256, i8* %9) #1
  %10 = bitcast i32* %num_enc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.cff_glyph_subset_s*, %struct.cff_glyph_subset_s** %pgsub.addr, align 8, !tbaa !1
  %num_encoded = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %11, i32 0, i32 1
  %12 = load i32, i32* %num_encoded, align 4, !tbaa !48
  %conv = sext i32 %12 to i64
  %cmp = icmp ult i64 %conv, 255
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load %struct.cff_glyph_subset_s*, %struct.cff_glyph_subset_s** %pgsub.addr, align 8, !tbaa !1
  %num_encoded3 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %13, i32 0, i32 1
  %14 = load i32, i32* %num_encoded3, align 4, !tbaa !48
  %conv4 = sext i32 %14 to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv4, %cond.true ], [ 255, %cond.false ]
  %conv5 = trunc i64 %cond to i32
  store i32 %conv5, i32* %num_enc, align 4, !tbaa !5
  %15 = bitcast i32* %nsupp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %nsupp, align 4, !tbaa !5
  %16 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %arraydecay = getelementptr inbounds [255 x i8], [255 x i8]* %used, i32 0, i32 0
  %17 = load i32, i32* %num_enc, align 4, !tbaa !5
  %conv6 = sext i32 %17 to i64
  %call = call i8* @memset(i8* %arraydecay, i32 0, i64 %conv6) #5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %18 = load i32, i32* %j, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %18, 256
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %20, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 4
  %21 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !45
  %22 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %23 = bitcast %struct.gs_font_type1_s* %22 to %struct.gs_font_s*
  %24 = load i32, i32* %j, align 4, !tbaa !5
  %conv9 = sext i32 %24 to i64
  %call10 = call i64 %21(%struct.gs_font_s* %23, i64 %conv9, i32 0) #4
  store i64 %call10, i64* %glyph, align 8, !tbaa !46
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i64, i64* %glyph, align 8, !tbaa !46
  %cmp11 = icmp eq i64 %26, 2147483647
  br i1 %cmp11, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %27 = load i64, i64* %glyph, align 8, !tbaa !46
  %28 = load %struct.cff_glyph_subset_s*, %struct.cff_glyph_subset_s** %pgsub.addr, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %28, i32 0, i32 0
  %notdef = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs, i32 0, i32 0
  %29 = load i64, i64* %notdef, align 8, !tbaa !28
  %cmp13 = icmp eq i64 %27, %29
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %30 = load %struct.cff_glyph_subset_s*, %struct.cff_glyph_subset_s** %pgsub.addr, align 8, !tbaa !1
  %glyphs15 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %30, i32 0, i32 0
  %subset_data = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs15, i32 0, i32 1
  %31 = load i64*, i64** %subset_data, align 8, !tbaa !25
  %add.ptr = getelementptr inbounds i64, i64* %31, i64 1
  %32 = load %struct.cff_glyph_subset_s*, %struct.cff_glyph_subset_s** %pgsub.addr, align 8, !tbaa !1
  %num_encoded16 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %32, i32 0, i32 1
  %33 = load i32, i32* %num_encoded16, align 4, !tbaa !48
  %34 = load i64, i64* %glyph, align 8, !tbaa !46
  %call17 = call i32 @psf_sorted_glyphs_index_of(i64* %add.ptr, i32 %33, i64 %34) #4
  store i32 %call17, i32* %i, align 4, !tbaa !5
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %35, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %conv22 = sext i32 %36 to i64
  %cmp23 = icmp uge i64 %conv22, 255
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.end.21
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %37 to i64
  %arrayidx = getelementptr inbounds [255 x i8], [255 x i8]* %used, i32 0, i64 %idxprom
  %38 = load i8, i8* %arrayidx, align 1, !tbaa !62
  %conv26 = zext i8 %38 to i32
  %tobool = icmp ne i32 %conv26, 0
  br i1 %tobool, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %lor.lhs.false.25, %if.end.21
  %39 = load i32, i32* %j, align 4, !tbaa !5
  %conv28 = trunc i32 %39 to i8
  %40 = load i32, i32* %nsupp, align 4, !tbaa !5
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %nsupp, align 4, !tbaa !5
  %idxprom29 = sext i32 %40 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], [256 x i8]* %supplement, i32 0, i64 %idxprom29
  store i8 %conv28, i8* %arrayidx30, align 1, !tbaa !62
  br label %if.end.36

if.else:                                          ; preds = %lor.lhs.false.25
  %41 = load i32, i32* %j, align 4, !tbaa !5
  %conv31 = trunc i32 %41 to i8
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %42 to i64
  %arrayidx33 = getelementptr inbounds [255 x i8], [255 x i8]* %index, i32 0, i64 %idxprom32
  store i8 %conv31, i8* %arrayidx33, align 1, !tbaa !62
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %43 to i64
  %arrayidx35 = getelementptr inbounds [255 x i8], [255 x i8]* %used, i32 0, i64 %idxprom34
  store i8 1, i8* %arrayidx35, align 1, !tbaa !62
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.then.20, %if.then
  %44 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %46 = load i32, i32* %j, align 4, !tbaa !5
  %inc38 = add nsw i32 %46, 1
  store i32 %inc38, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %47, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %48 = load i8*, i8** %ptr, align 8, !tbaa !76
  %49 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor39 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %49, i32 0, i32 5
  %w40 = bitcast %union.stream_cursor_s* %cursor39 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w40, i32 0, i32 2
  %50 = load i8*, i8** %limit, align 8, !tbaa !78
  %cmp41 = icmp uge i8* %48, %50
  br i1 %cmp41, label %cond.false.53, label %cond.true.43

cond.true.43:                                     ; preds = %for.end
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor44 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %51, i32 0, i32 5
  %w45 = bitcast %union.stream_cursor_s* %cursor44 to %struct.stream_cursor_write_s*
  %ptr46 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w45, i32 0, i32 1
  %52 = load i8*, i8** %ptr46, align 8, !tbaa !76
  %incdec.ptr = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr, i8** %ptr46, align 8, !tbaa !76
  %53 = load i32, i32* %nsupp, align 4, !tbaa !5
  %tobool47 = icmp ne i32 %53, 0
  %cond48 = select i1 %tobool47, i32 128, i32 0
  %conv49 = trunc i32 %cond48 to i8
  %54 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor50 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %54, i32 0, i32 5
  %w51 = bitcast %union.stream_cursor_s* %cursor50 to %struct.stream_cursor_write_s*
  %ptr52 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w51, i32 0, i32 1
  %55 = load i8*, i8** %ptr52, align 8, !tbaa !76
  store i8 %conv49, i8* %55, align 1, !tbaa !62
  br label %cond.end.58

cond.false.53:                                    ; preds = %for.end
  %56 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %57 = load i32, i32* %nsupp, align 4, !tbaa !5
  %tobool54 = icmp ne i32 %57, 0
  %cond55 = select i1 %tobool54, i32 128, i32 0
  %conv56 = trunc i32 %cond55 to i8
  %call57 = call i32 @spputc(%struct.stream_s* %56, i8 zeroext %conv56) #4
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.53, %cond.true.43
  %cond59 = phi i32 [ 0, %cond.true.43 ], [ %call57, %cond.false.53 ]
  %58 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor60 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %58, i32 0, i32 5
  %w61 = bitcast %union.stream_cursor_s* %cursor60 to %struct.stream_cursor_write_s*
  %ptr62 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w61, i32 0, i32 1
  %59 = load i8*, i8** %ptr62, align 8, !tbaa !76
  %60 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor63 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %60, i32 0, i32 5
  %w64 = bitcast %union.stream_cursor_s* %cursor63 to %struct.stream_cursor_write_s*
  %limit65 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w64, i32 0, i32 2
  %61 = load i8*, i8** %limit65, align 8, !tbaa !78
  %cmp66 = icmp uge i8* %59, %61
  br i1 %cmp66, label %cond.false.77, label %cond.true.68

cond.true.68:                                     ; preds = %cond.end.58
  %62 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor69 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %62, i32 0, i32 5
  %w70 = bitcast %union.stream_cursor_s* %cursor69 to %struct.stream_cursor_write_s*
  %ptr71 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w70, i32 0, i32 1
  %63 = load i8*, i8** %ptr71, align 8, !tbaa !76
  %incdec.ptr72 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr72, i8** %ptr71, align 8, !tbaa !76
  %64 = load i32, i32* %num_enc, align 4, !tbaa !5
  %conv73 = trunc i32 %64 to i8
  %65 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor74 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %65, i32 0, i32 5
  %w75 = bitcast %union.stream_cursor_s* %cursor74 to %struct.stream_cursor_write_s*
  %ptr76 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w75, i32 0, i32 1
  %66 = load i8*, i8** %ptr76, align 8, !tbaa !76
  store i8 %conv73, i8* %66, align 1, !tbaa !62
  br label %cond.end.80

cond.false.77:                                    ; preds = %cond.end.58
  %67 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %68 = load i32, i32* %num_enc, align 4, !tbaa !5
  %conv78 = trunc i32 %68 to i8
  %call79 = call i32 @spputc(%struct.stream_s* %67, i8 zeroext %conv78) #4
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.77, %cond.true.68
  %cond81 = phi i32 [ 0, %cond.true.68 ], [ %call79, %cond.false.77 ]
  %69 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay82 = getelementptr inbounds [255 x i8], [255 x i8]* %index, i32 0, i32 0
  %70 = load i32, i32* %num_enc, align 4, !tbaa !5
  %call83 = call i32 @put_bytes(%struct.stream_s* %69, i8* %arraydecay82, i32 %70) #4
  %71 = load i32, i32* %nsupp, align 4, !tbaa !5
  %tobool84 = icmp ne i32 %71, 0
  br i1 %tobool84, label %if.then.85, label %if.end.142

if.then.85:                                       ; preds = %cond.end.80
  %72 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor86 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %72, i32 0, i32 5
  %w87 = bitcast %union.stream_cursor_s* %cursor86 to %struct.stream_cursor_write_s*
  %ptr88 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w87, i32 0, i32 1
  %73 = load i8*, i8** %ptr88, align 8, !tbaa !76
  %74 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor89 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %74, i32 0, i32 5
  %w90 = bitcast %union.stream_cursor_s* %cursor89 to %struct.stream_cursor_write_s*
  %limit91 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w90, i32 0, i32 2
  %75 = load i8*, i8** %limit91, align 8, !tbaa !78
  %cmp92 = icmp uge i8* %73, %75
  br i1 %cmp92, label %cond.false.103, label %cond.true.94

cond.true.94:                                     ; preds = %if.then.85
  %76 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor95 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %76, i32 0, i32 5
  %w96 = bitcast %union.stream_cursor_s* %cursor95 to %struct.stream_cursor_write_s*
  %ptr97 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w96, i32 0, i32 1
  %77 = load i8*, i8** %ptr97, align 8, !tbaa !76
  %incdec.ptr98 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr98, i8** %ptr97, align 8, !tbaa !76
  %78 = load i32, i32* %nsupp, align 4, !tbaa !5
  %conv99 = trunc i32 %78 to i8
  %79 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor100 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %79, i32 0, i32 5
  %w101 = bitcast %union.stream_cursor_s* %cursor100 to %struct.stream_cursor_write_s*
  %ptr102 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w101, i32 0, i32 1
  %80 = load i8*, i8** %ptr102, align 8, !tbaa !76
  store i8 %conv99, i8* %80, align 1, !tbaa !62
  br label %cond.end.106

cond.false.103:                                   ; preds = %if.then.85
  %81 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %82 = load i32, i32* %nsupp, align 4, !tbaa !5
  %conv104 = trunc i32 %82 to i8
  %call105 = call i32 @spputc(%struct.stream_s* %81, i8 zeroext %conv104) #4
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.103, %cond.true.94
  %cond107 = phi i32 [ 0, %cond.true.94 ], [ %call105, %cond.false.103 ]
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.139, %cond.end.106
  %83 = load i32, i32* %j, align 4, !tbaa !5
  %84 = load i32, i32* %nsupp, align 4, !tbaa !5
  %cmp109 = icmp slt i32 %83, %84
  br i1 %cmp109, label %for.body.111, label %for.end.141

for.body.111:                                     ; preds = %for.cond.108
  call void @llvm.lifetime.start(i64 1, i8* %chr) #1
  %85 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom112 = sext i32 %85 to i64
  %arrayidx113 = getelementptr inbounds [256 x i8], [256 x i8]* %supplement, i32 0, i64 %idxprom112
  %86 = load i8, i8* %arrayidx113, align 1, !tbaa !62
  store i8 %86, i8* %chr, align 1, !tbaa !62
  %87 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor114 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %87, i32 0, i32 5
  %w115 = bitcast %union.stream_cursor_s* %cursor114 to %struct.stream_cursor_write_s*
  %ptr116 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w115, i32 0, i32 1
  %88 = load i8*, i8** %ptr116, align 8, !tbaa !76
  %89 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor117 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %89, i32 0, i32 5
  %w118 = bitcast %union.stream_cursor_s* %cursor117 to %struct.stream_cursor_write_s*
  %limit119 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w118, i32 0, i32 2
  %90 = load i8*, i8** %limit119, align 8, !tbaa !78
  %cmp120 = icmp uge i8* %88, %90
  br i1 %cmp120, label %cond.false.130, label %cond.true.122

cond.true.122:                                    ; preds = %for.body.111
  %91 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor123 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %91, i32 0, i32 5
  %w124 = bitcast %union.stream_cursor_s* %cursor123 to %struct.stream_cursor_write_s*
  %ptr125 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w124, i32 0, i32 1
  %92 = load i8*, i8** %ptr125, align 8, !tbaa !76
  %incdec.ptr126 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr126, i8** %ptr125, align 8, !tbaa !76
  %93 = load i8, i8* %chr, align 1, !tbaa !62
  %94 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor127 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %94, i32 0, i32 5
  %w128 = bitcast %union.stream_cursor_s* %cursor127 to %struct.stream_cursor_write_s*
  %ptr129 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w128, i32 0, i32 1
  %95 = load i8*, i8** %ptr129, align 8, !tbaa !76
  store i8 %93, i8* %95, align 1, !tbaa !62
  br label %cond.end.132

cond.false.130:                                   ; preds = %for.body.111
  %96 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %97 = load i8, i8* %chr, align 1, !tbaa !62
  %call131 = call i32 @spputc(%struct.stream_s* %96, i8 zeroext %97) #4
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.130, %cond.true.122
  %cond133 = phi i32 [ 0, %cond.true.122 ], [ %call131, %cond.false.130 ]
  %98 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %99 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %100 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %procs134 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %100, i32 0, i32 20
  %encode_char135 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs134, i32 0, i32 4
  %101 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char135, align 8, !tbaa !45
  %102 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %103 = bitcast %struct.gs_font_type1_s* %102 to %struct.gs_font_s*
  %104 = load i8, i8* %chr, align 1, !tbaa !62
  %conv136 = zext i8 %104 to i64
  %call137 = call i64 %101(%struct.gs_font_s* %103, i64 %conv136, i32 0) #4
  %call138 = call i32 @cff_glyph_sid(%struct.cff_writer_s* %99, i64 %call137) #4
  call void @put_card16(%struct.cff_writer_s* %98, i32 %call138) #4
  call void @llvm.lifetime.end(i64 1, i8* %chr) #1
  br label %for.inc.139

for.inc.139:                                      ; preds = %cond.end.132
  %105 = load i32, i32* %j, align 4, !tbaa !5
  %inc140 = add nsw i32 %105, 1
  store i32 %inc140, i32* %j, align 4, !tbaa !5
  br label %for.cond.108

for.end.141:                                      ; preds = %for.cond.108
  br label %if.end.142

if.end.142:                                       ; preds = %for.end.141, %cond.end.80
  store i32 1, i32* %cleanup.dest.slot
  %106 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %nsupp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %num_enc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast [256 x i8]* %supplement to i8*
  call void @llvm.lifetime.end(i64 256, i8* %109) #1
  %110 = bitcast [255 x i8]* %index to i8*
  call void @llvm.lifetime.end(i64 255, i8* %110) #1
  %111 = bitcast [255 x i8]* %used to i8*
  call void @llvm.lifetime.end(i64 255, i8* %111) #1
  %112 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  ret i32 0

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_write_charset(%struct.cff_writer_s* %pcw, %struct.cff_glyph_subset_s* %pgsub) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %pgsub.addr = alloca %struct.cff_glyph_subset_s*, align 8
  %j = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store %struct.cff_glyph_subset_s* %pgsub, %struct.cff_glyph_subset_s** %pgsub.addr, align 8, !tbaa !1
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %1, i32 0, i32 1
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !37
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %3 = load i8*, i8** %ptr, align 8, !tbaa !76
  %4 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm1 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %4, i32 0, i32 1
  %5 = load %struct.stream_s*, %struct.stream_s** %strm1, align 8, !tbaa !37
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %w3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w3, i32 0, i32 2
  %6 = load i8*, i8** %limit, align 8, !tbaa !78
  %cmp = icmp uge i8* %3, %6
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %7 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm4 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %7, i32 0, i32 1
  %8 = load %struct.stream_s*, %struct.stream_s** %strm4, align 8, !tbaa !37
  %cursor5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %w6 = bitcast %union.stream_cursor_s* %cursor5 to %struct.stream_cursor_write_s*
  %ptr7 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w6, i32 0, i32 1
  %9 = load i8*, i8** %ptr7, align 8, !tbaa !76
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %ptr7, align 8, !tbaa !76
  %10 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm8 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %10, i32 0, i32 1
  %11 = load %struct.stream_s*, %struct.stream_s** %strm8, align 8, !tbaa !37
  %cursor9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w10 = bitcast %union.stream_cursor_s* %cursor9 to %struct.stream_cursor_write_s*
  %ptr11 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w10, i32 0, i32 1
  %12 = load i8*, i8** %ptr11, align 8, !tbaa !76
  store i8 0, i8* %12, align 1, !tbaa !62
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm12 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %13, i32 0, i32 1
  %14 = load %struct.stream_s*, %struct.stream_s** %strm12, align 8, !tbaa !37
  %call = call i32 @spputc(%struct.stream_s* %14, i8 zeroext 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 1, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %15 = load i32, i32* %j, align 4, !tbaa !5
  %16 = load %struct.cff_glyph_subset_s*, %struct.cff_glyph_subset_s** %pgsub.addr, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %16, i32 0, i32 0
  %subset_size = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs, i32 0, i32 3
  %17 = load i32, i32* %subset_size, align 4, !tbaa !44
  %cmp13 = icmp ult i32 %15, %17
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %19 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %20 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.cff_glyph_subset_s*, %struct.cff_glyph_subset_s** %pgsub.addr, align 8, !tbaa !1
  %glyphs14 = getelementptr inbounds %struct.cff_glyph_subset_s, %struct.cff_glyph_subset_s* %21, i32 0, i32 0
  %subset_data = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs14, i32 0, i32 1
  %22 = load i64*, i64** %subset_data, align 8, !tbaa !25
  %arrayidx = getelementptr inbounds i64, i64* %22, i64 %idxprom
  %23 = load i64, i64* %arrayidx, align 8, !tbaa !46
  %call15 = call i32 @cff_glyph_sid(%struct.cff_writer_s* %19, i64 %23) #4
  call void @put_card16(%struct.cff_writer_s* %18, i32 %call15) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @cff_write_CharStrings(%struct.cff_writer_s* %pcw, %struct.psf_glyph_enum_s* %penum, i32 %charstrings_count, i32 %charstrings_size) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %penum.addr = alloca %struct.psf_glyph_enum_s*, align 8
  %charstrings_count.addr = alloca i32, align 4
  %charstrings_size.addr = alloca i32, align 4
  %pfont = alloca %struct.gs_font_base_s*, align 8
  %ignore_count = alloca i32, align 4
  %glyph = alloca i64, align 8
  %code = alloca i32, align 4
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %pfd = alloca %struct.gs_font_type1_s*, align 8
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store %struct.psf_glyph_enum_s* %penum, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %charstrings_count, i32* %charstrings_count.addr, align 4, !tbaa !5
  store i32 %charstrings_size, i32* %charstrings_size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %1, i32 0, i32 2
  %2 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont1, align 8, !tbaa !38
  store %struct.gs_font_base_s* %2, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %3 = bitcast i32* %ignore_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %7 = load i32, i32* %charstrings_count.addr, align 4, !tbaa !5
  %8 = load i32, i32* %charstrings_size.addr, align 4, !tbaa !5
  call void @cff_put_Index_header(%struct.cff_writer_s* %6, i32 %7, i32 %8) #4
  %9 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %10 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  %call = call i32 @cff_write_CharStrings_offsets(%struct.cff_writer_s* %9, %struct.psf_glyph_enum_s* %10, i32* %ignore_count) #4
  %11 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  call void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s* %11) #4
  store i64 2147483647, i64* %glyph, align 8, !tbaa !46
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %12 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  %call2 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %12, i64* %glyph) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %call2, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %13) #1
  %14 = bitcast %struct.gs_font_type1_s** %pfd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %15, i32 0, i32 2
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !75
  %memory3 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %memory3, align 8, !tbaa !70
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %17, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %18 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %glyph_data = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %18, i32 0, i32 3
  %19 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)** %glyph_data, align 8, !tbaa !39
  %20 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %21 = load i64, i64* %glyph, align 8, !tbaa !46
  %call5 = call i32 %19(%struct.gs_font_base_s* %20, i64 %21, %struct.gs_glyph_data_s* %gdata, %struct.gs_font_type1_s** %pfd) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp sge i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %22 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8, !tbaa !79
  %bits7 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits7, i32 0, i32 1
  %24 = load i32, i32* %size, align 4, !tbaa !74
  %25 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfd, align 8, !tbaa !1
  %call8 = call i32 @cff_put_CharString(%struct.cff_writer_s* %22, i8* %23, i32 %24, %struct.gs_font_type1_s* %25) #4
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %26 = bitcast %struct.gs_font_type1_s** %pfd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %27) #1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %ignore_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cff_write_Private(%struct.cff_writer_s* %pcw, i32 %Subrs_offset, %struct.gs_font_type1_s* %pfont) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %Subrs_offset.addr = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32 %Subrs_offset, i32* %Subrs_offset.addr, align 4, !tbaa !5
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %0 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %1, i32 0, i32 29
  %BlueValues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 13
  %values = getelementptr inbounds %struct.anon, %struct.anon* %BlueValues, i32 0, i32 1
  %arraydecay = getelementptr inbounds [14 x float], [14 x float]* %values, i32 0, i32 0
  %2 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %2, i32 0, i32 29
  %BlueValues2 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data1, i32 0, i32 13
  %count = getelementptr inbounds %struct.anon, %struct.anon* %BlueValues2, i32 0, i32 0
  %3 = load i32, i32* %count, align 4, !tbaa !80
  call void @cff_put_real_deltarray(%struct.cff_writer_s* %0, float* %arraydecay, i32 %3, i32 6) #4
  %4 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %5 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %5, i32 0, i32 29
  %OtherBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data3, i32 0, i32 19
  %values4 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %OtherBlues, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [10 x float], [10 x float]* %values4, i32 0, i32 0
  %6 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data6 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %6, i32 0, i32 29
  %OtherBlues7 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data6, i32 0, i32 19
  %count8 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %OtherBlues7, i32 0, i32 0
  %7 = load i32, i32* %count8, align 4, !tbaa !81
  call void @cff_put_real_deltarray(%struct.cff_writer_s* %4, float* %arraydecay5, i32 %7, i32 7) #4
  %8 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %9 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data9 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %9, i32 0, i32 29
  %FamilyBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data9, i32 0, i32 16
  %values10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %FamilyBlues, i32 0, i32 1
  %arraydecay11 = getelementptr inbounds [14 x float], [14 x float]* %values10, i32 0, i32 0
  %10 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data12 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %10, i32 0, i32 29
  %FamilyBlues13 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data12, i32 0, i32 16
  %count14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %FamilyBlues13, i32 0, i32 0
  %11 = load i32, i32* %count14, align 4, !tbaa !82
  call void @cff_put_real_deltarray(%struct.cff_writer_s* %8, float* %arraydecay11, i32 %11, i32 8) #4
  %12 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %13 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data15 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %13, i32 0, i32 29
  %FamilyOtherBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data15, i32 0, i32 17
  %values16 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %FamilyOtherBlues, i32 0, i32 1
  %arraydecay17 = getelementptr inbounds [10 x float], [10 x float]* %values16, i32 0, i32 0
  %14 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data18 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %14, i32 0, i32 29
  %FamilyOtherBlues19 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data18, i32 0, i32 17
  %count20 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %FamilyOtherBlues19, i32 0, i32 0
  %15 = load i32, i32* %count20, align 4, !tbaa !83
  call void @cff_put_real_deltarray(%struct.cff_writer_s* %12, float* %arraydecay17, i32 %15, i32 9) #4
  %16 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data21 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %16, i32 0, i32 29
  %StdHW = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data21, i32 0, i32 21
  %count22 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %StdHW, i32 0, i32 0
  %17 = load i32, i32* %count22, align 4, !tbaa !84
  %cmp = icmp sgt i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %19 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data23 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %19, i32 0, i32 29
  %StdHW24 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data23, i32 0, i32 21
  %values25 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %StdHW24, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x float], [1 x float]* %values25, i32 0, i64 0
  %20 = load float, float* %arrayidx, align 4, !tbaa !85
  %conv = fpext float %20 to double
  call void @cff_put_real_value(%struct.cff_writer_s* %18, double %conv, i32 10) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data26 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %21, i32 0, i32 29
  %StdVW = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data26, i32 0, i32 22
  %count27 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %StdVW, i32 0, i32 0
  %22 = load i32, i32* %count27, align 4, !tbaa !86
  %cmp28 = icmp sgt i32 %22, 0
  br i1 %cmp28, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %if.end
  %23 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %24 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data31 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %24, i32 0, i32 29
  %StdVW32 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data31, i32 0, i32 22
  %values33 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %StdVW32, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x float], [1 x float]* %values33, i32 0, i64 0
  %25 = load float, float* %arrayidx34, align 4, !tbaa !85
  %conv35 = fpext float %25 to double
  call void @cff_put_real_value(%struct.cff_writer_s* %23, double %conv35, i32 11) #4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.30, %if.end
  %26 = load i32, i32* %Subrs_offset.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.36
  %27 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %28 = load i32, i32* %Subrs_offset.addr, align 4, !tbaa !5
  call void @cff_put_int_value(%struct.cff_writer_s* %27, i32 %28, i32 19) #4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.36
  %29 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %29, i32 0, i32 11
  %30 = load i32, i32* %FontType, align 4, !tbaa !29
  %cmp39 = icmp ne i32 %30, 1
  br i1 %cmp39, label %if.then.41, label %if.end.63

if.then.41:                                       ; preds = %if.end.38
  %31 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data42 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %31, i32 0, i32 29
  %defaultWidthX = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data42, i32 0, i32 8
  %32 = load i32, i32* %defaultWidthX, align 4, !tbaa !31
  %conv43 = sext i32 %32 to i64
  %cmp44 = icmp ne i64 %conv43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.then.41
  %33 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %34 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data47 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %34, i32 0, i32 29
  %defaultWidthX48 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data47, i32 0, i32 8
  %35 = load i32, i32* %defaultWidthX48, align 4, !tbaa !31
  %conv49 = sitofp i32 %35 to double
  %mul = fmul double %conv49, 3.906250e-03
  call void @cff_put_real_value(%struct.cff_writer_s* %33, double %mul, i32 20) #4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %if.then.41
  %36 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data51 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %36, i32 0, i32 29
  %nominalWidthX = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data51, i32 0, i32 9
  %37 = load i32, i32* %nominalWidthX, align 4, !tbaa !30
  %conv52 = sext i32 %37 to i64
  %cmp53 = icmp ne i64 %conv52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.60

if.then.55:                                       ; preds = %if.end.50
  %38 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %39 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data56 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %39, i32 0, i32 29
  %nominalWidthX57 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data56, i32 0, i32 9
  %40 = load i32, i32* %nominalWidthX57, align 4, !tbaa !30
  %conv58 = sitofp i32 %40 to double
  %mul59 = fmul double %conv58, 3.906250e-03
  call void @cff_put_real_value(%struct.cff_writer_s* %38, double %mul59, i32 21) #4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.55, %if.end.50
  %41 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %42 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data61 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %42, i32 0, i32 29
  %initialRandomSeed = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data61, i32 0, i32 7
  %43 = load i64, i64* %initialRandomSeed, align 8, !tbaa !87
  %conv62 = trunc i64 %43 to i32
  call void @cff_put_int_if_ne(%struct.cff_writer_s* %41, i32 %conv62, i32 0, i32 51) #4
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.60, %if.end.38
  %44 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %45 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data64 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %45, i32 0, i32 29
  %BlueScale = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data64, i32 0, i32 11
  %46 = load float, float* %BlueScale, align 4, !tbaa !88
  %conv65 = fpext float %46 to double
  call void @cff_put_real_if_ne(%struct.cff_writer_s* %44, double %conv65, double 3.962500e-02, i32 41) #4
  %47 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %48 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data66 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %48, i32 0, i32 29
  %BlueShift = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data66, i32 0, i32 12
  %49 = load float, float* %BlueShift, align 4, !tbaa !89
  %conv67 = fpext float %49 to double
  call void @cff_put_real_if_ne(%struct.cff_writer_s* %47, double %conv67, double 7.000000e+00, i32 42) #4
  %50 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %51 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data68 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %51, i32 0, i32 29
  %BlueFuzz = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data68, i32 0, i32 10
  %52 = load i32, i32* %BlueFuzz, align 4, !tbaa !90
  call void @cff_put_int_if_ne(%struct.cff_writer_s* %50, i32 %52, i32 1, i32 43) #4
  %53 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %54 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data69 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %54, i32 0, i32 29
  %StemSnapH = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data69, i32 0, i32 23
  %values70 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %StemSnapH, i32 0, i32 1
  %arraydecay71 = getelementptr inbounds [12 x float], [12 x float]* %values70, i32 0, i32 0
  %55 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data72 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %55, i32 0, i32 29
  %StemSnapH73 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data72, i32 0, i32 23
  %count74 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %StemSnapH73, i32 0, i32 0
  %56 = load i32, i32* %count74, align 4, !tbaa !91
  call void @cff_put_real_deltarray(%struct.cff_writer_s* %53, float* %arraydecay71, i32 %56, i32 44) #4
  %57 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %58 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data75 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %58, i32 0, i32 29
  %StemSnapV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data75, i32 0, i32 24
  %values76 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %StemSnapV, i32 0, i32 1
  %arraydecay77 = getelementptr inbounds [12 x float], [12 x float]* %values76, i32 0, i32 0
  %59 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data78 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %59, i32 0, i32 29
  %StemSnapV79 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data78, i32 0, i32 24
  %count80 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %StemSnapV79, i32 0, i32 0
  %60 = load i32, i32* %count80, align 4, !tbaa !92
  call void @cff_put_real_deltarray(%struct.cff_writer_s* %57, float* %arraydecay77, i32 %60, i32 45) #4
  %61 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data81 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %61, i32 0, i32 29
  %ForceBold = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data81, i32 0, i32 15
  %62 = load i32, i32* %ForceBold, align 4, !tbaa !93
  %cmp82 = icmp ne i32 %62, 0
  br i1 %cmp82, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.end.63
  %63 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %64 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data85 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %64, i32 0, i32 29
  %ForceBold86 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data85, i32 0, i32 15
  %65 = load i32, i32* %ForceBold86, align 4, !tbaa !93
  call void @cff_put_bool_value(%struct.cff_writer_s* %63, i32 %65, i32 46) #4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %if.end.63
  %66 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %options = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %66, i32 0, i32 0
  %67 = load i32, i32* %options, align 4, !tbaa !32
  %and = and i32 %67, 1
  %tobool88 = icmp ne i32 %and, 0
  br i1 %tobool88, label %if.end.91, label %if.then.89

if.then.89:                                       ; preds = %if.end.87
  %68 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %69 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data90 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %69, i32 0, i32 29
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data90, i32 0, i32 4
  %70 = load i32, i32* %lenIV, align 4, !tbaa !94
  call void @cff_put_int_if_ne(%struct.cff_writer_s* %68, i32 %70, i32 -1, i32 48) #4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.87
  %71 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %72 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data92 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %72, i32 0, i32 29
  %LanguageGroup = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data92, i32 0, i32 18
  %73 = load i32, i32* %LanguageGroup, align 4, !tbaa !95
  call void @cff_put_int_if_ne(%struct.cff_writer_s* %71, i32 %73, i32 0, i32 49) #4
  %74 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %75 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data93 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %75, i32 0, i32 29
  %ExpansionFactor = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data93, i32 0, i32 14
  %76 = load float, float* %ExpansionFactor, align 4, !tbaa !96
  %conv94 = fpext float %76 to double
  call void @cff_put_real_if_ne(%struct.cff_writer_s* %74, double %conv94, double 6.000000e-02, i32 50) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @psf_write_cid0_font(%struct.stream_s* %s, %struct.gs_font_cid0_s* %pfont, i32 %options, i8* %subset_cids, i32 %subset_size, %struct.gs_const_string_s* %alt_font_name) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pfont.addr = alloca %struct.gs_font_cid0_s*, align 8
  %options.addr = alloca i32, align 4
  %subset_cids.addr = alloca i8*, align 8
  %subset_size.addr = alloca i32, align 4
  %alt_font_name.addr = alloca %struct.gs_const_string_s*, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %writer = alloca %struct.cff_writer_s, align 8
  %std_string_items = alloca [500 x %struct.cff_string_item_s], align 16
  %string_items = alloca [540 x %struct.cff_string_item_s], align 16
  %font_name = alloca %struct.gs_const_string_s, align 8
  %poss = alloca %struct.stream_s, align 8
  %charstrings_count = alloca i32, align 4
  %charstrings_size = alloca i32, align 4
  %gsubrs_count = alloca i32, align 4
  %gsubrs_size = alloca i32, align 4
  %charset_size = alloca i32, align 4
  %fdselect_size = alloca i32, align 4
  %fdselect_format = alloca i32, align 4
  %subrs_count = alloca [256 x i32], align 16
  %subrs_size = alloca [256 x i32], align 16
  %Top_size = alloca i32, align 4
  %GSubrs_offset = alloca i32, align 4
  %charset_offset = alloca i32, align 4
  %FDSelect_offset = alloca i32, align 4
  %CharStrings_offset = alloca i32, align 4
  %Font_offset = alloca i32, align 4
  %FDArray_offsets = alloca [257 x i32], align 16
  %Private_offsets = alloca [257 x i32], align 16
  %Subrs_offsets = alloca [257 x i32], align 16
  %End_offset = alloca i32, align 4
  %j = alloca i32, align 4
  %genum = alloca %struct.psf_glyph_enum_s, align 8
  %info = alloca %struct.gs_font_info_s, align 8
  %start_pos = alloca i64, align 8
  %offset = alloca i32, align 4
  %num_fonts = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pfd = alloca %struct.gs_font_type1_s*, align 8
  %pfd83 = alloca %struct.gs_font_type1_s*, align 8
  %pfd221 = alloca %struct.gs_font_type1_s*, align 8
  %pfd265 = alloca %struct.gs_font_type1_s*, align 8
  %pfd306 = alloca %struct.gs_font_type1_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_cid0_s* %pfont, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  store i8* %subset_cids, i8** %subset_cids.addr, align 8, !tbaa !1
  store i32 %subset_size, i32* %subset_size.addr, align 4, !tbaa !5
  store %struct.gs_const_string_s* %alt_font_name, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_cid0_s* %1 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %2, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %3 = bitcast %struct.cff_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 112, i8* %3) #1
  %4 = bitcast [500 x %struct.cff_string_item_s]* %std_string_items to i8*
  call void @llvm.lifetime.start(i64 12000, i8* %4) #1
  %5 = bitcast [540 x %struct.cff_string_item_s]* %string_items to i8*
  call void @llvm.lifetime.start(i64 12960, i8* %5) #1
  %6 = bitcast %struct.gs_const_string_s* %font_name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast %struct.stream_s* %poss to i8*
  call void @llvm.lifetime.start(i64 352, i8* %7) #1
  %8 = bitcast i32* %charstrings_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %charstrings_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %gsubrs_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %gsubrs_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %charset_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %fdselect_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %fdselect_format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast [256 x i32]* %subrs_count to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %15) #1
  %16 = bitcast [256 x i32]* %subrs_size to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %16) #1
  %17 = bitcast i32* %Top_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 8388607, i32* %Top_size, align 4, !tbaa !5
  %18 = bitcast i32* %GSubrs_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 33554431, i32* %GSubrs_offset, align 4, !tbaa !5
  %19 = bitcast i32* %charset_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 33554431, i32* %charset_offset, align 4, !tbaa !5
  %20 = bitcast i32* %FDSelect_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 33554431, i32* %FDSelect_offset, align 4, !tbaa !5
  %21 = bitcast i32* %CharStrings_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 33554431, i32* %CharStrings_offset, align 4, !tbaa !5
  %22 = bitcast i32* %Font_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 33554431, i32* %Font_offset, align 4, !tbaa !5
  %23 = bitcast [257 x i32]* %FDArray_offsets to i8*
  call void @llvm.lifetime.start(i64 1028, i8* %23) #1
  %24 = bitcast [257 x i32]* %Private_offsets to i8*
  call void @llvm.lifetime.start(i64 1028, i8* %24) #1
  %25 = bitcast [257 x i32]* %Subrs_offsets to i8*
  call void @llvm.lifetime.start(i64 1028, i8* %25) #1
  %26 = bitcast i32* %End_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 33554431, i32* %End_offset, align 4, !tbaa !5
  %27 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.start(i64 48, i8* %28) #1
  %29 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 160, i8* %29) #1
  %30 = bitcast i64* %start_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %num_fonts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %33, i32 0, i32 29
  %FDArray_size = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 3
  %34 = load i32, i32* %FDArray_size, align 4, !tbaa !97
  store i32 %34, i32* %num_fonts, align 4, !tbaa !5
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %37 = bitcast %struct.gs_font_cid0_s* %36 to %struct.gs_font_s*
  %38 = load i8*, i8** %subset_cids.addr, align 8, !tbaa !1
  %39 = load i32, i32* %subset_size.addr, align 4, !tbaa !5
  call void @psf_enumerate_bits_begin(%struct.psf_glyph_enum_s* %genum, %struct.gs_font_s* %37, i8* %38, i32 %39, i32 0) #4
  %40 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gs_font_cid0_s* %40 to %struct.gs_font_base_s*
  %call = call i32 @psf_check_outline_glyphs(%struct.gs_font_base_s* %41, %struct.psf_glyph_enum_s* %genum, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)* @cid0_glyph_data) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %42 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %42, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %43 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

if.end:                                           ; preds = %entry
  %44 = load i8*, i8** %subset_cids.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %44, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %45 = load i32, i32* %subset_size.addr, align 4, !tbaa !5
  %cmp1 = icmp ugt i32 %45, 0
  br i1 %cmp1, label %land.lhs.true.2, label %if.end.5

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %46 = load i8*, i8** %subset_cids.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx, align 1, !tbaa !62
  %conv = zext i8 %47 to i32
  %and = and i32 %conv, 128
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true.2
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

if.end.5:                                         ; preds = %land.lhs.true.2, %land.lhs.true, %if.end
  %48 = load i32, i32* %options.addr, align 4, !tbaa !5
  %options6 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 0
  store i32 %48, i32* %options6, align 4, !tbaa !32
  call void @s_init(%struct.stream_s* %poss, %struct.gs_memory_s* null) #4
  call void @swrite_position_only(%struct.stream_s* %poss) #4
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  store %struct.stream_s* %poss, %struct.stream_s** %strm, align 8, !tbaa !37
  %49 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %pfont7 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 2
  store %struct.gs_font_base_s* %49, %struct.gs_font_base_s** %pfont7, align 8, !tbaa !38
  %glyph_data = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 3
  store i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)* @cid0_glyph_data, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)** %glyph_data, align 8, !tbaa !39
  %offset_size = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 4
  store i64 1, i64* %offset_size, align 8, !tbaa !40
  %50 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call8 = call i64 @stell(%struct.stream_s* %50) #4
  %start_pos9 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 5
  store i64 %call8, i64* %start_pos9, align 8, !tbaa !41
  %FontBBox = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 8
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !102
  %FontBBox10 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 8
  %p11 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox10, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p11, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !103
  %FontBBox12 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 8
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox12, i32 0, i32 1
  %y13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  store i32 0, i32* %y13, align 4, !tbaa !104
  %FontBBox14 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 8
  %q15 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox14, i32 0, i32 1
  %x16 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q15, i32 0, i32 0
  store i32 0, i32* %x16, align 4, !tbaa !105
  %51 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %tobool17 = icmp ne %struct.gs_const_string_s* %51, null
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.5
  %52 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %53 = bitcast %struct.gs_const_string_s* %font_name to i8*
  %54 = bitcast %struct.gs_const_string_s* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false), !tbaa.struct !49
  br label %if.end.34

if.else:                                          ; preds = %if.end.5
  %55 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %font_name19 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %55, i32 0, i32 22
  %size = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name19, i32 0, i32 1
  %56 = load i32, i32* %size, align 4, !tbaa !106
  %tobool20 = icmp ne i32 %56, 0
  br i1 %tobool20, label %if.then.21, label %if.else.26

if.then.21:                                       ; preds = %if.else
  %57 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %font_name22 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %57, i32 0, i32 22
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name22, i32 0, i32 0
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 0
  store i8* %arraydecay, i8** %data, align 8, !tbaa !50
  %58 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %font_name23 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %58, i32 0, i32 22
  %size24 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name23, i32 0, i32 1
  %59 = load i32, i32* %size24, align 4, !tbaa !106
  %size25 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 1
  store i32 %59, i32* %size25, align 4, !tbaa !53
  br label %if.end.33

if.else.26:                                       ; preds = %if.else
  %60 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %key_name = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %60, i32 0, i32 21
  %chars27 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [48 x i8], [48 x i8]* %chars27, i32 0, i32 0
  %data29 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 0
  store i8* %arraydecay28, i8** %data29, align 8, !tbaa !50
  %61 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %key_name30 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %61, i32 0, i32 21
  %size31 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name30, i32 0, i32 1
  %62 = load i32, i32* %size31, align 4, !tbaa !107
  %size32 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 1
  store i32 %62, i32* %size32, align 4, !tbaa !53
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.26, %if.then.21
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.18
  %std_strings = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 6
  %arraydecay35 = getelementptr inbounds [500 x %struct.cff_string_item_s], [500 x %struct.cff_string_item_s]* %std_string_items, i32 0, i32 0
  call void @cff_string_table_init(%struct.cff_string_table_s* %std_strings, %struct.cff_string_item_s* %arraydecay35, i32 500) #4
  %strings = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 7
  %arraydecay36 = getelementptr inbounds [540 x %struct.cff_string_item_s], [540 x %struct.cff_string_item_s]* %string_items, i32 0, i32 0
  call void @cff_string_table_init(%struct.cff_string_table_s* %strings, %struct.cff_string_item_s* %arraydecay36, i32 540) #4
  %63 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %cidata37 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %63, i32 0, i32 29
  %common = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata37, i32 0, i32 0
  %CIDSystemInfo = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 0
  call void @cff_write_ROS(%struct.cff_writer_s* %writer, %struct.gs_cid_system_info_s* %CIDSystemInfo) #4
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %64 = load i32, i32* %j, align 4, !tbaa !5
  %65 = load i32, i32* %num_fonts, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %64, %65
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = bitcast %struct.gs_font_type1_s** %pfd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %67 to i64
  %68 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %cidata40 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %68, i32 0, i32 29
  %FDArray = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata40, i32 0, i32 2
  %69 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !108
  %arrayidx41 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %69, i64 %idxprom
  %70 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx41, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %70, %struct.gs_font_type1_s** %pfd, align 8, !tbaa !1
  %71 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfd, align 8, !tbaa !1
  %72 = bitcast %struct.gs_font_type1_s* %71 to %struct.gs_font_base_s*
  call void @cff_write_Top_fdarray(%struct.cff_writer_s* %writer, %struct.gs_font_base_s* %72, i32 0, i32 0) #4
  %73 = bitcast %struct.gs_font_type1_s** %pfd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.52, %for.end
  %75 = load i32, i32* %j, align 4, !tbaa !5
  %76 = load i32, i32* %num_fonts, align 4, !tbaa !5
  %cmp43 = icmp sle i32 %75, %76
  br i1 %cmp43, label %for.body.45, label %for.end.54

for.body.45:                                      ; preds = %for.cond.42
  %77 = load i32, i32* %num_fonts, align 4, !tbaa !5
  %div = sdiv i32 2130706431, %77
  %78 = load i32, i32* %j, align 4, !tbaa !5
  %mul = mul nsw i32 %div, %78
  %add = add nsw i32 %mul, 16777216
  %79 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom46 = sext i32 %79 to i64
  %arrayidx47 = getelementptr inbounds [257 x i32], [257 x i32]* %Subrs_offsets, i32 0, i64 %idxprom46
  store i32 %add, i32* %arrayidx47, align 4, !tbaa !5
  %80 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom48 = sext i32 %80 to i64
  %arrayidx49 = getelementptr inbounds [257 x i32], [257 x i32]* %Private_offsets, i32 0, i64 %idxprom48
  store i32 %add, i32* %arrayidx49, align 4, !tbaa !5
  %81 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom50 = sext i32 %81 to i64
  %arrayidx51 = getelementptr inbounds [257 x i32], [257 x i32]* %FDArray_offsets, i32 0, i64 %idxprom50
  store i32 %add, i32* %arrayidx51, align 4, !tbaa !5
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.45
  %82 = load i32, i32* %j, align 4, !tbaa !5
  %inc53 = add nsw i32 %82, 1
  store i32 %inc53, i32* %j, align 4, !tbaa !5
  br label %for.cond.42

for.end.54:                                       ; preds = %for.cond.42
  %83 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and55 = and i32 %83, 8
  %cmp56 = icmp ne i32 %and55, 0
  br i1 %cmp56, label %if.then.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.54
  %84 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %cidata58 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %84, i32 0, i32 29
  %FDArray59 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata58, i32 0, i32 2
  %85 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray59, align 8, !tbaa !108
  %arrayidx60 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %85, i64 0
  %86 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx60, align 8, !tbaa !1
  %87 = bitcast %struct.gs_font_type1_s* %86 to %struct.gs_font_base_s*
  %call61 = call i32 @cff_convert_charstrings(%struct.cff_writer_s* %writer, %struct.gs_font_base_s* %87) #4
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %lor.lhs.false, %for.end.54
  store i32 0, i32* %gsubrs_count, align 4, !tbaa !5
  store i32 0, i32* %gsubrs_size, align 4, !tbaa !5
  br label %if.end.69

if.else.64:                                       ; preds = %lor.lhs.false
  %88 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %cidata65 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %88, i32 0, i32 29
  %FDArray66 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata65, i32 0, i32 2
  %89 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray66, align 8, !tbaa !108
  %arrayidx67 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %89, i64 0
  %90 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx67, align 8, !tbaa !1
  %call68 = call i32 @cff_write_Subrs_offsets(%struct.cff_writer_s* %writer, i32* %gsubrs_count, %struct.gs_font_type1_s* %90, i32 1) #4
  store i32 %call68, i32* %gsubrs_size, align 4, !tbaa !5
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.64, %if.then.63
  call void @swrite_position_only(%struct.stream_s* %poss) #4
  %call70 = call i32 @cff_write_cidset(%struct.cff_writer_s* %writer, %struct.psf_glyph_enum_s* %genum) #4
  %call71 = call i64 @stell(%struct.stream_s* %poss) #4
  %conv72 = trunc i64 %call71 to i32
  store i32 %conv72, i32* %charset_size, align 4, !tbaa !5
  %call73 = call i32 @cff_FDSelect_size(%struct.cff_writer_s* %writer, %struct.psf_glyph_enum_s* %genum, i32* %fdselect_format) #4
  store i32 %call73, i32* %fdselect_size, align 4, !tbaa !5
  %call74 = call i32 @cff_write_CharStrings_offsets(%struct.cff_writer_s* %writer, %struct.psf_glyph_enum_s* %genum, i32* %charstrings_count) #4
  store i32 %call74, i32* %code, align 4, !tbaa !5
  %91 = load i32, i32* %code, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %91, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.69
  %92 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %92, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

if.end.78:                                        ; preds = %if.end.69
  %93 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %93, i32* %charstrings_size, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.95, %if.end.78
  %94 = load i32, i32* %j, align 4, !tbaa !5
  %95 = load i32, i32* %num_fonts, align 4, !tbaa !5
  %cmp80 = icmp slt i32 %94, %95
  br i1 %cmp80, label %for.body.82, label %for.end.97

for.body.82:                                      ; preds = %for.cond.79
  %96 = bitcast %struct.gs_font_type1_s** %pfd83 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  %97 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom84 = sext i32 %97 to i64
  %98 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %cidata85 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %98, i32 0, i32 29
  %FDArray86 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata85, i32 0, i32 2
  %99 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray86, align 8, !tbaa !108
  %arrayidx87 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %99, i64 %idxprom84
  %100 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx87, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %100, %struct.gs_font_type1_s** %pfd83, align 8, !tbaa !1
  %101 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfd83, align 8, !tbaa !1
  %102 = bitcast %struct.gs_font_type1_s* %101 to %struct.gs_font_base_s*
  %call88 = call i32 @cff_convert_charstrings(%struct.cff_writer_s* %writer, %struct.gs_font_base_s* %102) #4
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.82
  br label %cond.end

cond.false:                                       ; preds = %for.body.82
  %103 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom90 = sext i32 %103 to i64
  %arrayidx91 = getelementptr inbounds [256 x i32], [256 x i32]* %subrs_count, i32 0, i64 %idxprom90
  %104 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfd83, align 8, !tbaa !1
  %call92 = call i32 @cff_write_Subrs_offsets(%struct.cff_writer_s* %writer, i32* %arrayidx91, %struct.gs_font_type1_s* %104, i32 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call92, %cond.false ]
  %105 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom93 = sext i32 %105 to i64
  %arrayidx94 = getelementptr inbounds [256 x i32], [256 x i32]* %subrs_size, i32 0, i64 %idxprom93
  store i32 %cond, i32* %arrayidx94, align 4, !tbaa !5
  %106 = bitcast %struct.gs_font_type1_s** %pfd83 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  br label %for.inc.95

for.inc.95:                                       ; preds = %cond.end
  %107 = load i32, i32* %j, align 4, !tbaa !5
  %inc96 = add nsw i32 %107, 1
  store i32 %inc96, i32* %j, align 4, !tbaa !5
  br label %for.cond.79

for.end.97:                                       ; preds = %for.cond.79
  %108 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %109 = bitcast %struct.gs_font_cid0_s* %108 to %struct.gs_font_base_s*
  %call98 = call i32 @cff_get_Top_info_common(%struct.cff_writer_s* %writer, %struct.gs_font_base_s* %109, i32 1, %struct.gs_font_info_s* %info) #4
  br label %iter

iter:                                             ; preds = %if.else.375, %for.end.97
  call void @swrite_position_only(%struct.stream_s* %poss) #4
  %strm99 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  store %struct.stream_s* %poss, %struct.stream_s** %strm99, align 8, !tbaa !37
  %size100 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 1
  %110 = load i32, i32* %size100, align 4, !tbaa !53
  %call101 = call i32 @cff_Index_size(i32 1, i32 %110) #4
  %add102 = add i32 4, %call101
  %111 = load i32, i32* %Top_size, align 4, !tbaa !5
  %call103 = call i32 @cff_Index_size(i32 1, i32 %111) #4
  %add104 = add i32 %add102, %call103
  %strings105 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 7
  %count = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %strings105, i32 0, i32 1
  %112 = load i32, i32* %count, align 4, !tbaa !54
  %strings106 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 7
  %total = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %strings106, i32 0, i32 3
  %113 = load i32, i32* %total, align 4, !tbaa !55
  %call107 = call i32 @cff_Index_size(i32 %112, i32 %113) #4
  %add108 = add i32 %add104, %call107
  store i32 %add108, i32* %GSubrs_offset, align 4, !tbaa !5
  %114 = load i32, i32* %GSubrs_offset, align 4, !tbaa !5
  %115 = load i32, i32* %gsubrs_count, align 4, !tbaa !5
  %116 = load i32, i32* %gsubrs_size, align 4, !tbaa !5
  %call109 = call i32 @cff_Index_size(i32 %115, i32 %116) #4
  %add110 = add i32 %114, %call109
  store i32 %add110, i32* %charset_offset, align 4, !tbaa !5
  %117 = load i32, i32* %charset_offset, align 4, !tbaa !5
  %118 = load i32, i32* %charset_size, align 4, !tbaa !5
  %add111 = add i32 %117, %118
  store i32 %add111, i32* %FDSelect_offset, align 4, !tbaa !5
  %119 = load i32, i32* %FDSelect_offset, align 4, !tbaa !5
  %120 = load i32, i32* %fdselect_size, align 4, !tbaa !5
  %add112 = add i32 %119, %120
  store i32 %add112, i32* %CharStrings_offset, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %iter
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %write

write:                                            ; preds = %if.then.372, %do.end
  %strm113 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %121 = load %struct.stream_s*, %struct.stream_s** %strm113, align 8, !tbaa !37
  %call114 = call i64 @stell(%struct.stream_s* %121) #4
  store i64 %call114, i64* %start_pos, align 8, !tbaa !46
  br label %do.body.115

do.body.115:                                      ; preds = %write
  br label %do.cond.116

do.cond.116:                                      ; preds = %do.body.115
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  %122 = load i32, i32* %End_offset, align 4, !tbaa !5
  %call118 = call i32 @cff_write_header(%struct.cff_writer_s* %writer, i32 %122) #4
  %size119 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 1
  %123 = load i32, i32* %size119, align 4, !tbaa !53
  call void @cff_put_Index_header(%struct.cff_writer_s* %writer, i32 1, i32 %123) #4
  %size120 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 1
  %124 = load i32, i32* %size120, align 4, !tbaa !53
  %add121 = add i32 %124, 1
  call void @put_offset(%struct.cff_writer_s* %writer, i32 %add121) #4
  %strm122 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %125 = load %struct.stream_s*, %struct.stream_s** %strm122, align 8, !tbaa !37
  %data123 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 0
  %126 = load i8*, i8** %data123, align 8, !tbaa !50
  %size124 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name, i32 0, i32 1
  %127 = load i32, i32* %size124, align 4, !tbaa !53
  %call125 = call i32 @put_bytes(%struct.stream_s* %125, i8* %126, i32 %127) #4
  %128 = load i32, i32* %Top_size, align 4, !tbaa !5
  call void @cff_put_Index_header(%struct.cff_writer_s* %writer, i32 1, i32 %128) #4
  %129 = load i32, i32* %Top_size, align 4, !tbaa !5
  %add126 = add i32 %129, 1
  call void @put_offset(%struct.cff_writer_s* %writer, i32 %add126) #4
  %strm127 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %130 = load %struct.stream_s*, %struct.stream_s** %strm127, align 8, !tbaa !37
  %call128 = call i64 @stell(%struct.stream_s* %130) #4
  %131 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub = sub nsw i64 %call128, %131
  %conv129 = trunc i64 %sub to i32
  store i32 %conv129, i32* %offset, align 4, !tbaa !5
  %132 = load i32, i32* %charset_offset, align 4, !tbaa !5
  %133 = load i32, i32* %CharStrings_offset, align 4, !tbaa !5
  %134 = load i32, i32* %FDSelect_offset, align 4, !tbaa !5
  %135 = load i32, i32* %Font_offset, align 4, !tbaa !5
  call void @cff_write_Top_cidfont(%struct.cff_writer_s* %writer, i32 %132, i32 %133, i32 %134, i32 %135, %struct.gs_font_info_s* %info) #4
  %strm130 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %136 = load %struct.stream_s*, %struct.stream_s** %strm130, align 8, !tbaa !37
  %call131 = call i64 @stell(%struct.stream_s* %136) #4
  %137 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub132 = sub nsw i64 %call131, %137
  %138 = load i32, i32* %offset, align 4, !tbaa !5
  %conv133 = zext i32 %138 to i64
  %sub134 = sub nsw i64 %sub132, %conv133
  %conv135 = trunc i64 %sub134 to i32
  store i32 %conv135, i32* %Top_size, align 4, !tbaa !5
  br label %do.body.136

do.body.136:                                      ; preds = %do.end.117
  br label %do.cond.137

do.cond.137:                                      ; preds = %do.body.136
  br label %do.end.138

do.end.138:                                       ; preds = %do.cond.137
  %strings139 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 7
  call void @cff_put_Index(%struct.cff_writer_s* %writer, %struct.cff_string_table_s* %strings139) #4
  %strm140 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %139 = load %struct.stream_s*, %struct.stream_s** %strm140, align 8, !tbaa !37
  %call141 = call i64 @stell(%struct.stream_s* %139) #4
  %140 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub142 = sub nsw i64 %call141, %140
  %conv143 = trunc i64 %sub142 to i32
  store i32 %conv143, i32* %offset, align 4, !tbaa !5
  br label %do.body.144

do.body.144:                                      ; preds = %do.end.138
  br label %do.cond.145

do.cond.145:                                      ; preds = %do.body.144
  br label %do.end.146

do.end.146:                                       ; preds = %do.cond.145
  %141 = load i32, i32* %offset, align 4, !tbaa !5
  %142 = load i32, i32* %GSubrs_offset, align 4, !tbaa !5
  %cmp147 = icmp ugt i32 %141, %142
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %do.end.146
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

if.end.150:                                       ; preds = %do.end.146
  %143 = load i32, i32* %offset, align 4, !tbaa !5
  store i32 %143, i32* %GSubrs_offset, align 4, !tbaa !5
  %144 = load i32, i32* %gsubrs_count, align 4, !tbaa !5
  %cmp151 = icmp eq i32 %144, 0
  br i1 %cmp151, label %if.then.159, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %if.end.150
  %145 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %cidata154 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %145, i32 0, i32 29
  %FDArray155 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata154, i32 0, i32 2
  %146 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray155, align 8, !tbaa !108
  %arrayidx156 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %146, i64 0
  %147 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx156, align 8, !tbaa !1
  %148 = bitcast %struct.gs_font_type1_s* %147 to %struct.gs_font_base_s*
  %call157 = call i32 @cff_convert_charstrings(%struct.cff_writer_s* %writer, %struct.gs_font_base_s* %148) #4
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.then.159, label %if.else.160

if.then.159:                                      ; preds = %lor.lhs.false.153, %if.end.150
  call void @cff_put_Index_header(%struct.cff_writer_s* %writer, i32 0, i32 0) #4
  br label %if.end.164

if.else.160:                                      ; preds = %lor.lhs.false.153
  %149 = load i32, i32* %gsubrs_count, align 4, !tbaa !5
  %150 = load i32, i32* %gsubrs_size, align 4, !tbaa !5
  %151 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %cidata161 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %151, i32 0, i32 29
  %FDArray162 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata161, i32 0, i32 2
  %152 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray162, align 8, !tbaa !108
  %arrayidx163 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %152, i64 0
  %153 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx163, align 8, !tbaa !1
  call void @cff_write_Subrs(%struct.cff_writer_s* %writer, i32 %149, i32 %150, %struct.gs_font_type1_s* %153, i32 1) #4
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.160, %if.then.159
  br label %do.body.165

do.body.165:                                      ; preds = %if.end.164
  br label %do.cond.166

do.cond.166:                                      ; preds = %do.body.165
  br label %do.end.167

do.end.167:                                       ; preds = %do.cond.166
  %call168 = call i32 @cff_write_cidset(%struct.cff_writer_s* %writer, %struct.psf_glyph_enum_s* %genum) #4
  %strm169 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %154 = load %struct.stream_s*, %struct.stream_s** %strm169, align 8, !tbaa !37
  %call170 = call i64 @stell(%struct.stream_s* %154) #4
  %155 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub171 = sub nsw i64 %call170, %155
  %conv172 = trunc i64 %sub171 to i32
  store i32 %conv172, i32* %offset, align 4, !tbaa !5
  br label %do.body.173

do.body.173:                                      ; preds = %do.end.167
  br label %do.cond.174

do.cond.174:                                      ; preds = %do.body.173
  br label %do.end.175

do.end.175:                                       ; preds = %do.cond.174
  %156 = load i32, i32* %offset, align 4, !tbaa !5
  %157 = load i32, i32* %FDSelect_offset, align 4, !tbaa !5
  %cmp176 = icmp ugt i32 %156, %157
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %do.end.175
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

if.end.179:                                       ; preds = %do.end.175
  %158 = load i32, i32* %offset, align 4, !tbaa !5
  store i32 %158, i32* %FDSelect_offset, align 4, !tbaa !5
  %159 = load i32, i32* %fdselect_size, align 4, !tbaa !5
  %160 = load i32, i32* %fdselect_format, align 4, !tbaa !5
  %call180 = call i32 @cff_write_FDSelect(%struct.cff_writer_s* %writer, %struct.psf_glyph_enum_s* %genum, i32 %159, i32 %160) #4
  %strm181 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %161 = load %struct.stream_s*, %struct.stream_s** %strm181, align 8, !tbaa !37
  %call182 = call i64 @stell(%struct.stream_s* %161) #4
  %162 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub183 = sub nsw i64 %call182, %162
  %conv184 = trunc i64 %sub183 to i32
  store i32 %conv184, i32* %offset, align 4, !tbaa !5
  br label %do.body.185

do.body.185:                                      ; preds = %if.end.179
  br label %do.cond.186

do.cond.186:                                      ; preds = %do.body.185
  br label %do.end.187

do.end.187:                                       ; preds = %do.cond.186
  %163 = load i32, i32* %offset, align 4, !tbaa !5
  %164 = load i32, i32* %CharStrings_offset, align 4, !tbaa !5
  %cmp188 = icmp ugt i32 %163, %164
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %do.end.187
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

if.end.191:                                       ; preds = %do.end.187
  %165 = load i32, i32* %offset, align 4, !tbaa !5
  store i32 %165, i32* %CharStrings_offset, align 4, !tbaa !5
  %166 = load i32, i32* %charstrings_count, align 4, !tbaa !5
  %167 = load i32, i32* %charstrings_size, align 4, !tbaa !5
  call void @cff_write_CharStrings(%struct.cff_writer_s* %writer, %struct.psf_glyph_enum_s* %genum, i32 %166, i32 %167) #4
  %strm192 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %168 = load %struct.stream_s*, %struct.stream_s** %strm192, align 8, !tbaa !37
  %call193 = call i64 @stell(%struct.stream_s* %168) #4
  %169 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub194 = sub nsw i64 %call193, %169
  %conv195 = trunc i64 %sub194 to i32
  store i32 %conv195, i32* %offset, align 4, !tbaa !5
  br label %do.body.196

do.body.196:                                      ; preds = %if.end.191
  br label %do.cond.197

do.cond.197:                                      ; preds = %do.body.196
  br label %do.end.198

do.end.198:                                       ; preds = %do.cond.197
  %170 = load i32, i32* %offset, align 4, !tbaa !5
  %171 = load i32, i32* %Font_offset, align 4, !tbaa !5
  %cmp199 = icmp ugt i32 %170, %171
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %do.end.198
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

if.end.202:                                       ; preds = %do.end.198
  %172 = load i32, i32* %offset, align 4, !tbaa !5
  store i32 %172, i32* %Font_offset, align 4, !tbaa !5
  %arraydecay203 = getelementptr inbounds [257 x i32], [257 x i32]* %FDArray_offsets, i32 0, i32 0
  %173 = load i32, i32* %num_fonts, align 4, !tbaa !5
  call void @cff_write_FDArray_offsets(%struct.cff_writer_s* %writer, i32* %arraydecay203, i32 %173) #4
  %strm204 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %174 = load %struct.stream_s*, %struct.stream_s** %strm204, align 8, !tbaa !37
  %call205 = call i64 @stell(%struct.stream_s* %174) #4
  %175 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub206 = sub nsw i64 %call205, %175
  %conv207 = trunc i64 %sub206 to i32
  store i32 %conv207, i32* %offset, align 4, !tbaa !5
  br label %do.body.208

do.body.208:                                      ; preds = %if.end.202
  br label %do.cond.209

do.cond.209:                                      ; preds = %do.body.208
  br label %do.end.210

do.end.210:                                       ; preds = %do.cond.209
  %176 = load i32, i32* %offset, align 4, !tbaa !5
  %arrayidx211 = getelementptr inbounds [257 x i32], [257 x i32]* %FDArray_offsets, i32 0, i64 0
  %177 = load i32, i32* %arrayidx211, align 4, !tbaa !5
  %cmp212 = icmp ugt i32 %176, %177
  br i1 %cmp212, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %do.end.210
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

if.end.215:                                       ; preds = %do.end.210
  %178 = load i32, i32* %offset, align 4, !tbaa !5
  %arrayidx216 = getelementptr inbounds [257 x i32], [257 x i32]* %FDArray_offsets, i32 0, i64 0
  store i32 %178, i32* %arrayidx216, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.217

for.cond.217:                                     ; preds = %for.inc.261, %if.end.215
  %179 = load i32, i32* %j, align 4, !tbaa !5
  %180 = load i32, i32* %num_fonts, align 4, !tbaa !5
  %cmp218 = icmp slt i32 %179, %180
  br i1 %cmp218, label %for.body.220, label %for.end.263

for.body.220:                                     ; preds = %for.cond.217
  %181 = bitcast %struct.gs_font_type1_s** %pfd221 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #1
  %182 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom222 = sext i32 %182 to i64
  %183 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %cidata223 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %183, i32 0, i32 29
  %FDArray224 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata223, i32 0, i32 2
  %184 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray224, align 8, !tbaa !108
  %arrayidx225 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %184, i64 %idxprom222
  %185 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx225, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %185, %struct.gs_font_type1_s** %pfd221, align 8, !tbaa !1
  %186 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and226 = and i32 %186, 2
  %tobool227 = icmp ne i32 %and226, 0
  br i1 %tobool227, label %if.then.228, label %if.end.235

if.then.228:                                      ; preds = %for.body.220
  %187 = load i32, i32* %options.addr, align 4, !tbaa !5
  %or = or i32 %187, 1
  store i32 %or, i32* %options.addr, align 4, !tbaa !5
  %188 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfd221, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %188, i32 0, i32 11
  %189 = load i32, i32* %FontType, align 4, !tbaa !29
  %cmp229 = icmp ne i32 %189, 2
  br i1 %cmp229, label %if.then.231, label %if.end.234

if.then.231:                                      ; preds = %if.then.228
  %190 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfd221, align 8, !tbaa !1
  %data232 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %190, i32 0, i32 29
  %nominalWidthX = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data232, i32 0, i32 9
  store i32 0, i32* %nominalWidthX, align 4, !tbaa !30
  %191 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfd221, align 8, !tbaa !1
  %data233 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %191, i32 0, i32 29
  %defaultWidthX = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data233, i32 0, i32 8
  store i32 0, i32* %defaultWidthX, align 4, !tbaa !31
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.231, %if.then.228
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %for.body.220
  %192 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfd221, align 8, !tbaa !1
  %193 = bitcast %struct.gs_font_type1_s* %192 to %struct.gs_font_base_s*
  %194 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom236 = sext i32 %194 to i64
  %arrayidx237 = getelementptr inbounds [257 x i32], [257 x i32]* %Private_offsets, i32 0, i64 %idxprom236
  %195 = load i32, i32* %arrayidx237, align 4, !tbaa !5
  %196 = load i32, i32* %j, align 4, !tbaa !5
  %add238 = add nsw i32 %196, 1
  %idxprom239 = sext i32 %add238 to i64
  %arrayidx240 = getelementptr inbounds [257 x i32], [257 x i32]* %Private_offsets, i32 0, i64 %idxprom239
  %197 = load i32, i32* %arrayidx240, align 4, !tbaa !5
  %198 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom241 = sext i32 %198 to i64
  %arrayidx242 = getelementptr inbounds [257 x i32], [257 x i32]* %Private_offsets, i32 0, i64 %idxprom241
  %199 = load i32, i32* %arrayidx242, align 4, !tbaa !5
  %sub243 = sub i32 %197, %199
  call void @cff_write_Top_fdarray(%struct.cff_writer_s* %writer, %struct.gs_font_base_s* %193, i32 %195, i32 %sub243) #4
  %strm244 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %200 = load %struct.stream_s*, %struct.stream_s** %strm244, align 8, !tbaa !37
  %call245 = call i64 @stell(%struct.stream_s* %200) #4
  %201 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub246 = sub nsw i64 %call245, %201
  %conv247 = trunc i64 %sub246 to i32
  store i32 %conv247, i32* %offset, align 4, !tbaa !5
  br label %do.body.248

do.body.248:                                      ; preds = %if.end.235
  br label %do.cond.249

do.cond.249:                                      ; preds = %do.body.248
  br label %do.end.250

do.end.250:                                       ; preds = %do.cond.249
  %202 = load i32, i32* %offset, align 4, !tbaa !5
  %203 = load i32, i32* %j, align 4, !tbaa !5
  %add251 = add nsw i32 %203, 1
  %idxprom252 = sext i32 %add251 to i64
  %arrayidx253 = getelementptr inbounds [257 x i32], [257 x i32]* %FDArray_offsets, i32 0, i64 %idxprom252
  %204 = load i32, i32* %arrayidx253, align 4, !tbaa !5
  %cmp254 = icmp ugt i32 %202, %204
  br i1 %cmp254, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %do.end.250
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.257:                                       ; preds = %do.end.250
  %205 = load i32, i32* %offset, align 4, !tbaa !5
  %206 = load i32, i32* %j, align 4, !tbaa !5
  %add258 = add nsw i32 %206, 1
  %idxprom259 = sext i32 %add258 to i64
  %arrayidx260 = getelementptr inbounds [257 x i32], [257 x i32]* %FDArray_offsets, i32 0, i64 %idxprom259
  store i32 %205, i32* %arrayidx260, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.257, %if.then.256
  %207 = bitcast %struct.gs_font_type1_s** %pfd221 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.377 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.261

for.inc.261:                                      ; preds = %cleanup.cont
  %208 = load i32, i32* %j, align 4, !tbaa !5
  %inc262 = add nsw i32 %208, 1
  store i32 %inc262, i32* %j, align 4, !tbaa !5
  br label %for.cond.217

for.end.263:                                      ; preds = %for.cond.217
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.302, %for.end.263
  %209 = bitcast %struct.gs_font_type1_s** %pfd265 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %209) #1
  %strm266 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %210 = load %struct.stream_s*, %struct.stream_s** %strm266, align 8, !tbaa !37
  %call267 = call i64 @stell(%struct.stream_s* %210) #4
  %211 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub268 = sub nsw i64 %call267, %211
  %conv269 = trunc i64 %sub268 to i32
  store i32 %conv269, i32* %offset, align 4, !tbaa !5
  br label %do.body.270

do.body.270:                                      ; preds = %for.cond.264
  br label %do.cond.271

do.cond.271:                                      ; preds = %do.body.270
  br label %do.end.272

do.end.272:                                       ; preds = %do.cond.271
  %212 = load i32, i32* %offset, align 4, !tbaa !5
  %213 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom273 = sext i32 %213 to i64
  %arrayidx274 = getelementptr inbounds [257 x i32], [257 x i32]* %Private_offsets, i32 0, i64 %idxprom273
  %214 = load i32, i32* %arrayidx274, align 4, !tbaa !5
  %cmp275 = icmp ugt i32 %212, %214
  br i1 %cmp275, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %do.end.272
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.299

if.end.278:                                       ; preds = %do.end.272
  %215 = load i32, i32* %offset, align 4, !tbaa !5
  %216 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom279 = sext i32 %216 to i64
  %arrayidx280 = getelementptr inbounds [257 x i32], [257 x i32]* %Private_offsets, i32 0, i64 %idxprom279
  store i32 %215, i32* %arrayidx280, align 4, !tbaa !5
  %217 = load i32, i32* %j, align 4, !tbaa !5
  %218 = load i32, i32* %num_fonts, align 4, !tbaa !5
  %cmp281 = icmp eq i32 %217, %218
  br i1 %cmp281, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %if.end.278
  store i32 36, i32* %cleanup.dest.slot
  br label %cleanup.299

if.end.284:                                       ; preds = %if.end.278
  %219 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom285 = sext i32 %219 to i64
  %220 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %cidata286 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %220, i32 0, i32 29
  %FDArray287 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata286, i32 0, i32 2
  %221 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray287, align 8, !tbaa !108
  %arrayidx288 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %221, i64 %idxprom285
  %222 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx288, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %222, %struct.gs_font_type1_s** %pfd265, align 8, !tbaa !1
  %223 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom289 = sext i32 %223 to i64
  %arrayidx290 = getelementptr inbounds [256 x i32], [256 x i32]* %subrs_size, i32 0, i64 %idxprom289
  %224 = load i32, i32* %arrayidx290, align 4, !tbaa !5
  %cmp291 = icmp eq i32 %224, 0
  br i1 %cmp291, label %cond.true.293, label %cond.false.294

cond.true.293:                                    ; preds = %if.end.284
  br label %cond.end.297

cond.false.294:                                   ; preds = %if.end.284
  %225 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom295 = sext i32 %225 to i64
  %arrayidx296 = getelementptr inbounds [257 x i32], [257 x i32]* %Subrs_offsets, i32 0, i64 %idxprom295
  %226 = load i32, i32* %arrayidx296, align 4, !tbaa !5
  br label %cond.end.297

cond.end.297:                                     ; preds = %cond.false.294, %cond.true.293
  %cond298 = phi i32 [ 0, %cond.true.293 ], [ %226, %cond.false.294 ]
  %227 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfd265, align 8, !tbaa !1
  call void @cff_write_Private(%struct.cff_writer_s* %writer, i32 %cond298, %struct.gs_font_type1_s* %227) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.299

cleanup.299:                                      ; preds = %cond.end.297, %if.then.283, %if.then.277
  %228 = bitcast %struct.gs_font_type1_s** %pfd265 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  %cleanup.dest.300 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.300, label %cleanup.377 [
    i32 0, label %cleanup.cont.301
    i32 36, label %for.end.304
  ]

cleanup.cont.301:                                 ; preds = %cleanup.299
  br label %for.inc.302

for.inc.302:                                      ; preds = %cleanup.cont.301
  %229 = load i32, i32* %j, align 4, !tbaa !5
  %inc303 = add nsw i32 %229, 1
  store i32 %inc303, i32* %j, align 4, !tbaa !5
  br label %for.cond.264

for.end.304:                                      ; preds = %cleanup.299
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc.352, %for.end.304
  %230 = bitcast %struct.gs_font_type1_s** %pfd306 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %230) #1
  %strm307 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %231 = load %struct.stream_s*, %struct.stream_s** %strm307, align 8, !tbaa !37
  %call308 = call i64 @stell(%struct.stream_s* %231) #4
  %232 = load i64, i64* %start_pos, align 8, !tbaa !46
  %233 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom309 = sext i32 %233 to i64
  %arrayidx310 = getelementptr inbounds [257 x i32], [257 x i32]* %Private_offsets, i32 0, i64 %idxprom309
  %234 = load i32, i32* %arrayidx310, align 4, !tbaa !5
  %conv311 = zext i32 %234 to i64
  %add312 = add nsw i64 %232, %conv311
  %sub313 = sub nsw i64 %call308, %add312
  %conv314 = trunc i64 %sub313 to i32
  store i32 %conv314, i32* %offset, align 4, !tbaa !5
  br label %do.body.315

do.body.315:                                      ; preds = %for.cond.305
  br label %do.cond.316

do.cond.316:                                      ; preds = %do.body.315
  br label %do.end.317

do.end.317:                                       ; preds = %do.cond.316
  %235 = load i32, i32* %offset, align 4, !tbaa !5
  %236 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom318 = sext i32 %236 to i64
  %arrayidx319 = getelementptr inbounds [257 x i32], [257 x i32]* %Subrs_offsets, i32 0, i64 %idxprom318
  %237 = load i32, i32* %arrayidx319, align 4, !tbaa !5
  %cmp320 = icmp ugt i32 %235, %237
  br i1 %cmp320, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %do.end.317
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.349

if.end.323:                                       ; preds = %do.end.317
  %238 = load i32, i32* %offset, align 4, !tbaa !5
  %239 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom324 = sext i32 %239 to i64
  %arrayidx325 = getelementptr inbounds [257 x i32], [257 x i32]* %Subrs_offsets, i32 0, i64 %idxprom324
  store i32 %238, i32* %arrayidx325, align 4, !tbaa !5
  %240 = load i32, i32* %j, align 4, !tbaa !5
  %241 = load i32, i32* %num_fonts, align 4, !tbaa !5
  %cmp326 = icmp eq i32 %240, %241
  br i1 %cmp326, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %if.end.323
  store i32 41, i32* %cleanup.dest.slot
  br label %cleanup.349

if.end.329:                                       ; preds = %if.end.323
  %242 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom330 = sext i32 %242 to i64
  %243 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %cidata331 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %243, i32 0, i32 29
  %FDArray332 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata331, i32 0, i32 2
  %244 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray332, align 8, !tbaa !108
  %arrayidx333 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %244, i64 %idxprom330
  %245 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx333, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %245, %struct.gs_font_type1_s** %pfd306, align 8, !tbaa !1
  %246 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfd306, align 8, !tbaa !1
  %247 = bitcast %struct.gs_font_type1_s* %246 to %struct.gs_font_base_s*
  %call334 = call i32 @cff_convert_charstrings(%struct.cff_writer_s* %writer, %struct.gs_font_base_s* %247) #4
  %tobool335 = icmp ne i32 %call334, 0
  br i1 %tobool335, label %if.then.336, label %if.else.337

if.then.336:                                      ; preds = %if.end.329
  call void @cff_put_Index_header(%struct.cff_writer_s* %writer, i32 0, i32 0) #4
  br label %if.end.348

if.else.337:                                      ; preds = %if.end.329
  %248 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom338 = sext i32 %248 to i64
  %arrayidx339 = getelementptr inbounds [256 x i32], [256 x i32]* %subrs_size, i32 0, i64 %idxprom338
  %249 = load i32, i32* %arrayidx339, align 4, !tbaa !5
  %cmp340 = icmp ne i32 %249, 0
  br i1 %cmp340, label %if.then.342, label %if.end.347

if.then.342:                                      ; preds = %if.else.337
  %250 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom343 = sext i32 %250 to i64
  %arrayidx344 = getelementptr inbounds [256 x i32], [256 x i32]* %subrs_count, i32 0, i64 %idxprom343
  %251 = load i32, i32* %arrayidx344, align 4, !tbaa !5
  %252 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom345 = sext i32 %252 to i64
  %arrayidx346 = getelementptr inbounds [256 x i32], [256 x i32]* %subrs_size, i32 0, i64 %idxprom345
  %253 = load i32, i32* %arrayidx346, align 4, !tbaa !5
  %254 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfd306, align 8, !tbaa !1
  call void @cff_write_Subrs(%struct.cff_writer_s* %writer, i32 %251, i32 %253, %struct.gs_font_type1_s* %254, i32 0) #4
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.342, %if.else.337
  br label %if.end.348

if.end.348:                                       ; preds = %if.end.347, %if.then.336
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.349

cleanup.349:                                      ; preds = %if.end.348, %if.then.328, %if.then.322
  %255 = bitcast %struct.gs_font_type1_s** %pfd306 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #1
  %cleanup.dest.350 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.350, label %cleanup.377 [
    i32 0, label %cleanup.cont.351
    i32 41, label %for.end.354
  ]

cleanup.cont.351:                                 ; preds = %cleanup.349
  br label %for.inc.352

for.inc.352:                                      ; preds = %cleanup.cont.351
  %256 = load i32, i32* %j, align 4, !tbaa !5
  %inc353 = add nsw i32 %256, 1
  store i32 %inc353, i32* %j, align 4, !tbaa !5
  br label %for.cond.305

for.end.354:                                      ; preds = %cleanup.349
  %strm355 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %257 = load %struct.stream_s*, %struct.stream_s** %strm355, align 8, !tbaa !37
  %call356 = call i64 @stell(%struct.stream_s* %257) #4
  %258 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub357 = sub nsw i64 %call356, %258
  %conv358 = trunc i64 %sub357 to i32
  store i32 %conv358, i32* %offset, align 4, !tbaa !5
  br label %do.body.359

do.body.359:                                      ; preds = %for.end.354
  br label %do.cond.360

do.cond.360:                                      ; preds = %do.body.359
  br label %do.end.361

do.end.361:                                       ; preds = %do.cond.360
  %259 = load i32, i32* %offset, align 4, !tbaa !5
  %260 = load i32, i32* %End_offset, align 4, !tbaa !5
  %cmp362 = icmp ugt i32 %259, %260
  br i1 %cmp362, label %if.then.364, label %if.end.365

if.then.364:                                      ; preds = %do.end.361
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

if.end.365:                                       ; preds = %do.end.361
  %261 = load i32, i32* %offset, align 4, !tbaa !5
  %262 = load i32, i32* %End_offset, align 4, !tbaa !5
  %cmp366 = icmp eq i32 %261, %262
  br i1 %cmp366, label %if.then.368, label %if.else.375

if.then.368:                                      ; preds = %if.end.365
  %strm369 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  %263 = load %struct.stream_s*, %struct.stream_s** %strm369, align 8, !tbaa !37
  %cmp370 = icmp eq %struct.stream_s* %263, %poss
  br i1 %cmp370, label %if.then.372, label %if.end.374

if.then.372:                                      ; preds = %if.then.368
  %264 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %strm373 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %writer, i32 0, i32 1
  store %struct.stream_s* %264, %struct.stream_s** %strm373, align 8, !tbaa !37
  br label %write

if.end.374:                                       ; preds = %if.then.368
  br label %if.end.376

if.else.375:                                      ; preds = %if.end.365
  %265 = load i32, i32* %offset, align 4, !tbaa !5
  store i32 %265, i32* %End_offset, align 4, !tbaa !5
  br label %iter

if.end.376:                                       ; preds = %if.end.374
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

cleanup.377:                                      ; preds = %if.end.376, %if.then.364, %cleanup.349, %cleanup.299, %cleanup, %if.then.214, %if.then.201, %if.then.190, %if.then.178, %if.then.149, %if.then.77, %if.then.4, %if.then
  %266 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = bitcast i32* %num_fonts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #1
  %268 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  %269 = bitcast i64* %start_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #1
  %270 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 160, i8* %270) #1
  %271 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.end(i64 48, i8* %271) #1
  %272 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #1
  %273 = bitcast i32* %End_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #1
  %274 = bitcast [257 x i32]* %Subrs_offsets to i8*
  call void @llvm.lifetime.end(i64 1028, i8* %274) #1
  %275 = bitcast [257 x i32]* %Private_offsets to i8*
  call void @llvm.lifetime.end(i64 1028, i8* %275) #1
  %276 = bitcast [257 x i32]* %FDArray_offsets to i8*
  call void @llvm.lifetime.end(i64 1028, i8* %276) #1
  %277 = bitcast i32* %Font_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #1
  %278 = bitcast i32* %CharStrings_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  %279 = bitcast i32* %FDSelect_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #1
  %280 = bitcast i32* %charset_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #1
  %281 = bitcast i32* %GSubrs_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #1
  %282 = bitcast i32* %Top_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %283 = bitcast [256 x i32]* %subrs_size to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %283) #1
  %284 = bitcast [256 x i32]* %subrs_count to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %284) #1
  %285 = bitcast i32* %fdselect_format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #1
  %286 = bitcast i32* %fdselect_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #1
  %287 = bitcast i32* %charset_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #1
  %288 = bitcast i32* %gsubrs_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
  %289 = bitcast i32* %gsubrs_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast i32* %charstrings_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i32* %charstrings_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast %struct.stream_s* %poss to i8*
  call void @llvm.lifetime.end(i64 352, i8* %292) #1
  %293 = bitcast %struct.gs_const_string_s* %font_name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %293) #1
  %294 = bitcast [540 x %struct.cff_string_item_s]* %string_items to i8*
  call void @llvm.lifetime.end(i64 12960, i8* %294) #1
  %295 = bitcast [500 x %struct.cff_string_item_s]* %std_string_items to i8*
  call void @llvm.lifetime.end(i64 12000, i8* %295) #1
  %296 = bitcast %struct.cff_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 112, i8* %296) #1
  %297 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #1
  %298 = load i32, i32* %retval
  ret i32 %298
}

declare void @psf_enumerate_bits_begin(%struct.psf_glyph_enum_s*, %struct.gs_font_s*, i8*, i32, i32) #2

declare i32 @psf_check_outline_glyphs(%struct.gs_font_base_s*, %struct.psf_glyph_enum_s*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cid0_glyph_data(%struct.gs_font_base_s* %pbfont, i64 %glyph, %struct.gs_glyph_data_s* %pgd, %struct.gs_font_type1_s** %ppfont) #0 {
entry:
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_type1_s**, align 8
  %pfont = alloca %struct.gs_font_cid0_s*, align 8
  %font_index = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !46
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s** %ppfont, %struct.gs_font_type1_s*** %ppfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid0_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_base_s* %1 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %2, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %3 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %5, i32 0, i32 29
  %glyph_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 5
  %6 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data, align 8, !tbaa !109
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %8 = load i64, i64* %glyph.addr, align 8, !tbaa !46
  %9 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gs_font_base_s* %7, i64 %8, %struct.gs_glyph_data_s* %9, i32* %font_index) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %font_index, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata1 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %12, i32 0, i32 29
  %FDArray = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata1, i32 0, i32 2
  %13 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !108
  %arrayidx = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %13, i64 %idxprom
  %14 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx, align 8, !tbaa !1
  %15 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %ppfont.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %14, %struct.gs_font_type1_s** %15, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.gs_font_cid0_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @cff_write_ROS(%struct.cff_writer_s* %pcw, %struct.gs_cid_system_info_s* %pcidsi) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %pcidsi.addr = alloca %struct.gs_cid_system_info_s*, align 8
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store %struct.gs_cid_system_info_s* %pcidsi, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %0 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Registry = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %1, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8, !tbaa !110
  %3 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Registry1 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %3, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry1, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !111
  %call = call i32 @cff_put_string(%struct.cff_writer_s* %0, i8* %2, i32 %4) #4
  %5 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %6 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Ordering = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %6, i32 0, i32 1
  %data2 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering, i32 0, i32 0
  %7 = load i8*, i8** %data2, align 8, !tbaa !112
  %8 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Ordering3 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %8, i32 0, i32 1
  %size4 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering3, i32 0, i32 1
  %9 = load i32, i32* %size4, align 4, !tbaa !113
  %call5 = call i32 @cff_put_string(%struct.cff_writer_s* %5, i8* %7, i32 %9) #4
  %10 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %11 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Supplement = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %11, i32 0, i32 2
  %12 = load i32, i32* %Supplement, align 4, !tbaa !114
  call void @cff_put_int_value(%struct.cff_writer_s* %10, i32 %12, i32 62) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cff_write_Top_fdarray(%struct.cff_writer_s* %pcw, %struct.gs_font_base_s* %pbfont, i32 %Private_offset, i32 %Private_size) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %Private_offset.addr = alloca i32, align 4
  %Private_size.addr = alloca i32, align 4
  %pfname = alloca %struct.gs_font_name_s*, align 8
  %info = alloca %struct.gs_font_info_s, align 8
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store i32 %Private_offset, i32* %Private_offset.addr, align 4, !tbaa !5
  store i32 %Private_size, i32* %Private_size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_font_name_s** %pfname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %1, i32 0, i32 22
  store %struct.gs_font_name_s* %font_name, %struct.gs_font_name_s** %pfname, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 160, i8* %2) #1
  %3 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %4 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %call = call i32 @cff_get_Top_info_common(%struct.cff_writer_s* %3, %struct.gs_font_base_s* %4, i32 0, %struct.gs_font_info_s* %info) #4
  %5 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %6 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  call void @cff_write_Top_common(%struct.cff_writer_s* %5, %struct.gs_font_base_s* %6, i32 0, %struct.gs_font_info_s* %info) #4
  %7 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %8 = load i32, i32* %Private_size.addr, align 4, !tbaa !5
  call void @cff_put_int(%struct.cff_writer_s* %7, i32 %8) #4
  %9 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %10 = load i32, i32* %Private_offset.addr, align 4, !tbaa !5
  call void @cff_put_int_value(%struct.cff_writer_s* %9, i32 %10, i32 18) #4
  %11 = load %struct.gs_font_name_s*, %struct.gs_font_name_s** %pfname, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %11, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !115
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %key_name = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %13, i32 0, i32 21
  store %struct.gs_font_name_s* %key_name, %struct.gs_font_name_s** %pfname, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.gs_font_name_s*, %struct.gs_font_name_s** %pfname, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %14, i32 0, i32 1
  %15 = load i32, i32* %size1, align 4, !tbaa !115
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %16 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %17 = load %struct.gs_font_name_s*, %struct.gs_font_name_s** %pfname, align 8, !tbaa !1
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %17, i32 0, i32 0
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  %18 = load %struct.gs_font_name_s*, %struct.gs_font_name_s** %pfname, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %18, i32 0, i32 1
  %19 = load i32, i32* %size3, align 4, !tbaa !115
  %call4 = call i32 @cff_put_string(%struct.cff_writer_s* %16, i8* %arraydecay, i32 %19) #4
  %20 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  call void @cff_put_op(%struct.cff_writer_s* %20, i32 70) #4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %21 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 160, i8* %21) #1
  %22 = bitcast %struct.gs_font_name_s** %pfname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_write_cidset(%struct.cff_writer_s* %pcw, %struct.psf_glyph_enum_s* %penum) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %penum.addr = alloca %struct.psf_glyph_enum_s*, align 8
  %glyph = alloca i64, align 8
  %code = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store %struct.psf_glyph_enum_s* %penum, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %2, i32 0, i32 1
  %3 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !37
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %4 = load i8*, i8** %ptr, align 8, !tbaa !76
  %5 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm1 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %5, i32 0, i32 1
  %6 = load %struct.stream_s*, %struct.stream_s** %strm1, align 8, !tbaa !37
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %w3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w3, i32 0, i32 2
  %7 = load i8*, i8** %limit, align 8, !tbaa !78
  %cmp = icmp uge i8* %4, %7
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %8 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm4 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %8, i32 0, i32 1
  %9 = load %struct.stream_s*, %struct.stream_s** %strm4, align 8, !tbaa !37
  %cursor5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w6 = bitcast %union.stream_cursor_s* %cursor5 to %struct.stream_cursor_write_s*
  %ptr7 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w6, i32 0, i32 1
  %10 = load i8*, i8** %ptr7, align 8, !tbaa !76
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %ptr7, align 8, !tbaa !76
  %11 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm8 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %11, i32 0, i32 1
  %12 = load %struct.stream_s*, %struct.stream_s** %strm8, align 8, !tbaa !37
  %cursor9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 5
  %w10 = bitcast %union.stream_cursor_s* %cursor9 to %struct.stream_cursor_write_s*
  %ptr11 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w10, i32 0, i32 1
  %13 = load i8*, i8** %ptr11, align 8, !tbaa !76
  store i8 0, i8* %13, align 1, !tbaa !62
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm12 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %14, i32 0, i32 1
  %15 = load %struct.stream_s*, %struct.stream_s** %strm12, align 8, !tbaa !37
  %call = call i32 @spputc(%struct.stream_s* %15, i8 zeroext 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %16 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  call void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s* %16) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end
  %17 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  %call13 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %17, i64* %glyph) #4
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i64, i64* %glyph, align 8, !tbaa !46
  %cmp15 = icmp ne i64 %18, 2147483648
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %19 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %20 = load i64, i64* %glyph, align 8, !tbaa !46
  %sub = sub i64 %20, 2147483648
  %conv = trunc i64 %sub to i32
  call void @put_card16(%struct.cff_writer_s* %19, i32 %conv) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %21, 0
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %while.end
  %22 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.20

cond.false.19:                                    ; preds = %while.end
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi i32 [ %22, %cond.true.18 ], [ 0, %cond.false.19 ]
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret i32 %cond21
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_FDSelect_size(%struct.cff_writer_s* %pcw, %struct.psf_glyph_enum_s* %penum, i32* %pformat) #0 {
entry:
  %retval = alloca i32, align 4
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %penum.addr = alloca %struct.psf_glyph_enum_s*, align 8
  %pformat.addr = alloca i32*, align 8
  %pfont = alloca %struct.gs_font_cid0_s*, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %glyph = alloca i64, align 8
  %prev = alloca i32, align 4
  %linear_size = alloca i32, align 4
  %range_size = alloca i32, align 4
  %code = alloca i32, align 4
  %font_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store %struct.psf_glyph_enum_s* %penum, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  store i32* %pformat, i32** %pformat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid0_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %1, i32 0, i32 2
  %2 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont1, align 8, !tbaa !38
  %3 = bitcast %struct.gs_font_base_s* %2 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %3, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %4 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_cid0_s* %5 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %6, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %7 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %prev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -1, i32* %prev, align 4, !tbaa !5
  %9 = bitcast i32* %linear_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 1, i32* %linear_size, align 4, !tbaa !5
  %10 = bitcast i32* %range_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 5, i32* %range_size, align 4, !tbaa !5
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  call void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s* %12) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %entry
  %13 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  %call = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %13, i64* %glyph) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %15, i32 0, i32 29
  %glyph_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 5
  %16 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data, align 8, !tbaa !109
  %17 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %18 = load i64, i64* %glyph, align 8, !tbaa !46
  %call2 = call i32 %16(%struct.gs_font_base_s* %17, i64 %18, %struct.gs_glyph_data_s* null, i32* %font_index) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %19, 0
  br i1 %cmp3, label %if.then, label %if.end.6

if.then:                                          ; preds = %while.body
  %20 = load i32, i32* %font_index, align 4, !tbaa !5
  %21 = load i32, i32* %prev, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %20, %21
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %22 = load i32, i32* %range_size, align 4, !tbaa !5
  %add = add i32 %22, 3
  store i32 %add, i32* %range_size, align 4, !tbaa !5
  %23 = load i32, i32* %font_index, align 4, !tbaa !5
  store i32 %23, i32* %prev, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %24 = load i32, i32* %linear_size, align 4, !tbaa !5
  %inc = add i32 %24, 1
  store i32 %inc, i32* %linear_size, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %while.body
  %25 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load i32, i32* %range_size, align 4, !tbaa !5
  %27 = load i32, i32* %linear_size, align 4, !tbaa !5
  %cmp7 = icmp ult i32 %26, %27
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %while.end
  %28 = load i32*, i32** %pformat.addr, align 8, !tbaa !1
  store i32 3, i32* %28, align 4, !tbaa !5
  %29 = load i32, i32* %range_size, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %while.end
  %30 = load i32*, i32** %pformat.addr, align 8, !tbaa !1
  store i32 0, i32* %30, align 4, !tbaa !5
  %31 = load i32, i32* %linear_size, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.8
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %range_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %linear_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %prev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast %struct.gs_font_cid0_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_get_Top_info_common(%struct.cff_writer_s* %pcw, %struct.gs_font_base_s* %pbfont, i32 %full_info, %struct.gs_font_info_s* %pinfo) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %full_info.addr = alloca i32, align 4
  %pinfo.addr = alloca %struct.gs_font_info_s*, align 8
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store i32 %full_info, i32* %full_info.addr, align 4, !tbaa !5
  store %struct.gs_font_info_s* %pinfo, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %Flags_requested = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %0, i32 0, i32 7
  store i32 1, i32* %Flags_requested, align 4, !tbaa !116
  %1 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %members = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %1, i32 0, i32 0
  store i32 0, i32* %members, align 4, !tbaa !118
  %2 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %Flags_returned = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %2, i32 0, i32 8
  store i32 0, i32* %Flags_returned, align 4, !tbaa !119
  %3 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %Flags = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %3, i32 0, i32 6
  store i32 0, i32* %Flags, align 4, !tbaa !120
  %4 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %ItalicAngle = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %4, i32 0, i32 9
  store float 0.000000e+00, float* %ItalicAngle, align 4, !tbaa !121
  %5 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %UnderlinePosition = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %5, i32 0, i32 15
  store i32 -100, i32* %UnderlinePosition, align 4, !tbaa !122
  %6 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %UnderlineThickness = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %6, i32 0, i32 16
  store i32 50, i32* %UnderlineThickness, align 4, !tbaa !123
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %7, i32 0, i32 20
  %font_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 2
  %8 = load i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)** %font_info, align 8, !tbaa !124
  %9 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_font_base_s* %9 to %struct.gs_font_s*
  %11 = load i32, i32* %full_info.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  %cond = select i1 %tobool, i32 786720, i32 0
  %or = or i32 %cond, 12480
  %12 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %call = call i32 %8(%struct.gs_font_s* %10, %struct.gs_point_s* null, i32 %or, %struct.gs_font_info_s* %12) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @cff_write_Top_cidfont(%struct.cff_writer_s* %pcw, i32 %charset_offset, i32 %CharStrings_offset, i32 %FDSelect_offset, i32 %Font_offset, %struct.gs_font_info_s* %pinfo) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %charset_offset.addr = alloca i32, align 4
  %CharStrings_offset.addr = alloca i32, align 4
  %FDSelect_offset.addr = alloca i32, align 4
  %Font_offset.addr = alloca i32, align 4
  %pinfo.addr = alloca %struct.gs_font_info_s*, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %pfont1 = alloca %struct.gs_font_cid0_s*, align 8
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32 %charset_offset, i32* %charset_offset.addr, align 4, !tbaa !5
  store i32 %CharStrings_offset, i32* %CharStrings_offset.addr, align 4, !tbaa !5
  store i32 %FDSelect_offset, i32* %FDSelect_offset.addr, align 4, !tbaa !5
  store i32 %Font_offset, i32* %Font_offset.addr, align 4, !tbaa !5
  store %struct.gs_font_info_s* %pinfo, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %pfont = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %1, i32 0, i32 2
  %2 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !38
  store %struct.gs_font_base_s* %2, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_cid0_s** %pfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_base_s* %4 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %5, %struct.gs_font_cid0_s** %pfont1, align 8, !tbaa !1
  %6 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %7 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont1, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %7, i32 0, i32 29
  %common = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 0
  %CIDSystemInfo = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 0
  call void @cff_write_ROS(%struct.cff_writer_s* %6, %struct.gs_cid_system_info_s* %CIDSystemInfo) #4
  %8 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %9 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %10 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  call void @cff_write_Top_common(%struct.cff_writer_s* %8, %struct.gs_font_base_s* %9, i32 1, %struct.gs_font_info_s* %10) #4
  %11 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %12 = load i32, i32* %charset_offset.addr, align 4, !tbaa !5
  call void @cff_put_int_if_ne(%struct.cff_writer_s* %11, i32 %12, i32 0, i32 15) #4
  %13 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %14 = load i32, i32* %CharStrings_offset.addr, align 4, !tbaa !5
  call void @cff_put_int_value(%struct.cff_writer_s* %13, i32 %14, i32 17) #4
  %15 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %16 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont1, align 8, !tbaa !1
  %cidata2 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %16, i32 0, i32 29
  %common3 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata2, i32 0, i32 0
  %CIDCount = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common3, i32 0, i32 1
  %17 = load i32, i32* %CIDCount, align 4, !tbaa !125
  call void @cff_put_int_if_ne(%struct.cff_writer_s* %15, i32 %17, i32 8720, i32 66) #4
  %18 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %19 = load i32, i32* %Font_offset.addr, align 4, !tbaa !5
  call void @cff_put_int_value(%struct.cff_writer_s* %18, i32 %19, i32 68) #4
  %20 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %21 = load i32, i32* %FDSelect_offset.addr, align 4, !tbaa !5
  call void @cff_put_int_value(%struct.cff_writer_s* %20, i32 %21, i32 69) #4
  %22 = bitcast %struct.gs_font_cid0_s** %pfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_write_FDSelect(%struct.cff_writer_s* %pcw, %struct.psf_glyph_enum_s* %penum, i32 %size, i32 %format) #0 {
entry:
  %retval = alloca i32, align 4
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %penum.addr = alloca %struct.psf_glyph_enum_s*, align 8
  %size.addr = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %pfont = alloca %struct.gs_font_cid0_s*, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %glyph = alloca i64, align 8
  %prev = alloca i32, align 4
  %cid_count = alloca i32, align 4
  %code = alloca i32, align 4
  %font_index = alloca i32, align 4
  %font_index30 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store %struct.psf_glyph_enum_s* %penum, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %format, i32* %format.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %1, i32 0, i32 1
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !37
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_cid0_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %4, i32 0, i32 2
  %5 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont1, align 8, !tbaa !38
  %6 = bitcast %struct.gs_font_base_s* %5 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %6, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %9 = bitcast %struct.gs_font_cid0_s* %8 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %9, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %10 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %prev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -1, i32* %prev, align 4, !tbaa !5
  %12 = bitcast i32* %cid_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %cid_count, align 4, !tbaa !5
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %15 = load i32, i32* %format.addr, align 4, !tbaa !5
  %conv = trunc i32 %15 to i8
  %call = call i32 @spputc(%struct.stream_s* %14, i8 zeroext %conv) #4
  %16 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  call void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s* %16) #4
  %17 = load i32, i32* %format.addr, align 4, !tbaa !5
  switch i32 %17, label %sw.default [
    i32 3, label %sw.bb
    i32 0, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %entry
  %18 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %19 = load i32, i32* %size.addr, align 4, !tbaa !5
  %sub = sub i32 %19, 5
  %div = udiv i32 %sub, 3
  call void @put_card16(%struct.cff_writer_s* %18, i32 %div) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %sw.bb
  %20 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  %call2 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %20, i64* %glyph) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %22, i32 0, i32 29
  %glyph_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 5
  %23 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data, align 8, !tbaa !109
  %24 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %25 = load i64, i64* %glyph, align 8, !tbaa !46
  %call4 = call i32 %23(%struct.gs_font_base_s* %24, i64 %25, %struct.gs_glyph_data_s* null, i32* %font_index) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp sge i32 %26, 0
  br i1 %cmp5, label %if.then, label %if.end.23

if.then:                                          ; preds = %while.body
  %27 = load i32, i32* %font_index, align 4, !tbaa !5
  %28 = load i32, i32* %prev, align 4, !tbaa !5
  %cmp7 = icmp ne i32 %27, %28
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %29 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %30 = load i32, i32* %cid_count, align 4, !tbaa !5
  call void @put_card16(%struct.cff_writer_s* %29, i32 %30) #4
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %32 = load i8*, i8** %ptr, align 8, !tbaa !76
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 5
  %w11 = bitcast %union.stream_cursor_s* %cursor10 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w11, i32 0, i32 2
  %34 = load i8*, i8** %limit, align 8, !tbaa !78
  %cmp12 = icmp uge i8* %32, %34
  br i1 %cmp12, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.9
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 5
  %w15 = bitcast %union.stream_cursor_s* %cursor14 to %struct.stream_cursor_write_s*
  %ptr16 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w15, i32 0, i32 1
  %36 = load i8*, i8** %ptr16, align 8, !tbaa !76
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %ptr16, align 8, !tbaa !76
  %37 = load i32, i32* %font_index, align 4, !tbaa !5
  %conv17 = trunc i32 %37 to i8
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 5
  %w19 = bitcast %union.stream_cursor_s* %cursor18 to %struct.stream_cursor_write_s*
  %ptr20 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w19, i32 0, i32 1
  %39 = load i8*, i8** %ptr20, align 8, !tbaa !76
  store i8 %conv17, i8* %39, align 1, !tbaa !62
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %41 = load i32, i32* %font_index, align 4, !tbaa !5
  %conv21 = trunc i32 %41 to i8
  %call22 = call i32 @spputc(%struct.stream_s* %40, i8 zeroext %conv21) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call22, %cond.false ]
  %42 = load i32, i32* %font_index, align 4, !tbaa !5
  store i32 %42, i32* %prev, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %43 = load i32, i32* %cid_count, align 4, !tbaa !5
  %inc = add i32 %43, 1
  store i32 %inc, i32* %cid_count, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %while.body
  %44 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %46 = load i32, i32* %cid_count, align 4, !tbaa !5
  call void @put_card16(%struct.cff_writer_s* %45, i32 %46) #4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  br label %while.cond.25

while.cond.25:                                    ; preds = %if.end.59, %sw.bb.24
  %47 = load %struct.psf_glyph_enum_s*, %struct.psf_glyph_enum_s** %penum.addr, align 8, !tbaa !1
  %call26 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %47, i64* %glyph) #4
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %while.body.29, label %while.end.60

while.body.29:                                    ; preds = %while.cond.25
  %48 = bitcast i32* %font_index30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata31 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %49, i32 0, i32 29
  %glyph_data32 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata31, i32 0, i32 5
  %50 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data32, align 8, !tbaa !109
  %51 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %52 = load i64, i64* %glyph, align 8, !tbaa !46
  %call33 = call i32 %50(%struct.gs_font_base_s* %51, i64 %52, %struct.gs_glyph_data_s* null, i32* %font_index30) #4
  store i32 %call33, i32* %code, align 4, !tbaa !5
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %cmp34 = icmp sge i32 %53, 0
  br i1 %cmp34, label %if.then.36, label %if.end.59

if.then.36:                                       ; preds = %while.body.29
  %54 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor37 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %54, i32 0, i32 5
  %w38 = bitcast %union.stream_cursor_s* %cursor37 to %struct.stream_cursor_write_s*
  %ptr39 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w38, i32 0, i32 1
  %55 = load i8*, i8** %ptr39, align 8, !tbaa !76
  %56 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor40 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %56, i32 0, i32 5
  %w41 = bitcast %union.stream_cursor_s* %cursor40 to %struct.stream_cursor_write_s*
  %limit42 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w41, i32 0, i32 2
  %57 = load i8*, i8** %limit42, align 8, !tbaa !78
  %cmp43 = icmp uge i8* %55, %57
  br i1 %cmp43, label %cond.false.54, label %cond.true.45

cond.true.45:                                     ; preds = %if.then.36
  %58 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor46 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %58, i32 0, i32 5
  %w47 = bitcast %union.stream_cursor_s* %cursor46 to %struct.stream_cursor_write_s*
  %ptr48 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w47, i32 0, i32 1
  %59 = load i8*, i8** %ptr48, align 8, !tbaa !76
  %incdec.ptr49 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr49, i8** %ptr48, align 8, !tbaa !76
  %60 = load i32, i32* %font_index30, align 4, !tbaa !5
  %conv50 = trunc i32 %60 to i8
  %61 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor51 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %61, i32 0, i32 5
  %w52 = bitcast %union.stream_cursor_s* %cursor51 to %struct.stream_cursor_write_s*
  %ptr53 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w52, i32 0, i32 1
  %62 = load i8*, i8** %ptr53, align 8, !tbaa !76
  store i8 %conv50, i8* %62, align 1, !tbaa !62
  br label %cond.end.57

cond.false.54:                                    ; preds = %if.then.36
  %63 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %64 = load i32, i32* %font_index30, align 4, !tbaa !5
  %conv55 = trunc i32 %64 to i8
  %call56 = call i32 @spputc(%struct.stream_s* %63, i8 zeroext %conv55) #4
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.54, %cond.true.45
  %cond58 = phi i32 [ 0, %cond.true.45 ], [ %call56, %cond.false.54 ]
  br label %if.end.59

if.end.59:                                        ; preds = %cond.end.57, %while.body.29
  %65 = bitcast i32* %font_index30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  br label %while.cond.25

while.end.60:                                     ; preds = %while.cond.25
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %while.end.60, %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %66 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %cid_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %prev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.gs_font_cid0_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal void @cff_write_FDArray_offsets(%struct.cff_writer_s* %pcw, i32* %FDArray_offsets, i32 %num_fonts) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %FDArray_offsets.addr = alloca i32*, align 8
  %num_fonts.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32* %FDArray_offsets, i32** %FDArray_offsets.addr, align 8, !tbaa !1
  store i32 %num_fonts, i32* %num_fonts.addr, align 4, !tbaa !5
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %2 = load i32, i32* %num_fonts.addr, align 4, !tbaa !5
  %3 = load i32, i32* %num_fonts.addr, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %FDArray_offsets.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %6 = load i32*, i32** %FDArray_offsets.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx1, align 4, !tbaa !5
  %sub = sub i32 %5, %7
  call void @cff_put_Index_header(%struct.cff_writer_s* %1, i32 %2, i32 %sub) #4
  store i32 1, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %j, align 4, !tbaa !5
  %9 = load i32, i32* %num_fonts.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %11 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom2 = sext i32 %11 to i64
  %12 = load i32*, i32** %FDArray_offsets.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i32, i32* %12, i64 %idxprom2
  %13 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %14 = load i32*, i32** %FDArray_offsets.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %sub5 = sub i32 %13, %15
  %add = add i32 %sub5, 1
  call void @put_offset(%struct.cff_writer_s* %10, i32 %add) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @igcd(i32, i32) #2

declare i32 @bytes_compare(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @cff_string_add(%struct.cff_string_table_s* %pcst, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pcst.addr = alloca %struct.cff_string_table_s*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cff_string_table_s* %pcst, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %1, i32 0, i32 1
  %2 = load i32, i32* %count, align 4, !tbaa !58
  %3 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %3, i32 0, i32 2
  %4 = load i32, i32* %size1, align 4, !tbaa !59
  %cmp = icmp sge i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %count2 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %5, i32 0, i32 1
  %6 = load i32, i32* %count2, align 4, !tbaa !58
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %count2, align 4, !tbaa !58
  store i32 %6, i32* %index, align 4, !tbaa !5
  %7 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %8 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %items = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %9, i32 0, i32 0
  %10 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %items, align 8, !tbaa !57
  %arrayidx = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %10, i64 %idxprom
  %key = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %arrayidx, i32 0, i32 0
  %data3 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %key, i32 0, i32 0
  store i8* %7, i8** %data3, align 8, !tbaa !65
  %11 = load i32, i32* %size.addr, align 4, !tbaa !5
  %12 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %13 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %items5 = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %13, i32 0, i32 0
  %14 = load %struct.cff_string_item_s*, %struct.cff_string_item_s** %items5, align 8, !tbaa !57
  %arrayidx6 = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %14, i64 %idxprom4
  %key7 = getelementptr inbounds %struct.cff_string_item_s, %struct.cff_string_item_s* %arrayidx6, i32 0, i32 0
  %size8 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %key7, i32 0, i32 1
  store i32 %11, i32* %size8, align 4, !tbaa !66
  %15 = load i32, i32* %size.addr, align 4, !tbaa !5
  %16 = load %struct.cff_string_table_s*, %struct.cff_string_table_s** %pcst.addr, align 8, !tbaa !1
  %total = getelementptr inbounds %struct.cff_string_table_s, %struct.cff_string_table_s* %16, i32 0, i32 3
  %17 = load i32, i32* %total, align 4, !tbaa !60
  %add = add i32 %17, %15
  store i32 %add, i32* %total, align 4, !tbaa !60
  %18 = load i32, i32* %index, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @cff_write_Top_common(%struct.cff_writer_s* %pcw, %struct.gs_font_base_s* %pbfont, i32 %write_FontMatrix, %struct.gs_font_info_s* %pinfo) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %write_FontMatrix.addr = alloca i32, align 4
  %pinfo.addr = alloca %struct.gs_font_info_s*, align 8
  %j = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store i32 %write_FontMatrix, i32* %write_FontMatrix.addr, align 4, !tbaa !5
  store %struct.gs_font_info_s* %pinfo, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %members = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %0, i32 0, i32 0
  %1 = load i32, i32* %members, align 4, !tbaa !118
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %3 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %Notice = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %3, i32 0, i32 19
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Notice, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8, !tbaa !126
  %5 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %Notice1 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %5, i32 0, i32 19
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Notice1, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !127
  %call = call i32 @cff_put_string_value(%struct.cff_writer_s* %2, i8* %4, i32 %6, i32 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %members2 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %7, i32 0, i32 0
  %8 = load i32, i32* %members2, align 4, !tbaa !118
  %and3 = and i32 %8, 8192
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %9 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %10 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %FullName = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %10, i32 0, i32 21
  %data6 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %FullName, i32 0, i32 0
  %11 = load i8*, i8** %data6, align 8, !tbaa !128
  %12 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %FullName7 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %12, i32 0, i32 21
  %size8 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %FullName7, i32 0, i32 1
  %13 = load i32, i32* %size8, align 4, !tbaa !129
  %call9 = call i32 @cff_put_string_value(%struct.cff_writer_s* %9, i8* %11, i32 %13, i32 2) #4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.end
  %14 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %members11 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %14, i32 0, i32 0
  %15 = load i32, i32* %members11, align 4, !tbaa !118
  %and12 = and i32 %15, 4096
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.end.10
  %16 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %17 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %FamilyName = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %17, i32 0, i32 20
  %data15 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %FamilyName, i32 0, i32 0
  %18 = load i8*, i8** %data15, align 8, !tbaa !130
  %19 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %FamilyName16 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %19, i32 0, i32 20
  %size17 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %FamilyName16, i32 0, i32 1
  %20 = load i32, i32* %size17, align 4, !tbaa !131
  %call18 = call i32 @cff_put_string_value(%struct.cff_writer_s* %16, i8* %18, i32 %20, i32 3) #4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.end.10
  %21 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %21, i32 0, i32 8
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %22 = load i32, i32* %x, align 4, !tbaa !103
  %cmp = icmp ne i32 %22, 0
  br i1 %cmp, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %23 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %FontBBox20 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %23, i32 0, i32 8
  %p21 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox20, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p21, i32 0, i32 1
  %24 = load i32, i32* %y, align 4, !tbaa !102
  %cmp22 = icmp ne i32 %24, 0
  br i1 %cmp22, label %if.then.32, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false
  %25 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %FontBBox24 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %25, i32 0, i32 8
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox24, i32 0, i32 1
  %x25 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %26 = load i32, i32* %x25, align 4, !tbaa !105
  %cmp26 = icmp ne i32 %26, 0
  br i1 %cmp26, label %if.then.32, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.23
  %27 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %FontBBox28 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %27, i32 0, i32 8
  %q29 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox28, i32 0, i32 1
  %y30 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q29, i32 0, i32 1
  %28 = load i32, i32* %y30, align 4, !tbaa !104
  %cmp31 = icmp ne i32 %28, 0
  br i1 %cmp31, label %if.then.32, label %if.end.48

if.then.32:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false.23, %lor.lhs.false, %if.end.19
  %29 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %30 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %FontBBox33 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %30, i32 0, i32 8
  %p34 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox33, i32 0, i32 0
  %x35 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p34, i32 0, i32 0
  %31 = load i32, i32* %x35, align 4, !tbaa !103
  %conv = sitofp i32 %31 to double
  call void @cff_put_real(%struct.cff_writer_s* %29, double %conv) #4
  %32 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %33 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %FontBBox36 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %33, i32 0, i32 8
  %p37 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox36, i32 0, i32 0
  %y38 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p37, i32 0, i32 1
  %34 = load i32, i32* %y38, align 4, !tbaa !102
  %conv39 = sitofp i32 %34 to double
  call void @cff_put_real(%struct.cff_writer_s* %32, double %conv39) #4
  %35 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %36 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %FontBBox40 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %36, i32 0, i32 8
  %q41 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox40, i32 0, i32 1
  %x42 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q41, i32 0, i32 0
  %37 = load i32, i32* %x42, align 4, !tbaa !105
  %conv43 = sitofp i32 %37 to double
  call void @cff_put_real(%struct.cff_writer_s* %35, double %conv43) #4
  %38 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %39 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %FontBBox44 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %39, i32 0, i32 8
  %q45 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox44, i32 0, i32 1
  %y46 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q45, i32 0, i32 1
  %40 = load i32, i32* %y46, align 4, !tbaa !104
  %conv47 = sitofp i32 %40 to double
  call void @cff_put_real(%struct.cff_writer_s* %38, double %conv47) #4
  %41 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  call void @cff_put_op(%struct.cff_writer_s* %41, i32 5) #4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.32, %lor.lhs.false.27
  %42 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %42, i32 0, i32 24
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID, i32 0, i32 0
  %43 = load i64, i64* %id, align 8, !tbaa !132
  %and49 = and i64 %43, -16777216
  %cmp50 = icmp eq i64 %and49, 0
  br i1 %cmp50, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %if.end.48
  %44 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %45 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %UID53 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %45, i32 0, i32 24
  %id54 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID53, i32 0, i32 0
  %46 = load i64, i64* %id54, align 8, !tbaa !133
  %conv55 = trunc i64 %46 to i32
  call void @cff_put_int_value(%struct.cff_writer_s* %44, i32 %conv55, i32 13) #4
  br label %if.end.69

if.else:                                          ; preds = %if.end.48
  %47 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %UID56 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %47, i32 0, i32 24
  %id57 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID56, i32 0, i32 0
  %48 = load i64, i64* %id57, align 8, !tbaa !132
  %cmp58 = icmp slt i64 %48, 0
  br i1 %cmp58, label %if.then.60, label %if.end.68

if.then.60:                                       ; preds = %if.else
  %49 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.60
  %50 = load i32, i32* %j, align 4, !tbaa !5
  %51 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %UID61 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %51, i32 0, i32 24
  %id62 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID61, i32 0, i32 0
  %52 = load i64, i64* %id62, align 8, !tbaa !132
  %sub = sub nsw i64 0, %52
  %conv63 = trunc i64 %sub to i32
  %cmp64 = icmp ult i32 %50, %conv63
  br i1 %cmp64, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %54 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %54 to i64
  %55 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %UID66 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %55, i32 0, i32 24
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID66, i32 0, i32 1
  %56 = load i64*, i64** %xvalues, align 8, !tbaa !134
  %arrayidx = getelementptr inbounds i64, i64* %56, i64 %idxprom
  %57 = load i64, i64* %arrayidx, align 8, !tbaa !46
  %conv67 = trunc i64 %57 to i32
  call void @cff_put_int(%struct.cff_writer_s* %53, i32 %conv67) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  call void @cff_put_op(%struct.cff_writer_s* %59, i32 14) #4
  %60 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  br label %if.end.68

if.end.68:                                        ; preds = %for.end, %if.else
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.52
  %61 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %options = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %61, i32 0, i32 0
  %62 = load i32, i32* %options, align 4, !tbaa !32
  %and70 = and i32 %62, 4
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.end.88, label %if.then.72

if.then.72:                                       ; preds = %if.end.69
  %63 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %members73 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %63, i32 0, i32 0
  %64 = load i32, i32* %members73, align 4, !tbaa !118
  %and74 = and i32 %64, 64
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %if.then.72
  %65 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %66 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %Copyright = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %66, i32 0, i32 18
  %data77 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Copyright, i32 0, i32 0
  %67 = load i8*, i8** %data77, align 8, !tbaa !135
  %68 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %Copyright78 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %68, i32 0, i32 18
  %size79 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Copyright78, i32 0, i32 1
  %69 = load i32, i32* %size79, align 4, !tbaa !136
  %call80 = call i32 @cff_put_string_value(%struct.cff_writer_s* %65, i8* %67, i32 %69, i32 32) #4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %if.then.72
  %70 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %Flags = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %70, i32 0, i32 6
  %71 = load i32, i32* %Flags, align 4, !tbaa !120
  %72 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %Flags_returned = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %72, i32 0, i32 8
  %73 = load i32, i32* %Flags_returned, align 4, !tbaa !119
  %and82 = and i32 %71, %73
  %and83 = and i32 %and82, 1
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.81
  %74 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  call void @cff_put_bool_value(%struct.cff_writer_s* %74, i32 1, i32 33) #4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.end.81
  %75 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %76 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %ItalicAngle = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %76, i32 0, i32 9
  %77 = load float, float* %ItalicAngle, align 4, !tbaa !121
  %conv87 = fpext float %77 to double
  call void @cff_put_real_if_ne(%struct.cff_writer_s* %75, double %conv87, double 0.000000e+00, i32 34) #4
  %78 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %79 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %UnderlinePosition = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %79, i32 0, i32 15
  %80 = load i32, i32* %UnderlinePosition, align 4, !tbaa !122
  call void @cff_put_int_if_ne(%struct.cff_writer_s* %78, i32 %80, i32 -100, i32 35) #4
  %81 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %82 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %pinfo.addr, align 8, !tbaa !1
  %UnderlineThickness = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %82, i32 0, i32 16
  %83 = load i32, i32* %UnderlineThickness, align 4, !tbaa !123
  call void @cff_put_int_if_ne(%struct.cff_writer_s* %81, i32 %83, i32 50, i32 36) #4
  %84 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %85 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %85, i32 0, i32 17
  %86 = load i32, i32* %PaintType, align 4, !tbaa !137
  call void @cff_put_int_if_ne(%struct.cff_writer_s* %84, i32 %86, i32 0, i32 37) #4
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.86, %if.end.69
  %87 = load i32, i32* %write_FontMatrix.addr, align 4, !tbaa !5
  %tobool89 = icmp ne i32 %87, 0
  br i1 %tobool89, label %if.then.113, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %if.end.88
  %88 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %88, i32 0, i32 9
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix, i32 0, i32 0
  %89 = load float, float* %xx, align 4, !tbaa !138
  %90 = load float, float* getelementptr inbounds (%struct.gs_matrix_s, %struct.gs_matrix_s* @cff_write_Top_common.fm_default, i32 0, i32 0), align 4, !tbaa !139
  %cmp91 = fcmp une float %89, %90
  br i1 %cmp91, label %if.then.113, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %lor.lhs.false.90
  %91 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontMatrix94 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %91, i32 0, i32 9
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix94, i32 0, i32 1
  %92 = load float, float* %xy, align 4, !tbaa !140
  %cmp95 = fcmp une float %92, 0.000000e+00
  br i1 %cmp95, label %if.then.113, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %lor.lhs.false.93
  %93 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontMatrix98 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %93, i32 0, i32 9
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix98, i32 0, i32 2
  %94 = load float, float* %yx, align 4, !tbaa !141
  %cmp99 = fcmp une float %94, 0.000000e+00
  br i1 %cmp99, label %if.then.113, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false.97
  %95 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontMatrix102 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %95, i32 0, i32 9
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix102, i32 0, i32 3
  %96 = load float, float* %yy, align 4, !tbaa !142
  %97 = load float, float* getelementptr inbounds (%struct.gs_matrix_s, %struct.gs_matrix_s* @cff_write_Top_common.fm_default, i32 0, i32 3), align 4, !tbaa !143
  %cmp103 = fcmp une float %96, %97
  br i1 %cmp103, label %if.then.113, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %lor.lhs.false.101
  %98 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontMatrix106 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %98, i32 0, i32 9
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix106, i32 0, i32 4
  %99 = load float, float* %tx, align 4, !tbaa !144
  %cmp107 = fcmp une float %99, 0.000000e+00
  br i1 %cmp107, label %if.then.113, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %lor.lhs.false.105
  %100 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontMatrix110 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %100, i32 0, i32 9
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix110, i32 0, i32 5
  %101 = load float, float* %ty, align 4, !tbaa !145
  %cmp111 = fcmp une float %101, 0.000000e+00
  br i1 %cmp111, label %if.then.113, label %if.end.132

if.then.113:                                      ; preds = %lor.lhs.false.109, %lor.lhs.false.105, %lor.lhs.false.101, %lor.lhs.false.97, %lor.lhs.false.93, %lor.lhs.false.90, %if.end.88
  %102 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %103 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontMatrix114 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %103, i32 0, i32 9
  %xx115 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix114, i32 0, i32 0
  %104 = load float, float* %xx115, align 4, !tbaa !138
  %conv116 = fpext float %104 to double
  call void @cff_put_real(%struct.cff_writer_s* %102, double %conv116) #4
  %105 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %106 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontMatrix117 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %106, i32 0, i32 9
  %xy118 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix117, i32 0, i32 1
  %107 = load float, float* %xy118, align 4, !tbaa !140
  %conv119 = fpext float %107 to double
  call void @cff_put_real(%struct.cff_writer_s* %105, double %conv119) #4
  %108 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %109 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontMatrix120 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %109, i32 0, i32 9
  %yx121 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix120, i32 0, i32 2
  %110 = load float, float* %yx121, align 4, !tbaa !141
  %conv122 = fpext float %110 to double
  call void @cff_put_real(%struct.cff_writer_s* %108, double %conv122) #4
  %111 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %112 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontMatrix123 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %112, i32 0, i32 9
  %yy124 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix123, i32 0, i32 3
  %113 = load float, float* %yy124, align 4, !tbaa !142
  %conv125 = fpext float %113 to double
  call void @cff_put_real(%struct.cff_writer_s* %111, double %conv125) #4
  %114 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %115 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontMatrix126 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %115, i32 0, i32 9
  %tx127 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix126, i32 0, i32 4
  %116 = load float, float* %tx127, align 4, !tbaa !144
  %conv128 = fpext float %116 to double
  call void @cff_put_real(%struct.cff_writer_s* %114, double %conv128) #4
  %117 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %118 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontMatrix129 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %118, i32 0, i32 9
  %ty130 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix129, i32 0, i32 5
  %119 = load float, float* %ty130, align 4, !tbaa !145
  %conv131 = fpext float %119 to double
  call void @cff_put_real(%struct.cff_writer_s* %117, double %conv131) #4
  %120 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  call void @cff_put_op(%struct.cff_writer_s* %120, i32 39) #4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.113, %lor.lhs.false.109
  %121 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %122 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %StrokeWidth = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %122, i32 0, i32 18
  %123 = load float, float* %StrokeWidth, align 4, !tbaa !146
  %conv133 = fpext float %123 to double
  call void @cff_put_real_if_ne(%struct.cff_writer_s* %121, double %conv133, double 0.000000e+00, i32 40) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cff_put_int(%struct.cff_writer_s* %pcw, i32 %i) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %i.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %1, i32 0, i32 1
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !37
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %3, -107
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %4, 107
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %6 = load i8*, i8** %ptr, align 8, !tbaa !76
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w3, i32 0, i32 2
  %8 = load i8*, i8** %limit, align 8, !tbaa !78
  %cmp4 = icmp uge i8* %6, %8
  br i1 %cmp4, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w6 = bitcast %union.stream_cursor_s* %cursor5 to %struct.stream_cursor_write_s*
  %ptr7 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w6, i32 0, i32 1
  %10 = load i8*, i8** %ptr7, align 8, !tbaa !76
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %ptr7, align 8, !tbaa !76
  %11 = load i32, i32* %i.addr, align 4, !tbaa !5
  %add = add nsw i32 %11, 139
  %conv = trunc i32 %add to i8
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 5
  %w9 = bitcast %union.stream_cursor_s* %cursor8 to %struct.stream_cursor_write_s*
  %ptr10 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w9, i32 0, i32 1
  %13 = load i8*, i8** %ptr10, align 8, !tbaa !76
  store i8 %conv, i8* %13, align 1, !tbaa !62
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %15 = load i32, i32* %i.addr, align 4, !tbaa !5
  %add11 = add nsw i32 %15, 139
  %conv12 = trunc i32 %add11 to i8
  %call = call i32 @spputc(%struct.stream_s* %14, i8 zeroext %conv12) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  br label %if.end.80

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp13 = icmp sle i32 %16, 1131
  br i1 %cmp13, label %land.lhs.true.15, label %if.else.20

land.lhs.true.15:                                 ; preds = %if.else
  %17 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %17, 0
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %land.lhs.true.15
  %18 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %19 = load i32, i32* %i.addr, align 4, !tbaa !5
  %add19 = add nsw i32 63232, %19
  %sub = sub nsw i32 %add19, 108
  call void @put_card16(%struct.cff_writer_s* %18, i32 %sub) #4
  br label %if.end.79

if.else.20:                                       ; preds = %land.lhs.true.15, %if.else
  %20 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp21 = icmp sge i32 %20, -1131
  br i1 %cmp21, label %land.lhs.true.23, label %if.else.29

land.lhs.true.23:                                 ; preds = %if.else.20
  %21 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %21, 0
  br i1 %cmp24, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %land.lhs.true.23
  %22 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %23 = load i32, i32* %i.addr, align 4, !tbaa !5
  %sub27 = sub nsw i32 64256, %23
  %sub28 = sub nsw i32 %sub27, 108
  call void @put_card16(%struct.cff_writer_s* %22, i32 %sub28) #4
  br label %if.end.78

if.else.29:                                       ; preds = %land.lhs.true.23, %if.else.20
  %24 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp30 = icmp sge i32 %24, -32768
  br i1 %cmp30, label %land.lhs.true.32, label %if.else.56

land.lhs.true.32:                                 ; preds = %if.else.29
  %25 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp33 = icmp sle i32 %25, 32767
  br i1 %cmp33, label %if.then.35, label %if.else.56

if.then.35:                                       ; preds = %land.lhs.true.32
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 5
  %w37 = bitcast %union.stream_cursor_s* %cursor36 to %struct.stream_cursor_write_s*
  %ptr38 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w37, i32 0, i32 1
  %27 = load i8*, i8** %ptr38, align 8, !tbaa !76
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor39 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 5
  %w40 = bitcast %union.stream_cursor_s* %cursor39 to %struct.stream_cursor_write_s*
  %limit41 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w40, i32 0, i32 2
  %29 = load i8*, i8** %limit41, align 8, !tbaa !78
  %cmp42 = icmp uge i8* %27, %29
  br i1 %cmp42, label %cond.false.52, label %cond.true.44

cond.true.44:                                     ; preds = %if.then.35
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor45 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 5
  %w46 = bitcast %union.stream_cursor_s* %cursor45 to %struct.stream_cursor_write_s*
  %ptr47 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w46, i32 0, i32 1
  %31 = load i8*, i8** %ptr47, align 8, !tbaa !76
  %incdec.ptr48 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr48, i8** %ptr47, align 8, !tbaa !76
  %32 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor49 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %32, i32 0, i32 5
  %w50 = bitcast %union.stream_cursor_s* %cursor49 to %struct.stream_cursor_write_s*
  %ptr51 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w50, i32 0, i32 1
  %33 = load i8*, i8** %ptr51, align 8, !tbaa !76
  store i8 28, i8* %33, align 1, !tbaa !62
  br label %cond.end.54

cond.false.52:                                    ; preds = %if.then.35
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call53 = call i32 @spputc(%struct.stream_s* %34, i8 zeroext 28) #4
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.52, %cond.true.44
  %cond55 = phi i32 [ 0, %cond.true.44 ], [ %call53, %cond.false.52 ]
  %35 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %36 = load i32, i32* %i.addr, align 4, !tbaa !5
  %and = and i32 %36, 65535
  call void @put_card16(%struct.cff_writer_s* %35, i32 %and) #4
  br label %if.end

if.else.56:                                       ; preds = %land.lhs.true.32, %if.else.29
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor57 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 5
  %w58 = bitcast %union.stream_cursor_s* %cursor57 to %struct.stream_cursor_write_s*
  %ptr59 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w58, i32 0, i32 1
  %38 = load i8*, i8** %ptr59, align 8, !tbaa !76
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor60 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 5
  %w61 = bitcast %union.stream_cursor_s* %cursor60 to %struct.stream_cursor_write_s*
  %limit62 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w61, i32 0, i32 2
  %40 = load i8*, i8** %limit62, align 8, !tbaa !78
  %cmp63 = icmp uge i8* %38, %40
  br i1 %cmp63, label %cond.false.73, label %cond.true.65

cond.true.65:                                     ; preds = %if.else.56
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor66 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %41, i32 0, i32 5
  %w67 = bitcast %union.stream_cursor_s* %cursor66 to %struct.stream_cursor_write_s*
  %ptr68 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w67, i32 0, i32 1
  %42 = load i8*, i8** %ptr68, align 8, !tbaa !76
  %incdec.ptr69 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr69, i8** %ptr68, align 8, !tbaa !76
  %43 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor70 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %43, i32 0, i32 5
  %w71 = bitcast %union.stream_cursor_s* %cursor70 to %struct.stream_cursor_write_s*
  %ptr72 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w71, i32 0, i32 1
  %44 = load i8*, i8** %ptr72, align 8, !tbaa !76
  store i8 29, i8* %44, align 1, !tbaa !62
  br label %cond.end.75

cond.false.73:                                    ; preds = %if.else.56
  %45 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call74 = call i32 @spputc(%struct.stream_s* %45, i8 zeroext 29) #4
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.73, %cond.true.65
  %cond76 = phi i32 [ 0, %cond.true.65 ], [ %call74, %cond.false.73 ]
  %46 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %47 = load i32, i32* %i.addr, align 4, !tbaa !5
  %shr = ashr i32 %47, 16
  call void @put_card16(%struct.cff_writer_s* %46, i32 %shr) #4
  %48 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %49 = load i32, i32* %i.addr, align 4, !tbaa !5
  %and77 = and i32 %49, 65535
  call void @put_card16(%struct.cff_writer_s* %48, i32 %and77) #4
  br label %if.end

if.end:                                           ; preds = %cond.end.75, %cond.end.54
  br label %if.end.78

if.end.78:                                        ; preds = %if.end, %if.then.26
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.18
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %cond.end
  %50 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cff_put_int_value(%struct.cff_writer_s* %pcw, i32 %i, i32 %op) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %i.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  %0 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %1 = load i32, i32* %i.addr, align 4, !tbaa !5
  call void @cff_put_int(%struct.cff_writer_s* %0, i32 %1) #4
  %2 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %3 = load i32, i32* %op.addr, align 4, !tbaa !5
  call void @cff_put_op(%struct.cff_writer_s* %2, i32 %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cff_put_int_if_ne(%struct.cff_writer_s* %pcw, i32 %i, i32 %i_default, i32 %op) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %i.addr = alloca i32, align 4
  %i_default.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  store i32 %i_default, i32* %i_default.addr, align 4, !tbaa !5
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  %0 = load i32, i32* %i.addr, align 4, !tbaa !5
  %1 = load i32, i32* %i_default.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %3 = load i32, i32* %i.addr, align 4, !tbaa !5
  %4 = load i32, i32* %op.addr, align 4, !tbaa !5
  call void @cff_put_int_value(%struct.cff_writer_s* %2, i32 %3, i32 %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_put_string_value(%struct.cff_writer_s* %pcw, i8* %data, i32 %size, i32 %op) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 @cff_put_string(%struct.cff_writer_s* %1, i8* %2, i32 %3) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %6 = load i32, i32* %op.addr, align 4, !tbaa !5
  call void @cff_put_op(%struct.cff_writer_s* %5, i32 %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @cff_put_real(%struct.cff_writer_s* %pcw, double %f) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %f.addr = alloca double, align 8
  %str = alloca [50 x i8], align 16
  %b = alloca i8, align 1
  %p = alloca i8*, align 8
  %digit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store double %f, double* %f.addr, align 8, !tbaa !147
  %0 = load double, double* %f.addr, align 8, !tbaa !147
  %1 = load double, double* %f.addr, align 8, !tbaa !147
  %conv = fptosi double %1 to i32
  %conv1 = sitofp i32 %conv to double
  %cmp = fcmp oeq double %0, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %3 = load double, double* %f.addr, align 8, !tbaa !147
  %conv3 = fptosi double %3 to i32
  call void @cff_put_int(%struct.cff_writer_s* %2, i32 %conv3) #4
  br label %if.end.98

if.else:                                          ; preds = %entry
  %4 = bitcast [50 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 50, i8* %4) #1
  call void @llvm.lifetime.start(i64 1, i8* %b) #1
  store i8 -1, i8* %b, align 1, !tbaa !62
  %5 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %str, i32 0, i32 0
  %6 = load double, double* %f.addr, align 8, !tbaa !147
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), double %6) #4
  %7 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %7, i32 0, i32 1
  %8 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !37
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %9 = load i8*, i8** %ptr, align 8, !tbaa !76
  %10 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm4 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %10, i32 0, i32 1
  %11 = load %struct.stream_s*, %struct.stream_s** %strm4, align 8, !tbaa !37
  %cursor5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w6 = bitcast %union.stream_cursor_s* %cursor5 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w6, i32 0, i32 2
  %12 = load i8*, i8** %limit, align 8, !tbaa !78
  %cmp7 = icmp uge i8* %9, %12
  br i1 %cmp7, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %13 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm9 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %13, i32 0, i32 1
  %14 = load %struct.stream_s*, %struct.stream_s** %strm9, align 8, !tbaa !37
  %cursor10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 5
  %w11 = bitcast %union.stream_cursor_s* %cursor10 to %struct.stream_cursor_write_s*
  %ptr12 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w11, i32 0, i32 1
  %15 = load i8*, i8** %ptr12, align 8, !tbaa !76
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %ptr12, align 8, !tbaa !76
  %16 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm13 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %16, i32 0, i32 1
  %17 = load %struct.stream_s*, %struct.stream_s** %strm13, align 8, !tbaa !37
  %cursor14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 5
  %w15 = bitcast %union.stream_cursor_s* %cursor14 to %struct.stream_cursor_write_s*
  %ptr16 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w15, i32 0, i32 1
  %18 = load i8*, i8** %ptr16, align 8, !tbaa !76
  store i8 30, i8* %18, align 1, !tbaa !62
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %19 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm17 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %19, i32 0, i32 1
  %20 = load %struct.stream_s*, %struct.stream_s** %strm17, align 8, !tbaa !37
  %call18 = call i32 @spputc(%struct.stream_s* %20, i8 zeroext 30) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call18, %cond.false ]
  %arraydecay19 = getelementptr inbounds [50 x i8], [50 x i8]* %str, i32 0, i32 0
  store i8* %arraydecay19, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %21 = bitcast i32* %digit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !62
  %conv20 = sext i8 %23 to i32
  switch i32 %conv20, label %sw.default [
    i32 0, label %sw.bb
    i32 46, label %sw.bb.21
    i32 43, label %sw.bb.22
    i32 45, label %sw.bb.23
    i32 101, label %sw.bb.24
    i32 69, label %sw.bb.24
    i32 48, label %sw.bb.31
    i32 49, label %sw.bb.31
    i32 50, label %sw.bb.31
    i32 51, label %sw.bb.31
    i32 52, label %sw.bb.31
    i32 53, label %sw.bb.31
    i32 54, label %sw.bb.31
    i32 55, label %sw.bb.31
    i32 56, label %sw.bb.31
    i32 57, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %for.cond
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.21:                                         ; preds = %for.cond
  store i32 10, i32* %digit, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.22:                                         ; preds = %for.cond
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.23:                                         ; preds = %for.cond
  store i32 14, i32* %digit, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.24:                                         ; preds = %for.cond, %for.cond
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !62
  %conv25 = sext i8 %25 to i32
  %cmp26 = icmp eq i32 %conv25, 45
  br i1 %cmp26, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %sw.bb.24
  store i32 12, i32* %digit, align 4, !tbaa !5
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr29 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr29, i8** %p, align 8, !tbaa !1
  br label %if.end

if.else.30:                                       ; preds = %sw.bb.24
  store i32 11, i32* %digit, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else.30, %if.then.28
  br label %sw.epilog

sw.bb.31:                                         ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !62
  %conv32 = sext i8 %28 to i32
  %sub = sub nsw i32 %conv32, 48
  store i32 %sub, i32* %digit, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  store i32 13, i32* %digit, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.31, %if.end, %sw.bb.23, %sw.bb.21
  %29 = load i8, i8* %b, align 1, !tbaa !62
  %conv33 = zext i8 %29 to i32
  %cmp34 = icmp eq i32 %conv33, 255
  br i1 %cmp34, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %sw.epilog
  %30 = load i32, i32* %digit, align 4, !tbaa !5
  %shl = shl i32 %30, 4
  %add = add nsw i32 %shl, 15
  %conv37 = trunc i32 %add to i8
  store i8 %conv37, i8* %b, align 1, !tbaa !62
  br label %if.end.71

if.else.38:                                       ; preds = %sw.epilog
  %31 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm39 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %31, i32 0, i32 1
  %32 = load %struct.stream_s*, %struct.stream_s** %strm39, align 8, !tbaa !37
  %cursor40 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %32, i32 0, i32 5
  %w41 = bitcast %union.stream_cursor_s* %cursor40 to %struct.stream_cursor_write_s*
  %ptr42 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w41, i32 0, i32 1
  %33 = load i8*, i8** %ptr42, align 8, !tbaa !76
  %34 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm43 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %34, i32 0, i32 1
  %35 = load %struct.stream_s*, %struct.stream_s** %strm43, align 8, !tbaa !37
  %cursor44 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 5
  %w45 = bitcast %union.stream_cursor_s* %cursor44 to %struct.stream_cursor_write_s*
  %limit46 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w45, i32 0, i32 2
  %36 = load i8*, i8** %limit46, align 8, !tbaa !78
  %cmp47 = icmp uge i8* %33, %36
  br i1 %cmp47, label %cond.false.62, label %cond.true.49

cond.true.49:                                     ; preds = %if.else.38
  %37 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm50 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %37, i32 0, i32 1
  %38 = load %struct.stream_s*, %struct.stream_s** %strm50, align 8, !tbaa !37
  %cursor51 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 5
  %w52 = bitcast %union.stream_cursor_s* %cursor51 to %struct.stream_cursor_write_s*
  %ptr53 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w52, i32 0, i32 1
  %39 = load i8*, i8** %ptr53, align 8, !tbaa !76
  %incdec.ptr54 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr54, i8** %ptr53, align 8, !tbaa !76
  %40 = load i8, i8* %b, align 1, !tbaa !62
  %conv55 = zext i8 %40 to i32
  %and = and i32 %conv55, 240
  %41 = load i32, i32* %digit, align 4, !tbaa !5
  %add56 = add nsw i32 %and, %41
  %conv57 = trunc i32 %add56 to i8
  %42 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm58 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %42, i32 0, i32 1
  %43 = load %struct.stream_s*, %struct.stream_s** %strm58, align 8, !tbaa !37
  %cursor59 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %43, i32 0, i32 5
  %w60 = bitcast %union.stream_cursor_s* %cursor59 to %struct.stream_cursor_write_s*
  %ptr61 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w60, i32 0, i32 1
  %44 = load i8*, i8** %ptr61, align 8, !tbaa !76
  store i8 %conv57, i8* %44, align 1, !tbaa !62
  br label %cond.end.69

cond.false.62:                                    ; preds = %if.else.38
  %45 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm63 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %45, i32 0, i32 1
  %46 = load %struct.stream_s*, %struct.stream_s** %strm63, align 8, !tbaa !37
  %47 = load i8, i8* %b, align 1, !tbaa !62
  %conv64 = zext i8 %47 to i32
  %and65 = and i32 %conv64, 240
  %48 = load i32, i32* %digit, align 4, !tbaa !5
  %add66 = add nsw i32 %and65, %48
  %conv67 = trunc i32 %add66 to i8
  %call68 = call i32 @spputc(%struct.stream_s* %46, i8 zeroext %conv67) #4
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.62, %cond.true.49
  %cond70 = phi i32 [ 0, %cond.true.49 ], [ %call68, %cond.false.62 ]
  store i8 -1, i8* %b, align 1, !tbaa !62
  br label %if.end.71

if.end.71:                                        ; preds = %cond.end.69, %if.then.36
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.71, %sw.bb.22
  %49 = bitcast i32* %digit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 6, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %50 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr72 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr72, i8** %p, align 8, !tbaa !1
  br label %for.cond

done:                                             ; preds = %cleanup
  %51 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm73 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %51, i32 0, i32 1
  %52 = load %struct.stream_s*, %struct.stream_s** %strm73, align 8, !tbaa !37
  %cursor74 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %52, i32 0, i32 5
  %w75 = bitcast %union.stream_cursor_s* %cursor74 to %struct.stream_cursor_write_s*
  %ptr76 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w75, i32 0, i32 1
  %53 = load i8*, i8** %ptr76, align 8, !tbaa !76
  %54 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm77 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %54, i32 0, i32 1
  %55 = load %struct.stream_s*, %struct.stream_s** %strm77, align 8, !tbaa !37
  %cursor78 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %55, i32 0, i32 5
  %w79 = bitcast %union.stream_cursor_s* %cursor78 to %struct.stream_cursor_write_s*
  %limit80 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w79, i32 0, i32 2
  %56 = load i8*, i8** %limit80, align 8, !tbaa !78
  %cmp81 = icmp uge i8* %53, %56
  br i1 %cmp81, label %cond.false.93, label %cond.true.83

cond.true.83:                                     ; preds = %done
  %57 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm84 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %57, i32 0, i32 1
  %58 = load %struct.stream_s*, %struct.stream_s** %strm84, align 8, !tbaa !37
  %cursor85 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %58, i32 0, i32 5
  %w86 = bitcast %union.stream_cursor_s* %cursor85 to %struct.stream_cursor_write_s*
  %ptr87 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w86, i32 0, i32 1
  %59 = load i8*, i8** %ptr87, align 8, !tbaa !76
  %incdec.ptr88 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr88, i8** %ptr87, align 8, !tbaa !76
  %60 = load i8, i8* %b, align 1, !tbaa !62
  %61 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm89 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %61, i32 0, i32 1
  %62 = load %struct.stream_s*, %struct.stream_s** %strm89, align 8, !tbaa !37
  %cursor90 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %62, i32 0, i32 5
  %w91 = bitcast %union.stream_cursor_s* %cursor90 to %struct.stream_cursor_write_s*
  %ptr92 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w91, i32 0, i32 1
  %63 = load i8*, i8** %ptr92, align 8, !tbaa !76
  store i8 %60, i8* %63, align 1, !tbaa !62
  br label %cond.end.96

cond.false.93:                                    ; preds = %done
  %64 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm94 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %64, i32 0, i32 1
  %65 = load %struct.stream_s*, %struct.stream_s** %strm94, align 8, !tbaa !37
  %66 = load i8, i8* %b, align 1, !tbaa !62
  %call95 = call i32 @spputc(%struct.stream_s* %65, i8 zeroext %66) #4
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.93, %cond.true.83
  %cond97 = phi i32 [ 0, %cond.true.83 ], [ %call95, %cond.false.93 ]
  %67 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  call void @llvm.lifetime.end(i64 1, i8* %b) #1
  %68 = bitcast [50 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 50, i8* %68) #1
  br label %if.end.98

if.end.98:                                        ; preds = %cond.end.96, %if.then
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @cff_put_op(%struct.cff_writer_s* %pcw, i32 %op) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %op.addr = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  %0 = load i32, i32* %op.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %1, i32 0, i32 1
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !37
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %3 = load i8*, i8** %ptr, align 8, !tbaa !76
  %4 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm1 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %4, i32 0, i32 1
  %5 = load %struct.stream_s*, %struct.stream_s** %strm1, align 8, !tbaa !37
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %w3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w3, i32 0, i32 2
  %6 = load i8*, i8** %limit, align 8, !tbaa !78
  %cmp4 = icmp uge i8* %3, %6
  br i1 %cmp4, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %7 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm5 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %7, i32 0, i32 1
  %8 = load %struct.stream_s*, %struct.stream_s** %strm5, align 8, !tbaa !37
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %9 = load i8*, i8** %ptr8, align 8, !tbaa !76
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %ptr8, align 8, !tbaa !76
  %10 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm9 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %10, i32 0, i32 1
  %11 = load %struct.stream_s*, %struct.stream_s** %strm9, align 8, !tbaa !37
  %cursor10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w11 = bitcast %union.stream_cursor_s* %cursor10 to %struct.stream_cursor_write_s*
  %ptr12 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w11, i32 0, i32 1
  %12 = load i8*, i8** %ptr12, align 8, !tbaa !76
  store i8 12, i8* %12, align 1, !tbaa !62
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm13 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %13, i32 0, i32 1
  %14 = load %struct.stream_s*, %struct.stream_s** %strm13, align 8, !tbaa !37
  %call = call i32 @spputc(%struct.stream_s* %14, i8 zeroext 12) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %15 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm14 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %15, i32 0, i32 1
  %16 = load %struct.stream_s*, %struct.stream_s** %strm14, align 8, !tbaa !37
  %cursor15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 5
  %w16 = bitcast %union.stream_cursor_s* %cursor15 to %struct.stream_cursor_write_s*
  %ptr17 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w16, i32 0, i32 1
  %17 = load i8*, i8** %ptr17, align 8, !tbaa !76
  %18 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm18 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %18, i32 0, i32 1
  %19 = load %struct.stream_s*, %struct.stream_s** %strm18, align 8, !tbaa !37
  %cursor19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 5
  %w20 = bitcast %union.stream_cursor_s* %cursor19 to %struct.stream_cursor_write_s*
  %limit21 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w20, i32 0, i32 2
  %20 = load i8*, i8** %limit21, align 8, !tbaa !78
  %cmp22 = icmp uge i8* %17, %20
  br i1 %cmp22, label %cond.false.33, label %cond.true.23

cond.true.23:                                     ; preds = %cond.end
  %21 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm24 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %21, i32 0, i32 1
  %22 = load %struct.stream_s*, %struct.stream_s** %strm24, align 8, !tbaa !37
  %cursor25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 5
  %w26 = bitcast %union.stream_cursor_s* %cursor25 to %struct.stream_cursor_write_s*
  %ptr27 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w26, i32 0, i32 1
  %23 = load i8*, i8** %ptr27, align 8, !tbaa !76
  %incdec.ptr28 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr28, i8** %ptr27, align 8, !tbaa !76
  %24 = load i32, i32* %op.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %24, 32
  %conv = trunc i32 %sub to i8
  %25 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm29 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %25, i32 0, i32 1
  %26 = load %struct.stream_s*, %struct.stream_s** %strm29, align 8, !tbaa !37
  %cursor30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 5
  %w31 = bitcast %union.stream_cursor_s* %cursor30 to %struct.stream_cursor_write_s*
  %ptr32 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w31, i32 0, i32 1
  %27 = load i8*, i8** %ptr32, align 8, !tbaa !76
  store i8 %conv, i8* %27, align 1, !tbaa !62
  br label %cond.end.38

cond.false.33:                                    ; preds = %cond.end
  %28 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm34 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %28, i32 0, i32 1
  %29 = load %struct.stream_s*, %struct.stream_s** %strm34, align 8, !tbaa !37
  %30 = load i32, i32* %op.addr, align 4, !tbaa !5
  %sub35 = sub nsw i32 %30, 32
  %conv36 = trunc i32 %sub35 to i8
  %call37 = call i32 @spputc(%struct.stream_s* %29, i8 zeroext %conv36) #4
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.33, %cond.true.23
  %cond39 = phi i32 [ 0, %cond.true.23 ], [ %call37, %cond.false.33 ]
  br label %if.end

if.else:                                          ; preds = %entry
  %31 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm40 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %31, i32 0, i32 1
  %32 = load %struct.stream_s*, %struct.stream_s** %strm40, align 8, !tbaa !37
  %cursor41 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %32, i32 0, i32 5
  %w42 = bitcast %union.stream_cursor_s* %cursor41 to %struct.stream_cursor_write_s*
  %ptr43 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w42, i32 0, i32 1
  %33 = load i8*, i8** %ptr43, align 8, !tbaa !76
  %34 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm44 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %34, i32 0, i32 1
  %35 = load %struct.stream_s*, %struct.stream_s** %strm44, align 8, !tbaa !37
  %cursor45 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 5
  %w46 = bitcast %union.stream_cursor_s* %cursor45 to %struct.stream_cursor_write_s*
  %limit47 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w46, i32 0, i32 2
  %36 = load i8*, i8** %limit47, align 8, !tbaa !78
  %cmp48 = icmp uge i8* %33, %36
  br i1 %cmp48, label %cond.false.61, label %cond.true.50

cond.true.50:                                     ; preds = %if.else
  %37 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm51 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %37, i32 0, i32 1
  %38 = load %struct.stream_s*, %struct.stream_s** %strm51, align 8, !tbaa !37
  %cursor52 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 5
  %w53 = bitcast %union.stream_cursor_s* %cursor52 to %struct.stream_cursor_write_s*
  %ptr54 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w53, i32 0, i32 1
  %39 = load i8*, i8** %ptr54, align 8, !tbaa !76
  %incdec.ptr55 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr55, i8** %ptr54, align 8, !tbaa !76
  %40 = load i32, i32* %op.addr, align 4, !tbaa !5
  %conv56 = trunc i32 %40 to i8
  %41 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm57 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %41, i32 0, i32 1
  %42 = load %struct.stream_s*, %struct.stream_s** %strm57, align 8, !tbaa !37
  %cursor58 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %42, i32 0, i32 5
  %w59 = bitcast %union.stream_cursor_s* %cursor58 to %struct.stream_cursor_write_s*
  %ptr60 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w59, i32 0, i32 1
  %43 = load i8*, i8** %ptr60, align 8, !tbaa !76
  store i8 %conv56, i8* %43, align 1, !tbaa !62
  br label %cond.end.65

cond.false.61:                                    ; preds = %if.else
  %44 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm62 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %44, i32 0, i32 1
  %45 = load %struct.stream_s*, %struct.stream_s** %strm62, align 8, !tbaa !37
  %46 = load i32, i32* %op.addr, align 4, !tbaa !5
  %conv63 = trunc i32 %46 to i8
  %call64 = call i32 @spputc(%struct.stream_s* %45, i8 zeroext %conv63) #4
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.61, %cond.true.50
  %cond66 = phi i32 [ 0, %cond.true.50 ], [ %call64, %cond.false.61 ]
  br label %if.end

if.end:                                           ; preds = %cond.end.65, %cond.end.38
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cff_put_bool_value(%struct.cff_writer_s* %pcw, i32 %b, i32 %op) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %b.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !5
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  %0 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %1 = load i32, i32* %b.addr, align 4, !tbaa !5
  call void @cff_put_bool(%struct.cff_writer_s* %0, i32 %1) #4
  %2 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %3 = load i32, i32* %op.addr, align 4, !tbaa !5
  call void @cff_put_op(%struct.cff_writer_s* %2, i32 %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cff_put_real_if_ne(%struct.cff_writer_s* %pcw, double %f, double %f_default, i32 %op) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %f.addr = alloca double, align 8
  %f_default.addr = alloca double, align 8
  %op.addr = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store double %f, double* %f.addr, align 8, !tbaa !147
  store double %f_default, double* %f_default.addr, align 8, !tbaa !147
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  %0 = load double, double* %f.addr, align 8, !tbaa !147
  %conv = fptrunc double %0 to float
  %1 = load double, double* %f_default.addr, align 8, !tbaa !147
  %conv1 = fptrunc double %1 to float
  %cmp = fcmp une float %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %3 = load double, double* %f.addr, align 8, !tbaa !147
  %4 = load i32, i32* %op.addr, align 4, !tbaa !5
  call void @cff_put_real_value(%struct.cff_writer_s* %2, double %3, i32 %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_put_string(%struct.cff_writer_s* %pcw, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %sid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %sid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 @cff_string_sid(%struct.cff_writer_s* %1, i8* %2, i32 %3) #4
  store i32 %call, i32* %sid, align 4, !tbaa !5
  %4 = load i32, i32* %sid, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %sid, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %7 = load i32, i32* %sid, align 4, !tbaa !5
  call void @cff_put_int(%struct.cff_writer_s* %6, i32 %7) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i32* %sid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_string_sid(%struct.cff_writer_s* %pcw, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %std_strings = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %2, i32 0, i32 6
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 @cff_string_index(%struct.cff_string_table_s* %std_strings, i8* %3, i32 %4, i32 0, i32* %index) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %6 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strings = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %6, i32 0, i32 7
  %7 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %8 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call1 = call i32 @cff_string_index(%struct.cff_string_table_s* %strings, i8* %7, i32 %8, i32 1, i32* %index) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %index, align 4, !tbaa !5
  %add = add nsw i32 %11, 391
  store i32 %add, i32* %index, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %12 = load i32, i32* %index, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define internal void @cff_put_bool(%struct.cff_writer_s* %pcw, i32 %b) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %b.addr = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !5
  %0 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %1 = load i32, i32* %b.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 1, i32 0
  call void @cff_put_int(%struct.cff_writer_s* %0, i32 %cond) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cff_put_real_value(%struct.cff_writer_s* %pcw, double %f, i32 %op) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %f.addr = alloca double, align 8
  %op.addr = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store double %f, double* %f.addr, align 8, !tbaa !147
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  %0 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %1 = load double, double* %f.addr, align 8, !tbaa !147
  call void @cff_put_real(%struct.cff_writer_s* %0, double %1) #4
  %2 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %3 = load i32, i32* %op.addr, align 4, !tbaa !5
  call void @cff_put_op(%struct.cff_writer_s* %2, i32 %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_card16(%struct.cff_writer_s* %pcw, i32 %c16) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %c16.addr = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i32 %c16, i32* %c16.addr, align 4, !tbaa !5
  %0 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %0, i32 0, i32 1
  %1 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !37
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %2 = load i8*, i8** %ptr, align 8, !tbaa !76
  %3 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm1 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %3, i32 0, i32 1
  %4 = load %struct.stream_s*, %struct.stream_s** %strm1, align 8, !tbaa !37
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w3, i32 0, i32 2
  %5 = load i8*, i8** %limit, align 8, !tbaa !78
  %cmp = icmp uge i8* %2, %5
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %6 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm4 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %6, i32 0, i32 1
  %7 = load %struct.stream_s*, %struct.stream_s** %strm4, align 8, !tbaa !37
  %cursor5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w6 = bitcast %union.stream_cursor_s* %cursor5 to %struct.stream_cursor_write_s*
  %ptr7 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w6, i32 0, i32 1
  %8 = load i8*, i8** %ptr7, align 8, !tbaa !76
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %ptr7, align 8, !tbaa !76
  %9 = load i32, i32* %c16.addr, align 4, !tbaa !5
  %shr = lshr i32 %9, 8
  %conv = trunc i32 %shr to i8
  %10 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm8 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %10, i32 0, i32 1
  %11 = load %struct.stream_s*, %struct.stream_s** %strm8, align 8, !tbaa !37
  %cursor9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w10 = bitcast %union.stream_cursor_s* %cursor9 to %struct.stream_cursor_write_s*
  %ptr11 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w10, i32 0, i32 1
  %12 = load i8*, i8** %ptr11, align 8, !tbaa !76
  store i8 %conv, i8* %12, align 1, !tbaa !62
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm12 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %13, i32 0, i32 1
  %14 = load %struct.stream_s*, %struct.stream_s** %strm12, align 8, !tbaa !37
  %15 = load i32, i32* %c16.addr, align 4, !tbaa !5
  %shr13 = lshr i32 %15, 8
  %conv14 = trunc i32 %shr13 to i8
  %call = call i32 @spputc(%struct.stream_s* %14, i8 zeroext %conv14) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %16 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm15 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %16, i32 0, i32 1
  %17 = load %struct.stream_s*, %struct.stream_s** %strm15, align 8, !tbaa !37
  %cursor16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 5
  %w17 = bitcast %union.stream_cursor_s* %cursor16 to %struct.stream_cursor_write_s*
  %ptr18 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w17, i32 0, i32 1
  %18 = load i8*, i8** %ptr18, align 8, !tbaa !76
  %19 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm19 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %19, i32 0, i32 1
  %20 = load %struct.stream_s*, %struct.stream_s** %strm19, align 8, !tbaa !37
  %cursor20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 5
  %w21 = bitcast %union.stream_cursor_s* %cursor20 to %struct.stream_cursor_write_s*
  %limit22 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w21, i32 0, i32 2
  %21 = load i8*, i8** %limit22, align 8, !tbaa !78
  %cmp23 = icmp uge i8* %18, %21
  br i1 %cmp23, label %cond.false.36, label %cond.true.25

cond.true.25:                                     ; preds = %cond.end
  %22 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm26 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %22, i32 0, i32 1
  %23 = load %struct.stream_s*, %struct.stream_s** %strm26, align 8, !tbaa !37
  %cursor27 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 5
  %w28 = bitcast %union.stream_cursor_s* %cursor27 to %struct.stream_cursor_write_s*
  %ptr29 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w28, i32 0, i32 1
  %24 = load i8*, i8** %ptr29, align 8, !tbaa !76
  %incdec.ptr30 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr30, i8** %ptr29, align 8, !tbaa !76
  %25 = load i32, i32* %c16.addr, align 4, !tbaa !5
  %conv31 = trunc i32 %25 to i8
  %26 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm32 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %26, i32 0, i32 1
  %27 = load %struct.stream_s*, %struct.stream_s** %strm32, align 8, !tbaa !37
  %cursor33 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 5
  %w34 = bitcast %union.stream_cursor_s* %cursor33 to %struct.stream_cursor_write_s*
  %ptr35 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w34, i32 0, i32 1
  %28 = load i8*, i8** %ptr35, align 8, !tbaa !76
  store i8 %conv31, i8* %28, align 1, !tbaa !62
  br label %cond.end.40

cond.false.36:                                    ; preds = %cond.end
  %29 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm37 = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %29, i32 0, i32 1
  %30 = load %struct.stream_s*, %struct.stream_s** %strm37, align 8, !tbaa !37
  %31 = load i32, i32* %c16.addr, align 4, !tbaa !5
  %conv38 = trunc i32 %31 to i8
  %call39 = call i32 @spputc(%struct.stream_s* %30, i8 zeroext %conv38) #4
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.36, %cond.true.25
  %cond41 = phi i32 [ 0, %cond.true.25 ], [ %call39, %cond.false.36 ]
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_extra_lenIV(%struct.cff_writer_s* %pcw, %struct.gs_font_type1_s* %pfont) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %0 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %options = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %0, i32 0, i32 0
  %1 = load i32, i32* %options, align 4, !tbaa !32
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false.4

cond.true:                                        ; preds = %entry
  %2 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %2, i32 0, i32 29
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 4
  %3 = load i32, i32* %lenIV, align 4, !tbaa !94
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %cond.true.1, label %cond.false

cond.true.1:                                      ; preds = %cond.true
  %4 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %4, i32 0, i32 29
  %lenIV3 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data2, i32 0, i32 4
  %5 = load i32, i32* %lenIV3, align 4, !tbaa !94
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.1
  %cond = phi i32 [ %5, %cond.true.1 ], [ 0, %cond.false ]
  br label %cond.end.5

cond.false.4:                                     ; preds = %entry
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.end
  %cond6 = phi i32 [ %cond, %cond.end ], [ 0, %cond.false.4 ]
  ret i32 %cond6
}

declare void @gs_glyph_data_free(%struct.gs_glyph_data_s*, i8*) #2

declare i32 @psf_convert_type1_to_type2(%struct.stream_s*, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @offset_size(i32 %offset) #0 {
entry:
  %offset.addr = alloca i32, align 4
  %size = alloca i32, align 4
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %size, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %1, 255
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %shr = lshr i32 %2, 8
  store i32 %shr, i32* %offset.addr, align 4, !tbaa !5
  %3 = load i32, i32* %size, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %size, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %size, align 4, !tbaa !5
  %5 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i32 %4
}

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cff_put_CharString(%struct.cff_writer_s* %pcw, i8* %data, i32 %size, %struct.gs_font_type1_s* %pfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %lenIV = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %state = alloca i16, align 2
  %buf = alloca [50 x i8], align 16
  %left = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast i32* %lenIV to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %1, i32 0, i32 29
  %lenIV2 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data1, i32 0, i32 4
  %2 = load i32, i32* %lenIV2, align 4, !tbaa !94
  store i32 %2, i32* %lenIV, align 4, !tbaa !5
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %4, i32 0, i32 1
  %5 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !37
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %7 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_font_type1_s* %7 to %struct.gs_font_base_s*
  %call = call i32 @cff_convert_charstrings(%struct.cff_writer_s* %6, %struct.gs_font_base_s* %8) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %11, i32 0, i32 2
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %memory3 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %12, %struct.gs_memory_s** %memory3, align 8, !tbaa !70
  %13 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %14 = load i32, i32* %size.addr, align 4, !tbaa !5
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %gdata, i8* %13, i32 %14, %struct.gs_font_s* null) #4
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %16 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %call4 = call i32 @psf_convert_type1_to_type2(%struct.stream_s* %15, %struct.gs_glyph_data_s* %gdata, %struct.gs_font_type1_s* %16) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.5
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.51 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.50

if.else:                                          ; preds = %entry
  %21 = load i32, i32* %lenIV, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %21, 0
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %22 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %options = getelementptr inbounds %struct.cff_writer_s, %struct.cff_writer_s* %22, i32 0, i32 0
  %23 = load i32, i32* %options, align 4, !tbaa !32
  %and = and i32 %23, 1
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.else.11, label %if.then.9

if.then.9:                                        ; preds = %lor.lhs.false, %if.else
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %25 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %26 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call10 = call i32 @put_bytes(%struct.stream_s* %24, i8* %25, i32 %26) #4
  br label %if.end.49

if.else.11:                                       ; preds = %lor.lhs.false
  %27 = load i32, i32* %size.addr, align 4, !tbaa !5
  %28 = load i32, i32* %lenIV, align 4, !tbaa !5
  %cmp12 = icmp uge i32 %27, %28
  br i1 %cmp12, label %if.then.13, label %if.end.48

if.then.13:                                       ; preds = %if.else.11
  %29 = bitcast i16* %state to i8*
  call void @llvm.lifetime.start(i64 2, i8* %29) #1
  store i16 4330, i16* %state, align 2, !tbaa !148
  %30 = bitcast [50 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 50, i8* %30) #1
  %31 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load i32, i32* %lenIV, align 4, !tbaa !5
  store i32 %33, i32* %left, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %34 = load i32, i32* %left, align 4, !tbaa !5
  %cmp14 = icmp ugt i32 %34, 0
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %left, align 4, !tbaa !5
  %conv = zext i32 %35 to i64
  %cmp15 = icmp ult i64 %conv, 50
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %36 = load i32, i32* %left, align 4, !tbaa !5
  %conv17 = zext i32 %36 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv17, %cond.true ], [ 50, %cond.false ]
  %conv18 = trunc i64 %cond to i32
  store i32 %conv18, i32* %n, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %37 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %38 = load i32, i32* %lenIV, align 4, !tbaa !5
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  %39 = load i32, i32* %left, align 4, !tbaa !5
  %idx.ext19 = zext i32 %39 to i64
  %idx.neg = sub i64 0, %idx.ext19
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %40 = load i32, i32* %n, align 4, !tbaa !5
  %call21 = call i32 @gs_type1_decrypt(i8* %arraydecay, i8* %add.ptr20, i32 %40, i16* %state) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %41 = load i32, i32* %n, align 4, !tbaa !5
  %42 = load i32, i32* %left, align 4, !tbaa !5
  %sub = sub i32 %42, %41
  store i32 %sub, i32* %left, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* %size.addr, align 4, !tbaa !5
  %44 = load i32, i32* %lenIV, align 4, !tbaa !5
  %sub22 = sub i32 %43, %44
  store i32 %sub22, i32* %left, align 4, !tbaa !5
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.45, %for.end
  %45 = load i32, i32* %left, align 4, !tbaa !5
  %cmp24 = icmp ugt i32 %45, 0
  br i1 %cmp24, label %for.body.26, label %for.end.47

for.body.26:                                      ; preds = %for.cond.23
  %46 = load i32, i32* %left, align 4, !tbaa !5
  %conv27 = zext i32 %46 to i64
  %cmp28 = icmp ult i64 %conv27, 50
  br i1 %cmp28, label %cond.true.30, label %cond.false.32

cond.true.30:                                     ; preds = %for.body.26
  %47 = load i32, i32* %left, align 4, !tbaa !5
  %conv31 = zext i32 %47 to i64
  br label %cond.end.33

cond.false.32:                                    ; preds = %for.body.26
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.30
  %cond34 = phi i64 [ %conv31, %cond.true.30 ], [ 50, %cond.false.32 ]
  %conv35 = trunc i64 %cond34 to i32
  store i32 %conv35, i32* %n, align 4, !tbaa !5
  %arraydecay36 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %48 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %49 = load i32, i32* %size.addr, align 4, !tbaa !5
  %idx.ext37 = zext i32 %49 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %48, i64 %idx.ext37
  %50 = load i32, i32* %left, align 4, !tbaa !5
  %idx.ext39 = zext i32 %50 to i64
  %idx.neg40 = sub i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, i8* %add.ptr38, i64 %idx.neg40
  %51 = load i32, i32* %n, align 4, !tbaa !5
  %call42 = call i32 @gs_type1_decrypt(i8* %arraydecay36, i8* %add.ptr41, i32 %51, i16* %state) #4
  %52 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay43 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %53 = load i32, i32* %n, align 4, !tbaa !5
  %call44 = call i32 @put_bytes(%struct.stream_s* %52, i8* %arraydecay43, i32 %53) #4
  br label %for.inc.45

for.inc.45:                                       ; preds = %cond.end.33
  %54 = load i32, i32* %n, align 4, !tbaa !5
  %55 = load i32, i32* %left, align 4, !tbaa !5
  %sub46 = sub i32 %55, %54
  store i32 %sub46, i32* %left, align 4, !tbaa !5
  br label %for.cond.23

for.end.47:                                       ; preds = %for.cond.23
  %56 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast [50 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 50, i8* %58) #1
  %59 = bitcast i16* %state to i8*
  call void @llvm.lifetime.end(i64 2, i8* %59) #1
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.47, %if.else.11
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.9
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

cleanup.51:                                       ; preds = %if.end.50, %cleanup
  %60 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i32* %lenIV to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

declare void @gs_glyph_data_from_string(%struct.gs_glyph_data_s*, i8*, i32, %struct.gs_font_s*) #2

declare i32 @gs_type1_decrypt(i8*, i8*, i32, i16*) #2

declare i32 @psf_sorted_glyphs_index_of(i64*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal void @cff_put_real_deltarray(%struct.cff_writer_s* %pcw, float* %pf, i32 %count, i32 %op) #0 {
entry:
  %pcw.addr = alloca %struct.cff_writer_s*, align 8
  %pf.addr = alloca float*, align 8
  %count.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %prev = alloca float, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %f = alloca float, align 4
  store %struct.cff_writer_s* %pcw, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  store float* %pf, float** %pf.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  %0 = bitcast float* %prev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store float 0.000000e+00, float* %prev, align 4, !tbaa !85
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %4 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast float* %f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load float*, float** %pf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %7, i64 %idxprom
  %8 = load float, float* %arrayidx, align 4, !tbaa !85
  store float %8, float* %f, align 4, !tbaa !85
  %9 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %10 = load float, float* %f, align 4, !tbaa !85
  %11 = load float, float* %prev, align 4, !tbaa !85
  %sub = fsub float %10, %11
  %conv = fpext float %sub to double
  call void @cff_put_real(%struct.cff_writer_s* %9, double %conv) #4
  %12 = load float, float* %f, align 4, !tbaa !85
  store float %12, float* %prev, align 4, !tbaa !85
  %13 = bitcast float* %f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.cff_writer_s*, %struct.cff_writer_s** %pcw.addr, align 8, !tbaa !1
  %16 = load i32, i32* %op.addr, align 4, !tbaa !5
  call void @cff_put_op(%struct.cff_writer_s* %15, i32 %16) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast float* %prev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
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
!7 = !{!8, !2, i64 16}
!8 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !9, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !12, i64 156, !6, i64 160, !13, i64 168, !14, i64 272, !14, i64 324, !15, i64 376, !18, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !19, i64 448}
!9 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !3, i64 0}
!13 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!14 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!15 = !{!"gs_rect_s", !16, i64 0, !16, i64 16}
!16 = !{!"gs_point_s", !17, i64 0, !17, i64 8}
!17 = !{!"double", !3, i64 0}
!18 = !{!"gs_uid_s", !10, i64 0, !2, i64 8}
!19 = !{!"gs_type1_data_s", !20, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !10, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !12, i64 100, !12, i64 104, !21, i64 108, !12, i64 168, !6, i64 172, !21, i64 176, !21, i64 236, !6, i64 280, !21, i64 284, !6, i64 328, !21, i64 332, !21, i64 340, !21, i64 348, !21, i64 400, !21, i64 452, !3, i64 520, !6, i64 536}
!20 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!21 = !{!"", !6, i64 0, !3, i64 4}
!22 = !{!23, !2, i64 64}
!23 = !{!"gs_memory_s", !2, i64 0, !24, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!24 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!25 = !{!26, !2, i64 8}
!26 = !{!"cff_glyph_subset_s", !27, i64 0, !6, i64 32, !6, i64 36}
!27 = !{!"psf_outline_glyphs_s", !10, i64 0, !2, i64 8, !2, i64 16, !6, i64 24}
!28 = !{!26, !10, i64 0}
!29 = !{!8, !3, i64 128}
!30 = !{!8, !6, i64 540}
!31 = !{!8, !6, i64 536}
!32 = !{!33, !6, i64 0}
!33 = !{!"cff_writer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !10, i64 32, !10, i64 40, !34, i64 48, !34, i64 72, !35, i64 96}
!34 = !{!"cff_string_table_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!35 = !{!"gs_int_rect_s", !36, i64 0, !36, i64 8}
!36 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!37 = !{!33, !2, i64 8}
!38 = !{!33, !2, i64 16}
!39 = !{!33, !2, i64 24}
!40 = !{!33, !10, i64 32}
!41 = !{!33, !10, i64 40}
!42 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5}
!43 = !{!26, !2, i64 16}
!44 = !{!26, !6, i64 24}
!45 = !{!8, !2, i64 200}
!46 = !{!10, !10, i64 0}
!47 = !{!26, !6, i64 36}
!48 = !{!26, !6, i64 32}
!49 = !{i64 0, i64 8, !1, i64 8, i64 4, !5}
!50 = !{!51, !2, i64 0}
!51 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!52 = !{!8, !6, i64 372}
!53 = !{!51, !6, i64 8}
!54 = !{!33, !6, i64 80}
!55 = !{!33, !6, i64 88}
!56 = !{!23, !2, i64 24}
!57 = !{!34, !2, i64 0}
!58 = !{!34, !6, i64 8}
!59 = !{!34, !6, i64 12}
!60 = !{!34, !6, i64 16}
!61 = !{!34, !6, i64 20}
!62 = !{!3, !3, i64 0}
!63 = !{!64, !6, i64 16}
!64 = !{!"cff_string_item_s", !51, i64 0, !6, i64 16}
!65 = !{!64, !2, i64 0}
!66 = !{!64, !6, i64 8}
!67 = !{!68, !3, i64 128}
!68 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !9, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !12, i64 156, !6, i64 160, !13, i64 168, !14, i64 272, !14, i64 324, !15, i64 376, !18, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!69 = !{!68, !2, i64 240}
!70 = !{!71, !2, i64 40}
!71 = !{!"gs_glyph_data_s", !72, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!72 = !{!"gs_const_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!73 = !{!8, !2, i64 456}
!74 = !{!71, !6, i64 8}
!75 = !{!68, !2, i64 16}
!76 = !{!77, !2, i64 8}
!77 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!78 = !{!77, !2, i64 16}
!79 = !{!71, !2, i64 0}
!80 = !{!8, !6, i64 556}
!81 = !{!8, !6, i64 732}
!82 = !{!8, !6, i64 624}
!83 = !{!8, !6, i64 684}
!84 = !{!8, !6, i64 780}
!85 = !{!12, !12, i64 0}
!86 = !{!8, !6, i64 788}
!87 = !{!8, !10, i64 528}
!88 = !{!8, !12, i64 548}
!89 = !{!8, !12, i64 552}
!90 = !{!8, !6, i64 544}
!91 = !{!8, !6, i64 796}
!92 = !{!8, !6, i64 848}
!93 = !{!8, !6, i64 620}
!94 = !{!8, !6, i64 512}
!95 = !{!8, !6, i64 728}
!96 = !{!8, !12, i64 616}
!97 = !{!98, !6, i64 520}
!98 = !{!"gs_font_cid0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !9, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !12, i64 156, !6, i64 160, !13, i64 168, !14, i64 272, !14, i64 324, !15, i64 376, !18, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !99, i64 448}
!99 = !{!"gs_font_cid0_data_s", !100, i64 0, !10, i64 56, !2, i64 64, !6, i64 72, !6, i64 76, !2, i64 80, !2, i64 88}
!100 = !{!"gs_font_cid_data_s", !101, i64 0, !6, i64 40, !6, i64 44, !6, i64 48}
!101 = !{!"gs_cid_system_info_s", !51, i64 0, !51, i64 16, !6, i64 32}
!102 = !{!33, !6, i64 100}
!103 = !{!33, !6, i64 96}
!104 = !{!33, !6, i64 108}
!105 = !{!33, !6, i64 104}
!106 = !{!98, !6, i64 372}
!107 = !{!98, !6, i64 320}
!108 = !{!98, !2, i64 512}
!109 = !{!98, !2, i64 528}
!110 = !{!101, !2, i64 0}
!111 = !{!101, !6, i64 8}
!112 = !{!101, !2, i64 16}
!113 = !{!101, !6, i64 24}
!114 = !{!101, !6, i64 32}
!115 = !{!14, !6, i64 48}
!116 = !{!117, !6, i64 40}
!117 = !{!"gs_font_info_s", !6, i64 0, !6, i64 4, !6, i64 8, !35, i64 12, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !12, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !51, i64 88, !51, i64 104, !51, i64 120, !51, i64 136, !6, i64 152}
!118 = !{!117, !6, i64 0}
!119 = !{!117, !6, i64 44}
!120 = !{!117, !6, i64 36}
!121 = !{!117, !12, i64 48}
!122 = !{!117, !6, i64 72}
!123 = !{!117, !6, i64 76}
!124 = !{!68, !2, i64 184}
!125 = !{!98, !6, i64 488}
!126 = !{!117, !2, i64 104}
!127 = !{!117, !6, i64 112}
!128 = !{!117, !2, i64 136}
!129 = !{!117, !6, i64 144}
!130 = !{!117, !2, i64 120}
!131 = !{!117, !6, i64 128}
!132 = !{!18, !10, i64 0}
!133 = !{!68, !10, i64 408}
!134 = !{!18, !2, i64 8}
!135 = !{!117, !2, i64 88}
!136 = !{!117, !6, i64 96}
!137 = !{!68, !6, i64 152}
!138 = !{!68, !12, i64 80}
!139 = !{!11, !12, i64 0}
!140 = !{!68, !12, i64 84}
!141 = !{!68, !12, i64 88}
!142 = !{!68, !12, i64 92}
!143 = !{!11, !12, i64 12}
!144 = !{!68, !12, i64 96}
!145 = !{!68, !12, i64 100}
!146 = !{!68, !12, i64 156}
!147 = !{!17, !17, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"short", !3, i64 0}
