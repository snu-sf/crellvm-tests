; ModuleID = './gsfcid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_font_cid0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_font_cid0_data_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gx_path_s = type opaque
%struct.gs_text_enum_s = type opaque
%struct.gs_show_enum_s = type opaque
%struct.gs_state_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_font_cid0_data_s = type { %struct.gs_font_cid_data_s, i64, %struct.gs_font_type1_s**, i32, i32, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i8* }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_font_type1_s = type opaque
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_font_cid1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_font_cid1_data_s }
%struct.gs_font_cid1_data_s = type { %struct.gs_cid_system_info_s }
%struct.gs_font_cid2_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s, %struct.gs_font_cid2_data_s, %struct.gs_subst_CID_on_WMode_s* }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.gs_font_cid2_data_s = type { %struct.gs_font_cid_data_s, i32, i32 (%struct.gs_font_cid2_s*, i64)*, %struct.o_ }
%struct.o_ = type { i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)* }
%struct.gs_subst_CID_on_WMode_s = type { %struct.rc_header_s, [2 x i32*], [2 x i32] }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }

@.str = private unnamed_addr constant [21 x i8] c"gs_cid_system_info_t\00", align 1
@cid_si_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @cid_si_enum_ptrs, i32 0, i32 0) }, align 8
@st_cid_system_info = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cid_si_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"gs_cid_system_info_t[]\00", align 1
@st_cid_system_info_element = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cid_si_elt_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cid_si_elt_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"gs_font_cid_data\00", align 1
@st_gs_font_cid_data = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_cid_data_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_cid_data_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gs_font_finalize, i8* null }, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"gs_font_cid0\00", align 1
@st_gs_font_cid0 = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 544, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_cid0_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_cid0_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gs_font_finalize, i8* null }, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"gs_font_cid1\00", align 1
@st_gs_font_cid1 = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 488, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_cid1_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_cid1_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gs_font_finalize, i8* null }, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"gs_font_cid2\00", align 1
@st_gs_font_cid2 = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 752, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_cid2_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_cid2_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gs_font_finalize, i8* null }, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"gs_font_type1 *[]\00", align 1
@st_gs_font_type1_ptr_element = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font1_ptr_element_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font1_ptr_element_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"gs_subst_CID_on_WMode\00", align 1
@st_subst_CID_on_WMode = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @subst_CID_on_WMode_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @subst_CID_on_WMode_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @subst_CID_on_WMode_finalize, i8* null }, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"gs_font_cid0_enumerate_glyphs\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Unexpected font type: %d\0A\00", align 1
@cid_si_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 2, i16 0 }, %struct.gc_ptr_element_s { i16 2, i16 16 }], align 2
@st_gs_font_base = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_gs_font_type42 = external constant %struct.gs_memory_struct_type_s, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"gs_font_type1 *\00", align 1
@st_gs_font_type1_ptr = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font1_ptr_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font1_ptr_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"subst_CID_on_WMode_finalize\00", align 1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @cid_si_elt_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 40
  store i32 %div, i32* %count, align 4, !tbaa !5
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cid_system_info to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !7
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %index.addr, align 4, !tbaa !5
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %rem = urem i32 %6, %7
  %conv = zext i32 %rem to i64
  %mul = mul i64 %conv, 40
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %div1 = udiv i32 %8, %9
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 40, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cid_system_info to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %11) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #4
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @cid_si_elt_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 40
  store i32 %div, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cid_system_info to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !9
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 40, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cid_system_info to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %5) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 40
  store i8* %add.ptr, i8** %vptr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @font_cid_data_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cid_system_info to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !7
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 0
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %0(%struct.gs_memory_s* %1, i8* %2, i32 %3, i32 %sub, %struct.enum_ptr_s* %5, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cid_system_info to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %6) #5
  ret %struct.gs_ptr_procs_s* %call
}

; Function Attrs: nounwind uwtable
define internal void @font_cid_data_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cid_system_info to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !9
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !5
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %0(i8* %1, i32 %2, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cid_system_info to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %3) #5
  ret void
}

declare void @gs_font_finalize(%struct.gs_memory_s*, i8*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @font_cid0_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pfcid0 = alloca %struct.gs_font_cid0_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid0_s** %pfcid0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %2, %struct.gs_font_cid0_s** %pfcid0, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 2
  store i32 %sub, i32* %index.addr, align 4, !tbaa !5
  %5 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %6 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_font_cid_data to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !7
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid0, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %8, i32 0, i32 29
  %common = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 0
  %9 = bitcast %struct.gs_font_cid_data_s* %common to i8*
  %10 = load i32, i32* %index.addr, align 4, !tbaa !5
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %6(%struct.gs_memory_s* %7, i8* %9, i32 56, i32 %10, %struct.enum_ptr_s* %11, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_font_cid_data to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %12) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %13 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_font_base, i32 0, i32 4), align 8, !tbaa !7
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %16 = load i32, i32* %size.addr, align 4, !tbaa !5
  %17 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub1 = sub nsw i32 %17, 2
  %18 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call2 = call %struct.gs_ptr_procs_s* %13(%struct.gs_memory_s* %14, i8* %15, i32 %16, i32 %sub1, %struct.enum_ptr_s* %18, %struct.gs_memory_struct_type_s* @st_gs_font_base, %struct.gc_state_s* %19) #5
  store %struct.gs_ptr_procs_s* %call2, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %20 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to %struct.gs_font_cid0_s*
  %cidata3 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %21, i32 0, i32 29
  %FDArray = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata3, i32 0, i32 2
  %22 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !10
  %23 = bitcast %struct.gs_font_type1_s** %22 to i8*
  %24 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %24, i32 0, i32 0
  store i8* %23, i8** %ptr, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.4:                                          ; preds = %entry
  %25 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to %struct.gs_font_cid0_s*
  %cidata5 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %26, i32 0, i32 29
  %proc_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata5, i32 0, i32 6
  %27 = load i8*, i8** %proc_data, align 8, !tbaa !28
  %28 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %28, i32 0, i32 0
  store i8* %27, i8** %ptr6, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.4, %sw.bb, %if.end, %if.then
  %29 = bitcast %struct.gs_font_cid0_s** %pfcid0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #4
  %30 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %30
}

; Function Attrs: nounwind uwtable
define internal void @font_cid0_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pfcid0 = alloca %struct.gs_font_cid0_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid0_s** %pfcid0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %2, %struct.gs_font_cid0_s** %pfcid0, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_font_base, i32 0, i32 5), align 8, !tbaa !9
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_gs_font_base, %struct.gc_state_s* %6) #5
  %7 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_font_cid_data to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !9
  %8 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid0, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %8, i32 0, i32 29
  %common = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 0
  %9 = bitcast %struct.gs_font_cid_data_s* %common to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %7(i8* %9, i32 64, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_font_cid_data to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %10) #5
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gc_state_s* %11 to %struct.gc_procs_common_s**
  %13 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %12, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %13, i32 0, i32 0
  %14 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !29
  %15 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid0, align 8, !tbaa !1
  %cidata1 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %15, i32 0, i32 29
  %FDArray = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata1, i32 0, i32 2
  %16 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !10
  %17 = bitcast %struct.gs_font_type1_s** %16 to i8*
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %14(i8* %17, %struct.gc_state_s* %18) #5
  %19 = bitcast i8* %call to %struct.gs_font_type1_s**
  %20 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid0, align 8, !tbaa !1
  %cidata2 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %20, i32 0, i32 29
  %FDArray3 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata2, i32 0, i32 2
  store %struct.gs_font_type1_s** %19, %struct.gs_font_type1_s*** %FDArray3, align 8, !tbaa !10
  %21 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gc_state_s* %21 to %struct.gc_procs_common_s**
  %23 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %22, align 8, !tbaa !1
  %reloc_struct_ptr4 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %23, i32 0, i32 0
  %24 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr4, align 8, !tbaa !29
  %25 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid0, align 8, !tbaa !1
  %cidata5 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %25, i32 0, i32 29
  %proc_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata5, i32 0, i32 6
  %26 = load i8*, i8** %proc_data, align 8, !tbaa !28
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %24(i8* %26, %struct.gc_state_s* %27) #5
  %28 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid0, align 8, !tbaa !1
  %cidata7 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %28, i32 0, i32 29
  %proc_data8 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata7, i32 0, i32 6
  store i8* %call6, i8** %proc_data8, align 8, !tbaa !28
  %29 = bitcast %struct.gs_font_cid0_s** %pfcid0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @font_cid1_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pfcid1 = alloca %struct.gs_font_cid1_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid1_s** %pfcid1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_cid1_s*
  store %struct.gs_font_cid1_s* %2, %struct.gs_font_cid1_s** %pfcid1, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %5 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cid_system_info to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !7
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.gs_font_cid1_s*, %struct.gs_font_cid1_s** %pfcid1, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid1_s, %struct.gs_font_cid1_s* %7, i32 0, i32 29
  %CIDSystemInfo = getelementptr inbounds %struct.gs_font_cid1_data_s, %struct.gs_font_cid1_data_s* %cidata, i32 0, i32 0
  %8 = bitcast %struct.gs_cid_system_info_s* %CIDSystemInfo to i8*
  %9 = load i32, i32* %index.addr, align 4, !tbaa !5
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %5(%struct.gs_memory_s* %6, i8* %8, i32 64, i32 %9, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cid_system_info to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %11) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %12 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_font_base, i32 0, i32 4), align 8, !tbaa !7
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %15 = load i32, i32* %size.addr, align 4, !tbaa !5
  %16 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %16, 2
  %17 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_ptr_procs_s* %12(%struct.gs_memory_s* %13, i8* %14, i32 %15, i32 %sub, %struct.enum_ptr_s* %17, %struct.gs_memory_struct_type_s* @st_gs_font_base, %struct.gc_state_s* %18) #5
  store %struct.gs_ptr_procs_s* %call1, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast %struct.gs_font_cid1_s** %pfcid1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #4
  %20 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %20
}

; Function Attrs: nounwind uwtable
define internal void @font_cid1_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pfcid1 = alloca %struct.gs_font_cid1_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid1_s** %pfcid1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_cid1_s*
  store %struct.gs_font_cid1_s* %2, %struct.gs_font_cid1_s** %pfcid1, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_font_base, i32 0, i32 5), align 8, !tbaa !9
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_gs_font_base, %struct.gc_state_s* %6) #5
  %7 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cid_system_info to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !9
  %8 = load %struct.gs_font_cid1_s*, %struct.gs_font_cid1_s** %pfcid1, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid1_s, %struct.gs_font_cid1_s* %8, i32 0, i32 29
  %CIDSystemInfo = getelementptr inbounds %struct.gs_font_cid1_data_s, %struct.gs_font_cid1_data_s* %cidata, i32 0, i32 0
  %9 = bitcast %struct.gs_cid_system_info_s* %CIDSystemInfo to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %7(i8* %9, i32 64, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cid_system_info to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %10) #5
  %11 = bitcast %struct.gs_font_cid1_s** %pfcid1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @font_cid2_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pfcid2 = alloca %struct.gs_font_cid2_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid2_s** %pfcid2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %2, %struct.gs_font_cid2_s** %pfcid2, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %if.then
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to %struct.gs_font_cid2_s*
  %subst_CID_on_WMode = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %6, i32 0, i32 31
  %7 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst_CID_on_WMode, align 8, !tbaa !31
  %8 = bitcast %struct.gs_subst_CID_on_WMode_s* %7 to i8*
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %9, i32 0, i32 0
  store i8* %8, i8** %ptr, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %10 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %10, 3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %11 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_font_cid_data to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !7
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid2, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %13, i32 0, i32 30
  %common = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 0
  %14 = bitcast %struct.gs_font_cid_data_s* %common to i8*
  %15 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %15, 1
  %16 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %17 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %11(%struct.gs_memory_s* %12, i8* %14, i32 56, i32 %sub, %struct.enum_ptr_s* %16, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_font_cid_data to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %17) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %18 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_font_type42, i32 0, i32 4), align 8, !tbaa !7
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %21 = load i32, i32* %size.addr, align 4, !tbaa !5
  %22 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub4 = sub nsw i32 %22, 3
  %23 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %24 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call5 = call %struct.gs_ptr_procs_s* %18(%struct.gs_memory_s* %19, i8* %20, i32 %21, i32 %sub4, %struct.enum_ptr_s* %23, %struct.gs_memory_struct_type_s* @st_gs_font_type42, %struct.gc_state_s* %24) #5
  store %struct.gs_ptr_procs_s* %call5, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %sw.bb
  %25 = bitcast %struct.gs_font_cid2_s** %pfcid2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #4
  %26 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %26
}

; Function Attrs: nounwind uwtable
define internal void @font_cid2_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pfcid2 = alloca %struct.gs_font_cid2_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid2_s** %pfcid2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %2, %struct.gs_font_cid2_s** %pfcid2, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_font_type42, i32 0, i32 5), align 8, !tbaa !9
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_gs_font_type42, %struct.gc_state_s* %6) #5
  %7 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_font_cid_data to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !9
  %8 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid2, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %8, i32 0, i32 30
  %common = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 0
  %9 = bitcast %struct.gs_font_cid_data_s* %common to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %7(i8* %9, i32 64, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_font_cid_data to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %10) #5
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gc_state_s* %11 to %struct.gc_procs_common_s**
  %13 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %12, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %13, i32 0, i32 0
  %14 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !29
  %15 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid2, align 8, !tbaa !1
  %subst_CID_on_WMode = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %15, i32 0, i32 31
  %16 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst_CID_on_WMode, align 8, !tbaa !31
  %17 = bitcast %struct.gs_subst_CID_on_WMode_s* %16 to i8*
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %14(i8* %17, %struct.gc_state_s* %18) #5
  %19 = bitcast i8* %call to %struct.gs_subst_CID_on_WMode_s*
  %20 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid2, align 8, !tbaa !1
  %subst_CID_on_WMode1 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %20, i32 0, i32 31
  store %struct.gs_subst_CID_on_WMode_s* %19, %struct.gs_subst_CID_on_WMode_s** %subst_CID_on_WMode1, align 8, !tbaa !31
  %21 = bitcast %struct.gs_font_cid2_s** %pfcid2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @font1_ptr_element_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 8
  store i32 %div, i32* %count, align 4, !tbaa !5
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_font_type1_ptr to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !7
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %index.addr, align 4, !tbaa !5
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %rem = urem i32 %6, %7
  %conv = zext i32 %rem to i64
  %mul = mul i64 %conv, 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %div1 = udiv i32 %8, %9
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 8, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_font_type1_ptr to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %11) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #4
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @font1_ptr_element_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 8
  store i32 %div, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_font_type1_ptr to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !9
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 8, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_font_type1_ptr to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %5) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 8
  store i8* %add.ptr, i8** %vptr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @subst_CID_on_WMode_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %subst = alloca %struct.gs_subst_CID_on_WMode_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_subst_CID_on_WMode_s** %subst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_subst_CID_on_WMode_s*
  store %struct.gs_subst_CID_on_WMode_s* %2, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %4, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !36
  %6 = bitcast %struct.gs_memory_s* %5 to i8*
  %7 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %7, i32 0, i32 0
  store i8* %6, i8** %ptr, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %8 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i32*], [2 x i32*]* %data, i32 0, i64 0
  %9 = load i32*, i32** %arrayidx, align 8, !tbaa !1
  %10 = bitcast i32* %9 to i8*
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %11, i32 0, i32 0
  store i8* %10, i8** %ptr2, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.3:                                          ; preds = %entry
  %12 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %12, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [2 x i32*], [2 x i32*]* %data4, i32 0, i64 1
  %13 = load i32*, i32** %arrayidx5, align 8, !tbaa !1
  %14 = bitcast i32* %13 to i8*
  %15 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %15, i32 0, i32 0
  store i8* %14, i8** %ptr6, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.3, %sw.bb.1, %sw.bb, %sw.default
  %16 = bitcast %struct.gs_subst_CID_on_WMode_s** %subst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #4
  %17 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %17
}

; Function Attrs: nounwind uwtable
define internal void @subst_CID_on_WMode_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %subst = alloca %struct.gs_subst_CID_on_WMode_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_subst_CID_on_WMode_s** %subst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_subst_CID_on_WMode_s*
  store %struct.gs_subst_CID_on_WMode_s* %2, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_common_s**
  %5 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !29
  %7 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i32*], [2 x i32*]* %data, i32 0, i64 0
  %8 = load i32*, i32** %arrayidx, align 8, !tbaa !1
  %9 = bitcast i32* %8 to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %9, %struct.gc_state_s* %10) #5
  %11 = bitcast i8* %call to i32*
  %12 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %12, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x i32*], [2 x i32*]* %data1, i32 0, i64 0
  store i32* %11, i32** %arrayidx2, align 8, !tbaa !1
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gc_state_s* %13 to %struct.gc_procs_common_s**
  %15 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %14, align 8, !tbaa !1
  %reloc_struct_ptr3 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %15, i32 0, i32 0
  %16 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr3, align 8, !tbaa !29
  %17 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %17, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [2 x i32*], [2 x i32*]* %data4, i32 0, i64 1
  %18 = load i32*, i32** %arrayidx5, align 8, !tbaa !1
  %19 = bitcast i32* %18 to i8*
  %20 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %16(i8* %19, %struct.gc_state_s* %20) #5
  %21 = bitcast i8* %call6 to i32*
  %22 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %data7 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %22, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [2 x i32*], [2 x i32*]* %data7, i32 0, i64 1
  store i32* %21, i32** %arrayidx8, align 8, !tbaa !1
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gc_state_s* %23 to %struct.gc_procs_common_s**
  %25 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %24, align 8, !tbaa !1
  %reloc_struct_ptr9 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %25, i32 0, i32 0
  %26 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr9, align 8, !tbaa !29
  %27 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %27, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !36
  %29 = bitcast %struct.gs_memory_s* %28 to i8*
  %30 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call10 = call i8* %26(i8* %29, %struct.gc_state_s* %30) #5
  %31 = bitcast i8* %call10 to %struct.gs_memory_s*
  %32 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc11 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %32, i32 0, i32 0
  %memory12 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc11, i32 0, i32 1
  store %struct.gs_memory_s* %31, %struct.gs_memory_s** %memory12, align 8, !tbaa !36
  %33 = bitcast %struct.gs_subst_CID_on_WMode_s** %subst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @subst_CID_on_WMode_finalize(%struct.gs_memory_s* %cmem, i8* %data) #1 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %subst = alloca %struct.gs_subst_CID_on_WMode_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_subst_CID_on_WMode_s** %subst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_subst_CID_on_WMode_s*
  store %struct.gs_subst_CID_on_WMode_s* %2, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %4 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %4, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !36
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %6 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !39
  %7 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc1 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %7, i32 0, i32 0
  %memory2 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc1, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !36
  %9 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %9, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2 x i32*], [2 x i32*]* %data3, i32 0, i32 0
  %add.ptr = getelementptr inbounds i32*, i32** %arraydecay, i64 0
  %10 = bitcast i32** %add.ptr to i8*
  call void %6(%struct.gs_memory_s* %8, i8* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0)) #5
  %11 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %11, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i32*], [2 x i32*]* %data4, i32 0, i64 0
  store i32* null, i32** %arrayidx, align 8, !tbaa !1
  %12 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc5 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %12, i32 0, i32 0
  %memory6 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !36
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %free_object8 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object8, align 8, !tbaa !39
  %15 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc9 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %15, i32 0, i32 0
  %memory10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !36
  %17 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %data11 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %17, i32 0, i32 1
  %arraydecay12 = getelementptr inbounds [2 x i32*], [2 x i32*]* %data11, i32 0, i32 0
  %add.ptr13 = getelementptr inbounds i32*, i32** %arraydecay12, i64 1
  %18 = bitcast i32** %add.ptr13 to i8*
  call void %14(%struct.gs_memory_s* %16, i8* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0)) #5
  %19 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %data14 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %19, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [2 x i32*], [2 x i32*]* %data14, i32 0, i64 1
  store i32* null, i32** %arrayidx15, align 8, !tbaa !1
  %20 = bitcast %struct.gs_subst_CID_on_WMode_s** %subst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @cid_system_info_set_null(%struct.gs_cid_system_info_s* %pcidsi) #1 {
entry:
  %pcidsi.addr = alloca %struct.gs_cid_system_info_s*, align 8
  store %struct.gs_cid_system_info_s* %pcidsi, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_cid_system_info_s* %0 to i8*
  %call = call i8* @memset(i8* %1, i32 0, i64 40) #6
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define i32 @cid_system_info_is_null(%struct.gs_cid_system_info_s* %pcidsi) #1 {
entry:
  %pcidsi.addr = alloca %struct.gs_cid_system_info_s*, align 8
  store %struct.gs_cid_system_info_s* %pcidsi, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Registry = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %0, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry, i32 0, i32 1
  %1 = load i32, i32* %size, align 4, !tbaa !42
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Ordering = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %2, i32 0, i32 1
  %size1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering, i32 0, i32 1
  %3 = load i32, i32* %size1, align 4, !tbaa !43
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Supplement = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %4, i32 0, i32 2
  %5 = load i32, i32* %Supplement, align 4, !tbaa !44
  %cmp3 = icmp eq i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp3, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define %struct.gs_cid_system_info_s* @gs_font_cid_system_info(%struct.gs_font_s* %pfont) #1 {
entry:
  %retval = alloca %struct.gs_cid_system_info_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 11
  %1 = load i32, i32* %FontType, align 4, !tbaa !45
  switch i32 %1, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb.1
    i32 11, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s* %2 to %struct.gs_font_cid0_s*
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %3, i32 0, i32 29
  %common = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 0
  %CIDSystemInfo = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 0
  store %struct.gs_cid_system_info_s* %CIDSystemInfo, %struct.gs_cid_system_info_s** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_s* %4 to %struct.gs_font_cid1_s*
  %cidata2 = getelementptr inbounds %struct.gs_font_cid1_s, %struct.gs_font_cid1_s* %5, i32 0, i32 29
  %CIDSystemInfo3 = getelementptr inbounds %struct.gs_font_cid1_data_s, %struct.gs_font_cid1_data_s* %cidata2, i32 0, i32 0
  store %struct.gs_cid_system_info_s* %CIDSystemInfo3, %struct.gs_cid_system_info_s** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_s* %6 to %struct.gs_font_cid2_s*
  %cidata5 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %7, i32 0, i32 30
  %common6 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata5, i32 0, i32 0
  %CIDSystemInfo7 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common6, i32 0, i32 0
  store %struct.gs_cid_system_info_s* %CIDSystemInfo7, %struct.gs_cid_system_info_s** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.gs_cid_system_info_s* null, %struct.gs_cid_system_info_s** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.4, %sw.bb.1, %sw.bb
  %8 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %retval
  ret %struct.gs_cid_system_info_s* %8
}

; Function Attrs: nounwind uwtable
define i32 @gs_is_CIDSystemInfo_compatible(%struct.gs_cid_system_info_s* %info0, %struct.gs_cid_system_info_s* %info1) #1 {
entry:
  %retval = alloca i32, align 4
  %info0.addr = alloca %struct.gs_cid_system_info_s*, align 8
  %info1.addr = alloca %struct.gs_cid_system_info_s*, align 8
  store %struct.gs_cid_system_info_s* %info0, %struct.gs_cid_system_info_s** %info0.addr, align 8, !tbaa !1
  store %struct.gs_cid_system_info_s* %info1, %struct.gs_cid_system_info_s** %info1.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %info0.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_cid_system_info_s* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %info1.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_cid_system_info_s* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %info0.addr, align 8, !tbaa !1
  %Registry = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %2, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry, i32 0, i32 1
  %3 = load i32, i32* %size, align 4, !tbaa !42
  %4 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %info1.addr, align 8, !tbaa !1
  %Registry2 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %4, i32 0, i32 0
  %size3 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry2, i32 0, i32 1
  %5 = load i32, i32* %size3, align 4, !tbaa !42
  %cmp4 = icmp ne i32 %3, %5
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %6 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %info0.addr, align 8, !tbaa !1
  %Ordering = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %6, i32 0, i32 1
  %size7 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering, i32 0, i32 1
  %7 = load i32, i32* %size7, align 4, !tbaa !43
  %8 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %info1.addr, align 8, !tbaa !1
  %Ordering8 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %8, i32 0, i32 1
  %size9 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering8, i32 0, i32 1
  %9 = load i32, i32* %size9, align 4, !tbaa !43
  %cmp10 = icmp ne i32 %7, %9
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %10 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %info0.addr, align 8, !tbaa !1
  %Registry13 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %10, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry13, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !47
  %12 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %info1.addr, align 8, !tbaa !1
  %Registry14 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %12, i32 0, i32 0
  %data15 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry14, i32 0, i32 0
  %13 = load i8*, i8** %data15, align 8, !tbaa !47
  %14 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %info0.addr, align 8, !tbaa !1
  %Registry16 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %14, i32 0, i32 0
  %size17 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry16, i32 0, i32 1
  %15 = load i32, i32* %size17, align 4, !tbaa !42
  %conv = zext i32 %15 to i64
  %call = call i32 @memcmp(i8* %11, i8* %13, i64 %conv) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.12
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.12
  %16 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %info0.addr, align 8, !tbaa !1
  %Ordering20 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %16, i32 0, i32 1
  %data21 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering20, i32 0, i32 0
  %17 = load i8*, i8** %data21, align 8, !tbaa !48
  %18 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %info1.addr, align 8, !tbaa !1
  %Ordering22 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %18, i32 0, i32 1
  %data23 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering22, i32 0, i32 0
  %19 = load i8*, i8** %data23, align 8, !tbaa !48
  %20 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %info0.addr, align 8, !tbaa !1
  %Ordering24 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %20, i32 0, i32 1
  %size25 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering24, i32 0, i32 1
  %21 = load i32, i32* %size25, align 4, !tbaa !43
  %conv26 = zext i32 %21 to i64
  %call27 = call i32 @memcmp(i8* %17, i8* %19, i64 %conv26) #7
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.19
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.19
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.29, %if.then.18, %if.then.11, %if.then.5, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @gs_font_cid0_enumerate_glyph(%struct.gs_font_s* %font, i32* %pindex, i32 %ignore_glyph_space, i64* %pglyph) #1 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %ignore_glyph_space.addr = alloca i32, align 4
  %pglyph.addr = alloca i64*, align 8
  %pfont = alloca %struct.gs_font_cid0_s*, align 8
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %fidx = alloca i32, align 4
  %glyph = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %ignore_glyph_space, i32* %ignore_glyph_space.addr, align 4, !tbaa !49
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid0_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %2, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  %3 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %4 = load i32, i32* %3, align 4, !tbaa !5
  %5 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %5, i32 0, i32 29
  %common = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 0
  %CIDCount = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 1
  %6 = load i32, i32* %CIDCount, align 4, !tbaa !50
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %7) #4
  %8 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #4
  %9 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #4
  %10 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %10, align 4, !tbaa !5
  %conv = sext i32 %11 to i64
  %add = add i64 2147483648, %conv
  store i64 %add, i64* %glyph, align 8, !tbaa !51
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #4
  %13 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %13, i32 0, i32 2
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !52
  %memory1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %14, %struct.gs_memory_s** %memory1, align 8, !tbaa !53
  %15 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata2 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %15, i32 0, i32 29
  %glyph_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata2, i32 0, i32 5
  %16 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data, align 8, !tbaa !56
  %17 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %18 = bitcast %struct.gs_font_cid0_s* %17 to %struct.gs_font_base_s*
  %19 = load i64, i64* %glyph, align 8, !tbaa !51
  %call = call i32 %16(%struct.gs_font_base_s* %18, i64 %19, %struct.gs_glyph_data_s* %gdata, i32* %fidx) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %20, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %21 = load i32, i32* %size, align 4, !tbaa !57
  %cmp5 = icmp eq i32 %21, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %22 = load i64, i64* %glyph, align 8, !tbaa !51
  %23 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %22, i64* %23, align 8, !tbaa !51
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #4
  %25 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #4
  %26 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #4
  %27 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %27) #4
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.10 [
    i32 2, label %while.cond
  ]

while.end:                                        ; preds = %while.cond
  %28 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 0, i32* %28, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10

cleanup.10:                                       ; preds = %while.end, %cleanup
  %29 = bitcast %struct.gs_font_cid0_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #4
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

declare void @gs_glyph_data_free(%struct.gs_glyph_data_s*, i8*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define %struct.gs_font_s* @gs_cid0_indexed_font(%struct.gs_font_s* %font, i32 %fidx) #1 {
entry:
  %retval = alloca %struct.gs_font_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %fidx.addr = alloca i32, align 4
  %pfont = alloca %struct.gs_font_cid0_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %fidx, i32* %fidx.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_font_cid0_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %2, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 11
  %4 = load i32, i32* %FontType, align 4, !tbaa !45
  %cmp = icmp ne i32 %4, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i32 0, i32 2
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !58
  %call = call i8* @gs_program_name() #5
  %call1 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %6, i8* %call, i64 %call1) #5
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 2
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !58
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 11
  %10 = load i32, i32* %FontType3, align 4, !tbaa !45
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i32 %10) #5
  store %struct.gs_font_s* null, %struct.gs_font_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %fidx.addr, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %12, i32 0, i32 29
  %FDArray = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 2
  %13 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %13, i64 %idxprom
  %14 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx, align 8, !tbaa !1
  %15 = bitcast %struct.gs_font_type1_s* %14 to %struct.gs_font_s*
  store %struct.gs_font_s* %15, %struct.gs_font_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct.gs_font_cid0_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #4
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %retval
  ret %struct.gs_font_s* %17
}

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define i32 @gs_cid0_has_type2(%struct.gs_font_s* %font) #1 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pfont = alloca %struct.gs_font_cid0_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid0_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %2, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #4
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %4, i32 0, i32 11
  %5 = load i32, i32* %FontType, align 4, !tbaa !45
  %cmp = icmp ne i32 %5, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !58
  %call = call i8* @gs_program_name() #5
  %call1 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %7, i8* %call, i64 %call1) #5
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 2
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !58
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 11
  %11 = load i32, i32* %FontType3, align 4, !tbaa !45
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i32 %11) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %13 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %13, i32 0, i32 29
  %FDArray_size = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 3
  %14 = load i32, i32* %FDArray_size, align 4, !tbaa !59
  %cmp5 = icmp ult i32 %12, %14
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata6 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %16, i32 0, i32 29
  %FDArray = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata6, i32 0, i32 2
  %17 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %17, i64 %idxprom
  %18 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx, align 8, !tbaa !1
  %19 = bitcast %struct.gs_font_type1_s* %18 to %struct.gs_font_s*
  %FontType7 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %19, i32 0, i32 11
  %20 = load i32, i32* %FontType7, align 4, !tbaa !45
  %cmp8 = icmp eq i32 %20, 2
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.9, %if.then
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #4
  %23 = bitcast %struct.gs_font_cid0_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #4
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @font1_ptr_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_type1_s**
  %3 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %2, align 8, !tbaa !1
  %4 = bitcast %struct.gs_font_type1_s* %3 to i8*
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %5, i32 0, i32 0
  store i8* %4, i8** %ptr, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %sw.bb, %sw.default
  %6 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %6
}

; Function Attrs: nounwind uwtable
define internal void @font1_ptr_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gc_state_s* %0 to %struct.gc_procs_common_s**
  %2 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %1, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %2, i32 0, i32 0
  %3 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !29
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.gs_font_type1_s**
  %6 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %5, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_type1_s* %6 to i8*
  %8 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %3(i8* %7, %struct.gc_state_s* %8) #5
  %9 = bitcast i8* %call to %struct.gs_font_type1_s*
  %10 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to %struct.gs_font_type1_s**
  store %struct.gs_font_type1_s* %9, %struct.gs_font_type1_s** %11, align 8, !tbaa !1
  ret void
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 32}
!8 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!9 = !{!8, !2, i64 40}
!10 = !{!11, !2, i64 512}
!11 = !{!"gs_font_cid0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !12, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !14, i64 80, !14, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !15, i64 156, !6, i64 160, !16, i64 168, !17, i64 272, !17, i64 324, !18, i64 376, !21, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !22, i64 448}
!12 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!13 = !{!"long", !3, i64 0}
!14 = !{!"gs_matrix_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!15 = !{!"float", !3, i64 0}
!16 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!17 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!18 = !{!"gs_rect_s", !19, i64 0, !19, i64 16}
!19 = !{!"gs_point_s", !20, i64 0, !20, i64 8}
!20 = !{!"double", !3, i64 0}
!21 = !{!"gs_uid_s", !13, i64 0, !2, i64 8}
!22 = !{!"gs_font_cid0_data_s", !23, i64 0, !13, i64 56, !2, i64 64, !6, i64 72, !6, i64 76, !2, i64 80, !2, i64 88}
!23 = !{!"gs_font_cid_data_s", !24, i64 0, !6, i64 40, !6, i64 44, !6, i64 48}
!24 = !{!"gs_cid_system_info_s", !25, i64 0, !25, i64 16, !6, i64 32}
!25 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!26 = !{!27, !2, i64 0}
!27 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!28 = !{!11, !2, i64 536}
!29 = !{!30, !2, i64 0}
!30 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!31 = !{!32, !2, i64 744}
!32 = !{!"gs_font_cid2_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !12, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !14, i64 80, !14, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !15, i64 156, !6, i64 160, !16, i64 168, !17, i64 272, !17, i64 324, !18, i64 376, !21, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !33, i64 448, !34, i64 656, !2, i64 744}
!33 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !13, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !3, i64 72, !13, i64 120, !13, i64 128, !13, i64 136, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !2, i64 168, !2, i64 176, !6, i64 184, !6, i64 188, !2, i64 192, !13, i64 200}
!34 = !{!"gs_font_cid2_data_s", !23, i64 0, !6, i64 56, !2, i64 64, !35, i64 72}
!35 = !{!"o_", !2, i64 0, !2, i64 8}
!36 = !{!37, !2, i64 8}
!37 = !{!"gs_subst_CID_on_WMode_s", !38, i64 0, !3, i64 24, !3, i64 40}
!38 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!39 = !{!40, !2, i64 24}
!40 = !{!"gs_memory_s", !2, i64 0, !41, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!41 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!42 = !{!24, !6, i64 8}
!43 = !{!24, !6, i64 24}
!44 = !{!24, !6, i64 32}
!45 = !{!46, !3, i64 128}
!46 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !12, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !14, i64 80, !14, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !15, i64 156, !6, i64 160, !16, i64 168, !17, i64 272, !17, i64 324}
!47 = !{!24, !2, i64 0}
!48 = !{!24, !2, i64 16}
!49 = !{!3, !3, i64 0}
!50 = !{!11, !6, i64 488}
!51 = !{!13, !13, i64 0}
!52 = !{!11, !2, i64 16}
!53 = !{!54, !2, i64 40}
!54 = !{!"gs_glyph_data_s", !55, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!55 = !{!"gs_const_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!56 = !{!11, !2, i64 528}
!57 = !{!54, !6, i64 8}
!58 = !{!46, !2, i64 16}
!59 = !{!11, !6, i64 520}
