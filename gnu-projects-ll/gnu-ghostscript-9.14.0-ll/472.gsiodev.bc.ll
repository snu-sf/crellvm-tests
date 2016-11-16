; ModuleID = './gsiodev.bc'
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
%struct.stream_s = type opaque
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
%struct.gs_file_enum_s = type { %struct.gs_memory_s*, %struct.gx_io_device_s*, %struct.file_enum_s*, i32 }
%struct.gs_parsed_file_name_s = type { %struct.gs_memory_s*, %struct.gx_io_device_s*, i8*, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@.str = private unnamed_addr constant [5 x i8] c"%os%\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"FileSystem\00", align 1
@gs_iodev_os = constant { i8*, i8*, { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }, i8* } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* } { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)* @iodev_no_init, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_no_open_device, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* null, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* @iodev_os_gp_fopen, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)* @iodev_os_fclose, i32 (%struct.gx_io_device_s*, i8*)* @os_delete, i32 (%struct.gx_io_device_s*, i8*, i8*)* @os_rename, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)* @os_status, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)* @os_enumerate, i32 (%struct.file_enum_s*, i8*, i32)* @gp_enumerate_files_next, void (%struct.file_enum_s*)* @gp_enumerate_files_close, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @os_get_params, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_put_params }, i8* null }, align 8
@gx_io_device_table_count = external constant i32, align 4
@st_io_device_ptr_element = internal constant %struct.gs_memory_struct_type_s { i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @iodev_ptr_elt_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @iodev_ptr_elt_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gs_iodev_finalize, i8* null }, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"gs_iodev_init(table)\00", align 1
@st_io_device = internal constant %struct.gs_memory_struct_type_s { i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @io_device_reloc_ptrs to i8*) }, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"gs_iodev_init(iodev)\00", align 1
@gx_io_device_table = external constant [0 x %struct.gx_io_device_s*], align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"io_device_table\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@st_gs_file_enum = internal constant %struct.gs_memory_struct_type_s { i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @gs_file_enum_reloc_ptrs to i8*) }, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"gs_enumerate_files_init\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"gs_enumerate_files_close\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"gx_io_device *[]\00", align 1
@st_io_device_ptr = internal constant %struct.gs_memory_struct_type_s { i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @iodev_ptr_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @iodev_ptr_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"gx_io_device *\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"gx_io_device\00", align 1
@io_device_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @io_device_enum_ptrs, i32 0, i32 0) }, align 8
@io_device_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 120 }], align 2
@.str.11 = private unnamed_addr constant [9 x i8] c"HasNames\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"BlockSize\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Free\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"InitializeAction\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Mounted\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Removable\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Searchable\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"SearchOrder\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Writeable\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"LogicalSize\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"gs_file_enum\00", align 1
@gs_file_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @gs_file_enum_enum_ptrs, i32 0, i32 0) }, align 8
@gs_file_enum_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 16 }], align 2

; Function Attrs: nounwind uwtable
define i32 @iodev_no_init(%struct.gx_io_device_s* %iodev, %struct.gs_memory_s* %mem) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @iodev_no_open_device(%struct.gx_io_device_s* %iodev, i8* %access, %struct.stream_s** %ps, %struct.gs_memory_s* %mem) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %access.addr = alloca i8*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %access, i8** %access.addr, align 8, !tbaa !1
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  ret i32 -9
}

; Function Attrs: nounwind uwtable
define i32 @iodev_os_gp_fopen(%struct.gx_io_device_s* %iodev, i8* %fname, i8* %access, %struct._IO_FILE** %pfile, i8* %rfname, i32 %rnamelen) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %access.addr = alloca i8*, align 8
  %pfile.addr = alloca %struct._IO_FILE**, align 8
  %rfname.addr = alloca i8*, align 8
  %rnamelen.addr = alloca i32, align 4
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i8* %access, i8** %access.addr, align 8, !tbaa !1
  store %struct._IO_FILE** %pfile, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !1
  store i8* %rfname, i8** %rfname.addr, align 8, !tbaa !1
  store i32 %rnamelen, i32* %rnamelen.addr, align 4, !tbaa !5
  %call = call i32* @__errno_location() #7
  store i32 0, i32* %call, align 4, !tbaa !5
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %call1 = call %struct._IO_FILE* @gp_fopen(i8* %0, i8* %1) #8
  %2 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %2, align 8, !tbaa !1
  %3 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !tbaa !1
  %cmp = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32* @__errno_location() #7
  %5 = load i32, i32* %call2, align 4, !tbaa !5
  %call3 = call i32 @gs_fopen_errno_to_code(i32 %5) #8
  store i32 %call3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %rfname.addr, align 8, !tbaa !1
  %cmp4 = icmp ne i8* %6, null
  br i1 %cmp4, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %7 = load i8*, i8** %rfname.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %cmp5 = icmp ne i8* %7, %8
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %land.lhs.true
  %9 = load i8*, i8** %rfname.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call7 = call i8* @strcpy(i8* %9, i8* %10) #9
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %land.lhs.true, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @iodev_os_fclose(%struct.gx_io_device_s* %iodev, %struct._IO_FILE* %file) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fclose(%struct._IO_FILE* %0) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @os_delete(%struct.gx_io_device_s* %iodev, i8* %fname) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call = call i32 @unlink(i8* %0) #9
  %cmp = icmp eq i32 %call, 0
  %cond = select i1 %cmp, i32 0, i32 -12
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @os_rename(%struct.gx_io_device_s* %iodev, i8* %from, i8* %to) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %from.addr = alloca i8*, align 8
  %to.addr = alloca i8*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %from, i8** %from.addr, align 8, !tbaa !1
  store i8* %to, i8** %to.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %to.addr, align 8, !tbaa !1
  %call = call i32 @rename(i8* %0, i8* %1) #9
  %cmp = icmp eq i32 %call, 0
  %cond = select i1 %cmp, i32 0, i32 -12
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @os_status(%struct.gx_io_device_s* %iodev, i8* %fname, %struct.stat* %pstat) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %pstat.addr = alloca %struct.stat*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store %struct.stat* %pstat, %struct.stat** %pstat.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %1 = load %struct.stat*, %struct.stat** %pstat.addr, align 8, !tbaa !1
  %call = call i32 bitcast (i32 (i8*, %struct.stat64*)* @stat64 to i32 (i8*, %struct.stat*)*)(i8* %0, %struct.stat* %1) #9
  %cmp = icmp slt i32 %call, 0
  %cond = select i1 %cmp, i32 -22, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal %struct.file_enum_s* @os_enumerate(%struct.gx_io_device_s* %iodev, i8* %pat, i32 %patlen, %struct.gs_memory_s* %mem) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %pat.addr = alloca i8*, align 8
  %patlen.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %pat, i8** %pat.addr, align 8, !tbaa !1
  store i32 %patlen, i32* %patlen.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %pat.addr, align 8, !tbaa !1
  %1 = load i32, i32* %patlen.addr, align 4, !tbaa !5
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.file_enum_s* @gp_enumerate_files_init(i8* %0, i32 %1, %struct.gs_memory_s* %2) #8
  ret %struct.file_enum_s* %call
}

declare i32 @gp_enumerate_files_next(%struct.file_enum_s*, i8*, i32) #1

declare void @gp_enumerate_files_close(%struct.file_enum_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @os_get_params(%struct.gx_io_device_s* %iodev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %i0 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %btrue = alloca i32, align 4
  %bfalse = alloca i32, align 4
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
  store i32 0, i32* %i0, align 4, !tbaa !5
  %2 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 2, i32* %i2, align 4, !tbaa !5
  %3 = bitcast i32* %btrue to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 1, i32* %btrue, align 4, !tbaa !5
  %4 = bitcast i32* %bfalse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %bfalse, align 4, !tbaa !5
  %5 = bitcast i32* %BlockSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i64* %Free to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i64* %LogicalSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  store i32 1024, i32* %BlockSize, align 4, !tbaa !5
  %8 = load i32, i32* %BlockSize, align 4, !tbaa !5
  %div = sdiv i32 2000000000, %8
  %conv = sext i32 %div to i64
  store i64 %conv, i64* %LogicalSize, align 8, !tbaa !7
  %9 = load i64, i64* %LogicalSize, align 8, !tbaa !7
  %mul = mul nsw i64 %9, 3
  %div1 = sdiv i64 %mul, 4
  store i64 %div1, i64* %Free, align 8, !tbaa !7
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @param_write_bool(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32* %btrue) #8
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call3 = call i32 @param_write_int(%struct.gs_param_list_s* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32* %BlockSize) #8
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call7 = call i32 @param_write_long(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i64* %Free) #8
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call11 = call i32 @param_write_int(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32* %i0) #8
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.10
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call15 = call i32 @param_write_bool(%struct.gs_param_list_s* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32* %btrue) #8
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.14
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call19 = call i32 @param_write_bool(%struct.gs_param_list_s* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32* %bfalse) #8
  store i32 %call19, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.18
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call23 = call i32 @param_write_bool(%struct.gs_param_list_s* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32* %btrue) #8
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.22
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call27 = call i32 @param_write_int(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32* %i2) #8
  store i32 %call27, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.26
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call31 = call i32 @param_write_bool(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32* %btrue) #8
  store i32 %call31, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.30
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call35 = call i32 @param_write_long(%struct.gs_param_list_s* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i64* %LogicalSize) #8
  store i32 %call35, i32* %code, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.34, %lor.lhs.false.30, %lor.lhs.false.26, %lor.lhs.false.22, %lor.lhs.false.18, %lor.lhs.false.14, %lor.lhs.false.10, %lor.lhs.false.6, %lor.lhs.false, %entry
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %21 = bitcast i64* %LogicalSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast i64* %Free to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast i32* %BlockSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast i32* %bfalse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %btrue to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @iodev_no_put_params(%struct.gx_io_device_s* %iodev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %0, i32 0, i32 0
  %1 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !9
  %commit = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %1, i32 0, i32 8
  %2 = load i32 (%struct.gs_param_list_s*)*, i32 (%struct.gs_param_list_s*)** %commit, align 8, !tbaa !11
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_param_list_s* %3) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_iodev_init(%struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %table = alloca %struct.gx_io_device_s**, align 8
  %libctx = alloca %struct.gs_lib_ctx_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %iodev = alloca %struct.gx_io_device_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_io_device_s*** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %2 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !13
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i32, i32* @gx_io_device_table_count, align 4, !tbaa !5
  %call = call i8* %2(%struct.gs_memory_s* %3, i32 %4, %struct.gs_memory_struct_type_s* @st_io_device_ptr_element, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #8
  %5 = bitcast i8* %call to %struct.gx_io_device_s**
  store %struct.gx_io_device_s** %5, %struct.gx_io_device_s*** %table, align 8, !tbaa !1
  %6 = bitcast %struct.gs_lib_ctx_s** %libctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %7) #8
  store %struct.gs_lib_ctx_s* %call1, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %11 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %table, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_io_device_s** %11, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gs_lib_ctx_s* %12, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %14 = load i32, i32* @gx_io_device_table_count, align 4, !tbaa !5
  %cmp3 = icmp ult i32 %13, %14
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 8
  %17 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !16
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call5 = call i8* %17(%struct.gs_memory_s* %18, %struct.gs_memory_struct_type_s* @st_io_device, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #8
  %19 = bitcast i8* %call5 to %struct.gx_io_device_s*
  store %struct.gx_io_device_s* %19, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %20 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.gx_io_device_s* %20, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %for.body
  %21 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %table, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_io_device_s*, %struct.gx_io_device_s** %23, i64 %idxprom
  store %struct.gx_io_device_s* %21, %struct.gx_io_device_s** %arrayidx, align 8, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %24 to i64
  %25 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %table, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.gx_io_device_s*, %struct.gx_io_device_s** %25, i64 %idxprom9
  %26 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %arrayidx10, align 8, !tbaa !1
  %27 = bitcast %struct.gx_io_device_s* %26 to i8*
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %28 to i64
  %arrayidx12 = getelementptr inbounds [0 x %struct.gx_io_device_s*], [0 x %struct.gx_io_device_s*]* @gx_io_device_table, i32 0, i64 %idxprom11
  %29 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %arrayidx12, align 8, !tbaa !1
  %30 = bitcast %struct.gx_io_device_s* %29 to i8*
  %call13 = call i8* @memcpy(i8* %27, i8* %30, i64 128) #9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.7, %if.end.8
  %31 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.47 [
    i32 0, label %cleanup.cont
    i32 5, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %table, align 8, !tbaa !1
  %34 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %io_device_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %34, i32 0, i32 18
  store %struct.gx_io_device_s** %33, %struct.gx_io_device_s*** %io_device_table, align 8, !tbaa !17
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %36 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %io_device_table14 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %36, i32 0, i32 18
  %37 = bitcast %struct.gx_io_device_s*** %io_device_table14 to i8**
  %call15 = call i32 @gs_register_struct_root(%struct.gs_memory_s* %35, %struct.gs_gc_root_s* null, i8** %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #8
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %38, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  br label %fail

if.end.18:                                        ; preds = %for.end
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.32, %if.end.18
  %39 = load i32, i32* %j, align 4, !tbaa !5
  %40 = load i32, i32* @gx_io_device_table_count, align 4, !tbaa !5
  %cmp20 = icmp ult i32 %39, %40
  br i1 %cmp20, label %for.body.21, label %for.end.34

for.body.21:                                      ; preds = %for.cond.19
  %41 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom22 = sext i32 %41 to i64
  %42 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %table, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.gx_io_device_s*, %struct.gx_io_device_s** %42, i64 %idxprom22
  %43 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %arrayidx23, align 8, !tbaa !1
  %procs24 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %43, i32 0, i32 2
  %init = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs24, i32 0, i32 0
  %init25 = bitcast {}** %init to i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)**
  %44 = load i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)** %init25, align 8, !tbaa !19
  %45 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom26 = sext i32 %45 to i64
  %46 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %table, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.gx_io_device_s*, %struct.gx_io_device_s** %46, i64 %idxprom26
  %47 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %arrayidx27, align 8, !tbaa !1
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call28 = call i32 %44(%struct.gx_io_device_s* %47, %struct.gs_memory_s* %48) #8
  store i32 %call28, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.body.21
  br label %f2

if.end.31:                                        ; preds = %for.body.21
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %49 = load i32, i32* %j, align 4, !tbaa !5
  %inc33 = add nsw i32 %49, 1
  store i32 %inc33, i32* %j, align 4, !tbaa !5
  br label %for.cond.19

for.end.34:                                       ; preds = %for.cond.19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

f2:                                               ; preds = %if.then.30
  br label %fail

fail:                                             ; preds = %f2, %cleanup, %if.then.17
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.41, %fail
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %cmp36 = icmp sgt i32 %50, 0
  br i1 %cmp36, label %for.body.37, label %for.end.42

for.body.37:                                      ; preds = %for.cond.35
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs38, i32 0, i32 2
  %52 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !22
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %54, 1
  %idxprom39 = sext i32 %sub to i64
  %55 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %table, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds %struct.gx_io_device_s*, %struct.gx_io_device_s** %55, i64 %idxprom39
  %56 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %arrayidx40, align 8, !tbaa !1
  %57 = bitcast %struct.gx_io_device_s* %56 to i8*
  call void %52(%struct.gs_memory_s* %53, i8* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #8
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.37
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond.35

for.end.42:                                       ; preds = %for.cond.35
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 1
  %free_object44 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs43, i32 0, i32 2
  %60 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object44, align 8, !tbaa !22
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %62 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %table, align 8, !tbaa !1
  %63 = bitcast %struct.gx_io_device_s** %62 to i8*
  call void %60(%struct.gs_memory_s* %61, i8* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #8
  %64 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %io_device_table45 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %64, i32 0, i32 18
  store %struct.gx_io_device_s** null, %struct.gx_io_device_s*** %io_device_table45, align 8, !tbaa !17
  %65 = load i32, i32* %code, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %65, 0
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.42
  %66 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %for.end.42
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %66, %cond.true ], [ -25, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

cleanup.47:                                       ; preds = %cond.end, %for.end.34, %cleanup, %if.then
  %67 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast %struct.gs_lib_ctx_s** %libctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = bitcast %struct.gx_io_device_s*** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #2
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s*) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gs_register_struct_root(%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8**, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @iodev_no_open_file(%struct.gx_io_device_s* %iodev, i8* %fname, i32 %namelen, i8* %access, %struct.stream_s** %ps, %struct.gs_memory_s* %mem) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %namelen.addr = alloca i32, align 4
  %access.addr = alloca i8*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %namelen, i32* %namelen.addr, align 4, !tbaa !5
  store i8* %access, i8** %access.addr, align 8, !tbaa !1
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  ret i32 -9
}

; Function Attrs: nounwind uwtable
define i32 @iodev_no_fopen(%struct.gx_io_device_s* %iodev, i8* %fname, i8* %access, %struct._IO_FILE** %pfile, i8* %rfname, i32 %rnamelen) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %access.addr = alloca i8*, align 8
  %pfile.addr = alloca %struct._IO_FILE**, align 8
  %rfname.addr = alloca i8*, align 8
  %rnamelen.addr = alloca i32, align 4
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i8* %access, i8** %access.addr, align 8, !tbaa !1
  store %struct._IO_FILE** %pfile, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !1
  store i8* %rfname, i8** %rfname.addr, align 8, !tbaa !1
  store i32 %rnamelen, i32* %rnamelen.addr, align 4, !tbaa !5
  ret i32 -9
}

; Function Attrs: nounwind uwtable
define i32 @iodev_no_fclose(%struct.gx_io_device_s* %iodev, %struct._IO_FILE* %file) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  ret i32 -12
}

; Function Attrs: nounwind uwtable
define i32 @iodev_no_delete_file(%struct.gx_io_device_s* %iodev, i8* %fname) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  ret i32 -9
}

; Function Attrs: nounwind uwtable
define i32 @iodev_no_rename_file(%struct.gx_io_device_s* %iodev, i8* %from, i8* %to) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %from.addr = alloca i8*, align 8
  %to.addr = alloca i8*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %from, i8** %from.addr, align 8, !tbaa !1
  store i8* %to, i8** %to.addr, align 8, !tbaa !1
  ret i32 -9
}

; Function Attrs: nounwind uwtable
define i32 @iodev_no_file_status(%struct.gx_io_device_s* %iodev, i8* %fname, %struct.stat* %pstat) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %pstat.addr = alloca %struct.stat*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store %struct.stat* %pstat, %struct.stat** %pstat.addr, align 8, !tbaa !1
  ret i32 -22
}

; Function Attrs: nounwind uwtable
define %struct.file_enum_s* @iodev_no_enumerate_files(%struct.gx_io_device_s* %iodev, i8* %pat, i32 %patlen, %struct.gs_memory_s* %memory) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %pat.addr = alloca i8*, align 8
  %patlen.addr = alloca i32, align 4
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %pat, i8** %pat.addr, align 8, !tbaa !1
  store i32 %patlen, i32* %patlen.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  ret %struct.file_enum_s* null
}

; Function Attrs: nounwind uwtable
define i32 @iodev_no_get_params(%struct.gx_io_device_s* %iodev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare %struct._IO_FILE* @gp_fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_fopen_errno_to_code(i32 %eno) #0 {
entry:
  %retval = alloca i32, align 4
  %eno.addr = alloca i32, align 4
  store i32 %eno, i32* %eno.addr, align 4, !tbaa !5
  %0 = load i32, i32* %eno.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 36, label %sw.bb.1
    i32 13, label %sw.bb.2
    i32 24, label %sw.bb.3
    i32 23, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store i32 -22, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 -22, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 -9, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 -13, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 -13, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -12, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %mem, i32 %index) #0 {
entry:
  %retval = alloca %struct.gx_io_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %index.addr = alloca i32, align 4
  %libctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_lib_ctx_s** %libctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %1) #8
  store %struct.gs_lib_ctx_s* %call, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %2 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_lib_ctx_s* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %io_device_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %3, i32 0, i32 18
  %4 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %io_device_table, align 8, !tbaa !17
  %cmp1 = icmp eq %struct.gx_io_device_s** %4, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %6 = load i32, i32* %index.addr, align 4, !tbaa !5
  %7 = load i32, i32* @gx_io_device_table_count, align 4, !tbaa !5
  %cmp5 = icmp uge i32 %6, %7
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  store %struct.gx_io_device_s* null, %struct.gx_io_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.4
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %io_device_table6 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %9, i32 0, i32 18
  %10 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %io_device_table6, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds %struct.gx_io_device_s*, %struct.gx_io_device_s** %10, i64 %idxprom
  %11 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %arrayidx, align 8, !tbaa !1
  store %struct.gx_io_device_s* %11, %struct.gx_io_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.gs_lib_ctx_s** %libctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %retval
  ret %struct.gx_io_device_s* %13
}

; Function Attrs: nounwind uwtable
define %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s* %mem, i8* %str, i32 %len) #0 {
entry:
  %retval = alloca %struct.gx_io_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %libctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %dname = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_lib_ctx_s** %libctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %2) #8
  store %struct.gs_lib_ctx_s* %call, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %io_device_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %3, i32 0, i32 18
  %4 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %io_device_table, align 8, !tbaa !17
  %cmp = icmp eq %struct.gx_io_device_s** %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gx_io_device_s* null, %struct.gx_io_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp1 = icmp ugt i32 %5, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub = sub i32 %6, 1
  %idxprom = zext i32 %sub to i64
  %7 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !23
  %conv = zext i8 %8 to i32
  %cmp2 = icmp eq i32 %conv, 37
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  %9 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add i32 %9, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load i32, i32* @gx_io_device_table_count, align 4, !tbaa !5
  %cmp6 = icmp ult i32 %10, %11
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %io_device_table9 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %14, i32 0, i32 18
  %15 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %io_device_table9, align 8, !tbaa !17
  %arrayidx10 = getelementptr inbounds %struct.gx_io_device_s*, %struct.gx_io_device_s** %15, i64 %idxprom8
  %16 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %arrayidx10, align 8, !tbaa !1
  store %struct.gx_io_device_s* %16, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %17 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %dname11 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %18, i32 0, i32 0
  %19 = load i8*, i8** %dname11, align 8, !tbaa !24
  store i8* %19, i8** %dname, align 8, !tbaa !1
  %20 = load i8*, i8** %dname, align 8, !tbaa !1
  %tobool = icmp ne i8* %20, null
  br i1 %tobool, label %land.lhs.true.12, label %if.end.22

land.lhs.true.12:                                 ; preds = %for.body
  %21 = load i8*, i8** %dname, align 8, !tbaa !1
  %call13 = call i64 @strlen(i8* %21) #10
  %22 = load i32, i32* %len.addr, align 4, !tbaa !5
  %add = add i32 %22, 1
  %conv14 = zext i32 %add to i64
  %cmp15 = icmp eq i64 %call13, %conv14
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.22

land.lhs.true.17:                                 ; preds = %land.lhs.true.12
  %23 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %dname, align 8, !tbaa !1
  %25 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv18 = zext i32 %25 to i64
  %call19 = call i32 @memcmp(i8* %23, i8* %24, i64 %conv18) #10
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.17
  %26 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  store %struct.gx_io_device_s* %26, %struct.gx_io_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %land.lhs.true.17, %land.lhs.true.12, %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21
  %27 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.24 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.gx_io_device_s* null, %struct.gx_io_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

cleanup.24:                                       ; preds = %for.end, %cleanup, %if.then
  %30 = bitcast %struct.gs_lib_ctx_s** %libctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %retval
  ret %struct.gx_io_device_s* %32
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define i32 @gs_getdevparams(%struct.gx_io_device_s* %iodev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ts = alloca %struct.gs_param_string_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s* %ts to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %dtype = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %dtype, align 8, !tbaa !25
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ts, i32 0, i32 0
  store i8* %3, i8** %data, align 8, !tbaa !26
  %data1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ts, i32 0, i32 0
  %4 = load i8*, i8** %data1, align 8, !tbaa !26
  %call = call i64 @strlen(i8* %4) #10
  %conv = trunc i64 %call to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ts, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !28
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ts, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !29
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call2 = call i32 @param_write_name(%struct.gs_param_list_s* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct.gs_param_string_s* %ts) #8
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %8, i32 0, i32 2
  %get_params = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 11
  %9 = load i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)** %get_params, align 8, !tbaa !30
  %10 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call4 = call i32 %9(%struct.gx_io_device_s* %10, %struct.gs_param_list_s* %11) #8
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast %struct.gs_param_string_s* %ts to i8*
  call void @llvm.lifetime.end(i64 16, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @param_write_name(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_putdevparams(%struct.gx_io_device_s* %iodev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %0, i32 0, i32 2
  %put_params = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 12
  %1 = load i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)** %put_params, align 8, !tbaa !31
  %2 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 %1(%struct.gx_io_device_s* %2, %struct.gs_param_list_s* %3) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define %struct.file_enum_s* @gs_enumerate_files_init(i8* %pat, i32 %patlen, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.file_enum_s*, align 8
  %pat.addr = alloca i8*, align 8
  %patlen.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pfen = alloca %struct.file_enum_s*, align 8
  %pgs_file_enum = alloca %struct.gs_file_enum_s*, align 8
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %pfn = alloca %struct.gs_parsed_file_name_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %pat, i8** %pat.addr, align 8, !tbaa !1
  store i32 %patlen, i32* %patlen.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.file_enum_s** %pfen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gs_file_enum_s** %pgs_file_enum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  store %struct.gx_io_device_s* null, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_parsed_file_name_s* %pfn to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %5 = load i8*, i8** %pat.addr, align 8, !tbaa !1
  %6 = load i32, i32* %patlen.addr, align 4, !tbaa !5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s* %pfn, i8* %5, i32 %6, %struct.gs_memory_s* %7) #8
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.file_enum_s* null, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %iodev1 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  %9 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev1, align 8, !tbaa !32
  %cmp2 = icmp eq %struct.gx_io_device_s* %9, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call3 = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %10, i32 0) #8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %iodev4 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  %11 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev4, align 8, !tbaa !32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_io_device_s* [ %call3, %cond.true ], [ %11, %cond.false ]
  store %struct.gx_io_device_s* %cond, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 3
  %12 = load i32, i32* %len, align 4, !tbaa !34
  %cmp5 = icmp eq i32 %12, 0
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %13 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %13, i32 0, i32 2
  %enumerate_files = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 8
  %14 = load %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)** %enumerate_files, align 8, !tbaa !35
  %cmp6 = icmp eq %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)* %14, @iodev_no_enumerate_files
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %cond.end
  store %struct.file_enum_s* null, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %lor.lhs.false
  %15 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %15, i32 0, i32 2
  %enumerate_files10 = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs9, i32 0, i32 8
  %16 = load %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)** %enumerate_files10, align 8, !tbaa !35
  %17 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 2
  %18 = load i8*, i8** %fname, align 8, !tbaa !36
  %len11 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 3
  %19 = load i32, i32* %len11, align 4, !tbaa !34
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call12 = call %struct.file_enum_s* %16(%struct.gx_io_device_s* %17, i8* %18, i32 %19, %struct.gs_memory_s* %20) #8
  store %struct.file_enum_s* %call12, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %21 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.file_enum_s* %21, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.8
  store %struct.file_enum_s* null, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.8
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 8
  %23 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !16
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call17 = call i8* %23(%struct.gs_memory_s* %24, %struct.gs_memory_struct_type_s* @st_gs_file_enum, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #8
  %25 = bitcast i8* %call17 to %struct.gs_file_enum_s*
  store %struct.gs_file_enum_s* %25, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %26 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %cmp18 = icmp eq %struct.gs_file_enum_s* %26, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  store %struct.file_enum_s* null, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.15
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %28 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_file_enum_s, %struct.gs_file_enum_s* %28, i32 0, i32 0
  store %struct.gs_memory_s* %27, %struct.gs_memory_s** %memory, align 8, !tbaa !37
  %29 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %30 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %piodev = getelementptr inbounds %struct.gs_file_enum_s, %struct.gs_file_enum_s* %30, i32 0, i32 1
  store %struct.gx_io_device_s* %29, %struct.gx_io_device_s** %piodev, align 8, !tbaa !39
  %31 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %32 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %pfile_enum = getelementptr inbounds %struct.gs_file_enum_s, %struct.gs_file_enum_s* %32, i32 0, i32 2
  store %struct.file_enum_s* %31, %struct.file_enum_s** %pfile_enum, align 8, !tbaa !40
  %iodev21 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  %33 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev21, align 8, !tbaa !32
  %cmp22 = icmp ne %struct.gx_io_device_s* %33, null
  %conv = zext i1 %cmp22 to i32
  %34 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %prepend_iodev_name = getelementptr inbounds %struct.gs_file_enum_s, %struct.gs_file_enum_s* %34, i32 0, i32 3
  store i32 %conv, i32* %prepend_iodev_name, align 4, !tbaa !41
  %35 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %36 = bitcast %struct.gs_file_enum_s* %35 to %struct.file_enum_s*
  store %struct.file_enum_s* %36, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19, %if.then.14, %if.then.7, %if.then
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast %struct.gs_parsed_file_name_s* %pfn to i8*
  call void @llvm.lifetime.end(i64 32, i8* %38) #2
  %39 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast %struct.gs_file_enum_s** %pgs_file_enum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast %struct.file_enum_s** %pfen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = load %struct.file_enum_s*, %struct.file_enum_s** %retval
  ret %struct.file_enum_s* %42
}

declare i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s*, i8*, i32, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_enumerate_files_next(%struct.file_enum_s* %pfen, i8* %ptr, i32 %maxlen) #0 {
entry:
  %retval = alloca i32, align 4
  %pfen.addr = alloca %struct.file_enum_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %maxlen.addr = alloca i32, align 4
  %pgs_file_enum = alloca %struct.gs_file_enum_s*, align 8
  %iodev_name_len = alloca i32, align 4
  %return_len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.file_enum_s* %pfen, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %maxlen, i32* %maxlen.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_file_enum_s** %pgs_file_enum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %2 = bitcast %struct.file_enum_s* %1 to %struct.gs_file_enum_s*
  store %struct.gs_file_enum_s* %2, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %3 = bitcast i32* %iodev_name_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %prepend_iodev_name = getelementptr inbounds %struct.gs_file_enum_s, %struct.gs_file_enum_s* %4, i32 0, i32 3
  %5 = load i32, i32* %prepend_iodev_name, align 4, !tbaa !41
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %piodev = getelementptr inbounds %struct.gs_file_enum_s, %struct.gs_file_enum_s* %6, i32 0, i32 1
  %7 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %piodev, align 8, !tbaa !39
  %dname = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %dname, align 8, !tbaa !24
  %call = call i64 @strlen(i8* %8) #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %iodev_name_len, align 4, !tbaa !5
  %9 = bitcast i32* %return_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %iodev_name_len, align 4, !tbaa !5
  %11 = load i32, i32* %maxlen.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %10, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %12 = load i32, i32* %maxlen.addr, align 4, !tbaa !5
  %add = add i32 %12, 1
  store i32 %add, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %13 = load i32, i32* %iodev_name_len, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %13, 0
  br i1 %cmp2, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %14 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %15 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %piodev5 = getelementptr inbounds %struct.gs_file_enum_s, %struct.gs_file_enum_s* %15, i32 0, i32 1
  %16 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %piodev5, align 8, !tbaa !39
  %dname6 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %16, i32 0, i32 0
  %17 = load i8*, i8** %dname6, align 8, !tbaa !24
  %18 = load i32, i32* %iodev_name_len, align 4, !tbaa !5
  %conv7 = sext i32 %18 to i64
  %call8 = call i8* @memcpy(i8* %14, i8* %17, i64 %conv7) #9
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.4, %if.end
  %19 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %piodev10 = getelementptr inbounds %struct.gs_file_enum_s, %struct.gs_file_enum_s* %19, i32 0, i32 1
  %20 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %piodev10, align 8, !tbaa !39
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %20, i32 0, i32 2
  %enumerate_next = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 9
  %21 = load i32 (%struct.file_enum_s*, i8*, i32)*, i32 (%struct.file_enum_s*, i8*, i32)** %enumerate_next, align 8, !tbaa !42
  %22 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %pfile_enum = getelementptr inbounds %struct.gs_file_enum_s, %struct.gs_file_enum_s* %22, i32 0, i32 2
  %23 = load %struct.file_enum_s*, %struct.file_enum_s** %pfile_enum, align 8, !tbaa !40
  %24 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %25 = load i32, i32* %iodev_name_len, align 4, !tbaa !5
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  %26 = load i32, i32* %maxlen.addr, align 4, !tbaa !5
  %27 = load i32, i32* %iodev_name_len, align 4, !tbaa !5
  %sub = sub i32 %26, %27
  %call11 = call i32 %21(%struct.file_enum_s* %23, i8* %add.ptr, i32 %sub) #8
  store i32 %call11, i32* %return_len, align 4, !tbaa !5
  %28 = load i32, i32* %return_len, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %28, -1
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.9
  %29 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %30 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_file_enum_s, %struct.gs_file_enum_s* %30, i32 0, i32 0
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !37
  store %struct.gs_memory_s* %31, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !22
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %35 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %36 = bitcast %struct.gs_file_enum_s* %35 to i8*
  call void %33(%struct.gs_memory_s* %34, i8* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)) #8
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %37 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  br label %cleanup

if.end.16:                                        ; preds = %if.end.9
  %38 = load i32, i32* %return_len, align 4, !tbaa !5
  %39 = load i32, i32* %iodev_name_len, align 4, !tbaa !5
  %add17 = add i32 %38, %39
  store i32 %add17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.14, %if.then
  %40 = bitcast i32* %return_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %iodev_name_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast %struct.gs_file_enum_s** %pgs_file_enum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define void @gs_enumerate_files_close(%struct.file_enum_s* %pfen) #0 {
entry:
  %pfen.addr = alloca %struct.file_enum_s*, align 8
  %pgs_file_enum = alloca %struct.gs_file_enum_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.file_enum_s* %pfen, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_file_enum_s** %pgs_file_enum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %2 = bitcast %struct.file_enum_s* %1 to %struct.gs_file_enum_s*
  store %struct.gs_file_enum_s* %2, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_file_enum_s, %struct.gs_file_enum_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !37
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %piodev = getelementptr inbounds %struct.gs_file_enum_s, %struct.gs_file_enum_s* %6, i32 0, i32 1
  %7 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %piodev, align 8, !tbaa !39
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %7, i32 0, i32 2
  %enumerate_close = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 10
  %8 = load void (%struct.file_enum_s*)*, void (%struct.file_enum_s*)** %enumerate_close, align 8, !tbaa !43
  %9 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %pfile_enum = getelementptr inbounds %struct.gs_file_enum_s, %struct.gs_file_enum_s* %9, i32 0, i32 2
  %10 = load %struct.file_enum_s*, %struct.file_enum_s** %pfile_enum, align 8, !tbaa !40
  call void %8(%struct.file_enum_s* %10) #8
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !22
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %14 = load %struct.gs_file_enum_s*, %struct.gs_file_enum_s** %pgs_file_enum, align 8, !tbaa !1
  %15 = bitcast %struct.gs_file_enum_s* %14 to i8*
  call void %12(%struct.gs_memory_s* %13, i8* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)) #8
  %16 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast %struct.gs_file_enum_s** %pgs_file_enum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @iodev_ptr_elt_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
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
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
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
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_io_device_ptr, i32 0, i32 4), align 8, !tbaa !44
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
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 8, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* @st_io_device_ptr, %struct.gc_state_s* %11) #8
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @iodev_ptr_elt_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
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
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 8
  store i32 %div, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_io_device_ptr, i32 0, i32 5), align 8, !tbaa !46
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 8, %struct.gs_memory_struct_type_s* @st_io_device_ptr, %struct.gc_state_s* %5) #8
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
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_iodev_finalize(%struct.gs_memory_s* %cmem, i8* %vptr) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 2
  %1 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !47
  %io_device_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %1, i32 0, i32 18
  %2 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %io_device_table, align 8, !tbaa !17
  %3 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to %struct.gx_io_device_s**
  %cmp = icmp eq %struct.gx_io_device_s** %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %gs_lib_ctx1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 2
  %6 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx1, align 8, !tbaa !47
  %io_device_table2 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %6, i32 0, i32 18
  store %struct.gx_io_device_s** null, %struct.gx_io_device_s*** %io_device_table2, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @iodev_ptr_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
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
  %2 = bitcast i8* %1 to %struct.gx_io_device_s**
  %3 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %2, align 8, !tbaa !1
  %4 = bitcast %struct.gx_io_device_s* %3 to i8*
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %5, i32 0, i32 0
  store i8* %4, i8** %ptr, align 8, !tbaa !48
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %sw.bb, %sw.default
  %6 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %6
}

; Function Attrs: nounwind uwtable
define internal void @iodev_ptr_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
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
  %3 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !50
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.gx_io_device_s**
  %6 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %5, align 8, !tbaa !1
  %7 = bitcast %struct.gx_io_device_s* %6 to i8*
  %8 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %3(i8* %7, %struct.gc_state_s* %8) #8
  %9 = bitcast i8* %call to %struct.gx_io_device_s*
  %10 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to %struct.gx_io_device_s**
  store %struct.gx_io_device_s* %9, %struct.gx_io_device_s** %11, align 8, !tbaa !1
  ret void
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @stat64(i8* nonnull %__path, %struct.stat64* nonnull %__statbuf) #6 {
entry:
  %__path.addr = alloca i8*, align 8
  %__statbuf.addr = alloca %struct.stat64*, align 8
  store i8* %__path, i8** %__path.addr, align 8, !tbaa !1
  store %struct.stat64* %__statbuf, %struct.stat64** %__statbuf.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__path.addr, align 8, !tbaa !1
  %1 = load %struct.stat64*, %struct.stat64** %__statbuf.addr, align 8, !tbaa !1
  %call = call i32 @__xstat64(i32 1, i8* %0, %struct.stat64* %1) #9
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @__xstat64(i32, i8*, %struct.stat64*) #3

declare %struct.file_enum_s* @gp_enumerate_files_init(i8*, i32, %struct.gs_memory_s*) #1

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_write_long(%struct.gs_param_list_s*, i8*, i64*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind readnone }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !2, i64 0}
!10 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!11 = !{!12, !2, i64 64}
!12 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!13 = !{!14, !2, i64 104}
!14 = !{!"gs_memory_s", !2, i64 0, !15, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!15 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!16 = !{!14, !2, i64 72}
!17 = !{!18, !2, i64 136}
!18 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !8, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!19 = !{!20, !2, i64 16}
!20 = !{!"gx_io_device_s", !2, i64 0, !2, i64 8, !21, i64 16, !2, i64 120}
!21 = !{!"gx_io_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!22 = !{!14, !2, i64 24}
!23 = !{!3, !3, i64 0}
!24 = !{!20, !2, i64 0}
!25 = !{!20, !2, i64 8}
!26 = !{!27, !2, i64 0}
!27 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!28 = !{!27, !6, i64 8}
!29 = !{!27, !6, i64 12}
!30 = !{!20, !2, i64 104}
!31 = !{!20, !2, i64 112}
!32 = !{!33, !2, i64 8}
!33 = !{!"gs_parsed_file_name_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24}
!34 = !{!33, !6, i64 24}
!35 = !{!20, !2, i64 80}
!36 = !{!33, !2, i64 16}
!37 = !{!38, !2, i64 0}
!38 = !{!"gs_file_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24}
!39 = !{!38, !2, i64 8}
!40 = !{!38, !2, i64 16}
!41 = !{!38, !6, i64 24}
!42 = !{!20, !2, i64 88}
!43 = !{!20, !2, i64 96}
!44 = !{!45, !2, i64 32}
!45 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!46 = !{!45, !2, i64 40}
!47 = !{!14, !2, i64 192}
!48 = !{!49, !2, i64 0}
!49 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!50 = !{!51, !2, i64 0}
!51 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
