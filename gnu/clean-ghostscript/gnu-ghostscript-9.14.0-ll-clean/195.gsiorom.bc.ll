; ModuleID = './gsiorom.bc'
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
%struct.gs_param_list_s = type opaque
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.romfs_state_s = type { i32 }
%struct.romfs_file_enum_s = type { i8*, i32, %struct.gs_memory_s* }
%struct.string_match_params_s = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%rom%\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"FileSystem\00", align 1
@gs_iodev_rom = constant { i8*, i8*, { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }, i8* } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* } { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)* @romfs_init, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_no_open_device, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @romfs_open_file, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* @iodev_no_fopen, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)* @iodev_no_fclose, i32 (%struct.gx_io_device_s*, i8*)* @iodev_no_delete_file, i32 (%struct.gx_io_device_s*, i8*, i8*)* @iodev_no_rename_file, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)* @romfs_file_status, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)* @romfs_enumerate_files_init, i32 (%struct.file_enum_s*, i8*, i32)* @romfs_enumerate_next, void (%struct.file_enum_s*)* @romfs_enumerate_close, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_get_params, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_put_params }, i8* null }, align 8
@st_romfs_state = internal constant %struct.gs_memory_struct_type_s { i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"romfs_init(state)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"romfs_state\00", align 1
@gs_romfs = external global [0 x i32*], align 8
@sread_block.p = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_block_read_available, i32 (%struct.stream_s*, i64)* @s_block_read_seek, void (%struct.stream_s*)* @s_std_read_reset, i32 (%struct.stream_s*)* @s_std_read_flush, i32 (%struct.stream_s*)* @s_block_read_close, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_block_read_process, i32 (%struct.stream_s*, i32)* null }, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"file_close(buffer)\00", align 1
@gs_romfs_buildtime = external constant i64, align 8
@st_romfs_file_enum = internal constant %struct.gs_memory_struct_type_s { i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @romfs_file_enum_reloc_ptrs to i8*) }, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"romfs_enumerate_files_init(file_enum)\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"romfs_enumerate_file_init(pattern)\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"romfs_file_enum\00", align 1
@romfs_file_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @romfs_file_enum_enum_ptrs, i32 0, i32 0) }, align 8
@romfs_file_enum_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] zeroinitializer, align 2
@.str.8 = private unnamed_addr constant [25 x i8] c"romfs_enum_init(pattern)\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"romfs_enum_init(romfs_enum)\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @romfs_init(%struct.gx_io_device_s* %iodev, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %state = alloca %struct.romfs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.romfs_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !5
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_romfs_state, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #5
  %4 = bitcast i8* %call to %struct.romfs_state_s*
  store %struct.romfs_state_s* %4, %struct.romfs_state_s** %state, align 8, !tbaa !1
  %5 = load %struct.romfs_state_s*, %struct.romfs_state_s** %state, align 8, !tbaa !1
  %tobool = icmp ne %struct.romfs_state_s* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.romfs_state_s*, %struct.romfs_state_s** %state, align 8, !tbaa !1
  %7 = bitcast %struct.romfs_state_s* %6 to i8*
  %8 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  %state1 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %8, i32 0, i32 3
  store i8* %7, i8** %state1, align 8, !tbaa !8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct.romfs_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @iodev_no_open_device(%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @romfs_open_file(%struct.gx_io_device_s* %iodev, i8* %fname, i32 %namelen, i8* %access, %struct.stream_s** %ps, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %namelen.addr = alloca i32, align 4
  %access.addr = alloca i8*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %node_scan = alloca i32*, align 8
  %node = alloca i32*, align 8
  %filelen = alloca i32, align 4
  %blocks = alloca i32, align 4
  %i = alloca i32, align 4
  %filename = alloca i8*, align 8
  %fmode = alloca [4 x i8], align 1
  %cleanup.dest.slot = alloca i32
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %namelen, i32* %namelen.addr, align 4, !tbaa !11
  store i8* %access, i8** %access.addr, align 8, !tbaa !1
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32** %node_scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i32*, i32** getelementptr inbounds ([0 x i32*], [0 x i32*]* @gs_romfs, i32 0, i64 0), align 8, !tbaa !1
  store i32* %2, i32** %node_scan, align 8, !tbaa !1
  %3 = bitcast i32** %node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  store i32* null, i32** %node, align 8, !tbaa !1
  %4 = bitcast i32* %filelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 4, i32 1, i1 false)
  %10 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* null, %struct.stream_s** %10, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32*, i32** %node_scan, align 8, !tbaa !1
  %cmp = icmp ne i32* %11, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32*, i32** %node_scan, align 8, !tbaa !1
  %call = call i32 @get_u32_big_endian(i32* %12) #5
  %and = and i32 %call, 2147483647
  store i32 %and, i32* %filelen, align 4, !tbaa !11
  %13 = load i32, i32* %filelen, align 4, !tbaa !11
  %add = add i32 %13, 16384
  %sub = sub i32 %add, 1
  %div = udiv i32 %sub, 16384
  store i32 %div, i32* %blocks, align 4, !tbaa !11
  %14 = load i32, i32* %blocks, align 4, !tbaa !11
  %mul = mul i32 2, %14
  %add1 = add i32 1, %mul
  %idxprom = zext i32 %add1 to i64
  %15 = load i32*, i32** %node_scan, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %idxprom
  %16 = bitcast i32* %arrayidx to i8*
  store i8* %16, i8** %filename, align 8, !tbaa !1
  %17 = load i32, i32* %namelen.addr, align 4, !tbaa !11
  %conv = zext i32 %17 to i64
  %18 = load i8*, i8** %filename, align 8, !tbaa !1
  %call2 = call i64 @strlen(i8* %18) #6
  %cmp3 = icmp eq i64 %conv, %call2
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %19 = load i8*, i8** %filename, align 8, !tbaa !1
  %20 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %21 = load i32, i32* %namelen.addr, align 4, !tbaa !11
  %conv5 = zext i32 %21 to i64
  %call6 = call i32 @strncmp(i8* %19, i8* %20, i64 %conv5) #6
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %22 = load i32*, i32** %node_scan, align 8, !tbaa !1
  store i32* %22, i32** %node, align 8, !tbaa !1
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  %24 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom9 = sext i32 %24 to i64
  %arrayidx10 = getelementptr inbounds [0 x i32*], [0 x i32*]* @gs_romfs, i32 0, i64 %idxprom9
  %25 = load i32*, i32** %arrayidx10, align 8, !tbaa !1
  store i32* %25, i32** %node_scan, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %26 = load i32*, i32** %node, align 8, !tbaa !1
  %cmp11 = icmp eq i32* %26, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  store i32 -22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %for.end
  %27 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %28 = load i32, i32* %namelen.addr, align 4, !tbaa !11
  %29 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %30 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call15 = call i32 @file_prepare_stream(i8* %27, i32 %28, i8* %29, i32 16640, %struct.stream_s** %30, i8* %arraydecay, %struct.gs_memory_s* %31) #5
  store i32 %call15, i32* %code, align 4, !tbaa !11
  %32 = load i32, i32* %code, align 4, !tbaa !11
  %cmp16 = icmp slt i32 %32, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  %33 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.14
  %34 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %35 = load %struct.stream_s*, %struct.stream_s** %34, align 8, !tbaa !1
  %36 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %37 = load %struct.stream_s*, %struct.stream_s** %36, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 6
  %38 = load i8*, i8** %cbuf, align 8, !tbaa !13
  %39 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %40 = load %struct.stream_s*, %struct.stream_s** %39, align 8, !tbaa !1
  %cbsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 8
  %41 = load i32, i32* %cbsize, align 4, !tbaa !20
  %42 = load i32*, i32** %node, align 8, !tbaa !1
  call void @sread_block(%struct.stream_s* %35, i8* %38, i32 %41, i32* %42) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then.13
  %43 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast i32* %filelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32** %node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast i32** %node_scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare i32 @iodev_no_fopen(%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32) #1

declare i32 @iodev_no_fclose(%struct.gx_io_device_s*, %struct._IO_FILE*) #1

declare i32 @iodev_no_delete_file(%struct.gx_io_device_s*, i8*) #1

declare i32 @iodev_no_rename_file(%struct.gx_io_device_s*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @romfs_file_status(%struct.gx_io_device_s* %iodev, i8* %fname, %struct.stat* %pstat) #0 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %pstat.addr = alloca %struct.stat*, align 8
  %node_scan = alloca i32*, align 8
  %node = alloca i32*, align 8
  %filelen = alloca i32, align 4
  %blocks = alloca i32, align 4
  %i = alloca i32, align 4
  %filename = alloca i8*, align 8
  %namelen = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store %struct.stat* %pstat, %struct.stat** %pstat.addr, align 8, !tbaa !1
  %0 = bitcast i32** %node_scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32*, i32** getelementptr inbounds ([0 x i32*], [0 x i32*]* @gs_romfs, i32 0, i64 0), align 8, !tbaa !1
  store i32* %1, i32** %node_scan, align 8, !tbaa !1
  %2 = bitcast i32** %node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  store i32* null, i32** %node, align 8, !tbaa !1
  %3 = bitcast i32* %filelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %8) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %namelen, align 4, !tbaa !11
  %9 = load %struct.stat*, %struct.stat** %pstat.addr, align 8, !tbaa !1
  %10 = bitcast %struct.stat* %9 to i8*
  %call1 = call i8* @memset(i8* %10, i32 0, i64 144) #7
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32*, i32** %node_scan, align 8, !tbaa !1
  %cmp = icmp ne i32* %11, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32*, i32** %node_scan, align 8, !tbaa !1
  %call3 = call i32 @get_u32_big_endian(i32* %12) #5
  %and = and i32 %call3, 2147483647
  store i32 %and, i32* %filelen, align 4, !tbaa !11
  %13 = load i32, i32* %filelen, align 4, !tbaa !11
  %add = add i32 %13, 16384
  %sub = sub i32 %add, 1
  %div = udiv i32 %sub, 16384
  store i32 %div, i32* %blocks, align 4, !tbaa !11
  %14 = load i32, i32* %blocks, align 4, !tbaa !11
  %mul = mul i32 2, %14
  %add4 = add i32 1, %mul
  %idxprom = zext i32 %add4 to i64
  %15 = load i32*, i32** %node_scan, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %idxprom
  %16 = bitcast i32* %arrayidx to i8*
  store i8* %16, i8** %filename, align 8, !tbaa !1
  %17 = load i32, i32* %namelen, align 4, !tbaa !11
  %conv5 = zext i32 %17 to i64
  %18 = load i8*, i8** %filename, align 8, !tbaa !1
  %call6 = call i64 @strlen(i8* %18) #6
  %cmp7 = icmp eq i64 %conv5, %call6
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %19 = load i8*, i8** %filename, align 8, !tbaa !1
  %20 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %21 = load i32, i32* %namelen, align 4, !tbaa !11
  %conv9 = zext i32 %21 to i64
  %call10 = call i32 @strncmp(i8* %19, i8* %20, i64 %conv9) #6
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %22 = load i32*, i32** %node_scan, align 8, !tbaa !1
  store i32* %22, i32** %node, align 8, !tbaa !1
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  %24 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom13 = sext i32 %24 to i64
  %arrayidx14 = getelementptr inbounds [0 x i32*], [0 x i32*]* @gs_romfs, i32 0, i64 %idxprom13
  %25 = load i32*, i32** %arrayidx14, align 8, !tbaa !1
  store i32* %25, i32** %node_scan, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %26 = load i32*, i32** %node, align 8, !tbaa !1
  %cmp15 = icmp eq i32* %26, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  store i32 -22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %for.end
  %27 = load i32, i32* %filelen, align 4, !tbaa !11
  %conv19 = zext i32 %27 to i64
  %28 = load %struct.stat*, %struct.stat** %pstat.addr, align 8, !tbaa !1
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 8
  store i64 %conv19, i64* %st_size, align 8, !tbaa !21
  %29 = load i64, i64* @gs_romfs_buildtime, align 8, !tbaa !24
  %30 = load %struct.stat*, %struct.stat** %pstat.addr, align 8, !tbaa !1
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %30, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  store i64 %29, i64* %tv_sec, align 8, !tbaa !25
  %31 = load i64, i64* @gs_romfs_buildtime, align 8, !tbaa !24
  %32 = load %struct.stat*, %struct.stat** %pstat.addr, align 8, !tbaa !1
  %st_ctim = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 13
  %tv_sec20 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim, i32 0, i32 0
  store i64 %31, i64* %tv_sec20, align 8, !tbaa !26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17
  %33 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %filelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32** %node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast i32** %node_scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal %struct.file_enum_s* @romfs_enumerate_files_init(%struct.gx_io_device_s* %iodev, i8* %pat, i32 %patlen, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.file_enum_s*, align 8
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %pat.addr = alloca i8*, align 8
  %patlen.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %penum = alloca %struct.romfs_file_enum_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %pat, i8** %pat.addr, align 8, !tbaa !1
  store i32 %patlen, i32* %patlen.addr, align 4, !tbaa !11
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.romfs_file_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !5
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_romfs_file_enum, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0)) #5
  %4 = bitcast i8* %call to %struct.romfs_file_enum_s*
  store %struct.romfs_file_enum_s* %4, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %5 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %cmp = icmp eq %struct.romfs_file_enum_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.file_enum_s* null, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %7 = bitcast %struct.romfs_file_enum_s* %6 to i8*
  %call1 = call i8* @memset(i8* %7, i32 0, i64 24) #7
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 7
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !27
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load i32, i32* %patlen.addr, align 4, !tbaa !11
  %add = add i32 %11, 1
  %call3 = call i8* %9(%struct.gs_memory_s* %10, i32 %add, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0)) #5
  %12 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.romfs_file_enum_s, %struct.romfs_file_enum_s* %12, i32 0, i32 0
  store i8* %call3, i8** %pattern, align 8, !tbaa !28
  %13 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %list_index = getelementptr inbounds %struct.romfs_file_enum_s, %struct.romfs_file_enum_s* %13, i32 0, i32 1
  store i32 0, i32* %list_index, align 4, !tbaa !30
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.romfs_file_enum_s, %struct.romfs_file_enum_s* %15, i32 0, i32 2
  store %struct.gs_memory_s* %14, %struct.gs_memory_s** %memory, align 8, !tbaa !31
  %16 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %pattern4 = getelementptr inbounds %struct.romfs_file_enum_s, %struct.romfs_file_enum_s* %16, i32 0, i32 0
  %17 = load i8*, i8** %pattern4, align 8, !tbaa !28
  %cmp5 = icmp eq i8* %17, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %18 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %19 = bitcast %struct.romfs_file_enum_s* %18 to %struct.file_enum_s*
  call void @romfs_enumerate_close(%struct.file_enum_s* %19) #5
  store %struct.file_enum_s* null, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %20 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %pattern8 = getelementptr inbounds %struct.romfs_file_enum_s, %struct.romfs_file_enum_s* %20, i32 0, i32 0
  %21 = load i8*, i8** %pattern8, align 8, !tbaa !28
  %22 = load i8*, i8** %pat.addr, align 8, !tbaa !1
  %23 = load i32, i32* %patlen.addr, align 4, !tbaa !11
  %conv = zext i32 %23 to i64
  %call9 = call i8* @memcpy(i8* %21, i8* %22, i64 %conv) #7
  %24 = load i32, i32* %patlen.addr, align 4, !tbaa !11
  %idxprom = zext i32 %24 to i64
  %25 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %pattern10 = getelementptr inbounds %struct.romfs_file_enum_s, %struct.romfs_file_enum_s* %25, i32 0, i32 0
  %26 = load i8*, i8** %pattern10, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !32
  %27 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %28 = bitcast %struct.romfs_file_enum_s* %27 to %struct.file_enum_s*
  store %struct.file_enum_s* %28, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %29 = bitcast %struct.romfs_file_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load %struct.file_enum_s*, %struct.file_enum_s** %retval
  ret %struct.file_enum_s* %30
}

; Function Attrs: nounwind uwtable
define internal i32 @romfs_enumerate_next(%struct.file_enum_s* %pfen, i8* %ptr, i32 %maxlen) #0 {
entry:
  %retval = alloca i32, align 4
  %pfen.addr = alloca %struct.file_enum_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %maxlen.addr = alloca i32, align 4
  %penum = alloca %struct.romfs_file_enum_s*, align 8
  %node = alloca i32*, align 8
  %filelen = alloca i32, align 4
  %blocks = alloca i32, align 4
  %filename = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.file_enum_s* %pfen, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %maxlen, i32* %maxlen.addr, align 4, !tbaa !11
  %0 = bitcast %struct.romfs_file_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %2 = bitcast %struct.file_enum_s* %1 to %struct.romfs_file_enum_s*
  store %struct.romfs_file_enum_s* %2, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %3 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %list_index = getelementptr inbounds %struct.romfs_file_enum_s, %struct.romfs_file_enum_s* %3, i32 0, i32 1
  %4 = load i32, i32* %list_index, align 4, !tbaa !30
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [0 x i32*], [0 x i32*]* @gs_romfs, i32 0, i64 %idxprom
  %5 = load i32*, i32** %arrayidx, align 8, !tbaa !1
  %cmp = icmp ne i32* %5, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = bitcast i32** %node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %list_index1 = getelementptr inbounds %struct.romfs_file_enum_s, %struct.romfs_file_enum_s* %7, i32 0, i32 1
  %8 = load i32, i32* %list_index1, align 4, !tbaa !30
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [0 x i32*], [0 x i32*]* @gs_romfs, i32 0, i64 %idxprom2
  %9 = load i32*, i32** %arrayidx3, align 8, !tbaa !1
  store i32* %9, i32** %node, align 8, !tbaa !1
  %10 = bitcast i32* %filelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i32*, i32** %node, align 8, !tbaa !1
  %call = call i32 @get_u32_big_endian(i32* %11) #5
  %and = and i32 %call, 2147483647
  store i32 %and, i32* %filelen, align 4, !tbaa !11
  %12 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load i32, i32* %filelen, align 4, !tbaa !11
  %add = add i32 %13, 16384
  %sub = sub i32 %add, 1
  %div = udiv i32 %sub, 16384
  store i32 %div, i32* %blocks, align 4, !tbaa !11
  %14 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load i32, i32* %blocks, align 4, !tbaa !11
  %mul = mul i32 2, %15
  %add4 = add i32 1, %mul
  %idxprom5 = zext i32 %add4 to i64
  %16 = load i32*, i32** %node, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i32, i32* %16, i64 %idxprom5
  %17 = bitcast i32* %arrayidx6 to i8*
  store i8* %17, i8** %filename, align 8, !tbaa !1
  %18 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %list_index7 = getelementptr inbounds %struct.romfs_file_enum_s, %struct.romfs_file_enum_s* %18, i32 0, i32 1
  %19 = load i32, i32* %list_index7, align 4, !tbaa !30
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %list_index7, align 4, !tbaa !30
  %20 = load i8*, i8** %filename, align 8, !tbaa !1
  %21 = load i8*, i8** %filename, align 8, !tbaa !1
  %call8 = call i64 @strlen(i8* %21) #6
  %conv = trunc i64 %call8 to i32
  %22 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.romfs_file_enum_s, %struct.romfs_file_enum_s* %22, i32 0, i32 0
  %23 = load i8*, i8** %pattern, align 8, !tbaa !28
  %24 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %pattern9 = getelementptr inbounds %struct.romfs_file_enum_s, %struct.romfs_file_enum_s* %24, i32 0, i32 0
  %25 = load i8*, i8** %pattern9, align 8, !tbaa !28
  %call10 = call i64 @strlen(i8* %25) #6
  %conv11 = trunc i64 %call10 to i32
  %call12 = call i32 @string_match(i8* %20, i32 %conv, i8* %23, i32 %conv11, %struct.string_match_params_s* null) #5
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %while.body
  %26 = load i8*, i8** %filename, align 8, !tbaa !1
  %call13 = call i64 @strlen(i8* %26) #6
  %27 = load i32, i32* %maxlen.addr, align 4, !tbaa !11
  %conv14 = zext i32 %27 to i64
  %cmp15 = icmp ult i64 %call13, %conv14
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then
  %28 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %filename, align 8, !tbaa !1
  %30 = load i8*, i8** %filename, align 8, !tbaa !1
  %call18 = call i64 @strlen(i8* %30) #6
  %call19 = call i8* @memcpy(i8* %28, i8* %29, i64 %call18) #7
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then
  %31 = load i8*, i8** %filename, align 8, !tbaa !1
  %call20 = call i64 @strlen(i8* %31) #6
  %conv21 = trunc i64 %call20 to i32
  store i32 %conv21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %while.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.end
  %32 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %filelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32** %node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  call void @romfs_enumerate_close(%struct.file_enum_s* %36) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

cleanup.26:                                       ; preds = %while.end, %cleanup
  %37 = bitcast %struct.romfs_file_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal void @romfs_enumerate_close(%struct.file_enum_s* %pfen) #0 {
entry:
  %pfen.addr = alloca %struct.file_enum_s*, align 8
  %penum = alloca %struct.romfs_file_enum_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.file_enum_s* %pfen, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %0 = bitcast %struct.romfs_file_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %2 = bitcast %struct.file_enum_s* %1 to %struct.romfs_file_enum_s*
  store %struct.romfs_file_enum_s* %2, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.romfs_file_enum_s, %struct.romfs_file_enum_s* %4, i32 0, i32 2
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !31
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.romfs_file_enum_s, %struct.romfs_file_enum_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %pattern, align 8, !tbaa !28
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %9 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %11 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %pattern1 = getelementptr inbounds %struct.romfs_file_enum_s, %struct.romfs_file_enum_s* %11, i32 0, i32 0
  %12 = load i8*, i8** %pattern1, align 8, !tbaa !28
  call void %9(%struct.gs_memory_s* %10, i8* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %free_object3 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object3, align 8, !tbaa !33
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %16 = load %struct.romfs_file_enum_s*, %struct.romfs_file_enum_s** %penum, align 8, !tbaa !1
  %17 = bitcast %struct.romfs_file_enum_s* %16 to i8*
  call void %14(%struct.gs_memory_s* %15, i8* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)) #5
  %18 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = bitcast %struct.romfs_file_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  ret void
}

declare i32 @iodev_no_get_params(%struct.gx_io_device_s*, %struct.gs_param_list_s*) #1

declare i32 @iodev_no_put_params(%struct.gx_io_device_s*, %struct.gs_param_list_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_u32_big_endian(i32* %a) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %v = alloca i32, align 4
  %c = alloca i8*, align 8
  store i32* %a, i32** %a.addr, align 8, !tbaa !1
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i8** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %3 = bitcast i32* %2 to i8*
  store i8* %3, i8** %c, align 8, !tbaa !1
  %4 = load i8*, i8** %c, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv = zext i8 %5 to i32
  %shl = shl i32 %conv, 24
  %6 = load i8*, i8** %c, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx1, align 1, !tbaa !32
  %conv2 = zext i8 %7 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %8 = load i8*, i8** %c, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx4, align 1, !tbaa !32
  %conv5 = zext i8 %9 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %10 = load i8*, i8** %c, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx8, align 1, !tbaa !32
  %conv9 = zext i8 %11 to i32
  %or10 = or i32 %or7, %conv9
  store i32 %or10, i32* %v, align 4, !tbaa !11
  %12 = load i32, i32* %v, align 4, !tbaa !11
  %13 = bitcast i8** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  ret i32 %12
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i32 @file_prepare_stream(i8*, i32, i8*, i32, %struct.stream_s**, i8*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal void @sread_block(%struct.stream_s* %s, i8* %ptr, i32 %len, i32* %node) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %node.addr = alloca i32*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !11
  store i32* %node, i32** %node.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %len.addr, align 4, !tbaa !11
  call void @s_std_init(%struct.stream_s* %0, i8* %1, i32 %2, %struct.stream_procs* @sread_block.p, i32 5) #5
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 9
  store i16 0, i16* %end_status, align 2, !tbaa !34
  %4 = load i32*, i32** %node.addr, align 8, !tbaa !1
  %5 = bitcast i32* %4 to %struct._IO_FILE*
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 26
  store %struct._IO_FILE* %5, %struct._IO_FILE** %file, align 8, !tbaa !35
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 11
  %8 = load i8, i8* %modes, align 1, !tbaa !36
  %conv = zext i8 %8 to i32
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 28
  store i32 %conv, i32* %file_modes, align 4, !tbaa !37
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 29
  store i64 0, i64* %file_offset, align 8, !tbaa !38
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 30
  store i64 9223372036854775807, i64* %file_limit, align 8, !tbaa !39
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_block_read_available(%struct.stream_s* %s, i64* %pl) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pl.addr = alloca i64*, align 8
  %node = alloca i32*, align 8
  %filelen = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64* %pl, i64** %pl.addr, align 8, !tbaa !1
  %0 = bitcast i32** %node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 26
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !35
  %3 = bitcast %struct._IO_FILE* %2 to i32*
  store i32* %3, i32** %node, align 8, !tbaa !1
  %4 = bitcast i32* %filelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32*, i32** %node, align 8, !tbaa !1
  %call = call i32 @get_u32_big_endian(i32* %5) #5
  %and = and i32 %call, 2147483647
  store i32 %and, i32* %filelen, align 4, !tbaa !11
  %6 = load i32, i32* %filelen, align 4, !tbaa !11
  %conv = zext i32 %6 to i64
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 13
  %8 = load i64, i64* %position, align 8, !tbaa !40
  %sub = sub nsw i64 %conv, %8
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %10 = load i8*, i8** %ptr, align 8, !tbaa !41
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 6
  %12 = load i8*, i8** %cbuf, align 8, !tbaa !13
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub1 = sub nsw i64 %sub, %sub.ptr.sub
  %13 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  store i64 %sub1, i64* %13, align 8, !tbaa !24
  %14 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  %15 = load i64, i64* %14, align 8, !tbaa !24
  %cmp = icmp eq i64 %15, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %close_at_eod = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 24
  %17 = load i32, i32* %close_at_eod, align 4, !tbaa !43
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  store i64 -1, i64* %18, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %19 = bitcast i32* %filelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i32** %node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_block_read_seek(%struct.stream_s* %s, i64 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pos.addr = alloca i64, align 8
  %node = alloca i32*, align 8
  %filelen = alloca i32, align 4
  %end = alloca i32, align 4
  %offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %pw = alloca %struct.stream_cursor_write_s, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %pos, i64* %pos.addr, align 8, !tbaa !24
  %0 = bitcast i32** %node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 26
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !35
  %3 = bitcast %struct._IO_FILE* %2 to i32*
  store i32* %3, i32** %node, align 8, !tbaa !1
  %4 = bitcast i32* %filelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32*, i32** %node, align 8, !tbaa !1
  %call = call i32 @get_u32_big_endian(i32* %5) #5
  %and = and i32 %call, 2147483647
  store i32 %and, i32* %filelen, align 4, !tbaa !11
  %6 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %8 = load i8*, i8** %limit, align 8, !tbaa !44
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 6
  %10 = load i8*, i8** %cbuf, align 8, !tbaa !13
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %end, align 4, !tbaa !11
  %11 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load i64, i64* %pos.addr, align 8, !tbaa !24
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 13
  %14 = load i64, i64* %position, align 8, !tbaa !40
  %sub = sub nsw i64 %12, %14
  store i64 %sub, i64* %offset, align 8, !tbaa !24
  %15 = load i64, i64* %pos.addr, align 8, !tbaa !24
  %cmp = icmp slt i64 %15, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %16 = load i64, i64* %pos.addr, align 8, !tbaa !24
  %17 = load i32, i32* %filelen, align 4, !tbaa !11
  %conv2 = zext i32 %17 to i64
  %cmp3 = icmp sgt i64 %16, %conv2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

if.end:                                           ; preds = %lor.lhs.false
  %18 = load i64, i64* %offset, align 8, !tbaa !24
  %cmp5 = icmp slt i64 %18, 0
  br i1 %cmp5, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end
  %19 = load i64, i64* %offset, align 8, !tbaa !24
  %20 = load i32, i32* %end, align 4, !tbaa !11
  %conv8 = zext i32 %20 to i64
  %cmp9 = icmp sgt i64 %19, %conv8
  br i1 %cmp9, label %if.then.11, label %if.end.50

if.then.11:                                       ; preds = %lor.lhs.false.7, %if.end
  %21 = bitcast %struct.stream_cursor_write_s* %pw to i8*
  call void @llvm.lifetime.start(i64 24, i8* %21) #2
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 29
  %23 = load i64, i64* %file_offset, align 8, !tbaa !38
  %24 = load i64, i64* %pos.addr, align 8, !tbaa !24
  %add12 = add nsw i64 %23, %24
  %rem = srem i64 %add12, 16384
  store i64 %rem, i64* %offset, align 8, !tbaa !24
  %25 = load i64, i64* %pos.addr, align 8, !tbaa !24
  %26 = load i64, i64* %offset, align 8, !tbaa !24
  %sub13 = sub nsw i64 %25, %26
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 13
  store i64 %sub13, i64* %position14, align 8, !tbaa !40
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 6
  %29 = load i8*, i8** %cbuf15, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 -1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %pw, i32 0, i32 1
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !45
  %ptr16 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %pw, i32 0, i32 1
  %30 = load i8*, i8** %ptr16, align 8, !tbaa !45
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 8
  %32 = load i32, i32* %cbsize, align 4, !tbaa !20
  %idx.ext = zext i32 %32 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  %limit18 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %pw, i32 0, i32 2
  store i8* %add.ptr17, i8** %limit18, align 8, !tbaa !47
  %33 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 6
  %34 = load i8*, i8** %cbuf19, align 8, !tbaa !13
  %add.ptr20 = getelementptr inbounds i8, i8* %34, i64 -1
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 5
  %r22 = bitcast %union.stream_cursor_s* %cursor21 to %struct.stream_cursor_read_s*
  %limit23 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r22, i32 0, i32 1
  store i8* %add.ptr20, i8** %limit23, align 8, !tbaa !44
  %36 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor24 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 5
  %r25 = bitcast %union.stream_cursor_s* %cursor24 to %struct.stream_cursor_read_s*
  %ptr26 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r25, i32 0, i32 0
  store i8* %add.ptr20, i8** %ptr26, align 8, !tbaa !41
  %37 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %38 = bitcast %struct.stream_s* %37 to %struct.stream_state_s*
  %call27 = call i32 @s_block_read_process(%struct.stream_state_s* %38, %struct.stream_cursor_read_s* null, %struct.stream_cursor_write_s* %pw, i32 0) #5
  %conv28 = trunc i32 %call27 to i16
  %39 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 9
  store i16 %conv28, i16* %end_status, align 2, !tbaa !34
  %conv29 = sext i16 %conv28 to i32
  %cmp30 = icmp eq i32 %conv29, -2
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.11
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.then.11
  %40 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status34 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 9
  %41 = load i16, i16* %end_status34, align 2, !tbaa !34
  %conv35 = sext i16 %41 to i32
  %cmp36 = icmp eq i32 %conv35, 1
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.33
  %42 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status39 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %42, i32 0, i32 9
  store i16 0, i16* %end_status39, align 2, !tbaa !34
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.33
  %43 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf41 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %43, i32 0, i32 6
  %44 = load i8*, i8** %cbuf41, align 8, !tbaa !13
  %add.ptr42 = getelementptr inbounds i8, i8* %44, i64 -1
  %45 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor43 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %45, i32 0, i32 5
  %r44 = bitcast %union.stream_cursor_s* %cursor43 to %struct.stream_cursor_read_s*
  %ptr45 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r44, i32 0, i32 0
  store i8* %add.ptr42, i8** %ptr45, align 8, !tbaa !41
  %ptr46 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %pw, i32 0, i32 1
  %46 = load i8*, i8** %ptr46, align 8, !tbaa !45
  %47 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor47 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %47, i32 0, i32 5
  %r48 = bitcast %union.stream_cursor_s* %cursor47 to %struct.stream_cursor_read_s*
  %limit49 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r48, i32 0, i32 1
  store i8* %46, i8** %limit49, align 8, !tbaa !44
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then.32
  %48 = bitcast %struct.stream_cursor_write_s* %pw to i8*
  call void @llvm.lifetime.end(i64 24, i8* %48) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.57 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.50

if.end.50:                                        ; preds = %cleanup.cont, %lor.lhs.false.7
  %49 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf51 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %49, i32 0, i32 6
  %50 = load i8*, i8** %cbuf51, align 8, !tbaa !13
  %51 = load i64, i64* %offset, align 8, !tbaa !24
  %add.ptr52 = getelementptr inbounds i8, i8* %50, i64 %51
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr52, i64 -1
  %52 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor54 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %52, i32 0, i32 5
  %r55 = bitcast %union.stream_cursor_s* %cursor54 to %struct.stream_cursor_read_s*
  %ptr56 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r55, i32 0, i32 0
  store i8* %add.ptr53, i8** %ptr56, align 8, !tbaa !41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

cleanup.57:                                       ; preds = %if.end.50, %cleanup, %if.then
  %53 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast i32* %filelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast i32** %node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare void @s_std_read_reset(%struct.stream_s*) #1

declare i32 @s_std_read_flush(%struct.stream_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_block_read_close(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !48
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %2 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !48
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 6
  %6 = load i8*, i8** %cbuf, align 8, !tbaa !13
  call void %2(%struct.gs_memory_s* %4, i8* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0)) #5
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 26
  store %struct._IO_FILE* null, %struct._IO_FILE** %file, align 8, !tbaa !35
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 19
  %9 = load i16, i16* %read_id, align 2, !tbaa !49
  %conv = zext i16 %9 to i32
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 20
  %11 = load i16, i16* %write_id, align 2, !tbaa !50
  %conv2 = zext i16 %11 to i32
  %or = or i32 %conv, %conv2
  %add = add nsw i32 %or, 1
  %conv3 = trunc i32 %add to i16
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %write_id4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 20
  store i16 %conv3, i16* %write_id4, align 2, !tbaa !50
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %read_id5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 19
  store i16 %conv3, i16* %read_id5, align 2, !tbaa !49
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_block_read_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ignore_pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %node = alloca i32*, align 8
  %max_count = alloca i32, align 4
  %status = alloca i32, align 4
  %compression = alloca i32, align 4
  %filelen = alloca i32, align 4
  %blocks = alloca i32, align 4
  %iblock = alloca i32, align 4
  %block_length = alloca i32, align 4
  %block_offset = alloca i32, align 4
  %block_data = alloca i8*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %limit_count = alloca i32, align 4
  %buflen = alloca i64, align 8
  %dest = alloca i8*, align 8
  %need_copy = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_read_s** %ignore_pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !11
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %3 = bitcast %struct.stream_state_s* %2 to %struct.stream_s*
  store %struct.stream_s* %3, %struct.stream_s** %s, align 8, !tbaa !1
  %4 = bitcast i32** %node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 26
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !35
  %7 = bitcast %struct._IO_FILE* %6 to i32*
  store i32* %7, i32** %node, align 8, !tbaa !1
  %8 = bitcast i32* %max_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %9, i32 0, i32 2
  %10 = load i8*, i8** %limit, align 8, !tbaa !47
  %11 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %11, i32 0, i32 1
  %12 = load i8*, i8** %ptr, align 8, !tbaa !45
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %max_count, align 4, !tbaa !11
  %13 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  store i32 1, i32* %status, align 4, !tbaa !11
  %14 = bitcast i32* %compression to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i32*, i32** %node, align 8, !tbaa !1
  %call = call i32 @get_u32_big_endian(i32* %15) #5
  %and = and i32 %call, -2147483648
  %cmp = icmp ne i32 %and, 0
  %cond = select i1 %cmp, i32 1, i32 0
  store i32 %cond, i32* %compression, align 4, !tbaa !11
  %16 = bitcast i32* %filelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load i32*, i32** %node, align 8, !tbaa !1
  %call2 = call i32 @get_u32_big_endian(i32* %17) #5
  %and3 = and i32 %call2, 2147483647
  store i32 %and3, i32* %filelen, align 4, !tbaa !11
  %18 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i32, i32* %filelen, align 4, !tbaa !11
  %add = add i32 %19, 16384
  %sub = sub i32 %add, 1
  %div = udiv i32 %sub, 16384
  store i32 %div, i32* %blocks, align 4, !tbaa !11
  %20 = bitcast i32* %iblock to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 13
  %22 = load i64, i64* %position, align 8, !tbaa !40
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_offset = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 29
  %24 = load i64, i64* %file_offset, align 8, !tbaa !38
  %add4 = add nsw i64 %22, %24
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit5 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %26 = load i8*, i8** %limit5, align 8, !tbaa !44
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 6
  %28 = load i8*, i8** %cbuf, align 8, !tbaa !13
  %sub.ptr.lhs.cast6 = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast7 = ptrtoint i8* %28 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %add9 = add nsw i64 %add4, %sub.ptr.sub8
  %div10 = sdiv i64 %add9, 16384
  %conv11 = trunc i64 %div10 to i32
  store i32 %conv11, i32* %iblock, align 4, !tbaa !11
  %29 = bitcast i32* %block_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load i32*, i32** %node, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i32, i32* %30, i64 1
  %31 = load i32, i32* %iblock, align 4, !tbaa !11
  %mul = mul i32 2, %31
  %idx.ext = zext i32 %mul to i64
  %add.ptr13 = getelementptr inbounds i32, i32* %add.ptr12, i64 %idx.ext
  %call14 = call i32 @get_u32_big_endian(i32* %add.ptr13) #5
  store i32 %call14, i32* %block_length, align 4, !tbaa !11
  %32 = bitcast i32* %block_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load i32*, i32** %node, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds i32, i32* %33, i64 2
  %34 = load i32, i32* %iblock, align 4, !tbaa !11
  %mul16 = mul i32 2, %34
  %idx.ext17 = zext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i32, i32* %add.ptr15, i64 %idx.ext17
  %call19 = call i32 @get_u32_big_endian(i32* %add.ptr18) #5
  store i32 %call19, i32* %block_offset, align 4, !tbaa !11
  %35 = bitcast i8** %block_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load i32*, i32** %node, align 8, !tbaa !1
  %37 = bitcast i32* %36 to i8*
  %38 = load i32, i32* %block_offset, align 4, !tbaa !11
  %idx.ext20 = zext i32 %38 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %37, i64 %idx.ext20
  store i8* %add.ptr21, i8** %block_data, align 8, !tbaa !1
  %39 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  %40 = load i32, i32* %iblock, align 4, !tbaa !11
  %41 = load i32, i32* %blocks, align 4, !tbaa !11
  %sub22 = sub i32 %41, 1
  %cmp23 = icmp ult i32 %40, %sub22
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %42 = load i32, i32* %filelen, align 4, !tbaa !11
  %43 = load i32, i32* %iblock, align 4, !tbaa !11
  %mul25 = mul i32 16384, %43
  %sub26 = sub i32 %42, %mul25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond27 = phi i32 [ 16384, %cond.true ], [ %sub26, %cond.false ]
  store i32 %cond27, i32* %count, align 4, !tbaa !11
  %44 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %position28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %44, i32 0, i32 13
  %45 = load i64, i64* %position28, align 8, !tbaa !40
  %46 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %46, i32 0, i32 5
  %r30 = bitcast %union.stream_cursor_s* %cursor29 to %struct.stream_cursor_read_s*
  %limit31 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r30, i32 0, i32 1
  %47 = load i8*, i8** %limit31, align 8, !tbaa !44
  %48 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf32 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %48, i32 0, i32 6
  %49 = load i8*, i8** %cbuf32, align 8, !tbaa !13
  %sub.ptr.lhs.cast33 = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast34 = ptrtoint i8* %49 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %add36 = add nsw i64 %sub.ptr.sub35, 1
  %add37 = add nsw i64 %45, %add36
  %50 = load i32, i32* %filelen, align 4, !tbaa !11
  %conv38 = zext i32 %50 to i64
  %cmp39 = icmp sge i64 %add37, %conv38
  br i1 %cmp39, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %51 = load i8*, i8** %block_data, align 8, !tbaa !1
  %cmp41 = icmp eq i8* %51, null
  br i1 %cmp41, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end:                                           ; preds = %lor.lhs.false
  %52 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %52, i32 0, i32 30
  %53 = load i64, i64* %file_limit, align 8, !tbaa !39
  %cmp43 = icmp slt i64 %53, 9223372036854775807
  br i1 %cmp43, label %if.then.45, label %if.end.56

if.then.45:                                       ; preds = %if.end
  %54 = bitcast i32* %limit_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_offset46 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %55, i32 0, i32 29
  %56 = load i64, i64* %file_offset46, align 8, !tbaa !38
  %57 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_limit47 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %57, i32 0, i32 30
  %58 = load i64, i64* %file_limit47, align 8, !tbaa !39
  %add48 = add nsw i64 %56, %58
  %59 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %position49 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %59, i32 0, i32 13
  %60 = load i64, i64* %position49, align 8, !tbaa !40
  %sub50 = sub nsw i64 %add48, %60
  %conv51 = trunc i64 %sub50 to i32
  store i32 %conv51, i32* %limit_count, align 4, !tbaa !11
  %61 = load i32, i32* %count, align 4, !tbaa !11
  %62 = load i32, i32* %limit_count, align 4, !tbaa !11
  %cmp52 = icmp ugt i32 %61, %62
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.45
  %63 = load i32, i32* %limit_count, align 4, !tbaa !11
  store i32 %63, i32* %count, align 4, !tbaa !11
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.45
  %64 = bitcast i32* %limit_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end
  %65 = load i32, i32* %compression, align 4, !tbaa !11
  %tobool = icmp ne i32 %65, 0
  br i1 %tobool, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.end.56
  %66 = bitcast i64* %buflen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #2
  store i64 16384, i64* %buflen, align 8, !tbaa !24
  %67 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #2
  %68 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr58 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %68, i32 0, i32 1
  %69 = load i8*, i8** %ptr58, align 8, !tbaa !45
  %add.ptr59 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %add.ptr59, i8** %dest, align 8, !tbaa !1
  %70 = bitcast i32* %need_copy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #2
  store i32 0, i32* %need_copy, align 4, !tbaa !11
  %71 = load i8*, i8** %dest, align 8, !tbaa !1
  %72 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf60 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %72, i32 0, i32 6
  %73 = load i8*, i8** %cbuf60, align 8, !tbaa !13
  %cmp61 = icmp ult i8* %71, %73
  br i1 %cmp61, label %if.then.69, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %if.then.57
  %74 = load i8*, i8** %dest, align 8, !tbaa !1
  %75 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf64 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %75, i32 0, i32 6
  %76 = load i8*, i8** %cbuf64, align 8, !tbaa !13
  %77 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %77, i32 0, i32 8
  %78 = load i32, i32* %cbsize, align 4, !tbaa !20
  %idx.ext65 = zext i32 %78 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %76, i64 %idx.ext65
  %cmp67 = icmp uge i8* %74, %add.ptr66
  br i1 %cmp67, label %if.then.69, label %if.end.75

if.then.69:                                       ; preds = %lor.lhs.false.63, %if.then.57
  %79 = load i32, i32* %max_count, align 4, !tbaa !11
  %80 = load i32, i32* %count, align 4, !tbaa !11
  %cmp70 = icmp ult i32 %79, %80
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.then.69
  %81 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf73 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %81, i32 0, i32 6
  %82 = load i8*, i8** %cbuf73, align 8, !tbaa !13
  store i8* %82, i8** %dest, align 8, !tbaa !1
  store i32 1, i32* %need_copy, align 4, !tbaa !11
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.then.69
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %lor.lhs.false.63
  %83 = load i8*, i8** %dest, align 8, !tbaa !1
  %84 = load i8*, i8** %block_data, align 8, !tbaa !1
  %85 = load i32, i32* %block_length, align 4, !tbaa !11
  %conv76 = zext i32 %85 to i64
  %call77 = call i32 @uncompress(i8* %83, i64* %buflen, i8* %84, i64 %conv76) #5
  store i32 %call77, i32* %code, align 4, !tbaa !11
  %86 = load i32, i32* %count, align 4, !tbaa !11
  %conv78 = sext i32 %86 to i64
  %87 = load i64, i64* %buflen, align 8, !tbaa !24
  %cmp79 = icmp ne i64 %conv78, %87
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.75
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.82:                                        ; preds = %if.end.75
  %88 = load i32, i32* %need_copy, align 4, !tbaa !11
  %tobool83 = icmp ne i32 %88, 0
  br i1 %tobool83, label %if.then.84, label %if.end.89

if.then.84:                                       ; preds = %if.end.82
  %89 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr85 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %89, i32 0, i32 1
  %90 = load i8*, i8** %ptr85, align 8, !tbaa !45
  %add.ptr86 = getelementptr inbounds i8, i8* %90, i64 1
  %91 = load i8*, i8** %dest, align 8, !tbaa !1
  %92 = load i32, i32* %max_count, align 4, !tbaa !11
  %conv87 = zext i32 %92 to i64
  %call88 = call i8* @memcpy(i8* %add.ptr86, i8* %91, i64 %conv87) #7
  %93 = load i32, i32* %max_count, align 4, !tbaa !11
  store i32 %93, i32* %count, align 4, !tbaa !11
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.84, %if.end.82
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.89, %if.then.81
  %94 = bitcast i32* %need_copy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %96 = bitcast i64* %buflen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.108 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.100

if.else:                                          ; preds = %if.end.56
  %97 = load i32, i32* %block_length, align 4, !tbaa !11
  store i32 %97, i32* %count, align 4, !tbaa !11
  %98 = load i32, i32* %count, align 4, !tbaa !11
  %99 = load i32, i32* %max_count, align 4, !tbaa !11
  %cmp92 = icmp ugt i32 %98, %99
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.else
  %100 = load i32, i32* %max_count, align 4, !tbaa !11
  store i32 %100, i32* %count, align 4, !tbaa !11
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.else
  %101 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr96 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %101, i32 0, i32 1
  %102 = load i8*, i8** %ptr96, align 8, !tbaa !45
  %add.ptr97 = getelementptr inbounds i8, i8* %102, i64 1
  %103 = load i8*, i8** %block_data, align 8, !tbaa !1
  %104 = load i32, i32* %count, align 4, !tbaa !11
  %conv98 = sext i32 %104 to i64
  %call99 = call i8* @memcpy(i8* %add.ptr97, i8* %103, i64 %conv98) #7
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.95, %cleanup.cont
  %105 = load i32, i32* %count, align 4, !tbaa !11
  %cmp101 = icmp slt i32 %105, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.100
  store i32 0, i32* %count, align 4, !tbaa !11
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %if.end.100
  %106 = load i32, i32* %count, align 4, !tbaa !11
  %107 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr105 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %107, i32 0, i32 1
  %108 = load i8*, i8** %ptr105, align 8, !tbaa !45
  %idx.ext106 = sext i32 %106 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %108, i64 %idx.ext106
  store i8* %add.ptr107, i8** %ptr105, align 8, !tbaa !45
  br label %do.body

do.body:                                          ; preds = %if.end.104
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %109 = load i32, i32* %status, align 4, !tbaa !11
  store i32 %109, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

cleanup.108:                                      ; preds = %do.end, %cleanup, %if.then
  %110 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i8** %block_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #2
  %112 = bitcast i32* %block_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i32* %block_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i32* %iblock to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  %116 = bitcast i32* %filelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast i32* %compression to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %max_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i32** %node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #2
  %121 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #2
  %122 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = load i32, i32* %retval
  ret i32 %123
}

declare void @s_std_init(%struct.stream_s*, i8*, i32, %struct.stream_procs*, i32) #1

declare i32 @uncompress(i8*, i64*, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare i32 @string_match(i8*, i32, i8*, i32, %struct.string_match_params_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 72}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{!9, !2, i64 120}
!9 = !{!"gx_io_device_s", !2, i64 0, !2, i64 8, !10, i64 16, !2, i64 120}
!10 = !{!"gx_io_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !3, i64 0}
!13 = !{!14, !2, i64 136}
!14 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !12, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !12, i64 144, !12, i64 148, !15, i64 152, !3, i64 154, !3, i64 155, !16, i64 160, !17, i64 176, !18, i64 184, !2, i64 240, !12, i64 248, !12, i64 252, !2, i64 256, !15, i64 264, !15, i64 266, !2, i64 272, !2, i64 280, !12, i64 288, !12, i64 292, !2, i64 296, !2, i64 304, !19, i64 312, !12, i64 328, !17, i64 336, !17, i64 344}
!15 = !{!"short", !3, i64 0}
!16 = !{!"gs_string_s", !2, i64 0, !12, i64 8}
!17 = !{!"long", !3, i64 0}
!18 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!19 = !{!"gs_const_string_s", !2, i64 0, !12, i64 8}
!20 = !{!14, !12, i64 148}
!21 = !{!22, !17, i64 48}
!22 = !{!"stat", !17, i64 0, !17, i64 8, !17, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !23, i64 72, !23, i64 88, !23, i64 104, !3, i64 120}
!23 = !{!"timespec", !17, i64 0, !17, i64 8}
!24 = !{!17, !17, i64 0}
!25 = !{!22, !17, i64 88}
!26 = !{!22, !17, i64 104}
!27 = !{!6, !2, i64 64}
!28 = !{!29, !2, i64 0}
!29 = !{!"romfs_file_enum_s", !2, i64 0, !12, i64 8, !2, i64 16}
!30 = !{!29, !12, i64 8}
!31 = !{!29, !2, i64 16}
!32 = !{!3, !3, i64 0}
!33 = !{!6, !2, i64 24}
!34 = !{!14, !15, i64 152}
!35 = !{!14, !2, i64 304}
!36 = !{!14, !3, i64 155}
!37 = !{!14, !12, i64 328}
!38 = !{!14, !17, i64 336}
!39 = !{!14, !17, i64 344}
!40 = !{!14, !17, i64 176}
!41 = !{!42, !2, i64 0}
!42 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!43 = !{!14, !12, i64 292}
!44 = !{!42, !2, i64 8}
!45 = !{!46, !2, i64 8}
!46 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!47 = !{!46, !2, i64 16}
!48 = !{!14, !2, i64 8}
!49 = !{!14, !15, i64 264}
!50 = !{!14, !15, i64 266}
