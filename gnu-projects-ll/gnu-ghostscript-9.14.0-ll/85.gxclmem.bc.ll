; ModuleID = './gxclmem.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clist_io_procs_s = type { i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i64 (i8*)*, void (i8*, i32, i8*)*, i32 (i8*, i64, i32, i8*)* }
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.MEMFILE_s = type { %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, %struct.MEMFILE_s*, %struct.MEMFILE_s*, %struct.PHYS_MEMFILE_BLK*, i32, %struct.LOG_MEMFILE_BLK*, i32, %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK*, i64, i64, i8*, i8*, i64, %struct.PHYS_MEMFILE_BLK*, %struct.RAW_BUFFER*, %struct.RAW_BUFFER*, i32, %struct.stream_cursor_read_s, %struct.stream_cursor_write_s, i32, %struct.stream_state_s*, %struct.stream_state_s* }
%struct.LOG_MEMFILE_BLK = type { %struct.LOG_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK*, i8*, %struct.RAW_BUFFER* }
%struct.PHYS_MEMFILE_BLK = type { %struct.PHYS_MEMFILE_BLK*, i8*, [4 x i8], [16224 x i8] }
%struct.RAW_BUFFER = type { %struct.RAW_BUFFER*, %struct.RAW_BUFFER*, %struct.LOG_MEMFILE_BLK*, [16224 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }

@clist_io_procs_memory = global %struct.clist_io_procs_s { i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)* @memfile_fopen, i32 (i8*, i8*, i32)* @memfile_fclose, i32 (i8*)* @memfile_unlink, i32 (i8*, i32, i8*)* @memfile_fwrite_chars, i32 (i8*, i32, i8*)* @memfile_fread_chars, i32 (i8*, i32)* @memfile_set_memory_warning, i32 (i8*)* @memfile_ferror_code, i64 (i8*)* @memfile_ftell, void (i8*, i32, i8*)* @memfile_rewind, i32 (i8*, i64, i32, i8*)* @memfile_fseek }, align 8
@clist_io_procs_memory_global = external global %struct.clist_io_procs_s*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@st_MEMFILE = internal constant %struct.gs_memory_struct_type_s { i32 232, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @MEMFILE_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"memfile_fopen_instance(MEMFILE)\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"memfile_open_scratch(%s): gs_alloc_struct failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"memfile_fopen\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"memfile_open_scratch(decompress_state)\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"memfile_open_scratch(MEMFILE)\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"memfile_open_scratch(compress_state)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"MEMFILE\00", align 1
@MEMFILE_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @MEMFILE_enum_ptrs, i32 0, i32 0) }, align 8
@MEMFILE_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 216 }, %struct.gc_ptr_element_s { i16 0, i16 224 }], align 2
@.str.8 = private unnamed_addr constant [19 x i8] c"memfile raw buffer\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"memfile_get_pdata: MALLOC for 'raw_head' failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Decompression required more than one full block!\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"memfile pphys\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"memfile_init_empty: MALLOC for 'pphys' failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"memfile_init_empty\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"memfile_init_empty: MALLOC for log_curr_blk failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Could not find %p on memfile openlist\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"memfile_free_mem(log_blk)\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"memfile_free_mem(raw)\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"memfile_close_and_unlink(MEMFILE)\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"Attempt to delete a memfile still open for read: %p\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"memfile_set_block_size\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"memfile_close_and_unlink(decompress_state)\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"memfile_close_and_unlink(compress_state)\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"memfile_free_mem(pphys)\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"memfile_free_mem(phys_blk)\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c" Write file truncate -- need to free physical blocks.\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"memfile newphys\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"memfile_next_blk: MALLOC 1 for 'newphys' failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"memfile newbp\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"memfile_next_blk: MALLOC 1 for 'newbp' failed\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"memfile_next_blk(oldphys)\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"memfile_next_blk: MALLOC 2 for 'newphys' failed\0A\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"memfile_next_blk: MALLOC 2 for 'newbp' failed\0A\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"compress_log_blk : MALLOC for 'newphys' failed\0A\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"Compression required more than one full block!\0A\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"\0ACompression didn't - raw=%d, compressed=%ld\0A\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"memfile_rewind(%p) with discard_data=true failed: \00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @memfile_fopen(i8* %fname, i8* %fmode, i8** %pf, %struct.gs_memory_s* %mem, %struct.gs_memory_s* %data_mem, i32 %ok_to_compress) #0 {
entry:
  %retval = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %fmode.addr = alloca i8*, align 8
  %pf.addr = alloca i8**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data_mem.addr = alloca %struct.gs_memory_s*, align 8
  %ok_to_compress.addr = alloca i32, align 4
  %f = alloca %struct.MEMFILE_s*, align 8
  %code = alloca i32, align 4
  %base_f = alloca %struct.MEMFILE_s*, align 8
  %log_block = alloca %struct.LOG_MEMFILE_BLK*, align 8
  %new_log_block = alloca %struct.LOG_MEMFILE_BLK*, align 8
  %i = alloca i32, align 4
  %num_log_blocks = alloca i32, align 4
  %decompress_template = alloca %struct.stream_template_s*, align 8
  %cleanup.dest.slot = alloca i32
  %compress_template = alloca %struct.stream_template_s*, align 8
  %decompress_template128 = alloca %struct.stream_template_s*, align 8
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i8* %fmode, i8** %fmode.addr, align 8, !tbaa !1
  store i8** %pf, i8*** %pf.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %data_mem, %struct.gs_memory_s** %data_mem.addr, align 8, !tbaa !1
  store i32 %ok_to_compress, i32* %ok_to_compress.addr, align 4, !tbaa !5
  %0 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.MEMFILE_s* null, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %2 = load i8**, i8*** %pf.addr, align 8, !tbaa !1
  store i8* null, i8** %2, align 8, !tbaa !1
  %3 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %fmode.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 114
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load i8*, i8** %fmode.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx6, align 1, !tbaa !7
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 97
  br i1 %cmp8, label %if.then, label %if.end.89

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %9 = bitcast %struct.MEMFILE_s** %base_f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct.MEMFILE_s* null, %struct.MEMFILE_s** %base_f, align 8, !tbaa !1
  %10 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %call = call i32 (i8*, i8*, ...) @gs_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), %struct.MEMFILE_s** %base_f) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %11, 1
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  store i32 -12, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.88

if.end:                                           ; preds = %if.then
  %12 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %base_f, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %12, i32 0, i32 3
  %13 = load i32, i32* %is_open, align 4, !tbaa !8
  %cmp13 = icmp eq i32 %13, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end
  %14 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %base_f, align 8, !tbaa !1
  store %struct.MEMFILE_s* %14, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  store i32 0, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.88

if.else:                                          ; preds = %if.end
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %16 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !13
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call16 = call i8* %16(%struct.gs_memory_s* %17, %struct.gs_memory_struct_type_s* @st_MEMFILE, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)) #4
  %18 = bitcast i8* %call16 to %struct.MEMFILE_s*
  store %struct.MEMFILE_s* %18, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %19 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.MEMFILE_s* %19, null
  br i1 %cmp17, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.else
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call20 = call i8* @gs_program_name() #4
  %call21 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %20, i8* %call20, i64 %call21) #4
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call22 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0), i8* %22) #4
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.88

if.end.23:                                        ; preds = %if.else
  %23 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %24 = bitcast %struct.MEMFILE_s* %23 to i8*
  %25 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %base_f, align 8, !tbaa !1
  %26 = bitcast %struct.MEMFILE_s* %25 to i8*
  %call24 = call i8* @memcpy(i8* %24, i8* %26, i64 232) #5
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %28 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %28, i32 0, i32 0
  store %struct.gs_memory_s* %27, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_mem.addr, align 8, !tbaa !1
  %30 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %30, i32 0, i32 1
  store %struct.gs_memory_s* %29, %struct.gs_memory_s** %data_memory, align 8, !tbaa !17
  %31 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %compress_state = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %31, i32 0, i32 24
  store %struct.stream_state_s* null, %struct.stream_state_s** %compress_state, align 8, !tbaa !18
  %32 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %32, i32 0, i32 25
  store %struct.stream_state_s* null, %struct.stream_state_s** %decompress_state, align 8, !tbaa !19
  %33 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockChain = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %33, i32 0, i32 6
  store %struct.PHYS_MEMFILE_BLK* null, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain, align 8, !tbaa !20
  %34 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockCount = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %34, i32 0, i32 7
  store i32 0, i32* %reservePhysBlockCount, align 4, !tbaa !21
  %35 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockChain = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %35, i32 0, i32 8
  store %struct.LOG_MEMFILE_BLK* null, %struct.LOG_MEMFILE_BLK** %reserveLogBlockChain, align 8, !tbaa !22
  %36 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockCount = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %36, i32 0, i32 9
  store i32 0, i32* %reserveLogBlockCount, align 4, !tbaa !23
  %37 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %base_f, align 8, !tbaa !1
  %openlist = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %37, i32 0, i32 4
  %38 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %openlist, align 8, !tbaa !24
  %39 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %openlist25 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %39, i32 0, i32 4
  store %struct.MEMFILE_s* %38, %struct.MEMFILE_s** %openlist25, align 8, !tbaa !24
  %40 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %41 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %base_f, align 8, !tbaa !1
  %openlist26 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %41, i32 0, i32 4
  store %struct.MEMFILE_s* %40, %struct.MEMFILE_s** %openlist26, align 8, !tbaa !24
  %42 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %base_f, align 8, !tbaa !1
  %43 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %base_memfile = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %43, i32 0, i32 5
  store %struct.MEMFILE_s* %42, %struct.MEMFILE_s** %base_memfile, align 8, !tbaa !25
  %44 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_pos = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %44, i32 0, i32 13
  store i64 0, i64* %log_curr_pos, align 8, !tbaa !26
  %45 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %raw_head = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %45, i32 0, i32 18
  store %struct.RAW_BUFFER* null, %struct.RAW_BUFFER** %raw_head, align 8, !tbaa !27
  %46 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %46, i32 0, i32 20
  store i32 0, i32* %error_code, align 4, !tbaa !28
  %47 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_head = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %47, i32 0, i32 10
  %48 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_head, align 8, !tbaa !29
  %phys_blk = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %48, i32 0, i32 1
  %49 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk, align 8, !tbaa !30
  %data_limit = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %49, i32 0, i32 1
  %50 = load i8*, i8** %data_limit, align 8, !tbaa !32
  %cmp27 = icmp ne i8* %50, null
  br i1 %cmp27, label %if.then.29, label %if.end.85

if.then.29:                                       ; preds = %if.end.23
  %51 = bitcast %struct.LOG_MEMFILE_BLK** %log_block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = bitcast %struct.LOG_MEMFILE_BLK** %new_log_block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = bitcast i32* %num_log_blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_length = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %55, i32 0, i32 12
  %56 = load i64, i64* %log_length, align 8, !tbaa !34
  %add = add nsw i64 %56, 16224
  %sub = sub nsw i64 %add, 1
  %div = sdiv i64 %sub, 16224
  %conv30 = trunc i64 %div to i32
  store i32 %conv30, i32* %num_log_blocks, align 4, !tbaa !5
  %57 = bitcast %struct.stream_template_s** %decompress_template to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %call31 = call %struct.stream_template_s* @clist_decompressor_template() #4
  store %struct.stream_template_s* %call31, %struct.stream_template_s** %decompress_template, align 8, !tbaa !1
  %58 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory32 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %58, i32 0, i32 1
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory32, align 8, !tbaa !17
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 7
  %60 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !35
  %61 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory34 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %61, i32 0, i32 1
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory34, align 8, !tbaa !17
  %63 = load i32, i32* %num_log_blocks, align 4, !tbaa !5
  %conv35 = sext i32 %63 to i64
  %mul = mul i64 %conv35, 32
  %conv36 = trunc i64 %mul to i32
  %call37 = call i8* %60(%struct.gs_memory_s* %62, i32 %conv36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #4
  %64 = bitcast i8* %call37 to %struct.LOG_MEMFILE_BLK*
  store %struct.LOG_MEMFILE_BLK* %64, %struct.LOG_MEMFILE_BLK** %new_log_block, align 8, !tbaa !1
  %65 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %new_log_block, align 8, !tbaa !1
  %cmp38 = icmp eq %struct.LOG_MEMFILE_BLK* %65, null
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.29
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.then.29
  %66 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_head42 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %66, i32 0, i32 10
  %67 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_head42, align 8, !tbaa !29
  store %struct.LOG_MEMFILE_BLK* %67, %struct.LOG_MEMFILE_BLK** %log_block, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.41
  %68 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_block, align 8, !tbaa !1
  %cmp43 = icmp ne %struct.LOG_MEMFILE_BLK* %68, null
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_block, align 8, !tbaa !1
  %phys_blk45 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %69, i32 0, i32 1
  %70 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk45, align 8, !tbaa !30
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %71 to i64
  %72 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %new_log_block, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %72, i64 %idxprom
  %phys_blk47 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %arrayidx46, i32 0, i32 1
  store %struct.PHYS_MEMFILE_BLK* %70, %struct.PHYS_MEMFILE_BLK** %phys_blk47, align 8, !tbaa !30
  %73 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_block, align 8, !tbaa !1
  %phys_pdata = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %73, i32 0, i32 2
  %74 = load i8*, i8** %phys_pdata, align 8, !tbaa !36
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %75 to i64
  %76 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %new_log_block, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %76, i64 %idxprom48
  %phys_pdata50 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %arrayidx49, i32 0, i32 2
  store i8* %74, i8** %phys_pdata50, align 8, !tbaa !36
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %77 to i64
  %78 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %new_log_block, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %78, i64 %idxprom51
  %raw_block = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %arrayidx52, i32 0, i32 3
  store %struct.RAW_BUFFER* null, %struct.RAW_BUFFER** %raw_block, align 8, !tbaa !37
  %79 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_block, align 8, !tbaa !1
  %link = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %79, i32 0, i32 0
  %80 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %link, align 8, !tbaa !38
  %cmp53 = icmp eq %struct.LOG_MEMFILE_BLK* %80, null
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %81 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %new_log_block, align 8, !tbaa !1
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %82 to i64
  %add.ptr55 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %81, i64 %idx.ext
  %add.ptr56 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %add.ptr55, i64 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.LOG_MEMFILE_BLK* [ null, %cond.true ], [ %add.ptr56, %cond.false ]
  %83 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %83 to i64
  %84 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %new_log_block, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %84, i64 %idxprom57
  %link59 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %arrayidx58, i32 0, i32 0
  store %struct.LOG_MEMFILE_BLK* %cond, %struct.LOG_MEMFILE_BLK** %link59, align 8, !tbaa !38
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %85 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_block, align 8, !tbaa !1
  %link60 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %85, i32 0, i32 0
  %86 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %link60, align 8, !tbaa !38
  store %struct.LOG_MEMFILE_BLK* %86, %struct.LOG_MEMFILE_BLK** %log_block, align 8, !tbaa !1
  %87 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %88 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %new_log_block, align 8, !tbaa !1
  %89 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_head61 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %89, i32 0, i32 10
  store %struct.LOG_MEMFILE_BLK* %88, %struct.LOG_MEMFILE_BLK** %log_head61, align 8, !tbaa !29
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs62 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %90, i32 0, i32 1
  %alloc_struct63 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs62, i32 0, i32 8
  %91 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct63, align 8, !tbaa !13
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %93 = load %struct.stream_template_s*, %struct.stream_template_s** %decompress_template, align 8, !tbaa !1
  %stype = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %93, i32 0, i32 0
  %94 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !39
  %call64 = call i8* %91(%struct.gs_memory_s* %92, %struct.gs_memory_struct_type_s* %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0)) #4
  %95 = bitcast i8* %call64 to %struct.stream_state_s*
  %96 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state65 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %96, i32 0, i32 25
  store %struct.stream_state_s* %95, %struct.stream_state_s** %decompress_state65, align 8, !tbaa !19
  %97 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state66 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %97, i32 0, i32 25
  %98 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state66, align 8, !tbaa !19
  %cmp67 = icmp eq %struct.stream_state_s* %98, null
  br i1 %cmp67, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %for.end
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call70 = call i8* @gs_program_name() #4
  %call71 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %99, i8* %call70, i64 %call71) #4
  %100 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %101 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call72 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %100, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0), i8* %101) #4
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %for.end
  %102 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state74 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %102, i32 0, i32 25
  %103 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state74, align 8, !tbaa !19
  call void @clist_decompressor_init(%struct.stream_state_s* %103) #4
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %105 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state75 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %105, i32 0, i32 25
  %106 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state75, align 8, !tbaa !19
  %memory76 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %106, i32 0, i32 1
  store %struct.gs_memory_s* %104, %struct.gs_memory_s** %memory76, align 8, !tbaa !41
  %107 = load %struct.stream_template_s*, %struct.stream_template_s** %decompress_template, align 8, !tbaa !1
  %set_defaults = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %107, i32 0, i32 6
  %108 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults, align 8, !tbaa !43
  %tobool = icmp ne void (%struct.stream_state_s*)* %108, null
  br i1 %tobool, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %if.end.73
  %109 = load %struct.stream_template_s*, %struct.stream_template_s** %decompress_template, align 8, !tbaa !1
  %set_defaults78 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %109, i32 0, i32 6
  %110 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults78, align 8, !tbaa !43
  %111 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state79 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %111, i32 0, i32 25
  %112 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state79, align 8, !tbaa !19
  call void %110(%struct.stream_state_s* %112) #4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %if.end.73
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.69, %if.then.40, %if.end.80
  %113 = bitcast %struct.stream_template_s** %decompress_template to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i32* %num_log_blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast %struct.LOG_MEMFILE_BLK** %new_log_block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast %struct.LOG_MEMFILE_BLK** %log_block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.88 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.85

if.end.85:                                        ; preds = %cleanup.cont, %if.end.23
  %118 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_head86 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %118, i32 0, i32 10
  %119 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_head86, align 8, !tbaa !29
  %120 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_blk = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %120, i32 0, i32 11
  store %struct.LOG_MEMFILE_BLK* %119, %struct.LOG_MEMFILE_BLK** %log_curr_blk, align 8, !tbaa !44
  %121 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %call87 = call i32 @memfile_get_pdata(%struct.MEMFILE_s* %121) #4
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.88

cleanup.88:                                       ; preds = %if.end.85, %if.then.19, %if.then.15, %if.then.12, %cleanup
  %122 = bitcast %struct.MEMFILE_s** %base_f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %cleanup.dest179 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest179, label %cleanup.198 [
    i32 2, label %finish
  ]

if.end.89:                                        ; preds = %lor.lhs.false, %entry
  %123 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i8, i8* %123, i64 0
  store i8 0, i8* %arrayidx90, align 1, !tbaa !7
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs91 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %124, i32 0, i32 1
  %alloc_struct92 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs91, i32 0, i32 8
  %125 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct92, align 8, !tbaa !13
  %126 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call93 = call i8* %125(%struct.gs_memory_s* %126, %struct.gs_memory_struct_type_s* @st_MEMFILE, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0)) #4
  %127 = bitcast i8* %call93 to %struct.MEMFILE_s*
  store %struct.MEMFILE_s* %127, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %128 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %cmp94 = icmp eq %struct.MEMFILE_s* %128, null
  br i1 %cmp94, label %if.then.96, label %if.end.100

if.then.96:                                       ; preds = %if.end.89
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call97 = call i8* @gs_program_name() #4
  %call98 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %129, i8* %call97, i64 %call98) #4
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %131 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call99 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %130, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0), i8* %131) #4
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %finish

if.end.100:                                       ; preds = %if.end.89
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %133 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory101 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %133, i32 0, i32 0
  store %struct.gs_memory_s* %132, %struct.gs_memory_s** %memory101, align 8, !tbaa !16
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_mem.addr, align 8, !tbaa !1
  %135 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory102 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %135, i32 0, i32 1
  store %struct.gs_memory_s* %134, %struct.gs_memory_s** %data_memory102, align 8, !tbaa !17
  %136 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %compress_state103 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %136, i32 0, i32 24
  store %struct.stream_state_s* null, %struct.stream_state_s** %compress_state103, align 8, !tbaa !18
  %137 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state104 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %137, i32 0, i32 25
  store %struct.stream_state_s* null, %struct.stream_state_s** %decompress_state104, align 8, !tbaa !19
  %138 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %openlist105 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %138, i32 0, i32 4
  store %struct.MEMFILE_s* null, %struct.MEMFILE_s** %openlist105, align 8, !tbaa !24
  %139 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %base_memfile106 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %139, i32 0, i32 5
  store %struct.MEMFILE_s* null, %struct.MEMFILE_s** %base_memfile106, align 8, !tbaa !25
  %140 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %total_space = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %140, i32 0, i32 16
  store i64 0, i64* %total_space, align 8, !tbaa !45
  %141 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockChain107 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %141, i32 0, i32 6
  store %struct.PHYS_MEMFILE_BLK* null, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain107, align 8, !tbaa !20
  %142 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockCount108 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %142, i32 0, i32 7
  store i32 0, i32* %reservePhysBlockCount108, align 4, !tbaa !21
  %143 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockChain109 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %143, i32 0, i32 8
  store %struct.LOG_MEMFILE_BLK* null, %struct.LOG_MEMFILE_BLK** %reserveLogBlockChain109, align 8, !tbaa !22
  %144 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockCount110 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %144, i32 0, i32 9
  store i32 0, i32* %reserveLogBlockCount110, align 4, !tbaa !23
  %145 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %call111 = call i32 @memfile_init_empty(%struct.MEMFILE_s* %145) #4
  store i32 %call111, i32* %code, align 4, !tbaa !5
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.100
  br label %finish

if.end.115:                                       ; preds = %if.end.100
  %146 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %147 = bitcast %struct.MEMFILE_s* %146 to i8*
  %call116 = call i32 @memfile_set_memory_warning(i8* %147, i32 0) #4
  store i32 %call116, i32* %code, align 4, !tbaa !5
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.115
  br label %finish

if.end.120:                                       ; preds = %if.end.115
  %148 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %ok_to_compress121 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %148, i32 0, i32 2
  store i32 1, i32* %ok_to_compress121, align 4, !tbaa !46
  %149 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %compress_state122 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %149, i32 0, i32 24
  store %struct.stream_state_s* null, %struct.stream_state_s** %compress_state122, align 8, !tbaa !18
  %150 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state123 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %150, i32 0, i32 25
  store %struct.stream_state_s* null, %struct.stream_state_s** %decompress_state123, align 8, !tbaa !19
  %151 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %ok_to_compress124 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %151, i32 0, i32 2
  %152 = load i32, i32* %ok_to_compress124, align 4, !tbaa !46
  %tobool125 = icmp ne i32 %152, 0
  br i1 %tobool125, label %if.then.126, label %if.end.174

if.then.126:                                      ; preds = %if.end.120
  %153 = bitcast %struct.stream_template_s** %compress_template to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #1
  %call127 = call %struct.stream_template_s* @clist_compressor_template() #4
  store %struct.stream_template_s* %call127, %struct.stream_template_s** %compress_template, align 8, !tbaa !1
  %154 = bitcast %struct.stream_template_s** %decompress_template128 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %154) #1
  %call129 = call %struct.stream_template_s* @clist_decompressor_template() #4
  store %struct.stream_template_s* %call129, %struct.stream_template_s** %decompress_template128, align 8, !tbaa !1
  %155 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs130 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %155, i32 0, i32 1
  %alloc_struct131 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs130, i32 0, i32 8
  %156 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct131, align 8, !tbaa !13
  %157 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %158 = load %struct.stream_template_s*, %struct.stream_template_s** %compress_template, align 8, !tbaa !1
  %stype132 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %158, i32 0, i32 0
  %159 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype132, align 8, !tbaa !39
  %call133 = call i8* %156(%struct.gs_memory_s* %157, %struct.gs_memory_struct_type_s* %159, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0)) #4
  %160 = bitcast i8* %call133 to %struct.stream_state_s*
  %161 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %compress_state134 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %161, i32 0, i32 24
  store %struct.stream_state_s* %160, %struct.stream_state_s** %compress_state134, align 8, !tbaa !18
  %162 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs135 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %162, i32 0, i32 1
  %alloc_struct136 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs135, i32 0, i32 8
  %163 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct136, align 8, !tbaa !13
  %164 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %165 = load %struct.stream_template_s*, %struct.stream_template_s** %decompress_template128, align 8, !tbaa !1
  %stype137 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %165, i32 0, i32 0
  %166 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype137, align 8, !tbaa !39
  %call138 = call i8* %163(%struct.gs_memory_s* %164, %struct.gs_memory_struct_type_s* %166, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0)) #4
  %167 = bitcast i8* %call138 to %struct.stream_state_s*
  %168 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state139 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %168, i32 0, i32 25
  store %struct.stream_state_s* %167, %struct.stream_state_s** %decompress_state139, align 8, !tbaa !19
  %169 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %compress_state140 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %169, i32 0, i32 24
  %170 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state140, align 8, !tbaa !18
  %cmp141 = icmp eq %struct.stream_state_s* %170, null
  br i1 %cmp141, label %if.then.147, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %if.then.126
  %171 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state144 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %171, i32 0, i32 25
  %172 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state144, align 8, !tbaa !19
  %cmp145 = icmp eq %struct.stream_state_s* %172, null
  br i1 %cmp145, label %if.then.147, label %if.end.151

if.then.147:                                      ; preds = %lor.lhs.false.143, %if.then.126
  %173 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call148 = call i8* @gs_program_name() #4
  %call149 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %173, i8* %call148, i64 %call149) #4
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %175 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call150 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %174, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0), i8* %175) #4
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.170

if.end.151:                                       ; preds = %lor.lhs.false.143
  %176 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %compress_state152 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %176, i32 0, i32 24
  %177 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state152, align 8, !tbaa !18
  call void @clist_compressor_init(%struct.stream_state_s* %177) #4
  %178 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state153 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %178, i32 0, i32 25
  %179 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state153, align 8, !tbaa !19
  call void @clist_decompressor_init(%struct.stream_state_s* %179) #4
  %180 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %181 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %compress_state154 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %181, i32 0, i32 24
  %182 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state154, align 8, !tbaa !18
  %memory155 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %182, i32 0, i32 1
  store %struct.gs_memory_s* %180, %struct.gs_memory_s** %memory155, align 8, !tbaa !41
  %183 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %184 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state156 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %184, i32 0, i32 25
  %185 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state156, align 8, !tbaa !19
  %memory157 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %185, i32 0, i32 1
  store %struct.gs_memory_s* %183, %struct.gs_memory_s** %memory157, align 8, !tbaa !41
  %186 = load %struct.stream_template_s*, %struct.stream_template_s** %compress_template, align 8, !tbaa !1
  %set_defaults158 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %186, i32 0, i32 6
  %187 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults158, align 8, !tbaa !43
  %tobool159 = icmp ne void (%struct.stream_state_s*)* %187, null
  br i1 %tobool159, label %if.then.160, label %if.end.163

if.then.160:                                      ; preds = %if.end.151
  %188 = load %struct.stream_template_s*, %struct.stream_template_s** %compress_template, align 8, !tbaa !1
  %set_defaults161 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %188, i32 0, i32 6
  %189 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults161, align 8, !tbaa !43
  %190 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %compress_state162 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %190, i32 0, i32 24
  %191 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state162, align 8, !tbaa !18
  call void %189(%struct.stream_state_s* %191) #4
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.160, %if.end.151
  %192 = load %struct.stream_template_s*, %struct.stream_template_s** %decompress_template128, align 8, !tbaa !1
  %set_defaults164 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %192, i32 0, i32 6
  %193 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults164, align 8, !tbaa !43
  %tobool165 = icmp ne void (%struct.stream_state_s*)* %193, null
  br i1 %tobool165, label %if.then.166, label %if.end.169

if.then.166:                                      ; preds = %if.end.163
  %194 = load %struct.stream_template_s*, %struct.stream_template_s** %decompress_template128, align 8, !tbaa !1
  %set_defaults167 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %194, i32 0, i32 6
  %195 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults167, align 8, !tbaa !43
  %196 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state168 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %196, i32 0, i32 25
  %197 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state168, align 8, !tbaa !19
  call void %195(%struct.stream_state_s* %197) #4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.166, %if.end.163
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.170

cleanup.170:                                      ; preds = %if.then.147, %if.end.169
  %198 = bitcast %struct.stream_template_s** %decompress_template128 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast %struct.stream_template_s** %compress_template to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %cleanup.dest.172 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.172, label %cleanup.198 [
    i32 0, label %cleanup.cont.173
    i32 2, label %finish
  ]

cleanup.cont.173:                                 ; preds = %cleanup.170
  br label %if.end.174

if.end.174:                                       ; preds = %cleanup.cont.173, %if.end.120
  %200 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %total_space175 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %200, i32 0, i32 16
  store i64 0, i64* %total_space175, align 8, !tbaa !45
  %201 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i8, i8* %201, i64 0
  store i8 -1, i8* %arrayidx176, align 1, !tbaa !7
  %202 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %add.ptr177 = getelementptr inbounds i8, i8* %202, i64 1
  %203 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %call178 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %add.ptr177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), %struct.MEMFILE_s* %203) #4
  br label %finish

finish:                                           ; preds = %if.end.174, %cleanup.170, %cleanup.88, %if.then.119, %if.then.114, %if.then.96
  %204 = load i32, i32* %code, align 4, !tbaa !5
  %cmp180 = icmp slt i32 %204, 0
  br i1 %cmp180, label %if.then.185, label %lor.lhs.false.182

lor.lhs.false.182:                                ; preds = %finish
  %205 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %cmp183 = icmp eq %struct.MEMFILE_s* %205, null
  br i1 %cmp183, label %if.then.185, label %if.else.195

if.then.185:                                      ; preds = %lor.lhs.false.182, %finish
  %206 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %cmp186 = icmp ne %struct.MEMFILE_s* %206, null
  br i1 %cmp186, label %if.then.188, label %if.end.190

if.then.188:                                      ; preds = %if.then.185
  %207 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %208 = bitcast %struct.MEMFILE_s* %207 to i8*
  %209 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call189 = call i32 @memfile_fclose(i8* %208, i8* %209, i32 1) #4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.188, %if.then.185
  %210 = load i32, i32* %code, align 4, !tbaa !5
  %cmp191 = icmp sge i32 %210, 0
  br i1 %cmp191, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %if.end.190
  store i32 -12, i32* %code, align 4, !tbaa !5
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.193, %if.end.190
  br label %if.end.197

if.else.195:                                      ; preds = %lor.lhs.false.182
  %211 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %is_open196 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %211, i32 0, i32 3
  store i32 1, i32* %is_open196, align 4, !tbaa !8
  %212 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %213 = bitcast %struct.MEMFILE_s* %212 to i8*
  %214 = load i8**, i8*** %pf.addr, align 8, !tbaa !1
  store i8* %213, i8** %214, align 8, !tbaa !1
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.195, %if.end.194
  %215 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %215, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

cleanup.198:                                      ; preds = %if.end.197, %cleanup.88, %cleanup.170
  %216 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = load i32, i32* %retval
  ret i32 %218
}

; Function Attrs: nounwind uwtable
define internal i32 @memfile_fclose(i8* %cf, i8* %fname, i32 %delete) #0 {
entry:
  %retval = alloca i32, align 4
  %cf.addr = alloca i8*, align 8
  %fname.addr = alloca i8*, align 8
  %delete.addr = alloca i32, align 4
  %f = alloca %struct.MEMFILE_s*, align 8
  %prev_f = alloca %struct.MEMFILE_s*, align 8
  %cleanup.dest.slot = alloca i32
  %tmpbp = alloca %struct.LOG_MEMFILE_BLK*, align 8
  %bp = alloca %struct.LOG_MEMFILE_BLK*, align 8
  %tmpraw = alloca %struct.RAW_BUFFER*, align 8
  %block = alloca %struct.LOG_MEMFILE_BLK*, align 8
  %block90 = alloca %struct.PHYS_MEMFILE_BLK*, align 8
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %delete, i32* %delete.addr, align 4, !tbaa !5
  %0 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.MEMFILE_s*
  store %struct.MEMFILE_s* %2, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %3 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %3, i32 0, i32 3
  store i32 0, i32* %is_open, align 4, !tbaa !8
  %4 = load i32, i32* %delete.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.60, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %base_memfile = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %5, i32 0, i32 5
  %6 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %base_memfile, align 8, !tbaa !25
  %tobool1 = icmp ne %struct.MEMFILE_s* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.59

if.then.2:                                        ; preds = %if.then
  %7 = bitcast %struct.MEMFILE_s** %prev_f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %base_memfile3 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %8, i32 0, i32 5
  %9 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %base_memfile3, align 8, !tbaa !25
  store %struct.MEMFILE_s* %9, %struct.MEMFILE_s** %prev_f, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %10 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %prev_f, align 8, !tbaa !1
  %cmp = icmp ne %struct.MEMFILE_s* %10, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %prev_f, align 8, !tbaa !1
  %openlist = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %11, i32 0, i32 4
  %12 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %openlist, align 8, !tbaa !24
  %13 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.MEMFILE_s* %12, %13
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %prev_f, align 8, !tbaa !1
  %openlist6 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %14, i32 0, i32 4
  %15 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %openlist6, align 8, !tbaa !24
  store %struct.MEMFILE_s* %15, %struct.MEMFILE_s** %prev_f, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.5, %for.cond
  %16 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %prev_f, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.MEMFILE_s* %16, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %for.end
  %17 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %17, i32 0, i32 0
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %call = call i8* @gs_program_name() #4
  %call9 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %18, i8* %call, i64 %call9) #4
  %19 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %19, i32 0, i32 0
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !16
  %21 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %call11 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0), %struct.MEMFILE_s* %21) #4
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %for.end
  %22 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %openlist13 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %22, i32 0, i32 4
  %23 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %openlist13, align 8, !tbaa !24
  %24 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %prev_f, align 8, !tbaa !1
  %openlist14 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %24, i32 0, i32 4
  store %struct.MEMFILE_s* %23, %struct.MEMFILE_s** %openlist14, align 8, !tbaa !24
  %25 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_head = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %25, i32 0, i32 10
  %26 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_head, align 8, !tbaa !29
  %phys_blk = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %26, i32 0, i32 1
  %27 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk, align 8, !tbaa !30
  %data_limit = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %27, i32 0, i32 1
  %28 = load i8*, i8** %data_limit, align 8, !tbaa !32
  %cmp15 = icmp ne i8* %28, null
  br i1 %cmp15, label %if.then.16, label %if.end.54

if.then.16:                                       ; preds = %if.end.12
  %29 = bitcast %struct.LOG_MEMFILE_BLK** %tmpbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = bitcast %struct.LOG_MEMFILE_BLK** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_head17 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %31, i32 0, i32 10
  %32 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_head17, align 8, !tbaa !29
  store %struct.LOG_MEMFILE_BLK* %32, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.16
  %33 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %cmp18 = icmp ne %struct.LOG_MEMFILE_BLK* %33, null
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %link = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %34, i32 0, i32 0
  %35 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %link, align 8, !tbaa !38
  store %struct.LOG_MEMFILE_BLK* %35, %struct.LOG_MEMFILE_BLK** %tmpbp, align 8, !tbaa !1
  %36 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %36, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory, align 8, !tbaa !17
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %38 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !47
  %39 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory19 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %39, i32 0, i32 1
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory19, align 8, !tbaa !17
  %41 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %42 = bitcast %struct.LOG_MEMFILE_BLK* %41 to i8*
  call void %38(%struct.gs_memory_s* %40, i8* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0)) #4
  %43 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %total_space = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %43, i32 0, i32 16
  %44 = load i64, i64* %total_space, align 8, !tbaa !45
  %sub = sub i64 %44, 32
  store i64 %sub, i64* %total_space, align 8, !tbaa !45
  %45 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %tmpbp, align 8, !tbaa !1
  store %struct.LOG_MEMFILE_BLK* %45, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_head20 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %46, i32 0, i32 10
  store %struct.LOG_MEMFILE_BLK* null, %struct.LOG_MEMFILE_BLK** %log_head20, align 8, !tbaa !29
  %47 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %compressor_initialized = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %47, i32 0, i32 23
  %48 = load i32, i32* %compressor_initialized, align 4, !tbaa !48
  %tobool21 = icmp ne i32 %48, 0
  br i1 %tobool21, label %if.then.22, label %if.end.40

if.then.22:                                       ; preds = %while.end
  %49 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %49, i32 0, i32 25
  %50 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state, align 8, !tbaa !19
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %50, i32 0, i32 0
  %51 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !49
  %release = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %51, i32 0, i32 5
  %52 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release, align 8, !tbaa !50
  %cmp23 = icmp ne void (%struct.stream_state_s*)* %52, null
  br i1 %cmp23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.then.22
  %53 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state25 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %53, i32 0, i32 25
  %54 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state25, align 8, !tbaa !19
  %templat26 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %54, i32 0, i32 0
  %55 = load %struct.stream_template_s*, %struct.stream_template_s** %templat26, align 8, !tbaa !49
  %release27 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %55, i32 0, i32 5
  %56 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release27, align 8, !tbaa !50
  %57 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state28 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %57, i32 0, i32 25
  %58 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state28, align 8, !tbaa !19
  call void %56(%struct.stream_state_s* %58) #4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.then.22
  %59 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %compress_state = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %59, i32 0, i32 24
  %60 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state, align 8, !tbaa !18
  %templat30 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %60, i32 0, i32 0
  %61 = load %struct.stream_template_s*, %struct.stream_template_s** %templat30, align 8, !tbaa !49
  %release31 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %61, i32 0, i32 5
  %62 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release31, align 8, !tbaa !50
  %cmp32 = icmp ne void (%struct.stream_state_s*)* %62, null
  br i1 %cmp32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.end.29
  %63 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %compress_state34 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %63, i32 0, i32 24
  %64 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state34, align 8, !tbaa !18
  %templat35 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %64, i32 0, i32 0
  %65 = load %struct.stream_template_s*, %struct.stream_template_s** %templat35, align 8, !tbaa !49
  %release36 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %65, i32 0, i32 5
  %66 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release36, align 8, !tbaa !50
  %67 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %compress_state37 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %67, i32 0, i32 24
  %68 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state37, align 8, !tbaa !18
  call void %66(%struct.stream_state_s* %68) #4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %if.end.29
  %69 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %compressor_initialized39 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %69, i32 0, i32 23
  store i32 0, i32* %compressor_initialized39, align 4, !tbaa !48
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.38, %while.end
  br label %while.cond.41

while.cond.41:                                    ; preds = %while.body.43, %if.end.40
  %70 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %raw_head = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %70, i32 0, i32 18
  %71 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head, align 8, !tbaa !27
  %cmp42 = icmp ne %struct.RAW_BUFFER* %71, null
  br i1 %cmp42, label %while.body.43, label %while.end.53

while.body.43:                                    ; preds = %while.cond.41
  %72 = bitcast %struct.RAW_BUFFER** %tmpraw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %raw_head44 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %73, i32 0, i32 18
  %74 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head44, align 8, !tbaa !27
  %fwd = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %74, i32 0, i32 0
  %75 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %fwd, align 8, !tbaa !51
  store %struct.RAW_BUFFER* %75, %struct.RAW_BUFFER** %tmpraw, align 8, !tbaa !1
  %76 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory45 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %76, i32 0, i32 1
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory45, align 8, !tbaa !17
  %procs46 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %77, i32 0, i32 1
  %free_object47 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs46, i32 0, i32 2
  %78 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object47, align 8, !tbaa !47
  %79 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory48 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %79, i32 0, i32 1
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory48, align 8, !tbaa !17
  %81 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %raw_head49 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %81, i32 0, i32 18
  %82 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head49, align 8, !tbaa !27
  %83 = bitcast %struct.RAW_BUFFER* %82 to i8*
  call void %78(%struct.gs_memory_s* %80, i8* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0)) #4
  %84 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %total_space50 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %84, i32 0, i32 16
  %85 = load i64, i64* %total_space50, align 8, !tbaa !45
  %sub51 = sub i64 %85, 16248
  store i64 %sub51, i64* %total_space50, align 8, !tbaa !45
  %86 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %tmpraw, align 8, !tbaa !1
  %87 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %raw_head52 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %87, i32 0, i32 18
  store %struct.RAW_BUFFER* %86, %struct.RAW_BUFFER** %raw_head52, align 8, !tbaa !27
  %88 = bitcast %struct.RAW_BUFFER** %tmpraw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  br label %while.cond.41

while.end.53:                                     ; preds = %while.cond.41
  %89 = bitcast %struct.LOG_MEMFILE_BLK** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast %struct.LOG_MEMFILE_BLK** %tmpbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  br label %if.end.54

if.end.54:                                        ; preds = %while.end.53, %if.end.12
  %91 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %91, i32 0, i32 0
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory55, align 8, !tbaa !16
  %procs56 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %92, i32 0, i32 1
  %free_object57 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs56, i32 0, i32 2
  %93 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object57, align 8, !tbaa !47
  %94 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory58 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %94, i32 0, i32 0
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory58, align 8, !tbaa !16
  %96 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %97 = bitcast %struct.MEMFILE_s* %96 to i8*
  call void %93(%struct.gs_memory_s* %95, i8* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0)) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then.8
  %98 = bitcast %struct.MEMFILE_s** %prev_f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.115 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.59

if.end.59:                                        ; preds = %cleanup.cont, %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.60:                                        ; preds = %entry
  %99 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %openlist61 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %99, i32 0, i32 4
  %100 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %openlist61, align 8, !tbaa !24
  %cmp62 = icmp ne %struct.MEMFILE_s* %100, null
  br i1 %cmp62, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.60
  %101 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %base_memfile63 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %101, i32 0, i32 5
  %102 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %base_memfile63, align 8, !tbaa !25
  %cmp64 = icmp ne %struct.MEMFILE_s* %102, null
  br i1 %cmp64, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %103 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %base_memfile65 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %103, i32 0, i32 5
  %104 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %base_memfile65, align 8, !tbaa !25
  %is_open66 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %104, i32 0, i32 3
  %105 = load i32, i32* %is_open66, align 4, !tbaa !8
  %tobool67 = icmp ne i32 %105, 0
  br i1 %tobool67, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %land.lhs.true, %if.end.60
  %106 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory69 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %106, i32 0, i32 0
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory69, align 8, !tbaa !16
  %call70 = call i8* @gs_program_name() #4
  %call71 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %107, i8* %call70, i64 %call71) #4
  %108 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory72 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %108, i32 0, i32 0
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory72, align 8, !tbaa !16
  %110 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %call73 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %109, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i32 0, i32 0), %struct.MEMFILE_s* %110) #4
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %111 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  call void @memfile_free_mem(%struct.MEMFILE_s* %111) #4
  br label %while.cond.74

while.cond.74:                                    ; preds = %while.body.76, %if.else
  %112 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockChain = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %112, i32 0, i32 8
  %113 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %reserveLogBlockChain, align 8, !tbaa !22
  %cmp75 = icmp ne %struct.LOG_MEMFILE_BLK* %113, null
  br i1 %cmp75, label %while.body.76, label %while.end.86

while.body.76:                                    ; preds = %while.cond.74
  %114 = bitcast %struct.LOG_MEMFILE_BLK** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %114) #1
  %115 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockChain77 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %115, i32 0, i32 8
  %116 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %reserveLogBlockChain77, align 8, !tbaa !22
  store %struct.LOG_MEMFILE_BLK* %116, %struct.LOG_MEMFILE_BLK** %block, align 8, !tbaa !1
  %117 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %block, align 8, !tbaa !1
  %link78 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %117, i32 0, i32 0
  %118 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %link78, align 8, !tbaa !38
  %119 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockChain79 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %119, i32 0, i32 8
  store %struct.LOG_MEMFILE_BLK* %118, %struct.LOG_MEMFILE_BLK** %reserveLogBlockChain79, align 8, !tbaa !22
  %120 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory80 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %120, i32 0, i32 1
  %121 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory80, align 8, !tbaa !17
  %procs81 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %121, i32 0, i32 1
  %free_object82 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs81, i32 0, i32 2
  %122 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object82, align 8, !tbaa !47
  %123 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory83 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %123, i32 0, i32 1
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory83, align 8, !tbaa !17
  %125 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %block, align 8, !tbaa !1
  %126 = bitcast %struct.LOG_MEMFILE_BLK* %125 to i8*
  call void %122(%struct.gs_memory_s* %124, i8* %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0)) #4
  %127 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %total_space84 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %127, i32 0, i32 16
  %128 = load i64, i64* %total_space84, align 8, !tbaa !45
  %sub85 = sub i64 %128, 32
  store i64 %sub85, i64* %total_space84, align 8, !tbaa !45
  %129 = bitcast %struct.LOG_MEMFILE_BLK** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  br label %while.cond.74

while.end.86:                                     ; preds = %while.cond.74
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.89, %while.end.86
  %130 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockChain = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %130, i32 0, i32 6
  %131 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain, align 8, !tbaa !20
  %cmp88 = icmp ne %struct.PHYS_MEMFILE_BLK* %131, null
  br i1 %cmp88, label %while.body.89, label %while.end.100

while.body.89:                                    ; preds = %while.cond.87
  %132 = bitcast %struct.PHYS_MEMFILE_BLK** %block90 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  %133 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockChain91 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %133, i32 0, i32 6
  %134 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain91, align 8, !tbaa !20
  store %struct.PHYS_MEMFILE_BLK* %134, %struct.PHYS_MEMFILE_BLK** %block90, align 8, !tbaa !1
  %135 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %block90, align 8, !tbaa !1
  %link92 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %135, i32 0, i32 0
  %136 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %link92, align 8, !tbaa !53
  %137 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockChain93 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %137, i32 0, i32 6
  store %struct.PHYS_MEMFILE_BLK* %136, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain93, align 8, !tbaa !20
  %138 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory94 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %138, i32 0, i32 1
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory94, align 8, !tbaa !17
  %procs95 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %139, i32 0, i32 1
  %free_object96 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs95, i32 0, i32 2
  %140 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object96, align 8, !tbaa !47
  %141 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory97 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %141, i32 0, i32 1
  %142 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory97, align 8, !tbaa !17
  %143 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %block90, align 8, !tbaa !1
  %144 = bitcast %struct.PHYS_MEMFILE_BLK* %143 to i8*
  call void %140(%struct.gs_memory_s* %142, i8* %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0)) #4
  %145 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %total_space98 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %145, i32 0, i32 16
  %146 = load i64, i64* %total_space98, align 8, !tbaa !45
  %sub99 = sub i64 %146, 16248
  store i64 %sub99, i64* %total_space98, align 8, !tbaa !45
  %147 = bitcast %struct.PHYS_MEMFILE_BLK** %block90 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  br label %while.cond.87

while.end.100:                                    ; preds = %while.cond.87
  %148 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory101 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %148, i32 0, i32 0
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory101, align 8, !tbaa !16
  %procs102 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %149, i32 0, i32 1
  %free_object103 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs102, i32 0, i32 2
  %150 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object103, align 8, !tbaa !47
  %151 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory104 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %151, i32 0, i32 0
  %152 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory104, align 8, !tbaa !16
  %153 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %decompress_state105 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %153, i32 0, i32 25
  %154 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state105, align 8, !tbaa !19
  %155 = bitcast %struct.stream_state_s* %154 to i8*
  call void %150(%struct.gs_memory_s* %152, i8* %155, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0)) #4
  %156 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory106 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %156, i32 0, i32 0
  %157 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory106, align 8, !tbaa !16
  %procs107 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %157, i32 0, i32 1
  %free_object108 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs107, i32 0, i32 2
  %158 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object108, align 8, !tbaa !47
  %159 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory109 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %159, i32 0, i32 0
  %160 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory109, align 8, !tbaa !16
  %161 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %compress_state110 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %161, i32 0, i32 24
  %162 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state110, align 8, !tbaa !18
  %163 = bitcast %struct.stream_state_s* %162 to i8*
  call void %158(%struct.gs_memory_s* %160, i8* %163, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0)) #4
  %164 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory111 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %164, i32 0, i32 0
  %165 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory111, align 8, !tbaa !16
  %procs112 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %165, i32 0, i32 1
  %free_object113 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs112, i32 0, i32 2
  %166 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object113, align 8, !tbaa !47
  %167 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory114 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %167, i32 0, i32 0
  %168 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory114, align 8, !tbaa !16
  %169 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %170 = bitcast %struct.MEMFILE_s* %169 to i8*
  call void %166(%struct.gs_memory_s* %168, i8* %170, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

cleanup.115:                                      ; preds = %while.end.100, %if.then.68, %if.end.59, %cleanup
  %171 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = load i32, i32* %retval
  ret i32 %172
}

; Function Attrs: nounwind uwtable
define internal i32 @memfile_unlink(i8* %fname) #0 {
entry:
  %retval = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %f = alloca %struct.MEMFILE_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, -1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  %call = call i32 (i8*, i8*, ...) @gs_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), %struct.MEMFILE_s** %f) #4
  %cmp2 = icmp eq i32 %call, 1
  %conv3 = zext i1 %cmp2 to i32
  store i32 %conv3, i32* %code, align 4, !tbaa !5
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %6 = bitcast %struct.MEMFILE_s* %5 to i8*
  %7 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call4 = call i32 @memfile_fclose(i8* %6, i8* %7, i32 1) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %8 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @memfile_fwrite_chars(i8* %data, i32 %len, i8* %cf) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %cf.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %f = alloca %struct.MEMFILE_s*, align 8
  %count = alloca i32, align 4
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %move_count = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  %0 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %1, i8** %str, align 8, !tbaa !1
  %2 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to %struct.MEMFILE_s*
  store %struct.MEMFILE_s* %4, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %len.addr, align 4, !tbaa !5
  store i32 %6, i32* %count, align 4, !tbaa !5
  %7 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_pos = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %8, i32 0, i32 13
  %9 = load i64, i64* %log_curr_pos, align 8, !tbaa !26
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  call void @memfile_free_mem(%struct.MEMFILE_s* %11) #4
  %12 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %call = call i32 @memfile_init_empty(%struct.MEMFILE_s* %12) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %14 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %14, i32 0, i32 20
  store i32 %13, i32* %error_code, align 4, !tbaa !28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.2
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.43 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.3

if.end.3:                                         ; preds = %cleanup.cont, %entry
  %16 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_blk = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %16, i32 0, i32 11
  %17 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_curr_blk, align 8, !tbaa !44
  %link = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %17, i32 0, i32 0
  %18 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %link, align 8, !tbaa !38
  %cmp4 = icmp ne %struct.LOG_MEMFILE_BLK* %18, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end.3
  %19 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %19, i32 0, i32 0
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %call6 = call i8* @gs_program_name() #4
  %call7 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %20, i8* %call6, i64 %call7) #4
  %21 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %21, i32 0, i32 0
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !16
  %call9 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i32 0, i32 0)) #4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.end.3
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.39, %if.end.10
  %23 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = bitcast i32* %move_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata_end = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %25, i32 0, i32 15
  %26 = load i8*, i8** %pdata_end, align 8, !tbaa !54
  %27 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %27, i32 0, i32 14
  %28 = load i8*, i8** %pdata, align 8, !tbaa !55
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %move_count, align 4, !tbaa !5
  %29 = load i32, i32* %move_count, align 4, !tbaa !5
  %30 = load i32, i32* %count, align 4, !tbaa !5
  %cmp11 = icmp ugt i32 %29, %30
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.body
  %31 = load i32, i32* %count, align 4, !tbaa !5
  store i32 %31, i32* %move_count, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %while.body
  %32 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata15 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %32, i32 0, i32 14
  %33 = load i8*, i8** %pdata15, align 8, !tbaa !55
  %34 = load i8*, i8** %str, align 8, !tbaa !1
  %35 = load i32, i32* %move_count, align 4, !tbaa !5
  %conv16 = zext i32 %35 to i64
  %call17 = call i8* @memmove(i8* %33, i8* %34, i64 %conv16) #5
  %36 = load i32, i32* %move_count, align 4, !tbaa !5
  %37 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata18 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %37, i32 0, i32 14
  %38 = load i8*, i8** %pdata18, align 8, !tbaa !55
  %idx.ext = zext i32 %36 to i64
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %idx.ext
  store i8* %add.ptr, i8** %pdata18, align 8, !tbaa !55
  %39 = load i32, i32* %move_count, align 4, !tbaa !5
  %40 = load i8*, i8** %str, align 8, !tbaa !1
  %idx.ext19 = zext i32 %39 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %40, i64 %idx.ext19
  store i8* %add.ptr20, i8** %str, align 8, !tbaa !1
  %41 = load i32, i32* %move_count, align 4, !tbaa !5
  %42 = load i32, i32* %count, align 4, !tbaa !5
  %sub = sub i32 %42, %41
  store i32 %sub, i32* %count, align 4, !tbaa !5
  %43 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata21 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %43, i32 0, i32 14
  %44 = load i8*, i8** %pdata21, align 8, !tbaa !55
  %45 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata_end22 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %45, i32 0, i32 15
  %46 = load i8*, i8** %pdata_end22, align 8, !tbaa !54
  %cmp23 = icmp eq i8* %44, %46
  br i1 %cmp23, label %if.then.25, label %if.end.36

if.then.25:                                       ; preds = %if.end.14
  %47 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %call26 = call i32 @memfile_next_blk(%struct.MEMFILE_s* %47) #4
  store i32 %call26, i32* %ecode, align 4, !tbaa !5
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.then.25
  %48 = load i32, i32* %ecode, align 4, !tbaa !5
  %49 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %error_code30 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %49, i32 0, i32 20
  store i32 %48, i32* %error_code30, align 4, !tbaa !28
  %50 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %50, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end.34:                                        ; preds = %if.then.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.25
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.37

cleanup.37:                                       ; preds = %if.end.36, %if.then.33
  %51 = bitcast i32* %move_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %cleanup.dest.38 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.38, label %cleanup.43 [
    i32 0, label %cleanup.cont.39
  ]

cleanup.cont.39:                                  ; preds = %cleanup.37
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv40 = zext i32 %52 to i64
  %53 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_pos41 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %53, i32 0, i32 13
  %54 = load i64, i64* %log_curr_pos41, align 8, !tbaa !26
  %add = add nsw i64 %54, %conv40
  store i64 %add, i64* %log_curr_pos41, align 8, !tbaa !26
  %55 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_pos42 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %55, i32 0, i32 13
  %56 = load i64, i64* %log_curr_pos42, align 8, !tbaa !26
  %57 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_length = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %57, i32 0, i32 12
  store i64 %56, i64* %log_length, align 8, !tbaa !34
  %58 = load i32, i32* %len.addr, align 4, !tbaa !5
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

cleanup.43:                                       ; preds = %while.end, %cleanup.37, %cleanup
  %59 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal i32 @memfile_fread_chars(i8* %data, i32 %len, i8* %cf) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %cf.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %f = alloca %struct.MEMFILE_s*, align 8
  %count = alloca i32, align 4
  %num_read = alloca i32, align 4
  %move_count = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  %0 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %1, i8** %str, align 8, !tbaa !1
  %2 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to %struct.MEMFILE_s*
  store %struct.MEMFILE_s* %4, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %len.addr, align 4, !tbaa !5
  store i32 %6, i32* %count, align 4, !tbaa !5
  %7 = bitcast i32* %num_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %move_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_length = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %9, i32 0, i32 12
  %10 = load i64, i64* %log_length, align 8, !tbaa !34
  %11 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_pos = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %11, i32 0, i32 13
  %12 = load i64, i64* %log_curr_pos, align 8, !tbaa !26
  %sub = sub nsw i64 %10, %12
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %num_read, align 4, !tbaa !5
  %13 = load i32, i32* %count, align 4, !tbaa !5
  %14 = load i32, i32* %num_read, align 4, !tbaa !5
  %cmp = icmp ugt i32 %13, %14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %num_read, align 4, !tbaa !5
  store i32 %15, i32* %count, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %count, align 4, !tbaa !5
  store i32 %16, i32* %num_read, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %if.end
  %17 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_pos2 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %18, i32 0, i32 13
  %19 = load i64, i64* %log_curr_pos2, align 8, !tbaa !26
  %inc = add nsw i64 %19, 1
  store i64 %inc, i64* %log_curr_pos2, align 8, !tbaa !26
  %20 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %20, i32 0, i32 14
  %21 = load i8*, i8** %pdata, align 8, !tbaa !55
  %22 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata_end = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %22, i32 0, i32 15
  %23 = load i8*, i8** %pdata_end, align 8, !tbaa !54
  %cmp3 = icmp eq i8* %21, %23
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %while.body
  %24 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_blk = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %24, i32 0, i32 11
  %25 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_curr_blk, align 8, !tbaa !44
  %link = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %25, i32 0, i32 0
  %26 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %link, align 8, !tbaa !38
  %27 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_blk6 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %27, i32 0, i32 11
  store %struct.LOG_MEMFILE_BLK* %26, %struct.LOG_MEMFILE_BLK** %log_curr_blk6, align 8, !tbaa !44
  %28 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %call = call i32 @memfile_get_pdata(%struct.MEMFILE_s* %28) #4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %while.body
  %29 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata_end8 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %29, i32 0, i32 15
  %30 = load i8*, i8** %pdata_end8, align 8, !tbaa !54
  %31 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata9 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %31, i32 0, i32 14
  %32 = load i8*, i8** %pdata9, align 8, !tbaa !55
  %sub.ptr.lhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv10 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv10, i32* %move_count, align 4, !tbaa !5
  %33 = load i32, i32* %move_count, align 4, !tbaa !5
  %34 = load i32, i32* %count, align 4, !tbaa !5
  %cmp11 = icmp ugt i32 %33, %34
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.7
  %35 = load i32, i32* %count, align 4, !tbaa !5
  store i32 %35, i32* %move_count, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.7
  %36 = load i32, i32* %move_count, align 4, !tbaa !5
  %sub15 = sub i32 %36, 1
  %conv16 = zext i32 %sub15 to i64
  %37 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_pos17 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %37, i32 0, i32 13
  %38 = load i64, i64* %log_curr_pos17, align 8, !tbaa !26
  %add = add nsw i64 %38, %conv16
  store i64 %add, i64* %log_curr_pos17, align 8, !tbaa !26
  %39 = load i8*, i8** %str, align 8, !tbaa !1
  %40 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata18 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %40, i32 0, i32 14
  %41 = load i8*, i8** %pdata18, align 8, !tbaa !55
  %42 = load i32, i32* %move_count, align 4, !tbaa !5
  %conv19 = zext i32 %42 to i64
  %call20 = call i8* @memmove(i8* %39, i8* %41, i64 %conv19) #5
  %43 = load i32, i32* %move_count, align 4, !tbaa !5
  %44 = load i8*, i8** %str, align 8, !tbaa !1
  %idx.ext = zext i32 %43 to i64
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  store i8* %add.ptr, i8** %str, align 8, !tbaa !1
  %45 = load i32, i32* %move_count, align 4, !tbaa !5
  %46 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata21 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %46, i32 0, i32 14
  %47 = load i8*, i8** %pdata21, align 8, !tbaa !55
  %idx.ext22 = zext i32 %45 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %47, i64 %idx.ext22
  store i8* %add.ptr23, i8** %pdata21, align 8, !tbaa !55
  %48 = load i32, i32* %move_count, align 4, !tbaa !5
  %49 = load i32, i32* %count, align 4, !tbaa !5
  %sub24 = sub i32 %49, %48
  store i32 %sub24, i32* %count, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %50 = load i32, i32* %num_read, align 4, !tbaa !5
  %51 = bitcast i32* %move_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %num_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @memfile_set_memory_warning(i8* %cf, i32 %bytes_left) #0 {
entry:
  %retval = alloca i32, align 4
  %cf.addr = alloca i8*, align 8
  %bytes_left.addr = alloca i32, align 4
  %f = alloca %struct.MEMFILE_s*, align 8
  %code = alloca i32, align 4
  %logNeeded = alloca i32, align 4
  %physNeeded = alloca i32, align 4
  %block = alloca %struct.LOG_MEMFILE_BLK*, align 8
  %cleanup.dest.slot = alloca i32
  %block17 = alloca %struct.LOG_MEMFILE_BLK*, align 8
  %block30 = alloca %struct.PHYS_MEMFILE_BLK*, align 8
  %block51 = alloca %struct.PHYS_MEMFILE_BLK*, align 8
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  store i32 %bytes_left, i32* %bytes_left.addr, align 4, !tbaa !5
  %0 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.MEMFILE_s*
  store %struct.MEMFILE_s* %2, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = bitcast i32* %logNeeded to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %bytes_left.addr, align 4, !tbaa !5
  %add = add nsw i32 %5, 16224
  %sub = sub nsw i32 %add, 1
  %div = sdiv i32 %sub, 16224
  store i32 %div, i32* %logNeeded, align 4, !tbaa !5
  %6 = bitcast i32* %physNeeded to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %logNeeded, align 4, !tbaa !5
  store i32 %7, i32* %physNeeded, align 4, !tbaa !5
  %8 = load i32, i32* %bytes_left.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %physNeeded, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %physNeeded, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %raw_head = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %10, i32 0, i32 18
  %11 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head, align 8, !tbaa !27
  %cmp1 = icmp eq %struct.RAW_BUFFER* %11, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %12 = load i32, i32* %physNeeded, align 4, !tbaa !5
  %inc3 = add nsw i32 %12, 1
  store i32 %inc3, i32* %physNeeded, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end.4
  %13 = load i32, i32* %logNeeded, align 4, !tbaa !5
  %14 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockCount = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %14, i32 0, i32 9
  %15 = load i32, i32* %reserveLogBlockCount, align 4, !tbaa !23
  %cmp5 = icmp sgt i32 %13, %15
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = bitcast %struct.LOG_MEMFILE_BLK** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %17, i32 0, i32 1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory, align 8, !tbaa !17
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %19 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !35
  %20 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory6 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %20, i32 0, i32 1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory6, align 8, !tbaa !17
  %call = call i8* %19(%struct.gs_memory_s* %21, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0)) #4
  %22 = bitcast i8* %call to %struct.LOG_MEMFILE_BLK*
  store %struct.LOG_MEMFILE_BLK* %22, %struct.LOG_MEMFILE_BLK** %block, align 8, !tbaa !1
  %23 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %block, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.LOG_MEMFILE_BLK* %23, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %while.body
  %24 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockChain = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %24, i32 0, i32 8
  %25 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %reserveLogBlockChain, align 8, !tbaa !22
  %26 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %block, align 8, !tbaa !1
  %link = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %26, i32 0, i32 0
  store %struct.LOG_MEMFILE_BLK* %25, %struct.LOG_MEMFILE_BLK** %link, align 8, !tbaa !38
  %27 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %block, align 8, !tbaa !1
  %28 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockChain10 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %28, i32 0, i32 8
  store %struct.LOG_MEMFILE_BLK* %27, %struct.LOG_MEMFILE_BLK** %reserveLogBlockChain10, align 8, !tbaa !22
  %29 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockCount11 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %29, i32 0, i32 9
  %30 = load i32, i32* %reserveLogBlockCount11, align 4, !tbaa !23
  %inc12 = add nsw i32 %30, 1
  store i32 %inc12, i32* %reserveLogBlockCount11, align 4, !tbaa !23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.8, %if.end.9
  %31 = bitcast %struct.LOG_MEMFILE_BLK** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.64 [
    i32 0, label %cleanup.cont
    i32 4, label %finish
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.16, %while.end
  %32 = load i32, i32* %logNeeded, align 4, !tbaa !5
  %33 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockCount14 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %33, i32 0, i32 9
  %34 = load i32, i32* %reserveLogBlockCount14, align 4, !tbaa !23
  %cmp15 = icmp slt i32 %32, %34
  br i1 %cmp15, label %while.body.16, label %while.end.26

while.body.16:                                    ; preds = %while.cond.13
  %35 = bitcast %struct.LOG_MEMFILE_BLK** %block17 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockChain18 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %36, i32 0, i32 8
  %37 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %reserveLogBlockChain18, align 8, !tbaa !22
  store %struct.LOG_MEMFILE_BLK* %37, %struct.LOG_MEMFILE_BLK** %block17, align 8, !tbaa !1
  %38 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %block17, align 8, !tbaa !1
  %link19 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %38, i32 0, i32 0
  %39 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %link19, align 8, !tbaa !38
  %40 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockChain20 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %40, i32 0, i32 8
  store %struct.LOG_MEMFILE_BLK* %39, %struct.LOG_MEMFILE_BLK** %reserveLogBlockChain20, align 8, !tbaa !22
  %41 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory21 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %41, i32 0, i32 1
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory21, align 8, !tbaa !17
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 2
  %43 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !47
  %44 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory23 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %44, i32 0, i32 1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory23, align 8, !tbaa !17
  %46 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %block17, align 8, !tbaa !1
  %47 = bitcast %struct.LOG_MEMFILE_BLK* %46 to i8*
  call void %43(%struct.gs_memory_s* %45, i8* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0)) #4
  %48 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %total_space = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %48, i32 0, i32 16
  %49 = load i64, i64* %total_space, align 8, !tbaa !45
  %sub24 = sub i64 %49, 32
  store i64 %sub24, i64* %total_space, align 8, !tbaa !45
  %50 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reserveLogBlockCount25 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %50, i32 0, i32 9
  %51 = load i32, i32* %reserveLogBlockCount25, align 4, !tbaa !23
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %reserveLogBlockCount25, align 4, !tbaa !23
  %52 = bitcast %struct.LOG_MEMFILE_BLK** %block17 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  br label %while.cond.13

while.end.26:                                     ; preds = %while.cond.13
  br label %while.cond.27

while.cond.27:                                    ; preds = %cleanup.cont.45, %while.end.26
  %53 = load i32, i32* %physNeeded, align 4, !tbaa !5
  %54 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockCount = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %54, i32 0, i32 7
  %55 = load i32, i32* %reservePhysBlockCount, align 4, !tbaa !21
  %cmp28 = icmp sgt i32 %53, %55
  br i1 %cmp28, label %while.body.29, label %while.end.46

while.body.29:                                    ; preds = %while.cond.27
  %56 = bitcast %struct.PHYS_MEMFILE_BLK** %block30 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory31 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %57, i32 0, i32 1
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory31, align 8, !tbaa !17
  %procs32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %alloc_bytes33 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs32, i32 0, i32 7
  %59 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes33, align 8, !tbaa !35
  %60 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory34 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %60, i32 0, i32 1
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory34, align 8, !tbaa !17
  %call35 = call i8* %59(%struct.gs_memory_s* %61, i32 16248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0)) #4
  %62 = bitcast i8* %call35 to %struct.PHYS_MEMFILE_BLK*
  store %struct.PHYS_MEMFILE_BLK* %62, %struct.PHYS_MEMFILE_BLK** %block30, align 8, !tbaa !1
  %63 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %block30, align 8, !tbaa !1
  %cmp36 = icmp eq %struct.PHYS_MEMFILE_BLK* %63, null
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %while.body.29
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end.38:                                        ; preds = %while.body.29
  %64 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockChain = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %64, i32 0, i32 6
  %65 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain, align 8, !tbaa !20
  %66 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %block30, align 8, !tbaa !1
  %link39 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %66, i32 0, i32 0
  store %struct.PHYS_MEMFILE_BLK* %65, %struct.PHYS_MEMFILE_BLK** %link39, align 8, !tbaa !53
  %67 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %block30, align 8, !tbaa !1
  %68 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockChain40 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %68, i32 0, i32 6
  store %struct.PHYS_MEMFILE_BLK* %67, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain40, align 8, !tbaa !20
  %69 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockCount41 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %69, i32 0, i32 7
  %70 = load i32, i32* %reservePhysBlockCount41, align 4, !tbaa !21
  %inc42 = add nsw i32 %70, 1
  store i32 %inc42, i32* %reservePhysBlockCount41, align 4, !tbaa !21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.43

cleanup.43:                                       ; preds = %if.then.37, %if.end.38
  %71 = bitcast %struct.PHYS_MEMFILE_BLK** %block30 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %cleanup.dest.44 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.44, label %cleanup.64 [
    i32 0, label %cleanup.cont.45
    i32 4, label %finish
  ]

cleanup.cont.45:                                  ; preds = %cleanup.43
  br label %while.cond.27

while.end.46:                                     ; preds = %while.cond.27
  br label %while.cond.47

while.cond.47:                                    ; preds = %while.body.50, %while.end.46
  %72 = load i32, i32* %physNeeded, align 4, !tbaa !5
  %73 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockCount48 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %73, i32 0, i32 7
  %74 = load i32, i32* %reservePhysBlockCount48, align 4, !tbaa !21
  %cmp49 = icmp slt i32 %72, %74
  br i1 %cmp49, label %while.body.50, label %while.end.63

while.body.50:                                    ; preds = %while.cond.47
  %75 = bitcast %struct.PHYS_MEMFILE_BLK** %block51 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockChain52 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %76, i32 0, i32 6
  %77 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain52, align 8, !tbaa !20
  store %struct.PHYS_MEMFILE_BLK* %77, %struct.PHYS_MEMFILE_BLK** %block51, align 8, !tbaa !1
  %78 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %block51, align 8, !tbaa !1
  %link53 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %78, i32 0, i32 0
  %79 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %link53, align 8, !tbaa !53
  %80 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockChain54 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %80, i32 0, i32 6
  store %struct.PHYS_MEMFILE_BLK* %79, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain54, align 8, !tbaa !20
  %81 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory55 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %81, i32 0, i32 1
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory55, align 8, !tbaa !17
  %procs56 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %82, i32 0, i32 1
  %free_object57 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs56, i32 0, i32 2
  %83 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object57, align 8, !tbaa !47
  %84 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %data_memory58 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %84, i32 0, i32 1
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory58, align 8, !tbaa !17
  %86 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %block51, align 8, !tbaa !1
  %87 = bitcast %struct.PHYS_MEMFILE_BLK* %86 to i8*
  call void %83(%struct.gs_memory_s* %85, i8* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0)) #4
  %88 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %total_space59 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %88, i32 0, i32 16
  %89 = load i64, i64* %total_space59, align 8, !tbaa !45
  %sub60 = sub i64 %89, 16248
  store i64 %sub60, i64* %total_space59, align 8, !tbaa !45
  %90 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %reservePhysBlockCount61 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %90, i32 0, i32 7
  %91 = load i32, i32* %reservePhysBlockCount61, align 4, !tbaa !21
  %dec62 = add nsw i32 %91, -1
  store i32 %dec62, i32* %reservePhysBlockCount61, align 4, !tbaa !21
  %92 = bitcast %struct.PHYS_MEMFILE_BLK** %block51 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  br label %while.cond.47

while.end.63:                                     ; preds = %while.cond.47
  %93 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %93, i32 0, i32 20
  store i32 0, i32* %error_code, align 4, !tbaa !28
  br label %finish

finish:                                           ; preds = %while.end.63, %cleanup.43, %cleanup
  %94 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %94, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %finish, %cleanup.43, %cleanup
  %95 = bitcast i32* %physNeeded to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %logNeeded to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = load i32, i32* %retval
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define internal i32 @memfile_ferror_code(i8* %cf) #0 {
entry:
  %cf.addr = alloca i8*, align 8
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct.MEMFILE_s*
  %error_code = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %1, i32 0, i32 20
  %2 = load i32, i32* %error_code, align 4, !tbaa !28
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i64 @memfile_ftell(i8* %cf) #0 {
entry:
  %cf.addr = alloca i8*, align 8
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct.MEMFILE_s*
  %log_curr_pos = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %1, i32 0, i32 13
  %2 = load i64, i64* %log_curr_pos, align 8, !tbaa !26
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal void @memfile_rewind(i8* %cf, i32 %discard_data, i8* %ignore_fname) #0 {
entry:
  %cf.addr = alloca i8*, align 8
  %discard_data.addr = alloca i32, align 4
  %ignore_fname.addr = alloca i8*, align 8
  %f = alloca %struct.MEMFILE_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  store i32 %discard_data, i32* %discard_data.addr, align 4, !tbaa !5
  store i8* %ignore_fname, i8** %ignore_fname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.MEMFILE_s*
  store %struct.MEMFILE_s* %2, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %3 = load i32, i32* %discard_data.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %openlist = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %4, i32 0, i32 4
  %5 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %openlist, align 8, !tbaa !24
  %cmp = icmp ne %struct.MEMFILE_s* %5, null
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %base_memfile = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %6, i32 0, i32 5
  %7 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %base_memfile, align 8, !tbaa !25
  %cmp1 = icmp ne %struct.MEMFILE_s* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  %8 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %8, i32 0, i32 0
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %call = call i8* @gs_program_name() #4
  %call3 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %9, i8* %call, i64 %call3) #4
  %10 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !16
  %12 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %call5 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i32 0, i32 0), %struct.MEMFILE_s* %12) #4
  %13 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %13, i32 0, i32 20
  store i32 -12, i32* %error_code, align 4, !tbaa !28
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  call void @memfile_free_mem(%struct.MEMFILE_s* %14) #4
  %15 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %call6 = call i32 @memfile_init_empty(%struct.MEMFILE_s* %15) #4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %16 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_head = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %16, i32 0, i32 10
  %17 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_head, align 8, !tbaa !29
  %18 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_blk = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %18, i32 0, i32 11
  store %struct.LOG_MEMFILE_BLK* %17, %struct.LOG_MEMFILE_BLK** %log_curr_blk, align 8, !tbaa !44
  %19 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_pos = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %19, i32 0, i32 13
  store i64 0, i64* %log_curr_pos, align 8, !tbaa !26
  %20 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %call7 = call i32 @memfile_get_pdata(%struct.MEMFILE_s* %20) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.2
  %21 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
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
define internal i32 @memfile_fseek(i8* %cf, i64 %offset, i32 %mode, i8* %ignore_fname) #0 {
entry:
  %retval = alloca i32, align 4
  %cf.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %ignore_fname.addr = alloca i8*, align 8
  %f = alloca %struct.MEMFILE_s*, align 8
  %i = alloca i64, align 8
  %block_num = alloca i64, align 8
  %new_pos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !56
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !5
  store i8* %ignore_fname, i8** %ignore_fname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.MEMFILE_s*
  store %struct.MEMFILE_s* %2, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %3 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %block_num to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %new_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %mode.addr, align 4, !tbaa !5
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %7 = load i64, i64* %offset.addr, align 8, !tbaa !56
  store i64 %7, i64* %new_pos, align 8, !tbaa !56
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %8 = load i64, i64* %offset.addr, align 8, !tbaa !56
  %9 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_pos = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %9, i32 0, i32 13
  %10 = load i64, i64* %log_curr_pos, align 8, !tbaa !26
  %add = add nsw i64 %8, %10
  store i64 %add, i64* %new_pos, align 8, !tbaa !56
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %11 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_length = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %11, i32 0, i32 12
  %12 = load i64, i64* %log_length, align 8, !tbaa !34
  %13 = load i64, i64* %offset.addr, align 8, !tbaa !56
  %sub = sub nsw i64 %12, %13
  store i64 %sub, i64* %new_pos, align 8, !tbaa !56
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb.1, %sw.bb
  %14 = load i64, i64* %new_pos, align 8, !tbaa !56
  %cmp = icmp slt i64 %14, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %15 = load i64, i64* %new_pos, align 8, !tbaa !56
  %16 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_length3 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %16, i32 0, i32 12
  %17 = load i64, i64* %log_length3, align 8, !tbaa !34
  %cmp4 = icmp sgt i64 %15, %17
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.epilog
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %18 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %18, i32 0, i32 14
  %19 = load i8*, i8** %pdata, align 8, !tbaa !55
  %20 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata_end = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %20, i32 0, i32 15
  %21 = load i8*, i8** %pdata_end, align 8, !tbaa !54
  %cmp5 = icmp eq i8* %19, %21
  br i1 %cmp5, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %22 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_blk = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %22, i32 0, i32 11
  %23 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_curr_blk, align 8, !tbaa !44
  %link = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %23, i32 0, i32 0
  %24 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %link, align 8, !tbaa !38
  %cmp6 = icmp ne %struct.LOG_MEMFILE_BLK* %24, null
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %land.lhs.true
  %25 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_blk8 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %25, i32 0, i32 11
  %26 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_curr_blk8, align 8, !tbaa !44
  %link9 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %26, i32 0, i32 0
  %27 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %link9, align 8, !tbaa !38
  %28 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_blk10 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %28, i32 0, i32 11
  store %struct.LOG_MEMFILE_BLK* %27, %struct.LOG_MEMFILE_BLK** %log_curr_blk10, align 8, !tbaa !44
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %land.lhs.true, %if.end
  %29 = load i64, i64* %new_pos, align 8, !tbaa !56
  %div = sdiv i64 %29, 16224
  store i64 %div, i64* %block_num, align 8, !tbaa !56
  %30 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_pos12 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %30, i32 0, i32 13
  %31 = load i64, i64* %log_curr_pos12, align 8, !tbaa !26
  %div13 = sdiv i64 %31, 16224
  store i64 %div13, i64* %i, align 8, !tbaa !56
  %32 = load i64, i64* %block_num, align 8, !tbaa !56
  %33 = load i64, i64* %i, align 8, !tbaa !56
  %cmp14 = icmp slt i64 %32, %33
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.11
  %34 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_head = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %34, i32 0, i32 10
  %35 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_head, align 8, !tbaa !29
  %36 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_blk16 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %36, i32 0, i32 11
  store %struct.LOG_MEMFILE_BLK* %35, %struct.LOG_MEMFILE_BLK** %log_curr_blk16, align 8, !tbaa !44
  store i64 0, i64* %i, align 8, !tbaa !56
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %37 = load i64, i64* %i, align 8, !tbaa !56
  %38 = load i64, i64* %block_num, align 8, !tbaa !56
  %cmp18 = icmp slt i64 %37, %38
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_blk19 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %39, i32 0, i32 11
  %40 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_curr_blk19, align 8, !tbaa !44
  %link20 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %40, i32 0, i32 0
  %41 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %link20, align 8, !tbaa !38
  %42 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_blk21 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %42, i32 0, i32 11
  store %struct.LOG_MEMFILE_BLK* %41, %struct.LOG_MEMFILE_BLK** %log_curr_blk21, align 8, !tbaa !44
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i64, i64* %i, align 8, !tbaa !56
  %inc = add nsw i64 %43, 1
  store i64 %inc, i64* %i, align 8, !tbaa !56
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load i64, i64* %new_pos, align 8, !tbaa !56
  %45 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %log_curr_pos22 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %45, i32 0, i32 13
  store i64 %44, i64* %log_curr_pos22, align 8, !tbaa !26
  %46 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %call = call i32 @memfile_get_pdata(%struct.MEMFILE_s* %46) #4
  %47 = load i64, i64* %new_pos, align 8, !tbaa !56
  %48 = load i64, i64* %block_num, align 8, !tbaa !56
  %mul = mul nsw i64 %48, 16224
  %sub23 = sub nsw i64 %47, %mul
  %49 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f, align 8, !tbaa !1
  %pdata24 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %49, i32 0, i32 14
  %50 = load i8*, i8** %pdata24, align 8, !tbaa !55
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 %sub23
  store i8* %add.ptr, i8** %pdata24, align 8, !tbaa !55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then, %sw.default
  %51 = bitcast i64* %new_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i64* %block_num to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.MEMFILE_s** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define i32 @gs_gxclmem_init(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.clist_io_procs_s* @clist_io_procs_memory, %struct.clist_io_procs_s** @clist_io_procs_memory_global, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_sscanf(i8*, i8*, ...) #2

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare %struct.stream_template_s* @clist_decompressor_template() #2

declare void @clist_decompressor_init(%struct.stream_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @memfile_get_pdata(%struct.MEMFILE_s* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.MEMFILE_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %num_raw_buffers = alloca i32, align 4
  %status = alloca i32, align 4
  %bp = alloca %struct.LOG_MEMFILE_BLK*, align 8
  %cleanup.dest.slot = alloca i32
  %back_up = alloca i32, align 4
  store %struct.MEMFILE_s* %f, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %num_raw_buffers to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.LOG_MEMFILE_BLK** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_curr_blk = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %5, i32 0, i32 11
  %6 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_curr_blk, align 8, !tbaa !44
  store %struct.LOG_MEMFILE_BLK* %6, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %7 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %phys_blk = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %7, i32 0, i32 1
  %8 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk, align 8, !tbaa !30
  %data_limit = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %8, i32 0, i32 1
  %9 = load i8*, i8** %data_limit, align 8, !tbaa !32
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %if.then, label %if.else.15

if.then:                                          ; preds = %entry
  %10 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %phys_blk1 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %10, i32 0, i32 1
  %11 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk1, align 8, !tbaa !30
  %data = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %11, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16224 x i8], [16224 x i8]* %data, i32 0, i32 0
  %12 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %12, i32 0, i32 14
  store i8* %arraydecay, i8** %pdata, align 8, !tbaa !55
  %13 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_curr_pos = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %13, i32 0, i32 13
  %14 = load i64, i64* %log_curr_pos, align 8, !tbaa !26
  %rem = srem i64 %14, 16224
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %i, align 4, !tbaa !5
  %15 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_curr_pos2 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %15, i32 0, i32 13
  %16 = load i64, i64* %log_curr_pos2, align 8, !tbaa !26
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %conv3 = sext i32 %17 to i64
  %sub = sub nsw i64 %16, %conv3
  %conv4 = trunc i64 %sub to i32
  store i32 %conv4, i32* %i, align 4, !tbaa !5
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %18, 16224
  %conv5 = sext i32 %add to i64
  %19 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_length = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %19, i32 0, i32 12
  %20 = load i64, i64* %log_length, align 8, !tbaa !34
  %cmp6 = icmp sgt i64 %conv5, %20
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %21 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata9 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %21, i32 0, i32 14
  %22 = load i8*, i8** %pdata9, align 8, !tbaa !55
  %23 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_length10 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %23, i32 0, i32 12
  %24 = load i64, i64* %log_length10, align 8, !tbaa !34
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %24
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %25 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %26 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata_end = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %26, i32 0, i32 15
  store i8* %add.ptr11, i8** %pdata_end, align 8, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %if.then
  %27 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata12 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %27, i32 0, i32 14
  %28 = load i8*, i8** %pdata12, align 8, !tbaa !55
  %add.ptr13 = getelementptr inbounds i8, i8* %28, i64 16224
  %29 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata_end14 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %29, i32 0, i32 15
  store i8* %add.ptr13, i8** %pdata_end14, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.273

if.else.15:                                       ; preds = %entry
  %30 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %30, i32 0, i32 18
  %31 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head, align 8, !tbaa !27
  %cmp16 = icmp eq %struct.RAW_BUFFER* %31, null
  br i1 %cmp16, label %if.then.18, label %if.end.96

if.then.18:                                       ; preds = %if.else.15
  store i32 0, i32* %code, align 4, !tbaa !5
  %32 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_length19 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %32, i32 0, i32 12
  %33 = load i64, i64* %log_length19, align 8, !tbaa !34
  %div = sdiv i64 %33, 16224
  %div20 = sdiv i64 %div, 32
  %cmp21 = icmp sgt i64 %div20, 8
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.18
  %34 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_length23 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %34, i32 0, i32 12
  %35 = load i64, i64* %log_length23, align 8, !tbaa !34
  %div24 = sdiv i64 %35, 16224
  %div25 = sdiv i64 %div24, 32
  br label %cond.end

cond.false:                                       ; preds = %if.then.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div25, %cond.true ], [ 8, %cond.false ]
  %cmp26 = icmp slt i64 64, %cond
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.end
  br label %cond.end.42

cond.false.29:                                    ; preds = %cond.end
  %36 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_length30 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %36, i32 0, i32 12
  %37 = load i64, i64* %log_length30, align 8, !tbaa !34
  %div31 = sdiv i64 %37, 16224
  %div32 = sdiv i64 %div31, 32
  %cmp33 = icmp sgt i64 %div32, 8
  br i1 %cmp33, label %cond.true.35, label %cond.false.39

cond.true.35:                                     ; preds = %cond.false.29
  %38 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_length36 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %38, i32 0, i32 12
  %39 = load i64, i64* %log_length36, align 8, !tbaa !34
  %div37 = sdiv i64 %39, 16224
  %div38 = sdiv i64 %div37, 32
  br label %cond.end.40

cond.false.39:                                    ; preds = %cond.false.29
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.35
  %cond41 = phi i64 [ %div38, %cond.true.35 ], [ 8, %cond.false.39 ]
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.end.40, %cond.true.28
  %cond43 = phi i64 [ 64, %cond.true.28 ], [ %cond41, %cond.end.40 ]
  %conv44 = trunc i64 %cond43 to i32
  store i32 %conv44, i32* %num_raw_buffers, align 4, !tbaa !5
  %40 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reservePhysBlockCount = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %40, i32 0, i32 7
  %41 = load i32, i32* %reservePhysBlockCount, align 4, !tbaa !21
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.then.45, label %if.else.50

if.then.45:                                       ; preds = %cond.end.42
  %42 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reservePhysBlockChain = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %42, i32 0, i32 6
  %43 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain, align 8, !tbaa !20
  %44 = bitcast %struct.PHYS_MEMFILE_BLK* %43 to %struct.RAW_BUFFER*
  %45 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head46 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %45, i32 0, i32 18
  store %struct.RAW_BUFFER* %44, %struct.RAW_BUFFER** %raw_head46, align 8, !tbaa !27
  %46 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reservePhysBlockChain47 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %46, i32 0, i32 6
  %47 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain47, align 8, !tbaa !20
  %link = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %47, i32 0, i32 0
  %48 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %link, align 8, !tbaa !53
  %49 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reservePhysBlockChain48 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %49, i32 0, i32 6
  store %struct.PHYS_MEMFILE_BLK* %48, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain48, align 8, !tbaa !20
  %50 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reservePhysBlockCount49 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %50, i32 0, i32 7
  %51 = load i32, i32* %reservePhysBlockCount49, align 4, !tbaa !21
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %reservePhysBlockCount49, align 4, !tbaa !21
  br label %if.end.56

if.else.50:                                       ; preds = %cond.end.42
  %52 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %call = call i8* @allocateWithReserve(%struct.MEMFILE_s* %52, i32 16248, i32* %code, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0)) #4
  %53 = bitcast i8* %call to %struct.RAW_BUFFER*
  %54 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head51 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %54, i32 0, i32 18
  store %struct.RAW_BUFFER* %53, %struct.RAW_BUFFER** %raw_head51, align 8, !tbaa !27
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %55, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.else.50
  %56 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.274

if.end.55:                                        ; preds = %if.else.50
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.45
  %57 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head57 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %57, i32 0, i32 18
  %58 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head57, align 8, !tbaa !27
  %back = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %58, i32 0, i32 1
  store %struct.RAW_BUFFER* null, %struct.RAW_BUFFER** %back, align 8, !tbaa !57
  %59 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head58 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %59, i32 0, i32 18
  %60 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head58, align 8, !tbaa !27
  %61 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %61, i32 0, i32 19
  store %struct.RAW_BUFFER* %60, %struct.RAW_BUFFER** %raw_tail, align 8, !tbaa !58
  %62 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail59 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %62, i32 0, i32 19
  %63 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail59, align 8, !tbaa !58
  %log_blk = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %63, i32 0, i32 2
  store %struct.LOG_MEMFILE_BLK* null, %struct.LOG_MEMFILE_BLK** %log_blk, align 8, !tbaa !59
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.56
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %65 = load i32, i32* %num_raw_buffers, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %64, %65
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %66, i32 0, i32 1
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory, align 8, !tbaa !17
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %67, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %68 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !35
  %69 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory62 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %69, i32 0, i32 1
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory62, align 8, !tbaa !17
  %call63 = call i8* %68(%struct.gs_memory_s* %70, i32 16248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #4
  %71 = bitcast i8* %call63 to %struct.RAW_BUFFER*
  %72 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail64 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %72, i32 0, i32 19
  %73 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail64, align 8, !tbaa !58
  %fwd = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %73, i32 0, i32 0
  store %struct.RAW_BUFFER* %71, %struct.RAW_BUFFER** %fwd, align 8, !tbaa !51
  %74 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail65 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %74, i32 0, i32 19
  %75 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail65, align 8, !tbaa !58
  %fwd66 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %75, i32 0, i32 0
  %76 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %fwd66, align 8, !tbaa !51
  %tobool67 = icmp ne %struct.RAW_BUFFER* %76, null
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %for.body
  br label %for.end

if.end.69:                                        ; preds = %for.body
  %77 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %total_space = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %77, i32 0, i32 16
  %78 = load i64, i64* %total_space, align 8, !tbaa !45
  %add70 = add i64 %78, 16248
  store i64 %add70, i64* %total_space, align 8, !tbaa !45
  %79 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail71 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %79, i32 0, i32 19
  %80 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail71, align 8, !tbaa !58
  %81 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail72 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %81, i32 0, i32 19
  %82 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail72, align 8, !tbaa !58
  %fwd73 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %82, i32 0, i32 0
  %83 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %fwd73, align 8, !tbaa !51
  %back74 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %83, i32 0, i32 1
  store %struct.RAW_BUFFER* %80, %struct.RAW_BUFFER** %back74, align 8, !tbaa !57
  %84 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail75 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %84, i32 0, i32 19
  %85 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail75, align 8, !tbaa !58
  %fwd76 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %85, i32 0, i32 0
  %86 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %fwd76, align 8, !tbaa !51
  %87 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail77 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %87, i32 0, i32 19
  store %struct.RAW_BUFFER* %86, %struct.RAW_BUFFER** %raw_tail77, align 8, !tbaa !58
  %88 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail78 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %88, i32 0, i32 19
  %89 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail78, align 8, !tbaa !58
  %log_blk79 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %89, i32 0, i32 2
  store %struct.LOG_MEMFILE_BLK* null, %struct.LOG_MEMFILE_BLK** %log_blk79, align 8, !tbaa !59
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.68, %for.cond
  %91 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail80 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %91, i32 0, i32 19
  %92 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail80, align 8, !tbaa !58
  %fwd81 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %92, i32 0, i32 0
  store %struct.RAW_BUFFER* null, %struct.RAW_BUFFER** %fwd81, align 8, !tbaa !51
  %93 = load i32, i32* %i, align 4, !tbaa !5
  %add82 = add nsw i32 %93, 1
  store i32 %add82, i32* %num_raw_buffers, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %for.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %94 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %decompress_state = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %94, i32 0, i32 25
  %95 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state, align 8, !tbaa !19
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %95, i32 0, i32 0
  %96 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !49
  %init = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %96, i32 0, i32 1
  %97 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %init, align 8, !tbaa !60
  %cmp83 = icmp ne i32 (%struct.stream_state_s*)* %97, null
  br i1 %cmp83, label %if.then.85, label %if.end.91

if.then.85:                                       ; preds = %do.end
  %98 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %decompress_state86 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %98, i32 0, i32 25
  %99 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state86, align 8, !tbaa !19
  %templat87 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %99, i32 0, i32 0
  %100 = load %struct.stream_template_s*, %struct.stream_template_s** %templat87, align 8, !tbaa !49
  %init88 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %100, i32 0, i32 1
  %101 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %init88, align 8, !tbaa !60
  %102 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %decompress_state89 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %102, i32 0, i32 25
  %103 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state89, align 8, !tbaa !19
  %call90 = call i32 %101(%struct.stream_state_s* %103) #4
  store i32 %call90, i32* %code, align 4, !tbaa !5
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.85, %do.end
  %104 = load i32, i32* %code, align 4, !tbaa !5
  %cmp92 = icmp slt i32 %104, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.91
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.274

if.end.95:                                        ; preds = %if.end.91
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.else.15
  %105 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %raw_block = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %105, i32 0, i32 3
  %106 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_block, align 8, !tbaa !37
  %cmp97 = icmp eq %struct.RAW_BUFFER* %106, null
  br i1 %cmp97, label %if.then.99, label %if.else.228

if.then.99:                                       ; preds = %if.end.96
  %107 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail100 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %107, i32 0, i32 19
  %108 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail100, align 8, !tbaa !58
  %log_blk101 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %108, i32 0, i32 2
  %109 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_blk101, align 8, !tbaa !59
  %cmp102 = icmp ne %struct.LOG_MEMFILE_BLK* %109, null
  br i1 %cmp102, label %if.then.104, label %if.end.110

if.then.104:                                      ; preds = %if.then.99
  %110 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail105 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %110, i32 0, i32 19
  %111 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail105, align 8, !tbaa !58
  %log_blk106 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %111, i32 0, i32 2
  %112 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_blk106, align 8, !tbaa !59
  %raw_block107 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %112, i32 0, i32 3
  store %struct.RAW_BUFFER* null, %struct.RAW_BUFFER** %raw_block107, align 8, !tbaa !37
  %113 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail108 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %113, i32 0, i32 19
  %114 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail108, align 8, !tbaa !58
  %log_blk109 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %114, i32 0, i32 2
  store %struct.LOG_MEMFILE_BLK* null, %struct.LOG_MEMFILE_BLK** %log_blk109, align 8, !tbaa !59
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.104, %if.then.99
  %115 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail111 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %115, i32 0, i32 19
  %116 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail111, align 8, !tbaa !58
  %back112 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %116, i32 0, i32 1
  %117 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %back112, align 8, !tbaa !57
  %fwd113 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %117, i32 0, i32 0
  store %struct.RAW_BUFFER* null, %struct.RAW_BUFFER** %fwd113, align 8, !tbaa !51
  %118 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head114 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %118, i32 0, i32 18
  %119 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head114, align 8, !tbaa !27
  %120 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail115 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %120, i32 0, i32 19
  %121 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail115, align 8, !tbaa !58
  %fwd116 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %121, i32 0, i32 0
  store %struct.RAW_BUFFER* %119, %struct.RAW_BUFFER** %fwd116, align 8, !tbaa !51
  %122 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail117 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %122, i32 0, i32 19
  %123 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail117, align 8, !tbaa !58
  %124 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head118 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %124, i32 0, i32 18
  %125 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head118, align 8, !tbaa !27
  %back119 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %125, i32 0, i32 1
  store %struct.RAW_BUFFER* %123, %struct.RAW_BUFFER** %back119, align 8, !tbaa !57
  %126 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail120 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %126, i32 0, i32 19
  %127 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_tail120, align 8, !tbaa !58
  %back121 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %127, i32 0, i32 1
  %128 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %back121, align 8, !tbaa !57
  %129 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail122 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %129, i32 0, i32 19
  store %struct.RAW_BUFFER* %128, %struct.RAW_BUFFER** %raw_tail122, align 8, !tbaa !58
  %130 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head123 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %130, i32 0, i32 18
  %131 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head123, align 8, !tbaa !27
  %back124 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %131, i32 0, i32 1
  %132 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %back124, align 8, !tbaa !57
  %133 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head125 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %133, i32 0, i32 18
  store %struct.RAW_BUFFER* %132, %struct.RAW_BUFFER** %raw_head125, align 8, !tbaa !27
  %134 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head126 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %134, i32 0, i32 18
  %135 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head126, align 8, !tbaa !27
  %back127 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %135, i32 0, i32 1
  store %struct.RAW_BUFFER* null, %struct.RAW_BUFFER** %back127, align 8, !tbaa !57
  %136 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %137 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head128 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %137, i32 0, i32 18
  %138 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head128, align 8, !tbaa !27
  %log_blk129 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %138, i32 0, i32 2
  store %struct.LOG_MEMFILE_BLK* %136, %struct.LOG_MEMFILE_BLK** %log_blk129, align 8, !tbaa !59
  %139 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %decompress_state130 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %139, i32 0, i32 25
  %140 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state130, align 8, !tbaa !19
  %templat131 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %140, i32 0, i32 0
  %141 = load %struct.stream_template_s*, %struct.stream_template_s** %templat131, align 8, !tbaa !49
  %reinit = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %141, i32 0, i32 7
  %142 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %reinit, align 8, !tbaa !61
  %cmp132 = icmp ne i32 (%struct.stream_state_s*)* %142, null
  br i1 %cmp132, label %if.then.134, label %if.end.140

if.then.134:                                      ; preds = %if.end.110
  %143 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %decompress_state135 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %143, i32 0, i32 25
  %144 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state135, align 8, !tbaa !19
  %templat136 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %144, i32 0, i32 0
  %145 = load %struct.stream_template_s*, %struct.stream_template_s** %templat136, align 8, !tbaa !49
  %reinit137 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %145, i32 0, i32 7
  %146 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %reinit137, align 8, !tbaa !61
  %147 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %decompress_state138 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %147, i32 0, i32 25
  %148 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state138, align 8, !tbaa !19
  %call139 = call i32 %146(%struct.stream_state_s* %148) #4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.134, %if.end.110
  %149 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head141 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %149, i32 0, i32 18
  %150 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head141, align 8, !tbaa !27
  %data142 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %150, i32 0, i32 3
  %arraydecay143 = getelementptr inbounds [16224 x i8], [16224 x i8]* %data142, i32 0, i32 0
  %add.ptr144 = getelementptr inbounds i8, i8* %arraydecay143, i64 -1
  %151 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %151, i32 0, i32 22
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt, i32 0, i32 1
  store i8* %add.ptr144, i8** %ptr, align 8, !tbaa !62
  %152 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt145 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %152, i32 0, i32 22
  %ptr146 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt145, i32 0, i32 1
  %153 = load i8*, i8** %ptr146, align 8, !tbaa !62
  %add.ptr147 = getelementptr inbounds i8, i8* %153, i64 16224
  %154 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt148 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %154, i32 0, i32 22
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt148, i32 0, i32 2
  store i8* %add.ptr147, i8** %limit, align 8, !tbaa !63
  %155 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %phys_pdata = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %155, i32 0, i32 2
  %156 = load i8*, i8** %phys_pdata, align 8, !tbaa !36
  %add.ptr149 = getelementptr inbounds i8, i8* %156, i64 -1
  %157 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %157, i32 0, i32 21
  %ptr150 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %rd, i32 0, i32 0
  store i8* %add.ptr149, i8** %ptr150, align 8, !tbaa !64
  %158 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %phys_blk151 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %158, i32 0, i32 1
  %159 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk151, align 8, !tbaa !30
  %data_limit152 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %159, i32 0, i32 1
  %160 = load i8*, i8** %data_limit152, align 8, !tbaa !32
  %161 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd153 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %161, i32 0, i32 21
  %limit154 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %rd153, i32 0, i32 1
  store i8* %160, i8** %limit154, align 8, !tbaa !65
  %162 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %decompress_state155 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %162, i32 0, i32 25
  %163 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state155, align 8, !tbaa !19
  %templat156 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %163, i32 0, i32 0
  %164 = load %struct.stream_template_s*, %struct.stream_template_s** %templat156, align 8, !tbaa !49
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %164, i32 0, i32 2
  %165 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !66
  %166 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %decompress_state157 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %166, i32 0, i32 25
  %167 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state157, align 8, !tbaa !19
  %168 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd158 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %168, i32 0, i32 21
  %169 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt159 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %169, i32 0, i32 22
  %call160 = call i32 %165(%struct.stream_state_s* %167, %struct.stream_cursor_read_s* %rd158, %struct.stream_cursor_write_s* %wt159, i32 1) #4
  store i32 %call160, i32* %status, align 4, !tbaa !5
  %170 = load i32, i32* %status, align 4, !tbaa !5
  %cmp161 = icmp eq i32 %170, 0
  br i1 %cmp161, label %if.then.163, label %if.end.225

if.then.163:                                      ; preds = %if.end.140
  %171 = bitcast i32* %back_up to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #1
  store i32 0, i32* %back_up, align 4, !tbaa !5
  %172 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd164 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %172, i32 0, i32 21
  %ptr165 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %rd164, i32 0, i32 0
  %173 = load i8*, i8** %ptr165, align 8, !tbaa !64
  %174 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd166 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %174, i32 0, i32 21
  %limit167 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %rd166, i32 0, i32 1
  %175 = load i8*, i8** %limit167, align 8, !tbaa !65
  %cmp168 = icmp ne i8* %173, %175
  br i1 %cmp168, label %if.then.170, label %if.end.194

if.then.170:                                      ; preds = %if.then.163
  %176 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd171 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %176, i32 0, i32 21
  %limit172 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %rd171, i32 0, i32 1
  %177 = load i8*, i8** %limit172, align 8, !tbaa !65
  %178 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd173 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %178, i32 0, i32 21
  %ptr174 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %rd173, i32 0, i32 0
  %179 = load i8*, i8** %ptr174, align 8, !tbaa !64
  %sub.ptr.lhs.cast = ptrtoint i8* %177 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %179 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv175 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv175, i32* %back_up, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.191, %if.then.170
  %180 = load i32, i32* %i, align 4, !tbaa !5
  %181 = load i32, i32* %back_up, align 4, !tbaa !5
  %cmp177 = icmp slt i32 %180, %181
  br i1 %cmp177, label %for.body.179, label %for.end.193

for.body.179:                                     ; preds = %for.cond.176
  %182 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd180 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %182, i32 0, i32 21
  %ptr181 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %rd180, i32 0, i32 0
  %183 = load i8*, i8** %ptr181, align 8, !tbaa !64
  %incdec.ptr = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr, i8** %ptr181, align 8, !tbaa !64
  %184 = load i8, i8* %incdec.ptr, align 1, !tbaa !7
  %185 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %phys_blk182 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %185, i32 0, i32 1
  %186 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk182, align 8, !tbaa !30
  %link183 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %186, i32 0, i32 0
  %187 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %link183, align 8, !tbaa !53
  %data184 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %187, i32 0, i32 3
  %arraydecay185 = getelementptr inbounds [16224 x i8], [16224 x i8]* %data184, i32 0, i32 0
  %188 = load i32, i32* %back_up, align 4, !tbaa !5
  %idx.ext186 = sext i32 %188 to i64
  %idx.neg187 = sub i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i8, i8* %arraydecay185, i64 %idx.neg187
  %189 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext189 = sext i32 %189 to i64
  %add.ptr190 = getelementptr inbounds i8, i8* %add.ptr188, i64 %idx.ext189
  store i8 %184, i8* %add.ptr190, align 1, !tbaa !7
  br label %for.inc.191

for.inc.191:                                      ; preds = %for.body.179
  %190 = load i32, i32* %i, align 4, !tbaa !5
  %inc192 = add nsw i32 %190, 1
  store i32 %inc192, i32* %i, align 4, !tbaa !5
  br label %for.cond.176

for.end.193:                                      ; preds = %for.cond.176
  br label %if.end.194

if.end.194:                                       ; preds = %for.end.193, %if.then.163
  %191 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %phys_blk195 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %191, i32 0, i32 1
  %192 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk195, align 8, !tbaa !30
  %link196 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %192, i32 0, i32 0
  %193 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %link196, align 8, !tbaa !53
  %data197 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %193, i32 0, i32 3
  %arraydecay198 = getelementptr inbounds [16224 x i8], [16224 x i8]* %data197, i32 0, i32 0
  %194 = load i32, i32* %back_up, align 4, !tbaa !5
  %idx.ext199 = sext i32 %194 to i64
  %idx.neg200 = sub i64 0, %idx.ext199
  %add.ptr201 = getelementptr inbounds i8, i8* %arraydecay198, i64 %idx.neg200
  %add.ptr202 = getelementptr inbounds i8, i8* %add.ptr201, i64 -1
  %195 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd203 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %195, i32 0, i32 21
  %ptr204 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %rd203, i32 0, i32 0
  store i8* %add.ptr202, i8** %ptr204, align 8, !tbaa !64
  %196 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %phys_blk205 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %196, i32 0, i32 1
  %197 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk205, align 8, !tbaa !30
  %link206 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %197, i32 0, i32 0
  %198 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %link206, align 8, !tbaa !53
  %data_limit207 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %198, i32 0, i32 1
  %199 = load i8*, i8** %data_limit207, align 8, !tbaa !32
  %200 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd208 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %200, i32 0, i32 21
  %limit209 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %rd208, i32 0, i32 1
  store i8* %199, i8** %limit209, align 8, !tbaa !65
  %201 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %decompress_state210 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %201, i32 0, i32 25
  %202 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state210, align 8, !tbaa !19
  %templat211 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %202, i32 0, i32 0
  %203 = load %struct.stream_template_s*, %struct.stream_template_s** %templat211, align 8, !tbaa !49
  %process212 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %203, i32 0, i32 2
  %204 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process212, align 8, !tbaa !66
  %205 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %decompress_state213 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %205, i32 0, i32 25
  %206 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state213, align 8, !tbaa !19
  %207 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd214 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %207, i32 0, i32 21
  %208 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt215 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %208, i32 0, i32 22
  %call216 = call i32 %204(%struct.stream_state_s* %206, %struct.stream_cursor_read_s* %rd214, %struct.stream_cursor_write_s* %wt215, i32 1) #4
  store i32 %call216, i32* %status, align 4, !tbaa !5
  %209 = load i32, i32* %status, align 4, !tbaa !5
  %cmp217 = icmp eq i32 %209, 0
  br i1 %cmp217, label %if.then.219, label %if.end.224

if.then.219:                                      ; preds = %if.end.194
  %210 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %210, i32 0, i32 0
  %211 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %call220 = call i8* @gs_program_name() #4
  %call221 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %211, i8* %call220, i64 %call221) #4
  %212 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %memory222 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %212, i32 0, i32 0
  %213 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory222, align 8, !tbaa !16
  %call223 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %213, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0)) #4
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.224:                                       ; preds = %if.end.194
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.224, %if.then.219
  %214 = bitcast i32* %back_up to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.274 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.225

if.end.225:                                       ; preds = %cleanup.cont, %if.end.140
  %215 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head226 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %215, i32 0, i32 18
  %216 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head226, align 8, !tbaa !27
  %217 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %raw_block227 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %217, i32 0, i32 3
  store %struct.RAW_BUFFER* %216, %struct.RAW_BUFFER** %raw_block227, align 8, !tbaa !37
  br label %if.end.265

if.else.228:                                      ; preds = %if.end.96
  %218 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %raw_block229 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %218, i32 0, i32 3
  %219 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_block229, align 8, !tbaa !37
  %220 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head230 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %220, i32 0, i32 18
  %221 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head230, align 8, !tbaa !27
  %cmp231 = icmp ne %struct.RAW_BUFFER* %219, %221
  br i1 %cmp231, label %if.then.233, label %if.end.264

if.then.233:                                      ; preds = %if.else.228
  %222 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %raw_block234 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %222, i32 0, i32 3
  %223 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_block234, align 8, !tbaa !37
  %fwd235 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %223, i32 0, i32 0
  %224 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %fwd235, align 8, !tbaa !51
  %225 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %raw_block236 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %225, i32 0, i32 3
  %226 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_block236, align 8, !tbaa !37
  %back237 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %226, i32 0, i32 1
  %227 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %back237, align 8, !tbaa !57
  %fwd238 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %227, i32 0, i32 0
  store %struct.RAW_BUFFER* %224, %struct.RAW_BUFFER** %fwd238, align 8, !tbaa !51
  %228 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %raw_block239 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %228, i32 0, i32 3
  %229 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_block239, align 8, !tbaa !37
  %fwd240 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %229, i32 0, i32 0
  %230 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %fwd240, align 8, !tbaa !51
  %cmp241 = icmp ne %struct.RAW_BUFFER* %230, null
  br i1 %cmp241, label %if.then.243, label %if.else.249

if.then.243:                                      ; preds = %if.then.233
  %231 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %raw_block244 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %231, i32 0, i32 3
  %232 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_block244, align 8, !tbaa !37
  %back245 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %232, i32 0, i32 1
  %233 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %back245, align 8, !tbaa !57
  %234 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %raw_block246 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %234, i32 0, i32 3
  %235 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_block246, align 8, !tbaa !37
  %fwd247 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %235, i32 0, i32 0
  %236 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %fwd247, align 8, !tbaa !51
  %back248 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %236, i32 0, i32 1
  store %struct.RAW_BUFFER* %233, %struct.RAW_BUFFER** %back248, align 8, !tbaa !57
  br label %if.end.253

if.else.249:                                      ; preds = %if.then.233
  %237 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %raw_block250 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %237, i32 0, i32 3
  %238 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_block250, align 8, !tbaa !37
  %back251 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %238, i32 0, i32 1
  %239 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %back251, align 8, !tbaa !57
  %240 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_tail252 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %240, i32 0, i32 19
  store %struct.RAW_BUFFER* %239, %struct.RAW_BUFFER** %raw_tail252, align 8, !tbaa !58
  br label %if.end.253

if.end.253:                                       ; preds = %if.else.249, %if.then.243
  %241 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %raw_block254 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %241, i32 0, i32 3
  %242 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_block254, align 8, !tbaa !37
  %243 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head255 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %243, i32 0, i32 18
  %244 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head255, align 8, !tbaa !27
  %back256 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %244, i32 0, i32 1
  store %struct.RAW_BUFFER* %242, %struct.RAW_BUFFER** %back256, align 8, !tbaa !57
  %245 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head257 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %245, i32 0, i32 18
  %246 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head257, align 8, !tbaa !27
  %247 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %raw_block258 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %247, i32 0, i32 3
  %248 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_block258, align 8, !tbaa !37
  %fwd259 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %248, i32 0, i32 0
  store %struct.RAW_BUFFER* %246, %struct.RAW_BUFFER** %fwd259, align 8, !tbaa !51
  %249 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %raw_block260 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %249, i32 0, i32 3
  %250 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_block260, align 8, !tbaa !37
  %251 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head261 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %251, i32 0, i32 18
  store %struct.RAW_BUFFER* %250, %struct.RAW_BUFFER** %raw_head261, align 8, !tbaa !27
  %252 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head262 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %252, i32 0, i32 18
  %253 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head262, align 8, !tbaa !27
  %back263 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %253, i32 0, i32 1
  store %struct.RAW_BUFFER* null, %struct.RAW_BUFFER** %back263, align 8, !tbaa !57
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.253, %if.else.228
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.end.225
  %254 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %raw_block266 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %254, i32 0, i32 3
  %255 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_block266, align 8, !tbaa !37
  %data267 = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %255, i32 0, i32 3
  %arraydecay268 = getelementptr inbounds [16224 x i8], [16224 x i8]* %data267, i32 0, i32 0
  %256 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata269 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %256, i32 0, i32 14
  store i8* %arraydecay268, i8** %pdata269, align 8, !tbaa !55
  %257 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata270 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %257, i32 0, i32 14
  %258 = load i8*, i8** %pdata270, align 8, !tbaa !55
  %add.ptr271 = getelementptr inbounds i8, i8* %258, i64 16224
  %259 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata_end272 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %259, i32 0, i32 15
  store i8* %add.ptr271, i8** %pdata_end272, align 8, !tbaa !54
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.265, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.274

cleanup.274:                                      ; preds = %if.end.273, %cleanup, %if.then.94, %if.then.54
  %260 = bitcast %struct.LOG_MEMFILE_BLK** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  %261 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i32* %num_raw_buffers to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %264 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #1
  %265 = load i32, i32* %retval
  ret i32 %265
}

; Function Attrs: nounwind uwtable
define internal i32 @memfile_init_empty(%struct.MEMFILE_s* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.MEMFILE_s*, align 8
  %pphys = alloca %struct.PHYS_MEMFILE_BLK*, align 8
  %plog = alloca %struct.LOG_MEMFILE_BLK*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.MEMFILE_s* %f, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %0 = bitcast %struct.PHYS_MEMFILE_BLK** %pphys to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.LOG_MEMFILE_BLK** %plog to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %phys_curr = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %2, i32 0, i32 17
  store %struct.PHYS_MEMFILE_BLK* null, %struct.PHYS_MEMFILE_BLK** %phys_curr, align 8, !tbaa !67
  %3 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_head = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %3, i32 0, i32 10
  store %struct.LOG_MEMFILE_BLK* null, %struct.LOG_MEMFILE_BLK** %log_head, align 8, !tbaa !29
  %4 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_curr_blk = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %4, i32 0, i32 11
  store %struct.LOG_MEMFILE_BLK* null, %struct.LOG_MEMFILE_BLK** %log_curr_blk, align 8, !tbaa !44
  %5 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_curr_pos = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %5, i32 0, i32 13
  store i64 0, i64* %log_curr_pos, align 8, !tbaa !26
  %6 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_length = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %6, i32 0, i32 12
  store i64 0, i64* %log_length, align 8, !tbaa !34
  %7 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %7, i32 0, i32 18
  store %struct.RAW_BUFFER* null, %struct.RAW_BUFFER** %raw_head, align 8, !tbaa !27
  %8 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compressor_initialized = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %8, i32 0, i32 23
  store i32 0, i32* %compressor_initialized, align 4, !tbaa !48
  %9 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %total_space = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %9, i32 0, i32 16
  store i64 0, i64* %total_space, align 8, !tbaa !45
  %10 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %10, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory, align 8, !tbaa !17
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %12 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !35
  %13 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory1 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %13, i32 0, i32 1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory1, align 8, !tbaa !17
  %call = call i8* %12(%struct.gs_memory_s* %14, i32 16248, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0)) #4
  %15 = bitcast i8* %call to %struct.PHYS_MEMFILE_BLK*
  store %struct.PHYS_MEMFILE_BLK* %15, %struct.PHYS_MEMFILE_BLK** %pphys, align 8, !tbaa !1
  %16 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %pphys, align 8, !tbaa !1
  %tobool = icmp ne %struct.PHYS_MEMFILE_BLK* %16, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %17, i32 0, i32 0
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %call2 = call i8* @gs_program_name() #4
  %call3 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %18, i8* %call2, i64 %call3) #4
  %19 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %19, i32 0, i32 0
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !16
  %call5 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %total_space6 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %21, i32 0, i32 16
  %22 = load i64, i64* %total_space6, align 8, !tbaa !45
  %add = add i64 %22, 16248
  store i64 %add, i64* %total_space6, align 8, !tbaa !45
  %23 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %pphys, align 8, !tbaa !1
  %data_limit = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %23, i32 0, i32 1
  store i8* null, i8** %data_limit, align 8, !tbaa !32
  %24 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory7 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %24, i32 0, i32 1
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory7, align 8, !tbaa !17
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_bytes9 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 7
  %26 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes9, align 8, !tbaa !35
  %27 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory10 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %27, i32 0, i32 1
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory10, align 8, !tbaa !17
  %call11 = call i8* %26(%struct.gs_memory_s* %28, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0)) #4
  %29 = bitcast i8* %call11 to %struct.LOG_MEMFILE_BLK*
  store %struct.LOG_MEMFILE_BLK* %29, %struct.LOG_MEMFILE_BLK** %plog, align 8, !tbaa !1
  %30 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %plog, align 8, !tbaa !1
  %cmp = icmp eq %struct.LOG_MEMFILE_BLK* %30, null
  br i1 %cmp, label %if.then.12, label %if.end.22

if.then.12:                                       ; preds = %if.end
  %31 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory13 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %31, i32 0, i32 1
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory13, align 8, !tbaa !17
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !47
  %34 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory15 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %34, i32 0, i32 1
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory15, align 8, !tbaa !17
  %36 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %pphys, align 8, !tbaa !1
  %37 = bitcast %struct.PHYS_MEMFILE_BLK* %36 to i8*
  call void %33(%struct.gs_memory_s* %35, i8* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0)) #4
  %38 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %total_space16 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %38, i32 0, i32 16
  %39 = load i64, i64* %total_space16, align 8, !tbaa !45
  %sub = sub i64 %39, 16248
  store i64 %sub, i64* %total_space16, align 8, !tbaa !45
  %40 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %40, i32 0, i32 0
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !16
  %call18 = call i8* @gs_program_name() #4
  %call19 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %41, i8* %call18, i64 %call19) #4
  %42 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %42, i32 0, i32 0
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !16
  %call21 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end
  %44 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %total_space23 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %44, i32 0, i32 16
  %45 = load i64, i64* %total_space23, align 8, !tbaa !45
  %add24 = add i64 %45, 32
  store i64 %add24, i64* %total_space23, align 8, !tbaa !45
  %46 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %plog, align 8, !tbaa !1
  %47 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_curr_blk25 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %47, i32 0, i32 11
  store %struct.LOG_MEMFILE_BLK* %46, %struct.LOG_MEMFILE_BLK** %log_curr_blk25, align 8, !tbaa !44
  %48 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_head26 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %48, i32 0, i32 10
  store %struct.LOG_MEMFILE_BLK* %46, %struct.LOG_MEMFILE_BLK** %log_head26, align 8, !tbaa !29
  %49 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_curr_blk27 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %49, i32 0, i32 11
  %50 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_curr_blk27, align 8, !tbaa !44
  %link = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %50, i32 0, i32 0
  store %struct.LOG_MEMFILE_BLK* null, %struct.LOG_MEMFILE_BLK** %link, align 8, !tbaa !38
  %51 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %pphys, align 8, !tbaa !1
  %52 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_curr_blk28 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %52, i32 0, i32 11
  %53 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_curr_blk28, align 8, !tbaa !44
  %phys_blk = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %53, i32 0, i32 1
  store %struct.PHYS_MEMFILE_BLK* %51, %struct.PHYS_MEMFILE_BLK** %phys_blk, align 8, !tbaa !30
  %54 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_curr_blk29 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %54, i32 0, i32 11
  %55 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_curr_blk29, align 8, !tbaa !44
  %phys_pdata = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %55, i32 0, i32 2
  store i8* null, i8** %phys_pdata, align 8, !tbaa !36
  %56 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_curr_blk30 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %56, i32 0, i32 11
  %57 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_curr_blk30, align 8, !tbaa !44
  %raw_block = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %57, i32 0, i32 3
  store %struct.RAW_BUFFER* null, %struct.RAW_BUFFER** %raw_block, align 8, !tbaa !37
  %58 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %pphys, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %58, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16224 x i8], [16224 x i8]* %data, i32 0, i32 0
  %59 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %59, i32 0, i32 14
  store i8* %arraydecay, i8** %pdata, align 8, !tbaa !55
  %60 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata31 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %60, i32 0, i32 14
  %61 = load i8*, i8** %pdata31, align 8, !tbaa !55
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 16224
  %62 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata_end = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %62, i32 0, i32 15
  store i8* %add.ptr, i8** %pdata_end, align 8, !tbaa !54
  %63 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %63, i32 0, i32 20
  store i32 0, i32* %error_code, align 4, !tbaa !28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.12, %if.then
  %64 = bitcast %struct.LOG_MEMFILE_BLK** %plog to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.PHYS_MEMFILE_BLK** %pphys to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare %struct.stream_template_s* @clist_compressor_template() #2

declare void @clist_compressor_init(%struct.stream_state_s*) #2

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i8* @allocateWithReserve(%struct.MEMFILE_s* %f, i32 %sizeofBlock, i32* %return_code, i8* %allocName, i8* %errorMessage) #0 {
entry:
  %f.addr = alloca %struct.MEMFILE_s*, align 8
  %sizeofBlock.addr = alloca i32, align 4
  %return_code.addr = alloca i32*, align 8
  %allocName.addr = alloca i8*, align 8
  %errorMessage.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %block = alloca i8*, align 8
  store %struct.MEMFILE_s* %f, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  store i32 %sizeofBlock, i32* %sizeofBlock.addr, align 4, !tbaa !5
  store i32* %return_code, i32** %return_code.addr, align 8, !tbaa !1
  store i8* %allocName, i8** %allocName.addr, align 8, !tbaa !1
  store i8* %errorMessage, i8** %errorMessage.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast i8** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %2, i32 0, i32 1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory, align 8, !tbaa !17
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %4 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !35
  %5 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory1 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %5, i32 0, i32 1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory1, align 8, !tbaa !17
  %7 = load i32, i32* %sizeofBlock.addr, align 4, !tbaa !5
  %8 = load i8*, i8** %allocName.addr, align 8, !tbaa !1
  %call = call i8* %4(%struct.gs_memory_s* %6, i32 %7, i8* %8) #4
  store i8* %call, i8** %block, align 8, !tbaa !1
  %9 = load i8*, i8** %block, align 8, !tbaa !1
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %sizeofBlock.addr, align 4, !tbaa !5
  %conv = sext i32 %10 to i64
  %cmp2 = icmp eq i64 %conv, 32
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %11 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reserveLogBlockCount = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %11, i32 0, i32 9
  %12 = load i32, i32* %reserveLogBlockCount, align 4, !tbaa !23
  %cmp5 = icmp sgt i32 %12, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.4
  %13 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reserveLogBlockChain = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %13, i32 0, i32 8
  %14 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %reserveLogBlockChain, align 8, !tbaa !22
  %15 = bitcast %struct.LOG_MEMFILE_BLK* %14 to i8*
  store i8* %15, i8** %block, align 8, !tbaa !1
  %16 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reserveLogBlockChain8 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %16, i32 0, i32 8
  %17 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %reserveLogBlockChain8, align 8, !tbaa !22
  %link = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %17, i32 0, i32 0
  %18 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %link, align 8, !tbaa !38
  %19 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reserveLogBlockChain9 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %19, i32 0, i32 8
  store %struct.LOG_MEMFILE_BLK* %18, %struct.LOG_MEMFILE_BLK** %reserveLogBlockChain9, align 8, !tbaa !22
  %20 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reserveLogBlockCount10 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %20, i32 0, i32 9
  %21 = load i32, i32* %reserveLogBlockCount10, align 4, !tbaa !23
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %reserveLogBlockCount10, align 4, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.4
  br label %if.end.28

if.else:                                          ; preds = %if.then
  %22 = load i32, i32* %sizeofBlock.addr, align 4, !tbaa !5
  %conv11 = sext i32 %22 to i64
  %cmp12 = icmp eq i64 %conv11, 16248
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %23 = load i32, i32* %sizeofBlock.addr, align 4, !tbaa !5
  %conv14 = sext i32 %23 to i64
  %cmp15 = icmp eq i64 %conv14, 16248
  br i1 %cmp15, label %if.then.17, label %if.end.27

if.then.17:                                       ; preds = %lor.lhs.false, %if.else
  %24 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reservePhysBlockCount = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %24, i32 0, i32 7
  %25 = load i32, i32* %reservePhysBlockCount, align 4, !tbaa !21
  %cmp18 = icmp sgt i32 %25, 0
  br i1 %cmp18, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.then.17
  %26 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reservePhysBlockChain = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %26, i32 0, i32 6
  %27 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain, align 8, !tbaa !20
  %28 = bitcast %struct.PHYS_MEMFILE_BLK* %27 to i8*
  store i8* %28, i8** %block, align 8, !tbaa !1
  %29 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reservePhysBlockChain21 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %29, i32 0, i32 6
  %30 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain21, align 8, !tbaa !20
  %link22 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %30, i32 0, i32 0
  %31 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %link22, align 8, !tbaa !53
  %32 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reservePhysBlockChain23 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %32, i32 0, i32 6
  store %struct.PHYS_MEMFILE_BLK* %31, %struct.PHYS_MEMFILE_BLK** %reservePhysBlockChain23, align 8, !tbaa !20
  %33 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %reservePhysBlockCount24 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %33, i32 0, i32 7
  %34 = load i32, i32* %reservePhysBlockCount24, align 4, !tbaa !21
  %dec25 = add nsw i32 %34, -1
  store i32 %dec25, i32* %reservePhysBlockCount24, align 4, !tbaa !21
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.20, %if.then.17
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %lor.lhs.false
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  %35 = load i8*, i8** %block, align 8, !tbaa !1
  %cmp29 = icmp ne i8* %35, null
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %entry
  %36 = load i8*, i8** %block, align 8, !tbaa !1
  %cmp34 = icmp ne i8* %36, null
  br i1 %cmp34, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.end.33
  %37 = load i32, i32* %sizeofBlock.addr, align 4, !tbaa !5
  %conv37 = sext i32 %37 to i64
  %38 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %total_space = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %38, i32 0, i32 16
  %39 = load i64, i64* %total_space, align 8, !tbaa !45
  %add = add nsw i64 %39, %conv37
  store i64 %add, i64* %total_space, align 8, !tbaa !45
  br label %if.end.39

if.else.38:                                       ; preds = %if.end.33
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.36
  %40 = load i32, i32* %code, align 4, !tbaa !5
  %41 = load i32*, i32** %return_code.addr, align 8, !tbaa !1
  store i32 %40, i32* %41, align 4, !tbaa !5
  %42 = load i8*, i8** %block, align 8, !tbaa !1
  %43 = bitcast i8** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  ret i8* %42
}

; Function Attrs: nounwind uwtable
define internal void @memfile_free_mem(%struct.MEMFILE_s* %f) #0 {
entry:
  %f.addr = alloca %struct.MEMFILE_s*, align 8
  %bp = alloca %struct.LOG_MEMFILE_BLK*, align 8
  %tmpbp = alloca %struct.LOG_MEMFILE_BLK*, align 8
  %pphys = alloca %struct.PHYS_MEMFILE_BLK*, align 8
  %tmpphys = alloca %struct.PHYS_MEMFILE_BLK*, align 8
  %tmpraw = alloca %struct.RAW_BUFFER*, align 8
  store %struct.MEMFILE_s* %f, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %0 = bitcast %struct.LOG_MEMFILE_BLK** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.LOG_MEMFILE_BLK** %tmpbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_head = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %2, i32 0, i32 10
  %3 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_head, align 8, !tbaa !29
  store %struct.LOG_MEMFILE_BLK* %3, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %4 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %cmp = icmp ne %struct.LOG_MEMFILE_BLK* %4, null
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.PHYS_MEMFILE_BLK** %pphys to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %phys_blk = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %6, i32 0, i32 1
  %7 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk, align 8, !tbaa !30
  store %struct.PHYS_MEMFILE_BLK* %7, %struct.PHYS_MEMFILE_BLK** %pphys, align 8, !tbaa !1
  %8 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  store %struct.LOG_MEMFILE_BLK* %8, %struct.LOG_MEMFILE_BLK** %tmpbp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %tmpbp, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.LOG_MEMFILE_BLK* %9, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %tmpbp, align 8, !tbaa !1
  %phys_blk2 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %10, i32 0, i32 1
  %11 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk2, align 8, !tbaa !30
  %data_limit = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %11, i32 0, i32 1
  %12 = load i8*, i8** %data_limit, align 8, !tbaa !32
  %cmp3 = icmp ne i8* %12, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %13 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %tmpbp, align 8, !tbaa !1
  %phys_blk5 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %13, i32 0, i32 1
  store %struct.PHYS_MEMFILE_BLK* null, %struct.PHYS_MEMFILE_BLK** %phys_blk5, align 8, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %tmpbp, align 8, !tbaa !1
  %link = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %14, i32 0, i32 0
  %15 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %link, align 8, !tbaa !38
  store %struct.LOG_MEMFILE_BLK* %15, %struct.LOG_MEMFILE_BLK** %tmpbp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %pphys, align 8, !tbaa !1
  %data_limit6 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %16, i32 0, i32 1
  %17 = load i8*, i8** %data_limit6, align 8, !tbaa !32
  %cmp7 = icmp ne i8* %17, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %for.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.8
  %18 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %pphys, align 8, !tbaa !1
  %cmp9 = icmp ne %struct.PHYS_MEMFILE_BLK* %18, null
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = bitcast %struct.PHYS_MEMFILE_BLK** %tmpphys to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %pphys, align 8, !tbaa !1
  %link10 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %20, i32 0, i32 0
  %21 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %link10, align 8, !tbaa !53
  store %struct.PHYS_MEMFILE_BLK* %21, %struct.PHYS_MEMFILE_BLK** %tmpphys, align 8, !tbaa !1
  %22 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %22, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory, align 8, !tbaa !17
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !47
  %25 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory11 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %25, i32 0, i32 1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory11, align 8, !tbaa !17
  %27 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %pphys, align 8, !tbaa !1
  %28 = bitcast %struct.PHYS_MEMFILE_BLK* %27 to i8*
  call void %24(%struct.gs_memory_s* %26, i8* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0)) #4
  %29 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %total_space = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %29, i32 0, i32 16
  %30 = load i64, i64* %total_space, align 8, !tbaa !45
  %sub = sub i64 %30, 16248
  store i64 %sub, i64* %total_space, align 8, !tbaa !45
  %31 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %tmpphys, align 8, !tbaa !1
  store %struct.PHYS_MEMFILE_BLK* %31, %struct.PHYS_MEMFILE_BLK** %pphys, align 8, !tbaa !1
  %32 = bitcast %struct.PHYS_MEMFILE_BLK** %tmpphys to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.12

if.end.12:                                        ; preds = %while.end, %for.end
  %33 = bitcast %struct.PHYS_MEMFILE_BLK** %pphys to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  br label %while.cond.14

while.cond.14:                                    ; preds = %if.end.27, %if.end.13
  %34 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %cmp15 = icmp ne %struct.LOG_MEMFILE_BLK* %34, null
  br i1 %cmp15, label %while.body.16, label %while.end.35

while.body.16:                                    ; preds = %while.cond.14
  %35 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %phys_blk17 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %35, i32 0, i32 1
  %36 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk17, align 8, !tbaa !30
  %cmp18 = icmp ne %struct.PHYS_MEMFILE_BLK* %36, null
  br i1 %cmp18, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %while.body.16
  %37 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory20 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %37, i32 0, i32 1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory20, align 8, !tbaa !17
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %free_object22 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 2
  %39 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object22, align 8, !tbaa !47
  %40 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory23 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %40, i32 0, i32 1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory23, align 8, !tbaa !17
  %42 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %phys_blk24 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %42, i32 0, i32 1
  %43 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk24, align 8, !tbaa !30
  %44 = bitcast %struct.PHYS_MEMFILE_BLK* %43 to i8*
  call void %39(%struct.gs_memory_s* %41, i8* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0)) #4
  %45 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %total_space25 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %45, i32 0, i32 16
  %46 = load i64, i64* %total_space25, align 8, !tbaa !45
  %sub26 = sub i64 %46, 16248
  store i64 %sub26, i64* %total_space25, align 8, !tbaa !45
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.19, %while.body.16
  %47 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %link28 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %47, i32 0, i32 0
  %48 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %link28, align 8, !tbaa !38
  store %struct.LOG_MEMFILE_BLK* %48, %struct.LOG_MEMFILE_BLK** %tmpbp, align 8, !tbaa !1
  %49 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory29 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %49, i32 0, i32 1
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory29, align 8, !tbaa !17
  %procs30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 1
  %free_object31 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs30, i32 0, i32 2
  %51 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object31, align 8, !tbaa !47
  %52 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory32 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %52, i32 0, i32 1
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory32, align 8, !tbaa !17
  %54 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %55 = bitcast %struct.LOG_MEMFILE_BLK* %54 to i8*
  call void %51(%struct.gs_memory_s* %53, i8* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0)) #4
  %56 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %total_space33 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %56, i32 0, i32 16
  %57 = load i64, i64* %total_space33, align 8, !tbaa !45
  %sub34 = sub i64 %57, 32
  store i64 %sub34, i64* %total_space33, align 8, !tbaa !45
  %58 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %tmpbp, align 8, !tbaa !1
  store %struct.LOG_MEMFILE_BLK* %58, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  br label %while.cond.14

while.end.35:                                     ; preds = %while.cond.14
  %59 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_head36 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %59, i32 0, i32 10
  store %struct.LOG_MEMFILE_BLK* null, %struct.LOG_MEMFILE_BLK** %log_head36, align 8, !tbaa !29
  %60 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compressor_initialized = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %60, i32 0, i32 23
  %61 = load i32, i32* %compressor_initialized, align 4, !tbaa !48
  %tobool = icmp ne i32 %61, 0
  br i1 %tobool, label %if.then.37, label %if.end.55

if.then.37:                                       ; preds = %while.end.35
  %62 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %decompress_state = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %62, i32 0, i32 25
  %63 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state, align 8, !tbaa !19
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %63, i32 0, i32 0
  %64 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !49
  %release = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %64, i32 0, i32 5
  %65 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release, align 8, !tbaa !50
  %cmp38 = icmp ne void (%struct.stream_state_s*)* %65, null
  br i1 %cmp38, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %if.then.37
  %66 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %decompress_state40 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %66, i32 0, i32 25
  %67 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state40, align 8, !tbaa !19
  %templat41 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %67, i32 0, i32 0
  %68 = load %struct.stream_template_s*, %struct.stream_template_s** %templat41, align 8, !tbaa !49
  %release42 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %68, i32 0, i32 5
  %69 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release42, align 8, !tbaa !50
  %70 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %decompress_state43 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %70, i32 0, i32 25
  %71 = load %struct.stream_state_s*, %struct.stream_state_s** %decompress_state43, align 8, !tbaa !19
  call void %69(%struct.stream_state_s* %71) #4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.39, %if.then.37
  %72 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compress_state = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %72, i32 0, i32 24
  %73 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state, align 8, !tbaa !18
  %templat45 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %73, i32 0, i32 0
  %74 = load %struct.stream_template_s*, %struct.stream_template_s** %templat45, align 8, !tbaa !49
  %release46 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %74, i32 0, i32 5
  %75 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release46, align 8, !tbaa !50
  %cmp47 = icmp ne void (%struct.stream_state_s*)* %75, null
  br i1 %cmp47, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %if.end.44
  %76 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compress_state49 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %76, i32 0, i32 24
  %77 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state49, align 8, !tbaa !18
  %templat50 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %77, i32 0, i32 0
  %78 = load %struct.stream_template_s*, %struct.stream_template_s** %templat50, align 8, !tbaa !49
  %release51 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %78, i32 0, i32 5
  %79 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release51, align 8, !tbaa !50
  %80 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compress_state52 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %80, i32 0, i32 24
  %81 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state52, align 8, !tbaa !18
  call void %79(%struct.stream_state_s* %81) #4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %if.end.44
  %82 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compressor_initialized54 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %82, i32 0, i32 23
  store i32 0, i32* %compressor_initialized54, align 4, !tbaa !48
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.53, %while.end.35
  br label %while.cond.56

while.cond.56:                                    ; preds = %while.body.58, %if.end.55
  %83 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %83, i32 0, i32 18
  %84 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head, align 8, !tbaa !27
  %cmp57 = icmp ne %struct.RAW_BUFFER* %84, null
  br i1 %cmp57, label %while.body.58, label %while.end.68

while.body.58:                                    ; preds = %while.cond.56
  %85 = bitcast %struct.RAW_BUFFER** %tmpraw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  %86 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head59 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %86, i32 0, i32 18
  %87 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head59, align 8, !tbaa !27
  %fwd = getelementptr inbounds %struct.RAW_BUFFER, %struct.RAW_BUFFER* %87, i32 0, i32 0
  %88 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %fwd, align 8, !tbaa !51
  store %struct.RAW_BUFFER* %88, %struct.RAW_BUFFER** %tmpraw, align 8, !tbaa !1
  %89 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory60 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %89, i32 0, i32 1
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory60, align 8, !tbaa !17
  %procs61 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %90, i32 0, i32 1
  %free_object62 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs61, i32 0, i32 2
  %91 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object62, align 8, !tbaa !47
  %92 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory63 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %92, i32 0, i32 1
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory63, align 8, !tbaa !17
  %94 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head64 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %94, i32 0, i32 18
  %95 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %raw_head64, align 8, !tbaa !27
  %96 = bitcast %struct.RAW_BUFFER* %95 to i8*
  call void %91(%struct.gs_memory_s* %93, i8* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0)) #4
  %97 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %total_space65 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %97, i32 0, i32 16
  %98 = load i64, i64* %total_space65, align 8, !tbaa !45
  %sub66 = sub i64 %98, 16248
  store i64 %sub66, i64* %total_space65, align 8, !tbaa !45
  %99 = load %struct.RAW_BUFFER*, %struct.RAW_BUFFER** %tmpraw, align 8, !tbaa !1
  %100 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %raw_head67 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %100, i32 0, i32 18
  store %struct.RAW_BUFFER* %99, %struct.RAW_BUFFER** %raw_head67, align 8, !tbaa !27
  %101 = bitcast %struct.RAW_BUFFER** %tmpraw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  br label %while.cond.56

while.end.68:                                     ; preds = %while.cond.56
  %102 = bitcast %struct.LOG_MEMFILE_BLK** %tmpbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast %struct.LOG_MEMFILE_BLK** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @memfile_next_blk(%struct.MEMFILE_s* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.MEMFILE_s*, align 8
  %bp = alloca %struct.LOG_MEMFILE_BLK*, align 8
  %newbp = alloca %struct.LOG_MEMFILE_BLK*, align 8
  %newphys = alloca %struct.PHYS_MEMFILE_BLK*, align 8
  %oldphys = alloca %struct.PHYS_MEMFILE_BLK*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code17 = alloca i32, align 4
  %code37 = alloca i32, align 4
  %code67 = alloca i32, align 4
  store %struct.MEMFILE_s* %f, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %0 = bitcast %struct.LOG_MEMFILE_BLK** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_curr_blk = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %1, i32 0, i32 11
  %2 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_curr_blk, align 8, !tbaa !44
  store %struct.LOG_MEMFILE_BLK* %2, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %3 = bitcast %struct.LOG_MEMFILE_BLK** %newbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.PHYS_MEMFILE_BLK** %newphys to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.PHYS_MEMFILE_BLK** %oldphys to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %phys_curr = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %8, i32 0, i32 17
  %9 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_curr, align 8, !tbaa !67
  %cmp = icmp eq %struct.PHYS_MEMFILE_BLK* %9, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %call = call i8* @allocateWithReserve(%struct.MEMFILE_s* %10, i32 16248, i32* %code, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i32 0, i32 0)) #4
  %11 = bitcast i8* %call to %struct.PHYS_MEMFILE_BLK*
  store %struct.PHYS_MEMFILE_BLK* %11, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %12, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end:                                           ; preds = %if.then
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %ecode, align 4, !tbaa !5
  %or = or i32 %15, %14
  store i32 %or, i32* %ecode, align 4, !tbaa !5
  %16 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %link = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %16, i32 0, i32 0
  store %struct.PHYS_MEMFILE_BLK* null, %struct.PHYS_MEMFILE_BLK** %link, align 8, !tbaa !53
  %17 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %data_limit = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %17, i32 0, i32 1
  store i8* null, i8** %data_limit, align 8, !tbaa !32
  %18 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %call3 = call i8* @allocateWithReserve(%struct.MEMFILE_s* %18, i32 32, i32* %code, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i32 0, i32 0)) #4
  %19 = bitcast i8* %call3 to %struct.LOG_MEMFILE_BLK*
  store %struct.LOG_MEMFILE_BLK* %19, %struct.LOG_MEMFILE_BLK** %newbp, align 8, !tbaa !1
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %20, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %21 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %21, i32 0, i32 1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory, align 8, !tbaa !17
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %23 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !47
  %24 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory6 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %24, i32 0, i32 1
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory6, align 8, !tbaa !17
  %26 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %27 = bitcast %struct.PHYS_MEMFILE_BLK* %26 to i8*
  call void %23(%struct.gs_memory_s* %25, i8* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0)) #4
  %28 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %total_space = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %28, i32 0, i32 16
  %29 = load i64, i64* %total_space, align 8, !tbaa !45
  %sub = sub i64 %29, 16248
  store i64 %sub, i64* %total_space, align 8, !tbaa !45
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end.7:                                         ; preds = %if.end
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %ecode, align 4, !tbaa !5
  %or8 = or i32 %32, %31
  store i32 %or8, i32* %ecode, align 4, !tbaa !5
  %33 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %newbp, align 8, !tbaa !1
  %34 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %link9 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %34, i32 0, i32 0
  store %struct.LOG_MEMFILE_BLK* %33, %struct.LOG_MEMFILE_BLK** %link9, align 8, !tbaa !38
  %35 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %newbp, align 8, !tbaa !1
  %link10 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %35, i32 0, i32 0
  store %struct.LOG_MEMFILE_BLK* null, %struct.LOG_MEMFILE_BLK** %link10, align 8, !tbaa !38
  %36 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %newbp, align 8, !tbaa !1
  %raw_block = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %36, i32 0, i32 3
  store %struct.RAW_BUFFER* null, %struct.RAW_BUFFER** %raw_block, align 8, !tbaa !37
  %37 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %newbp, align 8, !tbaa !1
  %38 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_curr_blk11 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %38, i32 0, i32 11
  store %struct.LOG_MEMFILE_BLK* %37, %struct.LOG_MEMFILE_BLK** %log_curr_blk11, align 8, !tbaa !44
  %39 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %ok_to_compress = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %39, i32 0, i32 2
  %40 = load i32, i32* %ok_to_compress, align 4, !tbaa !46
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %if.end.7
  %41 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %total_space12 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %41, i32 0, i32 16
  %42 = load i64, i64* %total_space12, align 8, !tbaa !45
  %cmp13 = icmp sgt i64 %42, 500000000
  br i1 %cmp13, label %if.then.14, label %if.end.60

if.then.14:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.14
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %43 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compressor_initialized = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %43, i32 0, i32 23
  %44 = load i32, i32* %compressor_initialized, align 4, !tbaa !48
  %tobool15 = icmp ne i32 %44, 0
  br i1 %tobool15, label %if.end.30, label %if.then.16

if.then.16:                                       ; preds = %do.end
  %45 = bitcast i32* %code17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  store i32 0, i32* %code17, align 4, !tbaa !5
  %46 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compress_state = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %46, i32 0, i32 24
  %47 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state, align 8, !tbaa !18
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %47, i32 0, i32 0
  %48 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !49
  %init = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %48, i32 0, i32 1
  %49 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %init, align 8, !tbaa !60
  %cmp18 = icmp ne i32 (%struct.stream_state_s*)* %49, null
  br i1 %cmp18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %if.then.16
  %50 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compress_state20 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %50, i32 0, i32 24
  %51 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state20, align 8, !tbaa !18
  %templat21 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %51, i32 0, i32 0
  %52 = load %struct.stream_template_s*, %struct.stream_template_s** %templat21, align 8, !tbaa !49
  %init22 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %52, i32 0, i32 1
  %53 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %init22, align 8, !tbaa !60
  %54 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compress_state23 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %54, i32 0, i32 24
  %55 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state23, align 8, !tbaa !18
  %call24 = call i32 %53(%struct.stream_state_s* %55) #4
  store i32 %call24, i32* %code17, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.19, %if.then.16
  %56 = load i32, i32* %code17, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %56, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.25
  %57 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compressor_initialized29 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %57, i32 0, i32 23
  store i32 1, i32* %compressor_initialized29, align 4, !tbaa !48
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.27
  %58 = bitcast i32* %code17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.94 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.30

if.end.30:                                        ; preds = %cleanup.cont, %do.end
  %59 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %60 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %phys_curr31 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %60, i32 0, i32 17
  store %struct.PHYS_MEMFILE_BLK* %59, %struct.PHYS_MEMFILE_BLK** %phys_curr31, align 8, !tbaa !67
  %61 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %61, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16224 x i8], [16224 x i8]* %data, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 -1
  %62 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %62, i32 0, i32 22
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt, i32 0, i32 1
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !62
  %63 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt32 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %63, i32 0, i32 22
  %ptr33 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt32, i32 0, i32 1
  %64 = load i8*, i8** %ptr33, align 8, !tbaa !62
  %add.ptr34 = getelementptr inbounds i8, i8* %64, i64 16224
  %65 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt35 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %65, i32 0, i32 22
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt35, i32 0, i32 2
  store i8* %add.ptr34, i8** %limit, align 8, !tbaa !63
  %66 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_head = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %66, i32 0, i32 10
  %67 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %log_head, align 8, !tbaa !29
  store %struct.LOG_MEMFILE_BLK* %67, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.52, %if.end.30
  %68 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %69 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %newbp, align 8, !tbaa !1
  %cmp36 = icmp ne %struct.LOG_MEMFILE_BLK* %68, %69
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %70 = bitcast i32* %code37 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %phys_blk = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %71, i32 0, i32 1
  %72 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk, align 8, !tbaa !30
  store %struct.PHYS_MEMFILE_BLK* %72, %struct.PHYS_MEMFILE_BLK** %oldphys, align 8, !tbaa !1
  %73 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %74 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %call38 = call i32 @compress_log_blk(%struct.MEMFILE_s* %73, %struct.LOG_MEMFILE_BLK* %74) #4
  store i32 %call38, i32* %code37, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %while.body
  %75 = load i32, i32* %code37, align 4, !tbaa !5
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

if.end.41:                                        ; preds = %while.body
  %76 = load i32, i32* %code37, align 4, !tbaa !5
  %77 = load i32, i32* %ecode, align 4, !tbaa !5
  %or42 = or i32 %77, %76
  store i32 %or42, i32* %ecode, align 4, !tbaa !5
  %78 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory43 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %78, i32 0, i32 1
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory43, align 8, !tbaa !17
  %procs44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 1
  %free_object45 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs44, i32 0, i32 2
  %80 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object45, align 8, !tbaa !47
  %81 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %data_memory46 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %81, i32 0, i32 1
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory46, align 8, !tbaa !17
  %83 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %oldphys, align 8, !tbaa !1
  %84 = bitcast %struct.PHYS_MEMFILE_BLK* %83 to i8*
  call void %80(%struct.gs_memory_s* %82, i8* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0)) #4
  %85 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %total_space47 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %85, i32 0, i32 16
  %86 = load i64, i64* %total_space47, align 8, !tbaa !45
  %sub48 = sub i64 %86, 16248
  store i64 %sub48, i64* %total_space47, align 8, !tbaa !45
  %87 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %link49 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %87, i32 0, i32 0
  %88 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %link49, align 8, !tbaa !38
  store %struct.LOG_MEMFILE_BLK* %88, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.50

cleanup.50:                                       ; preds = %if.end.41, %if.then.40
  %89 = bitcast i32* %code37 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %cleanup.dest.51 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.51, label %cleanup.94 [
    i32 0, label %cleanup.cont.52
  ]

cleanup.cont.52:                                  ; preds = %cleanup.50
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %90 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %call53 = call i8* @allocateWithReserve(%struct.MEMFILE_s* %90, i32 16248, i32* %code, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i32 0, i32 0)) #4
  %91 = bitcast i8* %call53 to %struct.PHYS_MEMFILE_BLK*
  store %struct.PHYS_MEMFILE_BLK* %91, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %92 = load i32, i32* %code, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %92, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %while.end
  %93 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end.56:                                        ; preds = %while.end
  %94 = load i32, i32* %code, align 4, !tbaa !5
  %95 = load i32, i32* %ecode, align 4, !tbaa !5
  %or57 = or i32 %95, %94
  store i32 %or57, i32* %ecode, align 4, !tbaa !5
  %96 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %link58 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %96, i32 0, i32 0
  store %struct.PHYS_MEMFILE_BLK* null, %struct.PHYS_MEMFILE_BLK** %link58, align 8, !tbaa !53
  %97 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %data_limit59 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %97, i32 0, i32 1
  store i8* null, i8** %data_limit59, align 8, !tbaa !32
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.56, %land.lhs.true, %if.end.7
  %98 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %99 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %newbp, align 8, !tbaa !1
  %phys_blk61 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %99, i32 0, i32 1
  store %struct.PHYS_MEMFILE_BLK* %98, %struct.PHYS_MEMFILE_BLK** %phys_blk61, align 8, !tbaa !30
  %100 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %data62 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %100, i32 0, i32 3
  %arraydecay63 = getelementptr inbounds [16224 x i8], [16224 x i8]* %data62, i32 0, i32 0
  %101 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %101, i32 0, i32 14
  store i8* %arraydecay63, i8** %pdata, align 8, !tbaa !55
  %102 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %data64 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %102, i32 0, i32 3
  %arraydecay65 = getelementptr inbounds [16224 x i8], [16224 x i8]* %data64, i32 0, i32 0
  %add.ptr66 = getelementptr inbounds i8, i8* %arraydecay65, i64 16224
  %103 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata_end = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %103, i32 0, i32 15
  store i8* %add.ptr66, i8** %pdata_end, align 8, !tbaa !54
  br label %if.end.93

if.else:                                          ; preds = %entry
  %104 = bitcast i32* %code67 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %phys_blk68 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %105, i32 0, i32 1
  %106 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk68, align 8, !tbaa !30
  store %struct.PHYS_MEMFILE_BLK* %106, %struct.PHYS_MEMFILE_BLK** %oldphys, align 8, !tbaa !1
  %107 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %108 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %call69 = call i32 @compress_log_blk(%struct.MEMFILE_s* %107, %struct.LOG_MEMFILE_BLK* %108) #4
  store i32 %call69, i32* %code67, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.else
  %109 = load i32, i32* %code67, align 4, !tbaa !5
  store i32 %109, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

if.end.72:                                        ; preds = %if.else
  %110 = load i32, i32* %code67, align 4, !tbaa !5
  %111 = load i32, i32* %ecode, align 4, !tbaa !5
  %or73 = or i32 %111, %110
  store i32 %or73, i32* %ecode, align 4, !tbaa !5
  %112 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %call74 = call i8* @allocateWithReserve(%struct.MEMFILE_s* %112, i32 32, i32* %code67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i32 0, i32 0)) #4
  %113 = bitcast i8* %call74 to %struct.LOG_MEMFILE_BLK*
  store %struct.LOG_MEMFILE_BLK* %113, %struct.LOG_MEMFILE_BLK** %newbp, align 8, !tbaa !1
  %114 = load i32, i32* %code67, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %114, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.72
  %115 = load i32, i32* %code67, align 4, !tbaa !5
  store i32 %115, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

if.end.77:                                        ; preds = %if.end.72
  %116 = load i32, i32* %code67, align 4, !tbaa !5
  %117 = load i32, i32* %ecode, align 4, !tbaa !5
  %or78 = or i32 %117, %116
  store i32 %or78, i32* %ecode, align 4, !tbaa !5
  %118 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %newbp, align 8, !tbaa !1
  %119 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp, align 8, !tbaa !1
  %link79 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %119, i32 0, i32 0
  store %struct.LOG_MEMFILE_BLK* %118, %struct.LOG_MEMFILE_BLK** %link79, align 8, !tbaa !38
  %120 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %newbp, align 8, !tbaa !1
  %link80 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %120, i32 0, i32 0
  store %struct.LOG_MEMFILE_BLK* null, %struct.LOG_MEMFILE_BLK** %link80, align 8, !tbaa !38
  %121 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %newbp, align 8, !tbaa !1
  %raw_block81 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %121, i32 0, i32 3
  store %struct.RAW_BUFFER* null, %struct.RAW_BUFFER** %raw_block81, align 8, !tbaa !37
  %122 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %oldphys, align 8, !tbaa !1
  %123 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %newbp, align 8, !tbaa !1
  %phys_blk82 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %123, i32 0, i32 1
  store %struct.PHYS_MEMFILE_BLK* %122, %struct.PHYS_MEMFILE_BLK** %phys_blk82, align 8, !tbaa !30
  %124 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %oldphys, align 8, !tbaa !1
  %data83 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %124, i32 0, i32 3
  %arraydecay84 = getelementptr inbounds [16224 x i8], [16224 x i8]* %data83, i32 0, i32 0
  %125 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata85 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %125, i32 0, i32 14
  store i8* %arraydecay84, i8** %pdata85, align 8, !tbaa !55
  %126 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata86 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %126, i32 0, i32 14
  %127 = load i8*, i8** %pdata86, align 8, !tbaa !55
  %add.ptr87 = getelementptr inbounds i8, i8* %127, i64 16224
  %128 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %pdata_end88 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %128, i32 0, i32 15
  store i8* %add.ptr87, i8** %pdata_end88, align 8, !tbaa !54
  %129 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %newbp, align 8, !tbaa !1
  %130 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %log_curr_blk89 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %130, i32 0, i32 11
  store %struct.LOG_MEMFILE_BLK* %129, %struct.LOG_MEMFILE_BLK** %log_curr_blk89, align 8, !tbaa !44
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.90

cleanup.90:                                       ; preds = %if.end.77, %if.then.76, %if.then.71
  %131 = bitcast i32* %code67 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %cleanup.dest.91 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.91, label %cleanup.94 [
    i32 0, label %cleanup.cont.92
  ]

cleanup.cont.92:                                  ; preds = %cleanup.90
  br label %if.end.93

if.end.93:                                        ; preds = %cleanup.cont.92, %if.end.60
  %132 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %132, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

cleanup.94:                                       ; preds = %if.end.93, %cleanup.90, %if.then.55, %cleanup.50, %cleanup, %if.then.5, %if.then.2
  %133 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast %struct.PHYS_MEMFILE_BLK** %oldphys to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast %struct.PHYS_MEMFILE_BLK** %newphys to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast %struct.LOG_MEMFILE_BLK** %newbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast %struct.LOG_MEMFILE_BLK** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = load i32, i32* %retval
  ret i32 %139
}

; Function Attrs: nounwind uwtable
define internal i32 @compress_log_blk(%struct.MEMFILE_s* %f, %struct.LOG_MEMFILE_BLK* %bp) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.MEMFILE_s*, align 8
  %bp.addr = alloca %struct.LOG_MEMFILE_BLK*, align 8
  %status = alloca i32, align 4
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %compressed_size = alloca i64, align 8
  %start_ptr = alloca i8*, align 8
  %newphys = alloca %struct.PHYS_MEMFILE_BLK*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.MEMFILE_s* %f, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  store %struct.LOG_MEMFILE_BLK* %bp, %struct.LOG_MEMFILE_BLK** %bp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i64* %compressed_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %start_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.PHYS_MEMFILE_BLK** %newphys to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp.addr, align 8, !tbaa !1
  %phys_blk = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %6, i32 0, i32 1
  %7 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk, align 8, !tbaa !30
  %data = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %7, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16224 x i8], [16224 x i8]* %data, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 -1
  %8 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %8, i32 0, i32 21
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %rd, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !64
  %9 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd1 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %9, i32 0, i32 21
  %ptr2 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %rd1, i32 0, i32 0
  %10 = load i8*, i8** %ptr2, align 8, !tbaa !64
  %add.ptr3 = getelementptr inbounds i8, i8* %10, i64 16224
  %11 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd4 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %11, i32 0, i32 21
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %rd4, i32 0, i32 1
  store i8* %add.ptr3, i8** %limit, align 8, !tbaa !65
  %12 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %phys_curr = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %12, i32 0, i32 17
  %13 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_curr, align 8, !tbaa !67
  %14 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp.addr, align 8, !tbaa !1
  %phys_blk5 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %14, i32 0, i32 1
  store %struct.PHYS_MEMFILE_BLK* %13, %struct.PHYS_MEMFILE_BLK** %phys_blk5, align 8, !tbaa !30
  %15 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %15, i32 0, i32 22
  %ptr6 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt, i32 0, i32 1
  %16 = load i8*, i8** %ptr6, align 8, !tbaa !62
  %add.ptr7 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp.addr, align 8, !tbaa !1
  %phys_pdata = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %17, i32 0, i32 2
  store i8* %add.ptr7, i8** %phys_pdata, align 8, !tbaa !36
  %18 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compress_state = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %18, i32 0, i32 24
  %19 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state, align 8, !tbaa !18
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %19, i32 0, i32 0
  %20 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !49
  %reinit = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %20, i32 0, i32 7
  %21 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %reinit, align 8, !tbaa !61
  %cmp = icmp ne i32 (%struct.stream_state_s*)* %21, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compress_state8 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %22, i32 0, i32 24
  %23 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state8, align 8, !tbaa !18
  %templat9 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %23, i32 0, i32 0
  %24 = load %struct.stream_template_s*, %struct.stream_template_s** %templat9, align 8, !tbaa !49
  %reinit10 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %24, i32 0, i32 7
  %25 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %reinit10, align 8, !tbaa !61
  %26 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compress_state11 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %26, i32 0, i32 24
  %27 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state11, align 8, !tbaa !18
  %call = call i32 %25(%struct.stream_state_s* %27) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, i64* %compressed_size, align 8, !tbaa !56
  %28 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt12 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %28, i32 0, i32 22
  %ptr13 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt12, i32 0, i32 1
  %29 = load i8*, i8** %ptr13, align 8, !tbaa !62
  store i8* %29, i8** %start_ptr, align 8, !tbaa !1
  %30 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compress_state14 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %30, i32 0, i32 24
  %31 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state14, align 8, !tbaa !18
  %templat15 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %31, i32 0, i32 0
  %32 = load %struct.stream_template_s*, %struct.stream_template_s** %templat15, align 8, !tbaa !49
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %32, i32 0, i32 2
  %33 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !66
  %34 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compress_state16 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %34, i32 0, i32 24
  %35 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state16, align 8, !tbaa !18
  %36 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd17 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %36, i32 0, i32 21
  %37 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt18 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %37, i32 0, i32 22
  %call19 = call i32 %33(%struct.stream_state_s* %35, %struct.stream_cursor_read_s* %rd17, %struct.stream_cursor_write_s* %wt18, i32 1) #4
  store i32 %call19, i32* %status, align 4, !tbaa !5
  %38 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt20 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %38, i32 0, i32 22
  %ptr21 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt20, i32 0, i32 1
  %39 = load i8*, i8** %ptr21, align 8, !tbaa !62
  %40 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp.addr, align 8, !tbaa !1
  %phys_blk22 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %40, i32 0, i32 1
  %41 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk22, align 8, !tbaa !30
  %data_limit = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %41, i32 0, i32 1
  store i8* %39, i8** %data_limit, align 8, !tbaa !32
  %42 = load i32, i32* %status, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %42, 1
  br i1 %cmp23, label %if.then.24, label %if.end.63

if.then.24:                                       ; preds = %if.end
  %43 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt25 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %43, i32 0, i32 22
  %limit26 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt25, i32 0, i32 2
  %44 = load i8*, i8** %limit26, align 8, !tbaa !63
  %45 = load i8*, i8** %start_ptr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %compressed_size, align 8, !tbaa !56
  %46 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %call27 = call i8* @allocateWithReserve(%struct.MEMFILE_s* %46, i32 16248, i32* %code, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.33, i32 0, i32 0)) #4
  %47 = bitcast i8* %call27 to %struct.PHYS_MEMFILE_BLK*
  store %struct.PHYS_MEMFILE_BLK* %47, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %48 = load i32, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %48, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.24
  %49 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.then.24
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %51 = load i32, i32* %ecode, align 4, !tbaa !5
  %or = or i32 %51, %50
  store i32 %or, i32* %ecode, align 4, !tbaa !5
  %52 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %link = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %52, i32 0, i32 0
  store %struct.PHYS_MEMFILE_BLK* null, %struct.PHYS_MEMFILE_BLK** %link, align 8, !tbaa !53
  %53 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %54 = load %struct.LOG_MEMFILE_BLK*, %struct.LOG_MEMFILE_BLK** %bp.addr, align 8, !tbaa !1
  %phys_blk31 = getelementptr inbounds %struct.LOG_MEMFILE_BLK, %struct.LOG_MEMFILE_BLK* %54, i32 0, i32 1
  %55 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %phys_blk31, align 8, !tbaa !30
  %link32 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %55, i32 0, i32 0
  store %struct.PHYS_MEMFILE_BLK* %53, %struct.PHYS_MEMFILE_BLK** %link32, align 8, !tbaa !53
  %56 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %57 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %phys_curr33 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %57, i32 0, i32 17
  store %struct.PHYS_MEMFILE_BLK* %56, %struct.PHYS_MEMFILE_BLK** %phys_curr33, align 8, !tbaa !67
  %58 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %data34 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %58, i32 0, i32 3
  %arraydecay35 = getelementptr inbounds [16224 x i8], [16224 x i8]* %data34, i32 0, i32 0
  %add.ptr36 = getelementptr inbounds i8, i8* %arraydecay35, i64 -1
  %59 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt37 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %59, i32 0, i32 22
  %ptr38 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt37, i32 0, i32 1
  store i8* %add.ptr36, i8** %ptr38, align 8, !tbaa !62
  %60 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt39 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %60, i32 0, i32 22
  %ptr40 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt39, i32 0, i32 1
  %61 = load i8*, i8** %ptr40, align 8, !tbaa !62
  %add.ptr41 = getelementptr inbounds i8, i8* %61, i64 16224
  %62 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt42 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %62, i32 0, i32 22
  %limit43 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt42, i32 0, i32 2
  store i8* %add.ptr41, i8** %limit43, align 8, !tbaa !63
  %63 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt44 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %63, i32 0, i32 22
  %ptr45 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt44, i32 0, i32 1
  %64 = load i8*, i8** %ptr45, align 8, !tbaa !62
  store i8* %64, i8** %start_ptr, align 8, !tbaa !1
  %65 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compress_state46 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %65, i32 0, i32 24
  %66 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state46, align 8, !tbaa !18
  %templat47 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %66, i32 0, i32 0
  %67 = load %struct.stream_template_s*, %struct.stream_template_s** %templat47, align 8, !tbaa !49
  %process48 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %67, i32 0, i32 2
  %68 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process48, align 8, !tbaa !66
  %69 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %compress_state49 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %69, i32 0, i32 24
  %70 = load %struct.stream_state_s*, %struct.stream_state_s** %compress_state49, align 8, !tbaa !18
  %71 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %rd50 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %71, i32 0, i32 21
  %72 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt51 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %72, i32 0, i32 22
  %call52 = call i32 %68(%struct.stream_state_s* %70, %struct.stream_cursor_read_s* %rd50, %struct.stream_cursor_write_s* %wt51, i32 1) #4
  store i32 %call52, i32* %status, align 4, !tbaa !5
  %73 = load i32, i32* %status, align 4, !tbaa !5
  %cmp53 = icmp ne i32 %73, 0
  br i1 %cmp53, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %if.end.30
  %74 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %74, i32 0, i32 0
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %call55 = call i8* @gs_program_name() #4
  %call56 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %75, i8* %call55, i64 %call56) #4
  %76 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %memory57 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %76, i32 0, i32 0
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory57, align 8, !tbaa !16
  %call58 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %77, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0)) #4
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.end.30
  %78 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt60 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %78, i32 0, i32 22
  %ptr61 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt60, i32 0, i32 1
  %79 = load i8*, i8** %ptr61, align 8, !tbaa !62
  %80 = load %struct.PHYS_MEMFILE_BLK*, %struct.PHYS_MEMFILE_BLK** %newphys, align 8, !tbaa !1
  %data_limit62 = getelementptr inbounds %struct.PHYS_MEMFILE_BLK, %struct.PHYS_MEMFILE_BLK* %80, i32 0, i32 1
  store i8* %79, i8** %data_limit62, align 8, !tbaa !32
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.59, %if.end
  %81 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %wt64 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %81, i32 0, i32 22
  %ptr65 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %wt64, i32 0, i32 1
  %82 = load i8*, i8** %ptr65, align 8, !tbaa !62
  %83 = load i8*, i8** %start_ptr, align 8, !tbaa !1
  %sub.ptr.lhs.cast66 = ptrtoint i8* %82 to i64
  %sub.ptr.rhs.cast67 = ptrtoint i8* %83 to i64
  %sub.ptr.sub68 = sub i64 %sub.ptr.lhs.cast66, %sub.ptr.rhs.cast67
  %84 = load i64, i64* %compressed_size, align 8, !tbaa !56
  %add = add nsw i64 %84, %sub.ptr.sub68
  store i64 %add, i64* %compressed_size, align 8, !tbaa !56
  %85 = load i64, i64* %compressed_size, align 8, !tbaa !56
  %cmp69 = icmp sgt i64 %85, 16224
  br i1 %cmp69, label %if.then.70, label %if.end.76

if.then.70:                                       ; preds = %if.end.63
  %86 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %memory71 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %86, i32 0, i32 0
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory71, align 8, !tbaa !16
  %call72 = call i8* @gs_program_name() #4
  %call73 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %87, i8* %call72, i64 %call73) #4
  %88 = load %struct.MEMFILE_s*, %struct.MEMFILE_s** %f.addr, align 8, !tbaa !1
  %memory74 = getelementptr inbounds %struct.MEMFILE_s, %struct.MEMFILE_s* %88, i32 0, i32 0
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory74, align 8, !tbaa !16
  %90 = load i64, i64* %compressed_size, align 8, !tbaa !56
  %call75 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %89, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.35, i32 0, i32 0), i32 16224, i64 %90) #4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.70, %if.end.63
  %91 = load i32, i32* %status, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %91, 0
  br i1 %cmp77, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.76
  br label %cond.end

cond.false:                                       ; preds = %if.end.76
  %92 = load i32, i32* %ecode, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -12, %cond.true ], [ %92, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.54, %if.then.29
  %93 = bitcast %struct.PHYS_MEMFILE_BLK** %newphys to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i8** %start_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast i64* %compressed_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = load i32, i32* %retval
  ret i32 %99
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
!7 = !{!3, !3, i64 0}
!8 = !{!9, !6, i64 20}
!9 = !{!"MEMFILE_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !2, i64 56, !6, i64 64, !2, i64 72, !2, i64 80, !10, i64 88, !10, i64 96, !2, i64 104, !2, i64 112, !10, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !6, i64 152, !11, i64 160, !12, i64 184, !6, i64 208, !2, i64 216, !2, i64 224}
!10 = !{!"long", !3, i64 0}
!11 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!14, !2, i64 72}
!14 = !{!"gs_memory_s", !2, i64 0, !15, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!15 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!16 = !{!9, !2, i64 0}
!17 = !{!9, !2, i64 8}
!18 = !{!9, !2, i64 216}
!19 = !{!9, !2, i64 224}
!20 = !{!9, !2, i64 40}
!21 = !{!9, !6, i64 48}
!22 = !{!9, !2, i64 56}
!23 = !{!9, !6, i64 64}
!24 = !{!9, !2, i64 24}
!25 = !{!9, !2, i64 32}
!26 = !{!9, !10, i64 96}
!27 = !{!9, !2, i64 136}
!28 = !{!9, !6, i64 152}
!29 = !{!9, !2, i64 72}
!30 = !{!31, !2, i64 8}
!31 = !{!"LOG_MEMFILE_BLK", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!32 = !{!33, !2, i64 8}
!33 = !{!"PHYS_MEMFILE_BLK", !2, i64 0, !2, i64 8, !3, i64 16, !3, i64 20}
!34 = !{!9, !10, i64 88}
!35 = !{!14, !2, i64 64}
!36 = !{!31, !2, i64 16}
!37 = !{!31, !2, i64 24}
!38 = !{!31, !2, i64 0}
!39 = !{!40, !2, i64 0}
!40 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!41 = !{!42, !2, i64 8}
!42 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28}
!43 = !{!40, !2, i64 40}
!44 = !{!9, !2, i64 80}
!45 = !{!9, !10, i64 120}
!46 = !{!9, !6, i64 16}
!47 = !{!14, !2, i64 24}
!48 = !{!9, !6, i64 208}
!49 = !{!42, !2, i64 0}
!50 = !{!40, !2, i64 32}
!51 = !{!52, !2, i64 0}
!52 = !{!"RAW_BUFFER", !2, i64 0, !2, i64 8, !2, i64 16, !3, i64 24}
!53 = !{!33, !2, i64 0}
!54 = !{!9, !2, i64 112}
!55 = !{!9, !2, i64 104}
!56 = !{!10, !10, i64 0}
!57 = !{!52, !2, i64 8}
!58 = !{!9, !2, i64 144}
!59 = !{!52, !2, i64 16}
!60 = !{!40, !2, i64 8}
!61 = !{!40, !2, i64 48}
!62 = !{!9, !2, i64 192}
!63 = !{!9, !2, i64 200}
!64 = !{!9, !2, i64 160}
!65 = !{!9, !2, i64 168}
!66 = !{!40, !2, i64 16}
!67 = !{!9, !2, i64 128}
