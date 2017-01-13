; ModuleID = './gsioram.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { {}*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct._ramfs = type opaque
%struct.ramfs_state_s = type { %struct.gs_memory_s*, %struct._ramfs* }
%struct._ramhandle = type opaque
%struct.gsram_enum_s = type { i8*, %struct._ramfs_enum*, %struct.gs_memory_s* }
%struct._ramfs_enum = type opaque
%struct.string_match_params_s = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%ram%\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"FileSystem\00", align 1
@gs_iodev_ram = constant { i8*, i8*, { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }, i8* } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* } { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)* @iodev_ram_init, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_no_open_device, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @ram_open_file, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* @iodev_no_fopen, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)* @iodev_no_fclose, i32 (%struct.gx_io_device_s*, i8*)* @ram_delete, i32 (%struct.gx_io_device_s*, i8*, i8*)* @ram_rename, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)* @ram_status, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)* @ram_enumerate_init, i32 (%struct.file_enum_s*, i8*, i32)* @ram_enumerate_next, void (%struct.file_enum_s*)* @ram_enumerate_close, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @ram_get_params, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_put_params }, i8* null }, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"temporary filename string\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"free temporary filename string\00", align 1
@sread_ram.p = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_ram_available, i32 (%struct.stream_s*, i64)* @s_ram_read_seek, void (%struct.stream_s*)* @s_std_read_reset, i32 (%struct.stream_s*)* @s_std_read_flush, i32 (%struct.stream_s*)* @s_ram_read_close, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_ram_read_process, i32 (%struct.stream_s*, i32)* @s_ram_switch }, align 8
@swrite_ram.p = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_std_noavailable, i32 (%struct.stream_s*, i64)* @s_ram_write_seek, void (%struct.stream_s*)* @s_std_write_reset, i32 (%struct.stream_s*)* @s_ram_write_flush, i32 (%struct.stream_s*)* @s_ram_write_close, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_ram_write_process, i32 (%struct.stream_s*, i32)* @s_ram_switch }, align 8
@st_ramfs_state = internal constant %struct.gs_memory_struct_type_s { i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @ram_finalize, i8* bitcast (%struct.gc_struct_data_s* @ramfs_state_reloc_ptrs to i8*) }, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"ramfs_init(state)\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"iodev_ram_init(state)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ramfs_state\00", align 1
@ramfs_state_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @ramfs_state_enum_ptrs, i32 0, i32 0) }, align 8
@ramfs_state_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }], align 2
@st_gsram_enum = internal constant %struct.gs_memory_struct_type_s { i32 24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @gsram_enum_reloc_ptrs to i8*) }, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"ram_enumerate_files_init(file_enum)\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"ram_enumerate_file_init(pattern)\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"ramfs_enum_init(ramfs_enum)\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"ramfs_enum_init(pattern)\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"gsram_enum\00", align 1
@gsram_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @gsram_enum_enum_ptrs, i32 0, i32 0) }, align 8
@gsram_enum_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 16 }], align 2
@.str.12 = private unnamed_addr constant [9 x i8] c"HasNames\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"BlockSize\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Free\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"InitializeAction\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Mounted\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Removable\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Searchable\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"SearchOrder\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Writeable\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"LogicalSize\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @iodev_ram_init(%struct.gx_io_device_s* %iodev, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %fs = alloca %struct._ramfs*, align 8
  %state = alloca %struct.ramfs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct._ramfs* @ramfs_new(%struct.gs_memory_s* %1, i32 2000000) #5
  store %struct._ramfs* %call, %struct._ramfs** %fs, align 8, !tbaa !1
  %2 = bitcast %struct.ramfs_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %4 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i8* %4(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* @st_ramfs_state, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #5
  %6 = bitcast i8* %call1 to %struct.ramfs_state_s*
  store %struct.ramfs_state_s* %6, %struct.ramfs_state_s** %state, align 8, !tbaa !1
  %7 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %tobool = icmp ne %struct._ramfs* %7, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.ramfs_state_s*, %struct.ramfs_state_s** %state, align 8, !tbaa !1
  %tobool2 = icmp ne %struct.ramfs_state_s* %8, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %10 = load %struct.ramfs_state_s*, %struct.ramfs_state_s** %state, align 8, !tbaa !1
  %fs3 = getelementptr inbounds %struct.ramfs_state_s, %struct.ramfs_state_s* %10, i32 0, i32 1
  store %struct._ramfs* %9, %struct._ramfs** %fs3, align 8, !tbaa !8
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load %struct.ramfs_state_s*, %struct.ramfs_state_s** %state, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.ramfs_state_s, %struct.ramfs_state_s* %12, i32 0, i32 0
  store %struct.gs_memory_s* %11, %struct.gs_memory_s** %memory, align 8, !tbaa !10
  %13 = load %struct.ramfs_state_s*, %struct.ramfs_state_s** %state, align 8, !tbaa !1
  %14 = bitcast %struct.ramfs_state_s* %13 to i8*
  %15 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %state4 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %15, i32 0, i32 3
  store i8* %14, i8** %state4, align 8, !tbaa !11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %16 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %tobool5 = icmp ne %struct._ramfs* %16, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  call void @ramfs_destroy(%struct.gs_memory_s* %17, %struct._ramfs* %18) #5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %19 = load %struct.ramfs_state_s*, %struct.ramfs_state_s** %state, align 8, !tbaa !1
  %tobool8 = icmp ne %struct.ramfs_state_s* %19, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !14
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load %struct.ramfs_state_s*, %struct.ramfs_state_s** %state, align 8, !tbaa !1
  %24 = bitcast %struct.ramfs_state_s* %23 to i8*
  call void %21(%struct.gs_memory_s* %22, i8* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)) #5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then
  %25 = bitcast %struct.ramfs_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare i32 @iodev_no_open_device(%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ram_open_file(%struct.gx_io_device_s* %iodev, i8* %fname, i32 %len, i8* %file_access, %struct.stream_s** %ps, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %file_access.addr = alloca i8*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %file = alloca %struct._ramhandle*, align 8
  %fmode = alloca [4 x i8], align 1
  %openmode = alloca i32, align 4
  %fs = alloca %struct._ramfs*, align 8
  %namestr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !15
  store i8* %file_access, i8** %file_access.addr, align 8, !tbaa !1
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !15
  %1 = bitcast %struct._ramhandle** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %openmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 1, i32* %openmode, align 4, !tbaa !15
  %4 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %5, i32 0, i32 3
  %6 = load i8*, i8** %state, align 8, !tbaa !11
  %7 = bitcast i8* %6 to %struct.ramfs_state_s*
  %fs1 = getelementptr inbounds %struct.ramfs_state_s, %struct.ramfs_state_s* %7, i32 0, i32 1
  %8 = load %struct._ramfs*, %struct._ramfs** %fs1, align 8, !tbaa !8
  store %struct._ramfs* %8, %struct._ramfs** %fs, align 8, !tbaa !1
  %9 = bitcast i8** %namestr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  store i8* null, i8** %namestr, align 8, !tbaa !1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %11 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !17
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load i32, i32* %len.addr, align 4, !tbaa !15
  %add = add i32 %13, 1
  %call = call i8* %11(%struct.gs_memory_s* %12, i32 %add, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #5
  store i8* %call, i8** %namestr, align 8, !tbaa !1
  %14 = load i8*, i8** %namestr, align 8, !tbaa !1
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load i8*, i8** %namestr, align 8, !tbaa !1
  %16 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %17 = load i32, i32* %len.addr, align 4, !tbaa !15
  %conv = zext i32 %17 to i64
  %call2 = call i8* @strncpy(i8* %15, i8* %16, i64 %conv) #6
  %18 = load i32, i32* %len.addr, align 4, !tbaa !15
  %idxprom = zext i32 %18 to i64
  %19 = load i8*, i8** %namestr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !18
  %20 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.gx_io_device_s* %20, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 2
  %22 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !14
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %namestr, align 8, !tbaa !1
  call void %22(%struct.gs_memory_s* %23, i8* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %25 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %26 = load i32, i32* %len.addr, align 4, !tbaa !15
  %27 = load i8*, i8** %file_access.addr, align 8, !tbaa !1
  %28 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call7 = call i32 @file_prepare_stream(i8* %25, i32 %26, i8* %27, i32 2048, %struct.stream_s** %28, i8* %arraydecay, %struct.gs_memory_s* %29) #5
  store i32 %call7, i32* %code, align 4, !tbaa !15
  %30 = load i32, i32* %code, align 4, !tbaa !15
  %cmp = icmp slt i32 %30, 0
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  br label %error

if.end.10:                                        ; preds = %if.end.6
  %31 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %cmp11 = icmp eq i8* %31, null
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.10
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object15 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object15, align 8, !tbaa !14
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %namestr, align 8, !tbaa !1
  call void %33(%struct.gs_memory_s* %34, i8* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.10
  %arrayidx17 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i64 0
  %36 = load i8, i8* %arrayidx17, align 1, !tbaa !18
  %conv18 = sext i8 %36 to i32
  %cmp19 = icmp ne i32 %conv18, 114
  br i1 %cmp19, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %arrayidx21 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i64 1
  %37 = load i8, i8* %arrayidx21, align 1, !tbaa !18
  %conv22 = sext i8 %37 to i32
  %cmp23 = icmp eq i32 %conv22, 43
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false, %if.end.16
  %38 = load i32, i32* %openmode, align 4, !tbaa !15
  %or = or i32 %38, 4
  store i32 %or, i32* %openmode, align 4, !tbaa !15
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %lor.lhs.false
  %arrayidx27 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i64 0
  %39 = load i8, i8* %arrayidx27, align 1, !tbaa !18
  %conv28 = sext i8 %39 to i32
  %cmp29 = icmp ne i32 %conv28, 114
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.26
  %40 = load i32, i32* %openmode, align 4, !tbaa !15
  %or32 = or i32 %40, 2
  store i32 %or32, i32* %openmode, align 4, !tbaa !15
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.26
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %42 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %43 = load i8*, i8** %namestr, align 8, !tbaa !1
  %44 = load i32, i32* %openmode, align 4, !tbaa !15
  %call34 = call %struct._ramhandle* @ramfs_open(%struct.gs_memory_s* %41, %struct._ramfs* %42, i8* %43, i32 %44) #5
  store %struct._ramhandle* %call34, %struct._ramhandle** %file, align 8, !tbaa !1
  %45 = load %struct._ramhandle*, %struct._ramhandle** %file, align 8, !tbaa !1
  %tobool35 = icmp ne %struct._ramhandle* %45, null
  br i1 %tobool35, label %if.end.39, label %if.then.36

if.then.36:                                       ; preds = %if.end.33
  %46 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %call37 = call i32 @ramfs_error(%struct._ramfs* %46) #5
  %call38 = call i32 @ramfs_errno_to_code(i32 %call37) #5
  store i32 %call38, i32* %code, align 4, !tbaa !15
  br label %error

if.end.39:                                        ; preds = %if.end.33
  %arrayidx40 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i64 0
  %47 = load i8, i8* %arrayidx40, align 1, !tbaa !18
  %conv41 = sext i8 %47 to i32
  switch i32 %conv41, label %sw.epilog [
    i32 97, label %sw.bb
    i32 114, label %sw.bb.42
    i32 119, label %sw.bb.45
  ]

sw.bb:                                            ; preds = %if.end.39
  %48 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %49 = load %struct.stream_s*, %struct.stream_s** %48, align 8, !tbaa !1
  %50 = load %struct._ramhandle*, %struct._ramhandle** %file, align 8, !tbaa !1
  %51 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %52 = load %struct.stream_s*, %struct.stream_s** %51, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %52, i32 0, i32 6
  %53 = load i8*, i8** %cbuf, align 8, !tbaa !19
  %54 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %55 = load %struct.stream_s*, %struct.stream_s** %54, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %55, i32 0, i32 7
  %56 = load i32, i32* %bsize, align 4, !tbaa !26
  call void @sappend_ram(%struct.stream_s* %49, %struct._ramhandle* %50, i8* %53, i32 %56) #5
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.end.39
  %57 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %58 = load %struct.stream_s*, %struct.stream_s** %57, align 8, !tbaa !1
  %59 = load %struct._ramhandle*, %struct._ramhandle** %file, align 8, !tbaa !1
  %60 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %61 = load %struct.stream_s*, %struct.stream_s** %60, align 8, !tbaa !1
  %cbuf43 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %61, i32 0, i32 6
  %62 = load i8*, i8** %cbuf43, align 8, !tbaa !19
  %63 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %64 = load %struct.stream_s*, %struct.stream_s** %63, align 8, !tbaa !1
  %bsize44 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %64, i32 0, i32 7
  %65 = load i32, i32* %bsize44, align 4, !tbaa !26
  call void @sread_ram(%struct.stream_s* %58, %struct._ramhandle* %59, i8* %62, i32 %65) #5
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.end.39
  %66 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %67 = load %struct.stream_s*, %struct.stream_s** %66, align 8, !tbaa !1
  %68 = load %struct._ramhandle*, %struct._ramhandle** %file, align 8, !tbaa !1
  %69 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %70 = load %struct.stream_s*, %struct.stream_s** %69, align 8, !tbaa !1
  %cbuf46 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %70, i32 0, i32 6
  %71 = load i8*, i8** %cbuf46, align 8, !tbaa !19
  %72 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %73 = load %struct.stream_s*, %struct.stream_s** %72, align 8, !tbaa !1
  %bsize47 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %73, i32 0, i32 7
  %74 = load i32, i32* %bsize47, align 4, !tbaa !26
  call void @swrite_ram(%struct.stream_s* %67, %struct._ramhandle* %68, i8* %71, i32 %74) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.45, %if.end.39, %sw.bb.42, %sw.bb
  %75 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %76 = load %struct.stream_s*, %struct.stream_s** %75, align 8, !tbaa !1
  %procs48 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %76, i32 0, i32 14
  %close = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs48, i32 0, i32 4
  %77 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %close, align 8, !tbaa !27
  %78 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %79 = load %struct.stream_s*, %struct.stream_s** %78, align 8, !tbaa !1
  %save_close = getelementptr inbounds %struct.stream_s, %struct.stream_s* %79, i32 0, i32 25
  store i32 (%struct.stream_s*)* %77, i32 (%struct.stream_s*)** %save_close, align 8, !tbaa !28
  %80 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %81 = load %struct.stream_s*, %struct.stream_s** %80, align 8, !tbaa !1
  %procs49 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %81, i32 0, i32 14
  %close50 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs49, i32 0, i32 4
  store i32 (%struct.stream_s*)* @file_close_file, i32 (%struct.stream_s*)** %close50, align 8, !tbaa !27
  br label %error

error:                                            ; preds = %sw.epilog, %if.then.36, %if.then.9
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs51 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %82, i32 0, i32 1
  %free_object52 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs51, i32 0, i32 2
  %83 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object52, align 8, !tbaa !14
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %85 = load i8*, i8** %namestr, align 8, !tbaa !1
  call void %83(%struct.gs_memory_s* %84, i8* %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0)) #5
  %86 = load i32, i32* %code, align 4, !tbaa !15
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then.13, %if.then.4, %if.then
  %87 = bitcast i8** %namestr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %88 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = bitcast i32* %openmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast %struct._ramhandle** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = load i32, i32* %retval
  ret i32 %93
}

declare i32 @iodev_no_fopen(%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32) #1

declare i32 @iodev_no_fclose(%struct.gx_io_device_s*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ram_delete(%struct.gx_io_device_s* %iodev, i8* %fname) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %fs = alloca %struct._ramfs*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  %0 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %state, align 8, !tbaa !11
  %3 = bitcast i8* %2 to %struct.ramfs_state_s*
  %fs1 = getelementptr inbounds %struct.ramfs_state_s, %struct.ramfs_state_s* %3, i32 0, i32 1
  %4 = load %struct._ramfs*, %struct._ramfs** %fs1, align 8, !tbaa !8
  store %struct._ramfs* %4, %struct._ramfs** %fs, align 8, !tbaa !1
  %5 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %6 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call = call i32 @ramfs_unlink(%struct._ramfs* %5, i8* %6) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %call2 = call i32 @ramfs_error(%struct._ramfs* %7) #5
  %call3 = call i32 @ramfs_errno_to_code(i32 %call2) #5
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @ram_rename(%struct.gx_io_device_s* %iodev, i8* %from, i8* %to) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %from.addr = alloca i8*, align 8
  %to.addr = alloca i8*, align 8
  %fs = alloca %struct._ramfs*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %from, i8** %from.addr, align 8, !tbaa !1
  store i8* %to, i8** %to.addr, align 8, !tbaa !1
  %0 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %state, align 8, !tbaa !11
  %3 = bitcast i8* %2 to %struct.ramfs_state_s*
  %fs1 = getelementptr inbounds %struct.ramfs_state_s, %struct.ramfs_state_s* %3, i32 0, i32 1
  %4 = load %struct._ramfs*, %struct._ramfs** %fs1, align 8, !tbaa !8
  store %struct._ramfs* %4, %struct._ramfs** %fs, align 8, !tbaa !1
  %5 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %6 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %to.addr, align 8, !tbaa !1
  %call = call i32 @ramfs_rename(%struct._ramfs* %5, i8* %6, i8* %7) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %call2 = call i32 @ramfs_error(%struct._ramfs* %8) #5
  %call3 = call i32 @ramfs_errno_to_code(i32 %call2) #5
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @ram_status(%struct.gx_io_device_s* %iodev, i8* %fname, %struct.stat* %pstat) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %pstat.addr = alloca %struct.stat*, align 8
  %f = alloca %struct._ramhandle*, align 8
  %fs = alloca %struct._ramfs*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store %struct.stat* %pstat, %struct.stat** %pstat.addr, align 8, !tbaa !1
  %0 = bitcast %struct._ramhandle** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %2, i32 0, i32 3
  %3 = load i8*, i8** %state, align 8, !tbaa !11
  %4 = bitcast i8* %3 to %struct.ramfs_state_s*
  %fs1 = getelementptr inbounds %struct.ramfs_state_s, %struct.ramfs_state_s* %4, i32 0, i32 1
  %5 = load %struct._ramfs*, %struct._ramfs** %fs1, align 8, !tbaa !8
  store %struct._ramfs* %5, %struct._ramfs** %fs, align 8, !tbaa !1
  %6 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %state2 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %6, i32 0, i32 3
  %7 = load i8*, i8** %state2, align 8, !tbaa !11
  %8 = bitcast i8* %7 to %struct.ramfs_state_s*
  %memory = getelementptr inbounds %struct.ramfs_state_s, %struct.ramfs_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !10
  %10 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %11 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call = call %struct._ramhandle* @ramfs_open(%struct.gs_memory_s* %9, %struct._ramfs* %10, i8* %11, i32 1) #5
  store %struct._ramhandle* %call, %struct._ramhandle** %f, align 8, !tbaa !1
  %12 = load %struct._ramhandle*, %struct._ramhandle** %f, align 8, !tbaa !1
  %tobool = icmp ne %struct._ramhandle* %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %call3 = call i32 @ramfs_error(%struct._ramfs* %13) #5
  %call4 = call i32 @ramfs_errno_to_code(i32 %call3) #5
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.stat*, %struct.stat** %pstat.addr, align 8, !tbaa !1
  %15 = bitcast %struct.stat* %14 to i8*
  %call5 = call i8* @memset(i8* %15, i32 0, i64 144) #6
  %16 = load %struct._ramhandle*, %struct._ramhandle** %f, align 8, !tbaa !1
  %call6 = call i32 @ramfile_size(%struct._ramhandle* %16) #5
  %conv = sext i32 %call6 to i64
  %17 = load %struct.stat*, %struct.stat** %pstat.addr, align 8, !tbaa !1
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 8
  store i64 %conv, i64* %st_size, align 8, !tbaa !29
  %18 = load %struct._ramhandle*, %struct._ramhandle** %f, align 8, !tbaa !1
  call void @ramfile_close(%struct._ramhandle* %18) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct._ramhandle** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal %struct.file_enum_s* @ram_enumerate_init(%struct.gx_io_device_s* %iodev, i8* %pat, i32 %patlen, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.file_enum_s*, align 8
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %pat.addr = alloca i8*, align 8
  %patlen.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %penum = alloca %struct.gsram_enum_s*, align 8
  %pattern = alloca i8*, align 8
  %e = alloca %struct._ramfs_enum*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %pat, i8** %pat.addr, align 8, !tbaa !1
  store i32 %patlen, i32* %patlen.addr, align 4, !tbaa !15
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsram_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !5
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_gsram_enum, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0)) #5
  %4 = bitcast i8* %call to %struct.gsram_enum_s*
  store %struct.gsram_enum_s* %4, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %5 = bitcast i8** %pattern to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 7
  %7 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !17
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load i32, i32* %patlen.addr, align 4, !tbaa !15
  %add = add i32 %9, 1
  %call2 = call i8* %7(%struct.gs_memory_s* %8, i32 %add, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0)) #5
  store i8* %call2, i8** %pattern, align 8, !tbaa !1
  %10 = bitcast %struct._ramfs_enum** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %11, i32 0, i32 3
  %12 = load i8*, i8** %state, align 8, !tbaa !11
  %13 = bitcast i8* %12 to %struct.ramfs_state_s*
  %fs = getelementptr inbounds %struct.ramfs_state_s, %struct.ramfs_state_s* %13, i32 0, i32 1
  %14 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !8
  %call3 = call %struct._ramfs_enum* @ramfs_enum_new(%struct._ramfs* %14) #5
  store %struct._ramfs_enum* %call3, %struct._ramfs_enum** %e, align 8, !tbaa !1
  %15 = load %struct.gsram_enum_s*, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %tobool = icmp ne %struct.gsram_enum_s* %15, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %16 = load i8*, i8** %pattern, align 8, !tbaa !1
  %tobool4 = icmp ne i8* %16, null
  br i1 %tobool4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %17 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !1
  %tobool6 = icmp ne %struct._ramfs_enum* %17, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.5
  %18 = load i8*, i8** %pattern, align 8, !tbaa !1
  %19 = load i8*, i8** %pat.addr, align 8, !tbaa !1
  %20 = load i32, i32* %patlen.addr, align 4, !tbaa !15
  %conv = zext i32 %20 to i64
  %call7 = call i8* @memcpy(i8* %18, i8* %19, i64 %conv) #6
  %21 = load i32, i32* %patlen.addr, align 4, !tbaa !15
  %idxprom = zext i32 %21 to i64
  %22 = load i8*, i8** %pattern, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !18
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %24 = load %struct.gsram_enum_s*, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gsram_enum_s, %struct.gsram_enum_s* %24, i32 0, i32 2
  store %struct.gs_memory_s* %23, %struct.gs_memory_s** %memory, align 8, !tbaa !32
  %25 = load i8*, i8** %pattern, align 8, !tbaa !1
  %26 = load %struct.gsram_enum_s*, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %pattern8 = getelementptr inbounds %struct.gsram_enum_s, %struct.gsram_enum_s* %26, i32 0, i32 0
  store i8* %25, i8** %pattern8, align 8, !tbaa !34
  %27 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !1
  %28 = load %struct.gsram_enum_s*, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %e9 = getelementptr inbounds %struct.gsram_enum_s, %struct.gsram_enum_s* %28, i32 0, i32 1
  store %struct._ramfs_enum* %27, %struct._ramfs_enum** %e9, align 8, !tbaa !35
  %29 = load %struct.gsram_enum_s*, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %30 = bitcast %struct.gsram_enum_s* %29 to %struct.file_enum_s*
  store %struct.file_enum_s* %30, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.5, %land.lhs.true, %entry
  %31 = load %struct.gsram_enum_s*, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %tobool10 = icmp ne %struct.gsram_enum_s* %31, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !14
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %35 = load %struct.gsram_enum_s*, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %36 = bitcast %struct.gsram_enum_s* %35 to i8*
  call void %33(%struct.gs_memory_s* %34, i8* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)) #5
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  %37 = load i8*, i8** %pattern, align 8, !tbaa !1
  %tobool14 = icmp ne i8* %37, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %free_object17 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %39 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object17, align 8, !tbaa !14
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %41 = load i8*, i8** %pattern, align 8, !tbaa !1
  call void %39(%struct.gs_memory_s* %40, i8* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0)) #5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %42 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !1
  %tobool19 = icmp ne %struct._ramfs_enum* %42, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %43 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !1
  call void @ramfs_enum_end(%struct._ramfs_enum* %43) #5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  store %struct.file_enum_s* null, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then
  %44 = bitcast %struct._ramfs_enum** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = bitcast i8** %pattern to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast %struct.gsram_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = load %struct.file_enum_s*, %struct.file_enum_s** %retval
  ret %struct.file_enum_s* %47
}

; Function Attrs: nounwind uwtable
define internal i32 @ram_enumerate_next(%struct.file_enum_s* %pfen, i8* %ptr, i32 %maxlen) #0 {
entry:
  %retval = alloca i32, align 4
  %pfen.addr = alloca %struct.file_enum_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %maxlen.addr = alloca i32, align 4
  %penum = alloca %struct.gsram_enum_s*, align 8
  %filename = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.file_enum_s* %pfen, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %maxlen, i32* %maxlen.addr, align 4, !tbaa !15
  %0 = bitcast %struct.gsram_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %2 = bitcast %struct.file_enum_s* %1 to %struct.gsram_enum_s*
  store %struct.gsram_enum_s* %2, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %entry
  %4 = load %struct.gsram_enum_s*, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.gsram_enum_s, %struct.gsram_enum_s* %4, i32 0, i32 1
  %5 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !35
  %call = call i8* @ramfs_enum_next(%struct._ramfs_enum* %5) #5
  store i8* %call, i8** %filename, align 8, !tbaa !1
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %filename, align 8, !tbaa !1
  %7 = load i8*, i8** %filename, align 8, !tbaa !1
  %call1 = call i64 @strlen(i8* %7) #7
  %conv = trunc i64 %call1 to i32
  %8 = load %struct.gsram_enum_s*, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gsram_enum_s, %struct.gsram_enum_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %pattern, align 8, !tbaa !34
  %10 = load %struct.gsram_enum_s*, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %pattern2 = getelementptr inbounds %struct.gsram_enum_s, %struct.gsram_enum_s* %10, i32 0, i32 0
  %11 = load i8*, i8** %pattern2, align 8, !tbaa !34
  %call3 = call i64 @strlen(i8* %11) #7
  %conv4 = trunc i64 %call3 to i32
  %call5 = call i32 @string_match(i8* %6, i32 %conv, i8* %9, i32 %conv4, %struct.string_match_params_s* null) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end.15

if.then:                                          ; preds = %while.body
  %12 = load i8*, i8** %filename, align 8, !tbaa !1
  %call7 = call i64 @strlen(i8* %12) #7
  %13 = load i32, i32* %maxlen.addr, align 4, !tbaa !15
  %conv8 = zext i32 %13 to i64
  %cmp = icmp ult i64 %call7, %conv8
  br i1 %cmp, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %14 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %filename, align 8, !tbaa !1
  %16 = load i8*, i8** %filename, align 8, !tbaa !1
  %call11 = call i64 @strlen(i8* %16) #7
  %call12 = call i8* @memcpy(i8* %14, i8* %15, i64 %call11) #6
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %17 = load i8*, i8** %filename, align 8, !tbaa !1
  %call13 = call i64 @strlen(i8* %17) #7
  %conv14 = trunc i64 %call13 to i32
  store i32 %conv14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  call void @ram_enumerate_close(%struct.file_enum_s* %18) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end
  %19 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct.gsram_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal void @ram_enumerate_close(%struct.file_enum_s* %pfen) #0 {
entry:
  %pfen.addr = alloca %struct.file_enum_s*, align 8
  %penum = alloca %struct.gsram_enum_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.file_enum_s* %pfen, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsram_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %2 = bitcast %struct.file_enum_s* %1 to %struct.gsram_enum_s*
  store %struct.gsram_enum_s* %2, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gsram_enum_s*, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gsram_enum_s, %struct.gsram_enum_s* %4, i32 0, i32 2
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !32
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load %struct.gsram_enum_s*, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.gsram_enum_s, %struct.gsram_enum_s* %6, i32 0, i32 1
  %7 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !35
  call void @ramfs_enum_end(%struct._ramfs_enum* %7) #5
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %9 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !14
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %11 = load %struct.gsram_enum_s*, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gsram_enum_s, %struct.gsram_enum_s* %11, i32 0, i32 0
  %12 = load i8*, i8** %pattern, align 8, !tbaa !34
  call void %9(%struct.gs_memory_s* %10, i8* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0)) #5
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %free_object2 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object2, align 8, !tbaa !14
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %16 = load %struct.gsram_enum_s*, %struct.gsram_enum_s** %penum, align 8, !tbaa !1
  %17 = bitcast %struct.gsram_enum_s* %16 to i8*
  call void %14(%struct.gs_memory_s* %15, i8* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)) #5
  %18 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = bitcast %struct.gsram_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ram_get_params(%struct.gx_io_device_s* %iodev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %i0 = alloca i32, align 4
  %so = alloca i32, align 4
  %btrue = alloca i32, align 4
  %bfalse = alloca i32, align 4
  %fs = alloca %struct._ramfs*, align 8
  %BlockSize = alloca i32, align 4
  %Free = alloca i64, align 8
  %LogicalSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %i0, align 4, !tbaa !15
  %2 = bitcast i32* %so to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 1, i32* %so, align 4, !tbaa !15
  %3 = bitcast i32* %btrue to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 1, i32* %btrue, align 4, !tbaa !15
  %4 = bitcast i32* %bfalse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %bfalse, align 4, !tbaa !15
  %5 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %6, i32 0, i32 3
  %7 = load i8*, i8** %state, align 8, !tbaa !11
  %8 = bitcast i8* %7 to %struct.ramfs_state_s*
  %fs1 = getelementptr inbounds %struct.ramfs_state_s, %struct.ramfs_state_s* %8, i32 0, i32 1
  %9 = load %struct._ramfs*, %struct._ramfs** %fs1, align 8, !tbaa !8
  store %struct._ramfs* %9, %struct._ramfs** %fs, align 8, !tbaa !1
  %10 = bitcast i32* %BlockSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i64* %Free to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i64* %LogicalSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %call = call i32 @ramfs_blocksize(%struct._ramfs* %13) #5
  store i32 %call, i32* %BlockSize, align 4, !tbaa !15
  store i64 2000000, i64* %LogicalSize, align 8, !tbaa !36
  %14 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %call2 = call i32 @ramfs_blocksfree(%struct._ramfs* %14) #5
  %conv = sext i32 %call2 to i64
  store i64 %conv, i64* %Free, align 8, !tbaa !36
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call3 = call i32 @param_write_bool(%struct.gs_param_list_s* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32* %btrue) #5
  store i32 %call3, i32* %code, align 4, !tbaa !15
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call5 = call i32 @param_write_int(%struct.gs_param_list_s* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32* %BlockSize) #5
  store i32 %call5, i32* %code, align 4, !tbaa !15
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call9 = call i32 @param_write_long(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64* %Free) #5
  store i32 %call9, i32* %code, align 4, !tbaa !15
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.8
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call13 = call i32 @param_write_int(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32* %i0) #5
  store i32 %call13, i32* %code, align 4, !tbaa !15
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call17 = call i32 @param_write_bool(%struct.gs_param_list_s* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32* %btrue) #5
  store i32 %call17, i32* %code, align 4, !tbaa !15
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call21 = call i32 @param_write_bool(%struct.gs_param_list_s* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32* %bfalse) #5
  store i32 %call21, i32* %code, align 4, !tbaa !15
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.20
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call25 = call i32 @param_write_bool(%struct.gs_param_list_s* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32* %btrue) #5
  store i32 %call25, i32* %code, align 4, !tbaa !15
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.24
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call29 = call i32 @param_write_int(%struct.gs_param_list_s* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32* %so) #5
  store i32 %call29, i32* %code, align 4, !tbaa !15
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.28
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call33 = call i32 @param_write_bool(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32* %btrue) #5
  store i32 %call33, i32* %code, align 4, !tbaa !15
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.32
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call37 = call i32 @param_write_long(%struct.gs_param_list_s* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i64* %LogicalSize) #5
  store i32 %call37, i32* %code, align 4, !tbaa !15
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.36, %lor.lhs.false.32, %lor.lhs.false.28, %lor.lhs.false.24, %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false.8, %lor.lhs.false, %entry
  %25 = load i32, i32* %code, align 4, !tbaa !15
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.36
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %26 = bitcast i64* %LogicalSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast i64* %Free to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast i32* %BlockSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast i32* %bfalse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i32* %btrue to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %so to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @iodev_no_put_params(%struct.gx_io_device_s*, %struct.gs_param_list_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @file_prepare_stream(i8*, i32, i8*, i32, %struct.stream_s**, i8*, %struct.gs_memory_s*) #1

declare %struct._ramhandle* @ramfs_open(%struct.gs_memory_s*, %struct._ramfs*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @ramfs_errno_to_code(i32 %errno) #0 {
entry:
  %retval = alloca i32, align 4
  %errno.addr = alloca i32, align 4
  store i32 %errno, i32* %errno.addr, align 4, !tbaa !15
  %0 = load i32, i32* %errno.addr, align 4, !tbaa !15
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 5, label %sw.bb.1
    i32 6, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 -22, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 -9, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 -25, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -12, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare i32 @ramfs_error(%struct._ramfs*) #1

; Function Attrs: nounwind uwtable
define internal void @sappend_ram(%struct.stream_s* %s, %struct._ramhandle* %file, i8* %buf, i32 %len) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %file.addr = alloca %struct._ramhandle*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct._ramhandle* %file, %struct._ramhandle** %file.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !15
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct._ramhandle*, %struct._ramhandle** %file.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %3 = load i32, i32* %len.addr, align 4, !tbaa !15
  call void @swrite_ram(%struct.stream_s* %0, %struct._ramhandle* %1, i8* %2, i32 %3) #5
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 11
  store i8 10, i8* %modes, align 1, !tbaa !37
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 11
  %6 = load i8, i8* %modes1, align 1, !tbaa !37
  %conv = zext i8 %6 to i32
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 28
  store i32 %conv, i32* %file_modes, align 4, !tbaa !38
  %8 = load %struct._ramhandle*, %struct._ramhandle** %file.addr, align 8, !tbaa !1
  %call = call i32 @ramfile_seek(%struct._ramhandle* %8, i32 0, i32 2) #5
  %9 = load %struct._ramhandle*, %struct._ramhandle** %file.addr, align 8, !tbaa !1
  %call2 = call i32 @ramfile_tell(%struct._ramhandle* %9) #5
  %conv3 = sext i32 %call2 to i64
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 13
  store i64 %conv3, i64* %position, align 8, !tbaa !39
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sread_ram(%struct.stream_s* %s, %struct._ramhandle* %file, i8* %buf, i32 %len) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %file.addr = alloca %struct._ramhandle*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct._ramhandle* %file, %struct._ramhandle** %file.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !15
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %2 = load i32, i32* %len.addr, align 4, !tbaa !15
  call void @s_std_init(%struct.stream_s* %0, i8* %1, i32 %2, %struct.stream_procs* @sread_ram.p, i32 5) #5
  %3 = load %struct._ramhandle*, %struct._ramhandle** %file.addr, align 8, !tbaa !1
  %4 = bitcast %struct._ramhandle* %3 to %struct._IO_FILE*
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 26
  store %struct._IO_FILE* %4, %struct._IO_FILE** %file1, align 8, !tbaa !40
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 11
  %7 = load i8, i8* %modes, align 1, !tbaa !37
  %conv = zext i8 %7 to i32
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 28
  store i32 %conv, i32* %file_modes, align 4, !tbaa !38
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 29
  store i64 0, i64* %file_offset, align 8, !tbaa !41
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 30
  store i64 9223372036854775807, i64* %file_limit, align 8, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @swrite_ram(%struct.stream_s* %s, %struct._ramhandle* %file, i8* %buf, i32 %len) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %file.addr = alloca %struct._ramhandle*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct._ramhandle* %file, %struct._ramhandle** %file.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !15
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %2 = load i32, i32* %len.addr, align 4, !tbaa !15
  call void @s_std_init(%struct.stream_s* %0, i8* %1, i32 %2, %struct.stream_procs* @swrite_ram.p, i32 6) #5
  %3 = load %struct._ramhandle*, %struct._ramhandle** %file.addr, align 8, !tbaa !1
  %4 = bitcast %struct._ramhandle* %3 to %struct._IO_FILE*
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 26
  store %struct._IO_FILE* %4, %struct._IO_FILE** %file1, align 8, !tbaa !40
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 11
  %7 = load i8, i8* %modes, align 1, !tbaa !37
  %conv = zext i8 %7 to i32
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 28
  store i32 %conv, i32* %file_modes, align 4, !tbaa !38
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 29
  store i64 0, i64* %file_offset, align 8, !tbaa !41
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 30
  store i64 9223372036854775807, i64* %file_limit, align 8, !tbaa !42
  ret void
}

declare i32 @file_close_file(%struct.stream_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @ramfile_seek(%struct._ramhandle*, i32, i32) #1

declare i32 @ramfile_tell(%struct._ramhandle*) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_ram_available(%struct.stream_s* %s, i64* %pl) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pl.addr = alloca i64*, align 8
  %max_avail = alloca i64, align 8
  %buf_avail = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64* %pl, i64** %pl.addr, align 8, !tbaa !1
  %0 = bitcast i64* %max_avail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 30
  %2 = load i64, i64* %file_limit, align 8, !tbaa !42
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i64 @stell(%struct.stream_s* %3) #5
  %sub = sub nsw i64 %2, %call
  store i64 %sub, i64* %max_avail, align 8, !tbaa !36
  %4 = bitcast i64* %buf_avail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %6 = load i8*, i8** %limit, align 8, !tbaa !43
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %r2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r2, i32 0, i32 0
  %8 = load i8*, i8** %ptr, align 8, !tbaa !45
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %buf_avail, align 8, !tbaa !36
  %9 = load i64, i64* %max_avail, align 8, !tbaa !36
  %10 = load i64, i64* %buf_avail, align 8, !tbaa !36
  %cmp = icmp slt i64 %9, %10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i64, i64* %max_avail, align 8, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i64, i64* %buf_avail, align 8, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %12, %cond.false ]
  %13 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  store i64 %cond, i64* %13, align 8, !tbaa !36
  %14 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  %15 = load i64, i64* %14, align 8, !tbaa !36
  %cmp3 = icmp eq i64 %15, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 26
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !40
  %18 = bitcast %struct._IO_FILE* %17 to %struct._ramhandle*
  %call4 = call i32 @ramfile_eof(%struct._ramhandle* %18) #5
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  store i64 -1, i64* %19, align 8, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %20 = bitcast i64* %buf_avail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast i64* %max_avail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_ram_read_seek(%struct.stream_s* %s, i64 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pos.addr = alloca i64, align 8
  %end = alloca i32, align 4
  %offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %pos, i64* %pos.addr, align 8, !tbaa !36
  %0 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %2 = load i8*, i8** %limit, align 8, !tbaa !43
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 6
  %4 = load i8*, i8** %cbuf, align 8, !tbaa !19
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %end, align 4, !tbaa !15
  %5 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load i64, i64* %pos.addr, align 8, !tbaa !36
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 13
  %8 = load i64, i64* %position, align 8, !tbaa !39
  %sub = sub nsw i64 %6, %8
  store i64 %sub, i64* %offset, align 8, !tbaa !36
  %9 = load i64, i64* %offset, align 8, !tbaa !36
  %cmp = icmp sge i64 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load i64, i64* %offset, align 8, !tbaa !36
  %11 = load i32, i32* %end, align 4, !tbaa !15
  %conv2 = zext i32 %11 to i64
  %cmp3 = icmp sle i64 %10, %conv2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 6
  %13 = load i8*, i8** %cbuf5, align 8, !tbaa !19
  %14 = load i64, i64* %offset, align 8, !tbaa !36
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %14
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %r8 = bitcast %union.stream_cursor_s* %cursor7 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r8, i32 0, i32 0
  store i8* %add.ptr6, i8** %ptr, align 8, !tbaa !45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %16 = load i64, i64* %pos.addr, align 8, !tbaa !36
  %cmp9 = icmp slt i64 %16, 0
  br i1 %cmp9, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load i64, i64* %pos.addr, align 8, !tbaa !36
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 30
  %19 = load i64, i64* %file_limit, align 8, !tbaa !42
  %cmp11 = icmp sgt i64 %17, %19
  br i1 %cmp11, label %if.then.18, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 26
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !40
  %22 = bitcast %struct._IO_FILE* %21 to %struct._ramhandle*
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 29
  %24 = load i64, i64* %file_offset, align 8, !tbaa !41
  %25 = load i64, i64* %pos.addr, align 8, !tbaa !36
  %add14 = add nsw i64 %24, %25
  %conv15 = trunc i64 %add14 to i32
  %call = call i32 @ramfile_seek(%struct._ramhandle* %22, i32 %conv15, i32 0) #5
  %cmp16 = icmp ne i32 %call, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false, %if.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %lor.lhs.false.13
  %26 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 6
  %27 = load i8*, i8** %cbuf20, align 8, !tbaa !19
  %add.ptr21 = getelementptr inbounds i8, i8* %27, i64 -1
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 5
  %r23 = bitcast %union.stream_cursor_s* %cursor22 to %struct.stream_cursor_read_s*
  %limit24 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r23, i32 0, i32 1
  store i8* %add.ptr21, i8** %limit24, align 8, !tbaa !43
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 5
  %r26 = bitcast %union.stream_cursor_s* %cursor25 to %struct.stream_cursor_read_s*
  %ptr27 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r26, i32 0, i32 0
  store i8* %add.ptr21, i8** %ptr27, align 8, !tbaa !45
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 9
  store i16 0, i16* %end_status, align 2, !tbaa !46
  %31 = load i64, i64* %pos.addr, align 8, !tbaa !36
  %32 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %32, i32 0, i32 13
  store i64 %31, i64* %position28, align 8, !tbaa !39
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then
  %33 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare void @s_std_read_reset(%struct.stream_s*) #1

declare i32 @s_std_read_flush(%struct.stream_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_ram_read_close(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %file = alloca %struct._ramhandle*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct._ramhandle** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 26
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file1, align 8, !tbaa !40
  %3 = bitcast %struct._IO_FILE* %2 to %struct._ramhandle*
  store %struct._ramhandle* %3, %struct._ramhandle** %file, align 8, !tbaa !1
  %4 = load %struct._ramhandle*, %struct._ramhandle** %file, align 8, !tbaa !1
  %cmp = icmp ne %struct._ramhandle* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 26
  store %struct._IO_FILE* null, %struct._IO_FILE** %file2, align 8, !tbaa !40
  %6 = load %struct._ramhandle*, %struct._ramhandle** %file, align 8, !tbaa !1
  call void @ramfile_close(%struct._ramhandle* %6) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = bitcast %struct._ramhandle** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_ram_read_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ignore_pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %file = alloca %struct._ramhandle*, align 8
  %max_count = alloca i32, align 4
  %status = alloca i32, align 4
  %count = alloca i32, align 4
  %limit_count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_read_s** %ignore_pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !15
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_s*
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct._ramhandle** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 26
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file1, align 8, !tbaa !40
  %6 = bitcast %struct._IO_FILE* %5 to %struct._ramhandle*
  store %struct._ramhandle* %6, %struct._ramhandle** %file, align 8, !tbaa !1
  %7 = bitcast i32* %max_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %8, i32 0, i32 2
  %9 = load i8*, i8** %limit, align 8, !tbaa !47
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %ptr, align 8, !tbaa !49
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %max_count, align 4, !tbaa !15
  %12 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 1, i32* %status, align 4, !tbaa !15
  %13 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 30
  %15 = load i64, i64* %file_limit, align 8, !tbaa !42
  %cmp = icmp slt i64 %15, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %16 = bitcast i64* %limit_count to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 29
  %18 = load i64, i64* %file_offset, align 8, !tbaa !41
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_limit3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 30
  %20 = load i64, i64* %file_limit3, align 8, !tbaa !42
  %add = add nsw i64 %18, %20
  %21 = load %struct._ramhandle*, %struct._ramhandle** %file, align 8, !tbaa !1
  %call = call i32 @ramfile_tell(%struct._ramhandle* %21) #5
  %conv4 = sext i32 %call to i64
  %sub = sub nsw i64 %add, %conv4
  store i64 %sub, i64* %limit_count, align 8, !tbaa !36
  %22 = load i32, i32* %max_count, align 4, !tbaa !15
  %conv5 = zext i32 %22 to i64
  %23 = load i64, i64* %limit_count, align 8, !tbaa !36
  %cmp6 = icmp sgt i64 %conv5, %23
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %24 = load i64, i64* %limit_count, align 8, !tbaa !36
  %conv9 = trunc i64 %24 to i32
  store i32 %conv9, i32* %max_count, align 4, !tbaa !15
  store i32 -1, i32* %status, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %25 = bitcast i64* %limit_count to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %26 = load %struct._ramhandle*, %struct._ramhandle** %file, align 8, !tbaa !1
  %27 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr11 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %27, i32 0, i32 1
  %28 = load i8*, i8** %ptr11, align 8, !tbaa !49
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i32, i32* %max_count, align 4, !tbaa !15
  %call12 = call i32 @ramfile_read(%struct._ramhandle* %26, i8* %add.ptr, i32 %29) #5
  store i32 %call12, i32* %count, align 4, !tbaa !15
  %30 = load i32, i32* %count, align 4, !tbaa !15
  %cmp13 = icmp slt i32 %30, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.10
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.10
  %31 = load i32, i32* %count, align 4, !tbaa !15
  %32 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr17 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %32, i32 0, i32 1
  %33 = load i8*, i8** %ptr17, align 8, !tbaa !49
  %idx.ext = sext i32 %31 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr18, i8** %ptr17, align 8, !tbaa !49
  %34 = load %struct._ramhandle*, %struct._ramhandle** %file, align 8, !tbaa !1
  %call19 = call i32 @ramfile_eof(%struct._ramhandle* %34) #5
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %35 = load i32, i32* %status, align 4, !tbaa !15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %35, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.15
  %36 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %max_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast %struct._ramhandle** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @s_ram_switch(%struct.stream_s* %s, i32 %writing) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %writing.addr = alloca i32, align 4
  %modes = alloca i32, align 4
  %file = alloca %struct._ramhandle*, align 8
  %pos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %writing, i32* %writing.addr, align 4, !tbaa !15
  %0 = bitcast i32* %modes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 28
  %2 = load i32, i32* %file_modes, align 4, !tbaa !38
  store i32 %2, i32* %modes, align 4, !tbaa !15
  %3 = bitcast %struct._ramhandle** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 26
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file1, align 8, !tbaa !40
  %6 = bitcast %struct._IO_FILE* %5 to %struct._ramhandle*
  store %struct._ramhandle* %6, %struct._ramhandle** %file, align 8, !tbaa !1
  %7 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i32, i32* %writing.addr, align 4, !tbaa !15
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else.14

if.then:                                          ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 28
  %10 = load i32, i32* %file_modes2, align 4, !tbaa !38
  %and = and i32 %10, 2
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i64 @stell(%struct.stream_s* %11) #5
  store i64 %call, i64* %pos, align 8, !tbaa !36
  %12 = load %struct._ramhandle*, %struct._ramhandle** %file, align 8, !tbaa !1
  %13 = load i64, i64* %pos, align 8, !tbaa !36
  %conv = trunc i64 %13 to i32
  %call5 = call i32 @ramfile_seek(%struct._ramhandle* %12, i32 %conv, i32 0) #5
  %14 = load i32, i32* %modes, align 4, !tbaa !15
  %and6 = and i32 %14, 8
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %16 = load %struct._ramhandle*, %struct._ramhandle** %file, align 8, !tbaa !1
  %17 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 6
  %18 = load i8*, i8** %cbuf, align 8, !tbaa !19
  %19 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 8
  %20 = load i32, i32* %cbsize, align 4, !tbaa !50
  call void @sappend_ram(%struct.stream_s* %15, %struct._ramhandle* %16, i8* %18, i32 %20) #5
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %22 = load %struct._ramhandle*, %struct._ramhandle** %file, align 8, !tbaa !1
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 6
  %24 = load i8*, i8** %cbuf9, align 8, !tbaa !19
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbsize10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 8
  %26 = load i32, i32* %cbsize10, align 4, !tbaa !50
  call void @swrite_ram(%struct.stream_s* %21, %struct._ramhandle* %22, i8* %24, i32 %26) #5
  %27 = load i64, i64* %pos, align 8, !tbaa !36
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 13
  store i64 %27, i64* %position, align 8, !tbaa !39
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %29 = load i32, i32* %modes, align 4, !tbaa !15
  %conv12 = trunc i32 %29 to i8
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 11
  store i8 %conv12, i8* %modes13, align 1, !tbaa !37
  br label %if.end.32

if.else.14:                                       ; preds = %entry
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 28
  %32 = load i32, i32* %file_modes15, align 4, !tbaa !38
  %and16 = and i32 %32, 1
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.else.14
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.else.14
  %33 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call20 = call i64 @stell(%struct.stream_s* %33) #5
  store i64 %call20, i64* %pos, align 8, !tbaa !36
  %34 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %35 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !51
  %36 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call21 = call i32 %35(%struct.stream_s* %36) #5
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.19
  %37 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %38 = load %struct._ramhandle*, %struct._ramhandle** %file, align 8, !tbaa !1
  %39 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 6
  %40 = load i8*, i8** %cbuf25, align 8, !tbaa !19
  %41 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbsize26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %41, i32 0, i32 8
  %42 = load i32, i32* %cbsize26, align 4, !tbaa !50
  call void @sread_ram(%struct.stream_s* %37, %struct._ramhandle* %38, i8* %40, i32 %42) #5
  %43 = load i32, i32* %modes, align 4, !tbaa !15
  %and27 = and i32 %43, 8
  %44 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %44, i32 0, i32 11
  %45 = load i8, i8* %modes28, align 1, !tbaa !37
  %conv29 = zext i8 %45 to i32
  %or = or i32 %conv29, %and27
  %conv30 = trunc i32 %or to i8
  store i8 %conv30, i8* %modes28, align 1, !tbaa !37
  %46 = load i64, i64* %pos, align 8, !tbaa !36
  %47 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position31 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %47, i32 0, i32 13
  store i64 %46, i64* %position31, align 8, !tbaa !39
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.24, %if.end.11
  %48 = load i32, i32* %modes, align 4, !tbaa !15
  %49 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes33 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %49, i32 0, i32 28
  store i32 %48, i32* %file_modes33, align 4, !tbaa !38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.23, %if.then.18, %if.then.4
  %50 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast %struct._ramhandle** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = bitcast i32* %modes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare void @s_std_init(%struct.stream_s*, i8*, i32, %struct.stream_procs*, i32) #1

declare i64 @stell(%struct.stream_s*) #1

declare i32 @ramfile_eof(%struct._ramhandle*) #1

declare void @ramfile_close(%struct._ramhandle*) #1

declare i32 @ramfile_read(%struct._ramhandle*, i8*, i32) #1

declare i32 @s_std_noavailable(%struct.stream_s*, i64*) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_ram_write_seek(%struct.stream_s* %s, i64 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pos.addr = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %pos, i64* %pos.addr, align 8, !tbaa !36
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %2 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !51
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.stream_s* %3) #5
  store i32 %call, i32* %code, align 4, !tbaa !15
  %4 = load i32, i32* %code, align 4, !tbaa !15
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !15
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 26
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !40
  %8 = bitcast %struct._IO_FILE* %7 to %struct._ramhandle*
  %9 = load i64, i64* %pos.addr, align 8, !tbaa !36
  %conv = trunc i64 %9 to i32
  %call1 = call i32 @ramfile_seek(%struct._ramhandle* %8, i32 %conv, i32 0) #5
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %10 = load i64, i64* %pos.addr, align 8, !tbaa !36
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 13
  store i64 %10, i64* %position, align 8, !tbaa !39
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare void @s_std_write_reset(%struct.stream_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_ram_write_flush(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %result = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @s_process_write_buf(%struct.stream_s* %1, i32 0) #5
  store i32 %call, i32* %result, align 4, !tbaa !15
  %2 = load i32, i32* %result, align 4, !tbaa !15
  %3 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #2
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @s_ram_write_close(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @s_process_write_buf(%struct.stream_s* %0, i32 1) #5
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @s_ram_read_close(%struct.stream_s* %1) #5
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @s_ram_write_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %ignore_pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %ignore_pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %file = alloca %struct._ramhandle*, align 8
  %written = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %ignore_pw, %struct.stream_cursor_write_s** %ignore_pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !15
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %1, i32 0, i32 1
  %2 = load i8*, i8** %limit, align 8, !tbaa !43
  %3 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !45
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %count, align 4, !tbaa !15
  %5 = bitcast %struct._ramhandle** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %7 = bitcast %struct.stream_state_s* %6 to %struct.stream_s*
  %file1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 26
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file1, align 8, !tbaa !40
  %9 = bitcast %struct._IO_FILE* %8 to %struct._ramhandle*
  store %struct._ramhandle* %9, %struct._ramhandle** %file, align 8, !tbaa !1
  %10 = bitcast i32* %written to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct._ramhandle*, %struct._ramhandle** %file, align 8, !tbaa !1
  %12 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %12, i32 0, i32 0
  %13 = load i8*, i8** %ptr2, align 8, !tbaa !45
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i32, i32* %count, align 4, !tbaa !15
  %call = call i32 @ramfile_write(%struct._ramhandle* %11, i8* %add.ptr, i32 %14) #5
  store i32 %call, i32* %written, align 4, !tbaa !15
  %15 = load i32, i32* %written, align 4, !tbaa !15
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load i32, i32* %written, align 4, !tbaa !15
  %17 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %17, i32 0, i32 0
  %18 = load i8*, i8** %ptr4, align 8, !tbaa !45
  %idx.ext = sext i32 %16 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr5, i8** %ptr4, align 8, !tbaa !45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast i32* %written to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast %struct._ramhandle** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @s_process_write_buf(%struct.stream_s*, i32) #1

declare i32 @ramfile_write(%struct._ramhandle*, i8*, i32) #1

declare %struct._ramfs* @ramfs_new(%struct.gs_memory_s*, i32) #1

declare void @ramfs_destroy(%struct.gs_memory_s*, %struct._ramfs*) #1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind uwtable
define internal void @ram_finalize(%struct.gs_memory_s* %memory, i8* %vptr) #0 {
entry:
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %fs = alloca %struct._ramfs*, align 8
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.ramfs_state_s*
  %fs1 = getelementptr inbounds %struct.ramfs_state_s, %struct.ramfs_state_s* %2, i32 0, i32 1
  %3 = load %struct._ramfs*, %struct._ramfs** %fs1, align 8, !tbaa !8
  store %struct._ramfs* %3, %struct._ramfs** %fs, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %5 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  call void @ramfs_destroy(%struct.gs_memory_s* %4, %struct._ramfs* %5) #5
  %6 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  ret void
}

declare i32 @ramfs_unlink(%struct._ramfs*, i8*) #1

declare i32 @ramfs_rename(%struct._ramfs*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @ramfile_size(%struct._ramhandle*) #1

declare %struct._ramfs_enum* @ramfs_enum_new(%struct._ramfs*) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare void @ramfs_enum_end(%struct._ramfs_enum*) #1

declare i8* @ramfs_enum_next(%struct._ramfs_enum*) #1

declare i32 @string_match(i8*, i32, i8*, i32, %struct.string_match_params_s*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @ramfs_blocksize(%struct._ramfs*) #1

declare i32 @ramfs_blocksfree(%struct._ramfs*) #1

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_write_long(%struct.gs_param_list_s*, i8*, i64*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 72}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{!9, !2, i64 8}
!9 = !{!"ramfs_state_s", !2, i64 0, !2, i64 8}
!10 = !{!9, !2, i64 0}
!11 = !{!12, !2, i64 120}
!12 = !{!"gx_io_device_s", !2, i64 0, !2, i64 8, !13, i64 16, !2, i64 120}
!13 = !{!"gx_io_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!14 = !{!6, !2, i64 24}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !3, i64 0}
!17 = !{!6, !2, i64 64}
!18 = !{!3, !3, i64 0}
!19 = !{!20, !2, i64 136}
!20 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !16, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !16, i64 144, !16, i64 148, !21, i64 152, !3, i64 154, !3, i64 155, !22, i64 160, !23, i64 176, !24, i64 184, !2, i64 240, !16, i64 248, !16, i64 252, !2, i64 256, !21, i64 264, !21, i64 266, !2, i64 272, !2, i64 280, !16, i64 288, !16, i64 292, !2, i64 296, !2, i64 304, !25, i64 312, !16, i64 328, !23, i64 336, !23, i64 344}
!21 = !{!"short", !3, i64 0}
!22 = !{!"gs_string_s", !2, i64 0, !16, i64 8}
!23 = !{!"long", !3, i64 0}
!24 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!25 = !{!"gs_const_string_s", !2, i64 0, !16, i64 8}
!26 = !{!20, !16, i64 144}
!27 = !{!20, !2, i64 216}
!28 = !{!20, !2, i64 296}
!29 = !{!30, !23, i64 48}
!30 = !{!"stat", !23, i64 0, !23, i64 8, !23, i64 16, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !31, i64 72, !31, i64 88, !31, i64 104, !3, i64 120}
!31 = !{!"timespec", !23, i64 0, !23, i64 8}
!32 = !{!33, !2, i64 16}
!33 = !{!"gsram_enum_s", !2, i64 0, !2, i64 8, !2, i64 16}
!34 = !{!33, !2, i64 0}
!35 = !{!33, !2, i64 8}
!36 = !{!23, !23, i64 0}
!37 = !{!20, !3, i64 155}
!38 = !{!20, !16, i64 328}
!39 = !{!20, !23, i64 176}
!40 = !{!20, !2, i64 304}
!41 = !{!20, !23, i64 336}
!42 = !{!20, !23, i64 344}
!43 = !{!44, !2, i64 8}
!44 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!45 = !{!44, !2, i64 0}
!46 = !{!20, !21, i64 152}
!47 = !{!48, !2, i64 16}
!48 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!49 = !{!48, !2, i64 8}
!50 = !{!20, !16, i64 148}
!51 = !{!20, !2, i64 208}
