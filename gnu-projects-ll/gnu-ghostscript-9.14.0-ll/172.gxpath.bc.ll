; ModuleID = './gxpath.bc'
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
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gs_imager_state_s = type opaque
%struct.line_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.dash_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.curve_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@path_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @path_enum_ptrs, i32 0, i32 0) }, align 8
@st_path = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @path_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"./base/gxpath.c\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Attempt to share (local) segments of path 0x%lx!\0A\00", align 1
@default_path_procs = internal global %struct.gx_path_procs_s { i32 (%struct.gx_path_s*, i32, i32)* @gz_path_add_point, i32 (%struct.gx_path_s*, i32, i32, i32)* @gz_path_add_line_notes, i32 (%struct.gx_path_s*, i32, i32, i32)* @gz_path_add_gap_notes, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)* @gz_path_add_curve_notes, i32 (%struct.gx_path_s*, i32)* @gz_path_close_subpath_notes, i8 (%struct.gx_path_s*, i8)* @gz_path_state_flags }, align 8
@path_bbox_procs = internal global %struct.gx_path_procs_s { i32 (%struct.gx_path_s*, i32, i32)* @gz_path_bbox_add_point, i32 (%struct.gx_path_s*, i32, i32, i32)* @gz_path_bbox_add_line_notes, i32 (%struct.gx_path_s*, i32, i32, i32)* @gz_path_bbox_add_gap_notes, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)* @gz_path_bbox_add_curve_notes, i32 (%struct.gx_path_s*, i32)* @gz_path_bbox_close_subpath_notes, i8 (%struct.gx_path_s*, i8)* @gz_path_state_flags }, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"gx_path_assign\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gx_path_assign_free\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"gx_path_new\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"gx_path_add_lines\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"gx_dash_add_dash\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"gx_path_pop_close_subpath\00", align 1
@path_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 56 }, %struct.gc_ptr_element_s { i16 0, i16 88 }, %struct.gc_ptr_element_s { i16 0, i16 64 }], align 2
@.str.9 = private unnamed_addr constant [14 x i8] c"path segments\00", align 1
@path_segments_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @path_segments_enum_ptrs, i32 0, i32 0) }, align 8
@st_path_segments = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @path_segments_reloc_ptrs to i8*) }, align 8
@path_segments_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 24 }, %struct.gc_ptr_element_s { i16 0, i16 32 }], align 2
@.str.10 = private unnamed_addr constant [17 x i8] c"gx_path_add_line\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"gx_path_add_gap\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"gx_path_add_curve\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@segment_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @segment_enum_ptrs, i32 0, i32 0) }, align 8
@st_curve = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @segment_reloc_ptrs to i8*) }, align 8
@segment_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }], align 2
@.str.14 = private unnamed_addr constant [22 x i8] c"gx_path_close_subpath\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@close_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_segment to %struct.gs_memory_struct_type_s*), %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @close_enum_ptrs, i32 0, i32 0) }, align 8
@st_line_close = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @close_reloc_ptrs to i8*) }, align 8
@close_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 32 }], align 2
@.str.16 = private unnamed_addr constant [8 x i8] c"segment\00", align 1
@st_segment = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @segment_reloc_ptrs to i8*) }, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"gx_path_new_subpath\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"subpath\00", align 1
@subpath_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_segment to %struct.gs_memory_struct_type_s*), %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @subpath_enum_ptrs, i32 0, i32 0) }, align 8
@st_subpath = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @subpath_reloc_ptrs to i8*) }, align 8
@subpath_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 32 }], align 2
@.str.19 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@line_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 0, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_segment to %struct.gs_memory_struct_type_s*), %struct.gc_ptr_element_s* null }, align 8
@st_line = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @line_reloc_ptrs to i8*) }, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"dash\00", align 1
@dash_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 0, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_segment to %struct.gs_memory_struct_type_s*), %struct.gc_ptr_element_s* null }, align 8
@st_dash = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @dash_reloc_ptrs to i8*) }, align 8
@.str.21 = private unnamed_addr constant [22 x i8] c"path_alloc_copy error\00", align 1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gx_path_init_contained_shared(%struct.gx_path_s* %ppath, %struct.gx_path_s* %shared, %struct.gs_memory_s* %mem, i8* %cname) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %shared.addr = alloca %struct.gx_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %shared, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_path_s* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %local_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 0
  %cmp = icmp eq %struct.gx_path_segments_s* %2, %local_segments
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %call = call i8* @gs_program_name() #4
  %call2 = call i64 @gs_revision_number() #4
  call void @eprintf_program_ident(i8* %call, i64 %call2) #4
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 142) #4
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %5 = ptrtoint %struct.gx_path_s* %4 to i64
  %call3 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0), i64 %5) #4
  store i32 -100, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_path_s* %6 to i8*
  %9 = bitcast %struct.gx_path_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 128, i32 8, i1 false), !tbaa.struct !14
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 3
  %11 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments4, align 8, !tbaa !5
  %tobool5 = icmp ne %struct.gx_path_segments_s* %11, null
  br i1 %tobool5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 3
  %13 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments8, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %13, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %14 = load i64, i64* %ref_count, align 8, !tbaa !18
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !18
  br label %do.body.9

do.body.9:                                        ; preds = %do.body.7
  br label %do.end

do.end:                                           ; preds = %do.body.9
  br label %do.end.10

do.end.10:                                        ; preds = %do.end
  br label %if.end.11

if.end.11:                                        ; preds = %do.end.10, %do.body
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %if.end.18

if.else:                                          ; preds = %entry
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call14 = call i32 @path_alloc_segments(%struct.gx_path_segments_s** %segments13, %struct.gs_memory_s* %17, i8* %18) #4
  store i32 %call14, i32* %code, align 4, !tbaa !17
  %19 = load i32, i32* %code, align 4, !tbaa !17
  %cmp15 = icmp slt i32 %19, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  %20 = load i32, i32* %code, align 4, !tbaa !17
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.else
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  call void @gx_path_init_contents(%struct.gx_path_s* %21) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.18

if.end.18:                                        ; preds = %cleanup.cont, %do.end.12
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %24, i32 0, i32 1
  store %struct.gs_memory_s* %23, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %allocation = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %25, i32 0, i32 2
  store i32 1, i32* %allocation, align 4, !tbaa !20
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %26, i32 0, i32 15
  store %struct.gx_path_procs_s* @default_path_procs, %struct.gx_path_procs_s** %procs, align 8, !tbaa !21
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %cleanup, %if.then.1
  %27 = load i32, i32* %retval
  ret i32 %27

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @eprintf_program_ident(i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare void @lprintf_file_and_line(i8*, i32) #0

declare i32 @errprintf_nomem(i8*, ...) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @path_alloc_segments(%struct.gx_path_segments_s** %ppsegs, %struct.gs_memory_s* %mem, i8* %cname) #1 {
entry:
  %retval = alloca i32, align 4
  %ppsegs.addr = alloca %struct.gx_path_segments_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gx_path_segments_s** %ppsegs, %struct.gx_path_segments_s*** %ppsegs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %1 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !22
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* %1(%struct.gs_memory_s* %2) #4
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 8
  %4 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !25
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %4(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_path_segments to %struct.gs_memory_struct_type_s*), i8* %6) #4
  %7 = bitcast i8* %call2 to %struct.gx_path_segments_s*
  %8 = load %struct.gx_path_segments_s**, %struct.gx_path_segments_s*** %ppsegs.addr, align 8, !tbaa !1
  store %struct.gx_path_segments_s* %7, %struct.gx_path_segments_s** %8, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_path_segments_s* %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  store i32 -25, i32* %retval
  br label %return

if.else:                                          ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.else
  %9 = load %struct.gx_path_segments_s**, %struct.gx_path_segments_s*** %ppsegs.addr, align 8, !tbaa !1
  %10 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %9, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %10, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !18
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load %struct.gx_path_segments_s**, %struct.gx_path_segments_s*** %ppsegs.addr, align 8, !tbaa !1
  %13 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %12, align 8, !tbaa !1
  %rc4 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %13, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc4, i32 0, i32 1
  store %struct.gs_memory_s* %11, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  %14 = load %struct.gx_path_segments_s**, %struct.gx_path_segments_s*** %ppsegs.addr, align 8, !tbaa !1
  %15 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %14, align 8, !tbaa !1
  %rc5 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %15, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !27
  br label %do.body.6

do.body.6:                                        ; preds = %do.body.3
  br label %do.end

do.end:                                           ; preds = %do.body.6
  br label %do.end.7

do.end.7:                                         ; preds = %do.end
  br label %if.end

if.end:                                           ; preds = %do.end.7
  br label %do.end.8

do.end.8:                                         ; preds = %if.end
  %16 = load %struct.gx_path_segments_s**, %struct.gx_path_segments_s*** %ppsegs.addr, align 8, !tbaa !1
  %17 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %16, align 8, !tbaa !1
  %rc9 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %17, i32 0, i32 0
  %free10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_path_segments, void (%struct.gs_memory_s*, i8*, i8*)** %free10, align 8, !tbaa !27
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.8, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal void @gx_path_init_contents(%struct.gx_path_s* %ppath) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %box_last = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 6
  store %struct.segment_s* null, %struct.segment_s** %box_last, align 8, !tbaa !28
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %2, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 1
  store %struct.subpath_s* null, %struct.subpath_s** %subpath_current, align 8, !tbaa !29
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 3
  %4 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1, align 8, !tbaa !5
  %contents2 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %4, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents2, i32 0, i32 0
  store %struct.subpath_s* null, %struct.subpath_s** %subpath_first, align 8, !tbaa !30
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %subpath_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 12
  store i32 0, i32* %subpath_count, align 4, !tbaa !31
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %curve_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 13
  store i32 0, i32* %curve_count, align 4, !tbaa !32
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 8
  store i8 0, i8* %state_flags, align 1, !tbaa !33
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_set = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 9
  store i8 0, i8* %bbox_set, align 1, !tbaa !34
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_accurate = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 10
  store i8 0, i8* %bbox_accurate, align 1, !tbaa !35
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %last_charpath_segment = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 4
  store %struct.segment_s* null, %struct.segment_s** %last_charpath_segment, align 8, !tbaa !36
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 2147483647, i32* %x, align 4, !tbaa !37
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox3 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 5
  %p4 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox3, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p4, i32 0, i32 1
  store i32 2147483647, i32* %y, align 4, !tbaa !38
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %13, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox5, i32 0, i32 1
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 -2147483648, i32* %x6, align 4, !tbaa !39
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 5
  %q8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox7, i32 0, i32 1
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q8, i32 0, i32 1
  store i32 -2147483648, i32* %y9, align 4, !tbaa !40
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct.gx_path_s* @gx_path_alloc_shared(%struct.gx_path_s* %shared, %struct.gs_memory_s* %mem, i8* %cname) #1 {
entry:
  %retval = alloca %struct.gx_path_s*, align 8
  %shared.addr = alloca %struct.gx_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.gx_path_s* %shared, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !25
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_path to %struct.gs_memory_struct_type_s*), i8* %4) #4
  %5 = bitcast i8* %call to %struct.gx_path_s*
  store %struct.gx_path_s* %5, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_path_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gx_path_s* null, %struct.gx_path_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 15
  store %struct.gx_path_procs_s* @default_path_procs, %struct.gx_path_procs_s** %procs1, align 8, !tbaa !21
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_path_s* %8, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 3
  %10 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %local_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 0
  %cmp3 = icmp eq %struct.gx_path_segments_s* %10, %local_segments
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.then.2
  %call5 = call i8* @gs_program_name() #4
  %call6 = call i64 @gs_revision_number() #4
  call void @eprintf_program_ident(i8* %call5, i64 %call6) #4
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 177) #4
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %13 = ptrtoint %struct.gx_path_s* %12 to i64
  %call7 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0), i64 %13) #4
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !41
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %18 = bitcast %struct.gx_path_s* %17 to i8*
  %19 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %15(%struct.gs_memory_s* %16, i8* %18, i8* %19) #4
  store %struct.gx_path_s* null, %struct.gx_path_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.end.9:                                         ; preds = %if.then.2
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_path_s* %20 to i8*
  %23 = bitcast %struct.gx_path_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 128, i32 8, i1 false), !tbaa.struct !14
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %segments10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %24, i32 0, i32 3
  %25 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments10, align 8, !tbaa !5
  %tobool11 = icmp ne %struct.gx_path_segments_s* %25, null
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %do.body
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %segments14 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %26, i32 0, i32 3
  %27 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments14, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %27, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %28 = load i64, i64* %ref_count, align 8, !tbaa !18
  %inc = add nsw i64 %28, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !18
  br label %do.body.15

do.body.15:                                       ; preds = %do.body.13
  br label %do.cond

do.cond:                                          ; preds = %do.body.15
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.end
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  br label %if.end.18

if.end.18:                                        ; preds = %do.end.17, %do.body
  br label %do.cond.19

do.cond.19:                                       ; preds = %if.end.18
  br label %do.end.20

do.end.20:                                        ; preds = %do.cond.19
  br label %if.end.28

if.else:                                          ; preds = %if.end
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %segments21 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call22 = call i32 @path_alloc_segments(%struct.gx_path_segments_s** %segments21, %struct.gs_memory_s* %31, i8* %32) #4
  store i32 %call22, i32* %code, align 4, !tbaa !17
  %33 = load i32, i32* %code, align 4, !tbaa !17
  %cmp23 = icmp slt i32 %33, 0
  br i1 %cmp23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.else
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %free_object26 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs25, i32 0, i32 2
  %35 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object26, align 8, !tbaa !41
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %38 = bitcast %struct.gx_path_s* %37 to i8*
  %39 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %35(%struct.gs_memory_s* %36, i8* %38, i8* %39) #4
  store %struct.gx_path_s* null, %struct.gx_path_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.else
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  call void @gx_path_init_contents(%struct.gx_path_s* %40) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.24
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.28

if.end.28:                                        ; preds = %cleanup.cont, %do.end.20
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %43 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %43, i32 0, i32 1
  store %struct.gs_memory_s* %42, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  %44 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %allocation = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %44, i32 0, i32 2
  store i32 2, i32* %allocation, align 4, !tbaa !20
  %45 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  store %struct.gx_path_s* %45, %struct.gx_path_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

cleanup.29:                                       ; preds = %if.end.28, %cleanup, %if.then.4, %if.then
  %46 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = load %struct.gx_path_s*, %struct.gx_path_s** %retval
  ret %struct.gx_path_s* %47
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_init_local_shared(%struct.gx_path_s* %ppath, %struct.gx_path_s* %shared, %struct.gs_memory_s* %mem) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %shared.addr = alloca %struct.gx_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %shared, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_path_s* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %local_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 0
  %cmp = icmp eq %struct.gx_path_segments_s* %2, %local_segments
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %call = call i8* @gs_program_name() #4
  %call2 = call i64 @gs_revision_number() #4
  call void @eprintf_program_ident(i8* %call, i64 %call2) #4
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 208) #4
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %5 = ptrtoint %struct.gx_path_s* %4 to i64
  %call3 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0), i64 %5) #4
  store i32 -100, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %shared.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_path_s* %6 to i8*
  %9 = bitcast %struct.gx_path_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 128, i32 8, i1 false), !tbaa.struct !14
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 3
  %11 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments4, align 8, !tbaa !5
  %tobool5 = icmp ne %struct.gx_path_segments_s* %11, null
  br i1 %tobool5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 3
  %13 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments8, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %13, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %14 = load i64, i64* %ref_count, align 8, !tbaa !18
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !18
  br label %do.body.9

do.body.9:                                        ; preds = %do.body.7
  br label %do.end

do.end:                                           ; preds = %do.body.9
  br label %do.end.10

do.end.10:                                        ; preds = %do.end
  br label %if.end.11

if.end.11:                                        ; preds = %do.end.10, %do.body
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %if.end.26

if.else:                                          ; preds = %entry
  br label %do.body.13

do.body.13:                                       ; preds = %if.else
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %local_segments14 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 0
  %rc15 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %local_segments14, i32 0, i32 0
  %ref_count16 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc15, i32 0, i32 0
  store i64 1, i64* %ref_count16, align 8, !tbaa !18
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %local_segments17 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 0
  %rc18 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %local_segments17, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 1
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %local_segments19 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 0
  %rc20 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %local_segments19, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_path_segments_local, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !27
  br label %do.body.21

do.body.21:                                       ; preds = %do.body.13
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.end.22
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %local_segments24 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i32 0, i32 0
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments25 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %20, i32 0, i32 3
  store %struct.gx_path_segments_s* %local_segments24, %struct.gx_path_segments_s** %segments25, align 8, !tbaa !5
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  call void @gx_path_init_contents(%struct.gx_path_s* %21) #4
  br label %if.end.26

if.end.26:                                        ; preds = %do.end.23, %do.end.12
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i32 0, i32 1
  store %struct.gs_memory_s* %22, %struct.gs_memory_s** %memory27, align 8, !tbaa !19
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %allocation = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %24, i32 0, i32 2
  store i32 0, i32* %allocation, align 4, !tbaa !20
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %25, i32 0, i32 15
  store %struct.gx_path_procs_s* @default_path_procs, %struct.gx_path_procs_s** %procs, align 8, !tbaa !21
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal void @rc_free_path_segments_local(%struct.gs_memory_s* %mem, i8* %vpsegs, i8* %cname) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vpsegs.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %psegs = alloca %struct.gx_path_segments_s*, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %cleanup.dest.slot = alloca i32
  %prev = alloca %struct.segment_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vpsegs, i8** %vpsegs.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_path_segments_s** %psegs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vpsegs.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_path_segments_s*
  store %struct.gx_path_segments_s* %2, %struct.gx_path_segments_s** %psegs, align 8, !tbaa !1
  %3 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %5 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !22
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* %5(%struct.gs_memory_s* %6) #4
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %psegs, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %7, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %8 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !30
  %cmp = icmp eq %struct.subpath_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %psegs, align 8, !tbaa !1
  %contents1 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %9, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents1, i32 0, i32 1
  %10 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !29
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %10, i32 0, i32 5
  %11 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !42
  store %struct.segment_s* %11, %struct.segment_s** %pseg, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end
  %12 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %tobool = icmp ne %struct.segment_s* %12, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %prev2 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %14, i32 0, i32 0
  %15 = load %struct.segment_s*, %struct.segment_s** %prev2, align 8, !tbaa !46
  store %struct.segment_s* %15, %struct.segment_s** %prev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %while.body
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 2
  %17 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !41
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %20 = bitcast %struct.segment_s* %19 to i8*
  %21 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %17(%struct.gs_memory_s* %18, i8* %20, i8* %21) #4
  %22 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  store %struct.segment_s* %22, %struct.segment_s** %pseg, align 8, !tbaa !1
  %23 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %24 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast %struct.gx_path_segments_s** %psegs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
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
define void @gx_path_init_bbox_accumulator(%struct.gx_path_s* %ppath) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %box_last = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 6
  store %struct.segment_s* null, %struct.segment_s** %box_last, align 8, !tbaa !28
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %subpath_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 12
  store i32 0, i32* %subpath_count, align 4, !tbaa !31
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %curve_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 13
  store i32 0, i32* %curve_count, align 4, !tbaa !32
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %local_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 0
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %local_segments, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  store %struct.subpath_s* null, %struct.subpath_s** %subpath_first, align 8, !tbaa !48
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %local_segments1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 0
  %contents2 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %local_segments1, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents2, i32 0, i32 1
  store %struct.subpath_s* null, %struct.subpath_s** %subpath_current, align 8, !tbaa !49
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 3
  store %struct.gx_path_segments_s* null, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 8
  store i8 0, i8* %state_flags, align 1, !tbaa !33
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !39
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox3 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox3, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x4, align 4, !tbaa !37
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 5
  %q6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox5, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q6, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !40
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 5
  %p8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox7, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p8, i32 0, i32 1
  store i32 0, i32* %y9, align 4, !tbaa !38
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_set = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 9
  store i8 0, i8* %bbox_set, align 1, !tbaa !34
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_accurate = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 10
  store i8 1, i8* %bbox_accurate, align 1, !tbaa !35
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %13, i32 0, i32 1
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %allocation = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 2
  store i32 0, i32* %allocation, align 4, !tbaa !20
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 15
  store %struct.gx_path_procs_s* @path_bbox_procs, %struct.gx_path_procs_s** %procs, align 8, !tbaa !21
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_unshare(%struct.gx_path_s* %ppath) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !17
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %cmp = icmp ne %struct.gx_path_segments_s* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 3
  %4 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %4, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %5 = load i64, i64* %ref_count, align 8, !tbaa !18
  %cmp2 = icmp sgt i64 %5, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @path_alloc_copy(%struct.gx_path_s* %6) #4
  store i32 %call, i32* %code, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* %code, align 4, !tbaa !17
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @path_alloc_copy(%struct.gx_path_s* %ppath) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %path_new = alloca %struct.gx_path_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_path_s* %path_new to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  %call = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %path_new, %struct.gx_path_s* null, %struct.gs_memory_s* %3) #4
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_path_copy_reducing(%struct.gx_path_s* %4, %struct.gx_path_s* %path_new, i32 2147483647, %struct.gs_imager_state_s* null, i32 0) #4
  store i32 %call1, i32* %code, align 4, !tbaa !17
  %5 = load i32, i32* %code, align 4, !tbaa !17
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @gx_path_free(%struct.gx_path_s* %path_new, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0)) #4
  %6 = load i32, i32* %code, align 4, !tbaa !17
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %last_charpath_segment = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 4
  store %struct.segment_s* null, %struct.segment_s** %last_charpath_segment, align 8, !tbaa !36
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call2 = call i32 @gx_path_assign_free(%struct.gx_path_s* %8, %struct.gx_path_s* %path_new) #4
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %10 = bitcast %struct.gx_path_s* %path_new to i8*
  call void @llvm.lifetime.end(i64 128, i8* %10) #2
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define void @gx_path_free(%struct.gx_path_s* %ppath, i8* %cname) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 3
  %1 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %tobool = icmp ne %struct.gx_path_segments_s* %1, null
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  br label %do.end

do.end:                                           ; preds = %do.body.2
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments3 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 3
  %3 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments3, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %3, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %4 = load i64, i64* %ref_count, align 8, !tbaa !18
  %add = add nsw i64 %4, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !18
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 3
  %6 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments5, align 8, !tbaa !5
  %rc6 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %6, i32 0, i32 0
  %ref_count7 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 0
  %7 = load i64, i64* %ref_count7, align 8, !tbaa !18
  %tobool8 = icmp ne i64 %7, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %do.end.4
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.body.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.11
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 3
  %9 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments13, align 8, !tbaa !5
  %rc14 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %9, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc14, i32 0, i32 2
  %10 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !27
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments15 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 3
  %12 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments15, align 8, !tbaa !5
  %rc16 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %12, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments17 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 3
  %15 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments17, align 8, !tbaa !5
  %16 = bitcast %struct.gx_path_segments_s* %15 to i8*
  %17 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %10(%struct.gs_memory_s* %13, i8* %16, i8* %17) #4
  br label %do.end.18

do.end.18:                                        ; preds = %do.end.12
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments19 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 3
  store %struct.gx_path_segments_s* null, %struct.gx_path_segments_s** %segments19, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %do.end.4
  br label %do.body.20

do.body.20:                                       ; preds = %if.else
  br label %do.end.21

do.end.21:                                        ; preds = %do.body.20
  br label %if.end

if.end:                                           ; preds = %do.end.21, %do.end.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %do.body
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %box_last = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i32 0, i32 6
  store %struct.segment_s* null, %struct.segment_s** %box_last, align 8, !tbaa !28
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments24 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %20, i32 0, i32 3
  store %struct.gx_path_segments_s* null, %struct.gx_path_segments_s** %segments24, align 8, !tbaa !5
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %allocation = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %21, i32 0, i32 2
  %22 = load i32, i32* %allocation, align 4, !tbaa !20
  %cmp = icmp eq i32 %22, 2
  br i1 %cmp, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %do.end.23
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i32 0, i32 1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !41
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %26, i32 0, i32 1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !19
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gx_path_s* %28 to i8*
  %30 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %25(%struct.gs_memory_s* %27, i8* %29, i8* %30) #4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %do.end.23
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_assign_preserve(%struct.gx_path_s* %ppto, %struct.gx_path_s* %ppfrom) #1 {
entry:
  %retval = alloca i32, align 4
  %ppto.addr = alloca %struct.gx_path_s*, align 8
  %ppfrom.addr = alloca %struct.gx_path_s*, align 8
  %fromsegs = alloca %struct.gx_path_segments_s*, align 8
  %tosegs = alloca %struct.gx_path_segments_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %allocation = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppto, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppfrom, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_path_segments_s** %fromsegs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  store %struct.gx_path_segments_s* %2, %struct.gx_path_segments_s** %fromsegs, align 8, !tbaa !1
  %3 = bitcast %struct.gx_path_segments_s** %tosegs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %segments1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 3
  %5 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1, align 8, !tbaa !5
  store %struct.gx_path_segments_s* %5, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  %6 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %9 = bitcast i32* %allocation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %allocation2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 2
  %11 = load i32, i32* %allocation2, align 4, !tbaa !20
  store i32 %11, i32* %allocation, align 4, !tbaa !16
  %12 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %fromsegs, align 8, !tbaa !1
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %local_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %13, i32 0, i32 0
  %cmp = icmp eq %struct.gx_path_segments_s* %12, %local_segments
  br i1 %cmp, label %if.then, label %if.else.67

if.then:                                          ; preds = %entry
  %14 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %local_segments3 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 0
  %cmp4 = icmp eq %struct.gx_path_segments_s* %14, %local_segments3
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %segments5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %16, i32 0, i32 3
  %17 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments5, align 8, !tbaa !5
  %cmp6 = icmp ne %struct.gx_path_segments_s* %17, null
  br i1 %cmp6, label %land.lhs.true, label %if.else.47

land.lhs.true:                                    ; preds = %lor.lhs.false
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %segments7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 3
  %19 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments7, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %19, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %20 = load i64, i64* %ref_count, align 8, !tbaa !18
  %cmp8 = icmp sgt i64 %20, 1
  br i1 %cmp8, label %if.then.9, label %if.else.47

if.then.9:                                        ; preds = %land.lhs.true, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %22, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !19
  %call = call i32 @path_alloc_segments(%struct.gx_path_segments_s** %tosegs, %struct.gs_memory_s* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #4
  store i32 %call, i32* %code, align 4, !tbaa !17
  %24 = load i32, i32* %code, align 4, !tbaa !17
  %cmp11 = icmp slt i32 %24, 0
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.9
  %25 = load i32, i32* %code, align 4, !tbaa !17
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.9
  br label %do.body

do.body:                                          ; preds = %if.end
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %segments13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %26, i32 0, i32 3
  %27 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments13, align 8, !tbaa !5
  %tobool = icmp ne %struct.gx_path_segments_s* %27, null
  br i1 %tobool, label %if.then.14, label %if.end.44

if.then.14:                                       ; preds = %do.body
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.body.15
  br label %do.cond

do.cond:                                          ; preds = %do.body.16
  br label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %segments17 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %28, i32 0, i32 3
  %29 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments17, align 8, !tbaa !5
  %rc18 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %29, i32 0, i32 0
  %ref_count19 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 0
  %30 = load i64, i64* %ref_count19, align 8, !tbaa !18
  %add = add nsw i64 %30, -1
  store i64 %add, i64* %ref_count19, align 8, !tbaa !18
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.end
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %segments22 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %31, i32 0, i32 3
  %32 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments22, align 8, !tbaa !5
  %rc23 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %32, i32 0, i32 0
  %ref_count24 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc23, i32 0, i32 0
  %33 = load i64, i64* %ref_count24, align 8, !tbaa !18
  %tobool25 = icmp ne i64 %33, 0
  br i1 %tobool25, label %if.else, label %if.then.26

if.then.26:                                       ; preds = %do.end.21
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.body.27
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.body.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  %34 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %segments31 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %34, i32 0, i32 3
  %35 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments31, align 8, !tbaa !5
  %rc32 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %35, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc32, i32 0, i32 2
  %36 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !27
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %segments33 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %37, i32 0, i32 3
  %38 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments33, align 8, !tbaa !5
  %rc34 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %38, i32 0, i32 0
  %memory35 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc34, i32 0, i32 1
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory35, align 8, !tbaa !26
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %segments36 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %40, i32 0, i32 3
  %41 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments36, align 8, !tbaa !5
  %42 = bitcast %struct.gx_path_segments_s* %41 to i8*
  call void %36(%struct.gs_memory_s* %39, i8* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %do.cond.37

do.cond.37:                                       ; preds = %do.end.30
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  %43 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %segments39 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %43, i32 0, i32 3
  store %struct.gx_path_segments_s* null, %struct.gx_path_segments_s** %segments39, align 8, !tbaa !5
  br label %if.end.43

if.else:                                          ; preds = %do.end.21
  br label %do.body.40

do.body.40:                                       ; preds = %if.else
  br label %do.cond.41

do.cond.41:                                       ; preds = %do.body.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  br label %if.end.43

if.end.43:                                        ; preds = %do.end.42, %do.end.38
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %do.body
  br label %do.cond.45

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.46, %if.then.12
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.120 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.50

if.else.47:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %45 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  %rc48 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %45, i32 0, i32 0
  %memory49 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc48, i32 0, i32 1
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory49, align 8, !tbaa !26
  %47 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  %48 = bitcast %struct.gx_path_segments_s* %47 to i8*
  call void @rc_free_path_segments_local(%struct.gs_memory_s* %46, i8* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %cleanup.cont
  %49 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %49, i32 0, i32 1
  %50 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %fromsegs, align 8, !tbaa !1
  %contents51 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %50, i32 0, i32 1
  %51 = bitcast %struct.psc_* %contents to i8*
  %52 = bitcast %struct.psc_* %contents51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 16, i32 8, i1 false), !tbaa.struct !50
  %53 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  %54 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %segments52 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %54, i32 0, i32 3
  store %struct.gx_path_segments_s* %53, %struct.gx_path_segments_s** %segments52, align 8, !tbaa !5
  br label %do.body.53

do.body.53:                                       ; preds = %if.end.50
  %55 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  %tobool54 = icmp ne %struct.gx_path_segments_s* %55, null
  br i1 %tobool54, label %if.then.55, label %if.end.64

if.then.55:                                       ; preds = %do.body.53
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %56 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  %rc57 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %56, i32 0, i32 0
  %ref_count58 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc57, i32 0, i32 0
  %57 = load i64, i64* %ref_count58, align 8, !tbaa !18
  %inc = add nsw i64 %57, 1
  store i64 %inc, i64* %ref_count58, align 8, !tbaa !18
  br label %do.body.59

do.body.59:                                       ; preds = %do.body.56
  br label %do.cond.60

do.cond.60:                                       ; preds = %do.body.59
  br label %do.end.61

do.end.61:                                        ; preds = %do.cond.60
  br label %do.cond.62

do.cond.62:                                       ; preds = %do.end.61
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  br label %if.end.64

if.end.64:                                        ; preds = %do.end.63, %do.body.53
  br label %do.cond.65

do.cond.65:                                       ; preds = %if.end.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.cond.65
  br label %if.end.117

if.else.67:                                       ; preds = %entry
  br label %do.body.68

do.body.68:                                       ; preds = %if.else.67
  %58 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %fromsegs, align 8, !tbaa !1
  %tobool69 = icmp ne %struct.gx_path_segments_s* %58, null
  br i1 %tobool69, label %if.then.70, label %if.end.80

if.then.70:                                       ; preds = %do.body.68
  br label %do.body.71

do.body.71:                                       ; preds = %if.then.70
  %59 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %fromsegs, align 8, !tbaa !1
  %rc72 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %59, i32 0, i32 0
  %ref_count73 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc72, i32 0, i32 0
  %60 = load i64, i64* %ref_count73, align 8, !tbaa !18
  %inc74 = add nsw i64 %60, 1
  store i64 %inc74, i64* %ref_count73, align 8, !tbaa !18
  br label %do.body.75

do.body.75:                                       ; preds = %do.body.71
  br label %do.cond.76

do.cond.76:                                       ; preds = %do.body.75
  br label %do.end.77

do.end.77:                                        ; preds = %do.cond.76
  br label %do.cond.78

do.cond.78:                                       ; preds = %do.end.77
  br label %do.end.79

do.end.79:                                        ; preds = %do.cond.78
  br label %if.end.80

if.end.80:                                        ; preds = %do.end.79, %do.body.68
  br label %do.cond.81

do.cond.81:                                       ; preds = %if.end.80
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  br label %do.body.83

do.body.83:                                       ; preds = %do.end.82
  %61 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  %tobool84 = icmp ne %struct.gx_path_segments_s* %61, null
  br i1 %tobool84, label %if.then.85, label %if.end.114

if.then.85:                                       ; preds = %do.body.83
  br label %do.body.86

do.body.86:                                       ; preds = %if.then.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.body.86
  br label %do.cond.88

do.cond.88:                                       ; preds = %do.body.87
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  %62 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  %rc90 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %62, i32 0, i32 0
  %ref_count91 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc90, i32 0, i32 0
  %63 = load i64, i64* %ref_count91, align 8, !tbaa !18
  %add92 = add nsw i64 %63, -1
  store i64 %add92, i64* %ref_count91, align 8, !tbaa !18
  br label %do.cond.93

do.cond.93:                                       ; preds = %do.end.89
  br label %do.end.94

do.end.94:                                        ; preds = %do.cond.93
  %64 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  %rc95 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %64, i32 0, i32 0
  %ref_count96 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc95, i32 0, i32 0
  %65 = load i64, i64* %ref_count96, align 8, !tbaa !18
  %tobool97 = icmp ne i64 %65, 0
  br i1 %tobool97, label %if.else.109, label %if.then.98

if.then.98:                                       ; preds = %do.end.94
  br label %do.body.99

do.body.99:                                       ; preds = %if.then.98
  br label %do.body.100

do.body.100:                                      ; preds = %do.body.99
  br label %do.cond.101

do.cond.101:                                      ; preds = %do.body.100
  br label %do.end.102

do.end.102:                                       ; preds = %do.cond.101
  %66 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  %rc103 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %66, i32 0, i32 0
  %free104 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc103, i32 0, i32 2
  %67 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free104, align 8, !tbaa !27
  %68 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  %rc105 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %68, i32 0, i32 0
  %memory106 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc105, i32 0, i32 1
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory106, align 8, !tbaa !26
  %70 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  %71 = bitcast %struct.gx_path_segments_s* %70 to i8*
  call void %67(%struct.gs_memory_s* %69, i8* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %do.cond.107

do.cond.107:                                      ; preds = %do.end.102
  br label %do.end.108

do.end.108:                                       ; preds = %do.cond.107
  store %struct.gx_path_segments_s* null, %struct.gx_path_segments_s** %tosegs, align 8, !tbaa !1
  br label %if.end.113

if.else.109:                                      ; preds = %do.end.94
  br label %do.body.110

do.body.110:                                      ; preds = %if.else.109
  br label %do.cond.111

do.cond.111:                                      ; preds = %do.body.110
  br label %do.end.112

do.end.112:                                       ; preds = %do.cond.111
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %do.end.108
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %do.body.83
  br label %do.cond.115

do.cond.115:                                      ; preds = %if.end.114
  br label %do.end.116

do.end.116:                                       ; preds = %do.cond.115
  br label %if.end.117

if.end.117:                                       ; preds = %do.end.116, %do.end.66
  %72 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %73 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %74 = bitcast %struct.gx_path_s* %72 to i8*
  %75 = bitcast %struct.gx_path_s* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 128, i32 8, i1 false), !tbaa.struct !14
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %77 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %memory118 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %77, i32 0, i32 1
  store %struct.gs_memory_s* %76, %struct.gs_memory_s** %memory118, align 8, !tbaa !19
  %78 = load i32, i32* %allocation, align 4, !tbaa !16
  %79 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %allocation119 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %79, i32 0, i32 2
  store i32 %78, i32* %allocation119, align 4, !tbaa !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.120

cleanup.120:                                      ; preds = %if.end.117, %cleanup
  %80 = bitcast i32* %allocation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast %struct.gx_path_segments_s** %tosegs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %83 = bitcast %struct.gx_path_segments_s** %fromsegs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = load i32, i32* %retval
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_assign_free(%struct.gx_path_s* %ppto, %struct.gx_path_s* %ppfrom) #1 {
entry:
  %retval = alloca i32, align 4
  %ppto.addr = alloca %struct.gx_path_s*, align 8
  %ppfrom.addr = alloca %struct.gx_path_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %allocation = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppto, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppfrom, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 3
  %1 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %local_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 0
  %cmp = icmp eq %struct.gx_path_segments_s* %1, %local_segments
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %segments1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 3
  %4 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1, align 8, !tbaa !5
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %local_segments2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 0
  %cmp3 = icmp eq %struct.gx_path_segments_s* %4, %local_segments2
  br i1 %cmp3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %segments5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 3
  %7 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments5, align 8, !tbaa !5
  %cmp6 = icmp ne %struct.gx_path_segments_s* %7, null
  br i1 %cmp6, label %land.lhs.true.7, label %if.then

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %segments8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 3
  %9 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments8, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %9, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %10 = load i64, i64* %ref_count, align 8, !tbaa !18
  %cmp9 = icmp sgt i64 %10, 1
  br i1 %cmp9, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true.4
  %11 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %14 = bitcast i32* %allocation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %allocation10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 2
  %16 = load i32, i32* %allocation10, align 4, !tbaa !20
  store i32 %16, i32* %allocation, align 4, !tbaa !16
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %local_segments11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 0
  %rc12 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %local_segments11, i32 0, i32 0
  %memory13 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc12, i32 0, i32 1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !26
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %local_segments14 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i32 0, i32 0
  %20 = bitcast %struct.gx_path_segments_s* %local_segments14 to i8*
  call void @rc_free_path_segments_local(%struct.gs_memory_s* %18, i8* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #4
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %22 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_path_s* %21 to i8*
  %24 = bitcast %struct.gx_path_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 128, i32 8, i1 false), !tbaa.struct !14
  br label %do.body

do.body:                                          ; preds = %if.then
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %local_segments15 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %25, i32 0, i32 0
  %tobool = icmp ne %struct.gx_path_segments_s* %local_segments15, null
  br i1 %tobool, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %do.body
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %local_segments18 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %26, i32 0, i32 0
  %rc19 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %local_segments18, i32 0, i32 0
  %ref_count20 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc19, i32 0, i32 0
  %27 = load i64, i64* %ref_count20, align 8, !tbaa !18
  %inc = add nsw i64 %27, 1
  store i64 %inc, i64* %ref_count20, align 8, !tbaa !18
  br label %do.body.21

do.body.21:                                       ; preds = %do.body.17
  br label %do.cond

do.cond:                                          ; preds = %do.body.21
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.end
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end

if.end:                                           ; preds = %do.end.23, %do.body
  br label %do.cond.24

do.cond.24:                                       ; preds = %if.end
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %local_segments26 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %28, i32 0, i32 0
  %29 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %segments27 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %29, i32 0, i32 3
  store %struct.gx_path_segments_s* %local_segments26, %struct.gx_path_segments_s** %segments27, align 8, !tbaa !5
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %31, i32 0, i32 1
  store %struct.gs_memory_s* %30, %struct.gs_memory_s** %memory28, align 8, !tbaa !19
  %32 = load i32, i32* %allocation, align 4, !tbaa !16
  %33 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %allocation29 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %33, i32 0, i32 2
  store i32 %32, i32* %allocation29, align 4, !tbaa !20
  %34 = bitcast i32* %allocation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  br label %if.end.33

if.else:                                          ; preds = %land.lhs.true.7, %land.lhs.true, %entry
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8, !tbaa !1
  %38 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_assign_preserve(%struct.gx_path_s* %37, %struct.gx_path_s* %38) #4
  store i32 %call, i32* %code, align 4, !tbaa !17
  %39 = load i32, i32* %code, align 4, !tbaa !17
  %cmp30 = icmp slt i32 %39, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.else
  %40 = load i32, i32* %code, align 4, !tbaa !17
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.31
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.33

if.end.33:                                        ; preds = %cleanup.cont, %do.end.25
  %42 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  call void @gx_path_free(%struct.gx_path_s* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %cleanup
  %43 = load i32, i32* %retval
  ret i32 %43

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_new(%struct.gx_path_s* %ppath) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %psegs = alloca %struct.gx_path_segments_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_path_segments_s** %psegs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  store %struct.gx_path_segments_s* %2, %struct.gx_path_segments_s** %psegs, align 8, !tbaa !1
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 3
  %4 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1, align 8, !tbaa !5
  %cmp = icmp ne %struct.gx_path_segments_s* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.else.34

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 3
  %6 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments2, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %6, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %7 = load i64, i64* %ref_count, align 8, !tbaa !18
  %cmp3 = icmp sgt i64 %7, 1
  br i1 %cmp3, label %if.then, label %if.else.34

if.then:                                          ; preds = %land.lhs.true
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 3
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  %call = call i32 @path_alloc_segments(%struct.gx_path_segments_s** %segments4, %struct.gs_memory_s* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #4
  store i32 %call, i32* %code, align 4, !tbaa !17
  %12 = load i32, i32* %code, align 4, !tbaa !17
  %cmp5 = icmp slt i32 %12, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %13 = load i32, i32* %code, align 4, !tbaa !17
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %14 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %psegs, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_path_segments_s* %14, null
  br i1 %tobool, label %if.then.7, label %if.end.31

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  br label %do.body.9

do.body.9:                                        ; preds = %do.body.8
  br label %do.cond

do.cond:                                          ; preds = %do.body.9
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %psegs, align 8, !tbaa !1
  %rc10 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %15, i32 0, i32 0
  %ref_count11 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc10, i32 0, i32 0
  %16 = load i64, i64* %ref_count11, align 8, !tbaa !18
  %add = add nsw i64 %16, -1
  store i64 %add, i64* %ref_count11, align 8, !tbaa !18
  br label %do.cond.12

do.cond.12:                                       ; preds = %do.end
  br label %do.end.13

do.end.13:                                        ; preds = %do.cond.12
  %17 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %psegs, align 8, !tbaa !1
  %rc14 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %17, i32 0, i32 0
  %ref_count15 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc14, i32 0, i32 0
  %18 = load i64, i64* %ref_count15, align 8, !tbaa !18
  %tobool16 = icmp ne i64 %18, 0
  br i1 %tobool16, label %if.else, label %if.then.17

if.then.17:                                       ; preds = %do.end.13
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.body.18
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.body.19
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  %19 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %psegs, align 8, !tbaa !1
  %rc22 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %19, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc22, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !27
  %21 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %psegs, align 8, !tbaa !1
  %rc23 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %21, i32 0, i32 0
  %memory24 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc23, i32 0, i32 1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory24, align 8, !tbaa !26
  %23 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %psegs, align 8, !tbaa !1
  %24 = bitcast %struct.gx_path_segments_s* %23 to i8*
  call void %20(%struct.gs_memory_s* %22, i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #4
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.end.21
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  store %struct.gx_path_segments_s* null, %struct.gx_path_segments_s** %psegs, align 8, !tbaa !1
  br label %if.end.30

if.else:                                          ; preds = %do.end.13
  br label %do.body.27

do.body.27:                                       ; preds = %if.else
  br label %do.cond.28

do.cond.28:                                       ; preds = %do.body.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %do.end.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %do.body
  br label %do.cond.32

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.33, %if.then.6
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.38 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.37

if.else.34:                                       ; preds = %land.lhs.true, %entry
  %26 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %psegs, align 8, !tbaa !1
  %rc35 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %26, i32 0, i32 0
  %memory36 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc35, i32 0, i32 1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory36, align 8, !tbaa !26
  %28 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %psegs, align 8, !tbaa !1
  %29 = bitcast %struct.gx_path_segments_s* %28 to i8*
  call void @rc_free_path_segments_local(%struct.gs_memory_s* %27, i8* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %cleanup.cont
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  call void @gx_path_init_contents(%struct.gx_path_s* %30) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

cleanup.38:                                       ; preds = %if.end.37, %cleanup
  %31 = bitcast %struct.gx_path_segments_s** %psegs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_point(%struct.gx_path_s* %ppath, i32 %x, i32 %y) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 15
  %1 = load %struct.gx_path_procs_s*, %struct.gx_path_procs_s** %procs, align 8, !tbaa !21
  %add_point = getelementptr inbounds %struct.gx_path_procs_s, %struct.gx_path_procs_s* %1, i32 0, i32 0
  %2 = load i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32)** %add_point, align 8, !tbaa !51
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %4 = load i32, i32* %x.addr, align 4, !tbaa !17
  %5 = load i32, i32* %y.addr, align 4, !tbaa !17
  %call = call i32 %2(%struct.gx_path_s* %3, i32 %4, i32 %5) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_relative_point(%struct.gx_path_s* %ppath, i32 %dx, i32 %dy) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !17
  store i32 %dy, i32* %dy.addr, align 4, !tbaa !17
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 8
  %1 = load i8, i8* %state_flags, align 1, !tbaa !33
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 9
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 8
  %3 = load i8, i8* %state_flags2, align 1, !tbaa !33
  %conv3 = zext i8 %3 to i32
  %and4 = and i32 %conv3, 1
  %cmp5 = icmp ne i32 %and4, 0
  %cond = select i1 %cmp5, i32 -13, i32 -14
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 14
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %6 = load i32, i32* %x, align 4, !tbaa !53
  %7 = load i32, i32* %dx.addr, align 4, !tbaa !17
  %add = add nsw i32 %6, %7
  store i32 %add, i32* %nx, align 4, !tbaa !17
  %8 = bitcast i32* %ny to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 14
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position7, i32 0, i32 1
  %10 = load i32, i32* %y, align 4, !tbaa !54
  %11 = load i32, i32* %dy.addr, align 4, !tbaa !17
  %add8 = add nsw i32 %10, %11
  store i32 %add8, i32* %ny, align 4, !tbaa !17
  %12 = load i32, i32* %nx, align 4, !tbaa !17
  %13 = load i32, i32* %dx.addr, align 4, !tbaa !17
  %xor = xor i32 %12, %13
  %cmp9 = icmp slt i32 %xor, 0
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 14
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position11, i32 0, i32 0
  %15 = load i32, i32* %x12, align 4, !tbaa !53
  %16 = load i32, i32* %dx.addr, align 4, !tbaa !17
  %xor13 = xor i32 %15, %16
  %cmp14 = icmp sge i32 %xor13, 0
  br i1 %cmp14, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %17 = load i32, i32* %ny, align 4, !tbaa !17
  %18 = load i32, i32* %dy.addr, align 4, !tbaa !17
  %xor16 = xor i32 %17, %18
  %cmp17 = icmp slt i32 %xor16, 0
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.26

land.lhs.true.19:                                 ; preds = %lor.lhs.false
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position20 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i32 0, i32 14
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position20, i32 0, i32 1
  %20 = load i32, i32* %y21, align 4, !tbaa !54
  %21 = load i32, i32* %dy.addr, align 4, !tbaa !17
  %xor22 = xor i32 %20, %21
  %cmp23 = icmp sge i32 %xor22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.19, %land.lhs.true
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %land.lhs.true.19, %lor.lhs.false
  %22 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_set = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %22, i32 0, i32 9
  %23 = load i8, i8* %bbox_set, align 1, !tbaa !34
  %tobool = icmp ne i8 %23, 0
  br i1 %tobool, label %if.then.27, label %if.end.50

if.then.27:                                       ; preds = %if.end.26
  %24 = load i32, i32* %nx, align 4, !tbaa !17
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %25, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %26 = load i32, i32* %x28, align 4, !tbaa !37
  %cmp29 = icmp slt i32 %24, %26
  br i1 %cmp29, label %if.then.48, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.then.27
  %27 = load i32, i32* %nx, align 4, !tbaa !17
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox32 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %28, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox32, i32 0, i32 1
  %x33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %29 = load i32, i32* %x33, align 4, !tbaa !39
  %cmp34 = icmp sgt i32 %27, %29
  br i1 %cmp34, label %if.then.48, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.31
  %30 = load i32, i32* %ny, align 4, !tbaa !17
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox37 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %31, i32 0, i32 5
  %p38 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox37, i32 0, i32 0
  %y39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p38, i32 0, i32 1
  %32 = load i32, i32* %y39, align 4, !tbaa !38
  %cmp40 = icmp slt i32 %30, %32
  br i1 %cmp40, label %if.then.48, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.36
  %33 = load i32, i32* %ny, align 4, !tbaa !17
  %34 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox43 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %34, i32 0, i32 5
  %q44 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox43, i32 0, i32 1
  %y45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q44, i32 0, i32 1
  %35 = load i32, i32* %y45, align 4, !tbaa !40
  %cmp46 = icmp sgt i32 %33, %35
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false.42, %lor.lhs.false.36, %lor.lhs.false.31, %if.then.27
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %lor.lhs.false.42
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.26
  %36 = load i32, i32* %nx, align 4, !tbaa !17
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position51 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %37, i32 0, i32 14
  %x52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position51, i32 0, i32 0
  store i32 %36, i32* %x52, align 4, !tbaa !53
  %38 = load i32, i32* %ny, align 4, !tbaa !17
  %39 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position53 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %39, i32 0, i32 14
  %y54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position53, i32 0, i32 1
  store i32 %38, i32* %y54, align 4, !tbaa !54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.50, %if.then.48, %if.then.25
  %40 = bitcast i32* %ny to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  %42 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %start_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %42, i32 0, i32 7
  store i8 3, i8* %start_flags, align 1, !tbaa !55
  %43 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags56 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %43, i32 0, i32 8
  store i8 3, i8* %state_flags56, align 1, !tbaa !33
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cleanup.cont, %cleanup, %if.then
  %44 = load i32, i32* %retval
  ret i32 %44

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_line_notes(%struct.gx_path_s* %ppath, i32 %x, i32 %y, i32 %notes) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %notes.addr = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 15
  %1 = load %struct.gx_path_procs_s*, %struct.gx_path_procs_s** %procs, align 8, !tbaa !21
  %add_line = getelementptr inbounds %struct.gx_path_procs_s, %struct.gx_path_procs_s* %1, i32 0, i32 1
  %2 = load i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)** %add_line, align 8, !tbaa !56
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %4 = load i32, i32* %x.addr, align 4, !tbaa !17
  %5 = load i32, i32* %y.addr, align 4, !tbaa !17
  %6 = load i32, i32* %notes.addr, align 4, !tbaa !16
  %call = call i32 %2(%struct.gx_path_s* %3, i32 %4, i32 %5, i32 %6) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_gap_notes(%struct.gx_path_s* %ppath, i32 %x, i32 %y, i32 %notes) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %notes.addr = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 15
  %1 = load %struct.gx_path_procs_s*, %struct.gx_path_procs_s** %procs, align 8, !tbaa !21
  %add_gap = getelementptr inbounds %struct.gx_path_procs_s, %struct.gx_path_procs_s* %1, i32 0, i32 2
  %2 = load i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)** %add_gap, align 8, !tbaa !57
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %4 = load i32, i32* %x.addr, align 4, !tbaa !17
  %5 = load i32, i32* %y.addr, align 4, !tbaa !17
  %6 = load i32, i32* %notes.addr, align 4, !tbaa !16
  %call = call i32 %2(%struct.gx_path_s* %3, i32 %4, i32 %5, i32 %6) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_lines_notes(%struct.gx_path_s* %ppath, %struct.gs_fixed_point_s* %ppts, i32 %count, i32 %notes) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %ppts.addr = alloca %struct.gs_fixed_point_s*, align 8
  %count.addr = alloca i32, align 4
  %notes.addr = alloca i32, align 4
  %psub = alloca %struct.subpath_s*, align 8
  %prev = alloca %struct.segment_s*, align 8
  %lp = alloca %struct.line_segment*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code_ = alloca i32, align 4
  %code_13 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %next = alloca %struct.line_segment*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %ppts, %struct.gs_fixed_point_s** %ppts.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !17
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.line_segment** %lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  store %struct.line_segment* null, %struct.line_segment** %lp, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %code, align 4, !tbaa !17
  %5 = load i32, i32* %count.addr, align 4, !tbaa !17
  %cmp = icmp sle i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 3
  %7 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.gx_path_segments_s* %7, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %do.body
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 3
  %9 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments2, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %9, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %10 = load i64, i64* %ref_count, align 8, !tbaa !18
  %cmp3 = icmp sgt i64 %10, 1
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %land.lhs.true
  %11 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @path_alloc_copy(%struct.gx_path_s* %12) #4
  store i32 %call, i32* %code_, align 4, !tbaa !17
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.4
  %13 = load i32, i32* %code_, align 4, !tbaa !17
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.then.4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6
  %14 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.103 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.8

if.end.8:                                         ; preds = %cleanup.cont, %land.lhs.true, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 8
  %16 = load i8, i8* %state_flags, align 1, !tbaa !33
  %conv = zext i8 %16 to i32
  %and = and i32 %conv, 4
  %cmp10 = icmp ne i32 %and, 0
  br i1 %cmp10, label %if.end.29, label %if.then.12

if.then.12:                                       ; preds = %do.body.9
  %17 = bitcast i32* %code_13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags14 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 8
  %19 = load i8, i8* %state_flags14, align 1, !tbaa !33
  %conv15 = zext i8 %19 to i32
  %and16 = and i32 %conv15, 1
  %cmp17 = icmp ne i32 %and16, 0
  br i1 %cmp17, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.then.12
  store i32 -14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

if.end.20:                                        ; preds = %if.then.12
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call21 = call i32 @gx_path_new_subpath(%struct.gx_path_s* %20) #4
  store i32 %call21, i32* %code_13, align 4, !tbaa !17
  %21 = load i32, i32* %code_13, align 4, !tbaa !17
  %cmp22 = icmp slt i32 %21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  %22 = load i32, i32* %code_13, align 4, !tbaa !17
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

if.end.25:                                        ; preds = %if.end.20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.26

cleanup.26:                                       ; preds = %if.end.25, %if.then.24, %if.then.19
  %23 = bitcast i32* %code_13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %cleanup.dest.27 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.27, label %cleanup.103 [
    i32 0, label %cleanup.cont.28
  ]

cleanup.cont.28:                                  ; preds = %cleanup.26
  br label %if.end.29

if.end.29:                                        ; preds = %cleanup.cont.28, %do.body.9
  br label %do.cond.30

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments32 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %24, i32 0, i32 3
  %25 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments32, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %25, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 1
  %26 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !29
  store %struct.subpath_s* %26, %struct.subpath_s** %psub, align 8, !tbaa !1
  %27 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %27, i32 0, i32 5
  %28 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !42
  store %struct.segment_s* %28, %struct.segment_s** %prev, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.31
  %29 = load i32, i32* %i, align 4, !tbaa !17
  %30 = load i32, i32* %count.addr, align 4, !tbaa !17
  %cmp33 = icmp slt i32 %29, %30
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppts.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %33, i64 %idxprom
  %x35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  %34 = load i32, i32* %x35, align 4, !tbaa !58
  store i32 %34, i32* %x, align 4, !tbaa !17
  %35 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom36 = sext i32 %36 to i64
  %37 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppts.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %37, i64 %idxprom36
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx37, i32 0, i32 1
  %38 = load i32, i32* %y38, align 4, !tbaa !59
  store i32 %38, i32* %y, align 4, !tbaa !17
  %39 = bitcast %struct.line_segment** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #2
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_set = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %40, i32 0, i32 9
  %41 = load i8, i8* %bbox_set, align 1, !tbaa !34
  %conv39 = zext i8 %41 to i32
  %tobool = icmp ne i32 %conv39, 0
  br i1 %tobool, label %land.lhs.true.40, label %if.end.61

land.lhs.true.40:                                 ; preds = %for.body
  %42 = load i32, i32* %x, align 4, !tbaa !17
  %43 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %43, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %44 = load i32, i32* %x41, align 4, !tbaa !37
  %cmp42 = icmp slt i32 %42, %44
  br i1 %cmp42, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.40
  %45 = load i32, i32* %x, align 4, !tbaa !17
  %46 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox44 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %46, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox44, i32 0, i32 1
  %x45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %47 = load i32, i32* %x45, align 4, !tbaa !39
  %cmp46 = icmp sgt i32 %45, %47
  br i1 %cmp46, label %if.then.60, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false
  %48 = load i32, i32* %y, align 4, !tbaa !17
  %49 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox49 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %49, i32 0, i32 5
  %p50 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox49, i32 0, i32 0
  %y51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p50, i32 0, i32 1
  %50 = load i32, i32* %y51, align 4, !tbaa !38
  %cmp52 = icmp slt i32 %48, %50
  br i1 %cmp52, label %if.then.60, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.48
  %51 = load i32, i32* %y, align 4, !tbaa !17
  %52 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox55 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %52, i32 0, i32 5
  %q56 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox55, i32 0, i32 1
  %y57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q56, i32 0, i32 1
  %53 = load i32, i32* %y57, align 4, !tbaa !40
  %cmp58 = icmp sgt i32 %51, %53
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %lor.lhs.false.54, %lor.lhs.false.48, %lor.lhs.false, %land.lhs.true.40
  store i32 -15, i32* %code, align 4, !tbaa !17
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.84

if.end.61:                                        ; preds = %lor.lhs.false.54, %for.body
  %54 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %54, i32 0, i32 1
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %56 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !22
  %57 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory62 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %57, i32 0, i32 1
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !19
  %call63 = call %struct.gs_memory_s* %56(%struct.gs_memory_s* %58) #4
  %procs64 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call63, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs64, i32 0, i32 8
  %59 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !25
  %60 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %60, i32 0, i32 1
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory65, align 8, !tbaa !19
  %procs66 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %stable67 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs66, i32 0, i32 3
  %62 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable67, align 8, !tbaa !22
  %63 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory68 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %63, i32 0, i32 1
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory68, align 8, !tbaa !19
  %call69 = call %struct.gs_memory_s* %62(%struct.gs_memory_s* %64) #4
  %call70 = call i8* %59(%struct.gs_memory_s* %call69, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_line to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)) #4
  %65 = bitcast i8* %call70 to %struct.line_segment*
  store %struct.line_segment* %65, %struct.line_segment** %next, align 8, !tbaa !1
  %tobool71 = icmp ne %struct.line_segment* %65, null
  br i1 %tobool71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %if.end.61
  store i32 -25, i32* %code, align 4, !tbaa !17
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.84

if.end.73:                                        ; preds = %if.end.61
  %66 = load %struct.line_segment*, %struct.line_segment** %next, align 8, !tbaa !1
  store %struct.line_segment* %66, %struct.line_segment** %lp, align 8, !tbaa !1
  %67 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.line_segment, %struct.line_segment* %67, i32 0, i32 2
  store i16 1, i16* %type, align 2, !tbaa !60
  %68 = load i32, i32* %notes.addr, align 4, !tbaa !16
  %conv74 = trunc i32 %68 to i16
  %69 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %notes75 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %69, i32 0, i32 3
  store i16 %conv74, i16* %notes75, align 2, !tbaa !62
  %70 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %71 = bitcast %struct.line_segment* %70 to %struct.segment_s*
  %72 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %next76 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %72, i32 0, i32 1
  store %struct.segment_s* %71, %struct.segment_s** %next76, align 8, !tbaa !63
  %73 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %74 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %prev77 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %74, i32 0, i32 0
  store %struct.segment_s* %73, %struct.segment_s** %prev77, align 8, !tbaa !64
  %75 = load i32, i32* %x, align 4, !tbaa !17
  %76 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.line_segment, %struct.line_segment* %76, i32 0, i32 4
  %x78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  store i32 %75, i32* %x78, align 4, !tbaa !65
  %77 = load i32, i32* %y, align 4, !tbaa !17
  %78 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %pt79 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %78, i32 0, i32 4
  %y80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt79, i32 0, i32 1
  store i32 %77, i32* %y80, align 4, !tbaa !66
  %79 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %80 = bitcast %struct.line_segment* %79 to %struct.segment_s*
  store %struct.segment_s* %80, %struct.segment_s** %prev, align 8, !tbaa !1
  br label %do.body.81

do.body.81:                                       ; preds = %if.end.73
  br label %do.cond.82

do.cond.82:                                       ; preds = %do.body.81
  br label %do.end.83

do.end.83:                                        ; preds = %do.cond.82
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.84

cleanup.84:                                       ; preds = %do.end.83, %if.then.72, %if.then.60
  %81 = bitcast %struct.line_segment** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %cleanup.dest.87 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.87, label %unreachable [
    i32 0, label %cleanup.cont.88
    i32 6, label %for.end
  ]

cleanup.cont.88:                                  ; preds = %cleanup.84
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.88
  %84 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %cleanup.84, %for.cond
  %85 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %cmp89 = icmp ne %struct.line_segment* %85, null
  br i1 %cmp89, label %if.then.91, label %if.end.102

if.then.91:                                       ; preds = %for.end
  %86 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %pt92 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %86, i32 0, i32 4
  %x93 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt92, i32 0, i32 0
  %87 = load i32, i32* %x93, align 4, !tbaa !65
  %88 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %88, i32 0, i32 14
  %x94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  store i32 %87, i32* %x94, align 4, !tbaa !53
  %89 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %pt95 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %89, i32 0, i32 4
  %y96 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt95, i32 0, i32 1
  %90 = load i32, i32* %y96, align 4, !tbaa !66
  %91 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position97 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %91, i32 0, i32 14
  %y98 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position97, i32 0, i32 1
  store i32 %90, i32* %y98, align 4, !tbaa !54
  %92 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %93 = bitcast %struct.line_segment* %92 to %struct.segment_s*
  %94 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last99 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %94, i32 0, i32 5
  store %struct.segment_s* %93, %struct.segment_s** %last99, align 8, !tbaa !42
  %95 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %next100 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %95, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next100, align 8, !tbaa !67
  %96 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags101 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %96, i32 0, i32 8
  store i8 7, i8* %state_flags101, align 1, !tbaa !33
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.91, %for.end
  %97 = load i32, i32* %code, align 4, !tbaa !17
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

cleanup.103:                                      ; preds = %if.end.102, %cleanup.26, %cleanup, %if.then
  %98 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %99 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  %100 = bitcast %struct.line_segment** %lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #2
  %101 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #2
  %102 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #2
  %103 = load i32, i32* %retval
  ret i32 %103

unreachable:                                      ; preds = %cleanup.84
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_path_new_subpath(%struct.gx_path_s* %ppath) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %psub = alloca %struct.subpath_s*, align 8
  %spp = alloca %struct.subpath_s*, align 8
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %prev22 = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.subpath_s** %spp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 3
  %3 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %cmp = icmp ne %struct.gx_path_segments_s* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %do.body
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 3
  %5 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %5, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %6 = load i64, i64* %ref_count, align 8, !tbaa !18
  %cmp2 = icmp sgt i64 %6, 1
  br i1 %cmp2, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %7 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @path_alloc_copy(%struct.gx_path_s* %8) #4
  store i32 %call, i32* %code_, align 4, !tbaa !17
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load i32, i32* %code_, align 4, !tbaa !17
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %10 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.5

if.end.5:                                         ; preds = %cleanup.cont, %land.lhs.true, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 3
  %12 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments6, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %12, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 1
  %13 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !29
  store %struct.subpath_s* %13, %struct.subpath_s** %psub, align 8, !tbaa !1
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %16 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !22
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !19
  %call8 = call %struct.gs_memory_s* %16(%struct.gs_memory_s* %18) #4
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call8, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 8
  %19 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !25
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %20, i32 0, i32 1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !19
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %stable12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 3
  %22 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable12, align 8, !tbaa !22
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i32 0, i32 1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !19
  %call14 = call %struct.gs_memory_s* %22(%struct.gs_memory_s* %24) #4
  %call15 = call i8* %19(%struct.gs_memory_s* %call14, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_subpath to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)) #4
  %25 = bitcast i8* %call15 to %struct.subpath_s*
  store %struct.subpath_s* %25, %struct.subpath_s** %spp, align 8, !tbaa !1
  %tobool = icmp ne %struct.subpath_s* %25, null
  br i1 %tobool, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %do.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end.17:                                        ; preds = %do.end
  %26 = load %struct.subpath_s*, %struct.subpath_s** %spp, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %26, i32 0, i32 2
  store i16 0, i16* %type, align 2, !tbaa !68
  %27 = load %struct.subpath_s*, %struct.subpath_s** %spp, align 8, !tbaa !1
  %notes = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %27, i32 0, i32 3
  store i16 0, i16* %notes, align 2, !tbaa !69
  %28 = load %struct.subpath_s*, %struct.subpath_s** %spp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %28, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next, align 8, !tbaa !70
  %29 = load %struct.subpath_s*, %struct.subpath_s** %spp, align 8, !tbaa !1
  %30 = bitcast %struct.subpath_s* %29 to %struct.segment_s*
  %31 = load %struct.subpath_s*, %struct.subpath_s** %spp, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %31, i32 0, i32 5
  store %struct.segment_s* %30, %struct.segment_s** %last, align 8, !tbaa !42
  %32 = load %struct.subpath_s*, %struct.subpath_s** %spp, align 8, !tbaa !1
  %curve_count = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %32, i32 0, i32 6
  store i32 0, i32* %curve_count, align 4, !tbaa !71
  %33 = load %struct.subpath_s*, %struct.subpath_s** %spp, align 8, !tbaa !1
  %is_closed = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %33, i32 0, i32 8
  store i8 0, i8* %is_closed, align 1, !tbaa !72
  %34 = load %struct.subpath_s*, %struct.subpath_s** %spp, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %34, i32 0, i32 4
  %35 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %35, i32 0, i32 14
  %36 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  %37 = bitcast %struct.gs_fixed_point_s* %position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 8, i32 4, i1 false), !tbaa.struct !73
  %38 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %tobool18 = icmp ne %struct.subpath_s* %38, null
  br i1 %tobool18, label %if.else, label %if.then.19

if.then.19:                                       ; preds = %if.end.17
  %39 = load %struct.subpath_s*, %struct.subpath_s** %spp, align 8, !tbaa !1
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments20 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %40, i32 0, i32 3
  %41 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments20, align 8, !tbaa !5
  %contents21 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %41, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents21, i32 0, i32 0
  store %struct.subpath_s* %39, %struct.subpath_s** %subpath_first, align 8, !tbaa !30
  %42 = load %struct.subpath_s*, %struct.subpath_s** %spp, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %42, i32 0, i32 0
  store %struct.segment_s* null, %struct.segment_s** %prev, align 8, !tbaa !74
  br label %if.end.26

if.else:                                          ; preds = %if.end.17
  %43 = bitcast %struct.segment_s** %prev22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #2
  %44 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last23 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %44, i32 0, i32 5
  %45 = load %struct.segment_s*, %struct.segment_s** %last23, align 8, !tbaa !42
  store %struct.segment_s* %45, %struct.segment_s** %prev22, align 8, !tbaa !1
  %46 = load %struct.subpath_s*, %struct.subpath_s** %spp, align 8, !tbaa !1
  %47 = bitcast %struct.subpath_s* %46 to %struct.segment_s*
  %48 = load %struct.segment_s*, %struct.segment_s** %prev22, align 8, !tbaa !1
  %next24 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %48, i32 0, i32 1
  store %struct.segment_s* %47, %struct.segment_s** %next24, align 8, !tbaa !63
  %49 = load %struct.segment_s*, %struct.segment_s** %prev22, align 8, !tbaa !1
  %50 = load %struct.subpath_s*, %struct.subpath_s** %spp, align 8, !tbaa !1
  %prev25 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %50, i32 0, i32 0
  store %struct.segment_s* %49, %struct.segment_s** %prev25, align 8, !tbaa !74
  %51 = bitcast %struct.segment_s** %prev22 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.19
  %52 = load %struct.subpath_s*, %struct.subpath_s** %spp, align 8, !tbaa !1
  %53 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments27 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %53, i32 0, i32 3
  %54 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments27, align 8, !tbaa !5
  %contents28 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %54, i32 0, i32 1
  %subpath_current29 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents28, i32 0, i32 1
  store %struct.subpath_s* %52, %struct.subpath_s** %subpath_current29, align 8, !tbaa !29
  %55 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %subpath_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %55, i32 0, i32 12
  %56 = load i32, i32* %subpath_count, align 4, !tbaa !31
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %subpath_count, align 4, !tbaa !31
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.26
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.body.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

cleanup.33:                                       ; preds = %do.end.32, %if.then.16, %cleanup
  %57 = bitcast %struct.subpath_s** %spp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_dash_notes(%struct.gx_path_s* %ppath, i32 %x, i32 %y, i32 %dx, i32 %dy, i32 %notes) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %notes.addr = alloca i32, align 4
  %psub = alloca %struct.subpath_s*, align 8
  %lp = alloca %struct.dash_segment*, align 8
  %cleanup.dest.slot = alloca i32
  %code_ = alloca i32, align 4
  %code_39 = alloca i32, align 4
  %prev = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !17
  store i32 %dy, i32* %dy.addr, align 4, !tbaa !17
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.dash_segment** %lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_set = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 9
  %3 = load i8, i8* %bbox_set, align 1, !tbaa !34
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %x.addr, align 4, !tbaa !17
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %6 = load i32, i32* %x1, align 4, !tbaa !37
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i32, i32* %x.addr, align 4, !tbaa !17
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox2, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %9 = load i32, i32* %x3, align 4, !tbaa !39
  %cmp4 = icmp sgt i32 %7, %9
  br i1 %cmp4, label %if.then.15, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %y.addr, align 4, !tbaa !17
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 5
  %p7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox6, i32 0, i32 0
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p7, i32 0, i32 1
  %12 = load i32, i32* %y8, align 4, !tbaa !38
  %cmp9 = icmp slt i32 %10, %12
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.5
  %13 = load i32, i32* %y.addr, align 4, !tbaa !17
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 5
  %q12 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox11, i32 0, i32 1
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q12, i32 0, i32 1
  %15 = load i32, i32* %y13, align 4, !tbaa !40
  %cmp14 = icmp sgt i32 %13, %15
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false.5, %lor.lhs.false, %if.then
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end:                                           ; preds = %lor.lhs.false.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  br label %do.body

do.body:                                          ; preds = %if.end.16
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %16, i32 0, i32 8
  %17 = load i8, i8* %state_flags, align 1, !tbaa !33
  %conv = zext i8 %17 to i32
  %and = and i32 %conv, 4
  %cmp17 = icmp ne i32 %and, 0
  br i1 %cmp17, label %if.end.31, label %if.then.19

if.then.19:                                       ; preds = %do.body
  %18 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags20 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i32 0, i32 8
  %20 = load i8, i8* %state_flags20, align 1, !tbaa !33
  %conv21 = zext i8 %20 to i32
  %and22 = and i32 %conv21, 1
  %cmp23 = icmp ne i32 %and22, 0
  br i1 %cmp23, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.19
  store i32 -14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.then.19
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_new_subpath(%struct.gx_path_s* %21) #4
  store i32 %call, i32* %code_, align 4, !tbaa !17
  %22 = load i32, i32* %code_, align 4, !tbaa !17
  %cmp27 = icmp slt i32 %22, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %23 = load i32, i32* %code_, align 4, !tbaa !17
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.26
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29, %if.then.25
  %24 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.82 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.31
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.32

do.body.32:                                       ; preds = %do.end
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %25, i32 0, i32 3
  %26 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %cmp33 = icmp ne %struct.gx_path_segments_s* %26, null
  br i1 %cmp33, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %do.body.32
  %27 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments35 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %27, i32 0, i32 3
  %28 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments35, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %28, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %29 = load i64, i64* %ref_count, align 8, !tbaa !18
  %cmp36 = icmp sgt i64 %29, 1
  br i1 %cmp36, label %if.then.38, label %if.end.48

if.then.38:                                       ; preds = %land.lhs.true
  %30 = bitcast i32* %code_39 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call40 = call i32 @path_alloc_copy(%struct.gx_path_s* %31) #4
  store i32 %call40, i32* %code_39, align 4, !tbaa !17
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.38
  %32 = load i32, i32* %code_39, align 4, !tbaa !17
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end.44:                                        ; preds = %if.then.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.45

cleanup.45:                                       ; preds = %if.end.44, %if.then.43
  %33 = bitcast i32* %code_39 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %cleanup.dest.46 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.46, label %cleanup.82 [
    i32 0, label %cleanup.cont.47
  ]

cleanup.cont.47:                                  ; preds = %cleanup.45
  br label %if.end.48

if.end.48:                                        ; preds = %cleanup.cont.47, %land.lhs.true, %do.body.32
  br label %do.cond.49

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  %34 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments51 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %34, i32 0, i32 3
  %35 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments51, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %35, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 1
  %36 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !29
  store %struct.subpath_s* %36, %struct.subpath_s** %psub, align 8, !tbaa !1
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %37, i32 0, i32 1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %39 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !22
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory52 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %40, i32 0, i32 1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory52, align 8, !tbaa !19
  %call53 = call %struct.gs_memory_s* %39(%struct.gs_memory_s* %41) #4
  %procs54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call53, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs54, i32 0, i32 8
  %42 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !25
  %43 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %43, i32 0, i32 1
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory55, align 8, !tbaa !19
  %procs56 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %stable57 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs56, i32 0, i32 3
  %45 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable57, align 8, !tbaa !22
  %46 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory58 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %46, i32 0, i32 1
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory58, align 8, !tbaa !19
  %call59 = call %struct.gs_memory_s* %45(%struct.gs_memory_s* %47) #4
  %call60 = call i8* %42(%struct.gs_memory_s* %call59, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_dash to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)) #4
  %48 = bitcast i8* %call60 to %struct.dash_segment*
  store %struct.dash_segment* %48, %struct.dash_segment** %lp, align 8, !tbaa !1
  %tobool61 = icmp ne %struct.dash_segment* %48, null
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %do.end.50
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end.63:                                        ; preds = %do.end.50
  %49 = load %struct.dash_segment*, %struct.dash_segment** %lp, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %49, i32 0, i32 2
  store i16 4, i16* %type, align 2, !tbaa !75
  %50 = load i32, i32* %notes.addr, align 4, !tbaa !16
  %conv64 = trunc i32 %50 to i16
  %51 = load %struct.dash_segment*, %struct.dash_segment** %lp, align 8, !tbaa !1
  %notes65 = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %51, i32 0, i32 3
  store i16 %conv64, i16* %notes65, align 2, !tbaa !77
  %52 = load %struct.dash_segment*, %struct.dash_segment** %lp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %52, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next, align 8, !tbaa !78
  %53 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #2
  %54 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %54, i32 0, i32 5
  %55 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !42
  store %struct.segment_s* %55, %struct.segment_s** %prev, align 8, !tbaa !1
  %56 = load %struct.dash_segment*, %struct.dash_segment** %lp, align 8, !tbaa !1
  %57 = bitcast %struct.dash_segment* %56 to %struct.segment_s*
  %58 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %next66 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %58, i32 0, i32 1
  store %struct.segment_s* %57, %struct.segment_s** %next66, align 8, !tbaa !63
  %59 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %60 = load %struct.dash_segment*, %struct.dash_segment** %lp, align 8, !tbaa !1
  %prev67 = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %60, i32 0, i32 0
  store %struct.segment_s* %59, %struct.segment_s** %prev67, align 8, !tbaa !79
  %61 = load %struct.dash_segment*, %struct.dash_segment** %lp, align 8, !tbaa !1
  %62 = bitcast %struct.dash_segment* %61 to %struct.segment_s*
  %63 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last68 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %63, i32 0, i32 5
  store %struct.segment_s* %62, %struct.segment_s** %last68, align 8, !tbaa !42
  %64 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = load i32, i32* %x.addr, align 4, !tbaa !17
  %66 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %66, i32 0, i32 14
  %x69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  store i32 %65, i32* %x69, align 4, !tbaa !53
  %67 = load %struct.dash_segment*, %struct.dash_segment** %lp, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %67, i32 0, i32 4
  %x70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  store i32 %65, i32* %x70, align 4, !tbaa !80
  %68 = load i32, i32* %y.addr, align 4, !tbaa !17
  %69 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position71 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %69, i32 0, i32 14
  %y72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position71, i32 0, i32 1
  store i32 %68, i32* %y72, align 4, !tbaa !54
  %70 = load %struct.dash_segment*, %struct.dash_segment** %lp, align 8, !tbaa !1
  %pt73 = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %70, i32 0, i32 4
  %y74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt73, i32 0, i32 1
  store i32 %68, i32* %y74, align 4, !tbaa !81
  %71 = load i32, i32* %dx.addr, align 4, !tbaa !17
  %72 = load %struct.dash_segment*, %struct.dash_segment** %lp, align 8, !tbaa !1
  %tangent = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %72, i32 0, i32 5
  %x75 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 0
  store i32 %71, i32* %x75, align 4, !tbaa !82
  %73 = load i32, i32* %dy.addr, align 4, !tbaa !17
  %74 = load %struct.dash_segment*, %struct.dash_segment** %lp, align 8, !tbaa !1
  %tangent76 = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %74, i32 0, i32 5
  %y77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent76, i32 0, i32 1
  store i32 %73, i32* %y77, align 4, !tbaa !83
  %75 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags78 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %75, i32 0, i32 8
  store i8 7, i8* %state_flags78, align 1, !tbaa !33
  br label %do.body.79

do.body.79:                                       ; preds = %if.end.63
  br label %do.cond.80

do.cond.80:                                       ; preds = %do.body.79
  br label %do.end.81

do.end.81:                                        ; preds = %do.cond.80
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

cleanup.82:                                       ; preds = %do.end.81, %if.then.62, %cleanup.45, %cleanup, %if.then.15
  %76 = bitcast %struct.dash_segment** %lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  %77 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  %78 = load i32, i32* %retval
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_rectangle(%struct.gx_path_s* %ppath, i32 %x0, i32 %y0, i32 %x1, i32 %y1) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %pts = alloca [3 x %struct.gs_fixed_point_s], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !17
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !17
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !17
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !17
  %0 = bitcast [3 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i32, i32* %x0.addr, align 4, !tbaa !17
  %arrayidx = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %2, i32* %x, align 4, !tbaa !58
  %3 = load i32, i32* %x1.addr, align 4, !tbaa !17
  %arrayidx1 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 2
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx1, i32 0, i32 0
  store i32 %3, i32* %x2, align 4, !tbaa !58
  %arrayidx3 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 1
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx3, i32 0, i32 0
  store i32 %3, i32* %x4, align 4, !tbaa !58
  %4 = load i32, i32* %y0.addr, align 4, !tbaa !17
  %arrayidx5 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx5, i32 0, i32 1
  store i32 %4, i32* %y, align 4, !tbaa !59
  %5 = load i32, i32* %y1.addr, align 4, !tbaa !17
  %arrayidx6 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 1
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx6, i32 0, i32 1
  store i32 %5, i32* %y7, align 4, !tbaa !59
  %arrayidx8 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx8, i32 0, i32 1
  store i32 %5, i32* %y9, align 4, !tbaa !59
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %7 = load i32, i32* %x0.addr, align 4, !tbaa !17
  %8 = load i32, i32* %y0.addr, align 4, !tbaa !17
  %call = call i32 @gx_path_add_point(%struct.gx_path_s* %6, i32 %7, i32 %8) #4
  store i32 %call, i32* %code, align 4, !tbaa !17
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i32 0
  %call10 = call i32 @gx_path_add_lines_notes(%struct.gx_path_s* %9, %struct.gs_fixed_point_s* %arraydecay, i32 3, i32 0) #4
  store i32 %call10, i32* %code, align 4, !tbaa !17
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call13 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %10, i32 0) #4
  store i32 %call13, i32* %code, align 4, !tbaa !17
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.12, %lor.lhs.false, %entry
  %11 = load i32, i32* %code, align 4, !tbaa !17
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast [3 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.end(i64 24, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %ppath, i32 %notes) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %notes.addr = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 15
  %1 = load %struct.gx_path_procs_s*, %struct.gx_path_procs_s** %procs, align 8, !tbaa !21
  %close_subpath = getelementptr inbounds %struct.gx_path_procs_s, %struct.gx_path_procs_s* %1, i32 0, i32 4
  %2 = load i32 (%struct.gx_path_s*, i32)*, i32 (%struct.gx_path_s*, i32)** %close_subpath, align 8, !tbaa !84
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %4 = load i32, i32* %notes.addr, align 4, !tbaa !16
  %call = call i32 %2(%struct.gx_path_s* %3, i32 %4) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_curve_notes(%struct.gx_path_s* %ppath, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %x3, i32 %y3, i32 %notes) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %x3.addr = alloca i32, align 4
  %y3.addr = alloca i32, align 4
  %notes.addr = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !17
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !17
  store i32 %x2, i32* %x2.addr, align 4, !tbaa !17
  store i32 %y2, i32* %y2.addr, align 4, !tbaa !17
  store i32 %x3, i32* %x3.addr, align 4, !tbaa !17
  store i32 %y3, i32* %y3.addr, align 4, !tbaa !17
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 15
  %1 = load %struct.gx_path_procs_s*, %struct.gx_path_procs_s** %procs, align 8, !tbaa !21
  %add_curve = getelementptr inbounds %struct.gx_path_procs_s, %struct.gx_path_procs_s* %1, i32 0, i32 3
  %2 = load i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)** %add_curve, align 8, !tbaa !85
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %4 = load i32, i32* %x1.addr, align 4, !tbaa !17
  %5 = load i32, i32* %y1.addr, align 4, !tbaa !17
  %6 = load i32, i32* %x2.addr, align 4, !tbaa !17
  %7 = load i32, i32* %y2.addr, align 4, !tbaa !17
  %8 = load i32, i32* %x3.addr, align 4, !tbaa !17
  %9 = load i32, i32* %y3.addr, align 4, !tbaa !17
  %10 = load i32, i32* %notes.addr, align 4, !tbaa !16
  %call = call i32 %2(%struct.gx_path_s* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_partial_arc_notes(%struct.gx_path_s* %ppath, i32 %x3, i32 %y3, i32 %xt, i32 %yt, double %fraction, i32 %notes) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x3.addr = alloca i32, align 4
  %y3.addr = alloca i32, align 4
  %xt.addr = alloca i32, align 4
  %yt.addr = alloca i32, align 4
  %fraction.addr = alloca double, align 8
  %notes.addr = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x3, i32* %x3.addr, align 4, !tbaa !17
  store i32 %y3, i32* %y3.addr, align 4, !tbaa !17
  store i32 %xt, i32* %xt.addr, align 4, !tbaa !17
  store i32 %yt, i32* %yt.addr, align 4, !tbaa !17
  store double %fraction, double* %fraction.addr, align 8, !tbaa !86
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 14
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !53
  store i32 %2, i32* %x0, align 4, !tbaa !17
  %3 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 14
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position1, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !54
  store i32 %5, i32* %y0, align 4, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %7 = load i32, i32* %x0, align 4, !tbaa !17
  %8 = load i32, i32* %xt.addr, align 4, !tbaa !17
  %9 = load i32, i32* %x0, align 4, !tbaa !17
  %sub = sub nsw i32 %8, %9
  %conv = sitofp i32 %sub to double
  %10 = load double, double* %fraction.addr, align 8, !tbaa !86
  %mul = fmul double %conv, %10
  %conv2 = fptosi double %mul to i32
  %add = add nsw i32 %7, %conv2
  %11 = load i32, i32* %y0, align 4, !tbaa !17
  %12 = load i32, i32* %yt.addr, align 4, !tbaa !17
  %13 = load i32, i32* %y0, align 4, !tbaa !17
  %sub3 = sub nsw i32 %12, %13
  %conv4 = sitofp i32 %sub3 to double
  %14 = load double, double* %fraction.addr, align 8, !tbaa !86
  %mul5 = fmul double %conv4, %14
  %conv6 = fptosi double %mul5 to i32
  %add7 = add nsw i32 %11, %conv6
  %15 = load i32, i32* %x3.addr, align 4, !tbaa !17
  %16 = load i32, i32* %xt.addr, align 4, !tbaa !17
  %17 = load i32, i32* %x3.addr, align 4, !tbaa !17
  %sub8 = sub nsw i32 %16, %17
  %conv9 = sitofp i32 %sub8 to double
  %18 = load double, double* %fraction.addr, align 8, !tbaa !86
  %mul10 = fmul double %conv9, %18
  %conv11 = fptosi double %mul10 to i32
  %add12 = add nsw i32 %15, %conv11
  %19 = load i32, i32* %y3.addr, align 4, !tbaa !17
  %20 = load i32, i32* %yt.addr, align 4, !tbaa !17
  %21 = load i32, i32* %y3.addr, align 4, !tbaa !17
  %sub13 = sub nsw i32 %20, %21
  %conv14 = sitofp i32 %sub13 to double
  %22 = load double, double* %fraction.addr, align 8, !tbaa !86
  %mul15 = fmul double %conv14, %22
  %conv16 = fptosi double %mul15 to i32
  %add17 = add nsw i32 %19, %conv16
  %23 = load i32, i32* %x3.addr, align 4, !tbaa !17
  %24 = load i32, i32* %y3.addr, align 4, !tbaa !17
  %25 = load i32, i32* %notes.addr, align 4, !tbaa !16
  %or = or i32 %25, 2
  %call = call i32 @gx_path_add_curve_notes(%struct.gx_path_s* %6, i32 %add, i32 %add7, i32 %add12, i32 %add17, i32 %23, i32 %24, i32 %or) #4
  %26 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_path(%struct.gx_path_s* %ppath, %struct.gx_path_s* %ppfrom) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %ppfrom.addr = alloca %struct.gx_path_s*, align 8
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code_15 = alloca i32, align 4
  %psub = alloca %struct.subpath_s*, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %pfsub = alloca %struct.subpath_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppfrom, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 3
  %1 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %cmp = icmp ne %struct.gx_path_segments_s* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %segments1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 3
  %3 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %3, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %4 = load i64, i64* %ref_count, align 8, !tbaa !18
  %cmp2 = icmp sgt i64 %4, 1
  br i1 %cmp2, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %5 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %call = call i32 @path_alloc_copy(%struct.gx_path_s* %6) #4
  store i32 %call, i32* %code_, align 4, !tbaa !17
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load i32, i32* %code_, align 4, !tbaa !17
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %8 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.5

if.end.5:                                         ; preds = %cleanup.cont, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.5
  br label %do.body.6

do.body.6:                                        ; preds = %do.end
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 3
  %10 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments7, align 8, !tbaa !5
  %cmp8 = icmp ne %struct.gx_path_segments_s* %10, null
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.23

land.lhs.true.9:                                  ; preds = %do.body.6
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 3
  %12 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments10, align 8, !tbaa !5
  %rc11 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %12, i32 0, i32 0
  %ref_count12 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc11, i32 0, i32 0
  %13 = load i64, i64* %ref_count12, align 8, !tbaa !18
  %cmp13 = icmp sgt i64 %13, 1
  br i1 %cmp13, label %if.then.14, label %if.end.23

if.then.14:                                       ; preds = %land.lhs.true.9
  %14 = bitcast i32* %code_15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call16 = call i32 @path_alloc_copy(%struct.gx_path_s* %15) #4
  store i32 %call16, i32* %code_15, align 4, !tbaa !17
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.14
  %16 = load i32, i32* %code_15, align 4, !tbaa !17
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.20

if.end.19:                                        ; preds = %if.then.14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.20

cleanup.20:                                       ; preds = %if.end.19, %if.then.18
  %17 = bitcast i32* %code_15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %cleanup.dest.21 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.21, label %unreachable [
    i32 0, label %cleanup.cont.22
    i32 1, label %return
  ]

cleanup.cont.22:                                  ; preds = %cleanup.20
  br label %if.end.23

if.end.23:                                        ; preds = %cleanup.cont.22, %land.lhs.true.9, %do.body.6
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %segments25 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 3
  %19 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments25, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %19, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %20 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !30
  %tobool = icmp ne %struct.subpath_s* %20, null
  br i1 %tobool, label %if.then.26, label %if.end.53

if.then.26:                                       ; preds = %do.end.24
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments27 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %21, i32 0, i32 3
  %22 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments27, align 8, !tbaa !5
  %contents28 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %22, i32 0, i32 1
  %subpath_first29 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents28, i32 0, i32 0
  %23 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first29, align 8, !tbaa !30
  %tobool30 = icmp ne %struct.subpath_s* %23, null
  br i1 %tobool30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.then.26
  %24 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments32 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %25, i32 0, i32 3
  %26 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments32, align 8, !tbaa !5
  %contents33 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %26, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents33, i32 0, i32 1
  %27 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !29
  store %struct.subpath_s* %27, %struct.subpath_s** %psub, align 8, !tbaa !1
  %28 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %29 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %29, i32 0, i32 5
  %30 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !42
  store %struct.segment_s* %30, %struct.segment_s** %pseg, align 8, !tbaa !1
  %31 = bitcast %struct.subpath_s** %pfsub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %32 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %segments34 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %32, i32 0, i32 3
  %33 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments34, align 8, !tbaa !5
  %contents35 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %33, i32 0, i32 1
  %subpath_first36 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents35, i32 0, i32 0
  %34 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first36, align 8, !tbaa !30
  store %struct.subpath_s* %34, %struct.subpath_s** %pfsub, align 8, !tbaa !1
  %35 = load %struct.subpath_s*, %struct.subpath_s** %pfsub, align 8, !tbaa !1
  %36 = bitcast %struct.subpath_s* %35 to %struct.segment_s*
  %37 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %37, i32 0, i32 1
  store %struct.segment_s* %36, %struct.segment_s** %next, align 8, !tbaa !63
  %38 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %39 = load %struct.subpath_s*, %struct.subpath_s** %pfsub, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %39, i32 0, i32 0
  store %struct.segment_s* %38, %struct.segment_s** %prev, align 8, !tbaa !74
  %40 = bitcast %struct.subpath_s** %pfsub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  br label %if.end.43

if.else:                                          ; preds = %if.then.26
  %43 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %segments37 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %43, i32 0, i32 3
  %44 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments37, align 8, !tbaa !5
  %contents38 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %44, i32 0, i32 1
  %subpath_first39 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents38, i32 0, i32 0
  %45 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first39, align 8, !tbaa !30
  %46 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments40 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %46, i32 0, i32 3
  %47 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments40, align 8, !tbaa !5
  %contents41 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %47, i32 0, i32 1
  %subpath_first42 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents41, i32 0, i32 0
  store %struct.subpath_s* %45, %struct.subpath_s** %subpath_first42, align 8, !tbaa !30
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.31
  %48 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %segments44 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %48, i32 0, i32 3
  %49 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments44, align 8, !tbaa !5
  %contents45 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %49, i32 0, i32 1
  %subpath_current46 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents45, i32 0, i32 1
  %50 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current46, align 8, !tbaa !29
  %51 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments47 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %51, i32 0, i32 3
  %52 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments47, align 8, !tbaa !5
  %contents48 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %52, i32 0, i32 1
  %subpath_current49 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents48, i32 0, i32 1
  store %struct.subpath_s* %50, %struct.subpath_s** %subpath_current49, align 8, !tbaa !29
  %53 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %subpath_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %53, i32 0, i32 12
  %54 = load i32, i32* %subpath_count, align 4, !tbaa !31
  %55 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %subpath_count50 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %55, i32 0, i32 12
  %56 = load i32, i32* %subpath_count50, align 4, !tbaa !31
  %add = add nsw i32 %56, %54
  store i32 %add, i32* %subpath_count50, align 4, !tbaa !31
  %57 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %curve_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %57, i32 0, i32 13
  %58 = load i32, i32* %curve_count, align 4, !tbaa !32
  %59 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %curve_count51 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %59, i32 0, i32 13
  %60 = load i32, i32* %curve_count51, align 4, !tbaa !32
  %add52 = add nsw i32 %60, %58
  store i32 %add52, i32* %curve_count51, align 4, !tbaa !32
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.43, %do.end.24
  %61 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %61, i32 0, i32 14
  %62 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %position54 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %62, i32 0, i32 14
  %63 = bitcast %struct.gs_fixed_point_s* %position to i8*
  %64 = bitcast %struct.gs_fixed_point_s* %position54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 8, i32 4, i1 false), !tbaa.struct !73
  %65 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %65, i32 0, i32 8
  %66 = load i8, i8* %state_flags, align 1, !tbaa !33
  %67 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags55 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %67, i32 0, i32 8
  store i8 %66, i8* %state_flags55, align 1, !tbaa !33
  %68 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8, !tbaa !1
  call void @gx_path_init_contents(%struct.gx_path_s* %68) #4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %cleanup.20, %cleanup
  %69 = load i32, i32* %retval
  ret i32 %69

unreachable:                                      ; preds = %cleanup.20, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_char_path(%struct.gx_path_s* %to_path, %struct.gx_path_s* %from_path, i32 %mode) #1 {
entry:
  %retval = alloca i32, align 4
  %to_path.addr = alloca %struct.gx_path_s*, align 8
  %from_path.addr = alloca %struct.gx_path_s*, align 8
  %mode.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %bbox = alloca %struct.gs_fixed_rect_s, align 4
  %cleanup.dest.slot = alloca i32
  %cpt = alloca %struct.gs_fixed_point_s, align 4
  store %struct.gx_path_s* %to_path, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %from_path, %struct.gx_path_s** %from_path.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !16
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = load i32, i32* %mode.addr, align 4, !tbaa !16
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.3
    i32 2, label %sw.bb.3
    i32 5, label %sw.bb.5
    i32 4, label %sw.bb.14
  ]

sw.default:                                       ; preds = %entry
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %from_path.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_new(%struct.gx_path_s* %3) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

sw.bb:                                            ; preds = %entry
  %4 = bitcast %struct.gs_fixed_point_s* %cpt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %from_path.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_path_current_point(%struct.gx_path_s* %5, %struct.gs_fixed_point_s* %cpt) #4
  store i32 %call1, i32* %code, align 4, !tbaa !17
  %6 = load i32, i32* %code, align 4, !tbaa !17
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  %8 = load i32, i32* %x, align 4, !tbaa !58
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  %9 = load i32, i32* %y, align 4, !tbaa !59
  %call2 = call i32 @gx_path_add_point(%struct.gx_path_s* %7, i32 %8, i32 %9) #4
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct.gs_fixed_point_s* %cpt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.33 [
    i32 2, label %sw.epilog
  ]

sw.bb.3:                                          ; preds = %entry, %entry
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %from_path.addr, align 8, !tbaa !1
  %call4 = call i32 @gx_path_add_path(%struct.gx_path_s* %11, %struct.gx_path_s* %12) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

sw.bb.5:                                          ; preds = %entry
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %from_path.addr, align 8, !tbaa !1
  %call6 = call i32 @gx_path_bbox(%struct.gx_path_s* %13, %struct.gs_fixed_rect_s* %bbox) #4
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %15 = load i32, i32* %x7, align 4, !tbaa !88
  %p8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p8, i32 0, i32 1
  %16 = load i32, i32* %y9, align 4, !tbaa !89
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %17 = load i32, i32* %x10, align 4, !tbaa !90
  %q11 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q11, i32 0, i32 1
  %18 = load i32, i32* %y12, align 4, !tbaa !91
  %call13 = call i32 @gx_path_add_rectangle(%struct.gx_path_s* %14, i32 %15, i32 %16, i32 %17, i32 %18) #4
  store i32 %call13, i32* %code, align 4, !tbaa !17
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %from_path.addr, align 8, !tbaa !1
  %call15 = call i32 @gx_path_bbox(%struct.gx_path_s* %19, %struct.gs_fixed_rect_s* %bbox) #4
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %p16 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p16, i32 0, i32 0
  %21 = load i32, i32* %x17, align 4, !tbaa !88
  %p18 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p18, i32 0, i32 1
  %22 = load i32, i32* %y19, align 4, !tbaa !89
  %call20 = call i32 @gx_path_add_point(%struct.gx_path_s* %20, i32 %21, i32 %22) #4
  store i32 %call20, i32* %code, align 4, !tbaa !17
  %23 = load i32, i32* %code, align 4, !tbaa !17
  %cmp21 = icmp sge i32 %23, 0
  br i1 %cmp21, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %sw.bb.14
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %q23 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q23, i32 0, i32 0
  %25 = load i32, i32* %x24, align 4, !tbaa !90
  %q25 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q25, i32 0, i32 1
  %26 = load i32, i32* %y26, align 4, !tbaa !91
  %call27 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %24, i32 %25, i32 %26, i32 0) #4
  store i32 %call27, i32* %code, align 4, !tbaa !17
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.22, %sw.bb.14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.28, %sw.bb.5, %cleanup
  %27 = load i32, i32* %code, align 4, !tbaa !17
  %cmp29 = icmp slt i32 %27, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %sw.epilog
  %28 = load i32, i32* %code, align 4, !tbaa !17
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end.31:                                        ; preds = %sw.epilog
  %29 = load %struct.gx_path_s*, %struct.gx_path_s** %from_path.addr, align 8, !tbaa !1
  %call32 = call i32 @gx_path_new(%struct.gx_path_s* %29) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

cleanup.33:                                       ; preds = %if.end.31, %if.then.30, %sw.bb.3, %cleanup, %sw.default
  %30 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %30) #2
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @gx_path_current_point(%struct.gx_path_s*, %struct.gs_fixed_point_s*) #0

declare i32 @gx_path_bbox(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #0

; Function Attrs: nounwind uwtable
define zeroext i8 @gx_path_get_state_flags(%struct.gx_path_s* %ppath) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %flags = alloca i8, align 1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %flags) #2
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 15
  %1 = load %struct.gx_path_procs_s*, %struct.gx_path_procs_s** %procs, align 8, !tbaa !21
  %state_flags = getelementptr inbounds %struct.gx_path_procs_s, %struct.gx_path_procs_s* %1, i32 0, i32 5
  %2 = load i8 (%struct.gx_path_s*, i8)*, i8 (%struct.gx_path_s*, i8)** %state_flags, align 8, !tbaa !92
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call zeroext i8 %2(%struct.gx_path_s* %3, i8 zeroext 0) #4
  store i8 %call, i8* %flags, align 1, !tbaa !16
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 15
  %5 = load %struct.gx_path_procs_s*, %struct.gx_path_procs_s** %procs1, align 8, !tbaa !21
  %state_flags2 = getelementptr inbounds %struct.gx_path_procs_s, %struct.gx_path_procs_s* %5, i32 0, i32 5
  %6 = load i8 (%struct.gx_path_s*, i8)*, i8 (%struct.gx_path_s*, i8)** %state_flags2, align 8, !tbaa !92
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %8 = load i8, i8* %flags, align 1, !tbaa !16
  %call3 = call zeroext i8 %6(%struct.gx_path_s* %7, i8 zeroext %8) #4
  %9 = load i8, i8* %flags, align 1, !tbaa !16
  call void @llvm.lifetime.end(i64 1, i8* %flags) #2
  ret i8 %9
}

; Function Attrs: nounwind uwtable
define void @gx_path_set_state_flags(%struct.gx_path_s* %ppath, i8 zeroext %flags) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %flags.addr = alloca i8, align 1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i8 %flags, i8* %flags.addr, align 1, !tbaa !16
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 15
  %1 = load %struct.gx_path_procs_s*, %struct.gx_path_procs_s** %procs, align 8, !tbaa !21
  %state_flags = getelementptr inbounds %struct.gx_path_procs_s, %struct.gx_path_procs_s* %1, i32 0, i32 5
  %2 = load i8 (%struct.gx_path_s*, i8)*, i8 (%struct.gx_path_s*, i8)** %state_flags, align 8, !tbaa !92
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %4 = load i8, i8* %flags.addr, align 1, !tbaa !16
  %call = call zeroext i8 %2(%struct.gx_path_s* %3, i8 zeroext %4) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_is_drawing(%struct.gx_path_s* %ppath) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 8
  %1 = load i8, i8* %state_flags, align 1, !tbaa !33
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 4
  %cmp = icmp ne i32 %and, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_pop_close_notes(%struct.gx_path_s* %ppath, i32 %notes) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %notes.addr = alloca i32, align 4
  %psub = alloca %struct.subpath_s*, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %prev = alloca %struct.segment_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %2, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 1
  %3 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !29
  store %struct.subpath_s* %3, %struct.subpath_s** %psub, align 8, !tbaa !1
  %4 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %cmp = icmp eq %struct.subpath_s* %6, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %7, i32 0, i32 5
  %8 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !42
  store %struct.segment_s* %8, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.segment_s* %8, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %9 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %9, i32 0, i32 2
  %10 = load i16, i16* %type, align 2, !tbaa !93
  %conv = zext i16 %10 to i32
  %cmp3 = icmp ne i32 %conv, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.2
  %11 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %prev5 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %11, i32 0, i32 0
  %12 = load %struct.segment_s*, %struct.segment_s** %prev5, align 8, !tbaa !46
  store %struct.segment_s* %12, %struct.segment_s** %prev, align 8, !tbaa !1
  %13 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %13, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next, align 8, !tbaa !63
  %14 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %15 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last6 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %15, i32 0, i32 5
  store %struct.segment_s* %14, %struct.segment_s** %last6, align 8, !tbaa !42
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %16, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !41
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i32 0, i32 1
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !19
  %21 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %22 = bitcast %struct.segment_s* %21 to i8*
  call void %18(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)) #4
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %24 = load i32, i32* %notes.addr, align 4, !tbaa !16
  %call = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %23, i32 %24) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %25 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #0

; Function Attrs: nounwind uwtable
define internal void @rc_free_path_segments(%struct.gs_memory_s* %mem, i8* %vpsegs, i8* %cname) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vpsegs.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vpsegs, i8** %vpsegs.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %vpsegs.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @rc_free_path_segments_local(%struct.gs_memory_s* %0, i8* %1, i8* %2) #4
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %4 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !41
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %vpsegs.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %4(%struct.gs_memory_s* %5, i8* %6, i8* %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gz_path_add_point(%struct.gx_path_s* %ppath, i32 %x, i32 %y) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_set = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 9
  %1 = load i8, i8* %bbox_set, align 1, !tbaa !34
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4, !tbaa !17
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %4 = load i32, i32* %x1, align 4, !tbaa !37
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i32, i32* %x.addr, align 4, !tbaa !17
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox2, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %7 = load i32, i32* %x3, align 4, !tbaa !39
  %cmp4 = icmp sgt i32 %5, %7
  br i1 %cmp4, label %if.then.15, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %y.addr, align 4, !tbaa !17
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 5
  %p7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox6, i32 0, i32 0
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p7, i32 0, i32 1
  %10 = load i32, i32* %y8, align 4, !tbaa !38
  %cmp9 = icmp slt i32 %8, %10
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.5
  %11 = load i32, i32* %y.addr, align 4, !tbaa !17
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 5
  %q12 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox11, i32 0, i32 1
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q12, i32 0, i32 1
  %13 = load i32, i32* %y13, align 4, !tbaa !40
  %cmp14 = icmp sgt i32 %11, %13
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false.5, %lor.lhs.false, %if.then
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  %14 = load i32, i32* %x.addr, align 4, !tbaa !17
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 14
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  store i32 %14, i32* %x17, align 4, !tbaa !53
  %16 = load i32, i32* %y.addr, align 4, !tbaa !17
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position18 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 14
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position18, i32 0, i32 1
  store i32 %16, i32* %y19, align 4, !tbaa !54
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %start_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 7
  store i8 3, i8* %start_flags, align 1, !tbaa !55
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i32 0, i32 8
  store i8 3, i8* %state_flags, align 1, !tbaa !33
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @gz_path_add_line_notes(%struct.gx_path_s* %ppath, i32 %x, i32 %y, i32 %notes) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %notes.addr = alloca i32, align 4
  %psub = alloca %struct.subpath_s*, align 8
  %lp = alloca %struct.line_segment*, align 8
  %cleanup.dest.slot = alloca i32
  %code_ = alloca i32, align 4
  %code_39 = alloca i32, align 4
  %prev = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.line_segment** %lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_set = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 9
  %3 = load i8, i8* %bbox_set, align 1, !tbaa !34
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %x.addr, align 4, !tbaa !17
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %6 = load i32, i32* %x1, align 4, !tbaa !37
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i32, i32* %x.addr, align 4, !tbaa !17
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox2, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %9 = load i32, i32* %x3, align 4, !tbaa !39
  %cmp4 = icmp sgt i32 %7, %9
  br i1 %cmp4, label %if.then.15, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %y.addr, align 4, !tbaa !17
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 5
  %p7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox6, i32 0, i32 0
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p7, i32 0, i32 1
  %12 = load i32, i32* %y8, align 4, !tbaa !38
  %cmp9 = icmp slt i32 %10, %12
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.5
  %13 = load i32, i32* %y.addr, align 4, !tbaa !17
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 5
  %q12 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox11, i32 0, i32 1
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q12, i32 0, i32 1
  %15 = load i32, i32* %y13, align 4, !tbaa !40
  %cmp14 = icmp sgt i32 %13, %15
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false.5, %lor.lhs.false, %if.then
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.end:                                           ; preds = %lor.lhs.false.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  br label %do.body

do.body:                                          ; preds = %if.end.16
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %16, i32 0, i32 8
  %17 = load i8, i8* %state_flags, align 1, !tbaa !33
  %conv = zext i8 %17 to i32
  %and = and i32 %conv, 4
  %cmp17 = icmp ne i32 %and, 0
  br i1 %cmp17, label %if.end.31, label %if.then.19

if.then.19:                                       ; preds = %do.body
  %18 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags20 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i32 0, i32 8
  %20 = load i8, i8* %state_flags20, align 1, !tbaa !33
  %conv21 = zext i8 %20 to i32
  %and22 = and i32 %conv21, 1
  %cmp23 = icmp ne i32 %and22, 0
  br i1 %cmp23, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.19
  store i32 -14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.then.19
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_new_subpath(%struct.gx_path_s* %21) #4
  store i32 %call, i32* %code_, align 4, !tbaa !17
  %22 = load i32, i32* %code_, align 4, !tbaa !17
  %cmp27 = icmp slt i32 %22, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %23 = load i32, i32* %code_, align 4, !tbaa !17
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.26
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29, %if.then.25
  %24 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.79 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.31
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.32

do.body.32:                                       ; preds = %do.end
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %25, i32 0, i32 3
  %26 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %cmp33 = icmp ne %struct.gx_path_segments_s* %26, null
  br i1 %cmp33, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %do.body.32
  %27 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments35 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %27, i32 0, i32 3
  %28 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments35, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %28, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %29 = load i64, i64* %ref_count, align 8, !tbaa !18
  %cmp36 = icmp sgt i64 %29, 1
  br i1 %cmp36, label %if.then.38, label %if.end.48

if.then.38:                                       ; preds = %land.lhs.true
  %30 = bitcast i32* %code_39 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call40 = call i32 @path_alloc_copy(%struct.gx_path_s* %31) #4
  store i32 %call40, i32* %code_39, align 4, !tbaa !17
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.38
  %32 = load i32, i32* %code_39, align 4, !tbaa !17
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end.44:                                        ; preds = %if.then.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.45

cleanup.45:                                       ; preds = %if.end.44, %if.then.43
  %33 = bitcast i32* %code_39 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %cleanup.dest.46 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.46, label %cleanup.79 [
    i32 0, label %cleanup.cont.47
  ]

cleanup.cont.47:                                  ; preds = %cleanup.45
  br label %if.end.48

if.end.48:                                        ; preds = %cleanup.cont.47, %land.lhs.true, %do.body.32
  br label %do.cond.49

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  %34 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments51 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %34, i32 0, i32 3
  %35 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments51, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %35, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 1
  %36 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !29
  store %struct.subpath_s* %36, %struct.subpath_s** %psub, align 8, !tbaa !1
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %37, i32 0, i32 1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %39 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !22
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory52 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %40, i32 0, i32 1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory52, align 8, !tbaa !19
  %call53 = call %struct.gs_memory_s* %39(%struct.gs_memory_s* %41) #4
  %procs54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call53, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs54, i32 0, i32 8
  %42 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !25
  %43 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %43, i32 0, i32 1
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory55, align 8, !tbaa !19
  %procs56 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %stable57 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs56, i32 0, i32 3
  %45 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable57, align 8, !tbaa !22
  %46 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory58 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %46, i32 0, i32 1
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory58, align 8, !tbaa !19
  %call59 = call %struct.gs_memory_s* %45(%struct.gs_memory_s* %47) #4
  %call60 = call i8* %42(%struct.gs_memory_s* %call59, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_line to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)) #4
  %48 = bitcast i8* %call60 to %struct.line_segment*
  store %struct.line_segment* %48, %struct.line_segment** %lp, align 8, !tbaa !1
  %tobool61 = icmp ne %struct.line_segment* %48, null
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %do.end.50
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.end.63:                                        ; preds = %do.end.50
  %49 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.line_segment, %struct.line_segment* %49, i32 0, i32 2
  store i16 1, i16* %type, align 2, !tbaa !60
  %50 = load i32, i32* %notes.addr, align 4, !tbaa !16
  %conv64 = trunc i32 %50 to i16
  %51 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %notes65 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %51, i32 0, i32 3
  store i16 %conv64, i16* %notes65, align 2, !tbaa !62
  %52 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.line_segment, %struct.line_segment* %52, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next, align 8, !tbaa !67
  %53 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #2
  %54 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %54, i32 0, i32 5
  %55 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !42
  store %struct.segment_s* %55, %struct.segment_s** %prev, align 8, !tbaa !1
  %56 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %57 = bitcast %struct.line_segment* %56 to %struct.segment_s*
  %58 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %next66 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %58, i32 0, i32 1
  store %struct.segment_s* %57, %struct.segment_s** %next66, align 8, !tbaa !63
  %59 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %60 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %prev67 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %60, i32 0, i32 0
  store %struct.segment_s* %59, %struct.segment_s** %prev67, align 8, !tbaa !64
  %61 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %62 = bitcast %struct.line_segment* %61 to %struct.segment_s*
  %63 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last68 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %63, i32 0, i32 5
  store %struct.segment_s* %62, %struct.segment_s** %last68, align 8, !tbaa !42
  %64 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = load i32, i32* %x.addr, align 4, !tbaa !17
  %66 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %66, i32 0, i32 14
  %x69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  store i32 %65, i32* %x69, align 4, !tbaa !53
  %67 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.line_segment, %struct.line_segment* %67, i32 0, i32 4
  %x70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  store i32 %65, i32* %x70, align 4, !tbaa !65
  %68 = load i32, i32* %y.addr, align 4, !tbaa !17
  %69 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position71 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %69, i32 0, i32 14
  %y72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position71, i32 0, i32 1
  store i32 %68, i32* %y72, align 4, !tbaa !54
  %70 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %pt73 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %70, i32 0, i32 4
  %y74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt73, i32 0, i32 1
  store i32 %68, i32* %y74, align 4, !tbaa !66
  %71 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags75 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %71, i32 0, i32 8
  store i8 7, i8* %state_flags75, align 1, !tbaa !33
  br label %do.body.76

do.body.76:                                       ; preds = %if.end.63
  br label %do.cond.77

do.cond.77:                                       ; preds = %do.body.76
  br label %do.end.78

do.end.78:                                        ; preds = %do.cond.77
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

cleanup.79:                                       ; preds = %do.end.78, %if.then.62, %cleanup.45, %cleanup, %if.then.15
  %72 = bitcast %struct.line_segment** %lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @gz_path_add_gap_notes(%struct.gx_path_s* %ppath, i32 %x, i32 %y, i32 %notes) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %notes.addr = alloca i32, align 4
  %psub = alloca %struct.subpath_s*, align 8
  %lp = alloca %struct.line_segment*, align 8
  %cleanup.dest.slot = alloca i32
  %code_ = alloca i32, align 4
  %code_39 = alloca i32, align 4
  %prev = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.line_segment** %lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_set = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 9
  %3 = load i8, i8* %bbox_set, align 1, !tbaa !34
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %x.addr, align 4, !tbaa !17
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %6 = load i32, i32* %x1, align 4, !tbaa !37
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i32, i32* %x.addr, align 4, !tbaa !17
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox2, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %9 = load i32, i32* %x3, align 4, !tbaa !39
  %cmp4 = icmp sgt i32 %7, %9
  br i1 %cmp4, label %if.then.15, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %y.addr, align 4, !tbaa !17
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 5
  %p7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox6, i32 0, i32 0
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p7, i32 0, i32 1
  %12 = load i32, i32* %y8, align 4, !tbaa !38
  %cmp9 = icmp slt i32 %10, %12
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.5
  %13 = load i32, i32* %y.addr, align 4, !tbaa !17
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 5
  %q12 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox11, i32 0, i32 1
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q12, i32 0, i32 1
  %15 = load i32, i32* %y13, align 4, !tbaa !40
  %cmp14 = icmp sgt i32 %13, %15
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false.5, %lor.lhs.false, %if.then
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.end:                                           ; preds = %lor.lhs.false.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  br label %do.body

do.body:                                          ; preds = %if.end.16
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %16, i32 0, i32 8
  %17 = load i8, i8* %state_flags, align 1, !tbaa !33
  %conv = zext i8 %17 to i32
  %and = and i32 %conv, 4
  %cmp17 = icmp ne i32 %and, 0
  br i1 %cmp17, label %if.end.31, label %if.then.19

if.then.19:                                       ; preds = %do.body
  %18 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags20 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i32 0, i32 8
  %20 = load i8, i8* %state_flags20, align 1, !tbaa !33
  %conv21 = zext i8 %20 to i32
  %and22 = and i32 %conv21, 1
  %cmp23 = icmp ne i32 %and22, 0
  br i1 %cmp23, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.19
  store i32 -14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.then.19
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_new_subpath(%struct.gx_path_s* %21) #4
  store i32 %call, i32* %code_, align 4, !tbaa !17
  %22 = load i32, i32* %code_, align 4, !tbaa !17
  %cmp27 = icmp slt i32 %22, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %23 = load i32, i32* %code_, align 4, !tbaa !17
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.26
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29, %if.then.25
  %24 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.79 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.31
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.32

do.body.32:                                       ; preds = %do.end
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %25, i32 0, i32 3
  %26 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %cmp33 = icmp ne %struct.gx_path_segments_s* %26, null
  br i1 %cmp33, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %do.body.32
  %27 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments35 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %27, i32 0, i32 3
  %28 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments35, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %28, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %29 = load i64, i64* %ref_count, align 8, !tbaa !18
  %cmp36 = icmp sgt i64 %29, 1
  br i1 %cmp36, label %if.then.38, label %if.end.48

if.then.38:                                       ; preds = %land.lhs.true
  %30 = bitcast i32* %code_39 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call40 = call i32 @path_alloc_copy(%struct.gx_path_s* %31) #4
  store i32 %call40, i32* %code_39, align 4, !tbaa !17
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.38
  %32 = load i32, i32* %code_39, align 4, !tbaa !17
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end.44:                                        ; preds = %if.then.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.45

cleanup.45:                                       ; preds = %if.end.44, %if.then.43
  %33 = bitcast i32* %code_39 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %cleanup.dest.46 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.46, label %cleanup.79 [
    i32 0, label %cleanup.cont.47
  ]

cleanup.cont.47:                                  ; preds = %cleanup.45
  br label %if.end.48

if.end.48:                                        ; preds = %cleanup.cont.47, %land.lhs.true, %do.body.32
  br label %do.cond.49

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  %34 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments51 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %34, i32 0, i32 3
  %35 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments51, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %35, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 1
  %36 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !29
  store %struct.subpath_s* %36, %struct.subpath_s** %psub, align 8, !tbaa !1
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %37, i32 0, i32 1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %39 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !22
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory52 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %40, i32 0, i32 1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory52, align 8, !tbaa !19
  %call53 = call %struct.gs_memory_s* %39(%struct.gs_memory_s* %41) #4
  %procs54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call53, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs54, i32 0, i32 8
  %42 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !25
  %43 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %43, i32 0, i32 1
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory55, align 8, !tbaa !19
  %procs56 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %stable57 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs56, i32 0, i32 3
  %45 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable57, align 8, !tbaa !22
  %46 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory58 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %46, i32 0, i32 1
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory58, align 8, !tbaa !19
  %call59 = call %struct.gs_memory_s* %45(%struct.gs_memory_s* %47) #4
  %call60 = call i8* %42(%struct.gs_memory_s* %call59, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_line to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0)) #4
  %48 = bitcast i8* %call60 to %struct.line_segment*
  store %struct.line_segment* %48, %struct.line_segment** %lp, align 8, !tbaa !1
  %tobool61 = icmp ne %struct.line_segment* %48, null
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %do.end.50
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.end.63:                                        ; preds = %do.end.50
  %49 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.line_segment, %struct.line_segment* %49, i32 0, i32 2
  store i16 5, i16* %type, align 2, !tbaa !60
  %50 = load i32, i32* %notes.addr, align 4, !tbaa !16
  %conv64 = trunc i32 %50 to i16
  %51 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %notes65 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %51, i32 0, i32 3
  store i16 %conv64, i16* %notes65, align 2, !tbaa !62
  %52 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.line_segment, %struct.line_segment* %52, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next, align 8, !tbaa !67
  %53 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #2
  %54 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %54, i32 0, i32 5
  %55 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !42
  store %struct.segment_s* %55, %struct.segment_s** %prev, align 8, !tbaa !1
  %56 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %57 = bitcast %struct.line_segment* %56 to %struct.segment_s*
  %58 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %next66 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %58, i32 0, i32 1
  store %struct.segment_s* %57, %struct.segment_s** %next66, align 8, !tbaa !63
  %59 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %60 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %prev67 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %60, i32 0, i32 0
  store %struct.segment_s* %59, %struct.segment_s** %prev67, align 8, !tbaa !64
  %61 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %62 = bitcast %struct.line_segment* %61 to %struct.segment_s*
  %63 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last68 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %63, i32 0, i32 5
  store %struct.segment_s* %62, %struct.segment_s** %last68, align 8, !tbaa !42
  %64 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = load i32, i32* %x.addr, align 4, !tbaa !17
  %66 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %66, i32 0, i32 14
  %x69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  store i32 %65, i32* %x69, align 4, !tbaa !53
  %67 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.line_segment, %struct.line_segment* %67, i32 0, i32 4
  %x70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  store i32 %65, i32* %x70, align 4, !tbaa !65
  %68 = load i32, i32* %y.addr, align 4, !tbaa !17
  %69 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position71 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %69, i32 0, i32 14
  %y72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position71, i32 0, i32 1
  store i32 %68, i32* %y72, align 4, !tbaa !54
  %70 = load %struct.line_segment*, %struct.line_segment** %lp, align 8, !tbaa !1
  %pt73 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %70, i32 0, i32 4
  %y74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt73, i32 0, i32 1
  store i32 %68, i32* %y74, align 4, !tbaa !66
  %71 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags75 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %71, i32 0, i32 8
  store i8 7, i8* %state_flags75, align 1, !tbaa !33
  br label %do.body.76

do.body.76:                                       ; preds = %if.end.63
  br label %do.cond.77

do.cond.77:                                       ; preds = %do.body.76
  br label %do.end.78

do.end.78:                                        ; preds = %do.cond.77
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

cleanup.79:                                       ; preds = %do.end.78, %if.then.62, %cleanup.45, %cleanup, %if.then.15
  %72 = bitcast %struct.line_segment** %lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @gz_path_add_curve_notes(%struct.gx_path_s* %ppath, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %x3, i32 %y3, i32 %notes) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %x3.addr = alloca i32, align 4
  %y3.addr = alloca i32, align 4
  %notes.addr = alloca i32, align 4
  %psub = alloca %struct.subpath_s*, align 8
  %lp = alloca %struct.curve_segment*, align 8
  %cleanup.dest.slot = alloca i32
  %code_ = alloca i32, align 4
  %code_81 = alloca i32, align 4
  %prev = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !17
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !17
  store i32 %x2, i32* %x2.addr, align 4, !tbaa !17
  store i32 %y2, i32* %y2.addr, align 4, !tbaa !17
  store i32 %x3, i32* %x3.addr, align 4, !tbaa !17
  store i32 %y3, i32* %y3.addr, align 4, !tbaa !17
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.curve_segment** %lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_set = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 9
  %3 = load i8, i8* %bbox_set, align 1, !tbaa !34
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end.58

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %x1.addr, align 4, !tbaa !17
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %6 = load i32, i32* %x, align 4, !tbaa !37
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i32, i32* %x1.addr, align 4, !tbaa !17
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox1, i32 0, i32 1
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %9 = load i32, i32* %x4, align 4, !tbaa !39
  %cmp5 = icmp sgt i32 %7, %9
  br i1 %cmp5, label %if.then.15, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %y1.addr, align 4, !tbaa !17
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 5
  %p8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox7, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p8, i32 0, i32 1
  %12 = load i32, i32* %y, align 4, !tbaa !38
  %cmp9 = icmp slt i32 %10, %12
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %13 = load i32, i32* %y1.addr, align 4, !tbaa !17
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 5
  %q12 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox11, i32 0, i32 1
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q12, i32 0, i32 1
  %15 = load i32, i32* %y13, align 4, !tbaa !40
  %cmp14 = icmp sgt i32 %13, %15
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false.6, %lor.lhs.false, %if.then
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end:                                           ; preds = %lor.lhs.false.10
  %16 = load i32, i32* %x2.addr, align 4, !tbaa !17
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox16 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 5
  %p17 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox16, i32 0, i32 0
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p17, i32 0, i32 0
  %18 = load i32, i32* %x18, align 4, !tbaa !37
  %cmp19 = icmp slt i32 %16, %18
  br i1 %cmp19, label %if.then.35, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end
  %19 = load i32, i32* %x2.addr, align 4, !tbaa !17
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox21 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %20, i32 0, i32 5
  %q22 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox21, i32 0, i32 1
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q22, i32 0, i32 0
  %21 = load i32, i32* %x23, align 4, !tbaa !39
  %cmp24 = icmp sgt i32 %19, %21
  br i1 %cmp24, label %if.then.35, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.20
  %22 = load i32, i32* %y2.addr, align 4, !tbaa !17
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox26 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i32 0, i32 5
  %p27 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox26, i32 0, i32 0
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p27, i32 0, i32 1
  %24 = load i32, i32* %y28, align 4, !tbaa !38
  %cmp29 = icmp slt i32 %22, %24
  br i1 %cmp29, label %if.then.35, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.25
  %25 = load i32, i32* %y2.addr, align 4, !tbaa !17
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox31 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %26, i32 0, i32 5
  %q32 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox31, i32 0, i32 1
  %y33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q32, i32 0, i32 1
  %27 = load i32, i32* %y33, align 4, !tbaa !40
  %cmp34 = icmp sgt i32 %25, %27
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false.30, %lor.lhs.false.25, %lor.lhs.false.20, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.36:                                        ; preds = %lor.lhs.false.30
  %28 = load i32, i32* %x3.addr, align 4, !tbaa !17
  %29 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox37 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %29, i32 0, i32 5
  %p38 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox37, i32 0, i32 0
  %x39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p38, i32 0, i32 0
  %30 = load i32, i32* %x39, align 4, !tbaa !37
  %cmp40 = icmp slt i32 %28, %30
  br i1 %cmp40, label %if.then.56, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.36
  %31 = load i32, i32* %x3.addr, align 4, !tbaa !17
  %32 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox42 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %32, i32 0, i32 5
  %q43 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox42, i32 0, i32 1
  %x44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q43, i32 0, i32 0
  %33 = load i32, i32* %x44, align 4, !tbaa !39
  %cmp45 = icmp sgt i32 %31, %33
  br i1 %cmp45, label %if.then.56, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.41
  %34 = load i32, i32* %y3.addr, align 4, !tbaa !17
  %35 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox47 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %35, i32 0, i32 5
  %p48 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox47, i32 0, i32 0
  %y49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p48, i32 0, i32 1
  %36 = load i32, i32* %y49, align 4, !tbaa !38
  %cmp50 = icmp slt i32 %34, %36
  br i1 %cmp50, label %if.then.56, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.46
  %37 = load i32, i32* %y3.addr, align 4, !tbaa !17
  %38 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox52 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %38, i32 0, i32 5
  %q53 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox52, i32 0, i32 1
  %y54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q53, i32 0, i32 1
  %39 = load i32, i32* %y54, align 4, !tbaa !40
  %cmp55 = icmp sgt i32 %37, %39
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.46, %lor.lhs.false.41, %if.end.36
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.57:                                        ; preds = %lor.lhs.false.51
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %entry
  br label %do.body

do.body:                                          ; preds = %if.end.58
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %40, i32 0, i32 8
  %41 = load i8, i8* %state_flags, align 1, !tbaa !33
  %conv = zext i8 %41 to i32
  %and = and i32 %conv, 4
  %cmp59 = icmp ne i32 %and, 0
  br i1 %cmp59, label %if.end.73, label %if.then.61

if.then.61:                                       ; preds = %do.body
  %42 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags62 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %43, i32 0, i32 8
  %44 = load i8, i8* %state_flags62, align 1, !tbaa !33
  %conv63 = zext i8 %44 to i32
  %and64 = and i32 %conv63, 1
  %cmp65 = icmp ne i32 %and64, 0
  br i1 %cmp65, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.then.61
  store i32 -14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %if.then.61
  %45 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_new_subpath(%struct.gx_path_s* %45) #4
  store i32 %call, i32* %code_, align 4, !tbaa !17
  %46 = load i32, i32* %code_, align 4, !tbaa !17
  %cmp69 = icmp slt i32 %46, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.68
  %47 = load i32, i32* %code_, align 4, !tbaa !17
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %if.end.68
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.72, %if.then.71, %if.then.67
  %48 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.129 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.73

if.end.73:                                        ; preds = %cleanup.cont, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.73
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.74

do.body.74:                                       ; preds = %do.end
  %49 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %49, i32 0, i32 3
  %50 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %cmp75 = icmp ne %struct.gx_path_segments_s* %50, null
  br i1 %cmp75, label %land.lhs.true, label %if.end.90

land.lhs.true:                                    ; preds = %do.body.74
  %51 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments77 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %51, i32 0, i32 3
  %52 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments77, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %52, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %53 = load i64, i64* %ref_count, align 8, !tbaa !18
  %cmp78 = icmp sgt i64 %53, 1
  br i1 %cmp78, label %if.then.80, label %if.end.90

if.then.80:                                       ; preds = %land.lhs.true
  %54 = bitcast i32* %code_81 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call82 = call i32 @path_alloc_copy(%struct.gx_path_s* %55) #4
  store i32 %call82, i32* %code_81, align 4, !tbaa !17
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.80
  %56 = load i32, i32* %code_81, align 4, !tbaa !17
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.end.86:                                        ; preds = %if.then.80
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.87

cleanup.87:                                       ; preds = %if.end.86, %if.then.85
  %57 = bitcast i32* %code_81 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %cleanup.dest.88 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.88, label %cleanup.129 [
    i32 0, label %cleanup.cont.89
  ]

cleanup.cont.89:                                  ; preds = %cleanup.87
  br label %if.end.90

if.end.90:                                        ; preds = %cleanup.cont.89, %land.lhs.true, %do.body.74
  br label %do.cond.91

do.cond.91:                                       ; preds = %if.end.90
  br label %do.end.92

do.end.92:                                        ; preds = %do.cond.91
  %58 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments93 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %58, i32 0, i32 3
  %59 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments93, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %59, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 1
  %60 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !29
  store %struct.subpath_s* %60, %struct.subpath_s** %psub, align 8, !tbaa !1
  %61 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %61, i32 0, i32 1
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %63 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !22
  %64 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory94 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %64, i32 0, i32 1
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory94, align 8, !tbaa !19
  %call95 = call %struct.gs_memory_s* %63(%struct.gs_memory_s* %65) #4
  %procs96 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call95, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs96, i32 0, i32 8
  %66 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !25
  %67 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory97 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %67, i32 0, i32 1
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory97, align 8, !tbaa !19
  %procs98 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 1
  %stable99 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs98, i32 0, i32 3
  %69 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable99, align 8, !tbaa !22
  %70 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory100 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %70, i32 0, i32 1
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory100, align 8, !tbaa !19
  %call101 = call %struct.gs_memory_s* %69(%struct.gs_memory_s* %71) #4
  %call102 = call i8* %66(%struct.gs_memory_s* %call101, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_curve to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0)) #4
  %72 = bitcast i8* %call102 to %struct.curve_segment*
  store %struct.curve_segment* %72, %struct.curve_segment** %lp, align 8, !tbaa !1
  %tobool103 = icmp ne %struct.curve_segment* %72, null
  br i1 %tobool103, label %if.end.105, label %if.then.104

if.then.104:                                      ; preds = %do.end.92
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.105:                                       ; preds = %do.end.92
  %73 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %73, i32 0, i32 2
  store i16 3, i16* %type, align 2, !tbaa !94
  %74 = load i32, i32* %notes.addr, align 4, !tbaa !16
  %conv106 = trunc i32 %74 to i16
  %75 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8, !tbaa !1
  %notes107 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %75, i32 0, i32 3
  store i16 %conv106, i16* %notes107, align 2, !tbaa !96
  %76 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %76, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next, align 8, !tbaa !97
  %77 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #2
  %78 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %78, i32 0, i32 5
  %79 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !42
  store %struct.segment_s* %79, %struct.segment_s** %prev, align 8, !tbaa !1
  %80 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8, !tbaa !1
  %81 = bitcast %struct.curve_segment* %80 to %struct.segment_s*
  %82 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %next108 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %82, i32 0, i32 1
  store %struct.segment_s* %81, %struct.segment_s** %next108, align 8, !tbaa !63
  %83 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %84 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8, !tbaa !1
  %prev109 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %84, i32 0, i32 0
  store %struct.segment_s* %83, %struct.segment_s** %prev109, align 8, !tbaa !98
  %85 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8, !tbaa !1
  %86 = bitcast %struct.curve_segment* %85 to %struct.segment_s*
  %87 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last110 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %87, i32 0, i32 5
  store %struct.segment_s* %86, %struct.segment_s** %last110, align 8, !tbaa !42
  %88 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = load i32, i32* %x1.addr, align 4, !tbaa !17
  %90 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %90, i32 0, i32 5
  %x111 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  store i32 %89, i32* %x111, align 4, !tbaa !99
  %91 = load i32, i32* %y1.addr, align 4, !tbaa !17
  %92 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8, !tbaa !1
  %p1112 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %92, i32 0, i32 5
  %y113 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1112, i32 0, i32 1
  store i32 %91, i32* %y113, align 4, !tbaa !100
  %93 = load i32, i32* %x2.addr, align 4, !tbaa !17
  %94 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %94, i32 0, i32 6
  %x114 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  store i32 %93, i32* %x114, align 4, !tbaa !101
  %95 = load i32, i32* %y2.addr, align 4, !tbaa !17
  %96 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8, !tbaa !1
  %p2115 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %96, i32 0, i32 6
  %y116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2115, i32 0, i32 1
  store i32 %95, i32* %y116, align 4, !tbaa !102
  %97 = load i32, i32* %x3.addr, align 4, !tbaa !17
  %98 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %98, i32 0, i32 14
  %x117 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  store i32 %97, i32* %x117, align 4, !tbaa !53
  %99 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %99, i32 0, i32 4
  %x118 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  store i32 %97, i32* %x118, align 4, !tbaa !103
  %100 = load i32, i32* %y3.addr, align 4, !tbaa !17
  %101 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position119 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %101, i32 0, i32 14
  %y120 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position119, i32 0, i32 1
  store i32 %100, i32* %y120, align 4, !tbaa !54
  %102 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8, !tbaa !1
  %pt121 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %102, i32 0, i32 4
  %y122 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt121, i32 0, i32 1
  store i32 %100, i32* %y122, align 4, !tbaa !104
  %103 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %curve_count = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %103, i32 0, i32 6
  %104 = load i32, i32* %curve_count, align 4, !tbaa !71
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %curve_count, align 4, !tbaa !71
  %105 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %curve_count123 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %105, i32 0, i32 13
  %106 = load i32, i32* %curve_count123, align 4, !tbaa !32
  %inc124 = add nsw i32 %106, 1
  store i32 %inc124, i32* %curve_count123, align 4, !tbaa !32
  %107 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags125 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %107, i32 0, i32 8
  store i8 7, i8* %state_flags125, align 1, !tbaa !33
  br label %do.body.126

do.body.126:                                      ; preds = %if.end.105
  br label %do.cond.127

do.cond.127:                                      ; preds = %do.body.126
  br label %do.end.128

do.end.128:                                       ; preds = %do.cond.127
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

cleanup.129:                                      ; preds = %do.end.128, %if.then.104, %cleanup.87, %cleanup, %if.then.56, %if.then.35, %if.then.15
  %108 = bitcast %struct.curve_segment** %lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = load i32, i32* %retval
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define internal i32 @gz_path_close_subpath_notes(%struct.gx_path_s* %ppath, i32 %notes) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %notes.addr = alloca i32, align 4
  %psub = alloca %struct.subpath_s*, align 8
  %lp = alloca %struct.line_close_segment*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code_ = alloca i32, align 4
  %prev = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.line_close_segment** %lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 8
  %4 = load i8, i8* %state_flags, align 1, !tbaa !33
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 8
  %6 = load i8, i8* %state_flags2, align 1, !tbaa !33
  %conv3 = zext i8 %6 to i32
  %and4 = and i32 %conv3, -9
  %cmp5 = icmp eq i32 %and4, 3
  br i1 %cmp5, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_new_subpath(%struct.gx_path_s* %7) #4
  store i32 %call, i32* %code, align 4, !tbaa !17
  %8 = load i32, i32* %code, align 4, !tbaa !17
  %cmp8 = icmp slt i32 %8, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %9 = load i32, i32* %code, align 4, !tbaa !17
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end.11:                                        ; preds = %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 3
  %11 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %cmp13 = icmp ne %struct.gx_path_segments_s* %11, null
  br i1 %cmp13, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %do.body
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments15 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 3
  %13 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments15, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %13, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %14 = load i64, i64* %ref_count, align 8, !tbaa !18
  %cmp16 = icmp sgt i64 %14, 1
  br i1 %cmp16, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %land.lhs.true
  %15 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call19 = call i32 @path_alloc_copy(%struct.gx_path_s* %16) #4
  store i32 %call19, i32* %code_, align 4, !tbaa !17
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.18
  %17 = load i32, i32* %code_, align 4, !tbaa !17
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.18
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.22
  %18 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.54 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.24

if.end.24:                                        ; preds = %cleanup.cont, %land.lhs.true, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.24
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments25 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i32 0, i32 3
  %20 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments25, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %20, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 1
  %21 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !29
  store %struct.subpath_s* %21, %struct.subpath_s** %psub, align 8, !tbaa !1
  %22 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %22, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %24 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !22
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %25, i32 0, i32 1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !19
  %call27 = call %struct.gs_memory_s* %24(%struct.gs_memory_s* %26) #4
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call27, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 8
  %27 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !25
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory29 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %28, i32 0, i32 1
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory29, align 8, !tbaa !19
  %procs30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %stable31 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs30, i32 0, i32 3
  %30 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable31, align 8, !tbaa !22
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %31, i32 0, i32 1
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !19
  %call33 = call %struct.gs_memory_s* %30(%struct.gs_memory_s* %32) #4
  %call34 = call i8* %27(%struct.gs_memory_s* %call33, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_line_close to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0)) #4
  %33 = bitcast i8* %call34 to %struct.line_close_segment*
  store %struct.line_close_segment* %33, %struct.line_close_segment** %lp, align 8, !tbaa !1
  %tobool = icmp ne %struct.line_close_segment* %33, null
  br i1 %tobool, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %do.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end.36:                                        ; preds = %do.end
  %34 = load %struct.line_close_segment*, %struct.line_close_segment** %lp, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.line_close_segment, %struct.line_close_segment* %34, i32 0, i32 2
  store i16 2, i16* %type, align 2, !tbaa !105
  %35 = load i32, i32* %notes.addr, align 4, !tbaa !16
  %conv37 = trunc i32 %35 to i16
  %36 = load %struct.line_close_segment*, %struct.line_close_segment** %lp, align 8, !tbaa !1
  %notes38 = getelementptr inbounds %struct.line_close_segment, %struct.line_close_segment* %36, i32 0, i32 3
  store i16 %conv37, i16* %notes38, align 2, !tbaa !106
  %37 = load %struct.line_close_segment*, %struct.line_close_segment** %lp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.line_close_segment, %struct.line_close_segment* %37, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next, align 8, !tbaa !107
  %38 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #2
  %39 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %39, i32 0, i32 5
  %40 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !42
  store %struct.segment_s* %40, %struct.segment_s** %prev, align 8, !tbaa !1
  %41 = load %struct.line_close_segment*, %struct.line_close_segment** %lp, align 8, !tbaa !1
  %42 = bitcast %struct.line_close_segment* %41 to %struct.segment_s*
  %43 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %next39 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %43, i32 0, i32 1
  store %struct.segment_s* %42, %struct.segment_s** %next39, align 8, !tbaa !63
  %44 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %45 = load %struct.line_close_segment*, %struct.line_close_segment** %lp, align 8, !tbaa !1
  %prev40 = getelementptr inbounds %struct.line_close_segment, %struct.line_close_segment* %45, i32 0, i32 0
  store %struct.segment_s* %44, %struct.segment_s** %prev40, align 8, !tbaa !108
  %46 = load %struct.line_close_segment*, %struct.line_close_segment** %lp, align 8, !tbaa !1
  %47 = bitcast %struct.line_close_segment* %46 to %struct.segment_s*
  %48 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last41 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %48, i32 0, i32 5
  store %struct.segment_s* %47, %struct.segment_s** %last41, align 8, !tbaa !42
  %49 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %50, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %51 = load i32, i32* %x, align 4, !tbaa !109
  %52 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %52, i32 0, i32 14
  %x42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  store i32 %51, i32* %x42, align 4, !tbaa !53
  %53 = load %struct.line_close_segment*, %struct.line_close_segment** %lp, align 8, !tbaa !1
  %pt43 = getelementptr inbounds %struct.line_close_segment, %struct.line_close_segment* %53, i32 0, i32 4
  %x44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt43, i32 0, i32 0
  store i32 %51, i32* %x44, align 4, !tbaa !110
  %54 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %pt45 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %54, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt45, i32 0, i32 1
  %55 = load i32, i32* %y, align 4, !tbaa !111
  %56 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position46 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %56, i32 0, i32 14
  %y47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position46, i32 0, i32 1
  store i32 %55, i32* %y47, align 4, !tbaa !54
  %57 = load %struct.line_close_segment*, %struct.line_close_segment** %lp, align 8, !tbaa !1
  %pt48 = getelementptr inbounds %struct.line_close_segment, %struct.line_close_segment* %57, i32 0, i32 4
  %y49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt48, i32 0, i32 1
  store i32 %55, i32* %y49, align 4, !tbaa !112
  %58 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %59 = load %struct.line_close_segment*, %struct.line_close_segment** %lp, align 8, !tbaa !1
  %sub = getelementptr inbounds %struct.line_close_segment, %struct.line_close_segment* %59, i32 0, i32 5
  store %struct.subpath_s* %58, %struct.subpath_s** %sub, align 8, !tbaa !113
  %60 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %is_closed = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %60, i32 0, i32 8
  store i8 1, i8* %is_closed, align 1, !tbaa !72
  %61 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags50 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %61, i32 0, i32 8
  store i8 1, i8* %state_flags50, align 1, !tbaa !33
  br label %do.body.51

do.body.51:                                       ; preds = %if.end.36
  br label %do.cond.52

do.cond.52:                                       ; preds = %do.body.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

cleanup.54:                                       ; preds = %do.end.53, %if.then.35, %cleanup, %if.then.10, %if.then
  %62 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast %struct.line_close_segment** %lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gz_path_state_flags(%struct.gx_path_s* %ppath, i8 zeroext %flags) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %flags.addr = alloca i8, align 1
  %flags_old = alloca i8, align 1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i8 %flags, i8* %flags.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start(i64 1, i8* %flags_old) #2
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 8
  %1 = load i8, i8* %state_flags, align 1, !tbaa !33
  store i8 %1, i8* %flags_old, align 1, !tbaa !16
  %2 = load i8, i8* %flags.addr, align 1, !tbaa !16
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 8
  store i8 %2, i8* %state_flags1, align 1, !tbaa !33
  %4 = load i8, i8* %flags_old, align 1, !tbaa !16
  call void @llvm.lifetime.end(i64 1, i8* %flags_old) #2
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @gz_path_bbox_add_point(%struct.gx_path_s* %ppath, i32 %x, i32 %y) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %1 = load i32, i32* %x.addr, align 4, !tbaa !17
  %2 = load i32, i32* %y.addr, align 4, !tbaa !17
  call void @gz_path_bbox_move(%struct.gx_path_s* %0, i32 %1, i32 %2) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gz_path_bbox_add_line_notes(%struct.gx_path_s* %ppath, i32 %x, i32 %y, i32 %notes) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %notes.addr = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %1 = load i32, i32* %x.addr, align 4, !tbaa !17
  %2 = load i32, i32* %y.addr, align 4, !tbaa !17
  call void @gz_path_bbox_add(%struct.gx_path_s* %0, i32 %1, i32 %2) #4
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %4 = load i32, i32* %x.addr, align 4, !tbaa !17
  %5 = load i32, i32* %y.addr, align 4, !tbaa !17
  call void @gz_path_bbox_move(%struct.gx_path_s* %3, i32 %4, i32 %5) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gz_path_bbox_add_gap_notes(%struct.gx_path_s* %ppath, i32 %x, i32 %y, i32 %notes) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %notes.addr = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %1 = load i32, i32* %x.addr, align 4, !tbaa !17
  %2 = load i32, i32* %y.addr, align 4, !tbaa !17
  call void @gz_path_bbox_add(%struct.gx_path_s* %0, i32 %1, i32 %2) #4
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %4 = load i32, i32* %x.addr, align 4, !tbaa !17
  %5 = load i32, i32* %y.addr, align 4, !tbaa !17
  call void @gz_path_bbox_move(%struct.gx_path_s* %3, i32 %4, i32 %5) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gz_path_bbox_add_curve_notes(%struct.gx_path_s* %ppath, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %x3, i32 %y3, i32 %notes) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %x3.addr = alloca i32, align 4
  %y3.addr = alloca i32, align 4
  %notes.addr = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !17
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !17
  store i32 %x2, i32* %x2.addr, align 4, !tbaa !17
  store i32 %y2, i32* %y2.addr, align 4, !tbaa !17
  store i32 %x3, i32* %x3.addr, align 4, !tbaa !17
  store i32 %y3, i32* %y3.addr, align 4, !tbaa !17
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %1 = load i32, i32* %x1.addr, align 4, !tbaa !17
  %2 = load i32, i32* %y1.addr, align 4, !tbaa !17
  call void @gz_path_bbox_add(%struct.gx_path_s* %0, i32 %1, i32 %2) #4
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %4 = load i32, i32* %x2.addr, align 4, !tbaa !17
  %5 = load i32, i32* %y2.addr, align 4, !tbaa !17
  call void @gz_path_bbox_add(%struct.gx_path_s* %3, i32 %4, i32 %5) #4
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %7 = load i32, i32* %x3.addr, align 4, !tbaa !17
  %8 = load i32, i32* %y3.addr, align 4, !tbaa !17
  call void @gz_path_bbox_add(%struct.gx_path_s* %6, i32 %7, i32 %8) #4
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %10 = load i32, i32* %x3.addr, align 4, !tbaa !17
  %11 = load i32, i32* %y3.addr, align 4, !tbaa !17
  call void @gz_path_bbox_move(%struct.gx_path_s* %9, i32 %10, i32 %11) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gz_path_bbox_close_subpath_notes(%struct.gx_path_s* %ppath, i32 %notes) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %notes.addr = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !16
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @gz_path_bbox_move(%struct.gx_path_s* %ppath, i32 %x, i32 %y) #3 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  %0 = load i32, i32* %x.addr, align 4, !tbaa !17
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 14
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  store i32 %0, i32* %x1, align 4, !tbaa !53
  %2 = load i32, i32* %y.addr, align 4, !tbaa !17
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 14
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position2, i32 0, i32 1
  store i32 %2, i32* %y3, align 4, !tbaa !54
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 8
  %5 = load i8, i8* %state_flags, align 1, !tbaa !33
  %conv = zext i8 %5 to i32
  %or = or i32 %conv, 1
  %conv4 = trunc i32 %or to i8
  store i8 %conv4, i8* %state_flags, align 1, !tbaa !33
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @gz_path_bbox_add(%struct.gx_path_s* %ppath, i32 %x, i32 %y) #3 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_set = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 9
  %1 = load i8, i8* %bbox_set, align 1, !tbaa !34
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4, !tbaa !17
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 %2, i32* %x1, align 4, !tbaa !39
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox2, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 %2, i32* %x3, align 4, !tbaa !37
  %5 = load i32, i32* %y.addr, align 4, !tbaa !17
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 5
  %q5 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox4, i32 0, i32 1
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q5, i32 0, i32 1
  store i32 %5, i32* %y6, align 4, !tbaa !40
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 5
  %p8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox7, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p8, i32 0, i32 1
  store i32 %5, i32* %y9, align 4, !tbaa !38
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_set10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 9
  store i8 1, i8* %bbox_set10, align 1, !tbaa !34
  br label %if.end.45

if.else:                                          ; preds = %entry
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 5
  %p12 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox11, i32 0, i32 0
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p12, i32 0, i32 0
  %10 = load i32, i32* %x13, align 4, !tbaa !37
  %11 = load i32, i32* %x.addr, align 4, !tbaa !17
  %cmp = icmp sgt i32 %10, %11
  br i1 %cmp, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.else
  %12 = load i32, i32* %x.addr, align 4, !tbaa !17
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox15 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %13, i32 0, i32 5
  %p16 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox15, i32 0, i32 0
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p16, i32 0, i32 0
  store i32 %12, i32* %x17, align 4, !tbaa !37
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.else
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox18 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 5
  %p19 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox18, i32 0, i32 0
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p19, i32 0, i32 1
  %15 = load i32, i32* %y20, align 4, !tbaa !38
  %16 = load i32, i32* %y.addr, align 4, !tbaa !17
  %cmp21 = icmp sgt i32 %15, %16
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.end
  %17 = load i32, i32* %y.addr, align 4, !tbaa !17
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox23 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 5
  %p24 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox23, i32 0, i32 0
  %y25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p24, i32 0, i32 1
  store i32 %17, i32* %y25, align 4, !tbaa !38
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.end
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox27 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i32 0, i32 5
  %q28 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox27, i32 0, i32 1
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q28, i32 0, i32 0
  %20 = load i32, i32* %x29, align 4, !tbaa !39
  %21 = load i32, i32* %x.addr, align 4, !tbaa !17
  %cmp30 = icmp slt i32 %20, %21
  br i1 %cmp30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end.26
  %22 = load i32, i32* %x.addr, align 4, !tbaa !17
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox32 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i32 0, i32 5
  %q33 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox32, i32 0, i32 1
  %x34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q33, i32 0, i32 0
  store i32 %22, i32* %x34, align 4, !tbaa !39
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %if.end.26
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox36 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %24, i32 0, i32 5
  %q37 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox36, i32 0, i32 1
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q37, i32 0, i32 1
  %25 = load i32, i32* %y38, align 4, !tbaa !40
  %26 = load i32, i32* %y.addr, align 4, !tbaa !17
  %cmp39 = icmp slt i32 %25, %26
  br i1 %cmp39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.end.35
  %27 = load i32, i32* %y.addr, align 4, !tbaa !17
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox41 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %28, i32 0, i32 5
  %q42 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox41, i32 0, i32 1
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q42, i32 0, i32 1
  store i32 %27, i32* %y43, align 4, !tbaa !40
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %if.end.35
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then
  ret void
}

declare i32 @gx_path_copy_reducing(%struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.gs_imager_state_s*, i32) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 56}
!6 = !{!"gx_path_s", !7, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !11, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !13, i64 104, !13, i64 108, !12, i64 112, !2, i64 120}
!7 = !{!"gx_path_segments_s", !8, i64 0, !10, i64 24}
!8 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!"long", !3, i64 0}
!10 = !{!"psc_", !2, i64 0, !2, i64 8}
!11 = !{!"gs_fixed_rect_s", !12, i64 0, !12, i64 8}
!12 = !{!"gs_fixed_point_s", !13, i64 0, !13, i64 4}
!13 = !{!"int", !3, i64 0}
!14 = !{i64 0, i64 8, !15, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 4, !16, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 4, !17, i64 76, i64 4, !17, i64 80, i64 4, !17, i64 84, i64 4, !17, i64 88, i64 8, !1, i64 96, i64 1, !16, i64 97, i64 1, !16, i64 98, i64 1, !16, i64 99, i64 1, !16, i64 100, i64 1, !16, i64 104, i64 4, !17, i64 108, i64 4, !17, i64 112, i64 4, !17, i64 116, i64 4, !17, i64 120, i64 8, !1}
!15 = !{!9, !9, i64 0}
!16 = !{!3, !3, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!7, !9, i64 0}
!19 = !{!6, !2, i64 40}
!20 = !{!6, !3, i64 48}
!21 = !{!6, !2, i64 120}
!22 = !{!23, !2, i64 32}
!23 = !{!"gs_memory_s", !2, i64 0, !24, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!24 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!25 = !{!23, !2, i64 72}
!26 = !{!7, !2, i64 8}
!27 = !{!7, !2, i64 16}
!28 = !{!6, !2, i64 88}
!29 = !{!7, !2, i64 32}
!30 = !{!7, !2, i64 24}
!31 = !{!6, !13, i64 104}
!32 = !{!6, !13, i64 108}
!33 = !{!6, !3, i64 97}
!34 = !{!6, !3, i64 98}
!35 = !{!6, !3, i64 99}
!36 = !{!6, !2, i64 64}
!37 = !{!6, !13, i64 72}
!38 = !{!6, !13, i64 76}
!39 = !{!6, !13, i64 80}
!40 = !{!6, !13, i64 84}
!41 = !{!23, !2, i64 24}
!42 = !{!43, !2, i64 32}
!43 = !{!"subpath_s", !2, i64 0, !2, i64 8, !44, i64 16, !44, i64 18, !12, i64 20, !2, i64 32, !13, i64 40, !45, i64 48, !3, i64 88}
!44 = !{!"short", !3, i64 0}
!45 = !{!"", !2, i64 0, !2, i64 8, !44, i64 16, !44, i64 18, !12, i64 20, !2, i64 32}
!46 = !{!47, !2, i64 0}
!47 = !{!"segment_s", !2, i64 0, !2, i64 8, !44, i64 16, !44, i64 18, !12, i64 20}
!48 = !{!6, !2, i64 24}
!49 = !{!6, !2, i64 32}
!50 = !{i64 0, i64 8, !1, i64 8, i64 8, !1}
!51 = !{!52, !2, i64 0}
!52 = !{!"gx_path_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!53 = !{!6, !13, i64 112}
!54 = !{!6, !13, i64 116}
!55 = !{!6, !3, i64 96}
!56 = !{!52, !2, i64 8}
!57 = !{!52, !2, i64 16}
!58 = !{!12, !13, i64 0}
!59 = !{!12, !13, i64 4}
!60 = !{!61, !44, i64 16}
!61 = !{!"", !2, i64 0, !2, i64 8, !44, i64 16, !44, i64 18, !12, i64 20}
!62 = !{!61, !44, i64 18}
!63 = !{!47, !2, i64 8}
!64 = !{!61, !2, i64 0}
!65 = !{!61, !13, i64 20}
!66 = !{!61, !13, i64 24}
!67 = !{!61, !2, i64 8}
!68 = !{!43, !44, i64 16}
!69 = !{!43, !44, i64 18}
!70 = !{!43, !2, i64 8}
!71 = !{!43, !13, i64 40}
!72 = !{!43, !3, i64 88}
!73 = !{i64 0, i64 4, !17, i64 4, i64 4, !17}
!74 = !{!43, !2, i64 0}
!75 = !{!76, !44, i64 16}
!76 = !{!"", !2, i64 0, !2, i64 8, !44, i64 16, !44, i64 18, !12, i64 20, !12, i64 28}
!77 = !{!76, !44, i64 18}
!78 = !{!76, !2, i64 8}
!79 = !{!76, !2, i64 0}
!80 = !{!76, !13, i64 20}
!81 = !{!76, !13, i64 24}
!82 = !{!76, !13, i64 28}
!83 = !{!76, !13, i64 32}
!84 = !{!52, !2, i64 32}
!85 = !{!52, !2, i64 24}
!86 = !{!87, !87, i64 0}
!87 = !{!"double", !3, i64 0}
!88 = !{!11, !13, i64 0}
!89 = !{!11, !13, i64 4}
!90 = !{!11, !13, i64 8}
!91 = !{!11, !13, i64 12}
!92 = !{!52, !2, i64 40}
!93 = !{!47, !44, i64 16}
!94 = !{!95, !44, i64 16}
!95 = !{!"", !2, i64 0, !2, i64 8, !44, i64 16, !44, i64 18, !12, i64 20, !12, i64 28, !12, i64 36}
!96 = !{!95, !44, i64 18}
!97 = !{!95, !2, i64 8}
!98 = !{!95, !2, i64 0}
!99 = !{!95, !13, i64 28}
!100 = !{!95, !13, i64 32}
!101 = !{!95, !13, i64 36}
!102 = !{!95, !13, i64 40}
!103 = !{!95, !13, i64 20}
!104 = !{!95, !13, i64 24}
!105 = !{!45, !44, i64 16}
!106 = !{!45, !44, i64 18}
!107 = !{!45, !2, i64 8}
!108 = !{!45, !2, i64 0}
!109 = !{!43, !13, i64 20}
!110 = !{!45, !13, i64 20}
!111 = !{!43, !13, i64 24}
!112 = !{!45, !13, i64 24}
!113 = !{!45, !2, i64 32}
