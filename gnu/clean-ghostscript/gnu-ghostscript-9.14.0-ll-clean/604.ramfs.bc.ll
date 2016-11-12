; ModuleID = './ramfs.bc'
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct._ramfs = type { %struct._ramdirent*, %struct._ramfs_enum*, %struct.gs_memory_s*, i32, i32 }
%struct._ramdirent = type { i8*, %struct._ramfile*, %struct._ramdirent* }
%struct._ramfile = type { %struct._ramfs*, i32, i32, i32, i32, i8** }
%struct._ramfs_enum = type { %struct._ramfs*, %struct._ramdirent*, %struct._ramfs_enum* }
%struct._ramhandle = type { %struct._ramfile*, i32, i32, i32 }

@st_ramfs = internal constant %struct.gs_memory_struct_type_s { i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @_ramfs_reloc_ptrs to i8*) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"ramfs_new\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"ramfs_destroy, filename\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ramfs_destroy, entry\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ramfs_destroy\00", align 1
@st_ramdirent = internal constant %struct.gs_memory_struct_type_s { i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @_ramdirent_reloc_ptrs to i8*) }, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"new ram directory entry\00", align 1
@st_ramfile = internal constant %struct.gs_memory_struct_type_s { i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @_ramfile_reloc_ptrs to i8*) }, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"new ram file\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ramfs filename\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"error, cleanup directory entry\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"error, cleanup ram file\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"error, cleanup ram filename\00", align 1
@st_ramhandle = internal constant %struct.gs_memory_struct_type_s { i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @_ramhandle_reloc_ptrs to i8*) }, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"ramfs rename\00", align 1
@st_ramfs_enum = internal constant %struct.gs_memory_struct_type_s { i32 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @_ramfs_enum_reloc_ptrs to i8*) }, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"new ramfs enumerator\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"free ramfs enumerator\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"ramfs close\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"gsram_ramfs\00", align 1
@_ramfs_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @_ramfs_enum_ptrs, i32 0, i32 0) }, align 8
@_ramfs_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 16 }], align 2
@.str.16 = private unnamed_addr constant [16 x i8] c"gsram_ramdirent\00", align 1
@_ramdirent_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @_ramdirent_enum_ptrs, i32 0, i32 0) }, align 8
@_ramdirent_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 16 }], align 2
@.str.17 = private unnamed_addr constant [14 x i8] c"gsram_ramfile\00", align 1
@_ramfile_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @_ramfile_enum_ptrs, i32 0, i32 0) }, align 8
@_ramfile_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 24 }], align 2
@.str.18 = private unnamed_addr constant [16 x i8] c"gsram_ramhandle\00", align 1
@_ramhandle_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @_ramhandle_enum_ptrs, i32 0, i32 0) }, align 8
@_ramhandle_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] zeroinitializer, align 2
@.str.19 = private unnamed_addr constant [13 x i8] c"ramfs resize\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"ramfs resize, free buffer\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"unlink node\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"gsram_ramfs_enum\00", align 1
@_ramfs_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @_ramfs_enum_enum_ptrs, i32 0, i32 0) }, align 8
@_ramfs_enum_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 16 }], align 2

; Function Attrs: nounwind uwtable
define %struct._ramfs* @ramfs_new(%struct.gs_memory_s* %mem, i32 %size) #0 {
entry:
  %retval = alloca %struct._ramfs*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %fs = alloca %struct._ramfs*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 0
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %3 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !10
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory1, align 8, !tbaa !7
  %call = call i8* %3(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* @st_ramfs, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)) #5
  %6 = bitcast i8* %call to %struct._ramfs*
  store %struct._ramfs* %6, %struct._ramfs** %fs, align 8, !tbaa !1
  %7 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %cmp = icmp eq %struct._ramfs* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._ramfs* null, %struct._ramfs** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = sdiv i32 %8, 1
  store i32 %div, i32* %size.addr, align 4, !tbaa !5
  %9 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %files = getelementptr inbounds %struct._ramfs, %struct._ramfs* %9, i32 0, i32 0
  store %struct._ramdirent* null, %struct._ramdirent** %files, align 8, !tbaa !11
  %10 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %active_enums = getelementptr inbounds %struct._ramfs, %struct._ramfs* %10, i32 0, i32 1
  store %struct._ramfs_enum* null, %struct._ramfs_enum** %active_enums, align 8, !tbaa !13
  %11 = load i32, i32* %size.addr, align 4, !tbaa !5
  %12 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %blocksfree = getelementptr inbounds %struct._ramfs, %struct._ramfs* %12, i32 0, i32 3
  store i32 %11, i32* %blocksfree, align 4, !tbaa !14
  %13 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %last_error = getelementptr inbounds %struct._ramfs, %struct._ramfs* %13, i32 0, i32 4
  store i32 0, i32* %last_error, align 4, !tbaa !15
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct._ramfs, %struct._ramfs* %15, i32 0, i32 2
  store %struct.gs_memory_s* %14, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %16 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !1
  store %struct._ramfs* %16, %struct._ramfs** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast %struct._ramfs** %fs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load %struct._ramfs*, %struct._ramfs** %retval
  ret %struct._ramfs* %18
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @ramfs_destroy(%struct.gs_memory_s* %mem, %struct._ramfs* %fs) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %fs.addr = alloca %struct._ramfs*, align 8
  %ent = alloca %struct._ramdirent*, align 8
  %cleanup.dest.slot = alloca i32
  %prev = alloca %struct._ramdirent*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct._ramfs* %fs, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %0 = bitcast %struct._ramdirent** %ent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._ramfs* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %files = getelementptr inbounds %struct._ramfs, %struct._ramfs* %2, i32 0, i32 0
  %3 = load %struct._ramdirent*, %struct._ramdirent** %files, align 8, !tbaa !11
  store %struct._ramdirent* %3, %struct._ramdirent** %ent, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %struct._ramdirent*, %struct._ramdirent** %ent, align 8, !tbaa !1
  %tobool = icmp ne %struct._ramdirent* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = bitcast %struct._ramdirent** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load %struct._ramdirent*, %struct._ramdirent** %ent, align 8, !tbaa !1
  %filename = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %9, i32 0, i32 0
  %10 = load i8*, i8** %filename, align 8, !tbaa !18
  call void %7(%struct.gs_memory_s* %8, i8* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #5
  %11 = load %struct._ramdirent*, %struct._ramdirent** %ent, align 8, !tbaa !1
  %inode = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %11, i32 0, i32 1
  %12 = load %struct._ramfile*, %struct._ramfile** %inode, align 8, !tbaa !20
  call void @unlink_node(%struct._ramfile* %12) #5
  %13 = load %struct._ramdirent*, %struct._ramdirent** %ent, align 8, !tbaa !1
  store %struct._ramdirent* %13, %struct._ramdirent** %prev, align 8, !tbaa !1
  %14 = load %struct._ramdirent*, %struct._ramdirent** %ent, align 8, !tbaa !1
  %next = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %14, i32 0, i32 2
  %15 = load %struct._ramdirent*, %struct._ramdirent** %next, align 8, !tbaa !21
  store %struct._ramdirent* %15, %struct._ramdirent** %ent, align 8, !tbaa !1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %free_object2 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 2
  %17 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object2, align 8, !tbaa !17
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = load %struct._ramdirent*, %struct._ramdirent** %prev, align 8, !tbaa !1
  %20 = bitcast %struct._ramdirent* %19 to i8*
  call void %17(%struct.gs_memory_s* %18, i8* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #5
  %21 = bitcast %struct._ramdirent** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %free_object4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 2
  %23 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object4, align 8, !tbaa !17
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %26 = bitcast %struct._ramfs* %25 to i8*
  call void %23(%struct.gs_memory_s* %24, i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %27 = bitcast %struct._ramdirent** %ent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
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
define internal void @unlink_node(%struct._ramfile* %inode) #0 {
entry:
  %inode.addr = alloca %struct._ramfile*, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._ramfile* %inode, %struct._ramfile** %inode.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._ramfile*, %struct._ramfile** %inode.addr, align 8, !tbaa !1
  %refcount = getelementptr inbounds %struct._ramfile, %struct._ramfile* %1, i32 0, i32 1
  %2 = load i32, i32* %refcount, align 4, !tbaa !22
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %refcount, align 4, !tbaa !22
  %3 = load %struct._ramfile*, %struct._ramfile** %inode.addr, align 8, !tbaa !1
  %refcount1 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %3, i32 0, i32 1
  %4 = load i32, i32* %refcount1, align 4, !tbaa !22
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %c, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %c, align 4, !tbaa !5
  %6 = load %struct._ramfile*, %struct._ramfile** %inode.addr, align 8, !tbaa !1
  %blocks = getelementptr inbounds %struct._ramfile, %struct._ramfile* %6, i32 0, i32 3
  %7 = load i32, i32* %blocks, align 4, !tbaa !24
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._ramfile*, %struct._ramfile** %inode.addr, align 8, !tbaa !1
  %fs = getelementptr inbounds %struct._ramfile, %struct._ramfile* %8, i32 0, i32 0
  %9 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !25
  %memory = getelementptr inbounds %struct._ramfs, %struct._ramfs* %9, i32 0, i32 2
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %11 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %12 = load %struct._ramfile*, %struct._ramfile** %inode.addr, align 8, !tbaa !1
  %fs2 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %12, i32 0, i32 0
  %13 = load %struct._ramfs*, %struct._ramfs** %fs2, align 8, !tbaa !25
  %memory3 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %13, i32 0, i32 2
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !16
  %15 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %16 = load %struct._ramfile*, %struct._ramfile** %inode.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._ramfile, %struct._ramfile* %16, i32 0, i32 5
  %17 = load i8**, i8*** %data, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %18 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  call void %11(%struct.gs_memory_s* %14, i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %c, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %c, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %c, align 4, !tbaa !5
  %21 = load %struct._ramfile*, %struct._ramfile** %inode.addr, align 8, !tbaa !1
  %fs4 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %21, i32 0, i32 0
  %22 = load %struct._ramfs*, %struct._ramfs** %fs4, align 8, !tbaa !25
  %blocksfree = getelementptr inbounds %struct._ramfs, %struct._ramfs* %22, i32 0, i32 3
  %23 = load i32, i32* %blocksfree, align 4, !tbaa !14
  %add = add nsw i32 %23, %20
  store i32 %add, i32* %blocksfree, align 4, !tbaa !14
  %24 = load %struct._ramfile*, %struct._ramfile** %inode.addr, align 8, !tbaa !1
  %fs5 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %24, i32 0, i32 0
  %25 = load %struct._ramfs*, %struct._ramfs** %fs5, align 8, !tbaa !25
  %memory6 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %25, i32 0, i32 2
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !16
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %free_object8 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %27 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object8, align 8, !tbaa !17
  %28 = load %struct._ramfile*, %struct._ramfile** %inode.addr, align 8, !tbaa !1
  %fs9 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %28, i32 0, i32 0
  %29 = load %struct._ramfs*, %struct._ramfs** %fs9, align 8, !tbaa !25
  %memory10 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %29, i32 0, i32 2
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !16
  %31 = load %struct._ramfile*, %struct._ramfile** %inode.addr, align 8, !tbaa !1
  %data11 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %31, i32 0, i32 5
  %32 = load i8**, i8*** %data11, align 8, !tbaa !26
  %33 = bitcast i8** %32 to i8*
  call void %27(%struct.gs_memory_s* %30, i8* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #5
  %34 = load %struct._ramfile*, %struct._ramfile** %inode.addr, align 8, !tbaa !1
  %fs12 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %34, i32 0, i32 0
  %35 = load %struct._ramfs*, %struct._ramfs** %fs12, align 8, !tbaa !25
  %memory13 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %35, i32 0, i32 2
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !16
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %free_object15 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %37 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object15, align 8, !tbaa !17
  %38 = load %struct._ramfile*, %struct._ramfile** %inode.addr, align 8, !tbaa !1
  %fs16 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %38, i32 0, i32 0
  %39 = load %struct._ramfs*, %struct._ramfs** %fs16, align 8, !tbaa !25
  %memory17 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %39, i32 0, i32 2
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !16
  %41 = load %struct._ramfile*, %struct._ramfile** %inode.addr, align 8, !tbaa !1
  %42 = bitcast %struct._ramfile* %41 to i8*
  call void %37(%struct.gs_memory_s* %40, i8* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %43 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
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
define i32 @ramfs_error(%struct._ramfs* %fs) #0 {
entry:
  %fs.addr = alloca %struct._ramfs*, align 8
  store %struct._ramfs* %fs, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %0 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %last_error = getelementptr inbounds %struct._ramfs, %struct._ramfs* %0, i32 0, i32 4
  %1 = load i32, i32* %last_error, align 4, !tbaa !15
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define %struct._ramhandle* @ramfs_open(%struct.gs_memory_s* %mem, %struct._ramfs* %fs, i8* %filename, i32 %mode) #0 {
entry:
  %retval = alloca %struct._ramhandle*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %fs.addr = alloca %struct._ramfs*, align 8
  %filename.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %this = alloca %struct._ramdirent*, align 8
  %file = alloca %struct._ramfile*, align 8
  %handle = alloca %struct._ramhandle*, align 8
  %dirent_filename = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct._ramfs* %fs, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !5
  %0 = bitcast %struct._ramdirent** %this to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._ramfile** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._ramhandle** %handle to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %and = and i32 %3, 18
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %or = or i32 %4, 4
  store i32 %or, i32* %mode.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call = call %struct._ramdirent* @ramfs_findfile(%struct._ramfs* %5, i8* %6) #5
  store %struct._ramdirent* %call, %struct._ramdirent** %this, align 8, !tbaa !1
  %7 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %tobool1 = icmp ne %struct._ramdirent* %7, null
  br i1 %tobool1, label %if.end.46, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %8 = bitcast i8** %dirent_filename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %and3 = and i32 %9, 2
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.then.2
  %10 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %last_error = getelementptr inbounds %struct._ramfs, %struct._ramfs* %10, i32 0, i32 4
  store i32 2, i32* %last_error, align 4, !tbaa !15
  store %struct._ramhandle* null, %struct._ramhandle** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.then.2
  %11 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct._ramfs, %struct._ramfs* %11, i32 0, i32 2
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 0
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %14 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !10
  %15 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %15, i32 0, i32 2
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !16
  %stable_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 0
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory8, align 8, !tbaa !7
  %call9 = call i8* %14(%struct.gs_memory_s* %17, %struct.gs_memory_struct_type_s* @st_ramdirent, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #5
  %18 = bitcast i8* %call9 to %struct._ramdirent*
  store %struct._ramdirent* %18, %struct._ramdirent** %this, align 8, !tbaa !1
  %19 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %19, i32 0, i32 2
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !16
  %stable_memory11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 0
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory11, align 8, !tbaa !7
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %alloc_struct13 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 8
  %22 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct13, align 8, !tbaa !10
  %23 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %23, i32 0, i32 2
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !16
  %stable_memory15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 0
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory15, align 8, !tbaa !7
  %call16 = call i8* %22(%struct.gs_memory_s* %25, %struct.gs_memory_struct_type_s* @st_ramfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)) #5
  %26 = bitcast i8* %call16 to %struct._ramfile*
  store %struct._ramfile* %26, %struct._ramfile** %file, align 8, !tbaa !1
  %27 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %27, i32 0, i32 2
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !16
  %stable_memory18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 0
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory18, align 8, !tbaa !7
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 7
  %30 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !27
  %31 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %31, i32 0, i32 2
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !16
  %stable_memory21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 0
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory21, align 8, !tbaa !7
  %34 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call22 = call i64 @strlen(i8* %34) #6
  %add = add i64 %call22, 1
  %conv = trunc i64 %add to i32
  %call23 = call i8* %30(%struct.gs_memory_s* %33, i32 %conv, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #5
  store i8* %call23, i8** %dirent_filename, align 8, !tbaa !1
  %35 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %tobool24 = icmp ne %struct._ramdirent* %35, null
  br i1 %tobool24, label %land.lhs.true, label %if.then.28

land.lhs.true:                                    ; preds = %if.end.6
  %36 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %tobool25 = icmp ne %struct._ramfile* %36, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.then.28

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %37 = load i8*, i8** %dirent_filename, align 8, !tbaa !1
  %tobool27 = icmp ne i8* %37, null
  br i1 %tobool27, label %if.end.41, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.26, %land.lhs.true, %if.end.6
  %38 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory29 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %38, i32 0, i32 2
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory29, align 8, !tbaa !16
  %procs30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs30, i32 0, i32 2
  %40 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %41 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory31 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %41, i32 0, i32 2
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory31, align 8, !tbaa !16
  %43 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %44 = bitcast %struct._ramdirent* %43 to i8*
  call void %40(%struct.gs_memory_s* %42, i8* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0)) #5
  %45 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %45, i32 0, i32 2
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !16
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %free_object34 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 2
  %47 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object34, align 8, !tbaa !17
  %48 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %48, i32 0, i32 2
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory35, align 8, !tbaa !16
  %50 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %51 = bitcast %struct._ramfile* %50 to i8*
  call void %47(%struct.gs_memory_s* %49, i8* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0)) #5
  %52 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %52, i32 0, i32 2
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory36, align 8, !tbaa !16
  %procs37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 1
  %free_object38 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs37, i32 0, i32 2
  %54 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object38, align 8, !tbaa !17
  %55 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %55, i32 0, i32 2
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory39, align 8, !tbaa !16
  %57 = load i8*, i8** %dirent_filename, align 8, !tbaa !1
  call void %54(%struct.gs_memory_s* %56, i8* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)) #5
  %58 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %last_error40 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %58, i32 0, i32 4
  store i32 6, i32* %last_error40, align 4, !tbaa !15
  store %struct._ramhandle* null, %struct._ramhandle** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %land.lhs.true.26
  %59 = load i8*, i8** %dirent_filename, align 8, !tbaa !1
  %60 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call42 = call i8* @strcpy(i8* %59, i8* %60) #7
  %61 = load i8*, i8** %dirent_filename, align 8, !tbaa !1
  %62 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %filename43 = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %62, i32 0, i32 0
  store i8* %61, i8** %filename43, align 8, !tbaa !18
  %63 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %refcount = getelementptr inbounds %struct._ramfile, %struct._ramfile* %63, i32 0, i32 1
  store i32 1, i32* %refcount, align 4, !tbaa !22
  %64 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %size = getelementptr inbounds %struct._ramfile, %struct._ramfile* %64, i32 0, i32 2
  store i32 0, i32* %size, align 4, !tbaa !28
  %65 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %blocks = getelementptr inbounds %struct._ramfile, %struct._ramfile* %65, i32 0, i32 3
  store i32 0, i32* %blocks, align 4, !tbaa !24
  %66 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %blocklist_size = getelementptr inbounds %struct._ramfile, %struct._ramfile* %66, i32 0, i32 4
  store i32 0, i32* %blocklist_size, align 4, !tbaa !29
  %67 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._ramfile, %struct._ramfile* %67, i32 0, i32 5
  store i8** null, i8*** %data, align 8, !tbaa !26
  %68 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %69 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %fs44 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %69, i32 0, i32 0
  store %struct._ramfs* %68, %struct._ramfs** %fs44, align 8, !tbaa !25
  %70 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %71 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %inode = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %71, i32 0, i32 1
  store %struct._ramfile* %70, %struct._ramfile** %inode, align 8, !tbaa !20
  %72 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %files = getelementptr inbounds %struct._ramfs, %struct._ramfs* %72, i32 0, i32 0
  %73 = load %struct._ramdirent*, %struct._ramdirent** %files, align 8, !tbaa !11
  %74 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %next = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %74, i32 0, i32 2
  store %struct._ramdirent* %73, %struct._ramdirent** %next, align 8, !tbaa !21
  %75 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %76 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %files45 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %76, i32 0, i32 0
  store %struct._ramdirent* %75, %struct._ramdirent** %files45, align 8, !tbaa !11
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.41, %if.then.28, %if.then.5
  %77 = bitcast i8** %dirent_filename to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.67 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.46

if.end.46:                                        ; preds = %cleanup.cont, %if.end
  %78 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %inode47 = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %78, i32 0, i32 1
  %79 = load %struct._ramfile*, %struct._ramfile** %inode47, align 8, !tbaa !20
  store %struct._ramfile* %79, %struct._ramfile** %file, align 8, !tbaa !1
  %80 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %refcount48 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %80, i32 0, i32 1
  %81 = load i32, i32* %refcount48, align 4, !tbaa !22
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %refcount48, align 4, !tbaa !22
  %82 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory49 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %82, i32 0, i32 2
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory49, align 8, !tbaa !16
  %stable_memory50 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %83, i32 0, i32 0
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory50, align 8, !tbaa !7
  %procs51 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %84, i32 0, i32 1
  %alloc_struct52 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs51, i32 0, i32 8
  %85 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct52, align 8, !tbaa !10
  %86 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory53 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %86, i32 0, i32 2
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory53, align 8, !tbaa !16
  %stable_memory54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %87, i32 0, i32 0
  %88 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory54, align 8, !tbaa !7
  %call55 = call i8* %85(%struct.gs_memory_s* %88, %struct.gs_memory_struct_type_s* @st_ramhandle, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #5
  %89 = bitcast i8* %call55 to %struct._ramhandle*
  store %struct._ramhandle* %89, %struct._ramhandle** %handle, align 8, !tbaa !1
  %90 = load %struct._ramhandle*, %struct._ramhandle** %handle, align 8, !tbaa !1
  %tobool56 = icmp ne %struct._ramhandle* %90, null
  br i1 %tobool56, label %if.end.59, label %if.then.57

if.then.57:                                       ; preds = %if.end.46
  %91 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %last_error58 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %91, i32 0, i32 4
  store i32 6, i32* %last_error58, align 4, !tbaa !15
  store %struct._ramhandle* null, %struct._ramhandle** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end.59:                                        ; preds = %if.end.46
  %92 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %93 = load %struct._ramhandle*, %struct._ramhandle** %handle, align 8, !tbaa !1
  %file60 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %93, i32 0, i32 0
  store %struct._ramfile* %92, %struct._ramfile** %file60, align 8, !tbaa !30
  %94 = load %struct._ramhandle*, %struct._ramhandle** %handle, align 8, !tbaa !1
  %filepos = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %94, i32 0, i32 2
  store i32 0, i32* %filepos, align 4, !tbaa !32
  %95 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %96 = load %struct._ramhandle*, %struct._ramhandle** %handle, align 8, !tbaa !1
  %mode61 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %96, i32 0, i32 3
  store i32 %95, i32* %mode61, align 4, !tbaa !33
  %97 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %and62 = and i32 %97, 8
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.59
  %98 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %call65 = call i32 @resize(%struct._ramfile* %98, i32 0) #5
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.end.59
  %99 = load %struct._ramhandle*, %struct._ramhandle** %handle, align 8, !tbaa !1
  store %struct._ramhandle* %99, %struct._ramhandle** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %if.end.66, %if.then.57, %cleanup
  %100 = bitcast %struct._ramhandle** %handle to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast %struct._ramfile** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast %struct._ramdirent** %this to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = load %struct._ramhandle*, %struct._ramhandle** %retval
  ret %struct._ramhandle* %103
}

; Function Attrs: nounwind uwtable
define internal %struct._ramdirent* @ramfs_findfile(%struct._ramfs* %fs, i8* %filename) #0 {
entry:
  %fs.addr = alloca %struct._ramfs*, align 8
  %filename.addr = alloca i8*, align 8
  %this = alloca %struct._ramdirent*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct._ramfs* %fs, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  %0 = bitcast %struct._ramdirent** %this to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %files = getelementptr inbounds %struct._ramfs, %struct._ramfs* %1, i32 0, i32 0
  %2 = load %struct._ramdirent*, %struct._ramdirent** %files, align 8, !tbaa !11
  store %struct._ramdirent* %2, %struct._ramdirent** %this, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %tobool = icmp ne %struct._ramdirent* %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %filename1 = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %6, i32 0, i32 0
  %7 = load i8*, i8** %filename1, align 8, !tbaa !18
  %8 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call = call i32 @strcmp(i8* %7, i8* %8) #7
  store i32 %call, i32* %tmp, !tbaa !5
  %9 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %tmp, !tbaa !5
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %12 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %next = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %12, i32 0, i32 2
  %13 = load %struct._ramdirent*, %struct._ramdirent** %next, align 8, !tbaa !21
  store %struct._ramdirent* %13, %struct._ramdirent** %this, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %14 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %15 = bitcast %struct._ramdirent** %this to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret %struct._ramdirent* %14
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @resize(%struct._ramfile* %file, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct._ramfile*, align 8
  %size.addr = alloca i32, align 4
  %newblocks = alloca i32, align 4
  %buf = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %newsize = alloca i32, align 4
  %block = alloca i8*, align 8
  store %struct._ramfile* %file, %struct._ramfile** %file.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %newblocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %add = add nsw i32 %1, 1024
  %sub = sub nsw i32 %add, 1
  %div = sdiv i32 %sub, 1024
  store i32 %div, i32* %newblocks, align 4, !tbaa !5
  %2 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %newblocks, align 4, !tbaa !5
  %4 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %blocks = getelementptr inbounds %struct._ramfile, %struct._ramfile* %4, i32 0, i32 3
  %5 = load i32, i32* %blocks, align 4, !tbaa !24
  %cmp = icmp sgt i32 %3, %5
  br i1 %cmp, label %if.then, label %if.else.65

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %newblocks, align 4, !tbaa !5
  %7 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %blocks1 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %7, i32 0, i32 3
  %8 = load i32, i32* %blocks1, align 4, !tbaa !24
  %sub2 = sub nsw i32 %6, %8
  %9 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %fs = getelementptr inbounds %struct._ramfile, %struct._ramfile* %9, i32 0, i32 0
  %10 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !25
  %blocksfree = getelementptr inbounds %struct._ramfs, %struct._ramfs* %10, i32 0, i32 3
  %11 = load i32, i32* %blocksfree, align 4, !tbaa !14
  %cmp3 = icmp sgt i32 %sub2, %11
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

if.end:                                           ; preds = %if.then
  %12 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %blocklist_size = getelementptr inbounds %struct._ramfile, %struct._ramfile* %12, i32 0, i32 4
  %13 = load i32, i32* %blocklist_size, align 4, !tbaa !29
  %14 = load i32, i32* %newblocks, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %13, %14
  br i1 %cmp5, label %if.then.6, label %if.end.38

if.then.6:                                        ; preds = %if.end
  %15 = bitcast i32* %newsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %blocklist_size7 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %16, i32 0, i32 4
  %17 = load i32, i32* %blocklist_size7, align 4, !tbaa !29
  store i32 %17, i32* %newsize, align 4, !tbaa !5
  %18 = load i32, i32* %newsize, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %18, 128
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  %19 = load i32, i32* %newblocks, align 4, !tbaa !5
  %add10 = add nsw i32 %19, 128
  %sub11 = sub nsw i32 %add10, 1
  %div12 = sdiv i32 %sub11, 128
  %mul = mul nsw i32 %div12, 128
  store i32 %mul, i32* %newsize, align 4, !tbaa !5
  br label %if.end.17

if.else:                                          ; preds = %if.then.6
  %20 = load i32, i32* %newsize, align 4, !tbaa !5
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.else
  store i32 1, i32* %newsize, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.14
  %21 = load i32, i32* %newsize, align 4, !tbaa !5
  %22 = load i32, i32* %newblocks, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %21, %22
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i32, i32* %newsize, align 4, !tbaa !5
  %mul16 = mul nsw i32 %23, 2
  store i32 %mul16, i32* %newsize, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.17

if.end.17:                                        ; preds = %while.end, %if.then.9
  %24 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %fs18 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %24, i32 0, i32 0
  %25 = load %struct._ramfs*, %struct._ramfs** %fs18, align 8, !tbaa !25
  %memory = getelementptr inbounds %struct._ramfs, %struct._ramfs* %25, i32 0, i32 2
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 0
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %28 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !27
  %29 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %fs19 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %29, i32 0, i32 0
  %30 = load %struct._ramfs*, %struct._ramfs** %fs19, align 8, !tbaa !25
  %memory20 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %30, i32 0, i32 2
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !16
  %stable_memory21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 0
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory21, align 8, !tbaa !7
  %33 = load i32, i32* %newsize, align 4, !tbaa !5
  %conv = sext i32 %33 to i64
  %mul22 = mul i64 %conv, 8
  %conv23 = trunc i64 %mul22 to i32
  %call = call i8* %28(%struct.gs_memory_s* %32, i32 %conv23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #5
  store i8* %call, i8** %buf, align 8, !tbaa !1
  %34 = load i8*, i8** %buf, align 8, !tbaa !1
  %tobool24 = icmp ne i8* %34, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.17
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.17
  %35 = load i8*, i8** %buf, align 8, !tbaa !1
  %36 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._ramfile, %struct._ramfile* %36, i32 0, i32 5
  %37 = load i8**, i8*** %data, align 8, !tbaa !26
  %38 = bitcast i8** %37 to i8*
  %39 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %blocklist_size27 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %39, i32 0, i32 4
  %40 = load i32, i32* %blocklist_size27, align 4, !tbaa !29
  %conv28 = sext i32 %40 to i64
  %call29 = call i8* @memcpy(i8* %35, i8* %38, i64 %conv28) #7
  %41 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %fs30 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %41, i32 0, i32 0
  %42 = load %struct._ramfs*, %struct._ramfs** %fs30, align 8, !tbaa !25
  %memory31 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %42, i32 0, i32 2
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory31, align 8, !tbaa !16
  %procs32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs32, i32 0, i32 2
  %44 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %45 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %fs33 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %45, i32 0, i32 0
  %46 = load %struct._ramfs*, %struct._ramfs** %fs33, align 8, !tbaa !25
  %memory34 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %46, i32 0, i32 2
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory34, align 8, !tbaa !16
  %48 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %data35 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %48, i32 0, i32 5
  %49 = load i8**, i8*** %data35, align 8, !tbaa !26
  %50 = bitcast i8** %49 to i8*
  call void %44(%struct.gs_memory_s* %47, i8* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0)) #5
  %51 = load i8*, i8** %buf, align 8, !tbaa !1
  %52 = bitcast i8* %51 to i8**
  %53 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %data36 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %53, i32 0, i32 5
  store i8** %52, i8*** %data36, align 8, !tbaa !26
  %54 = load i32, i32* %newsize, align 4, !tbaa !5
  %55 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %blocklist_size37 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %55, i32 0, i32 4
  store i32 %54, i32* %blocklist_size37, align 4, !tbaa !29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25
  %56 = bitcast i32* %newsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.95 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont, %if.end
  br label %while.cond.39

while.cond.39:                                    ; preds = %cleanup.cont.63, %if.end.38
  %57 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %blocks40 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %57, i32 0, i32 3
  %58 = load i32, i32* %blocks40, align 4, !tbaa !24
  %59 = load i32, i32* %newblocks, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %58, %59
  br i1 %cmp41, label %while.body.43, label %while.end.64

while.body.43:                                    ; preds = %while.cond.39
  %60 = bitcast i8** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  %61 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %fs44 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %61, i32 0, i32 0
  %62 = load %struct._ramfs*, %struct._ramfs** %fs44, align 8, !tbaa !25
  %memory45 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %62, i32 0, i32 2
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory45, align 8, !tbaa !16
  %stable_memory46 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 0
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory46, align 8, !tbaa !7
  %procs47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 1
  %alloc_bytes48 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs47, i32 0, i32 7
  %65 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes48, align 8, !tbaa !27
  %66 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %fs49 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %66, i32 0, i32 0
  %67 = load %struct._ramfs*, %struct._ramfs** %fs49, align 8, !tbaa !25
  %memory50 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %67, i32 0, i32 2
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory50, align 8, !tbaa !16
  %stable_memory51 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 0
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory51, align 8, !tbaa !7
  %call52 = call i8* %65(%struct.gs_memory_s* %69, i32 1024, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #5
  %70 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %blocks53 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %70, i32 0, i32 3
  %71 = load i32, i32* %blocks53, align 4, !tbaa !24
  %idxprom = sext i32 %71 to i64
  %72 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %data54 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %72, i32 0, i32 5
  %73 = load i8**, i8*** %data54, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds i8*, i8** %73, i64 %idxprom
  store i8* %call52, i8** %arrayidx, align 8, !tbaa !1
  store i8* %call52, i8** %block, align 8, !tbaa !1
  %74 = load i8*, i8** %block, align 8, !tbaa !1
  %tobool55 = icmp ne i8* %74, null
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %while.body.43
  store i32 -6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

if.end.57:                                        ; preds = %while.body.43
  %75 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %blocks58 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %75, i32 0, i32 3
  %76 = load i32, i32* %blocks58, align 4, !tbaa !24
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %blocks58, align 4, !tbaa !24
  %77 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %fs59 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %77, i32 0, i32 0
  %78 = load %struct._ramfs*, %struct._ramfs** %fs59, align 8, !tbaa !25
  %blocksfree60 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %78, i32 0, i32 3
  %79 = load i32, i32* %blocksfree60, align 4, !tbaa !14
  %dec = add nsw i32 %79, -1
  store i32 %dec, i32* %blocksfree60, align 4, !tbaa !14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.61

cleanup.61:                                       ; preds = %if.end.57, %if.then.56
  %80 = bitcast i8** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %cleanup.dest.62 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.62, label %cleanup.95 [
    i32 0, label %cleanup.cont.63
  ]

cleanup.cont.63:                                  ; preds = %cleanup.61
  br label %while.cond.39

while.end.64:                                     ; preds = %while.cond.39
  br label %if.end.93

if.else.65:                                       ; preds = %entry
  %81 = load i32, i32* %newblocks, align 4, !tbaa !5
  %82 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %blocks66 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %82, i32 0, i32 3
  %83 = load i32, i32* %blocks66, align 4, !tbaa !24
  %cmp67 = icmp slt i32 %81, %83
  br i1 %cmp67, label %if.then.69, label %if.end.92

if.then.69:                                       ; preds = %if.else.65
  %84 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %blocks70 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %84, i32 0, i32 3
  %85 = load i32, i32* %blocks70, align 4, !tbaa !24
  %86 = load i32, i32* %newblocks, align 4, !tbaa !5
  %sub71 = sub nsw i32 %85, %86
  %87 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %fs72 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %87, i32 0, i32 0
  %88 = load %struct._ramfs*, %struct._ramfs** %fs72, align 8, !tbaa !25
  %blocksfree73 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %88, i32 0, i32 3
  %89 = load i32, i32* %blocksfree73, align 4, !tbaa !14
  %add74 = add nsw i32 %89, %sub71
  store i32 %add74, i32* %blocksfree73, align 4, !tbaa !14
  br label %while.cond.75

while.cond.75:                                    ; preds = %while.body.79, %if.then.69
  %90 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %blocks76 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %90, i32 0, i32 3
  %91 = load i32, i32* %blocks76, align 4, !tbaa !24
  %92 = load i32, i32* %newblocks, align 4, !tbaa !5
  %cmp77 = icmp sgt i32 %91, %92
  br i1 %cmp77, label %while.body.79, label %while.end.91

while.body.79:                                    ; preds = %while.cond.75
  %93 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %fs80 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %93, i32 0, i32 0
  %94 = load %struct._ramfs*, %struct._ramfs** %fs80, align 8, !tbaa !25
  %memory81 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %94, i32 0, i32 2
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory81, align 8, !tbaa !16
  %procs82 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 1
  %free_object83 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs82, i32 0, i32 2
  %96 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object83, align 8, !tbaa !17
  %97 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %fs84 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %97, i32 0, i32 0
  %98 = load %struct._ramfs*, %struct._ramfs** %fs84, align 8, !tbaa !25
  %memory85 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %98, i32 0, i32 2
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory85, align 8, !tbaa !16
  %100 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %blocks86 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %100, i32 0, i32 3
  %101 = load i32, i32* %blocks86, align 4, !tbaa !24
  %dec87 = add nsw i32 %101, -1
  store i32 %dec87, i32* %blocks86, align 4, !tbaa !24
  %idxprom88 = sext i32 %dec87 to i64
  %102 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %data89 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %102, i32 0, i32 5
  %103 = load i8**, i8*** %data89, align 8, !tbaa !26
  %arrayidx90 = getelementptr inbounds i8*, i8** %103, i64 %idxprom88
  %104 = load i8*, i8** %arrayidx90, align 8, !tbaa !1
  call void %96(%struct.gs_memory_s* %99, i8* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #5
  br label %while.cond.75

while.end.91:                                     ; preds = %while.cond.75
  br label %if.end.92

if.end.92:                                        ; preds = %while.end.91, %if.else.65
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %while.end.64
  %105 = load i32, i32* %size.addr, align 4, !tbaa !5
  %106 = load %struct._ramfile*, %struct._ramfile** %file.addr, align 8, !tbaa !1
  %size94 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %106, i32 0, i32 2
  store i32 %105, i32* %size94, align 4, !tbaa !28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

cleanup.95:                                       ; preds = %if.end.93, %cleanup.61, %cleanup, %if.then.4
  %107 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i32* %newblocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = load i32, i32* %retval
  ret i32 %109
}

; Function Attrs: nounwind uwtable
define i32 @ramfs_blocksize(%struct._ramfs* %fs) #0 {
entry:
  %fs.addr = alloca %struct._ramfs*, align 8
  store %struct._ramfs* %fs, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  ret i32 1024
}

; Function Attrs: nounwind uwtable
define i32 @ramfs_blocksfree(%struct._ramfs* %fs) #0 {
entry:
  %fs.addr = alloca %struct._ramfs*, align 8
  store %struct._ramfs* %fs, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %0 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %blocksfree = getelementptr inbounds %struct._ramfs, %struct._ramfs* %0, i32 0, i32 3
  %1 = load i32, i32* %blocksfree, align 4, !tbaa !14
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @ramfile_error(%struct._ramhandle* %handle) #0 {
entry:
  %handle.addr = alloca %struct._ramhandle*, align 8
  store %struct._ramhandle* %handle, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %0 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %last_error = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %0, i32 0, i32 1
  %1 = load i32, i32* %last_error, align 4, !tbaa !34
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @ramfs_unlink(%struct._ramfs* %fs, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct._ramfs*, align 8
  %filename.addr = alloca i8*, align 8
  %last = alloca %struct._ramdirent**, align 8
  %this = alloca %struct._ramdirent*, align 8
  %e = alloca %struct._ramfs_enum*, align 8
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct._ramfs* %fs, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  %0 = bitcast %struct._ramdirent*** %last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._ramdirent** %this to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._ramfs_enum** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %files = getelementptr inbounds %struct._ramfs, %struct._ramfs* %3, i32 0, i32 0
  store %struct._ramdirent** %files, %struct._ramdirent*** %last, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.3, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load %struct._ramdirent**, %struct._ramdirent*** %last, align 8, !tbaa !1
  %5 = load %struct._ramdirent*, %struct._ramdirent** %4, align 8, !tbaa !1
  store %struct._ramdirent* %5, %struct._ramdirent** %this, align 8, !tbaa !1
  %tobool = icmp ne %struct._ramdirent* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %6 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %last_error = getelementptr inbounds %struct._ramfs, %struct._ramfs* %6, i32 0, i32 4
  store i32 2, i32* %last_error, align 4, !tbaa !15
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %7 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %filename1 = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %9, i32 0, i32 0
  %10 = load i8*, i8** %filename1, align 8, !tbaa !18
  %11 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call = call i32 @strcmp(i8* %10, i8* %11) #7
  store i32 %call, i32* %tmp, !tbaa !5
  %12 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %tmp, !tbaa !5
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %while.end

if.end.3:                                         ; preds = %if.end
  %15 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %next = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %15, i32 0, i32 2
  store %struct._ramdirent** %next, %struct._ramdirent*** %last, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %if.then.2
  %16 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %inode = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %16, i32 0, i32 1
  %17 = load %struct._ramfile*, %struct._ramfile** %inode, align 8, !tbaa !20
  call void @unlink_node(%struct._ramfile* %17) #5
  %18 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct._ramfs, %struct._ramfs* %18, i32 0, i32 2
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %21 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %21, i32 0, i32 2
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !16
  %23 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %filename5 = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %23, i32 0, i32 0
  %24 = load i8*, i8** %filename5, align 8, !tbaa !18
  call void %20(%struct.gs_memory_s* %22, i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #5
  %25 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %next6 = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %25, i32 0, i32 2
  %26 = load %struct._ramdirent*, %struct._ramdirent** %next6, align 8, !tbaa !21
  %27 = load %struct._ramdirent**, %struct._ramdirent*** %last, align 8, !tbaa !1
  store %struct._ramdirent* %26, %struct._ramdirent** %27, align 8, !tbaa !1
  %28 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %active_enums = getelementptr inbounds %struct._ramfs, %struct._ramfs* %28, i32 0, i32 1
  %29 = load %struct._ramfs_enum*, %struct._ramfs_enum** %active_enums, align 8, !tbaa !13
  store %struct._ramfs_enum* %29, %struct._ramfs_enum** %e, align 8, !tbaa !1
  br label %while.cond.7

while.cond.7:                                     ; preds = %if.end.14, %while.end
  %30 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !1
  %tobool8 = icmp ne %struct._ramfs_enum* %30, null
  br i1 %tobool8, label %while.body.9, label %while.end.16

while.body.9:                                     ; preds = %while.cond.7
  %31 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !1
  %current = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %31, i32 0, i32 1
  %32 = load %struct._ramdirent*, %struct._ramdirent** %current, align 8, !tbaa !35
  %33 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %cmp10 = icmp eq %struct._ramdirent* %32, %33
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %while.body.9
  %34 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %next12 = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %34, i32 0, i32 2
  %35 = load %struct._ramdirent*, %struct._ramdirent** %next12, align 8, !tbaa !21
  %36 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !1
  %current13 = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %36, i32 0, i32 1
  store %struct._ramdirent* %35, %struct._ramdirent** %current13, align 8, !tbaa !35
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %while.body.9
  %37 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !1
  %next15 = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %37, i32 0, i32 2
  %38 = load %struct._ramfs_enum*, %struct._ramfs_enum** %next15, align 8, !tbaa !37
  store %struct._ramfs_enum* %38, %struct._ramfs_enum** %e, align 8, !tbaa !1
  br label %while.cond.7

while.end.16:                                     ; preds = %while.cond.7
  %39 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %39, i32 0, i32 2
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !16
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %free_object19 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 2
  %41 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object19, align 8, !tbaa !17
  %42 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %42, i32 0, i32 2
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !16
  %44 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %45 = bitcast %struct._ramdirent* %44 to i8*
  call void %41(%struct.gs_memory_s* %43, i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.16, %if.then
  %46 = bitcast %struct._ramfs_enum** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct._ramdirent** %this to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct._ramdirent*** %last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @ramfs_rename(%struct._ramfs* %fs, i8* %oldname, i8* %newname) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct._ramfs*, align 8
  %oldname.addr = alloca i8*, align 8
  %newname.addr = alloca i8*, align 8
  %this = alloca %struct._ramdirent*, align 8
  %newnamebuf = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct._ramfs* %fs, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  store i8* %oldname, i8** %oldname.addr, align 8, !tbaa !1
  store i8* %newname, i8** %newname.addr, align 8, !tbaa !1
  %0 = bitcast %struct._ramdirent** %this to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %newnamebuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %oldname.addr, align 8, !tbaa !1
  %call = call %struct._ramdirent* @ramfs_findfile(%struct._ramfs* %2, i8* %3) #5
  store %struct._ramdirent* %call, %struct._ramdirent** %this, align 8, !tbaa !1
  %4 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %tobool = icmp ne %struct._ramdirent* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %last_error = getelementptr inbounds %struct._ramfs, %struct._ramfs* %5, i32 0, i32 4
  store i32 2, i32* %last_error, align 4, !tbaa !15
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %oldname.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %newname.addr, align 8, !tbaa !1
  %call1 = call i32 @strcmp(i8* %8, i8* %9) #7
  store i32 %call1, i32* %tmp, !tbaa !5
  %10 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %tmp, !tbaa !5
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %13 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct._ramfs, %struct._ramfs* %13, i32 0, i32 2
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 0
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %16 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !27
  %17 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %17, i32 0, i32 2
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !16
  %stable_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 0
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory5, align 8, !tbaa !7
  %20 = load i8*, i8** %newname.addr, align 8, !tbaa !1
  %call6 = call i64 @strlen(i8* %20) #6
  %add = add i64 %call6, 1
  %conv = trunc i64 %add to i32
  %call7 = call i8* %16(%struct.gs_memory_s* %19, i32 %conv, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0)) #5
  store i8* %call7, i8** %newnamebuf, align 8, !tbaa !1
  %21 = load i8*, i8** %newnamebuf, align 8, !tbaa !1
  %tobool8 = icmp ne i8* %21, null
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.end.3
  %22 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %last_error10 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %22, i32 0, i32 4
  store i32 6, i32* %last_error10, align 4, !tbaa !15
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.3
  %23 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %newname.addr, align 8, !tbaa !1
  %call12 = call i32 @ramfs_unlink(%struct._ramfs* %23, i8* %24) #5
  %25 = load i8*, i8** %newnamebuf, align 8, !tbaa !1
  %26 = load i8*, i8** %newname.addr, align 8, !tbaa !1
  %call13 = call i8* @strcpy(i8* %25, i8* %26) #7
  %27 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %27, i32 0, i32 2
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !16
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %30 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %30, i32 0, i32 2
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !16
  %32 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %filename = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %32, i32 0, i32 0
  %33 = load i8*, i8** %filename, align 8, !tbaa !18
  call void %29(%struct.gs_memory_s* %31, i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0)) #5
  %34 = load i8*, i8** %newnamebuf, align 8, !tbaa !1
  %35 = load %struct._ramdirent*, %struct._ramdirent** %this, align 8, !tbaa !1
  %filename17 = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %35, i32 0, i32 0
  store i8* %34, i8** %filename17, align 8, !tbaa !18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.9, %if.then.2, %if.then
  %36 = bitcast i8** %newnamebuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct._ramdirent** %this to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define %struct._ramfs_enum* @ramfs_enum_new(%struct._ramfs* %fs) #0 {
entry:
  %retval = alloca %struct._ramfs_enum*, align 8
  %fs.addr = alloca %struct._ramfs*, align 8
  %e = alloca %struct._ramfs_enum*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._ramfs* %fs, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %0 = bitcast %struct._ramfs_enum** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct._ramfs, %struct._ramfs* %1, i32 0, i32 2
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %4 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !10
  %5 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %5, i32 0, i32 2
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !16
  %stable_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 0
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory2, align 8, !tbaa !7
  %call = call i8* %4(%struct.gs_memory_s* %7, %struct.gs_memory_struct_type_s* @st_ramfs_enum, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0)) #5
  %8 = bitcast i8* %call to %struct._ramfs_enum*
  store %struct._ramfs_enum* %8, %struct._ramfs_enum** %e, align 8, !tbaa !1
  %9 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !1
  %tobool = icmp ne %struct._ramfs_enum* %9, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %last_error = getelementptr inbounds %struct._ramfs, %struct._ramfs* %10, i32 0, i32 4
  store i32 6, i32* %last_error, align 4, !tbaa !15
  store %struct._ramfs_enum* null, %struct._ramfs_enum** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %files = getelementptr inbounds %struct._ramfs, %struct._ramfs* %11, i32 0, i32 0
  %12 = load %struct._ramdirent*, %struct._ramdirent** %files, align 8, !tbaa !11
  %13 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !1
  %current = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %13, i32 0, i32 1
  store %struct._ramdirent* %12, %struct._ramdirent** %current, align 8, !tbaa !35
  %14 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %active_enums = getelementptr inbounds %struct._ramfs, %struct._ramfs* %14, i32 0, i32 1
  %15 = load %struct._ramfs_enum*, %struct._ramfs_enum** %active_enums, align 8, !tbaa !13
  %16 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !1
  %next = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %16, i32 0, i32 2
  store %struct._ramfs_enum* %15, %struct._ramfs_enum** %next, align 8, !tbaa !37
  %17 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %18 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !1
  %fs3 = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %18, i32 0, i32 0
  store %struct._ramfs* %17, %struct._ramfs** %fs3, align 8, !tbaa !38
  %19 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !1
  %20 = load %struct._ramfs*, %struct._ramfs** %fs.addr, align 8, !tbaa !1
  %active_enums4 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %20, i32 0, i32 1
  store %struct._ramfs_enum* %19, %struct._ramfs_enum** %active_enums4, align 8, !tbaa !13
  %21 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e, align 8, !tbaa !1
  store %struct._ramfs_enum* %21, %struct._ramfs_enum** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %22 = bitcast %struct._ramfs_enum** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load %struct._ramfs_enum*, %struct._ramfs_enum** %retval
  ret %struct._ramfs_enum* %23
}

; Function Attrs: nounwind uwtable
define i8* @ramfs_enum_next(%struct._ramfs_enum* %e) #0 {
entry:
  %e.addr = alloca %struct._ramfs_enum*, align 8
  %filename = alloca i8*, align 8
  store %struct._ramfs_enum* %e, %struct._ramfs_enum** %e.addr, align 8, !tbaa !1
  %0 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %filename, align 8, !tbaa !1
  %1 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %1, i32 0, i32 1
  %2 = load %struct._ramdirent*, %struct._ramdirent** %current, align 8, !tbaa !35
  %tobool = icmp ne %struct._ramdirent* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e.addr, align 8, !tbaa !1
  %current1 = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %3, i32 0, i32 1
  %4 = load %struct._ramdirent*, %struct._ramdirent** %current1, align 8, !tbaa !35
  %filename2 = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %4, i32 0, i32 0
  %5 = load i8*, i8** %filename2, align 8, !tbaa !18
  store i8* %5, i8** %filename, align 8, !tbaa !1
  %6 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e.addr, align 8, !tbaa !1
  %current3 = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %6, i32 0, i32 1
  %7 = load %struct._ramdirent*, %struct._ramdirent** %current3, align 8, !tbaa !35
  %next = getelementptr inbounds %struct._ramdirent, %struct._ramdirent* %7, i32 0, i32 2
  %8 = load %struct._ramdirent*, %struct._ramdirent** %next, align 8, !tbaa !21
  %9 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e.addr, align 8, !tbaa !1
  %current4 = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %9, i32 0, i32 1
  store %struct._ramdirent* %8, %struct._ramdirent** %current4, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** %filename, align 8, !tbaa !1
  %11 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define void @ramfs_enum_end(%struct._ramfs_enum* %e) #0 {
entry:
  %e.addr = alloca %struct._ramfs_enum*, align 8
  %last = alloca %struct._ramfs_enum**, align 8
  store %struct._ramfs_enum* %e, %struct._ramfs_enum** %e.addr, align 8, !tbaa !1
  %0 = bitcast %struct._ramfs_enum*** %last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e.addr, align 8, !tbaa !1
  %fs = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %1, i32 0, i32 0
  %2 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !38
  %active_enums = getelementptr inbounds %struct._ramfs, %struct._ramfs* %2, i32 0, i32 1
  store %struct._ramfs_enum** %active_enums, %struct._ramfs_enum*** %last, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct._ramfs_enum**, %struct._ramfs_enum*** %last, align 8, !tbaa !1
  %4 = load %struct._ramfs_enum*, %struct._ramfs_enum** %3, align 8, !tbaa !1
  %tobool = icmp ne %struct._ramfs_enum* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._ramfs_enum**, %struct._ramfs_enum*** %last, align 8, !tbaa !1
  %6 = load %struct._ramfs_enum*, %struct._ramfs_enum** %5, align 8, !tbaa !1
  %7 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._ramfs_enum* %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %8, i32 0, i32 2
  %9 = load %struct._ramfs_enum*, %struct._ramfs_enum** %next, align 8, !tbaa !37
  %10 = load %struct._ramfs_enum**, %struct._ramfs_enum*** %last, align 8, !tbaa !1
  store %struct._ramfs_enum* %9, %struct._ramfs_enum** %10, align 8, !tbaa !1
  br label %while.end

if.end:                                           ; preds = %while.body
  %11 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e.addr, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %11, i32 0, i32 2
  store %struct._ramfs_enum** %next1, %struct._ramfs_enum*** %last, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %12 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e.addr, align 8, !tbaa !1
  %fs2 = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %12, i32 0, i32 0
  %13 = load %struct._ramfs*, %struct._ramfs** %fs2, align 8, !tbaa !38
  %memory = getelementptr inbounds %struct._ramfs, %struct._ramfs* %13, i32 0, i32 2
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %16 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e.addr, align 8, !tbaa !1
  %fs3 = getelementptr inbounds %struct._ramfs_enum, %struct._ramfs_enum* %16, i32 0, i32 0
  %17 = load %struct._ramfs*, %struct._ramfs** %fs3, align 8, !tbaa !38
  %memory4 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %17, i32 0, i32 2
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !16
  %19 = load %struct._ramfs_enum*, %struct._ramfs_enum** %e.addr, align 8, !tbaa !1
  %20 = bitcast %struct._ramfs_enum* %19 to i8*
  call void %15(%struct.gs_memory_s* %18, i8* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0)) #5
  %21 = bitcast %struct._ramfs_enum*** %last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ramfile_read(%struct._ramhandle* %handle, i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca %struct._ramhandle*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %file = alloca %struct._ramfile*, align 8
  %left = alloca i32, align 4
  %t = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %p = alloca i8*, align 8
  %x = alloca i32, align 4
  store %struct._ramhandle* %handle, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast %struct._ramfile** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %1, i32 0, i32 0
  %2 = load %struct._ramfile*, %struct._ramfile** %file1, align 8, !tbaa !30
  store %struct._ramfile* %2, %struct._ramfile** %file, align 8, !tbaa !1
  %3 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %5, i8** %t, align 8, !tbaa !1
  %6 = load i32, i32* %len.addr, align 4, !tbaa !5
  %7 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %size = getelementptr inbounds %struct._ramfile, %struct._ramfile* %7, i32 0, i32 2
  %8 = load i32, i32* %size, align 4, !tbaa !28
  %9 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %9, i32 0, i32 2
  %10 = load i32, i32* %filepos, align 4, !tbaa !32
  %sub = sub nsw i32 %8, %10
  %cmp = icmp sgt i32 %6, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %11, i32 0, i32 2
  %12 = load i32, i32* %size2, align 4, !tbaa !28
  %13 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos3 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %13, i32 0, i32 2
  %14 = load i32, i32* %filepos3, align 4, !tbaa !32
  %sub4 = sub nsw i32 %12, %14
  store i32 %sub4, i32* %len.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %15, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %16 = load i32, i32* %len.addr, align 4, !tbaa !5
  store i32 %16, i32* %left, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.end.7
  %17 = load i32, i32* %left, align 4, !tbaa !5
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos8 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %19, i32 0, i32 2
  %20 = load i32, i32* %filepos8, align 4, !tbaa !32
  %div = sdiv i32 %20, 1024
  %idxprom = sext i32 %div to i64
  %21 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._ramfile, %struct._ramfile* %21, i32 0, i32 5
  %22 = load i8**, i8*** %data, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds i8*, i8** %22, i64 %idxprom
  %23 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %24 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos9 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %24, i32 0, i32 2
  %25 = load i32, i32* %filepos9, align 4, !tbaa !32
  %rem = srem i32 %25, 1024
  %idx.ext = sext i32 %rem to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %26 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos10 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %27, i32 0, i32 2
  %28 = load i32, i32* %filepos10, align 4, !tbaa !32
  %rem11 = srem i32 %28, 1024
  %sub12 = sub nsw i32 1024, %rem11
  store i32 %sub12, i32* %x, align 4, !tbaa !5
  %29 = load i32, i32* %x, align 4, !tbaa !5
  %30 = load i32, i32* %left, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %29, %30
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %while.body
  %31 = load i32, i32* %left, align 4, !tbaa !5
  store i32 %31, i32* %x, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %while.body
  %32 = load i8*, i8** %t, align 8, !tbaa !1
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %34 = load i32, i32* %x, align 4, !tbaa !5
  %conv = sext i32 %34 to i64
  %call = call i8* @memcpy(i8* %32, i8* %33, i64 %conv) #7
  %35 = load i32, i32* %x, align 4, !tbaa !5
  %36 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos16 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %36, i32 0, i32 2
  %37 = load i32, i32* %filepos16, align 4, !tbaa !32
  %add = add nsw i32 %37, %35
  store i32 %add, i32* %filepos16, align 4, !tbaa !32
  %38 = load i32, i32* %x, align 4, !tbaa !5
  %39 = load i32, i32* %left, align 4, !tbaa !5
  %sub17 = sub nsw i32 %39, %38
  store i32 %sub17, i32* %left, align 4, !tbaa !5
  %40 = load i32, i32* %x, align 4, !tbaa !5
  %41 = load i8*, i8** %t, align 8, !tbaa !1
  %idx.ext18 = sext i32 %40 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %41, i64 %idx.ext18
  store i8* %add.ptr19, i8** %t, align 8, !tbaa !1
  %42 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = load i32, i32* %len.addr, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.6
  %45 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast %struct._ramfile** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @ramfile_write(%struct._ramhandle* %handle, i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca %struct._ramhandle*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %file = alloca %struct._ramfile*, align 8
  %left = alloca i32, align 4
  %t = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %x = alloca i32, align 4
  %p = alloca i8*, align 8
  %x31 = alloca i32, align 4
  store %struct._ramhandle* %handle, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast %struct._ramfile** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %1, i32 0, i32 0
  %2 = load %struct._ramfile*, %struct._ramfile** %file1, align 8, !tbaa !30
  store %struct._ramfile* %2, %struct._ramfile** %file, align 8, !tbaa !1
  %3 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %5, i8** %t, align 8, !tbaa !1
  %6 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %mode = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %6, i32 0, i32 3
  %7 = load i32, i32* %mode, align 4, !tbaa !33
  %tobool = icmp ne i32 %7, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %and = and i32 %lnot.ext, 4
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %last_error = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %8, i32 0, i32 1
  store i32 5, i32* %last_error, align 4, !tbaa !34
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

if.end:                                           ; preds = %entry
  %9 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %mode3 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %9, i32 0, i32 3
  %10 = load i32, i32* %mode3, align 4, !tbaa !33
  %and4 = and i32 %10, 16
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %size = getelementptr inbounds %struct._ramfile, %struct._ramfile* %11, i32 0, i32 2
  %12 = load i32, i32* %size, align 4, !tbaa !28
  %13 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %13, i32 0, i32 2
  store i32 %12, i32* %filepos, align 4, !tbaa !32
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %14 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %size8 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %14, i32 0, i32 2
  %15 = load i32, i32* %size8, align 4, !tbaa !28
  %16 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos9 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %16, i32 0, i32 2
  %17 = load i32, i32* %filepos9, align 4, !tbaa !32
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.7
  %18 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %19 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos11 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %19, i32 0, i32 2
  %20 = load i32, i32* %filepos11, align 4, !tbaa !32
  %call = call i32 @ramfile_truncate(%struct._ramhandle* %18, i32 %20) #5
  %cmp12 = icmp eq i32 %call, -1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

if.end.14:                                        ; preds = %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.7
  %21 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %size16 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %21, i32 0, i32 2
  %22 = load i32, i32* %size16, align 4, !tbaa !28
  %23 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos17 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %23, i32 0, i32 2
  %24 = load i32, i32* %filepos17, align 4, !tbaa !32
  %25 = load i32, i32* %len.addr, align 4, !tbaa !5
  %add = add nsw i32 %24, %25
  %cmp18 = icmp slt i32 %22, %add
  br i1 %cmp18, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %if.end.15
  %26 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %28 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos20 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %28, i32 0, i32 2
  %29 = load i32, i32* %filepos20, align 4, !tbaa !32
  %30 = load i32, i32* %len.addr, align 4, !tbaa !5
  %add21 = add nsw i32 %29, %30
  %call22 = call i32 @resize(%struct._ramfile* %27, i32 %add21) #5
  store i32 %call22, i32* %x, align 4, !tbaa !5
  %31 = load i32, i32* %x, align 4, !tbaa !5
  %tobool23 = icmp ne i32 %31, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.then.19
  %32 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 0, %32
  %33 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %last_error25 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %33, i32 0, i32 1
  store i32 %sub, i32* %last_error25, align 4, !tbaa !34
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.then.19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.24
  %34 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.27

if.end.27:                                        ; preds = %cleanup.cont, %if.end.15
  %35 = load i32, i32* %len.addr, align 4, !tbaa !5
  store i32 %35, i32* %left, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.37, %if.end.27
  %36 = load i32, i32* %left, align 4, !tbaa !5
  %tobool28 = icmp ne i32 %36, 0
  br i1 %tobool28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos29 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %38, i32 0, i32 2
  %39 = load i32, i32* %filepos29, align 4, !tbaa !32
  %div = sdiv i32 %39, 1024
  %idxprom = sext i32 %div to i64
  %40 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._ramfile, %struct._ramfile* %40, i32 0, i32 5
  %41 = load i8**, i8*** %data, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds i8*, i8** %41, i64 %idxprom
  %42 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %43 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos30 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %43, i32 0, i32 2
  %44 = load i32, i32* %filepos30, align 4, !tbaa !32
  %rem = srem i32 %44, 1024
  %idx.ext = sext i32 %rem to i64
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %45 = bitcast i32* %x31 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos32 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %46, i32 0, i32 2
  %47 = load i32, i32* %filepos32, align 4, !tbaa !32
  %rem33 = srem i32 %47, 1024
  %sub34 = sub nsw i32 1024, %rem33
  store i32 %sub34, i32* %x31, align 4, !tbaa !5
  %48 = load i32, i32* %x31, align 4, !tbaa !5
  %49 = load i32, i32* %left, align 4, !tbaa !5
  %cmp35 = icmp sgt i32 %48, %49
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %while.body
  %50 = load i32, i32* %left, align 4, !tbaa !5
  store i32 %50, i32* %x31, align 4, !tbaa !5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %while.body
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %52 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %53 = load i32, i32* %x31, align 4, !tbaa !5
  %conv = sext i32 %53 to i64
  %call38 = call i8* @memcpy(i8* %51, i8* %52, i64 %conv) #7
  %54 = load i32, i32* %x31, align 4, !tbaa !5
  %55 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos39 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %55, i32 0, i32 2
  %56 = load i32, i32* %filepos39, align 4, !tbaa !32
  %add40 = add nsw i32 %56, %54
  store i32 %add40, i32* %filepos39, align 4, !tbaa !32
  %57 = load i32, i32* %x31, align 4, !tbaa !5
  %58 = load i32, i32* %left, align 4, !tbaa !5
  %sub41 = sub nsw i32 %58, %57
  store i32 %sub41, i32* %left, align 4, !tbaa !5
  %59 = load i32, i32* %x31, align 4, !tbaa !5
  %60 = load i8*, i8** %t, align 8, !tbaa !1
  %idx.ext42 = sext i32 %59 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %60, i64 %idx.ext42
  store i8* %add.ptr43, i8** %t, align 8, !tbaa !1
  %61 = bitcast i32* %x31 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %63 = load i32, i32* %len.addr, align 4, !tbaa !5
  store i32 %63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

cleanup.44:                                       ; preds = %while.end, %cleanup, %if.then.13, %if.then
  %64 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast %struct._ramfile** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal i32 @ramfile_truncate(%struct._ramhandle* %handle, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca %struct._ramhandle*, align 8
  %size.addr = alloca i32, align 4
  %file = alloca %struct._ramfile*, align 8
  %oldsize = alloca i32, align 4
  %x = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %p = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct._ramhandle* %handle, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast %struct._ramfile** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %1, i32 0, i32 0
  %2 = load %struct._ramfile*, %struct._ramfile** %file1, align 8, !tbaa !30
  store %struct._ramfile* %2, %struct._ramfile** %file, align 8, !tbaa !1
  %3 = bitcast i32* %oldsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %4, i32 0, i32 2
  %5 = load i32, i32* %size2, align 4, !tbaa !28
  store i32 %5, i32* %oldsize, align 4, !tbaa !5
  %6 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %8 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 @resize(%struct._ramfile* %7, i32 %8) #5
  store i32 %call, i32* %x, align 4, !tbaa !5
  %9 = load i32, i32* %x, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 0, %10
  %11 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %last_error = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %11, i32 0, i32 1
  store i32 %sub, i32* %last_error, align 4, !tbaa !34
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load i32, i32* %oldsize, align 4, !tbaa !5
  %13 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %12, %13
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.end.4
  %14 = load i32, i32* %oldsize, align 4, !tbaa !5
  %15 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %size5 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %15, i32 0, i32 2
  %16 = load i32, i32* %size5, align 4, !tbaa !28
  %cmp6 = icmp slt i32 %14, %16
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i32, i32* %oldsize, align 4, !tbaa !5
  %div = sdiv i32 %18, 1024
  %idxprom = sext i32 %div to i64
  %19 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._ramfile, %struct._ramfile* %19, i32 0, i32 5
  %20 = load i8**, i8*** %data, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds i8*, i8** %20, i64 %idxprom
  %21 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %22 = load i32, i32* %oldsize, align 4, !tbaa !5
  %rem = srem i32 %22, 1024
  %idx.ext = sext i32 %rem to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %23 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i32, i32* %oldsize, align 4, !tbaa !5
  %rem7 = srem i32 %24, 1024
  %sub8 = sub nsw i32 1024, %rem7
  store i32 %sub8, i32* %len, align 4, !tbaa !5
  %25 = load i32, i32* %len, align 4, !tbaa !5
  %26 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %size9 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %26, i32 0, i32 2
  %27 = load i32, i32* %size9, align 4, !tbaa !28
  %28 = load i32, i32* %oldsize, align 4, !tbaa !5
  %sub10 = sub nsw i32 %27, %28
  %cmp11 = icmp sgt i32 %25, %sub10
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %while.body
  %29 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  %size13 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %29, i32 0, i32 2
  %30 = load i32, i32* %size13, align 4, !tbaa !28
  %31 = load i32, i32* %oldsize, align 4, !tbaa !5
  %sub14 = sub nsw i32 %30, %31
  store i32 %sub14, i32* %len, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %while.body
  %32 = load i32, i32* %len, align 4, !tbaa !5
  %33 = load i32, i32* %oldsize, align 4, !tbaa !5
  %add = add nsw i32 %33, %32
  store i32 %add, i32* %oldsize, align 4, !tbaa !5
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %35 = load i32, i32* %len, align 4, !tbaa !5
  %conv = sext i32 %35 to i64
  %call16 = call i8* @memset(i8* %34, i32 0, i64 %conv) #7
  %36 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.3, %if.then
  %38 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %oldsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct._ramfile** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i32 @ramfile_seek(%struct._ramhandle* %handle, i32 %pos, i32 %whence) #0 {
entry:
  %handle.addr = alloca %struct._ramhandle*, align 8
  %pos.addr = alloca i32, align 4
  %whence.addr = alloca i32, align 4
  store %struct._ramhandle* %handle, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  store i32 %pos, i32* %pos.addr, align 4, !tbaa !5
  store i32 %whence, i32* %whence.addr, align 4, !tbaa !5
  %0 = load i32, i32* %whence.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4, !tbaa !5
  %2 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %2, i32 0, i32 2
  %3 = load i32, i32* %filepos, align 4, !tbaa !32
  %add = add nsw i32 %3, %1
  store i32 %add, i32* %filepos, align 4, !tbaa !32
  br label %if.end.7

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %whence.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %4, 2
  br i1 %cmp1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.else
  %5 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %5, i32 0, i32 0
  %6 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !30
  %size = getelementptr inbounds %struct._ramfile, %struct._ramfile* %6, i32 0, i32 2
  %7 = load i32, i32* %size, align 4, !tbaa !28
  %8 = load i32, i32* %pos.addr, align 4, !tbaa !5
  %add3 = add nsw i32 %7, %8
  %9 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos4 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %9, i32 0, i32 2
  store i32 %add3, i32* %filepos4, align 4, !tbaa !32
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %10 = load i32, i32* %pos.addr, align 4, !tbaa !5
  %11 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos6 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %11, i32 0, i32 2
  store i32 %10, i32* %filepos6, align 4, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ramfile_size(%struct._ramhandle* %handle) #0 {
entry:
  %handle.addr = alloca %struct._ramhandle*, align 8
  store %struct._ramhandle* %handle, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %0 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %0, i32 0, i32 0
  %1 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !30
  %size = getelementptr inbounds %struct._ramfile, %struct._ramfile* %1, i32 0, i32 2
  %2 = load i32, i32* %size, align 4, !tbaa !28
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define void @ramfile_close(%struct._ramhandle* %handle) #0 {
entry:
  %handle.addr = alloca %struct._ramhandle*, align 8
  %file = alloca %struct._ramfile*, align 8
  store %struct._ramhandle* %handle, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %0 = bitcast %struct._ramfile** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %1, i32 0, i32 0
  %2 = load %struct._ramfile*, %struct._ramfile** %file1, align 8, !tbaa !30
  store %struct._ramfile* %2, %struct._ramfile** %file, align 8, !tbaa !1
  %3 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !1
  call void @unlink_node(%struct._ramfile* %3) #5
  %4 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %file2 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %4, i32 0, i32 0
  %5 = load %struct._ramfile*, %struct._ramfile** %file2, align 8, !tbaa !30
  %fs = getelementptr inbounds %struct._ramfile, %struct._ramfile* %5, i32 0, i32 0
  %6 = load %struct._ramfs*, %struct._ramfs** %fs, align 8, !tbaa !25
  %memory = getelementptr inbounds %struct._ramfs, %struct._ramfs* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !16
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %9 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %file3 = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %9, i32 0, i32 0
  %10 = load %struct._ramfile*, %struct._ramfile** %file3, align 8, !tbaa !30
  %fs4 = getelementptr inbounds %struct._ramfile, %struct._ramfile* %10, i32 0, i32 0
  %11 = load %struct._ramfs*, %struct._ramfs** %fs4, align 8, !tbaa !25
  %memory5 = getelementptr inbounds %struct._ramfs, %struct._ramfs* %11, i32 0, i32 2
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !16
  %13 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %14 = bitcast %struct._ramhandle* %13 to i8*
  call void %8(%struct.gs_memory_s* %12, i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #5
  %15 = bitcast %struct._ramfile** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ramfile_tell(%struct._ramhandle* %handle) #0 {
entry:
  %handle.addr = alloca %struct._ramhandle*, align 8
  store %struct._ramhandle* %handle, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %0 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %0, i32 0, i32 2
  %1 = load i32, i32* %filepos, align 4, !tbaa !32
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @ramfile_eof(%struct._ramhandle* %handle) #0 {
entry:
  %handle.addr = alloca %struct._ramhandle*, align 8
  store %struct._ramhandle* %handle, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %0 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %filepos = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %0, i32 0, i32 2
  %1 = load i32, i32* %filepos, align 4, !tbaa !32
  %2 = load %struct._ramhandle*, %struct._ramhandle** %handle.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct._ramhandle, %struct._ramhandle* %2, i32 0, i32 0
  %3 = load %struct._ramfile*, %struct._ramfile** %file, align 8, !tbaa !30
  %size = getelementptr inbounds %struct._ramfile, %struct._ramfile* %3, i32 0, i32 2
  %4 = load i32, i32* %size, align 4, !tbaa !28
  %cmp = icmp sge i32 %1, %4
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #4

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #4

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"gs_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!9 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!10 = !{!8, !2, i64 72}
!11 = !{!12, !2, i64 0}
!12 = !{!"_ramfs", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!13 = !{!12, !2, i64 8}
!14 = !{!12, !6, i64 24}
!15 = !{!12, !6, i64 28}
!16 = !{!12, !2, i64 16}
!17 = !{!8, !2, i64 24}
!18 = !{!19, !2, i64 0}
!19 = !{!"_ramdirent", !2, i64 0, !2, i64 8, !2, i64 16}
!20 = !{!19, !2, i64 8}
!21 = !{!19, !2, i64 16}
!22 = !{!23, !6, i64 8}
!23 = !{!"_ramfile", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !2, i64 24}
!24 = !{!23, !6, i64 16}
!25 = !{!23, !2, i64 0}
!26 = !{!23, !2, i64 24}
!27 = !{!8, !2, i64 64}
!28 = !{!23, !6, i64 12}
!29 = !{!23, !6, i64 20}
!30 = !{!31, !2, i64 0}
!31 = !{!"_ramhandle", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!32 = !{!31, !6, i64 12}
!33 = !{!31, !6, i64 16}
!34 = !{!31, !6, i64 8}
!35 = !{!36, !2, i64 8}
!36 = !{!"_ramfs_enum", !2, i64 0, !2, i64 8, !2, i64 16}
!37 = !{!36, !2, i64 16}
!38 = !{!36, !2, i64 0}
