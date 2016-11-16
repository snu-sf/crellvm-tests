; ModuleID = './szlibc.bc'
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
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, {}*, {}*, i32 (%struct.stream_state_s*)* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_zlib_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, %struct.zlib_dynamic_state_s* }
%struct.zlib_dynamic_state_s = type { %struct.gs_memory_s*, %struct.zlib_block_s*, %struct.z_stream_s }
%struct.zlib_block_s = type { i8*, %struct.zlib_block_s*, %struct.zlib_block_s* }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"zlibEncode/Decode state\00", align 1
@zlib_state_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @zlib_state_enum_ptrs, i32 0, i32 0) }, align 8
@st_zlib_state = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @zlib_state_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"s_zlib_alloc_dynamic_state\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"s_zlib_free_dynamic_state\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"s_zlib_alloc(block)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"s_zlib_alloc(data)\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"s_zlib_free(data)\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"./base/szlibc.c\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Freeing unrecorded data 0x%lx!\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"s_zlib_free(block)\00", align 1
@zlib_state_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 136 }], align 2
@.str.9 = private unnamed_addr constant [21 x i8] c"zlib_dynamic_state_t\00", align 1
@zlib_dynamic_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @zlib_dynamic_enum_ptrs, i32 0, i32 0) }, align 8
@st_zlib_dynamic_state = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @zlib_dynamic_reloc_ptrs to i8*) }, align 8
@zlib_dynamic_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 8 }], align 2
@.str.10 = private unnamed_addr constant [13 x i8] c"zlib_block_t\00", align 1
@zlib_block_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @zlib_block_enum_ptrs, i32 0, i32 0) }, align 8
@st_zlib_block = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @zlib_block_reloc_ptrs to i8*) }, align 8
@zlib_block_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 16 }, %struct.gc_ptr_element_s zeroinitializer], align 2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define void @s_zlib_set_defaults(%struct.stream_state_s* %st) #1 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_zlib_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_zlib_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_zlib_state_s*
  store %struct.stream_zlib_state_s* %2, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %windowBits = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %3, i32 0, i32 5
  store i32 15, i32* %windowBits, align 4, !tbaa !5
  %4 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %no_wrapper = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %4, i32 0, i32 6
  store i32 0, i32* %no_wrapper, align 4, !tbaa !8
  %5 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %level = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %5, i32 0, i32 7
  store i32 -1, i32* %level, align 4, !tbaa !9
  %6 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %method = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %6, i32 0, i32 8
  store i32 8, i32* %method, align 4, !tbaa !10
  %7 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %memLevel = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %7, i32 0, i32 9
  store i32 8, i32* %memLevel, align 4, !tbaa !11
  %8 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %strategy = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %8, i32 0, i32 10
  store i32 0, i32* %strategy, align 4, !tbaa !12
  %9 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss, align 8, !tbaa !1
  %dynamic = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %9, i32 0, i32 11
  store %struct.zlib_dynamic_state_s* null, %struct.zlib_dynamic_state_s** %dynamic, align 8, !tbaa !13
  %10 = bitcast %struct.stream_zlib_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @s_zlib_alloc_dynamic_state(%struct.stream_zlib_state_s* %ss) #1 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca %struct.stream_zlib_state_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %zds = alloca %struct.zlib_dynamic_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_zlib_state_s* %ss, %struct.stream_zlib_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !14
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.zlib_dynamic_state_s** %zds to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 9
  %5 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !15
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_zlib_dynamic_state to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)) #3
  %7 = bitcast i8* %call to %struct.zlib_dynamic_state_s*
  store %struct.zlib_dynamic_state_s* %7, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %8 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %9 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss.addr, align 8, !tbaa !1
  %dynamic = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %9, i32 0, i32 11
  store %struct.zlib_dynamic_state_s* %8, %struct.zlib_dynamic_state_s** %dynamic, align 8, !tbaa !13
  %10 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %cmp = icmp eq %struct.zlib_dynamic_state_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %blocks = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %11, i32 0, i32 1
  store %struct.zlib_block_s* null, %struct.zlib_block_s** %blocks, align 8, !tbaa !18
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %13 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %13, i32 0, i32 0
  store %struct.gs_memory_s* %12, %struct.gs_memory_s** %memory1, align 8, !tbaa !22
  %14 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %zstate = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %14, i32 0, i32 2
  %zalloc = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zstate, i32 0, i32 8
  store i8* (i8*, i32, i32)* @s_zlib_alloc, i8* (i8*, i32, i32)** %zalloc, align 8, !tbaa !23
  %15 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %zstate2 = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %15, i32 0, i32 2
  %zfree = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zstate2, i32 0, i32 9
  store void (i8*, i8*)* @s_zlib_free, void (i8*, i8*)** %zfree, align 8, !tbaa !24
  %16 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %17 = bitcast %struct.zlib_dynamic_state_s* %16 to i8*
  %18 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %zstate3 = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %18, i32 0, i32 2
  %opaque = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zstate3, i32 0, i32 10
  store i8* %17, i8** %opaque, align 8, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast %struct.zlib_dynamic_state_s** %zds to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i8* @s_zlib_alloc(i8* %zmem, i32 %items, i32 %size) #1 {
entry:
  %retval = alloca i8*, align 8
  %zmem.addr = alloca i8*, align 8
  %items.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %zds = alloca %struct.zlib_dynamic_state_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %block = alloca %struct.zlib_block_s*, align 8
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %zmem, i8** %zmem.addr, align 8, !tbaa !1
  store i32 %items, i32* %items.addr, align 4, !tbaa !26
  store i32 %size, i32* %size.addr, align 4, !tbaa !26
  %0 = bitcast %struct.zlib_dynamic_state_s** %zds to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %zmem.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.zlib_dynamic_state_s*
  store %struct.zlib_dynamic_state_s* %2, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 0
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !27
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = bitcast %struct.zlib_block_s** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %9 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !28
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_zlib_block to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #3
  %11 = bitcast i8* %call to %struct.zlib_block_s*
  store %struct.zlib_block_s* %11, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %12 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_byte_array_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 11
  %14 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array_immovable, align 8, !tbaa !29
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %16 = load i32, i32* %items.addr, align 4, !tbaa !26
  %17 = load i32, i32* %size.addr, align 4, !tbaa !26
  %call2 = call i8* %14(%struct.gs_memory_s* %15, i32 %16, i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0)) #3
  store i8* %call2, i8** %data, align 8, !tbaa !1
  %18 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %cmp = icmp eq %struct.zlib_block_s* %18, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %19 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp3 = icmp eq i8* %19, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !30
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %23 = load i8*, i8** %data, align 8, !tbaa !1
  call void %21(%struct.gs_memory_s* %22, i8* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0)) #3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object6 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object6, align 8, !tbaa !30
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %27 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %28 = bitcast %struct.zlib_block_s* %27 to i8*
  call void %25(%struct.gs_memory_s* %26, i8* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #3
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %29 = load i8*, i8** %data, align 8, !tbaa !1
  %30 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %data7 = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %30, i32 0, i32 0
  store i8* %29, i8** %data7, align 8, !tbaa !31
  %31 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %blocks = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %31, i32 0, i32 1
  %32 = load %struct.zlib_block_s*, %struct.zlib_block_s** %blocks, align 8, !tbaa !18
  %33 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %33, i32 0, i32 1
  store %struct.zlib_block_s* %32, %struct.zlib_block_s** %next, align 8, !tbaa !33
  %34 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %34, i32 0, i32 2
  store %struct.zlib_block_s* null, %struct.zlib_block_s** %prev, align 8, !tbaa !34
  %35 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %blocks8 = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %35, i32 0, i32 1
  %36 = load %struct.zlib_block_s*, %struct.zlib_block_s** %blocks8, align 8, !tbaa !18
  %tobool = icmp ne %struct.zlib_block_s* %36, null
  br i1 %tobool, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %37 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %38 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %blocks10 = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %38, i32 0, i32 1
  %39 = load %struct.zlib_block_s*, %struct.zlib_block_s** %blocks10, align 8, !tbaa !18
  %prev11 = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %39, i32 0, i32 2
  store %struct.zlib_block_s* %37, %struct.zlib_block_s** %prev11, align 8, !tbaa !34
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %40 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %41 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %blocks13 = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %41, i32 0, i32 1
  store %struct.zlib_block_s* %40, %struct.zlib_block_s** %blocks13, align 8, !tbaa !18
  %42 = load i8*, i8** %data, align 8, !tbaa !1
  store i8* %42, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then
  %43 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = bitcast %struct.zlib_block_s** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast %struct.zlib_dynamic_state_s** %zds to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = load i8*, i8** %retval
  ret i8* %47
}

; Function Attrs: nounwind uwtable
define void @s_zlib_free(i8* %zmem, i8* %data) #1 {
entry:
  %zmem.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %zds = alloca %struct.zlib_dynamic_state_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %block = alloca %struct.zlib_block_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %zmem, i8** %zmem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.zlib_dynamic_state_s** %zds to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %zmem.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.zlib_dynamic_state_s*
  store %struct.zlib_dynamic_state_s* %2, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 0
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !27
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = bitcast %struct.zlib_block_s** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %blocks = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %8, i32 0, i32 1
  %9 = load %struct.zlib_block_s*, %struct.zlib_block_s** %blocks, align 8, !tbaa !18
  store %struct.zlib_block_s* %9, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %11 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !30
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %13 = load i8*, i8** %data.addr, align 8, !tbaa !1
  call void %11(%struct.gs_memory_s* %12, i8* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %cmp = icmp eq %struct.zlib_block_s* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %call = call i8* @gs_program_name() #3
  %call1 = call i64 @gs_revision_number() #3
  call void @eprintf_program_ident(i8* %call, i64 %call1) #3
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 113) #3
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %16 = ptrtoint i8* %15 to i64
  %call2 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i64 %16) #3
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.cond
  %17 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %17, i32 0, i32 0
  %18 = load i8*, i8** %data3, align 8, !tbaa !31
  %19 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %18, %19
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %for.end

if.end.6:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %20 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %20, i32 0, i32 1
  %21 = load %struct.zlib_block_s*, %struct.zlib_block_s** %next, align 8, !tbaa !33
  store %struct.zlib_block_s* %21, %struct.zlib_block_s** %block, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.5
  %22 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %next7 = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %22, i32 0, i32 1
  %23 = load %struct.zlib_block_s*, %struct.zlib_block_s** %next7, align 8, !tbaa !33
  %tobool = icmp ne %struct.zlib_block_s* %23, null
  br i1 %tobool, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %for.end
  %24 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %24, i32 0, i32 2
  %25 = load %struct.zlib_block_s*, %struct.zlib_block_s** %prev, align 8, !tbaa !34
  %26 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %next9 = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %26, i32 0, i32 1
  %27 = load %struct.zlib_block_s*, %struct.zlib_block_s** %next9, align 8, !tbaa !33
  %prev10 = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %27, i32 0, i32 2
  store %struct.zlib_block_s* %25, %struct.zlib_block_s** %prev10, align 8, !tbaa !34
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %for.end
  %28 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %prev12 = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %28, i32 0, i32 2
  %29 = load %struct.zlib_block_s*, %struct.zlib_block_s** %prev12, align 8, !tbaa !34
  %tobool13 = icmp ne %struct.zlib_block_s* %29, null
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.11
  %30 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %next15 = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %30, i32 0, i32 1
  %31 = load %struct.zlib_block_s*, %struct.zlib_block_s** %next15, align 8, !tbaa !33
  %32 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %prev16 = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %32, i32 0, i32 2
  %33 = load %struct.zlib_block_s*, %struct.zlib_block_s** %prev16, align 8, !tbaa !34
  %next17 = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %33, i32 0, i32 1
  store %struct.zlib_block_s* %31, %struct.zlib_block_s** %next17, align 8, !tbaa !33
  br label %if.end.20

if.else:                                          ; preds = %if.end.11
  %34 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %next18 = getelementptr inbounds %struct.zlib_block_s, %struct.zlib_block_s* %34, i32 0, i32 1
  %35 = load %struct.zlib_block_s*, %struct.zlib_block_s** %next18, align 8, !tbaa !33
  %36 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %zds, align 8, !tbaa !1
  %blocks19 = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %36, i32 0, i32 1
  store %struct.zlib_block_s* %35, %struct.zlib_block_s** %blocks19, align 8, !tbaa !18
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.14
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %free_object22 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 2
  %38 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object22, align 8, !tbaa !30
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %40 = load %struct.zlib_block_s*, %struct.zlib_block_s** %block, align 8, !tbaa !1
  %41 = bitcast %struct.zlib_block_s* %40 to i8*
  call void %38(%struct.gs_memory_s* %39, i8* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then
  %42 = bitcast %struct.zlib_block_s** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = bitcast %struct.zlib_dynamic_state_s** %zds to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
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
define void @s_zlib_free_dynamic_state(%struct.stream_zlib_state_s* %ss) #1 {
entry:
  %ss.addr = alloca %struct.stream_zlib_state_s*, align 8
  store %struct.stream_zlib_state_s* %ss, %struct.stream_zlib_state_s** %ss.addr, align 8, !tbaa !1
  %0 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss.addr, align 8, !tbaa !1
  %dynamic = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %0, i32 0, i32 11
  %1 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %dynamic, align 8, !tbaa !13
  %tobool = icmp ne %struct.zlib_dynamic_state_s* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss.addr, align 8, !tbaa !1
  %dynamic1 = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %2, i32 0, i32 11
  %3 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %dynamic1, align 8, !tbaa !13
  %memory = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %3, i32 0, i32 0
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !30
  %6 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss.addr, align 8, !tbaa !1
  %dynamic2 = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %6, i32 0, i32 11
  %7 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %dynamic2, align 8, !tbaa !13
  %memory3 = getelementptr inbounds %struct.zlib_dynamic_state_s, %struct.zlib_dynamic_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !22
  %9 = load %struct.stream_zlib_state_s*, %struct.stream_zlib_state_s** %ss.addr, align 8, !tbaa !1
  %dynamic4 = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %9, i32 0, i32 11
  %10 = load %struct.zlib_dynamic_state_s*, %struct.zlib_dynamic_state_s** %dynamic4, align 8, !tbaa !13
  %11 = bitcast %struct.zlib_dynamic_state_s* %10 to i8*
  call void %5(%struct.gs_memory_s* %8, i8* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @eprintf_program_ident(i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare void @lprintf_file_and_line(i8*, i32) #0

declare i32 @errprintf_nomem(i8*, ...) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 108}
!6 = !{!"stream_zlib_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !2, i64 136}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !7, i64 112}
!9 = !{!6, !7, i64 116}
!10 = !{!6, !7, i64 120}
!11 = !{!6, !7, i64 124}
!12 = !{!6, !7, i64 128}
!13 = !{!6, !2, i64 136}
!14 = !{!6, !2, i64 8}
!15 = !{!16, !2, i64 80}
!16 = !{!"gs_memory_s", !2, i64 0, !17, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!17 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!18 = !{!19, !2, i64 8}
!19 = !{!"zlib_dynamic_state_s", !2, i64 0, !2, i64 8, !20, i64 16}
!20 = !{!"z_stream_s", !2, i64 0, !7, i64 8, !21, i64 16, !2, i64 24, !7, i64 32, !21, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !7, i64 88, !21, i64 96, !21, i64 104}
!21 = !{!"long", !3, i64 0}
!22 = !{!19, !2, i64 0}
!23 = !{!19, !2, i64 80}
!24 = !{!19, !2, i64 88}
!25 = !{!19, !2, i64 96}
!26 = !{!7, !7, i64 0}
!27 = !{!16, !2, i64 0}
!28 = !{!16, !2, i64 72}
!29 = !{!16, !2, i64 96}
!30 = !{!16, !2, i64 24}
!31 = !{!32, !2, i64 0}
!32 = !{!"zlib_block_s", !2, i64 0, !2, i64 8, !2, i64 16}
!33 = !{!32, !2, i64 8}
!34 = !{!32, !2, i64 16}
