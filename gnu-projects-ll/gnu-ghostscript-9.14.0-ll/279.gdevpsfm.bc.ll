; ModuleID = './gdevpsfm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmap_operators_s = type { i8*, i8*, i8*, i8* }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_cmap_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s* }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_cmap_procs_s = type { i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)*, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)*, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_s*, i32)* }
%struct.gs_cmap_ranges_enum_s = type { %struct.gx_code_space_range_s, %struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_procs_s*, i32 }
%struct.gx_code_space_range_s = type { [4 x i8], [4 x i8], i32 }
%struct.gs_cmap_ranges_enum_procs_s = type { i32 (%struct.gs_cmap_ranges_enum_s*)* }
%struct.gs_cmap_lookups_enum_s = type { %struct.gx_cmap_lookup_entry_s, %struct.gs_cmap_s*, %struct.gs_cmap_lookups_enum_procs_s*, [2 x i32], [8 x i8] }
%struct.gx_cmap_lookup_entry_s = type { [2 x [4 x i8]], i32, i32, i32, %struct.gs_const_string_s, i32 }
%struct.gs_cmap_lookups_enum_procs_s = type { i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* }

@.str = private unnamed_addr constant [30 x i8] c"%!PS-Adobe-3.0 Resource-CMap\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%%DocumentNeededResources: ProcSet (CIDInit)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%%IncludeResource: ProcSet (CIDInit)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%%BeginResource: CMap (\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c")\0A%%Title: (\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%%%%Version: %g\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"/CIDInit /ProcSet findresource begin\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"12 dict begin\0Abegincmap\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"/CMapType %d def\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"/CMapName/\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" def\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"/CMapVersion %g def\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"/CIDSystemInfo\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c" %d array\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"dup %d\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"put\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"/XUID [\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c" %ld\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"] def\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"/UIDOffset %ld def\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"/WMode %d def\0A\00", align 1
@cmap_notdef_operators = internal constant %struct.cmap_operators_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0) }, align 8
@cmap_cid_operators = internal constant %struct.cmap_operators_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0) }, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"endcmap\0A\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"CMapName currentdict /CMap defineresource pop\0Aend end\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"%%EndResource\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"%%EOF\0A\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c" null \00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c" 3 dict dup begin\0A\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"/Registry \00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c" def\0A/Ordering \00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c" def\0A/Supplement %d def\0Aend \00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"%d begincodespacerange\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"><\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"endcodespacerange\0A\00", align 1
@pput_hex.hex_digits = internal constant i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), align 8
@.str.37 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"%d usefont\0A\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"beginbfrange\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"endbfrange\0A\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"beginbfchar\0A\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"endbfchar\0A\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"beginnotdefchar\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"endnotdefchar\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"beginnotdefrange\0A\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"endnotdefrange\0A\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"begincidchar\0A\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"endcidchar\0A\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"begincidrange\0A\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"endcidrange\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @psf_write_cmap(%struct.gs_memory_s* %mem, %struct.stream_s* %s, %struct.gs_cmap_s* %pcmap, i32 (%struct.stream_s*, i8*, i32)* %put_name_chars, %struct.gs_const_string_s* %alt_cmap_name, i32 %font_index_only) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %put_name_chars.addr = alloca i32 (%struct.stream_s*, i8*, i32)*, align 8
  %alt_cmap_name.addr = alloca %struct.gs_const_string_s*, align 8
  %font_index_only.addr = alloca i32, align 4
  %cmap_name = alloca %struct.gs_const_string_s*, align 8
  %pcidsi = alloca %struct.gs_cid_system_info_s*, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %i44 = alloca i32, align 4
  %n = alloca i32, align 4
  %values = alloca i64*, align 8
  %renum = alloca %struct.gs_cmap_ranges_enum_s, align 8
  %ranges = alloca [100 x %struct.gx_code_space_range_s], align 16
  %code = alloca i32, align 4
  %count = alloca i32, align 4
  %code87 = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store i32 (%struct.stream_s*, i8*, i32)* %put_name_chars, i32 (%struct.stream_s*, i8*, i32)** %put_name_chars.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %alt_cmap_name, %struct.gs_const_string_s** %alt_cmap_name.addr, align 8, !tbaa !1
  store i32 %font_index_only, i32* %font_index_only.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_const_string_s** %cmap_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_cmap_name.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_const_string_s* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_cmap_name.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapName = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %3, i32 0, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_const_string_s* [ %2, %cond.true ], [ %CMapName, %cond.false ]
  store %struct.gs_const_string_s* %cond, %struct.gs_const_string_s** %cmap_name, align 8, !tbaa !1
  %4 = bitcast %struct.gs_cid_system_info_s** %pcidsi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CIDSystemInfo = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %5, i32 0, i32 3
  %6 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %CIDSystemInfo, align 8, !tbaa !7
  store %struct.gs_cid_system_info_s* %6, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  %7 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapType = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %7, i32 0, i32 0
  %8 = load i32, i32* %CMapType, align 4, !tbaa !13
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end, %cond.end
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109

sw.epilog:                                        ; preds = %sw.bb
  %9 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %ToUnicode = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %9, i32 0, i32 10
  %10 = load i32, i32* %ToUnicode, align 4, !tbaa !14
  %tobool1 = icmp ne i32 %10, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)) #3
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call2 = call i32 @stream_puts(%struct.stream_s* %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0)) #3
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call3 = call i32 @stream_puts(%struct.stream_s* %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0)) #3
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %15 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %cmap_name, align 8, !tbaa !1
  call void @pput_string_entry(%struct.stream_s* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), %struct.gs_const_string_s* %15) #3
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %17 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %cmap_name, align 8, !tbaa !1
  call void @pput_string_entry(%struct.stream_s* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), %struct.gs_const_string_s* %17) #3
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %19 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  %Registry = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %19, i32 0, i32 0
  call void @pput_string_entry(%struct.stream_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), %struct.gs_const_string_s* %Registry) #3
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %21 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  %Ordering = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %21, i32 0, i32 1
  call void @pput_string_entry(%struct.stream_s* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), %struct.gs_const_string_s* %Ordering) #3
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %23 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  %Supplement = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %23, i32 0, i32 2
  %24 = load i32, i32* %Supplement, align 4, !tbaa !15
  %call4 = call i8* @pprintd1(%struct.stream_s* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %24) #3
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %26 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapVersion = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %26, i32 0, i32 5
  %27 = load float, float* %CMapVersion, align 4, !tbaa !17
  %conv = fpext float %27 to double
  %call5 = call i8* @pprintg1(%struct.stream_s* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), double %conv) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call6 = call i32 @stream_puts(%struct.stream_s* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0)) #3
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call7 = call i32 @stream_puts(%struct.stream_s* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)) #3
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %31 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapType8 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %31, i32 0, i32 0
  %32 = load i32, i32* %CMapType8, align 4, !tbaa !13
  %call9 = call i8* @pprintd1(%struct.stream_s* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 %32) #3
  %33 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call10 = call i32 @stream_puts(%struct.stream_s* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #3
  %34 = load i32 (%struct.stream_s*, i8*, i32)*, i32 (%struct.stream_s*, i8*, i32)** %put_name_chars.addr, align 8, !tbaa !1
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %36 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %cmap_name, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %36, i32 0, i32 0
  %37 = load i8*, i8** %data, align 8, !tbaa !18
  %38 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %cmap_name, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %38, i32 0, i32 1
  %39 = load i32, i32* %size, align 4, !tbaa !19
  %call11 = call i32 %34(%struct.stream_s* %35, i8* %37, i32 %39) #3
  %40 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call12 = call i32 @stream_puts(%struct.stream_s* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %41 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %ToUnicode13 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %41, i32 0, i32 10
  %42 = load i32, i32* %ToUnicode13, align 4, !tbaa !14
  %tobool14 = icmp ne i32 %42, 0
  br i1 %tobool14, label %if.end.62, label %if.then.15

if.then.15:                                       ; preds = %if.end
  %43 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %44 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapVersion16 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %44, i32 0, i32 5
  %45 = load float, float* %CMapVersion16, align 4, !tbaa !17
  %conv17 = fpext float %45 to double
  %call18 = call i8* @pprintg1(%struct.stream_s* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), double %conv17) #3
  %46 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call19 = call i32 @stream_puts(%struct.stream_s* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0)) #3
  %47 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %47, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.15
  %48 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %49 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %num_fonts = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %49, i32 0, i32 4
  %50 = load i32, i32* %num_fonts, align 4, !tbaa !20
  %cmp21 = icmp slt i32 %48, %50
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true
  %51 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %52 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  %53 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %52, i64 %idx.ext
  call void @cmap_put_system_info(%struct.stream_s* %51, %struct.gs_cid_system_info_s* %add.ptr) #3
  br label %if.end.39

if.else:                                          ; preds = %land.lhs.true, %if.then.15
  %54 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %num_fonts24 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %54, i32 0, i32 4
  %55 = load i32, i32* %num_fonts24, align 4, !tbaa !20
  %cmp25 = icmp eq i32 %55, 1
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.else
  %56 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %57 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  call void @cmap_put_system_info(%struct.stream_s* %56, %struct.gs_cid_system_info_s* %57) #3
  br label %if.end.38

if.else.28:                                       ; preds = %if.else
  %58 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %60 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %num_fonts29 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %60, i32 0, i32 4
  %61 = load i32, i32* %num_fonts29, align 4, !tbaa !20
  %call30 = call i8* @pprintd1(%struct.stream_s* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 %61) #3
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.28
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %63 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %num_fonts31 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %63, i32 0, i32 4
  %64 = load i32, i32* %num_fonts31, align 4, !tbaa !20
  %cmp32 = icmp slt i32 %62, %64
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %65 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %call34 = call i8* @pprintd1(%struct.stream_s* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 %66) #3
  %67 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %68 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext35 = sext i32 %69 to i64
  %add.ptr36 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %68, i64 %idx.ext35
  call void @cmap_put_system_info(%struct.stream_s* %67, %struct.gs_cid_system_info_s* %add.ptr36) #3
  %70 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call37 = call i32 @stream_puts(%struct.stream_s* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %72 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  br label %if.end.38

if.end.38:                                        ; preds = %for.end, %if.then.27
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.23
  %73 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call40 = call i32 @stream_puts(%struct.stream_s* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %74 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %uid = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %74, i32 0, i32 6
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 0
  %75 = load i64, i64* %id, align 8, !tbaa !21
  %cmp41 = icmp slt i64 %75, 0
  br i1 %cmp41, label %if.then.43, label %if.end.59

if.then.43:                                       ; preds = %if.end.39
  %76 = bitcast i32* %i44 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %uid45 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %78, i32 0, i32 6
  %id46 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid45, i32 0, i32 0
  %79 = load i64, i64* %id46, align 8, !tbaa !21
  %sub = sub nsw i64 0, %79
  %conv47 = trunc i64 %sub to i32
  store i32 %conv47, i32* %n, align 4, !tbaa !5
  %80 = bitcast i64** %values to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %uid48 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %81, i32 0, i32 6
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid48, i32 0, i32 1
  %82 = load i64*, i64** %xvalues, align 8, !tbaa !22
  store i64* %82, i64** %values, align 8, !tbaa !1
  %83 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call49 = call i32 @stream_puts(%struct.stream_s* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0)) #3
  store i32 0, i32* %i44, align 4, !tbaa !5
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.55, %if.then.43
  %84 = load i32, i32* %i44, align 4, !tbaa !5
  %85 = load i32, i32* %n, align 4, !tbaa !5
  %cmp51 = icmp ult i32 %84, %85
  br i1 %cmp51, label %for.body.53, label %for.end.57

for.body.53:                                      ; preds = %for.cond.50
  %86 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %87 = load i32, i32* %i44, align 4, !tbaa !5
  %idxprom = zext i32 %87 to i64
  %88 = load i64*, i64** %values, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %88, i64 %idxprom
  %89 = load i64, i64* %arrayidx, align 8, !tbaa !23
  %call54 = call i8* @pprintld1(%struct.stream_s* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i64 %89) #3
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.53
  %90 = load i32, i32* %i44, align 4, !tbaa !5
  %inc56 = add i32 %90, 1
  store i32 %inc56, i32* %i44, align 4, !tbaa !5
  br label %for.cond.50

for.end.57:                                       ; preds = %for.cond.50
  %91 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call58 = call i32 @stream_puts(%struct.stream_s* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)) #3
  %92 = bitcast i64** %values to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %i44 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.57, %if.end.39
  %95 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %96 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %UIDOffset = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %96, i32 0, i32 7
  %97 = load i64, i64* %UIDOffset, align 8, !tbaa !24
  %call60 = call i8* @pprintld1(%struct.stream_s* %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i64 %97) #3
  %98 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %99 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %99, i32 0, i32 8
  %100 = load i32, i32* %WMode, align 4, !tbaa !25
  %call61 = call i8* @pprintd1(%struct.stream_s* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 %100) #3
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.59, %if.end
  %101 = bitcast %struct.gs_cmap_ranges_enum_s* %renum to i8*
  call void @llvm.lifetime.start(i64 40, i8* %101) #1
  %102 = bitcast [100 x %struct.gx_code_space_range_s]* %ranges to i8*
  call void @llvm.lifetime.start(i64 1200, i8* %102) #1
  %103 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %104 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  store i32 0, i32* %count, align 4, !tbaa !5
  %105 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  call void @gs_cmap_ranges_enum_init(%struct.gs_cmap_s* %105, %struct.gs_cmap_ranges_enum_s* %renum) #3
  br label %for.cond.63

for.cond.63:                                      ; preds = %if.end.71, %if.end.62
  %call64 = call i32 @gs_cmap_enum_next_range(%struct.gs_cmap_ranges_enum_s* %renum) #3
  store i32 %call64, i32* %code, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %for.body.67, label %for.end.75

for.body.67:                                      ; preds = %for.cond.63
  %106 = load i32, i32* %count, align 4, !tbaa !5
  %cmp68 = icmp eq i32 %106, 100
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %for.body.67
  %107 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [100 x %struct.gx_code_space_range_s], [100 x %struct.gx_code_space_range_s]* %ranges, i32 0, i32 0
  %108 = load i32, i32* %count, align 4, !tbaa !5
  call void @cmap_put_ranges(%struct.stream_s* %107, %struct.gx_code_space_range_s* %arraydecay, i32 %108) #3
  store i32 0, i32* %count, align 4, !tbaa !5
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %for.body.67
  %109 = load i32, i32* %count, align 4, !tbaa !5
  %inc72 = add nsw i32 %109, 1
  store i32 %inc72, i32* %count, align 4, !tbaa !5
  %idxprom73 = sext i32 %109 to i64
  %arrayidx74 = getelementptr inbounds [100 x %struct.gx_code_space_range_s], [100 x %struct.gx_code_space_range_s]* %ranges, i32 0, i64 %idxprom73
  %range = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %renum, i32 0, i32 0
  %110 = bitcast %struct.gx_code_space_range_s* %arrayidx74 to i8*
  %111 = bitcast %struct.gx_code_space_range_s* %range to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %110, i8* %111, i64 12, i32 4, i1 false), !tbaa.struct !26
  br label %for.cond.63

for.end.75:                                       ; preds = %for.cond.63
  %112 = load i32, i32* %code, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %112, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %for.end.75
  %113 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %113, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %for.end.75
  %114 = load i32, i32* %count, align 4, !tbaa !5
  %tobool80 = icmp ne i32 %114, 0
  br i1 %tobool80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.79
  %115 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay82 = getelementptr inbounds [100 x %struct.gx_code_space_range_s], [100 x %struct.gx_code_space_range_s]* %ranges, i32 0, i32 0
  %116 = load i32, i32* %count, align 4, !tbaa !5
  call void @cmap_put_ranges(%struct.stream_s* %115, %struct.gx_code_space_range_s* %arraydecay82, i32 %116) #3
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.79
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.83, %if.then.78
  %117 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast [100 x %struct.gx_code_space_range_s]* %ranges to i8*
  call void @llvm.lifetime.end(i64 1200, i8* %119) #1
  %120 = bitcast %struct.gs_cmap_ranges_enum_s* %renum to i8*
  call void @llvm.lifetime.end(i64 40, i8* %120) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.109 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %121 = bitcast i32* %code87 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #1
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %123 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %124 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %125 = load i32 (%struct.stream_s*, i8*, i32)*, i32 (%struct.stream_s*, i8*, i32)** %put_name_chars.addr, align 8, !tbaa !1
  %126 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %call88 = call i32 @cmap_put_code_map(%struct.gs_memory_s* %122, %struct.stream_s* %123, i32 1, %struct.gs_cmap_s* %124, %struct.cmap_operators_s* @cmap_notdef_operators, i32 (%struct.stream_s*, i8*, i32)* %125, i32 %126) #3
  store i32 %call88, i32* %code87, align 4, !tbaa !5
  %127 = load i32, i32* %code87, align 4, !tbaa !5
  %cmp89 = icmp slt i32 %127, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %cleanup.cont
  %128 = load i32, i32* %code87, align 4, !tbaa !5
  store i32 %128, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.98

if.end.92:                                        ; preds = %cleanup.cont
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %130 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %131 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %132 = load i32 (%struct.stream_s*, i8*, i32)*, i32 (%struct.stream_s*, i8*, i32)** %put_name_chars.addr, align 8, !tbaa !1
  %133 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %call93 = call i32 @cmap_put_code_map(%struct.gs_memory_s* %129, %struct.stream_s* %130, i32 0, %struct.gs_cmap_s* %131, %struct.cmap_operators_s* @cmap_cid_operators, i32 (%struct.stream_s*, i8*, i32)* %132, i32 %133) #3
  store i32 %call93, i32* %code87, align 4, !tbaa !5
  %134 = load i32, i32* %code87, align 4, !tbaa !5
  %cmp94 = icmp slt i32 %134, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.92
  %135 = load i32, i32* %code87, align 4, !tbaa !5
  store i32 %135, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.98

if.end.97:                                        ; preds = %if.end.92
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.98

cleanup.98:                                       ; preds = %if.end.97, %if.then.96, %if.then.91
  %136 = bitcast i32* %code87 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %cleanup.dest.99 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.99, label %cleanup.109 [
    i32 0, label %cleanup.cont.100
  ]

cleanup.cont.100:                                 ; preds = %cleanup.98
  %137 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call101 = call i32 @stream_puts(%struct.stream_s* %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)) #3
  %138 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call102 = call i32 @stream_puts(%struct.stream_s* %138, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i32 0, i32 0)) #3
  %139 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %ToUnicode103 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %139, i32 0, i32 10
  %140 = load i32, i32* %ToUnicode103, align 4, !tbaa !14
  %tobool104 = icmp ne i32 %140, 0
  br i1 %tobool104, label %if.end.108, label %if.then.105

if.then.105:                                      ; preds = %cleanup.cont.100
  %141 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call106 = call i32 @stream_puts(%struct.stream_s* %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0)) #3
  %142 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call107 = call i32 @stream_puts(%struct.stream_s* %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #3
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %cleanup.cont.100
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109

cleanup.109:                                      ; preds = %if.end.108, %cleanup.98, %cleanup, %sw.default
  %143 = bitcast %struct.gs_cid_system_info_s** %pcidsi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast %struct.gs_const_string_s** %cmap_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = load i32, i32* %retval
  ret i32 %145
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @stream_puts(%struct.stream_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @pput_string_entry(%struct.stream_s* %s, i8* %prefix, %struct.gs_const_string_s* %pstr) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %prefix.addr = alloca i8*, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %prefix, i8** %prefix.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %prefix.addr, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %0, i8* %1) #3
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8, !tbaa !18
  %5 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !19
  %call1 = call i32 @stream_write(%struct.stream_s* %2, i8* %4, i32 %6) #3
  ret void
}

declare i8* @pprintd1(%struct.stream_s*, i8*, i32) #2

declare i8* @pprintg1(%struct.stream_s*, i8*, double) #2

; Function Attrs: nounwind uwtable
define internal void @cmap_put_system_info(%struct.stream_s* %s, %struct.gs_cid_system_info_s* %pcidsi) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pcidsi.addr = alloca %struct.gs_cid_system_info_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_cid_system_info_s* %pcidsi, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %call = call i32 @cid_system_info_is_null(%struct.gs_cid_system_info_s* %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @stream_puts(%struct.stream_s* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0)) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call2 = call i32 @stream_puts(%struct.stream_s* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0)) #3
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call3 = call i32 @stream_puts(%struct.stream_s* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0)) #3
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %5 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Registry = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %5, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8, !tbaa !28
  %7 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Registry4 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %7, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry4, i32 0, i32 1
  %8 = load i32, i32* %size, align 4, !tbaa !29
  call void @s_write_ps_string(%struct.stream_s* %4, i8* %6, i32 %8, i32 0) #3
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call5 = call i32 @stream_puts(%struct.stream_s* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0)) #3
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Ordering = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %11, i32 0, i32 1
  %data6 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering, i32 0, i32 0
  %12 = load i8*, i8** %data6, align 8, !tbaa !30
  %13 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Ordering7 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %13, i32 0, i32 1
  %size8 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering7, i32 0, i32 1
  %14 = load i32, i32* %size8, align 4, !tbaa !31
  call void @s_write_ps_string(%struct.stream_s* %10, i8* %12, i32 %14, i32 0) #3
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %16 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Supplement = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %16, i32 0, i32 2
  %17 = load i32, i32* %Supplement, align 4, !tbaa !15
  %call9 = call i8* @pprintd1(%struct.stream_s* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), i32 %17) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #2

declare void @gs_cmap_ranges_enum_init(%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*) #2

declare i32 @gs_cmap_enum_next_range(%struct.gs_cmap_ranges_enum_s*) #2

; Function Attrs: nounwind uwtable
define internal void @cmap_put_ranges(%struct.stream_s* %s, %struct.gx_code_space_range_s* %pcsr, i32 %count) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pcsr.addr = alloca %struct.gx_code_space_range_s*, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gx_code_space_range_s* %pcsr, %struct.gx_code_space_range_s** %pcsr.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i32, i32* %count.addr, align 4, !tbaa !5
  %call = call i8* @pprintd1(%struct.stream_s* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i32 %2) #3
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %4 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @stream_puts(%struct.stream_s* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0)) #3
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %7 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %pcsr.addr, align 8, !tbaa !1
  %first = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %7, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %first, i32 0, i32 0
  %8 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %pcsr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %8, i32 0, i32 2
  %9 = load i32, i32* %size, align 4, !tbaa !32
  call void @pput_hex(%struct.stream_s* %6, i8* %arraydecay, i32 %9) #3
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call2 = call i32 @stream_puts(%struct.stream_s* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0)) #3
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %12 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %pcsr.addr, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %12, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [4 x i8], [4 x i8]* %last, i32 0, i32 0
  %13 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %pcsr.addr, align 8, !tbaa !1
  %size4 = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %13, i32 0, i32 2
  %14 = load i32, i32* %size4, align 4, !tbaa !32
  call void @pput_hex(%struct.stream_s* %11, i8* %arraydecay3, i32 %14) #3
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call5 = call i32 @stream_puts(%struct.stream_s* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0)) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %17 = load %struct.gx_code_space_range_s*, %struct.gx_code_space_range_s** %pcsr.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %17, i32 1
  store %struct.gx_code_space_range_s* %incdec.ptr, %struct.gx_code_space_range_s** %pcsr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call6 = call i32 @stream_puts(%struct.stream_s* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0)) #3
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @cmap_put_code_map(%struct.gs_memory_s* %mem, %struct.stream_s* %s, i32 %which, %struct.gs_cmap_s* %pcmap, %struct.cmap_operators_s* %pcmo, i32 (%struct.stream_s*, i8*, i32)* %put_name_chars, i32 %font_index_only) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %which.addr = alloca i32, align 4
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %pcmo.addr = alloca %struct.cmap_operators_s*, align 8
  %put_name_chars.addr = alloca i32 (%struct.stream_s*, i8*, i32)*, align 8
  %font_index_only.addr = alloca i32, align 4
  %lenum = alloca %struct.gs_cmap_lookups_enum_s, align 8
  %font_index = alloca i32, align 4
  %code = alloca i32, align 4
  %counter = alloca %struct.gs_cmap_lookups_enum_s, align 8
  %num_entries = alloca i32, align 4
  %gi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %ni = alloca i32, align 4
  %end = alloca i8*, align 8
  %j = alloca i32, align 4
  %value = alloca i64, align 8
  %value_size = alloca i32, align 4
  %str = alloca %struct.gs_const_string_s, align 8
  %code89 = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %which, i32* %which.addr, align 4, !tbaa !5
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.cmap_operators_s* %pcmo, %struct.cmap_operators_s** %pcmo.addr, align 8, !tbaa !1
  store i32 (%struct.stream_s*, i8*, i32)* %put_name_chars, i32 (%struct.stream_s*, i8*, i32)** %put_name_chars.addr, align 8, !tbaa !1
  store i32 %font_index_only, i32* %font_index_only.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_cmap_lookups_enum_s* %lenum to i8*
  call void @llvm.lifetime.start(i64 80, i8* %0) #1
  %1 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %num_fonts = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %2, i32 0, i32 4
  %3 = load i32, i32* %num_fonts, align 4, !tbaa !20
  %cmp = icmp sle i32 %3, 1
  %cond = select i1 %cmp, i32 0, i32 -1
  store i32 %cond, i32* %font_index, align 4, !tbaa !5
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %6 = load i32, i32* %which.addr, align 4, !tbaa !5
  call void @gs_cmap_lookups_enum_init(%struct.gs_cmap_s* %5, i32 %6, %struct.gs_cmap_lookups_enum_s* %lenum) #3
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.126, %cleanup.122, %entry
  %call = call i32 @gs_cmap_enum_next_lookup(%struct.gs_cmap_lookups_enum_s* %lenum) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %for.body, label %for.end.127

for.body:                                         ; preds = %for.cond
  %7 = bitcast %struct.gs_cmap_lookups_enum_s* %counter to i8*
  call void @llvm.lifetime.start(i64 80, i8* %7) #1
  %8 = bitcast i32* %num_entries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %num_entries, align 4, !tbaa !5
  %9 = bitcast i32* %gi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %10, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %entry3 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %font_index4 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry3, i32 0, i32 5
  %11 = load i32, i32* %font_index4, align 4, !tbaa !34
  %12 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %11, %12
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.122

if.end:                                           ; preds = %land.lhs.true, %for.body
  %13 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %13, 0
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.17

land.lhs.true.7:                                  ; preds = %if.end
  %entry8 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %font_index9 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry8, i32 0, i32 5
  %14 = load i32, i32* %font_index9, align 4, !tbaa !34
  %15 = load i32, i32* %font_index, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %14, %15
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %land.lhs.true.7
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %entry12 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %font_index13 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry12, i32 0, i32 5
  %17 = load i32, i32* %font_index13, align 4, !tbaa !34
  %call14 = call i8* @pprintd1(%struct.stream_s* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i32 %17) #3
  %entry15 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %font_index16 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry15, i32 0, i32 5
  %18 = load i32, i32* %font_index16, align 4, !tbaa !34
  store i32 %18, i32* %font_index, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.11, %land.lhs.true.7, %if.end
  %19 = bitcast %struct.gs_cmap_lookups_enum_s* %counter to i8*
  %20 = bitcast %struct.gs_cmap_lookups_enum_s* %lenum to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 80, i32 8, i1 false), !tbaa.struct !37
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.17
  %call18 = call i32 @gs_cmap_enum_next_entry(%struct.gs_cmap_lookups_enum_s* %counter) #3
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %num_entries, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %num_entries, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %gi, align 4, !tbaa !5
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.119, %while.end
  %22 = load i32, i32* %gi, align 4, !tbaa !5
  %23 = load i32, i32* %num_entries, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %22, %23
  br i1 %cmp21, label %for.body.22, label %for.end.121

for.body.22:                                      ; preds = %for.cond.20
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i32, i32* %gi, align 4, !tbaa !5
  store i32 %25, i32* %i, align 4, !tbaa !5
  %26 = bitcast i32* %ni to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %27, 100
  %28 = load i32, i32* %num_entries, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %add, %28
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.22
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %add24 = add nsw i32 %29, 100
  br label %cond.end

cond.false:                                       ; preds = %for.body.22
  %30 = load i32, i32* %num_entries, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond25 = phi i32 [ %add24, %cond.true ], [ %30, %cond.false ]
  store i32 %cond25, i32* %ni, align 4, !tbaa !5
  %31 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %33 = load i32, i32* %ni, align 4, !tbaa !5
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %33, %34
  %call26 = call i8* @pprintd1(%struct.stream_s* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 %sub) #3
  %entry27 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %key_is_range = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry27, i32 0, i32 2
  %35 = load i32, i32* %key_is_range, align 4, !tbaa !38
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then.28, label %if.else.38

if.then.28:                                       ; preds = %cond.end
  %entry29 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %value_type = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry29, i32 0, i32 3
  %36 = load i32, i32* %value_type, align 4, !tbaa !39
  %cmp30 = icmp eq i32 %36, 0
  br i1 %cmp30, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.28
  %entry31 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %value_type32 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry31, i32 0, i32 3
  %37 = load i32, i32* %value_type32, align 4, !tbaa !39
  %cmp33 = icmp eq i32 %37, 3
  br i1 %cmp33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %lor.lhs.false, %if.then.28
  %38 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %39 = load %struct.cmap_operators_s*, %struct.cmap_operators_s** %pcmo.addr, align 8, !tbaa !1
  %beginrange = getelementptr inbounds %struct.cmap_operators_s, %struct.cmap_operators_s* %39, i32 0, i32 2
  %40 = load i8*, i8** %beginrange, align 8, !tbaa !40
  %call35 = call i32 @stream_puts(%struct.stream_s* %38, i8* %40) #3
  %41 = load %struct.cmap_operators_s*, %struct.cmap_operators_s** %pcmo.addr, align 8, !tbaa !1
  %endrange = getelementptr inbounds %struct.cmap_operators_s, %struct.cmap_operators_s* %41, i32 0, i32 3
  %42 = load i8*, i8** %endrange, align 8, !tbaa !42
  store i8* %42, i8** %end, align 8, !tbaa !1
  br label %if.end.37

if.else:                                          ; preds = %lor.lhs.false
  %43 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call36 = call i32 @stream_puts(%struct.stream_s* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0)) #3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8** %end, align 8, !tbaa !1
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.34
  br label %if.end.51

if.else.38:                                       ; preds = %cond.end
  %entry39 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %value_type40 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry39, i32 0, i32 3
  %44 = load i32, i32* %value_type40, align 4, !tbaa !39
  %cmp41 = icmp eq i32 %44, 0
  br i1 %cmp41, label %if.then.46, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.else.38
  %entry43 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %value_type44 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry43, i32 0, i32 3
  %45 = load i32, i32* %value_type44, align 4, !tbaa !39
  %cmp45 = icmp eq i32 %45, 3
  br i1 %cmp45, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %lor.lhs.false.42, %if.else.38
  %46 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %47 = load %struct.cmap_operators_s*, %struct.cmap_operators_s** %pcmo.addr, align 8, !tbaa !1
  %beginchar = getelementptr inbounds %struct.cmap_operators_s, %struct.cmap_operators_s* %47, i32 0, i32 0
  %48 = load i8*, i8** %beginchar, align 8, !tbaa !43
  %call47 = call i32 @stream_puts(%struct.stream_s* %46, i8* %48) #3
  %49 = load %struct.cmap_operators_s*, %struct.cmap_operators_s** %pcmo.addr, align 8, !tbaa !1
  %endchar = getelementptr inbounds %struct.cmap_operators_s, %struct.cmap_operators_s* %49, i32 0, i32 1
  %50 = load i8*, i8** %endchar, align 8, !tbaa !44
  store i8* %50, i8** %end, align 8, !tbaa !1
  br label %if.end.50

if.else.48:                                       ; preds = %lor.lhs.false.42
  %51 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call49 = call i32 @stream_puts(%struct.stream_s* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0)) #3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8** %end, align 8, !tbaa !1
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.then.46
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.37
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.110, %if.end.51
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %53 = load i32, i32* %ni, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %52, %53
  br i1 %cmp53, label %for.body.54, label %for.end.112

for.body.54:                                      ; preds = %for.cond.52
  %54 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = bitcast i64* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = bitcast i32* %value_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %call55 = call i32 @gs_cmap_enum_next_entry(%struct.gs_cmap_lookups_enum_s* %lenum) #3
  %entry56 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %value57 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry56, i32 0, i32 4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value57, i32 0, i32 1
  %57 = load i32, i32* %size, align 4, !tbaa !45
  store i32 %57, i32* %value_size, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc, %for.body.54
  %58 = load i32, i32* %j, align 4, !tbaa !5
  %entry59 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %key_is_range60 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry59, i32 0, i32 2
  %59 = load i32, i32* %key_is_range60, align 4, !tbaa !38
  %cmp61 = icmp sle i32 %58, %59
  br i1 %cmp61, label %for.body.62, label %for.end

for.body.62:                                      ; preds = %for.cond.58
  %60 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call63 = call i32 @spputc(%struct.stream_s* %60, i8 zeroext 60) #3
  %61 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %62 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %62 to i64
  %entry64 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %key = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry64, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %key, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i32 0
  %entry65 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %key_size = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry65, i32 0, i32 1
  %63 = load i32, i32* %key_size, align 4, !tbaa !46
  call void @pput_hex(%struct.stream_s* %61, i8* %arraydecay, i32 %63) #3
  %64 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call66 = call i32 @spputc(%struct.stream_s* %64, i8 zeroext 62) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body.62
  %65 = load i32, i32* %j, align 4, !tbaa !5
  %inc67 = add nsw i32 %65, 1
  store i32 %inc67, i32* %j, align 4, !tbaa !5
  br label %for.cond.58

for.end:                                          ; preds = %for.cond.58
  store i32 0, i32* %j, align 4, !tbaa !5
  store i64 0, i64* %value, align 8, !tbaa !23
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.76, %for.end
  %66 = load i32, i32* %j, align 4, !tbaa !5
  %67 = load i32, i32* %value_size, align 4, !tbaa !5
  %cmp69 = icmp slt i32 %66, %67
  br i1 %cmp69, label %for.body.70, label %for.end.78

for.body.70:                                      ; preds = %for.cond.68
  %68 = load i64, i64* %value, align 8, !tbaa !23
  %shl = shl i64 %68, 8
  %69 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom71 = sext i32 %69 to i64
  %entry72 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %value73 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry72, i32 0, i32 4
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value73, i32 0, i32 0
  %70 = load i8*, i8** %data, align 8, !tbaa !47
  %arrayidx74 = getelementptr inbounds i8, i8* %70, i64 %idxprom71
  %71 = load i8, i8* %arrayidx74, align 1, !tbaa !27
  %conv = zext i8 %71 to i64
  %add75 = add nsw i64 %shl, %conv
  store i64 %add75, i64* %value, align 8, !tbaa !23
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.70
  %72 = load i32, i32* %j, align 4, !tbaa !5
  %inc77 = add nsw i32 %72, 1
  store i32 %inc77, i32* %j, align 4, !tbaa !5
  br label %for.cond.68

for.end.78:                                       ; preds = %for.cond.68
  %entry79 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %value_type80 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry79, i32 0, i32 3
  %73 = load i32, i32* %value_type80, align 4, !tbaa !39
  switch i32 %73, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb.82
    i32 1, label %sw.bb.88
  ]

sw.bb:                                            ; preds = %for.end.78, %for.end.78
  %74 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %75 = load i64, i64* %value, align 8, !tbaa !23
  %call81 = call i8* @pprintld1(%struct.stream_s* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i64 %75) #3
  br label %sw.epilog

sw.bb.82:                                         ; preds = %for.end.78
  %76 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call83 = call i32 @spputc(%struct.stream_s* %76, i8 zeroext 60) #3
  %77 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %entry84 = getelementptr inbounds %struct.gs_cmap_lookups_enum_s, %struct.gs_cmap_lookups_enum_s* %lenum, i32 0, i32 0
  %value85 = getelementptr inbounds %struct.gx_cmap_lookup_entry_s, %struct.gx_cmap_lookup_entry_s* %entry84, i32 0, i32 4
  %data86 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %value85, i32 0, i32 0
  %78 = load i8*, i8** %data86, align 8, !tbaa !47
  %79 = load i32, i32* %value_size, align 4, !tbaa !5
  call void @pput_hex(%struct.stream_s* %77, i8* %78, i32 %79) #3
  %80 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call87 = call i32 @spputc(%struct.stream_s* %80, i8 zeroext 62) #3
  br label %sw.epilog

sw.bb.88:                                         ; preds = %for.end.78
  %81 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %81) #1
  %82 = bitcast i32* %code89 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  %83 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %glyph_name = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %83, i32 0, i32 11
  %84 = load i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)** %glyph_name, align 8, !tbaa !48
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %86 = load i64, i64* %value, align 8, !tbaa !23
  %87 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %glyph_name_data = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %87, i32 0, i32 12
  %88 = load i8*, i8** %glyph_name_data, align 8, !tbaa !49
  %call90 = call i32 %84(%struct.gs_memory_s* %85, i64 %86, %struct.gs_const_string_s* %str, i8* %88) #3
  store i32 %call90, i32* %code89, align 4, !tbaa !5
  %89 = load i32, i32* %code89, align 4, !tbaa !5
  %cmp91 = icmp slt i32 %89, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %sw.bb.88
  %90 = load i32, i32* %code89, align 4, !tbaa !5
  store i32 %90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.94:                                        ; preds = %sw.bb.88
  %91 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call95 = call i32 @spputc(%struct.stream_s* %91, i8 zeroext 47) #3
  %92 = load i32 (%struct.stream_s*, i8*, i32)*, i32 (%struct.stream_s*, i8*, i32)** %put_name_chars.addr, align 8, !tbaa !1
  %93 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %data96 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %94 = load i8*, i8** %data96, align 8, !tbaa !18
  %size97 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %95 = load i32, i32* %size97, align 4, !tbaa !19
  %call98 = call i32 %92(%struct.stream_s* %93, i8* %94, i32 %95) #3
  store i32 %call98, i32* %code89, align 4, !tbaa !5
  %96 = load i32, i32* %code89, align 4, !tbaa !5
  %cmp99 = icmp slt i32 %96, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.94
  %97 = load i32, i32* %code89, align 4, !tbaa !5
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.102:                                       ; preds = %if.end.94
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.102, %if.then.101, %if.then.93
  %98 = bitcast i32* %code89 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %99) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.105 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.78
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105

sw.epilog:                                        ; preds = %cleanup.cont, %sw.bb.82, %sw.bb
  %100 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call104 = call i32 @spputc(%struct.stream_s* %100, i8 zeroext 10) #3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.105

cleanup.105:                                      ; preds = %sw.epilog, %sw.default, %cleanup
  %101 = bitcast i32* %value_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i64* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %cleanup.dest.108 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.108, label %cleanup.114 [
    i32 0, label %cleanup.cont.109
  ]

cleanup.cont.109:                                 ; preds = %cleanup.105
  br label %for.inc.110

for.inc.110:                                      ; preds = %cleanup.cont.109
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %inc111 = add nsw i32 %104, 1
  store i32 %inc111, i32* %i, align 4, !tbaa !5
  br label %for.cond.52

for.end.112:                                      ; preds = %for.cond.52
  %105 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %106 = load i8*, i8** %end, align 8, !tbaa !1
  %call113 = call i32 @stream_puts(%struct.stream_s* %105, i8* %106) #3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.114

cleanup.114:                                      ; preds = %for.end.112, %cleanup.105
  %107 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i32* %ni to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %cleanup.dest.117 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.117, label %cleanup.122 [
    i32 0, label %cleanup.cont.118
  ]

cleanup.cont.118:                                 ; preds = %cleanup.114
  br label %for.inc.119

for.inc.119:                                      ; preds = %cleanup.cont.118
  %110 = load i32, i32* %gi, align 4, !tbaa !5
  %add120 = add nsw i32 %110, 100
  store i32 %add120, i32* %gi, align 4, !tbaa !5
  br label %for.cond.20

for.end.121:                                      ; preds = %for.cond.20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.122

cleanup.122:                                      ; preds = %for.end.121, %cleanup.114, %if.then
  %111 = bitcast i32* %gi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %num_entries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast %struct.gs_cmap_lookups_enum_s* %counter to i8*
  call void @llvm.lifetime.end(i64 80, i8* %113) #1
  %cleanup.dest.125 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.125, label %cleanup.128 [
    i32 0, label %cleanup.cont.126
    i32 3, label %for.cond
  ]

cleanup.cont.126:                                 ; preds = %cleanup.122
  br label %for.cond

for.end.127:                                      ; preds = %for.cond
  %114 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.128

cleanup.128:                                      ; preds = %for.end.127, %cleanup.122
  %115 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast %struct.gs_cmap_lookups_enum_s* %lenum to i8*
  call void @llvm.lifetime.end(i64 80, i8* %117) #1
  %118 = load i32, i32* %retval
  ret i32 %118
}

declare i32 @stream_write(%struct.stream_s*, i8*, i32) #2

declare i32 @cid_system_info_is_null(%struct.gs_cid_system_info_s*) #2

declare void @s_write_ps_string(%struct.stream_s*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @pput_hex(%struct.stream_s* %s, i8* %pcid, i32 %size) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pcid.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %pcid, i8** %pcid.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %pcid.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %6 to i32
  %shr = ashr i32 %conv, 4
  %idxprom1 = sext i32 %shr to i64
  %7 = load i8*, i8** @pput_hex.hex_digits, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %idxprom1
  %8 = load i8, i8* %arrayidx2, align 1, !tbaa !27
  %call = call i32 @spputc(%struct.stream_s* %3, i8 zeroext %8) #3
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %10 to i64
  %11 = load i8*, i8** %pcid.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %11, i64 %idxprom3
  %12 = load i8, i8* %arrayidx4, align 1, !tbaa !27
  %conv5 = zext i8 %12 to i32
  %and = and i32 %conv5, 15
  %idxprom6 = sext i32 %and to i64
  %13 = load i8*, i8** @pput_hex.hex_digits, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 %idxprom6
  %14 = load i8, i8* %arrayidx7, align 1, !tbaa !27
  %call8 = call i32 @spputc(%struct.stream_s* %9, i8 zeroext %14) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  ret void
}

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #2

declare void @gs_cmap_lookups_enum_init(%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*) #2

declare i32 @gs_cmap_enum_next_lookup(%struct.gs_cmap_lookups_enum_s*) #2

declare i32 @gs_cmap_enum_next_entry(%struct.gs_cmap_lookups_enum_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 32}
!8 = !{!"gs_cmap_s", !6, i64 0, !9, i64 8, !10, i64 16, !2, i64 32, !6, i64 40, !11, i64 44, !12, i64 48, !9, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !2, i64 88, !2, i64 96, !2, i64 104}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!11 = !{!"float", !3, i64 0}
!12 = !{!"gs_uid_s", !9, i64 0, !2, i64 8}
!13 = !{!8, !6, i64 0}
!14 = !{!8, !6, i64 80}
!15 = !{!16, !6, i64 32}
!16 = !{!"gs_cid_system_info_s", !10, i64 0, !10, i64 16, !6, i64 32}
!17 = !{!8, !11, i64 44}
!18 = !{!10, !2, i64 0}
!19 = !{!10, !6, i64 8}
!20 = !{!8, !6, i64 40}
!21 = !{!12, !9, i64 0}
!22 = !{!12, !2, i64 8}
!23 = !{!9, !9, i64 0}
!24 = !{!8, !9, i64 64}
!25 = !{!8, !6, i64 72}
!26 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !5}
!27 = !{!3, !3, i64 0}
!28 = !{!16, !2, i64 0}
!29 = !{!16, !6, i64 8}
!30 = !{!16, !2, i64 16}
!31 = !{!16, !6, i64 24}
!32 = !{!33, !6, i64 8}
!33 = !{!"gx_code_space_range_s", !3, i64 0, !3, i64 4, !6, i64 8}
!34 = !{!35, !6, i64 40}
!35 = !{!"gs_cmap_lookups_enum_s", !36, i64 0, !2, i64 48, !2, i64 56, !3, i64 64, !3, i64 72}
!36 = !{!"gx_cmap_lookup_entry_s", !3, i64 0, !6, i64 8, !6, i64 12, !3, i64 16, !10, i64 24, !6, i64 40}
!37 = !{i64 0, i64 8, !27, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !27, i64 24, i64 8, !1, i64 32, i64 4, !5, i64 40, i64 4, !5, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !27, i64 72, i64 8, !27}
!38 = !{!35, !6, i64 12}
!39 = !{!35, !3, i64 16}
!40 = !{!41, !2, i64 16}
!41 = !{!"cmap_operators_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!42 = !{!41, !2, i64 24}
!43 = !{!41, !2, i64 0}
!44 = !{!41, !2, i64 8}
!45 = !{!35, !6, i64 32}
!46 = !{!35, !6, i64 8}
!47 = !{!35, !2, i64 24}
!48 = !{!8, !2, i64 88}
!49 = !{!8, !2, i64 96}
