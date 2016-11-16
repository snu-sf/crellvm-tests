; ModuleID = './isave.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type { void (%struct.obj_header_s*, i32)*, i32 (%struct.obj_header_s*, i32, i32)*, void (%struct.gs_memory_s*, %struct.obj_header_s*, %struct.obj_header_s*, i32)* }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type { %struct.gc_procs_with_refs_s*, %struct.chunk_locator_s, %struct.vm_spaces_s, i32, i32, %struct.gs_memory_s*, %struct.name_table_s*, %struct.gs_memory_s* }
%struct.gc_procs_with_refs_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)*, i16* (i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.chunk_locator_s = type { %struct.gs_ref_memory_s*, %struct.chunk_s* }
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct.chunk_s = type { %struct.chunk_head_s*, i8*, i8*, i8*, %struct.obj_header_s*, i8*, i8*, i8*, i8*, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s*, i32, i32, i32*, i32, i8*, i8*, i32, i8*, i32*, i8*, i8*, i8* }
%struct.chunk_head_s = type { i8*, %struct.obj_header_s }
%struct.lost_ = type { i64, i64, i64 }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.alloc_change_s = type { %struct.alloc_change_s*, i16*, %struct.ref_s, i16 }
%struct.alloc_save_s = type { %struct.gs_ref_memory_s, %struct.vm_spaces_s, i32, i32, i64, i8* }
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.name_table_s = type { i32, i32, i32, i32, i32, i32, %struct.gs_memory_s*, [4096 x i32], [2048 x %struct.sub_] }
%struct.sub_ = type { %struct.name_sub_table_s*, %struct.name_string_sub_table_s* }
%struct.name_sub_table_s = type { [512 x %struct.name_s], i32 }
%struct.name_s = type { %struct.ref_s* }
%struct.name_string_sub_table_s = type { [512 x %struct.name_string_s] }
%struct.name_string_s = type { i32, i8* }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct._m = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"alloc_save_state(local save)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"alloc_save_state(global save)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@st_alloc_change = internal constant %struct.gs_memory_struct_type_s { i32 40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* @change_clear_marks, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @change_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @change_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"alloc_save_change\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"./psi/isave.c\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Bad type %u for save!  pcont = 0x%lx, where = 0x%lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"alloc_save_remove\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"forget_save\00", align 1
@st_chunk = external constant %struct.gs_memory_struct_type_s, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"alloc_save_space(inner)\00", align 1
@st_alloc_save = internal constant %struct.gs_memory_struct_type_s { i32 1560, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @save_reloc_ptrs to i8*) }, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"alloc_save_space(save)\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"alloc_save\00", align 1
@save_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_ref_memory, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @save_enum_ptrs, i32 0, i32 0) }, align 8
@st_ref_memory = external constant %struct.gs_memory_struct_type_s, align 8
@save_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 1552 }], align 2
@.str.11 = private unnamed_addr constant [13 x i8] c"alloc_change\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_refs = external constant %struct.gs_memory_struct_type_s, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"(free_all)\00", align 1
@st_bytes = external constant %struct.gs_memory_struct_type_s, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"combine_space(inner)\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"combine_space(saved)\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"forget_changes\00", align 1

; Function Attrs: nounwind uwtable
define void @alloc_save_init(%struct.gs_dual_memory_s* %dmem) #0 {
entry:
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  call void @alloc_set_not_in_save(%struct.gs_dual_memory_s* %0) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @alloc_set_not_in_save(%struct.gs_dual_memory_s* %dmem) #0 {
entry:
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  call void @alloc_set_masks(%struct.gs_dual_memory_s* %0, i32 0, i32 -1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @alloc_set_in_save(%struct.gs_dual_memory_s* %dmem) #0 {
entry:
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  call void @alloc_set_masks(%struct.gs_dual_memory_s* %0, i32 2, i32 2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alloc_set_masks(%struct.gs_dual_memory_s* %dmem, i32 %new_mask, i32 %test_mask) #0 {
entry:
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %new_mask.addr = alloca i32, align 4
  %test_mask.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  store i32 %new_mask, i32* %new_mask.addr, align 4, !tbaa !5
  store i32 %test_mask, i32* %test_mask.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %new_mask.addr, align 4, !tbaa !5
  %3 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %new_mask1 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %3, i32 0, i32 5
  store i32 %2, i32* %new_mask1, align 4, !tbaa !7
  %4 = load i32, i32* %test_mask.addr, align 4, !tbaa !5
  %5 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %test_mask2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %5, i32 0, i32 4
  store i32 %4, i32* %test_mask2, align 4, !tbaa !10
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sext i32 %6 to i64
  %cmp = icmp ult i64 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %8, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %indexed = bitcast %union.anon* %memories to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %9, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.gs_ref_memory_s* %9, null
  br i1 %cmp4, label %if.then, label %if.end.14

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %new_mask.addr, align 4, !tbaa !5
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %new_mask6 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %11, i32 0, i32 20
  store i32 %10, i32* %new_mask6, align 4, !tbaa !11
  %12 = load i32, i32* %test_mask.addr, align 4, !tbaa !5
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %test_mask7 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %13, i32 0, i32 21
  store i32 %12, i32* %test_mask7, align 4, !tbaa !20
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %14, i32 0, i32 0
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !21
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %cmp8 = icmp ne %struct.gs_memory_s* %15, %17
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %stable_memory11 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %18, i32 0, i32 0
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory11, align 8, !tbaa !21
  %20 = bitcast %struct.gs_memory_s* %19 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %20, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %21 = load i32, i32* %new_mask.addr, align 4, !tbaa !5
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %new_mask12 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %22, i32 0, i32 20
  store i32 %21, i32* %new_mask12, align 4, !tbaa !11
  %23 = load i32, i32* %test_mask.addr, align 4, !tbaa !5
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %test_mask13 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %24, i32 0, i32 21
  store i32 %23, i32* %test_mask13, align 4, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @alloc_save_state(%struct.gs_dual_memory_s* %dmem, i8* %cdata, i64* %psid) #0 {
entry:
  %retval = alloca i32, align 4
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %cdata.addr = alloca i8*, align 8
  %psid.addr = alloca i64*, align 8
  %lmem = alloca %struct.gs_ref_memory_s*, align 8
  %gmem = alloca %struct.gs_ref_memory_s*, align 8
  %sid = alloca i64, align 8
  %global4 = alloca i32, align 4
  %gsave = alloca %struct.alloc_save_s*, align 8
  %lsave = alloca %struct.alloc_save_s*, align 8
  %cleanup.dest.slot = alloca i32
  %scanned = alloca i64, align 8
  %code = alloca i32, align 4
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  store i8* %cdata, i8** %cdata.addr, align 8, !tbaa !1
  store i64* %psid, i64** %psid.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %1, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !22
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_ref_memory_s** %gmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces1 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %4, i32 0, i32 1
  %memories2 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces1, i32 0, i32 1
  %named3 = bitcast %union.anon* %memories2 to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named3, i32 0, i32 2
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !24
  store %struct.gs_ref_memory_s* %5, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %6 = bitcast i64* %sid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %7, i32 0, i32 0
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !21
  %call = call i64 @gs_next_ids(%struct.gs_memory_s* %8, i32 2) #4
  store i64 %call, i64* %sid, align 8, !tbaa !25
  %9 = bitcast i32* %global4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %save_level = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %10, i32 0, i32 19
  %11 = load i32, i32* %save_level, align 4, !tbaa !26
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.gs_ref_memory_s* %12, %13
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %num_contexts = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %14, i32 0, i32 25
  %15 = load i32, i32* %num_contexts, align 4, !tbaa !27
  %cmp6 = icmp eq i32 %15, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %16 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  store i32 %land.ext, i32* %global4, align 4, !tbaa !5
  %17 = bitcast %struct.alloc_save_s** %gsave to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i32, i32* %global4, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %20 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %21 = load i64, i64* %sid, align 8, !tbaa !25
  %add = add i64 %21, 1
  %call7 = call %struct.alloc_save_s* @alloc_save_space(%struct.gs_ref_memory_s* %19, %struct.gs_dual_memory_s* %20, i64 %add) #4
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.alloc_save_s* [ %call7, %cond.true ], [ null, %cond.false ]
  store %struct.alloc_save_s* %cond, %struct.alloc_save_s** %gsave, align 8, !tbaa !1
  %22 = bitcast %struct.alloc_save_s** %lsave to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %24 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %25 = load i64, i64* %sid, align 8, !tbaa !25
  %call8 = call %struct.alloc_save_s* @alloc_save_space(%struct.gs_ref_memory_s* %23, %struct.gs_dual_memory_s* %24, i64 %25) #4
  store %struct.alloc_save_s* %call8, %struct.alloc_save_s** %lsave, align 8, !tbaa !1
  %26 = load %struct.alloc_save_s*, %struct.alloc_save_s** %lsave, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.alloc_save_s* %26, null
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %27 = load i32, i32* %global4, align 4, !tbaa !5
  %tobool10 = icmp ne i32 %27, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.18

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %28 = load %struct.alloc_save_s*, %struct.alloc_save_s** %gsave, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.alloc_save_s* %28, null
  br i1 %cmp12, label %if.then, label %if.end.18

if.then:                                          ; preds = %land.lhs.true.11, %cond.end
  %29 = load %struct.alloc_save_s*, %struct.alloc_save_s** %lsave, align 8, !tbaa !1
  %cmp13 = icmp ne %struct.alloc_save_s* %29, null
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %31 = load %struct.alloc_save_s*, %struct.alloc_save_s** %lsave, align 8, !tbaa !1
  call void @alloc_free_save(%struct.gs_ref_memory_s* %30, %struct.alloc_save_s* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then
  %32 = load %struct.alloc_save_s*, %struct.alloc_save_s** %gsave, align 8, !tbaa !1
  %cmp15 = icmp ne %struct.alloc_save_s* %32, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %34 = load %struct.alloc_save_s*, %struct.alloc_save_s** %gsave, align 8, !tbaa !1
  call void @alloc_free_save(%struct.gs_ref_memory_s* %33, %struct.alloc_save_s* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35

if.end.18:                                        ; preds = %land.lhs.true.11, %lor.lhs.false
  %35 = load %struct.alloc_save_s*, %struct.alloc_save_s** %gsave, align 8, !tbaa !1
  %cmp19 = icmp ne %struct.alloc_save_s* %35, null
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %36 = load %struct.alloc_save_s*, %struct.alloc_save_s** %gsave, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %36, i32 0, i32 5
  store i8* null, i8** %client_data, align 8, !tbaa !28
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %space = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %37, i32 0, i32 7
  %38 = load i32, i32* %space, align 4, !tbaa !30
  %39 = load %struct.alloc_save_s*, %struct.alloc_save_s** %gsave, align 8, !tbaa !1
  call void @print_save(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %38, %struct.alloc_save_s* %39) #4
  %40 = load %struct.alloc_save_s*, %struct.alloc_save_s** %gsave, align 8, !tbaa !1
  %restore_names = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %40, i32 0, i32 2
  %41 = load i32, i32* %restore_names, align 4, !tbaa !31
  %42 = load %struct.alloc_save_s*, %struct.alloc_save_s** %lsave, align 8, !tbaa !1
  %restore_names21 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %42, i32 0, i32 2
  store i32 %41, i32* %restore_names21, align 4, !tbaa !31
  %43 = load %struct.alloc_save_s*, %struct.alloc_save_s** %gsave, align 8, !tbaa !1
  %restore_names22 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %43, i32 0, i32 2
  store i32 0, i32* %restore_names22, align 4, !tbaa !31
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %44 = load i64, i64* %sid, align 8, !tbaa !25
  %45 = load %struct.alloc_save_s*, %struct.alloc_save_s** %lsave, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %45, i32 0, i32 4
  store i64 %44, i64* %id, align 8, !tbaa !32
  %46 = load i8*, i8** %cdata.addr, align 8, !tbaa !1
  %47 = load %struct.alloc_save_s*, %struct.alloc_save_s** %lsave, align 8, !tbaa !1
  %client_data24 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %47, i32 0, i32 5
  store i8* %46, i8** %client_data24, align 8, !tbaa !28
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %space25 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %48, i32 0, i32 7
  %49 = load i32, i32* %space25, align 4, !tbaa !30
  %50 = load %struct.alloc_save_s*, %struct.alloc_save_s** %lsave, align 8, !tbaa !1
  call void @print_save(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %49, %struct.alloc_save_s* %50) #4
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %save_level26 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %51, i32 0, i32 19
  %52 = load i32, i32* %save_level26, align 4, !tbaa !26
  %cmp27 = icmp sgt i32 %52, 1
  br i1 %cmp27, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %if.end.23
  %53 = bitcast i64* %scanned to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load %struct.alloc_save_s*, %struct.alloc_save_s** %lsave, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %55, i32 0, i32 0
  %call29 = call i32 @save_set_new(%struct.gs_ref_memory_s* %state, i32 0, i32 1, i64* %scanned) #4
  store i32 %call29, i32* %code, align 4, !tbaa !5
  %56 = load i32, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %56, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  %57 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.31
  %58 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i64* %scanned to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.35 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.34

if.end.34:                                        ; preds = %cleanup.cont, %if.end.23
  %60 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  call void @alloc_set_in_save(%struct.gs_dual_memory_s* %60) #4
  %61 = load i64, i64* %sid, align 8, !tbaa !25
  %62 = load i64*, i64** %psid.addr, align 8, !tbaa !1
  store i64 %61, i64* %62, align 8, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35

cleanup.35:                                       ; preds = %if.end.34, %cleanup, %if.end.17
  %63 = bitcast %struct.alloc_save_s** %lsave to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast %struct.alloc_save_s** %gsave to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32* %global4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i64* %sid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.gs_ref_memory_s** %gmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.alloc_save_s* @alloc_save_space(%struct.gs_ref_memory_s* %mem, %struct.gs_dual_memory_s* %dmem, i64 %sid) #0 {
entry:
  %retval = alloca %struct.alloc_save_s*, align 8
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %sid.addr = alloca i64, align 8
  %save_mem = alloca %struct.gs_ref_memory_s, align 8
  %save = alloca %struct.alloc_save_s*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %new_pcc = alloca %struct.chunk_s*, align 8
  %inner = alloca %struct.chunk_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  store i64 %sid, i64* %sid.addr, align 8, !tbaa !25
  %0 = bitcast %struct.gs_ref_memory_s* %save_mem to i8*
  call void @llvm.lifetime.start(i64 1496, i8* %0) #1
  %1 = bitcast %struct.alloc_save_s** %save to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.chunk_s** %new_pcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.chunk_s* null, %struct.chunk_s** %new_pcc, align 8, !tbaa !1
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_ref_memory_s* %save_mem to i8*
  %6 = bitcast %struct.gs_ref_memory_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 1496, i32 8, i1 false), !tbaa.struct !33
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_close_chunk(%struct.gs_ref_memory_s* %7) #4
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %8, i32 0, i32 14
  store %struct.chunk_s* null, %struct.chunk_s** %pcc, align 8, !tbaa !35
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_ref_memory_s* %9 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %status = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 4
  %11 = load void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)** %status, align 8, !tbaa !36
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.gs_memory_s*
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %previous_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %14, i32 0, i32 32
  call void %11(%struct.gs_memory_s* %13, %struct.gs_memory_status_s* %previous_status) #4
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @ialloc_reset(%struct.gs_ref_memory_s* %15) #4
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %save_mem, i32 0, i32 11
  %16 = load %struct.chunk_s*, %struct.chunk_s** %cfirst, align 8, !tbaa !38
  store %struct.chunk_s* %16, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp = icmp ne %struct.chunk_s* %17, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %18, i32 0, i32 6
  %19 = load i8*, i8** %ctop, align 8, !tbaa !39
  %20 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %20, i32 0, i32 3
  %21 = load i8*, i8** %cbot, align 8, !tbaa !40
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp sgt i64 %sub.ptr.sub, 532
  br i1 %cmp1, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body
  %22 = bitcast %struct.chunk_s** %inner to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !41
  %call = call i8* @gs_raw_alloc_struct_immovable(%struct.gs_memory_s* %24, %struct.gs_memory_struct_type_s* @st_chunk, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0)) #4
  %25 = bitcast i8* %call to %struct.chunk_s*
  store %struct.chunk_s* %25, %struct.chunk_s** %inner, align 8, !tbaa !1
  %26 = load %struct.chunk_s*, %struct.chunk_s** %inner, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.chunk_s* %26, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %27 = load %struct.chunk_s*, %struct.chunk_s** %inner, align 8, !tbaa !1
  %28 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot4 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %28, i32 0, i32 3
  %29 = load i8*, i8** %cbot4, align 8, !tbaa !40
  %30 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %ctop5 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %30, i32 0, i32 6
  %31 = load i8*, i8** %ctop5, align 8, !tbaa !39
  %32 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %sreloc = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %32, i32 0, i32 20
  %33 = load i32*, i32** %sreloc, align 8, !tbaa !42
  %cmp6 = icmp ne i32* %33, null
  %conv = zext i1 %cmp6 to i32
  %34 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  call void @alloc_init_chunk(%struct.chunk_s* %27, i8* %29, i8* %31, i32 %conv, %struct.chunk_s* %34) #4
  %35 = load %struct.chunk_s*, %struct.chunk_s** %inner, align 8, !tbaa !1
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_link_chunk(%struct.chunk_s* %35, %struct.gs_ref_memory_s* %36) #4
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %37 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %pcc7 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %save_mem, i32 0, i32 14
  %38 = load %struct.chunk_s*, %struct.chunk_s** %pcc7, align 8, !tbaa !35
  %cmp8 = icmp eq %struct.chunk_s* %37, %38
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  %39 = load %struct.chunk_s*, %struct.chunk_s** %inner, align 8, !tbaa !1
  store %struct.chunk_s* %39, %struct.chunk_s** %new_pcc, align 8, !tbaa !1
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %do.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.3
  %40 = bitcast %struct.chunk_s** %inner to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.12

if.end.12:                                        ; preds = %cleanup.cont, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %41 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %41, i32 0, i32 10
  %42 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !43
  store %struct.chunk_s* %42, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %43 = load %struct.chunk_s*, %struct.chunk_s** %new_pcc, align 8, !tbaa !1
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc13 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %44, i32 0, i32 14
  store %struct.chunk_s* %43, %struct.chunk_s** %pcc13, align 8, !tbaa !35
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_open_chunk(%struct.gs_ref_memory_s* %45) #4
  %46 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gs_ref_memory_s* %46 to %struct.gs_memory_s*
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 8
  %48 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !44
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %50 = bitcast %struct.gs_ref_memory_s* %49 to %struct.gs_memory_s*
  %call15 = call i8* %48(%struct.gs_memory_s* %50, %struct.gs_memory_struct_type_s* @st_alloc_save, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0)) #4
  %51 = bitcast i8* %call15 to %struct.alloc_save_s*
  store %struct.alloc_save_s* %51, %struct.alloc_save_s** %save, align 8, !tbaa !1
  br label %do.body.16

do.body.16:                                       ; preds = %for.end
  br label %do.cond.17

do.cond.17:                                       ; preds = %do.body.16
  br label %do.end.18

do.end.18:                                        ; preds = %do.cond.17
  %52 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %cmp19 = icmp eq %struct.alloc_save_s* %52, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end.18
  %53 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @restore_free(%struct.gs_ref_memory_s* %53) #4
  %54 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %55 = bitcast %struct.gs_ref_memory_s* %54 to i8*
  %56 = bitcast %struct.gs_ref_memory_s* %save_mem to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 1496, i32 8, i1 false), !tbaa.struct !33
  store %struct.alloc_save_s* null, %struct.alloc_save_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

if.end.22:                                        ; preds = %do.end.18
  %57 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %57, i32 0, i32 5
  store i8* null, i8** %client_data, align 8, !tbaa !28
  %58 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %58, i32 0, i32 0
  %59 = bitcast %struct.gs_ref_memory_s* %state to i8*
  %60 = bitcast %struct.gs_ref_memory_s* %save_mem to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 1496, i32 8, i1 false), !tbaa.struct !33
  %61 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %61, i32 0, i32 1
  %62 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces23 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %62, i32 0, i32 1
  %63 = bitcast %struct.vm_spaces_s* %spaces to i8*
  %64 = bitcast %struct.vm_spaces_s* %spaces23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 40, i32 8, i1 false), !tbaa.struct !45
  %65 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %65, i32 0, i32 2
  %66 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !46
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %66, i32 0, i32 16
  %67 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !47
  %call24 = call %struct.gs_memory_s* @names_memory(%struct.name_table_s* %67) #4
  %68 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %69 = bitcast %struct.gs_ref_memory_s* %68 to %struct.gs_memory_s*
  %cmp25 = icmp eq %struct.gs_memory_s* %call24, %69
  %conv26 = zext i1 %cmp25 to i32
  %70 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %restore_names = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %70, i32 0, i32 2
  store i32 %conv26, i32* %restore_names, align 4, !tbaa !31
  %71 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %71, i32 0, i32 0
  %72 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !49
  %73 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp27 = icmp eq %struct.gs_ref_memory_s* %72, %73
  %conv28 = zext i1 %cmp27 to i32
  %74 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %is_current = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %74, i32 0, i32 3
  store i32 %conv28, i32* %is_current, align 4, !tbaa !50
  %75 = load i64, i64* %sid.addr, align 8, !tbaa !25
  %76 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %76, i32 0, i32 4
  store i64 %75, i64* %id, align 8, !tbaa !32
  %77 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %78 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %78, i32 0, i32 28
  store %struct.alloc_save_s* %77, %struct.alloc_save_s** %saved, align 8, !tbaa !51
  br label %do.body.29

do.body.29:                                       ; preds = %if.end.22
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.body.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  %79 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %streams = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %79, i32 0, i32 22
  store %struct.stream_s* null, %struct.stream_s** %streams, align 8, !tbaa !52
  %80 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %total_scanned = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %80, i32 0, i32 29
  store i64 0, i64* %total_scanned, align 8, !tbaa !53
  %81 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %total_scanned_after_compacting = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %81, i32 0, i32 30
  store i64 0, i64* %total_scanned_after_compacting, align 8, !tbaa !54
  %82 = load i64, i64* %sid.addr, align 8, !tbaa !25
  %tobool = icmp ne i64 %82, 0
  br i1 %tobool, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %do.end.31
  %83 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %save_level = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %83, i32 0, i32 19
  %84 = load i32, i32* %save_level, align 4, !tbaa !26
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %save_level, align 4, !tbaa !26
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %do.end.31
  %85 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  store %struct.alloc_save_s* %85, %struct.alloc_save_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

cleanup.34:                                       ; preds = %if.end.33, %if.then.21
  %86 = bitcast %struct.chunk_s** %new_pcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast %struct.alloc_save_s** %save to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast %struct.gs_ref_memory_s* %save_mem to i8*
  call void @llvm.lifetime.end(i64 1496, i8* %89) #1
  %90 = load %struct.alloc_save_s*, %struct.alloc_save_s** %retval
  ret %struct.alloc_save_s* %90

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @alloc_free_save(%struct.gs_ref_memory_s* %mem, %struct.alloc_save_s* %save, i8* %scn) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %save.addr = alloca %struct.alloc_save_s*, align 8
  %scn.addr = alloca i8*, align 8
  %save_mem = alloca %struct.gs_ref_memory_s, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.alloc_save_s* %save, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  store i8* %scn, i8** %scn.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s* %save_mem to i8*
  call void @llvm.lifetime.start(i64 1496, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 28
  %2 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !51
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %2, i32 0, i32 0
  %3 = bitcast %struct.gs_ref_memory_s* %save_mem to i8*
  %4 = bitcast %struct.gs_ref_memory_s* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 1496, i32 8, i1 false), !tbaa.struct !33
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gs_ref_memory_s* %8 to %struct.gs_memory_s*
  %10 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %11 = bitcast %struct.alloc_save_s* %10 to i8*
  %12 = load i8*, i8** %scn.addr, align 8, !tbaa !1
  call void %7(%struct.gs_memory_s* %9, i8* %11, i8* %12) #4
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @restore_free(%struct.gs_ref_memory_s* %13) #4
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_ref_memory_s* %14 to i8*
  %16 = bitcast %struct.gs_ref_memory_s* %save_mem to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 1496, i32 8, i1 false), !tbaa.struct !33
  %17 = bitcast %struct.gs_ref_memory_s* %save_mem to i8*
  call void @llvm.lifetime.end(i64 1496, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_save(i8* %str, i32 %spacen, %struct.alloc_save_s* %sav) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %spacen.addr = alloca i32, align 4
  %sav.addr = alloca %struct.alloc_save_s*, align 8
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %spacen, i32* %spacen.addr, align 4, !tbaa !5
  store %struct.alloc_save_s* %sav, %struct.alloc_save_s** %sav.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @save_set_new(%struct.gs_ref_memory_s* %mem, i32 %to_new, i32 %set_limit, i64* %pscanned) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %to_new.addr = alloca i32, align 4
  %set_limit.addr = alloca i32, align 4
  %pscanned.addr = alloca i64*, align 8
  %scanned = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cp = alloca %struct.chunk_s*, align 8
  %has_refs3 = alloca i32, align 4
  %pre = alloca %struct.obj_header_s*, align 8
  %end = alloca %struct.obj_header_s*, align 8
  %size = alloca i32, align 4
  %prp = alloca i16*, align 8
  %size12 = alloca i32, align 4
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %to_new, i32* %to_new.addr, align 4, !tbaa !5
  store i32 %set_limit, i32* %set_limit.addr, align 4, !tbaa !5
  store i64* %pscanned, i64** %pscanned.addr, align 8, !tbaa !1
  %0 = bitcast i64* %scanned to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %scanned, align 8, !tbaa !25
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i32, i32* %to_new.addr, align 4, !tbaa !5
  %4 = load i32, i32* %set_limit.addr, align 4, !tbaa !5
  %call = call i32 @save_set_new_changes(%struct.gs_ref_memory_s* %2, i32 %3, i32 %4) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end:                                           ; preds = %entry
  %7 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %8, i32 0, i32 11
  %9 = load %struct.chunk_s*, %struct.chunk_s** %cfirst, align 8, !tbaa !38
  store %struct.chunk_s* %9, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %if.end
  %10 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.chunk_s* %10, null
  br i1 %cmp1, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  %11 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %has_refs = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %11, i32 0, i32 13
  %12 = load i32, i32* %has_refs, align 4, !tbaa !56
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.2, label %if.end.33

if.then.2:                                        ; preds = %for.body
  %13 = bitcast i32* %has_refs3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %has_refs3, align 4, !tbaa !5
  %14 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %15, i32 0, i32 1
  %16 = load i8*, i8** %cbase, align 8, !tbaa !57
  %17 = bitcast i8* %16 to %struct.obj_header_s*
  store %struct.obj_header_s* %17, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %18 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %19, i32 0, i32 3
  %20 = load i8*, i8** %cbot, align 8, !tbaa !40
  %21 = bitcast i8* %20 to %struct.obj_header_s*
  store %struct.obj_header_s* %21, %struct.obj_header_s** %end, align 8, !tbaa !1
  %22 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then.2
  %23 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %24 = load %struct.obj_header_s*, %struct.obj_header_s** %end, align 8, !tbaa !1
  %cmp5 = icmp ult %struct.obj_header_s* %23, %24
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %25 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %25, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size7 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %26 = load i32, i32* %size7, align 4, !tbaa !58
  store i32 %26, i32* %size, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %for.body.6
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %27 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d8 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %27, i32 0, i32 0
  %o9 = bitcast %union._d* %d8 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o9, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %28 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %cmp10 = icmp eq %struct.gs_memory_struct_type_s* %28, @st_refs
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.end
  %29 = bitcast i16** %prp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %30, i64 1
  %31 = bitcast %struct.obj_header_s* %add.ptr to i16*
  store i16* %31, i16** %prp, align 8, !tbaa !1
  %32 = bitcast i32* %size12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load i16*, i16** %prp, align 8, !tbaa !1
  %34 = bitcast i16* %33 to i8*
  %35 = load i32, i32* %to_new.addr, align 4, !tbaa !5
  %call13 = call i32 @mark_allocated(i8* %34, i32 %35, i32* %size12) #4
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %36, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  %37 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.11
  %38 = load i32, i32* %size12, align 4, !tbaa !5
  %conv = zext i32 %38 to i64
  %39 = load i64, i64* %scanned, align 8, !tbaa !25
  %add = add i64 %39, %conv
  store i64 %add, i64* %scanned, align 8, !tbaa !25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15
  %40 = bitcast i32* %size12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i16** %prp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.24 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.19

if.else:                                          ; preds = %do.end
  %42 = load i64, i64* %scanned, align 8, !tbaa !25
  %add18 = add i64 %42, 24
  store i64 %add18, i64* %scanned, align 8, !tbaa !25
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %cleanup.cont
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %43 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %44 = bitcast %struct.obj_header_s* %43 to i8*
  %45 = load i32, i32* %size, align 4, !tbaa !5
  %conv20 = zext i32 %45 to i64
  %add21 = add i64 %conv20, 24
  %add22 = add i64 %add21, 7
  %and = and i64 %add22, -8
  %add.ptr23 = getelementptr inbounds i8, i8* %44, i64 %and
  %46 = bitcast i8* %add.ptr23 to %struct.obj_header_s*
  store %struct.obj_header_s* %46, %struct.obj_header_s** %pre, align 8, !tbaa !1
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.24

cleanup.24:                                       ; preds = %for.end, %cleanup
  %47 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %cleanup.dest.27 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.27, label %cleanup.30 [
    i32 0, label %cleanup.cont.28
  ]

cleanup.cont.28:                                  ; preds = %cleanup.24
  %50 = load i32, i32* %has_refs3, align 4, !tbaa !5
  %51 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %has_refs29 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %51, i32 0, i32 13
  store i32 %50, i32* %has_refs29, align 4, !tbaa !56
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %cleanup.cont.28, %cleanup.24
  %52 = bitcast i32* %has_refs3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %cleanup.dest.31 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.31, label %cleanup.36 [
    i32 0, label %cleanup.cont.32
  ]

cleanup.cont.32:                                  ; preds = %cleanup.30
  br label %if.end.33

if.end.33:                                        ; preds = %cleanup.cont.32, %for.body
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %53 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %53, i32 0, i32 10
  %54 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !43
  store %struct.chunk_s* %54, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %for.end.35, %cleanup.30
  %55 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %cleanup.dest.37 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.37, label %cleanup.42 [
    i32 0, label %cleanup.cont.38
  ]

cleanup.cont.38:                                  ; preds = %cleanup.36
  br label %do.body.39

do.body.39:                                       ; preds = %cleanup.cont.38
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.body.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %56 = load i64, i64* %scanned, align 8, !tbaa !25
  %57 = load i64*, i64** %pscanned.addr, align 8, !tbaa !1
  store i64 %56, i64* %57, align 8, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

cleanup.42:                                       ; preds = %do.end.41, %cleanup.36, %if.then
  %58 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i64* %scanned to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %mem, %struct.ref_s* %pcont, i16* %where, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %pcont.addr = alloca %struct.ref_s*, align 8
  %where.addr = alloca i16*, align 8
  %cname.addr = alloca i8*, align 8
  %cp = alloca %struct.alloc_change_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pcont, %struct.ref_s** %pcont.addr, align 8, !tbaa !1
  store i16* %where, i16** %where.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.alloc_change_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %new_mask = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 20
  %2 = load i32, i32* %new_mask, align 4, !tbaa !11
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_ref_memory_s* %3 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %5 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !44
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %call = call i8* %5(%struct.gs_memory_s* %7, %struct.gs_memory_struct_type_s* @st_alloc_change, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #4
  %8 = bitcast i8* %call to %struct.alloc_change_s*
  store %struct.alloc_change_s* %8, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %9 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.alloc_change_s* %9, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %10, i32 0, i32 26
  %11 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes, align 8, !tbaa !60
  %12 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %12, i32 0, i32 0
  store %struct.alloc_change_s* %11, %struct.alloc_change_s** %next, align 8, !tbaa !61
  %13 = load i16*, i16** %where.addr, align 8, !tbaa !1
  %14 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %where4 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %14, i32 0, i32 1
  store i16* %13, i16** %where4, align 8, !tbaa !66
  %15 = load %struct.ref_s*, %struct.ref_s** %pcont.addr, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.ref_s* %15, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.3
  %16 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %16, i32 0, i32 3
  store i16 -2, i16* %offset, align 2, !tbaa !67
  br label %if.end.36

if.else:                                          ; preds = %if.end.3
  %17 = load %struct.ref_s*, %struct.ref_s** %pcont.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %18 = load i16, i16* %type_attrs, align 2, !tbaa !68
  %conv = zext i16 %18 to i32
  %and = and i32 %conv, 15360
  %cmp7 = icmp eq i32 %and, 1024
  br i1 %cmp7, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %19 = load %struct.ref_s*, %struct.ref_s** %pcont.addr, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %20 = bitcast i16* %type_attrs10 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx, align 1, !tbaa !34
  %conv11 = zext i8 %21 to i32
  %cmp12 = icmp eq i32 %conv11, 2
  br i1 %cmp12, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %lor.lhs.false, %if.else
  %22 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %offset15 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %22, i32 0, i32 3
  store i16 -1, i16* %offset15, align 2, !tbaa !67
  br label %if.end.35

if.else.16:                                       ; preds = %lor.lhs.false
  %23 = load %struct.ref_s*, %struct.ref_s** %pcont.addr, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  %24 = load i16, i16* %type_attrs18, align 2, !tbaa !68
  %conv19 = zext i16 %24 to i32
  %and20 = and i32 %conv19, 15872
  %cmp21 = icmp eq i32 %and20, 2048
  br i1 %cmp21, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %if.else.16
  %25 = load i16*, i16** %where.addr, align 8, !tbaa !1
  %26 = bitcast i16* %25 to i8*
  %27 = load %struct.ref_s*, %struct.ref_s** %pcont.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %28 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %29 = bitcast %struct.obj_header_s* %28 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv24 = trunc i64 %sub.ptr.sub to i16
  %30 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %offset25 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %30, i32 0, i32 3
  store i16 %conv24, i16* %offset25, align 2, !tbaa !67
  br label %if.end.34

if.else.26:                                       ; preds = %if.else.16
  %call27 = call i8* @gs_program_name() #4
  %call28 = call i64 @gs_revision_number() #4
  call void @eprintf_program_ident(i8* %call27, i64 %call28) #4
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 488) #4
  %31 = load %struct.ref_s*, %struct.ref_s** %pcont.addr, align 8, !tbaa !1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %type_attrs30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 0
  %32 = bitcast i16* %type_attrs30 to i8*
  %arrayidx31 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx31, align 1, !tbaa !34
  %conv32 = zext i8 %33 to i32
  %34 = load %struct.ref_s*, %struct.ref_s** %pcont.addr, align 8, !tbaa !1
  %35 = ptrtoint %struct.ref_s* %34 to i64
  %36 = load i16*, i16** %where.addr, align 8, !tbaa !1
  %37 = ptrtoint i16* %36 to i64
  %call33 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i32 0, i32 0), i32 %conv32, i64 %35, i64 %37) #4
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %39 = bitcast %struct.gs_ref_memory_s* %38 to %struct.gs_memory_s*
  call void @gs_abort(%struct.gs_memory_s* %39) #4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.26, %if.then.23
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.14
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.6
  %40 = load i16*, i16** %where.addr, align 8, !tbaa !1
  %41 = load i16, i16* %40, align 2, !tbaa !69
  %conv37 = zext i16 %41 to i32
  %cmp38 = icmp sge i32 %conv37, 16384
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.end.36
  %42 = load i16*, i16** %where.addr, align 8, !tbaa !1
  %43 = load i16, i16* %42, align 2, !tbaa !69
  %44 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %44, i32 0, i32 2
  %45 = bitcast %struct.ref_s* %contents to i16*
  store i16 %43, i16* %45, align 2, !tbaa !69
  br label %if.end.47

if.else.41:                                       ; preds = %if.end.36
  %46 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %contents42 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %46, i32 0, i32 2
  %47 = load i16*, i16** %where.addr, align 8, !tbaa !1
  %48 = bitcast i16* %47 to %struct.ref_s*
  %49 = bitcast %struct.ref_s* %contents42 to i8*
  %50 = bitcast %struct.ref_s* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 16, i32 8, i1 false), !tbaa.struct !70
  %51 = load i16*, i16** %where.addr, align 8, !tbaa !1
  %52 = bitcast i16* %51 to %struct.ref_s*
  %tas43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 0
  %type_attrs44 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas43, i32 0, i32 0
  %53 = load i16, i16* %type_attrs44, align 2, !tbaa !68
  %conv45 = zext i16 %53 to i32
  %or = or i32 %conv45, 2
  %conv46 = trunc i32 %or to i16
  store i16 %conv46, i16* %type_attrs44, align 2, !tbaa !68
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.41, %if.then.40
  %54 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %55 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes48 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %55, i32 0, i32 26
  store %struct.alloc_change_s* %54, %struct.alloc_change_s** %changes48, align 8, !tbaa !60
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then.2, %if.then
  %56 = bitcast %struct.alloc_change_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare void @eprintf_program_ident(i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare void @lprintf_file_and_line(i8*, i32) #2

declare i32 @errprintf_nomem(i8*, ...) #2

declare void @gs_abort(%struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @alloc_save_change(%struct.gs_dual_memory_s* %dmem, %struct.ref_s* %pcont, i16* %where, i8* %cname) #0 {
entry:
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %pcont.addr = alloca %struct.ref_s*, align 8
  %where.addr = alloca i16*, align 8
  %cname.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pcont, %struct.ref_s** %pcont.addr, align 8, !tbaa !1
  store i16* %where, i16** %where.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pcont.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %2, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %pcont.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !68
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 12
  %shr = lshr i32 %and, 2
  %idxprom = zext i32 %shr to i64
  %6 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces1 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %6, i32 0, i32 1
  %memories2 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces1, i32 0, i32 1
  %indexed = bitcast %union.anon* %memories2 to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_ref_memory_s* [ %3, %cond.true ], [ %7, %cond.false ]
  store %struct.gs_ref_memory_s* %cond, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %pcont.addr, align 8, !tbaa !1
  %10 = load i16*, i16** %where.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %8, %struct.ref_s* %9, i16* %10, i8* %11) #4
  %12 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @alloc_save_change_alloc(%struct.gs_ref_memory_s* %mem, i8* %cname, %struct.alloc_change_s** %pcp) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %pcp.addr = alloca %struct.alloc_change_s**, align 8
  %cp = alloca %struct.alloc_change_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  store %struct.alloc_change_s** %pcp, %struct.alloc_change_s*** %pcp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.alloc_change_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %new_mask = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 20
  %2 = load i32, i32* %new_mask, align 4, !tbaa !11
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_ref_memory_s* %3 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %5 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !44
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %call = call i8* %5(%struct.gs_memory_s* %7, %struct.gs_memory_struct_type_s* @st_alloc_change, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #4
  %8 = bitcast i8* %call to %struct.alloc_change_s*
  store %struct.alloc_change_s* %8, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %9 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.alloc_change_s* %9, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %10, i32 0, i32 26
  %11 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes, align 8, !tbaa !60
  %12 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %12, i32 0, i32 0
  store %struct.alloc_change_s* %11, %struct.alloc_change_s** %next, align 8, !tbaa !61
  %13 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %where = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %13, i32 0, i32 1
  store i16* null, i16** %where, align 8, !tbaa !66
  %14 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %14, i32 0, i32 3
  store i16 -3, i16* %offset, align 2, !tbaa !67
  %15 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %15, i32 0, i32 2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !68
  %16 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %17 = load %struct.alloc_change_s**, %struct.alloc_change_s*** %pcp.addr, align 8, !tbaa !1
  store %struct.alloc_change_s* %16, %struct.alloc_change_s** %17, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %18 = bitcast %struct.alloc_change_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define void @alloc_save_remove(%struct.gs_ref_memory_s* %mem, i16* %obj, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %obj.addr = alloca i16*, align 8
  %cname.addr = alloca i8*, align 8
  %cpp = alloca %struct.alloc_change_s**, align 8
  %cp = alloca %struct.alloc_change_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store i16* %obj, i16** %obj.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.alloc_change_s*** %cpp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 26
  store %struct.alloc_change_s** %changes, %struct.alloc_change_s*** %cpp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end.11, %entry
  %2 = load %struct.alloc_change_s**, %struct.alloc_change_s*** %cpp, align 8, !tbaa !1
  %3 = load %struct.alloc_change_s*, %struct.alloc_change_s** %2, align 8, !tbaa !1
  %cmp = icmp ne %struct.alloc_change_s* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast %struct.alloc_change_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.alloc_change_s**, %struct.alloc_change_s*** %cpp, align 8, !tbaa !1
  %6 = load %struct.alloc_change_s*, %struct.alloc_change_s** %5, align 8, !tbaa !1
  store %struct.alloc_change_s* %6, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %7 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %7, i32 0, i32 3
  %8 = load i16, i16* %offset, align 2, !tbaa !67
  %conv = sext i16 %8 to i32
  %cmp1 = icmp eq i32 %conv, -3
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %where = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %9, i32 0, i32 1
  %10 = load i16*, i16** %where, align 8, !tbaa !66
  %11 = load i16*, i16** %obj.addr, align 8, !tbaa !1
  %cmp3 = icmp eq i16* %10, %11
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %scan_limit = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %12, i32 0, i32 27
  %13 = load %struct.alloc_change_s*, %struct.alloc_change_s** %scan_limit, align 8, !tbaa !73
  %14 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.alloc_change_s* %13, %14
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %15 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %15, i32 0, i32 0
  %16 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next, align 8, !tbaa !61
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %scan_limit8 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %17, i32 0, i32 27
  store %struct.alloc_change_s* %16, %struct.alloc_change_s** %scan_limit8, align 8, !tbaa !73
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %18 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %next9 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %18, i32 0, i32 0
  %19 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next9, align 8, !tbaa !61
  %20 = load %struct.alloc_change_s**, %struct.alloc_change_s*** %cpp, align 8, !tbaa !1
  store %struct.alloc_change_s* %19, %struct.alloc_change_s** %20, align 8, !tbaa !1
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gs_ref_memory_s* %21 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %23 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %26 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %27 = bitcast %struct.alloc_change_s* %26 to i8*
  call void %23(%struct.gs_memory_s* %25, i8* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)) #4
  br label %if.end.11

if.else:                                          ; preds = %land.lhs.true, %for.body
  %28 = load %struct.alloc_change_s**, %struct.alloc_change_s*** %cpp, align 8, !tbaa !1
  %29 = load %struct.alloc_change_s*, %struct.alloc_change_s** %28, align 8, !tbaa !1
  %next10 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %29, i32 0, i32 0
  store %struct.alloc_change_s** %next10, %struct.alloc_change_s*** %cpp, align 8, !tbaa !1
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end
  %30 = bitcast %struct.alloc_change_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = bitcast %struct.alloc_change_s*** %cpp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @alloc_save__filter_changes(%struct.gs_ref_memory_s* %memory) #0 {
entry:
  %memory.addr = alloca %struct.gs_ref_memory_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_ref_memory_s* %memory, %struct.gs_ref_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %1, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_ref_memory_s* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @alloc_save__filter_changes_in_space(%struct.gs_ref_memory_s* %3) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %4, i32 0, i32 28
  %5 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !51
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %5, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @alloc_save__filter_changes_in_space(%struct.gs_ref_memory_s* %mem) #3 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %cpp = alloca %struct.alloc_change_s**, align 8
  %cp = alloca %struct.alloc_change_s*, align 8
  %pre = alloca %struct.obj_header_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.alloc_change_s*** %cpp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 26
  store %struct.alloc_change_s** %changes, %struct.alloc_change_s*** %cpp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end.10, %entry
  %2 = load %struct.alloc_change_s**, %struct.alloc_change_s*** %cpp, align 8, !tbaa !1
  %3 = load %struct.alloc_change_s*, %struct.alloc_change_s** %2, align 8, !tbaa !1
  %cmp = icmp ne %struct.alloc_change_s* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast %struct.alloc_change_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.alloc_change_s**, %struct.alloc_change_s*** %cpp, align 8, !tbaa !1
  %6 = load %struct.alloc_change_s*, %struct.alloc_change_s** %5, align 8, !tbaa !1
  store %struct.alloc_change_s* %6, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %7 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %7, i32 0, i32 3
  %8 = load i16, i16* %offset, align 2, !tbaa !67
  %conv = sext i16 %8 to i32
  %cmp1 = icmp eq i32 %conv, -3
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %where = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %9, i32 0, i32 1
  %10 = load i16*, i16** %where, align 8, !tbaa !66
  %11 = bitcast i16* %10 to i8*
  %call = call i32 @check_l_mark(i8* %11) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %14 = bitcast %struct.alloc_change_s* %13 to %struct.obj_header_s*
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %14, i64 -1
  store %struct.obj_header_s* %add.ptr, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %15 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %15, i32 0, i32 0
  %16 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next, align 8, !tbaa !61
  %17 = load %struct.alloc_change_s**, %struct.alloc_change_s*** %cpp, align 8, !tbaa !1
  store %struct.alloc_change_s* %16, %struct.alloc_change_s** %17, align 8, !tbaa !1
  %18 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %where3 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %18, i32 0, i32 1
  store i16* null, i16** %where3, align 8, !tbaa !66
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %scan_limit = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %19, i32 0, i32 27
  %20 = load %struct.alloc_change_s*, %struct.alloc_change_s** %scan_limit, align 8, !tbaa !73
  %21 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.alloc_change_s* %20, %21
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %22 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %next7 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %22, i32 0, i32 0
  %23 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next7, align 8, !tbaa !61
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %scan_limit8 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %24, i32 0, i32 27
  store %struct.alloc_change_s* %23, %struct.alloc_change_s** %scan_limit8, align 8, !tbaa !73
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %25 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %25, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 0
  %m = bitcast %union._f* %f to %struct._m*
  %26 = bitcast %struct._m* %m to i32*
  %bf.load = load i32, i32* %26, align 4
  %bf.clear = and i32 %bf.load, 1
  %bf.set = or i32 %bf.clear, -2
  store i32 %bf.set, i32* %26, align 4
  %27 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %for.body
  %28 = load %struct.alloc_change_s**, %struct.alloc_change_s*** %cpp, align 8, !tbaa !1
  %29 = load %struct.alloc_change_s*, %struct.alloc_change_s** %28, align 8, !tbaa !1
  %next9 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %29, i32 0, i32 0
  store %struct.alloc_change_s** %next9, %struct.alloc_change_s*** %cpp, align 8, !tbaa !1
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  %30 = bitcast %struct.alloc_change_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = bitcast %struct.alloc_change_s*** %cpp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @alloc_save_current_id(%struct.gs_dual_memory_s* %dmem) #0 {
entry:
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %save = alloca %struct.alloc_save_s*, align 8
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.alloc_save_s** %save to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %1, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !22
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %2, i32 0, i32 28
  %3 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !51
  store %struct.alloc_save_s* %3, %struct.alloc_save_s** %save, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %cmp = icmp ne %struct.alloc_save_s* %4, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %5, i32 0, i32 4
  %6 = load i64, i64* %id, align 8, !tbaa !32
  %cmp1 = icmp eq i64 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %8, i32 0, i32 0
  %saved2 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %state, i32 0, i32 28
  %9 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved2, align 8, !tbaa !74
  store %struct.alloc_save_s* %9, %struct.alloc_save_s** %save, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %id3 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %10, i32 0, i32 4
  %11 = load i64, i64* %id3, align 8, !tbaa !32
  %12 = bitcast %struct.alloc_save_s** %save to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define %struct.alloc_save_s* @alloc_save_current(%struct.gs_dual_memory_s* %dmem) #0 {
entry:
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %1 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %call = call i64 @alloc_save_current_id(%struct.gs_dual_memory_s* %1) #4
  %call1 = call %struct.alloc_save_s* @alloc_find_save(%struct.gs_dual_memory_s* %0, i64 %call) #4
  ret %struct.alloc_save_s* %call1
}

; Function Attrs: nounwind uwtable
define %struct.alloc_save_s* @alloc_find_save(%struct.gs_dual_memory_s* %dmem, i64 %sid) #0 {
entry:
  %retval = alloca %struct.alloc_save_s*, align 8
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %sid.addr = alloca i64, align 8
  %sprev = alloca %struct.alloc_save_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  store i64 %sid, i64* %sid.addr, align 8, !tbaa !25
  %0 = bitcast %struct.alloc_save_s** %sprev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %1, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !22
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %2, i32 0, i32 28
  %3 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !51
  store %struct.alloc_save_s* %3, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %4 = load i64, i64* %sid.addr, align 8, !tbaa !25
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.alloc_save_s* null, %struct.alloc_save_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %if.end
  %5 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.alloc_save_s* %5, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %6, i32 0, i32 4
  %7 = load i64, i64* %id, align 8, !tbaa !32
  %8 = load i64, i64* %sid.addr, align 8, !tbaa !25
  %cmp2 = icmp eq i64 %7, %8
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %while.body
  %9 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  store %struct.alloc_save_s* %9, %struct.alloc_save_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %while.body
  %10 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %10, i32 0, i32 0
  %saved5 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %state, i32 0, i32 28
  %11 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved5, align 8, !tbaa !74
  store %struct.alloc_save_s* %11, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.alloc_save_s* null, %struct.alloc_save_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.3, %if.then
  %12 = bitcast %struct.alloc_save_s** %sprev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load %struct.alloc_save_s*, %struct.alloc_save_s** %retval
  ret %struct.alloc_save_s* %13
}

; Function Attrs: nounwind uwtable
define i32 @alloc_is_since_save(i8* %vptr, %struct.alloc_save_s* %save) #0 {
entry:
  %retval = alloca i32, align 4
  %vptr.addr = alloca i8*, align 8
  %save.addr = alloca %struct.alloc_save_s*, align 8
  %ptr = alloca i8*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  %cp = alloca %struct.chunk_s*, align 8
  %cp41 = alloca %struct.chunk_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store %struct.alloc_save_s* %save, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %0 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  store i8* %1, i8** %ptr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %3, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !22
  store %struct.gs_ref_memory_s* %4, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %5, i32 0, i32 28
  %6 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !51
  %cmp = icmp eq %struct.alloc_save_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.66

if.end:                                           ; preds = %do.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %if.end
  %7 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  br label %do.body.1

do.body.1:                                        ; preds = %for.cond
  br label %do.cond.2

do.cond.2:                                        ; preds = %do.body.1
  br label %do.end.3

do.end.3:                                         ; preds = %do.cond.2
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %8, i32 0, i32 11
  %9 = load %struct.chunk_s*, %struct.chunk_s** %cfirst, align 8, !tbaa !38
  store %struct.chunk_s* %9, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %do.end.3
  %10 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.chunk_s* %10, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.4
  %11 = load i8*, i8** %ptr, align 8, !tbaa !1
  %12 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %cbase, align 8, !tbaa !57
  %cmp6 = icmp uge i8* %11, %13
  br i1 %cmp6, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %for.body
  %14 = load i8*, i8** %ptr, align 8, !tbaa !1
  %15 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cend = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %15, i32 0, i32 8
  %16 = load i8*, i8** %cend, align 8, !tbaa !75
  %cmp7 = icmp ult i8* %14, %16
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %land.lhs.true
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.8
  br label %do.cond.10

do.cond.10:                                       ; preds = %do.body.9
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %land.lhs.true, %for.body
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.12
  br label %do.cond.14

do.cond.14:                                       ; preds = %do.body.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.cond.14
  br label %for.inc

for.inc:                                          ; preds = %do.end.15
  %17 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %17, i32 0, i32 10
  %18 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !43
  store %struct.chunk_s* %18, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved16 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %19, i32 0, i32 28
  %20 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved16, align 8, !tbaa !51
  %21 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.alloc_save_s* %20, %21
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.end
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18, %do.end.11
  %22 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.66 [
    i32 0, label %cleanup.cont
    i32 4, label %for.end.22
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.20

for.inc.20:                                       ; preds = %cleanup.cont
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved21 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %23, i32 0, i32 28
  %24 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved21, align 8, !tbaa !51
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %24, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %for.cond

for.end.22:                                       ; preds = %cleanup
  %25 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %state23 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %25, i32 0, i32 0
  %save_level = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %state23, i32 0, i32 19
  %26 = load i32, i32* %save_level, align 4, !tbaa !76
  %cmp24 = icmp eq i32 %26, 0
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.65

land.lhs.true.25:                                 ; preds = %for.end.22
  %27 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %spaces26 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %27, i32 0, i32 1
  %memories27 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces26, i32 0, i32 1
  %named28 = bitcast %union.anon* %memories27 to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named28, i32 0, i32 2
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !24
  store %struct.gs_ref_memory_s* %28, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %29 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %spaces29 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %29, i32 0, i32 1
  %memories30 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces29, i32 0, i32 1
  %named31 = bitcast %union.anon* %memories30 to %struct._ssn*
  %local32 = getelementptr inbounds %struct._ssn, %struct._ssn* %named31, i32 0, i32 3
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local32, align 8, !tbaa !22
  %cmp33 = icmp ne %struct.gs_ref_memory_s* %28, %30
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.65

land.lhs.true.34:                                 ; preds = %land.lhs.true.25
  %31 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %spaces35 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %31, i32 0, i32 1
  %memories36 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces35, i32 0, i32 1
  %named37 = bitcast %union.anon* %memories36 to %struct._ssn*
  %global38 = getelementptr inbounds %struct._ssn, %struct._ssn* %named37, i32 0, i32 2
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global38, align 8, !tbaa !24
  %num_contexts = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %32, i32 0, i32 25
  %33 = load i32, i32* %num_contexts, align 4, !tbaa !27
  %cmp39 = icmp eq i32 %33, 1
  br i1 %cmp39, label %if.then.40, label %if.end.65

if.then.40:                                       ; preds = %land.lhs.true.34
  %34 = bitcast %struct.chunk_s** %cp41 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.40
  br label %do.cond.43

do.cond.43:                                       ; preds = %do.body.42
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cfirst45 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %35, i32 0, i32 11
  %36 = load %struct.chunk_s*, %struct.chunk_s** %cfirst45, align 8, !tbaa !38
  store %struct.chunk_s* %36, %struct.chunk_s** %cp41, align 8, !tbaa !1
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.59, %do.end.44
  %37 = load %struct.chunk_s*, %struct.chunk_s** %cp41, align 8, !tbaa !1
  %cmp47 = icmp ne %struct.chunk_s* %37, null
  br i1 %cmp47, label %for.body.48, label %for.end.61

for.body.48:                                      ; preds = %for.cond.46
  %38 = load i8*, i8** %ptr, align 8, !tbaa !1
  %39 = load %struct.chunk_s*, %struct.chunk_s** %cp41, align 8, !tbaa !1
  %cbase49 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %39, i32 0, i32 1
  %40 = load i8*, i8** %cbase49, align 8, !tbaa !57
  %cmp50 = icmp uge i8* %38, %40
  br i1 %cmp50, label %land.lhs.true.51, label %if.end.58

land.lhs.true.51:                                 ; preds = %for.body.48
  %41 = load i8*, i8** %ptr, align 8, !tbaa !1
  %42 = load %struct.chunk_s*, %struct.chunk_s** %cp41, align 8, !tbaa !1
  %cend52 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %42, i32 0, i32 8
  %43 = load i8*, i8** %cend52, align 8, !tbaa !75
  %cmp53 = icmp ult i8* %41, %43
  br i1 %cmp53, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %land.lhs.true.51
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.54
  br label %do.cond.56

do.cond.56:                                       ; preds = %do.body.55
  br label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.58:                                        ; preds = %land.lhs.true.51, %for.body.48
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %44 = load %struct.chunk_s*, %struct.chunk_s** %cp41, align 8, !tbaa !1
  %cnext60 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %44, i32 0, i32 10
  %45 = load %struct.chunk_s*, %struct.chunk_s** %cnext60, align 8, !tbaa !43
  store %struct.chunk_s* %45, %struct.chunk_s** %cp41, align 8, !tbaa !1
  br label %for.cond.46

for.end.61:                                       ; preds = %for.cond.46
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %for.end.61, %do.end.57
  %46 = bitcast %struct.chunk_s** %cp41 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %cleanup.dest.63 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.63, label %cleanup.66 [
    i32 0, label %cleanup.cont.64
  ]

cleanup.cont.64:                                  ; preds = %cleanup.62
  br label %if.end.65

if.end.65:                                        ; preds = %cleanup.cont.64, %land.lhs.true.34, %land.lhs.true.25, %for.end.22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.66

cleanup.66:                                       ; preds = %if.end.65, %cleanup.62, %cleanup, %if.then
  %47 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @alloc_name_is_since_save(%struct.gs_memory_s* %mem, %struct.ref_s* %pnref, %struct.alloc_save_s* %save) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pnref.addr = alloca %struct.ref_s*, align 8
  %save.addr = alloca %struct.alloc_save_s*, align 8
  %pnstr = alloca %struct.name_string_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pnref, %struct.ref_s** %pnref.addr, align 8, !tbaa !1
  store %struct.alloc_save_s* %save, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %0 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %restore_names = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %1, i32 0, i32 2
  %2 = load i32, i32* %restore_names, align 4, !tbaa !31
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %pname = bitcast %union.v* %value to %struct.name_s**
  %4 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %6 = load i32, i32* %rsize, align 4, !tbaa !77
  %and = and i32 %6, 511
  %idx.ext = zext i32 %and to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.name_s, %struct.name_s* %4, i64 %idx.neg
  %7 = bitcast %struct.name_s* %add.ptr to %struct.name_sub_table_s*
  %high_index = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %7, i32 0, i32 1
  %8 = load i32, i32* %high_index, align 4, !tbaa !78
  %9 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %rsize2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  %10 = load i32, i32* %rsize2, align 4, !tbaa !77
  %add = add i32 %8, %10
  %shr = lshr i32 %add, 9
  %idxprom = zext i32 %shr to i64
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 2
  %12 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !80
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %12, i32 0, i32 16
  %13 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !47
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %13, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 1
  %14 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !81
  %strings3 = getelementptr inbounds %struct.name_string_sub_table_s, %struct.name_string_sub_table_s* %14, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x %struct.name_string_s], [512 x %struct.name_string_s]* %strings3, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %pname5 = bitcast %union.v* %value4 to %struct.name_s**
  %16 = load %struct.name_s*, %struct.name_s** %pname5, align 8, !tbaa !1
  %17 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %rsize7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 2
  %18 = load i32, i32* %rsize7, align 4, !tbaa !77
  %and8 = and i32 %18, 511
  %idx.ext9 = zext i32 %and8 to i64
  %idx.neg10 = sub i64 0, %idx.ext9
  %add.ptr11 = getelementptr inbounds %struct.name_s, %struct.name_s* %16, i64 %idx.neg10
  %19 = bitcast %struct.name_s* %add.ptr11 to %struct.name_sub_table_s*
  %high_index12 = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %19, i32 0, i32 1
  %20 = load i32, i32* %high_index12, align 4, !tbaa !78
  %21 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %rsize14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 2
  %22 = load i32, i32* %rsize14, align 4, !tbaa !77
  %add15 = add i32 %20, %22
  %and16 = and i32 %add15, 511
  %idx.ext17 = zext i32 %and16 to i64
  %add.ptr18 = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %arraydecay, i64 %idx.ext17
  store %struct.name_string_s* %add.ptr18, %struct.name_string_s** %pnstr, align 8, !tbaa !1
  %23 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !1
  %24 = bitcast %struct.name_string_s* %23 to i32*
  %bf.load = load i32, i32* %24, align 8
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 1
  %tobool19 = icmp ne i32 %bf.clear, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end
  %25 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !1
  %string_bytes = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %25, i32 0, i32 1
  %26 = load i8*, i8** %string_bytes, align 8, !tbaa !83
  %27 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %call = call i32 @alloc_is_since_save(i8* %26, %struct.alloc_save_s* %27) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.then
  %28 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @alloc_name_index_is_since_save(%struct.gs_memory_s* %mem, i32 %nidx, %struct.alloc_save_s* %save) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %nidx.addr = alloca i32, align 4
  %save.addr = alloca %struct.alloc_save_s*, align 8
  %pnstr = alloca %struct.name_string_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %nidx, i32* %nidx.addr, align 4, !tbaa !5
  store %struct.alloc_save_s* %save, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %0 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %restore_names = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %1, i32 0, i32 2
  %2 = load i32, i32* %restore_names, align 4, !tbaa !31
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %nidx.addr, align 4, !tbaa !5
  %shr = lshr i32 %3, 9
  %idxprom = zext i32 %shr to i64
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 2
  %5 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !80
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %5, i32 0, i32 16
  %6 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !47
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %6, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 1
  %7 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !81
  %strings1 = getelementptr inbounds %struct.name_string_sub_table_s, %struct.name_string_sub_table_s* %7, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x %struct.name_string_s], [512 x %struct.name_string_s]* %strings1, i32 0, i32 0
  %8 = load i32, i32* %nidx.addr, align 4, !tbaa !5
  %and = and i32 %8, 511
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %arraydecay, i64 %idx.ext
  store %struct.name_string_s* %add.ptr, %struct.name_string_s** %pnstr, align 8, !tbaa !1
  %9 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !1
  %10 = bitcast %struct.name_string_s* %9 to i32*
  %bf.load = load i32, i32* %10, align 8
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !1
  %string_bytes = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %11, i32 0, i32 1
  %12 = load i8*, i8** %string_bytes, align 8, !tbaa !83
  %13 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %call = call i32 @alloc_is_since_save(i8* %12, %struct.alloc_save_s* %13) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %14 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @alloc_any_names_since_save(%struct.alloc_save_s* %save) #0 {
entry:
  %save.addr = alloca %struct.alloc_save_s*, align 8
  store %struct.alloc_save_s* %save, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %0 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %restore_names = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %0, i32 0, i32 2
  %1 = load i32, i32* %restore_names, align 4, !tbaa !31
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i8* @alloc_save_client_data(%struct.alloc_save_s* %save) #0 {
entry:
  %save.addr = alloca %struct.alloc_save_s*, align 8
  store %struct.alloc_save_s* %save, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %0 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %0, i32 0, i32 5
  %1 = load i8*, i8** %client_data, align 8, !tbaa !28
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i32 @alloc_restore_step_in(%struct.gs_dual_memory_s* %dmem, %struct.alloc_save_s* %save) #0 {
entry:
  %retval = alloca i32, align 4
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %save.addr = alloca %struct.alloc_save_s*, align 8
  %lmem = alloca %struct.gs_ref_memory_s*, align 8
  %gmem = alloca %struct.gs_ref_memory_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %sprev = alloca %struct.alloc_save_s*, align 8
  %code = alloca i32, align 4
  %sid = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %sid23 = alloca i64, align 8
  %scanned = alloca i64, align 8
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  store %struct.alloc_save_s* %save, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %1, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !22
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_ref_memory_s** %gmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %spaces1 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %4, i32 0, i32 1
  %memories2 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces1, i32 0, i32 1
  %named3 = bitcast %union.anon* %memories2 to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named3, i32 0, i32 2
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !24
  store %struct.gs_ref_memory_s* %5, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %6 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %7, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %8 = bitcast %struct.alloc_save_s** %sprev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %10 = bitcast i64* %sid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %11, i32 0, i32 28
  %12 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !51
  store %struct.alloc_save_s* %12, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %13 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %13, i32 0, i32 4
  %14 = load i64, i64* %id, align 8, !tbaa !32
  store i64 %14, i64* %sid, align 8, !tbaa !25
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %gc_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %15, i32 0, i32 8
  %psignal = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status, i32 0, i32 2
  %16 = load i32*, i32** %psignal, align 8, !tbaa !85
  %17 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %17, i32 0, i32 0
  %gc_status4 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %state, i32 0, i32 8
  %psignal5 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status4, i32 0, i32 2
  store i32* %16, i32** %psignal5, align 8, !tbaa !86
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @restore_finalize(%struct.gs_ref_memory_s* %18) #4
  %19 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %state6 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %19, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state6, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %20 = load i64, i64* %sid, align 8, !tbaa !25
  %cmp = icmp ne i64 %20, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %21 = bitcast i64* %sid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %do.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  %22 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %23 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.alloc_save_s* %22, %23
  br i1 %cmp7, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %cleanup
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %save_level = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %24, i32 0, i32 19
  %25 = load i32, i32* %save_level, align 4, !tbaa !26
  %cmp8 = icmp eq i32 %25, 0
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.end
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %26, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %cmp10 = icmp ne %struct.gs_ref_memory_s* %27, %28
  br i1 %cmp10, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.then.9
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved11 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %29, i32 0, i32 28
  %30 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved11, align 8, !tbaa !51
  %cmp12 = icmp ne %struct.alloc_save_s* %30, null
  br i1 %cmp12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %land.lhs.true
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %gc_status14 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %31, i32 0, i32 8
  %psignal15 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status14, i32 0, i32 2
  %32 = load i32*, i32** %psignal15, align 8, !tbaa !85
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved16 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %33, i32 0, i32 28
  %34 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved16, align 8, !tbaa !51
  %state17 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %34, i32 0, i32 0
  %gc_status18 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %state17, i32 0, i32 8
  %psignal19 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status18, i32 0, i32 2
  store i32* %32, i32** %psignal19, align 8, !tbaa !86
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @restore_finalize(%struct.gs_ref_memory_s* %35) #4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.13, %land.lhs.true, %if.then.9
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %do.end
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %36, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %do.body.22

do.body.22:                                       ; preds = %do.cond.40, %if.end.21
  %37 = bitcast i64* %sid23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved24 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %38, i32 0, i32 28
  %39 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved24, align 8, !tbaa !51
  store %struct.alloc_save_s* %39, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %40 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %id25 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %40, i32 0, i32 4
  %41 = load i64, i64* %id25, align 8, !tbaa !32
  store i64 %41, i64* %sid23, align 8, !tbaa !25
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %gc_status26 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %42, i32 0, i32 8
  %psignal27 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status26, i32 0, i32 2
  %43 = load i32*, i32** %psignal27, align 8, !tbaa !85
  %44 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %state28 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %44, i32 0, i32 0
  %gc_status29 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %state28, i32 0, i32 8
  %psignal30 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status29, i32 0, i32 2
  store i32* %43, i32** %psignal30, align 8, !tbaa !86
  %45 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %46 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %call = call i32 @restore_resources(%struct.alloc_save_s* %45, %struct.gs_ref_memory_s* %46) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %47 = load i32, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %47, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %do.body.22
  %48 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end.33:                                        ; preds = %do.body.22
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %50 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  call void @restore_space(%struct.gs_ref_memory_s* %49, %struct.gs_dual_memory_s* %50) #4
  %51 = load i64, i64* %sid23, align 8, !tbaa !25
  %cmp34 = icmp ne i64 %51, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end.36:                                        ; preds = %if.end.33
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.37

cleanup.37:                                       ; preds = %if.end.36, %if.then.35, %if.then.32
  %52 = bitcast i64* %sid23 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %cleanup.dest.38 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.38, label %cleanup.72 [
    i32 0, label %cleanup.cont.39
    i32 4, label %do.end.42
  ]

cleanup.cont.39:                                  ; preds = %cleanup.37
  br label %do.cond.40

do.cond.40:                                       ; preds = %cleanup.cont.39
  %53 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %54 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %cmp41 = icmp ne %struct.alloc_save_s* %53, %54
  br i1 %cmp41, label %do.body.22, label %do.end.42

do.end.42:                                        ; preds = %do.cond.40, %cleanup.37
  %55 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %save_level43 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %55, i32 0, i32 19
  %56 = load i32, i32* %save_level43, align 4, !tbaa !26
  %cmp44 = icmp eq i32 %56, 0
  br i1 %cmp44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %do.end.42
  %57 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %57, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %58 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %59 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %cmp46 = icmp ne %struct.gs_ref_memory_s* %58, %59
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.62

land.lhs.true.47:                                 ; preds = %if.then.45
  %60 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved48 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %60, i32 0, i32 28
  %61 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved48, align 8, !tbaa !51
  %cmp49 = icmp ne %struct.alloc_save_s* %61, null
  br i1 %cmp49, label %if.then.50, label %if.end.62

if.then.50:                                       ; preds = %land.lhs.true.47
  %62 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %gc_status51 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %62, i32 0, i32 8
  %psignal52 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status51, i32 0, i32 2
  %63 = load i32*, i32** %psignal52, align 8, !tbaa !85
  %64 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved53 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %64, i32 0, i32 28
  %65 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved53, align 8, !tbaa !51
  %state54 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %65, i32 0, i32 0
  %gc_status55 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %state54, i32 0, i32 8
  %psignal56 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status55, i32 0, i32 2
  store i32* %63, i32** %psignal56, align 8, !tbaa !86
  %66 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved57 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %66, i32 0, i32 28
  %67 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved57, align 8, !tbaa !51
  %68 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %call58 = call i32 @restore_resources(%struct.alloc_save_s* %67, %struct.gs_ref_memory_s* %68) #4
  store i32 %call58, i32* %code, align 4, !tbaa !5
  %69 = load i32, i32* %code, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %69, 0
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.50
  %70 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

if.end.61:                                        ; preds = %if.then.50
  %71 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %72 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  call void @restore_space(%struct.gs_ref_memory_s* %71, %struct.gs_dual_memory_s* %72) #4
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %land.lhs.true.47, %if.then.45
  %73 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  call void @alloc_set_not_in_save(%struct.gs_dual_memory_s* %73) #4
  br label %if.end.70

if.else:                                          ; preds = %do.end.42
  %74 = bitcast i64* %scanned to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %call63 = call i32 @save_set_new(%struct.gs_ref_memory_s* %75, i32 1, i32 0, i64* %scanned) #4
  store i32 %call63, i32* %code, align 4, !tbaa !5
  %76 = load i32, i32* %code, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %76, 0
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.else
  %77 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end.66:                                        ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %if.end.66, %if.then.65
  %78 = bitcast i64* %scanned to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %cleanup.dest.68 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.68, label %cleanup.72 [
    i32 0, label %cleanup.cont.69
  ]

cleanup.cont.69:                                  ; preds = %cleanup.67
  br label %if.end.70

if.end.70:                                        ; preds = %cleanup.cont.69, %if.end.62
  %79 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %80 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %cmp71 = icmp eq %struct.alloc_save_s* %79, %80
  %conv = zext i1 %cmp71 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

cleanup.72:                                       ; preds = %if.end.70, %cleanup.67, %if.then.60, %cleanup.37
  %81 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast %struct.alloc_save_s** %sprev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast %struct.gs_ref_memory_s** %gmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %retval
  ret i32 %86

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @restore_finalize(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %pre = alloca %struct.obj_header_s*, align 8
  %end = alloca %struct.obj_header_s*, align 8
  %size = alloca i32, align 4
  %finalize = alloca void (%struct.gs_memory_s*, i8*)*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_close_chunk(%struct.gs_ref_memory_s* %1) #4
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_ref_memory_s* %2 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %enable_free = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 22
  %4 = load void (%struct.gs_memory_s*, i32)*, void (%struct.gs_memory_s*, i32)** %enable_free, align 8, !tbaa !87
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  call void %4(%struct.gs_memory_s* %6, i32 0) #4
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %clast = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %7, i32 0, i32 12
  %8 = load %struct.chunk_s*, %struct.chunk_s** %clast, align 8, !tbaa !88
  store %struct.chunk_s* %8, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %9 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp = icmp ne %struct.chunk_s* %9, null
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %10 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %11, i32 0, i32 1
  %12 = load i8*, i8** %cbase, align 8, !tbaa !57
  %13 = bitcast i8* %12 to %struct.obj_header_s*
  store %struct.obj_header_s* %13, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %14 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %15, i32 0, i32 3
  %16 = load i8*, i8** %cbot, align 8, !tbaa !40
  %17 = bitcast i8* %16 to %struct.obj_header_s*
  store %struct.obj_header_s* %17, %struct.obj_header_s** %end, align 8, !tbaa !1
  %18 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %19 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %20 = load %struct.obj_header_s*, %struct.obj_header_s** %end, align 8, !tbaa !1
  %cmp2 = icmp ult %struct.obj_header_s* %19, %20
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %21 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %21, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size4 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %22 = load i32, i32* %size4, align 4, !tbaa !58
  store i32 %22, i32* %size, align 4, !tbaa !5
  %23 = bitcast void (%struct.gs_memory_s*, i8*)** %finalize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d5 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %24, i32 0, i32 0
  %o6 = bitcast %union._d* %d5 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o6, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %25 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %finalize7 = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %25, i32 0, i32 6
  %26 = load void (%struct.gs_memory_s*, i8*)*, void (%struct.gs_memory_s*, i8*)** %finalize7, align 8, !tbaa !89
  store void (%struct.gs_memory_s*, i8*)* %26, void (%struct.gs_memory_s*, i8*)** %finalize, align 8, !tbaa !1
  %27 = load void (%struct.gs_memory_s*, i8*)*, void (%struct.gs_memory_s*, i8*)** %finalize, align 8, !tbaa !1
  %cmp8 = icmp ne void (%struct.gs_memory_s*, i8*)* %27, null
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load void (%struct.gs_memory_s*, i8*)*, void (%struct.gs_memory_s*, i8*)** %finalize, align 8, !tbaa !1
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gs_ref_memory_s* %29 to %struct.gs_memory_s*
  %31 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %31, i64 1
  %32 = bitcast %struct.obj_header_s* %add.ptr to i8*
  call void %28(%struct.gs_memory_s* %30, i8* %32) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.3
  %33 = bitcast void (%struct.gs_memory_s*, i8*)** %finalize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %35 = bitcast %struct.obj_header_s* %34 to i8*
  %36 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %36 to i64
  %add = add i64 %conv, 24
  %add9 = add i64 %add, 7
  %and = and i64 %add9, -8
  %add.ptr10 = getelementptr inbounds i8, i8* %35, i64 %and
  %37 = bitcast i8* %add.ptr10 to %struct.obj_header_s*
  store %struct.obj_header_s* %37, %struct.obj_header_s** %pre, align 8, !tbaa !1
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %38 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %41 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cprev = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %41, i32 0, i32 9
  %42 = load %struct.chunk_s*, %struct.chunk_s** %cprev, align 8, !tbaa !91
  store %struct.chunk_s* %42, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gs_ref_memory_s* %43 to %struct.gs_memory_s*
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %enable_free14 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 22
  %45 = load void (%struct.gs_memory_s*, i32)*, void (%struct.gs_memory_s*, i32)** %enable_free14, align 8, !tbaa !87
  %46 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gs_ref_memory_s* %46 to %struct.gs_memory_s*
  call void %45(%struct.gs_memory_s* %47, i32 1) #4
  %48 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @restore_resources(%struct.alloc_save_s* %sprev, %struct.gs_ref_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %sprev.addr = alloca %struct.alloc_save_s*, align 8
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.alloc_save_s* %sprev, %struct.alloc_save_s** %sprev.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev.addr, align 8, !tbaa !1
  %call = call i32 @font_restore(%struct.alloc_save_s* %1) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %2 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev.addr, align 8, !tbaa !1
  %restore_names = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %4, i32 0, i32 2
  %5 = load i32, i32* %restore_names, align 4, !tbaa !31
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %6, i32 0, i32 2
  %7 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !46
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %7, i32 0, i32 16
  %8 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !47
  %9 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev.addr, align 8, !tbaa !1
  call void @names_restore(%struct.name_table_s* %8, %struct.alloc_save_s* %9) #4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal void @restore_space(%struct.gs_ref_memory_s* %mem, %struct.gs_dual_memory_s* %dmem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %save = alloca %struct.alloc_save_s*, align 8
  %saved1 = alloca %struct.alloc_save_s, align 8
  %cp = alloca %struct.alloc_change_s*, align 8
  %num_contexts = alloca i32, align 4
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.alloc_save_s** %save to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 28
  %2 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !51
  store %struct.alloc_save_s* %2, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %3 = bitcast %struct.alloc_save_s* %saved1 to i8*
  call void @llvm.lifetime.start(i64 1560, i8* %3) #1
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %space = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %4, i32 0, i32 7
  %5 = load i32, i32* %space, align 4, !tbaa !30
  %6 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  call void @print_save(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 %5, %struct.alloc_save_s* %6) #4
  %7 = bitcast %struct.alloc_change_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %8, i32 0, i32 26
  %9 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes, align 8, !tbaa !60
  store %struct.alloc_change_s* %9, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %10 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %tobool = icmp ne %struct.alloc_change_s* %10, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %11, i32 0, i32 3
  %12 = load i16, i16* %offset, align 2, !tbaa !67
  %conv = sext i16 %12 to i32
  %cmp = icmp eq i32 %conv, -3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.11

if.else:                                          ; preds = %while.body
  %13 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %13, i32 0, i32 2
  %14 = bitcast %struct.ref_s* %contents to i16*
  %15 = load i16, i16* %14, align 2, !tbaa !69
  %conv3 = zext i16 %15 to i32
  %cmp4 = icmp sge i32 %conv3, 16384
  br i1 %cmp4, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %16 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %contents7 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %16, i32 0, i32 2
  %17 = bitcast %struct.ref_s* %contents7 to i16*
  %18 = load i16, i16* %17, align 2, !tbaa !69
  %19 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %where = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %19, i32 0, i32 1
  %20 = load i16*, i16** %where, align 8, !tbaa !66
  store i16 %18, i16* %20, align 2, !tbaa !69
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %21 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %where9 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %21, i32 0, i32 1
  %22 = load i16*, i16** %where9, align 8, !tbaa !66
  %23 = bitcast i16* %22 to %struct.ref_s*
  %24 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %contents10 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %24, i32 0, i32 2
  %25 = bitcast %struct.ref_s* %23 to i8*
  %26 = bitcast %struct.ref_s* %contents10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false), !tbaa.struct !70
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %do.end
  %27 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %27, i32 0, i32 0
  %28 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next, align 8, !tbaa !61
  store %struct.alloc_change_s* %28, %struct.alloc_change_s** %cp, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = bitcast %struct.alloc_change_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %31 = bitcast %struct.alloc_save_s* %saved1 to i8*
  %32 = bitcast %struct.alloc_save_s* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 1560, i32 8, i1 false), !tbaa.struct !92
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @restore_free(%struct.gs_ref_memory_s* %33) #4
  %34 = bitcast i32* %num_contexts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %num_contexts12 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %35, i32 0, i32 25
  %36 = load i32, i32* %num_contexts12, align 4, !tbaa !27
  store i32 %36, i32* %num_contexts, align 4, !tbaa !5
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %saved1, i32 0, i32 0
  %38 = bitcast %struct.gs_ref_memory_s* %37 to i8*
  %39 = bitcast %struct.gs_ref_memory_s* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 1496, i32 8, i1 false), !tbaa.struct !33
  %40 = load i32, i32* %num_contexts, align 4, !tbaa !5
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %num_contexts13 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %41, i32 0, i32 25
  store i32 %40, i32* %num_contexts13, align 4, !tbaa !27
  %42 = bitcast i32* %num_contexts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_open_chunk(%struct.gs_ref_memory_s* %43) #4
  %is_current = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %saved1, i32 0, i32 3
  %44 = load i32, i32* %is_current, align 4, !tbaa !50
  %tobool14 = icmp ne i32 %44, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %while.end
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %46 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %46, i32 0, i32 0
  store %struct.gs_ref_memory_s* %45, %struct.gs_ref_memory_s** %current, align 8, !tbaa !49
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %space16 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %47, i32 0, i32 7
  %48 = load i32, i32* %space16, align 4, !tbaa !30
  %49 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %49, i32 0, i32 2
  store i32 %48, i32* %current_space, align 4, !tbaa !93
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %while.end
  %50 = bitcast %struct.alloc_save_s* %saved1 to i8*
  call void @llvm.lifetime.end(i64 1560, i8* %50) #1
  %51 = bitcast %struct.alloc_save_s** %save to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @alloc_restore_all(%struct.gs_dual_memory_s* %dmem) #0 {
entry:
  %retval = alloca i32, align 4
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %lmem = alloca %struct.gs_ref_memory_s*, align 8
  %gmem = alloca %struct.gs_ref_memory_s*, align 8
  %smem = alloca %struct.gs_ref_memory_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %empty_save = alloca %struct.alloc_save_s, align 8
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %1, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !22
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_ref_memory_s** %gmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces1 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %4, i32 0, i32 1
  %memories2 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces1, i32 0, i32 1
  %named3 = bitcast %union.anon* %memories2 to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named3, i32 0, i32 2
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !24
  store %struct.gs_ref_memory_s* %5, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %6 = bitcast %struct.gs_ref_memory_s** %smem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces4 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %7, i32 0, i32 1
  %memories5 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces4, i32 0, i32 1
  %named6 = bitcast %union.anon* %memories5 to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named6, i32 0, i32 1
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !94
  store %struct.gs_ref_memory_s* %8, %struct.gs_ref_memory_s** %smem, align 8, !tbaa !1
  %9 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %save_level = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %11, i32 0, i32 19
  %12 = load i32, i32* %save_level, align 4, !tbaa !26
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %14, i32 0, i32 28
  %15 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !51
  %call = call i32 @alloc_restore_step_in(%struct.gs_dual_memory_s* %13, %struct.alloc_save_s* %15) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %16, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  call void @restore_finalize(%struct.gs_ref_memory_s* %18) #4
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %19, i32 0, i32 0
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !21
  %21 = bitcast %struct.gs_memory_s* %20 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %21, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %cmp8 = icmp ne %struct.gs_ref_memory_s* %21, %22
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.end
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @restore_finalize(%struct.gs_ref_memory_s* %23) #4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %while.end
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %cmp11 = icmp ne %struct.gs_ref_memory_s* %24, %25
  br i1 %cmp11, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.10
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %num_contexts = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %26, i32 0, i32 25
  %27 = load i32, i32* %num_contexts, align 4, !tbaa !27
  %cmp12 = icmp eq i32 %27, 1
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %land.lhs.true
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  call void @restore_finalize(%struct.gs_ref_memory_s* %28) #4
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %stable_memory14 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %29, i32 0, i32 0
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory14, align 8, !tbaa !21
  %31 = bitcast %struct.gs_memory_s* %30 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %31, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %cmp15 = icmp ne %struct.gs_ref_memory_s* %31, %32
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @restore_finalize(%struct.gs_ref_memory_s* %33) #4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %land.lhs.true, %if.end.10
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %smem, align 8, !tbaa !1
  call void @restore_finalize(%struct.gs_ref_memory_s* %34) #4
  %35 = bitcast %struct.alloc_save_s* %empty_save to i8*
  call void @llvm.lifetime.start(i64 1560, i8* %35) #1
  %spaces19 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %empty_save, i32 0, i32 1
  %36 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces20 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %36, i32 0, i32 1
  %37 = bitcast %struct.vm_spaces_s* %spaces19 to i8*
  %38 = bitcast %struct.vm_spaces_s* %spaces20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 40, i32 8, i1 false), !tbaa.struct !45
  %restore_names = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %empty_save, i32 0, i32 2
  store i32 0, i32* %restore_names, align 4, !tbaa !31
  %call21 = call i32 @restore_resources(%struct.alloc_save_s* %empty_save, %struct.gs_ref_memory_s* null) #4
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %39, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  %40 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.18
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.23
  %41 = bitcast %struct.alloc_save_s* %empty_save to i8*
  call void @llvm.lifetime.end(i64 1560, i8* %41) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.39 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  call void @restore_free(%struct.gs_ref_memory_s* %42) #4
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %stable_memory25 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %43, i32 0, i32 0
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory25, align 8, !tbaa !21
  %45 = bitcast %struct.gs_memory_s* %44 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %45, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %46 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %cmp26 = icmp ne %struct.gs_ref_memory_s* %45, %46
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %cleanup.cont
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @restore_free(%struct.gs_ref_memory_s* %47) #4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %cleanup.cont
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %cmp29 = icmp ne %struct.gs_ref_memory_s* %48, %49
  br i1 %cmp29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.end.28
  %50 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %num_contexts31 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %50, i32 0, i32 25
  %51 = load i32, i32* %num_contexts31, align 4, !tbaa !27
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %num_contexts31, align 4, !tbaa !27
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %if.end.37, label %if.then.32

if.then.32:                                       ; preds = %if.then.30
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  call void @restore_free(%struct.gs_ref_memory_s* %52) #4
  %53 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %stable_memory33 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %53, i32 0, i32 0
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory33, align 8, !tbaa !21
  %55 = bitcast %struct.gs_memory_s* %54 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %55, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %gmem, align 8, !tbaa !1
  %cmp34 = icmp ne %struct.gs_ref_memory_s* %55, %56
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.32
  %57 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @restore_free(%struct.gs_ref_memory_s* %57) #4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.32
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.30
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.28
  %58 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %smem, align 8, !tbaa !1
  call void @restore_free(%struct.gs_ref_memory_s* %58) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39

cleanup.39:                                       ; preds = %if.end.38, %cleanup, %if.then
  %59 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast %struct.gs_ref_memory_s** %smem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast %struct.gs_ref_memory_s** %gmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal void @restore_free(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_ref_memory_s* %0 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %free_all = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 5
  %2 = load void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*, i32, i8*)** %free_all, align 8, !tbaa !95
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_ref_memory_s* %3 to %struct.gs_memory_s*
  call void %2(%struct.gs_memory_s* %4, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @alloc_forget_save_in(%struct.gs_dual_memory_s* %dmem, %struct.alloc_save_s* %save) #0 {
entry:
  %retval = alloca i32, align 4
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %save.addr = alloca %struct.alloc_save_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %sprev = alloca %struct.alloc_save_s*, align 8
  %scanned = alloca i64, align 8
  %code = alloca i32, align 4
  %chp = alloca %struct.alloc_change_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  store %struct.alloc_save_s* %save, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %1, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !22
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.alloc_save_s** %sprev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %scanned to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %space = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %6, i32 0, i32 7
  %7 = load i32, i32* %space, align 4, !tbaa !30
  %8 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  call void @print_save(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 %7, %struct.alloc_save_s* %8) #4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %9, i32 0, i32 28
  %10 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !51
  store %struct.alloc_save_s* %10, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %11 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %11, i32 0, i32 4
  %12 = load i64, i64* %id, align 8, !tbaa !32
  %cmp = icmp ne i64 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %save_level = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %13, i32 0, i32 19
  %14 = load i32, i32* %save_level, align 4, !tbaa !26
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %save_level, align 4, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %save_level1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %15, i32 0, i32 19
  %16 = load i32, i32* %save_level1, align 4, !tbaa !26
  %cmp2 = icmp ne i32 %16, 0
  br i1 %cmp2, label %if.then.3, label %if.else.18

if.then.3:                                        ; preds = %if.end
  %17 = bitcast %struct.alloc_change_s** %chp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %changes = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %18, i32 0, i32 26
  %19 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes, align 8, !tbaa !60
  store %struct.alloc_change_s* %19, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %20 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %20, i32 0, i32 0
  %call = call i32 @save_set_new(%struct.gs_ref_memory_s* %state, i32 1, i32 0, i64* %scanned) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %21, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.then.3
  %23 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.alloc_change_s* %23, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %24 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %state9 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %24, i32 0, i32 0
  %changes10 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %state9, i32 0, i32 26
  %25 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes10, align 8, !tbaa !96
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %changes11 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %26, i32 0, i32 26
  store %struct.alloc_change_s* %25, %struct.alloc_change_s** %changes11, align 8, !tbaa !60
  br label %if.end.17

if.else:                                          ; preds = %if.end.6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %27 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %27, i32 0, i32 0
  %28 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next, align 8, !tbaa !61
  %cmp12 = icmp ne %struct.alloc_change_s* %28, null
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %next13 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %29, i32 0, i32 0
  %30 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next13, align 8, !tbaa !61
  store %struct.alloc_change_s* %30, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %state14 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %31, i32 0, i32 0
  %changes15 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %state14, i32 0, i32 26
  %32 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes15, align 8, !tbaa !96
  %33 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %next16 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %33, i32 0, i32 0
  store %struct.alloc_change_s* %32, %struct.alloc_change_s** %next16, align 8, !tbaa !61
  br label %if.end.17

if.end.17:                                        ; preds = %while.end, %if.then.8
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @file_forget_save(%struct.gs_ref_memory_s* %34) #4
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @combine_space(%struct.gs_ref_memory_s* %35) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.5
  %36 = bitcast %struct.alloc_change_s** %chp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.41 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.39

if.else.18:                                       ; preds = %if.end
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @forget_changes(%struct.gs_ref_memory_s* %37) #4
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %call19 = call i32 @save_set_new(%struct.gs_ref_memory_s* %38, i32 0, i32 0, i64* %scanned) #4
  store i32 %call19, i32* %code, align 4, !tbaa !5
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %39, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.18
  %40 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

if.end.22:                                        ; preds = %if.else.18
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @file_forget_save(%struct.gs_ref_memory_s* %41) #4
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @combine_space(%struct.gs_ref_memory_s* %42) #4
  %43 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %spaces23 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %43, i32 0, i32 1
  %memories24 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces23, i32 0, i32 1
  %named25 = bitcast %union.anon* %memories24 to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named25, i32 0, i32 2
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !24
  store %struct.gs_ref_memory_s* %44, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %46 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %spaces26 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %46, i32 0, i32 1
  %memories27 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces26, i32 0, i32 1
  %named28 = bitcast %union.anon* %memories27 to %struct._ssn*
  %local29 = getelementptr inbounds %struct._ssn, %struct._ssn* %named28, i32 0, i32 3
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local29, align 8, !tbaa !22
  %cmp30 = icmp ne %struct.gs_ref_memory_s* %45, %47
  br i1 %cmp30, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.end.22
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %saved31 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %48, i32 0, i32 28
  %49 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved31, align 8, !tbaa !51
  %cmp32 = icmp ne %struct.alloc_save_s* %49, null
  br i1 %cmp32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %land.lhs.true
  %50 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @forget_changes(%struct.gs_ref_memory_s* %50) #4
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %call34 = call i32 @save_set_new(%struct.gs_ref_memory_s* %51, i32 0, i32 0, i64* %scanned) #4
  store i32 %call34, i32* %code, align 4, !tbaa !5
  %52 = load i32, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %52, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.33
  %53 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

if.end.37:                                        ; preds = %if.then.33
  %54 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @file_forget_save(%struct.gs_ref_memory_s* %54) #4
  %55 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @combine_space(%struct.gs_ref_memory_s* %55) #4
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true, %if.end.22
  %56 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  call void @alloc_set_not_in_save(%struct.gs_dual_memory_s* %56) #4
  br label %do.end

if.end.39:                                        ; preds = %cleanup.cont
  br label %do.cond

do.cond:                                          ; preds = %if.end.39
  %57 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8, !tbaa !1
  %58 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %cmp40 = icmp ne %struct.alloc_save_s* %57, %58
  br i1 %cmp40, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.end.38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

cleanup.41:                                       ; preds = %do.end, %if.then.36, %if.then.21, %cleanup
  %59 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i64* %scanned to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast %struct.alloc_save_s** %sprev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal void @file_forget_save(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %save = alloca %struct.alloc_save_s*, align 8
  %streams = alloca %struct.stream_s*, align 8
  %saved_streams = alloca %struct.stream_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.alloc_save_s** %save to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 28
  %2 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !51
  store %struct.alloc_save_s* %2, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %streams to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %streams1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %4, i32 0, i32 22
  %5 = load %struct.stream_s*, %struct.stream_s** %streams1, align 8, !tbaa !52
  store %struct.stream_s* %5, %struct.stream_s** %streams, align 8, !tbaa !1
  %6 = bitcast %struct.stream_s** %saved_streams to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %7, i32 0, i32 0
  %streams2 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %state, i32 0, i32 22
  %8 = load %struct.stream_s*, %struct.stream_s** %streams2, align 8, !tbaa !97
  store %struct.stream_s* %8, %struct.stream_s** %saved_streams, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.stream_s*, %struct.stream_s** %streams, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_s* %9, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %10 = load %struct.stream_s*, %struct.stream_s** %saved_streams, align 8, !tbaa !1
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %streams3 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %11, i32 0, i32 22
  store %struct.stream_s* %10, %struct.stream_s** %streams3, align 8, !tbaa !52
  br label %if.end.9

if.else:                                          ; preds = %do.end
  %12 = load %struct.stream_s*, %struct.stream_s** %saved_streams, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.stream_s* %12, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.5
  %13 = load %struct.stream_s*, %struct.stream_s** %streams, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 22
  %14 = load %struct.stream_s*, %struct.stream_s** %next, align 8, !tbaa !98
  %cmp6 = icmp ne %struct.stream_s* %14, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct.stream_s*, %struct.stream_s** %streams, align 8, !tbaa !1
  %next7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 22
  %16 = load %struct.stream_s*, %struct.stream_s** %next7, align 8, !tbaa !98
  store %struct.stream_s* %16, %struct.stream_s** %streams, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct.stream_s*, %struct.stream_s** %saved_streams, align 8, !tbaa !1
  %18 = load %struct.stream_s*, %struct.stream_s** %streams, align 8, !tbaa !1
  %next8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 22
  store %struct.stream_s* %17, %struct.stream_s** %next8, align 8, !tbaa !98
  %19 = load %struct.stream_s*, %struct.stream_s** %streams, align 8, !tbaa !1
  %20 = load %struct.stream_s*, %struct.stream_s** %saved_streams, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 21
  store %struct.stream_s* %19, %struct.stream_s** %prev, align 8, !tbaa !103
  br label %if.end

if.end:                                           ; preds = %while.end, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %21 = bitcast %struct.stream_s** %saved_streams to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.stream_s** %streams to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.alloc_save_s** %save to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @combine_space(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %saved = alloca %struct.alloc_save_s*, align 8
  %omem = alloca %struct.gs_ref_memory_s*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %csucc = alloca %struct.chunk_s*, align 8
  %outer3 = alloca %struct.chunk_s*, align 8
  %hp = alloca %struct.obj_header_s*, align 8
  %i = alloca i32, align 4
  %olist = alloca %struct.obj_header_s*, align 8
  %list = alloca %struct.obj_header_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.alloc_save_s** %saved to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %saved1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 28
  %2 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved1, align 8, !tbaa !51
  store %struct.alloc_save_s* %2, %struct.alloc_save_s** %saved, align 8, !tbaa !1
  %3 = bitcast %struct.gs_ref_memory_s** %omem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %4, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state, %struct.gs_ref_memory_s** %omem, align 8, !tbaa !1
  %5 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.chunk_s** %csucc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_close_chunk(%struct.gs_ref_memory_s* %7) #4
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %8, i32 0, i32 11
  %9 = load %struct.chunk_s*, %struct.chunk_s** %cfirst, align 8, !tbaa !38
  store %struct.chunk_s* %9, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp = icmp ne %struct.chunk_s* %10, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %11, i32 0, i32 10
  %12 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !43
  store %struct.chunk_s* %12, %struct.chunk_s** %csucc, align 8, !tbaa !1
  %13 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %outer = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %13, i32 0, i32 11
  %14 = load %struct.chunk_s*, %struct.chunk_s** %outer, align 8, !tbaa !104
  %cmp2 = icmp eq %struct.chunk_s* %14, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %15 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %omem, align 8, !tbaa !1
  call void @alloc_link_chunk(%struct.chunk_s* %15, %struct.gs_ref_memory_s* %16) #4
  br label %if.end.32

if.else:                                          ; preds = %for.body
  %17 = bitcast %struct.chunk_s** %outer3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %outer4 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %18, i32 0, i32 11
  %19 = load %struct.chunk_s*, %struct.chunk_s** %outer4, align 8, !tbaa !104
  store %struct.chunk_s* %19, %struct.chunk_s** %outer3, align 8, !tbaa !1
  %20 = load %struct.chunk_s*, %struct.chunk_s** %outer3, align 8, !tbaa !1
  %inner_count = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %20, i32 0, i32 12
  %21 = load i32, i32* %inner_count, align 4, !tbaa !105
  %dec = add i32 %21, -1
  store i32 %dec, i32* %inner_count, align 4, !tbaa !105
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %22, i32 0, i32 14
  %23 = load %struct.chunk_s*, %struct.chunk_s** %pcc, align 8, !tbaa !35
  %24 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.chunk_s* %23, %24
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %25 = load %struct.chunk_s*, %struct.chunk_s** %outer3, align 8, !tbaa !1
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc7 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %26, i32 0, i32 14
  store %struct.chunk_s* %25, %struct.chunk_s** %pcc7, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %27, i32 0, i32 15
  %cp8 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed, i32 0, i32 1
  %28 = load %struct.chunk_s*, %struct.chunk_s** %cp8, align 8, !tbaa !106
  %29 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.chunk_s* %28, %29
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end
  %30 = load %struct.chunk_s*, %struct.chunk_s** %outer3, align 8, !tbaa !1
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed11 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %31, i32 0, i32 15
  %cp12 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed11, i32 0, i32 1
  store %struct.chunk_s* %30, %struct.chunk_s** %cp12, align 8, !tbaa !106
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end
  %32 = bitcast %struct.obj_header_s** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load %struct.chunk_s*, %struct.chunk_s** %outer3, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %33, i32 0, i32 3
  %34 = load i8*, i8** %cbot, align 8, !tbaa !40
  %35 = bitcast i8* %34 to %struct.obj_header_s*
  store %struct.obj_header_s* %35, %struct.obj_header_s** %hp, align 8, !tbaa !1
  %36 = load %struct.obj_header_s*, %struct.obj_header_s** %hp, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %36, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 0
  %h = bitcast %union._f* %f to %struct._h*
  %37 = bitcast %struct._h* %h to i32*
  %bf.load = load i32, i32* %37, align 4
  %bf.clear = and i32 %bf.load, 1
  store i32 %bf.clear, i32* %37, align 4
  %38 = load %struct.obj_header_s*, %struct.obj_header_s** %hp, align 8, !tbaa !1
  %d14 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %38, i32 0, i32 0
  %o15 = bitcast %union._d* %d14 to %struct.obj_header_data_s*
  %f16 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o15, i32 0, i32 0
  %h17 = bitcast %union._f* %f16 to %struct._h*
  %39 = bitcast %struct._h* %h17 to i32*
  %bf.load18 = load i32, i32* %39, align 4
  %bf.clear19 = and i32 %bf.load18, -2
  store i32 %bf.clear19, i32* %39, align 4
  %40 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %chead = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %40, i32 0, i32 0
  %41 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !107
  %add.ptr = getelementptr inbounds %struct.chunk_head_s, %struct.chunk_head_s* %41, i64 1
  %42 = bitcast %struct.chunk_head_s* %add.ptr to i8*
  %43 = load %struct.obj_header_s*, %struct.obj_header_s** %hp, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %43, i64 1
  %44 = bitcast %struct.obj_header_s* %add.ptr20 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %45 = load %struct.obj_header_s*, %struct.obj_header_s** %hp, align 8, !tbaa !1
  %d21 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %45, i32 0, i32 0
  %o22 = bitcast %union._d* %d21 to %struct.obj_header_data_s*
  %size = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o22, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !58
  %46 = load %struct.obj_header_s*, %struct.obj_header_s** %hp, align 8, !tbaa !1
  %d23 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %46, i32 0, i32 0
  %o24 = bitcast %union._d* %d23 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o24, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* @st_bytes, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %47 = bitcast %struct.obj_header_s** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot25 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %48, i32 0, i32 3
  %49 = load i8*, i8** %cbot25, align 8, !tbaa !40
  %50 = load %struct.chunk_s*, %struct.chunk_s** %outer3, align 8, !tbaa !1
  %cbot26 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %50, i32 0, i32 3
  store i8* %49, i8** %cbot26, align 8, !tbaa !40
  %51 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %rcur = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %51, i32 0, i32 4
  %52 = load %struct.obj_header_s*, %struct.obj_header_s** %rcur, align 8, !tbaa !108
  %53 = load %struct.chunk_s*, %struct.chunk_s** %outer3, align 8, !tbaa !1
  %rcur27 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %53, i32 0, i32 4
  store %struct.obj_header_s* %52, %struct.obj_header_s** %rcur27, align 8, !tbaa !108
  %54 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %rtop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %54, i32 0, i32 5
  %55 = load i8*, i8** %rtop, align 8, !tbaa !109
  %56 = load %struct.chunk_s*, %struct.chunk_s** %outer3, align 8, !tbaa !1
  %rtop28 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %56, i32 0, i32 5
  store i8* %55, i8** %rtop28, align 8, !tbaa !109
  %57 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %57, i32 0, i32 6
  %58 = load i8*, i8** %ctop, align 8, !tbaa !39
  %59 = load %struct.chunk_s*, %struct.chunk_s** %outer3, align 8, !tbaa !1
  %ctop29 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %59, i32 0, i32 6
  store i8* %58, i8** %ctop29, align 8, !tbaa !39
  %60 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %has_refs = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %60, i32 0, i32 13
  %61 = load i32, i32* %has_refs, align 4, !tbaa !56
  %62 = load %struct.chunk_s*, %struct.chunk_s** %outer3, align 8, !tbaa !1
  %has_refs30 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %62, i32 0, i32 13
  %63 = load i32, i32* %has_refs30, align 4, !tbaa !56
  %or = or i32 %63, %61
  store i32 %or, i32* %has_refs30, align 4, !tbaa !56
  %64 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !41
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %66 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %67 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory31 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory31, align 8, !tbaa !41
  %69 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %70 = bitcast %struct.chunk_s* %69 to i8*
  call void %66(%struct.gs_memory_s* %68, i8* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0)) #4
  %71 = bitcast %struct.chunk_s** %outer3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.13, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %72 = load %struct.chunk_s*, %struct.chunk_s** %csucc, align 8, !tbaa !1
  store %struct.chunk_s* %72, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %73 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %omem, align 8, !tbaa !1
  %cfirst33 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %73, i32 0, i32 11
  %74 = load %struct.chunk_s*, %struct.chunk_s** %cfirst33, align 8, !tbaa !38
  %75 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfirst34 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %75, i32 0, i32 11
  store %struct.chunk_s* %74, %struct.chunk_s** %cfirst34, align 8, !tbaa !38
  %76 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %omem, align 8, !tbaa !1
  %clast = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %76, i32 0, i32 12
  %77 = load %struct.chunk_s*, %struct.chunk_s** %clast, align 8, !tbaa !88
  %78 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %clast35 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %78, i32 0, i32 12
  store %struct.chunk_s* %77, %struct.chunk_s** %clast35, align 8, !tbaa !88
  %79 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %omem, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %79, i32 0, i32 16
  %80 = load i64, i64* %allocated, align 8, !tbaa !110
  %81 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %allocated36 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %81, i32 0, i32 16
  %82 = load i64, i64* %allocated36, align 8, !tbaa !110
  %add = add i64 %82, %80
  store i64 %add, i64* %allocated36, align 8, !tbaa !110
  %83 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %omem, align 8, !tbaa !1
  %allocated37 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %83, i32 0, i32 16
  %84 = load i64, i64* %allocated37, align 8, !tbaa !110
  %85 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_allocated = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %85, i32 0, i32 17
  %86 = load i64, i64* %gc_allocated, align 8, !tbaa !111
  %add38 = add i64 %86, %84
  store i64 %add38, i64* %gc_allocated, align 8, !tbaa !111
  %87 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %omem, align 8, !tbaa !1
  %lost = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %87, i32 0, i32 18
  %objects = getelementptr inbounds %struct.lost_, %struct.lost_* %lost, i32 0, i32 0
  %88 = load i64, i64* %objects, align 8, !tbaa !112
  %89 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %lost39 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %89, i32 0, i32 18
  %objects40 = getelementptr inbounds %struct.lost_, %struct.lost_* %lost39, i32 0, i32 0
  %90 = load i64, i64* %objects40, align 8, !tbaa !112
  %add41 = add i64 %90, %88
  store i64 %add41, i64* %objects40, align 8, !tbaa !112
  %91 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %omem, align 8, !tbaa !1
  %lost42 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %91, i32 0, i32 18
  %refs = getelementptr inbounds %struct.lost_, %struct.lost_* %lost42, i32 0, i32 1
  %92 = load i64, i64* %refs, align 8, !tbaa !113
  %93 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %lost43 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %93, i32 0, i32 18
  %refs44 = getelementptr inbounds %struct.lost_, %struct.lost_* %lost43, i32 0, i32 1
  %94 = load i64, i64* %refs44, align 8, !tbaa !113
  %add45 = add i64 %94, %92
  store i64 %add45, i64* %refs44, align 8, !tbaa !113
  %95 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %omem, align 8, !tbaa !1
  %lost46 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %95, i32 0, i32 18
  %strings = getelementptr inbounds %struct.lost_, %struct.lost_* %lost46, i32 0, i32 2
  %96 = load i64, i64* %strings, align 8, !tbaa !114
  %97 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %lost47 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %97, i32 0, i32 18
  %strings48 = getelementptr inbounds %struct.lost_, %struct.lost_* %lost47, i32 0, i32 2
  %98 = load i64, i64* %strings48, align 8, !tbaa !114
  %add49 = add i64 %98, %96
  store i64 %add49, i64* %strings48, align 8, !tbaa !114
  %99 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %omem, align 8, !tbaa !1
  %saved50 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %99, i32 0, i32 28
  %100 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved50, align 8, !tbaa !51
  %101 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %saved51 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %101, i32 0, i32 28
  store %struct.alloc_save_s* %100, %struct.alloc_save_s** %saved51, align 8, !tbaa !51
  %102 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %previous_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %102, i32 0, i32 32
  %103 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %omem, align 8, !tbaa !1
  %previous_status52 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %103, i32 0, i32 32
  %104 = bitcast %struct.gs_memory_status_s* %previous_status to i8*
  %105 = bitcast %struct.gs_memory_status_s* %previous_status52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 24, i32 8, i1 false), !tbaa.struct !115
  %106 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.75, %for.end
  %107 = load i32, i32* %i, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %107, 102
  br i1 %cmp54, label %for.body.56, label %for.end.76

for.body.56:                                      ; preds = %for.cond.53
  %108 = bitcast %struct.obj_header_s** %olist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  %109 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %109 to i64
  %110 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %omem, align 8, !tbaa !1
  %freelists = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %110, i32 0, i32 34
  %arrayidx = getelementptr inbounds [102 x %struct.obj_header_s*], [102 x %struct.obj_header_s*]* %freelists, i32 0, i64 %idxprom
  %111 = load %struct.obj_header_s*, %struct.obj_header_s** %arrayidx, align 8, !tbaa !1
  store %struct.obj_header_s* %111, %struct.obj_header_s** %olist, align 8, !tbaa !1
  %112 = bitcast %struct.obj_header_s** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  %113 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %113 to i64
  %114 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %freelists58 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %114, i32 0, i32 34
  %arrayidx59 = getelementptr inbounds [102 x %struct.obj_header_s*], [102 x %struct.obj_header_s*]* %freelists58, i32 0, i64 %idxprom57
  %115 = load %struct.obj_header_s*, %struct.obj_header_s** %arrayidx59, align 8, !tbaa !1
  store %struct.obj_header_s* %115, %struct.obj_header_s** %list, align 8, !tbaa !1
  %116 = load %struct.obj_header_s*, %struct.obj_header_s** %olist, align 8, !tbaa !1
  %cmp60 = icmp eq %struct.obj_header_s* %116, null
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %for.body.56
  br label %if.end.74

if.else.63:                                       ; preds = %for.body.56
  %117 = load %struct.obj_header_s*, %struct.obj_header_s** %list, align 8, !tbaa !1
  %cmp64 = icmp eq %struct.obj_header_s* %117, null
  br i1 %cmp64, label %if.then.66, label %if.else.70

if.then.66:                                       ; preds = %if.else.63
  %118 = load %struct.obj_header_s*, %struct.obj_header_s** %olist, align 8, !tbaa !1
  %119 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom67 = sext i32 %119 to i64
  %120 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %freelists68 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %120, i32 0, i32 34
  %arrayidx69 = getelementptr inbounds [102 x %struct.obj_header_s*], [102 x %struct.obj_header_s*]* %freelists68, i32 0, i64 %idxprom67
  store %struct.obj_header_s* %118, %struct.obj_header_s** %arrayidx69, align 8, !tbaa !1
  br label %if.end.73

if.else.70:                                       ; preds = %if.else.63
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.70
  %121 = load %struct.obj_header_s*, %struct.obj_header_s** %list, align 8, !tbaa !1
  %122 = bitcast %struct.obj_header_s* %121 to %struct.obj_header_s**
  %123 = load %struct.obj_header_s*, %struct.obj_header_s** %122, align 8, !tbaa !1
  %cmp71 = icmp ne %struct.obj_header_s* %123, null
  br i1 %cmp71, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %124 = load %struct.obj_header_s*, %struct.obj_header_s** %list, align 8, !tbaa !1
  %125 = bitcast %struct.obj_header_s* %124 to %struct.obj_header_s**
  %126 = load %struct.obj_header_s*, %struct.obj_header_s** %125, align 8, !tbaa !1
  store %struct.obj_header_s* %126, %struct.obj_header_s** %list, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %127 = load %struct.obj_header_s*, %struct.obj_header_s** %olist, align 8, !tbaa !1
  %128 = load %struct.obj_header_s*, %struct.obj_header_s** %list, align 8, !tbaa !1
  %129 = bitcast %struct.obj_header_s* %128 to %struct.obj_header_s**
  store %struct.obj_header_s* %127, %struct.obj_header_s** %129, align 8, !tbaa !1
  br label %if.end.73

if.end.73:                                        ; preds = %while.end, %if.then.66
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.62
  %130 = bitcast %struct.obj_header_s** %list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast %struct.obj_header_s** %olist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %132 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %132, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.53

for.end.76:                                       ; preds = %for.cond.53
  %133 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %omem, align 8, !tbaa !1
  %largest_free_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %133, i32 0, i32 33
  %134 = load i32, i32* %largest_free_size, align 4, !tbaa !116
  %135 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %largest_free_size77 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %135, i32 0, i32 33
  %136 = load i32, i32* %largest_free_size77, align 4, !tbaa !116
  %cmp78 = icmp ugt i32 %134, %136
  br i1 %cmp78, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %for.end.76
  %137 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %omem, align 8, !tbaa !1
  %largest_free_size81 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %137, i32 0, i32 33
  %138 = load i32, i32* %largest_free_size81, align 4, !tbaa !116
  %139 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %largest_free_size82 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %139, i32 0, i32 33
  store i32 %138, i32* %largest_free_size82, align 4, !tbaa !116
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %for.end.76
  %140 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %142 = bitcast %struct.gs_ref_memory_s* %141 to %struct.gs_memory_s*
  %procs84 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %142, i32 0, i32 1
  %free_object85 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs84, i32 0, i32 2
  %143 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object85, align 8, !tbaa !55
  %144 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %145 = bitcast %struct.gs_ref_memory_s* %144 to %struct.gs_memory_s*
  %146 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !1
  %147 = bitcast %struct.alloc_save_s* %146 to i8*
  call void %143(%struct.gs_memory_s* %145, i8* %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0)) #4
  %148 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_open_chunk(%struct.gs_ref_memory_s* %148) #4
  %149 = bitcast %struct.chunk_s** %csucc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast %struct.gs_ref_memory_s** %omem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast %struct.alloc_save_s** %saved to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @forget_changes(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %chp = alloca %struct.alloc_change_s*, align 8
  %next = alloca %struct.alloc_change_s*, align 8
  %prp = alloca i16*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.alloc_change_s** %chp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 26
  %2 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes, align 8, !tbaa !60
  store %struct.alloc_change_s* %2, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %3 = bitcast %struct.alloc_change_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %tobool = icmp ne %struct.alloc_change_s* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast i16** %prp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %where = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %6, i32 0, i32 1
  %7 = load i16*, i16** %where, align 8, !tbaa !66
  store i16* %7, i16** %prp, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %for.body
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %8, i32 0, i32 3
  %9 = load i16, i16* %offset, align 2, !tbaa !67
  %conv = sext i16 %9 to i32
  %cmp = icmp eq i32 %conv, -3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  br label %do.cond.3

do.cond.3:                                        ; preds = %do.body.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.cond.3
  br label %if.end.11

if.else:                                          ; preds = %do.end
  %10 = load i16*, i16** %prp, align 8, !tbaa !1
  %11 = load i16, i16* %10, align 2, !tbaa !69
  %conv5 = zext i16 %11 to i32
  %cmp6 = icmp sge i32 %conv5, 16384
  br i1 %cmp6, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.else
  %12 = load i16*, i16** %prp, align 8, !tbaa !1
  %13 = bitcast i16* %12 to %struct.ref_s*
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = load i16, i16* %type_attrs, align 2, !tbaa !68
  %conv9 = zext i16 %14 to i32
  %and = and i32 %conv9, -3
  %conv10 = trunc i32 %and to i16
  store i16 %conv10, i16* %type_attrs, align 2, !tbaa !68
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %do.end.4
  %15 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %next12 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %15, i32 0, i32 0
  %16 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next12, align 8, !tbaa !61
  store %struct.alloc_change_s* %16, %struct.alloc_change_s** %next, align 8, !tbaa !1
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  %22 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %23 = bitcast %struct.alloc_change_s* %22 to i8*
  call void %19(%struct.gs_memory_s* %21, i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0)) #4
  %24 = bitcast i16** %prp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %25 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next, align 8, !tbaa !1
  store %struct.alloc_change_s* %25, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes13 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %26, i32 0, i32 26
  store %struct.alloc_change_s* null, %struct.alloc_change_s** %changes13, align 8, !tbaa !60
  %27 = bitcast %struct.alloc_change_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.alloc_change_s** %chp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gs_memory_s* @gs_save_any_memory(%struct.alloc_save_s* %save) #0 {
entry:
  %save.addr = alloca %struct.alloc_save_s*, align 8
  store %struct.alloc_save_s* %save, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %0 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %0, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !22
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  ret %struct.gs_memory_s* %2
}

declare void @alloc_close_chunk(%struct.gs_ref_memory_s*) #2

declare void @ialloc_reset(%struct.gs_ref_memory_s*) #2

declare i8* @gs_raw_alloc_struct_immovable(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*) #2

declare void @alloc_init_chunk(%struct.chunk_s*, i8*, i8*, i32, %struct.chunk_s*) #2

declare void @alloc_link_chunk(%struct.chunk_s*, %struct.gs_ref_memory_s*) #2

declare void @alloc_open_chunk(%struct.gs_ref_memory_s*) #2

declare %struct.gs_memory_s* @names_memory(%struct.name_table_s*) #2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal void @change_clear_marks(%struct.gs_memory_s* %cmem, i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %ptr = alloca %struct.alloc_change_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %0 = bitcast %struct.alloc_change_s** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.alloc_change_s*
  store %struct.alloc_change_s* %2, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %3 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %3, i32 0, i32 2
  %4 = bitcast %struct.ref_s* %contents to i16*
  %5 = load i16, i16* %4, align 2, !tbaa !69
  %conv = zext i16 %5 to i32
  %cmp = icmp sge i32 %conv, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %contents2 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %6, i32 0, i32 2
  %7 = bitcast %struct.ref_s* %contents2 to i16*
  %8 = load i16, i16* %7, align 2, !tbaa !69
  %conv3 = zext i16 %8 to i32
  %and = and i32 %conv3, -4097
  %conv4 = trunc i32 %and to i16
  store i16 %conv4, i16* %7, align 2, !tbaa !69
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %contents5 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %9, i32 0, i32 2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = load i16, i16* %type_attrs, align 2, !tbaa !68
  %conv6 = zext i16 %10 to i32
  %and7 = and i32 %conv6, -2
  %conv8 = trunc i32 %and7 to i16
  store i16 %conv8, i16* %type_attrs, align 2, !tbaa !68
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = bitcast %struct.alloc_change_s** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @change_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %ptr = alloca %struct.alloc_change_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.alloc_change_s** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.alloc_change_s*
  store %struct.alloc_change_s* %2, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.16
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.alloc_change_s*
  %next = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %5, i32 0, i32 0
  %6 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next, align 8, !tbaa !61
  %7 = bitcast %struct.alloc_change_s* %6 to i8*
  %8 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %8, i32 0, i32 0
  store i8* %7, i8** %ptr1, align 8, !tbaa !117
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %9, i32 0, i32 3
  %10 = load i16, i16* %offset, align 2, !tbaa !67
  %conv = sext i16 %10 to i32
  %cmp = icmp sge i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.2
  %11 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %where = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %11, i32 0, i32 1
  %12 = load i16*, i16** %where, align 8, !tbaa !66
  %13 = bitcast i16* %12 to i8*
  %14 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %offset4 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %14, i32 0, i32 3
  %15 = load i16, i16* %offset4, align 2, !tbaa !67
  %conv5 = sext i16 %15 to i32
  %idx.ext = sext i32 %conv5 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.neg
  %16 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %16, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr6, align 8, !tbaa !117
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %sw.bb.2
  %17 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %offset7 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %17, i32 0, i32 3
  %18 = load i16, i16* %offset7, align 2, !tbaa !67
  %conv8 = sext i16 %18 to i32
  %cmp9 = icmp ne i32 %conv8, -3
  br i1 %cmp9, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.else
  %19 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %where12 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %19, i32 0, i32 1
  %20 = load i16*, i16** %where12, align 8, !tbaa !66
  %21 = bitcast i16* %20 to i8*
  %22 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr13 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %22, i32 0, i32 0
  store i8* %21, i8** %ptr13, align 8, !tbaa !117
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.14:                                       ; preds = %if.else
  %23 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr15 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %23, i32 0, i32 0
  store i8* null, i8** %ptr15, align 8, !tbaa !117
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.16:                                         ; preds = %entry
  %24 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %24, i32 0, i32 2
  %25 = bitcast %struct.ref_s* %contents to i8*
  %26 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr17 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %26, i32 0, i32 0
  store i8* %25, i8** %ptr17, align 8, !tbaa !117
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.16, %if.else.14, %if.then.11, %if.then, %sw.bb, %sw.default
  %27 = bitcast %struct.alloc_change_s** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %28
}

; Function Attrs: nounwind uwtable
define internal void @change_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %ptr = alloca %struct.alloc_change_s*, align 8
  %pre = alloca %struct.obj_header_s*, align 8
  %pre1 = alloca %struct.obj_header_s*, align 8
  %obj = alloca i8*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.alloc_change_s** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.alloc_change_s*
  store %struct.alloc_change_s* %2, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_with_refs_s**
  %5 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !119
  %7 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %7, i32 0, i32 0
  %8 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next, align 8, !tbaa !61
  %9 = bitcast %struct.alloc_change_s* %8 to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %9, %struct.gc_state_s* %10) #4
  %11 = bitcast i8* %call to %struct.alloc_change_s*
  %12 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %12, i32 0, i32 0
  store %struct.alloc_change_s* %11, %struct.alloc_change_s** %next1, align 8, !tbaa !61
  %13 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %13, i32 0, i32 3
  %14 = load i16, i16* %offset, align 2, !tbaa !67
  %conv = sext i16 %14 to i32
  switch i32 %conv, label %sw.default [
    i32 -2, label %sw.epilog
    i32 -1, label %sw.bb
    i32 -3, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gc_state_s* %15 to %struct.gc_procs_with_refs_s**
  %17 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %16, align 8, !tbaa !1
  %reloc_ref_ptr = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %17, i32 0, i32 4
  %18 = load i16* (i16*, %struct.gc_state_s*)*, i16* (i16*, %struct.gc_state_s*)** %reloc_ref_ptr, align 8, !tbaa !121
  %19 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %where = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %19, i32 0, i32 1
  %20 = load i16*, i16** %where, align 8, !tbaa !66
  %21 = bitcast i16* %20 to i8*
  %22 = bitcast i8* %21 to i16*
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call2 = call i16* %18(i16* %22, %struct.gc_state_s* %23) #4
  %24 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %where3 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %24, i32 0, i32 1
  store i16* %call2, i16** %where3, align 8, !tbaa !66
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %25 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %where5 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %26, i32 0, i32 1
  %27 = load i16*, i16** %where5, align 8, !tbaa !66
  %28 = bitcast i16* %27 to %struct.obj_header_s*
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %28, i64 -1
  store %struct.obj_header_s* %add.ptr, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %29 = bitcast %struct.obj_header_s** %pre1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store %struct.obj_header_s* null, %struct.obj_header_s** %pre1, align 8, !tbaa !1
  %30 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %30, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %31 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_memory_struct_type_s* %31, @st_refs
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.4
  %32 = load %struct.obj_header_s*, %struct.obj_header_s** %pre1, align 8, !tbaa !1
  %d7 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %32, i32 0, i32 0
  %o8 = bitcast %union._d* %d7 to %struct.obj_header_data_s*
  %t9 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o8, i32 0, i32 2
  %type10 = bitcast %union._t* %t9 to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* null, %struct.gs_memory_struct_type_s** %type10, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.4
  %33 = bitcast %struct.obj_header_s** %pre1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %where11 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %35, i32 0, i32 1
  %36 = load i16*, i16** %where11, align 8, !tbaa !66
  %cmp12 = icmp ne i16* %36, null
  br i1 %cmp12, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %37 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %relocating_untraced = getelementptr inbounds %struct.gc_state_s, %struct.gc_state_s* %37, i32 0, i32 4
  %38 = load i32, i32* %relocating_untraced, align 4, !tbaa !122
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.end.18, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true
  %39 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %where15 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %39, i32 0, i32 1
  %40 = load i16*, i16** %where15, align 8, !tbaa !66
  %41 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call16 = call i16* @igc_reloc_ref_ptr_nocheck(i16* %40, %struct.gc_state_s* %41) #4
  %42 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %where17 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %42, i32 0, i32 1
  store i16* %call16, i16** %where17, align 8, !tbaa !66
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %land.lhs.true, %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %43 = bitcast i8** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %where19 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %44, i32 0, i32 1
  %45 = load i16*, i16** %where19, align 8, !tbaa !66
  %46 = bitcast i16* %45 to i8*
  %47 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %offset20 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %47, i32 0, i32 3
  %48 = load i16, i16* %offset20, align 2, !tbaa !67
  %conv21 = sext i16 %48 to i32
  %idx.ext = sext i32 %conv21 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr22 = getelementptr inbounds i8, i8* %46, i64 %idx.neg
  store i8* %add.ptr22, i8** %obj, align 8, !tbaa !1
  %49 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %50 = bitcast %struct.gc_state_s* %49 to %struct.gc_procs_with_refs_s**
  %51 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %50, align 8, !tbaa !1
  %reloc_struct_ptr23 = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %51, i32 0, i32 0
  %52 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr23, align 8, !tbaa !119
  %53 = load i8*, i8** %obj, align 8, !tbaa !1
  %54 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call24 = call i8* %52(i8* %53, %struct.gc_state_s* %54) #4
  store i8* %call24, i8** %obj, align 8, !tbaa !1
  %55 = load i8*, i8** %obj, align 8, !tbaa !1
  %56 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %offset25 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %56, i32 0, i32 3
  %57 = load i16, i16* %offset25, align 2, !tbaa !67
  %conv26 = sext i16 %57 to i32
  %idx.ext27 = sext i32 %conv26 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %55, i64 %idx.ext27
  %58 = bitcast i8* %add.ptr28 to i16*
  %59 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %where29 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %59, i32 0, i32 1
  store i16* %58, i16** %where29, align 8, !tbaa !66
  %60 = bitcast i8** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.18, %sw.bb, %entry
  %61 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %61, i32 0, i32 2
  %62 = bitcast %struct.ref_s* %contents to i16*
  %63 = load i16, i16* %62, align 2, !tbaa !69
  %conv30 = zext i16 %63 to i32
  %cmp31 = icmp sge i32 %conv30, 16384
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %sw.epilog
  %64 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %contents34 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %64, i32 0, i32 2
  %65 = bitcast %struct.ref_s* %contents34 to i16*
  %66 = load i16, i16* %65, align 2, !tbaa !69
  %conv35 = zext i16 %66 to i32
  %and = and i32 %conv35, -4097
  %conv36 = trunc i32 %and to i16
  store i16 %conv36, i16* %65, align 2, !tbaa !69
  br label %if.end.44

if.else:                                          ; preds = %sw.epilog
  %67 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %68 = bitcast %struct.gc_state_s* %67 to %struct.gc_procs_with_refs_s**
  %69 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %68, align 8, !tbaa !1
  %reloc_refs = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %69, i32 0, i32 5
  %70 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs, align 8, !tbaa !124
  %71 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %contents37 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %71, i32 0, i32 2
  %72 = bitcast %struct.ref_s* %contents37 to i16*
  %73 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %contents38 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %73, i32 0, i32 2
  %add.ptr39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents38, i64 1
  %74 = bitcast %struct.ref_s* %add.ptr39 to i16*
  %75 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %70(i16* %72, i16* %74, %struct.gc_state_s* %75) #4
  %76 = load %struct.alloc_change_s*, %struct.alloc_change_s** %ptr, align 8, !tbaa !1
  %contents40 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %76, i32 0, i32 2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %contents40, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %77 = load i16, i16* %type_attrs, align 2, !tbaa !68
  %conv41 = zext i16 %77 to i32
  %and42 = and i32 %conv41, -2
  %conv43 = trunc i32 %and42 to i16
  store i16 %conv43, i16* %type_attrs, align 2, !tbaa !68
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.then.33
  %78 = bitcast %struct.alloc_change_s** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  ret void
}

declare i16* @igc_reloc_ref_ptr_nocheck(i16*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_l_mark(i8* %obj) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca i8*, align 8
  %pre = alloca %struct.obj_header_s*, align 8
  %size = alloca i32, align 4
  %prp = alloca i16*, align 8
  %next = alloca i16*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !1
  %0 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.obj_header_s*
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %2, i64 -1
  store %struct.obj_header_s* %add.ptr, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %4, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size1 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %5 = load i32, i32* %size1, align 4, !tbaa !58
  store i32 %5, i32* %size, align 4, !tbaa !5
  %6 = bitcast i16** %prp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %7, i64 1
  %8 = bitcast %struct.obj_header_s* %add.ptr2 to i16*
  store i16* %8, i16** %prp, align 8, !tbaa !1
  %9 = bitcast i16** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i16*, i16** %prp, align 8, !tbaa !1
  %11 = bitcast i16* %10 to i8*
  %12 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext = zext i32 %12 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %13 = bitcast i8* %add.ptr3 to i16*
  store i16* %13, i16** %next, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %14 = load i16*, i16** %prp, align 8, !tbaa !1
  %15 = load i16, i16* %14, align 2, !tbaa !69
  %conv = zext i16 %15 to i32
  %cmp = icmp sge i32 %conv, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %16 = load i16*, i16** %prp, align 8, !tbaa !1
  %17 = load i16, i16* %16, align 2, !tbaa !69
  %conv5 = zext i16 %17 to i32
  %and = and i32 %conv5, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %18 = load i16*, i16** %prp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %incdec.ptr, i16** %prp, align 8, !tbaa !1
  br label %if.end.17

if.else:                                          ; preds = %while.body
  %19 = load i16*, i16** %prp, align 8, !tbaa !1
  %20 = bitcast i16* %19 to %struct.ref_s*
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %21 = load i16, i16* %type_attrs, align 2, !tbaa !68
  %conv7 = zext i16 %21 to i32
  %and8 = and i32 %conv7, 1
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.else
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.else
  %22 = load i16*, i16** %prp, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i16, i16* %22, i64 8
  store i16* %add.ptr12, i16** %prp, align 8, !tbaa !1
  %23 = load i16*, i16** %prp, align 8, !tbaa !1
  %24 = load i16*, i16** %next, align 8, !tbaa !1
  %cmp13 = icmp uge i16* %23, %24
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  br label %while.cond

cleanup:                                          ; preds = %if.then.15, %if.then.10, %if.then.6
  %25 = bitcast i16** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i16** %prp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i32 @font_restore(%struct.alloc_save_s*) #2

declare void @names_restore(%struct.name_table_s*, %struct.alloc_save_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @save_set_new_changes(%struct.gs_ref_memory_s* %mem, i32 %to_new, i32 %set_limit) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %to_new.addr = alloca i32, align 4
  %set_limit.addr = alloca i32, align 4
  %chp = alloca %struct.alloc_change_s*, align 8
  %new = alloca i32, align 4
  %scanned = alloca i64, align 8
  %size = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %prp = alloca i16*, align 8
  %rp = alloca %struct.ref_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %to_new, i32* %to_new.addr, align 4, !tbaa !5
  store i32 %set_limit, i32* %set_limit.addr, align 4, !tbaa !5
  %0 = bitcast %struct.alloc_change_s** %chp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %new to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %to_new.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 2, i32 0
  store i32 %cond, i32* %new, align 4, !tbaa !5
  %3 = bitcast i64* %scanned to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 0, i64* %scanned, align 8, !tbaa !25
  %4 = load i32, i32* %to_new.addr, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %total_scanned_after_compacting = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %5, i32 0, i32 30
  %6 = load i64, i64* %total_scanned_after_compacting, align 8, !tbaa !54
  %cmp = icmp sgt i64 %6, 1600000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %total_scanned_after_compacting2 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %7, i32 0, i32 30
  store i64 0, i64* %total_scanned_after_compacting2, align 8, !tbaa !54
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @drop_redundant_changes(%struct.gs_ref_memory_s* %8) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %9, i32 0, i32 26
  %10 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes, align 8, !tbaa !60
  store %struct.alloc_change_s* %10, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.alloc_change_s* %11, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %12, i32 0, i32 3
  %13 = load i16, i16* %offset, align 2, !tbaa !67
  %conv = sext i16 %13 to i32
  %cmp4 = icmp eq i32 %conv, -3
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.body
  %14 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %where = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %14, i32 0, i32 1
  %15 = load i16*, i16** %where, align 8, !tbaa !66
  %cmp7 = icmp ne i16* %15, null
  br i1 %cmp7, label %if.then.9, label %if.end.17

if.then.9:                                        ; preds = %if.then.6
  %16 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %where10 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %18, i32 0, i32 1
  %19 = load i16*, i16** %where10, align 8, !tbaa !66
  %20 = bitcast i16* %19 to i8*
  %21 = load i32, i32* %to_new.addr, align 4, !tbaa !5
  %call = call i32 @mark_allocated(i8* %20, i32 %21, i32* %size) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %22, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.9
  %24 = load i32, i32* %size, align 4, !tbaa !5
  %conv15 = zext i32 %24 to i64
  %25 = load i64, i64* %scanned, align 8, !tbaa !25
  %add = add i64 %25, %conv15
  store i64 %add, i64* %scanned, align 8, !tbaa !25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.50 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.17

if.end.17:                                        ; preds = %cleanup.cont, %if.then.6
  br label %if.end.29

if.else:                                          ; preds = %for.body
  %28 = bitcast i16** %prp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %where18 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %29, i32 0, i32 1
  %30 = load i16*, i16** %where18, align 8, !tbaa !66
  store i16* %30, i16** %prp, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %31 = load i16*, i16** %prp, align 8, !tbaa !1
  %32 = load i16, i16* %31, align 2, !tbaa !69
  %conv19 = zext i16 %32 to i32
  %cmp20 = icmp sge i32 %conv19, 16384
  br i1 %cmp20, label %if.end.28, label %if.then.22

if.then.22:                                       ; preds = %do.end
  %33 = bitcast %struct.ref_s** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load i16*, i16** %prp, align 8, !tbaa !1
  %35 = bitcast i16* %34 to %struct.ref_s*
  store %struct.ref_s* %35, %struct.ref_s** %rp, align 8, !tbaa !1
  %36 = load %struct.ref_s*, %struct.ref_s** %rp, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %37 = load i16, i16* %type_attrs, align 2, !tbaa !68
  %conv23 = zext i16 %37 to i32
  %and = and i32 %conv23, -3
  %38 = load i32, i32* %new, align 4, !tbaa !5
  %add24 = add i32 %and, %38
  %conv25 = trunc i32 %add24 to i16
  %39 = load %struct.ref_s*, %struct.ref_s** %rp, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  store i16 %conv25, i16* %type_attrs27, align 2, !tbaa !68
  %40 = bitcast %struct.ref_s** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.22, %do.end
  %41 = bitcast i16** %prp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.17
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %scan_limit = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %42, i32 0, i32 27
  %43 = load %struct.alloc_change_s*, %struct.alloc_change_s** %scan_limit, align 8, !tbaa !73
  %44 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %cmp30 = icmp eq %struct.alloc_change_s* %43, %44
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  br label %for.end

if.end.33:                                        ; preds = %if.end.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %45 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %45, i32 0, i32 0
  %46 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next, align 8, !tbaa !61
  store %struct.alloc_change_s* %46, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.32, %for.cond
  %47 = load i32, i32* %set_limit.addr, align 4, !tbaa !5
  %tobool34 = icmp ne i32 %47, 0
  br i1 %tobool34, label %if.then.35, label %if.end.49

if.then.35:                                       ; preds = %for.end
  %48 = load i64, i64* %scanned, align 8, !tbaa !25
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %total_scanned_after_compacting36 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %49, i32 0, i32 30
  %50 = load i64, i64* %total_scanned_after_compacting36, align 8, !tbaa !54
  %add37 = add i64 %50, %48
  store i64 %add37, i64* %total_scanned_after_compacting36, align 8, !tbaa !54
  %51 = load i64, i64* %scanned, align 8, !tbaa !25
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %total_scanned = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %52, i32 0, i32 29
  %53 = load i64, i64* %total_scanned, align 8, !tbaa !53
  %add38 = add i64 %51, %53
  %cmp39 = icmp uge i64 %add38, 100000
  br i1 %cmp39, label %if.then.41, label %if.else.45

if.then.41:                                       ; preds = %if.then.35
  %54 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes42 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %54, i32 0, i32 26
  %55 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes42, align 8, !tbaa !60
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %scan_limit43 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %56, i32 0, i32 27
  store %struct.alloc_change_s* %55, %struct.alloc_change_s** %scan_limit43, align 8, !tbaa !73
  %57 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %total_scanned44 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %57, i32 0, i32 29
  store i64 0, i64* %total_scanned44, align 8, !tbaa !53
  br label %if.end.48

if.else.45:                                       ; preds = %if.then.35
  %58 = load i64, i64* %scanned, align 8, !tbaa !25
  %59 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %total_scanned46 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %59, i32 0, i32 29
  %60 = load i64, i64* %total_scanned46, align 8, !tbaa !53
  %add47 = add i64 %60, %58
  store i64 %add47, i64* %total_scanned46, align 8, !tbaa !53
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.41
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

cleanup.50:                                       ; preds = %if.end.49, %cleanup
  %61 = bitcast i64* %scanned to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i32* %new to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast %struct.alloc_change_s** %chp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @mark_allocated(i8* %obj, i32 %to_new, i32* %psize) #3 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca i8*, align 8
  %to_new.addr = alloca i32, align 4
  %psize.addr = alloca i32*, align 8
  %pre = alloca %struct.obj_header_s*, align 8
  %size = alloca i32, align 4
  %prp = alloca i16*, align 8
  %next = alloca i16*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !1
  store i32 %to_new, i32* %to_new.addr, align 4, !tbaa !5
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.obj_header_s*
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %2, i64 -1
  store %struct.obj_header_s* %add.ptr, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %4, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size1 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %5 = load i32, i32* %size1, align 4, !tbaa !58
  store i32 %5, i32* %size, align 4, !tbaa !5
  %6 = bitcast i16** %prp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %7, i64 1
  %8 = bitcast %struct.obj_header_s* %add.ptr2 to i16*
  store i16* %8, i16** %prp, align 8, !tbaa !1
  %9 = bitcast i16** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i16*, i16** %prp, align 8, !tbaa !1
  %11 = bitcast i16* %10 to i8*
  %12 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext = zext i32 %12 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %13 = bitcast i8* %add.ptr3 to i16*
  store i16* %13, i16** %next, align 8, !tbaa !1
  %14 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d4 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %14, i32 0, i32 0
  %o5 = bitcast %union._d* %d4 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o5, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %15 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_memory_struct_type_s* %15, @st_refs
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load i32, i32* %to_new.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.6, label %if.else.18

if.then.6:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.then.6
  br label %while.body

while.body:                                       ; preds = %while.cond
  %17 = load i16*, i16** %prp, align 8, !tbaa !1
  %18 = load i16, i16* %17, align 2, !tbaa !69
  %conv = zext i16 %18 to i32
  %cmp7 = icmp sge i32 %conv, 16384
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %while.body
  %19 = load i16*, i16** %prp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %19, i32 1
  store i16* %incdec.ptr, i16** %prp, align 8, !tbaa !1
  br label %if.end.17

if.else:                                          ; preds = %while.body
  %20 = load i16*, i16** %prp, align 8, !tbaa !1
  %21 = bitcast i16* %20 to %struct.ref_s*
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %22 = load i16, i16* %type_attrs, align 2, !tbaa !68
  %conv10 = zext i16 %22 to i32
  %or = or i32 %conv10, 2
  %conv11 = trunc i32 %or to i16
  store i16 %conv11, i16* %type_attrs, align 2, !tbaa !68
  %23 = load i16*, i16** %prp, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i16, i16* %23, i64 8
  store i16* %add.ptr12, i16** %prp, align 8, !tbaa !1
  %24 = load i16*, i16** %prp, align 8, !tbaa !1
  %25 = load i16*, i16** %next, align 8, !tbaa !1
  %cmp13 = icmp uge i16* %24, %25
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else
  br label %while.end

if.end.16:                                        ; preds = %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.9
  br label %while.cond

while.end:                                        ; preds = %if.then.15
  br label %if.end.38

if.else.18:                                       ; preds = %if.end
  br label %while.cond.19

while.cond.19:                                    ; preds = %if.end.36, %if.else.18
  br label %while.body.20

while.body.20:                                    ; preds = %while.cond.19
  %26 = load i16*, i16** %prp, align 8, !tbaa !1
  %27 = load i16, i16* %26, align 2, !tbaa !69
  %conv21 = zext i16 %27 to i32
  %cmp22 = icmp sge i32 %conv21, 16384
  br i1 %cmp22, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %while.body.20
  %28 = load i16*, i16** %prp, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i16, i16* %28, i32 1
  store i16* %incdec.ptr25, i16** %prp, align 8, !tbaa !1
  br label %if.end.36

if.else.26:                                       ; preds = %while.body.20
  %29 = load i16*, i16** %prp, align 8, !tbaa !1
  %30 = bitcast i16* %29 to %struct.ref_s*
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %type_attrs28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 0
  %31 = load i16, i16* %type_attrs28, align 2, !tbaa !68
  %conv29 = zext i16 %31 to i32
  %and = and i32 %conv29, -3
  %conv30 = trunc i32 %and to i16
  store i16 %conv30, i16* %type_attrs28, align 2, !tbaa !68
  %32 = load i16*, i16** %prp, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds i16, i16* %32, i64 8
  store i16* %add.ptr31, i16** %prp, align 8, !tbaa !1
  %33 = load i16*, i16** %prp, align 8, !tbaa !1
  %34 = load i16*, i16** %next, align 8, !tbaa !1
  %cmp32 = icmp uge i16* %33, %34
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else.26
  br label %while.end.37

if.end.35:                                        ; preds = %if.else.26
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.24
  br label %while.cond.19

while.end.37:                                     ; preds = %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %while.end.37, %while.end
  %35 = load i32, i32* %size, align 4, !tbaa !5
  %36 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %35, i32* %36, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %do.end
  %37 = bitcast i16** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i16** %prp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal void @drop_redundant_changes(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %chp = alloca %struct.alloc_change_s*, align 8
  %chp_back = alloca %struct.alloc_change_s*, align 8
  %chp_forth = alloca %struct.alloc_change_s*, align 8
  %prp = alloca i16*, align 8
  %rp = alloca %struct.ref_s*, align 8
  %prp21 = alloca i16*, align 8
  %rp27 = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.alloc_change_s** %chp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 26
  %2 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes, align 8, !tbaa !60
  store %struct.alloc_change_s* %2, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %3 = bitcast %struct.alloc_change_s** %chp_back to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.alloc_change_s* null, %struct.alloc_change_s** %chp_back, align 8, !tbaa !1
  %4 = bitcast %struct.alloc_change_s** %chp_forth to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_open_chunk(%struct.gs_ref_memory_s* %5) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %tobool = icmp ne %struct.alloc_change_s* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %7, i32 0, i32 0
  %8 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next, align 8, !tbaa !61
  store %struct.alloc_change_s* %8, %struct.alloc_change_s** %chp_forth, align 8, !tbaa !1
  %9 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %9, i32 0, i32 3
  %10 = load i16, i16* %offset, align 2, !tbaa !67
  %conv = sext i16 %10 to i32
  %cmp = icmp ne i32 %conv, -3
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.body
  %11 = bitcast i16** %prp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %where = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %12, i32 0, i32 1
  %13 = load i16*, i16** %where, align 8, !tbaa !66
  store i16* %13, i16** %prp, align 8, !tbaa !1
  %14 = load i16*, i16** %prp, align 8, !tbaa !1
  %15 = load i16, i16* %14, align 2, !tbaa !69
  %conv2 = zext i16 %15 to i32
  %cmp3 = icmp sge i32 %conv2, 16384
  br i1 %cmp3, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %16 = bitcast %struct.ref_s** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i16*, i16** %prp, align 8, !tbaa !1
  %18 = bitcast i16* %17 to %struct.ref_s*
  store %struct.ref_s* %18, %struct.ref_s** %rp, align 8, !tbaa !1
  %19 = load %struct.ref_s*, %struct.ref_s** %rp, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %20 = load i16, i16* %type_attrs, align 2, !tbaa !68
  %conv6 = zext i16 %20 to i32
  %or = or i32 %conv6, 2
  %conv7 = trunc i32 %or to i16
  store i16 %conv7, i16* %type_attrs, align 2, !tbaa !68
  %21 = bitcast %struct.ref_s** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %22 = bitcast i16** %prp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %for.body
  %23 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp_back, align 8, !tbaa !1
  %24 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %next9 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %24, i32 0, i32 0
  store %struct.alloc_change_s* %23, %struct.alloc_change_s** %next9, align 8, !tbaa !61
  %25 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  store %struct.alloc_change_s* %25, %struct.alloc_change_s** %chp_back, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %26 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp_forth, align 8, !tbaa !1
  store %struct.alloc_change_s* %26, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp_back, align 8, !tbaa !1
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes10 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %28, i32 0, i32 26
  store %struct.alloc_change_s* %27, %struct.alloc_change_s** %changes10, align 8, !tbaa !60
  store %struct.alloc_change_s* null, %struct.alloc_change_s** %chp_back, align 8, !tbaa !1
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes11 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %29, i32 0, i32 26
  %30 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes11, align 8, !tbaa !60
  store %struct.alloc_change_s* %30, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.57, %for.end
  %31 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %tobool13 = icmp ne %struct.alloc_change_s* %31, null
  br i1 %tobool13, label %for.body.14, label %for.end.58

for.body.14:                                      ; preds = %for.cond.12
  %32 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %next15 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %32, i32 0, i32 0
  %33 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next15, align 8, !tbaa !61
  store %struct.alloc_change_s* %33, %struct.alloc_change_s** %chp_forth, align 8, !tbaa !1
  %34 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %offset16 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %34, i32 0, i32 3
  %35 = load i16, i16* %offset16, align 2, !tbaa !67
  %conv17 = sext i16 %35 to i32
  %cmp18 = icmp ne i32 %conv17, -3
  br i1 %cmp18, label %if.then.20, label %if.end.55

if.then.20:                                       ; preds = %for.body.14
  %36 = bitcast i16** %prp21 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %where22 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %37, i32 0, i32 1
  %38 = load i16*, i16** %where22, align 8, !tbaa !66
  store i16* %38, i16** %prp21, align 8, !tbaa !1
  %39 = load i16*, i16** %prp21, align 8, !tbaa !1
  %40 = load i16, i16* %39, align 2, !tbaa !69
  %conv23 = zext i16 %40 to i32
  %cmp24 = icmp sge i32 %conv23, 16384
  br i1 %cmp24, label %if.end.51, label %if.then.26

if.then.26:                                       ; preds = %if.then.20
  %41 = bitcast %struct.ref_s** %rp27 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load i16*, i16** %prp21, align 8, !tbaa !1
  %43 = bitcast i16* %42 to %struct.ref_s*
  store %struct.ref_s* %43, %struct.ref_s** %rp27, align 8, !tbaa !1
  %44 = load %struct.ref_s*, %struct.ref_s** %rp27, align 8, !tbaa !1
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %type_attrs29 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 0
  %45 = load i16, i16* %type_attrs29, align 2, !tbaa !68
  %conv30 = zext i16 %45 to i32
  %and = and i32 %conv30, 2
  %cmp31 = icmp eq i32 %and, 0
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.then.26
  %46 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %scan_limit = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %46, i32 0, i32 27
  %47 = load %struct.alloc_change_s*, %struct.alloc_change_s** %scan_limit, align 8, !tbaa !73
  %48 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %cmp34 = icmp eq %struct.alloc_change_s* %47, %48
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.33
  %49 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp_back, align 8, !tbaa !1
  %50 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %scan_limit37 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %50, i32 0, i32 27
  store %struct.alloc_change_s* %49, %struct.alloc_change_s** %scan_limit37, align 8, !tbaa !73
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.33
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes39 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %51, i32 0, i32 26
  %52 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes39, align 8, !tbaa !60
  %53 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %cmp40 = icmp eq %struct.alloc_change_s* %52, %53
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.38
  %54 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp_back, align 8, !tbaa !1
  %55 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes43 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %55, i32 0, i32 26
  store %struct.alloc_change_s* %54, %struct.alloc_change_s** %changes43, align 8, !tbaa !60
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.38
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %57 = bitcast %struct.gs_ref_memory_s* %56 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %57, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %58 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %59 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %60 = bitcast %struct.gs_ref_memory_s* %59 to %struct.gs_memory_s*
  %61 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %62 = bitcast %struct.alloc_change_s* %61 to i8*
  call void %58(%struct.gs_memory_s* %60, i8* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)) #4
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then.26
  %63 = load %struct.ref_s*, %struct.ref_s** %rp27, align 8, !tbaa !1
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %type_attrs46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 0
  %64 = load i16, i16* %type_attrs46, align 2, !tbaa !68
  %conv47 = zext i16 %64 to i32
  %and48 = and i32 %conv47, -3
  %conv49 = trunc i32 %and48 to i16
  store i16 %conv49, i16* %type_attrs46, align 2, !tbaa !68
  br label %if.end.50

if.end.50:                                        ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.50, %if.end.44
  %65 = bitcast %struct.ref_s** %rp27 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.52 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.51

if.end.51:                                        ; preds = %cleanup.cont, %if.then.20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.52

cleanup.52:                                       ; preds = %if.end.51, %cleanup
  %66 = bitcast i16** %prp21 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %cleanup.dest.53 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.53, label %unreachable [
    i32 0, label %cleanup.cont.54
    i32 7, label %for.inc.57
  ]

cleanup.cont.54:                                  ; preds = %cleanup.52
  br label %if.end.55

if.end.55:                                        ; preds = %cleanup.cont.54, %for.body.14
  %67 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp_back, align 8, !tbaa !1
  %68 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  %next56 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %68, i32 0, i32 0
  store %struct.alloc_change_s* %67, %struct.alloc_change_s** %next56, align 8, !tbaa !61
  %69 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  store %struct.alloc_change_s* %69, %struct.alloc_change_s** %chp_back, align 8, !tbaa !1
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.55, %cleanup.52
  %70 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp_forth, align 8, !tbaa !1
  store %struct.alloc_change_s* %70, %struct.alloc_change_s** %chp, align 8, !tbaa !1
  br label %for.cond.12

for.end.58:                                       ; preds = %for.cond.12
  %71 = load %struct.alloc_change_s*, %struct.alloc_change_s** %chp_back, align 8, !tbaa !1
  %72 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes59 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %72, i32 0, i32 26
  store %struct.alloc_change_s* %71, %struct.alloc_change_s** %changes59, align 8, !tbaa !60
  %73 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_close_chunk(%struct.gs_ref_memory_s* %73) #4
  %74 = bitcast %struct.alloc_change_s** %chp_forth to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast %struct.alloc_change_s** %chp_back to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.alloc_change_s** %chp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  ret void

unreachable:                                      ; preds = %cleanup.52
  unreachable
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 68}
!8 = !{!"gs_dual_memory_s", !2, i64 0, !9, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!9 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!10 = !{!8, !6, i64 64}
!11 = !{!12, !6, i64 556}
!12 = !{!"gs_ref_memory_s", !2, i64 0, !13, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !14, i64 232, !6, i64 272, !15, i64 280, !2, i64 288, !2, i64 296, !16, i64 304, !2, i64 488, !17, i64 496, !15, i64 512, !15, i64 520, !18, i64 528, !6, i64 552, !6, i64 556, !6, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !6, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !15, i64 624, !15, i64 632, !2, i64 640, !19, i64 648, !6, i64 672, !3, i64 680}
!13 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!14 = !{!"gs_memory_gc_status_s", !15, i64 0, !15, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !15, i64 32}
!15 = !{!"long", !3, i64 0}
!16 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !6, i64 96, !6, i64 100, !2, i64 104, !6, i64 112, !2, i64 120, !2, i64 128, !6, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!17 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!18 = !{!"lost_", !15, i64 0, !15, i64 8, !15, i64 16}
!19 = !{!"gs_memory_status_s", !15, i64 0, !15, i64 8, !6, i64 16}
!20 = !{!12, !6, i64 560}
!21 = !{!12, !2, i64 0}
!22 = !{!23, !2, i64 24}
!23 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!23, !2, i64 16}
!25 = !{!15, !15, i64 0}
!26 = !{!12, !6, i64 552}
!27 = !{!12, !6, i64 592}
!28 = !{!29, !2, i64 1552}
!29 = !{!"alloc_save_s", !12, i64 0, !9, i64 1496, !6, i64 1536, !6, i64 1540, !15, i64 1544, !2, i64 1552}
!30 = !{!12, !6, i64 224}
!31 = !{!29, !6, i64 1536}
!32 = !{!29, !15, i64 1544}
!33 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 8, !1, i64 192, i64 8, !1, i64 200, i64 8, !1, i64 208, i64 8, !1, i64 216, i64 4, !5, i64 220, i64 4, !5, i64 224, i64 4, !5, i64 232, i64 8, !25, i64 240, i64 8, !25, i64 248, i64 8, !1, i64 256, i64 4, !5, i64 260, i64 4, !5, i64 264, i64 8, !25, i64 272, i64 4, !5, i64 280, i64 8, !25, i64 288, i64 8, !1, i64 296, i64 8, !1, i64 304, i64 8, !1, i64 312, i64 8, !1, i64 320, i64 8, !1, i64 328, i64 8, !1, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 8, !1, i64 384, i64 8, !1, i64 392, i64 8, !1, i64 400, i64 4, !5, i64 404, i64 4, !5, i64 408, i64 8, !1, i64 416, i64 4, !5, i64 424, i64 8, !1, i64 432, i64 8, !1, i64 440, i64 4, !5, i64 448, i64 8, !1, i64 456, i64 8, !1, i64 464, i64 8, !1, i64 472, i64 8, !1, i64 480, i64 8, !1, i64 488, i64 8, !1, i64 496, i64 8, !1, i64 504, i64 8, !1, i64 512, i64 8, !25, i64 520, i64 8, !25, i64 528, i64 8, !25, i64 536, i64 8, !25, i64 544, i64 8, !25, i64 552, i64 4, !5, i64 556, i64 4, !5, i64 560, i64 4, !5, i64 568, i64 8, !1, i64 576, i64 8, !1, i64 584, i64 8, !1, i64 592, i64 4, !5, i64 600, i64 8, !1, i64 608, i64 8, !1, i64 616, i64 8, !1, i64 624, i64 8, !25, i64 632, i64 8, !25, i64 640, i64 8, !1, i64 648, i64 8, !25, i64 656, i64 8, !25, i64 664, i64 4, !5, i64 672, i64 4, !5, i64 680, i64 816, !34}
!34 = !{!3, !3, i64 0}
!35 = !{!12, !2, i64 488}
!36 = !{!37, !2, i64 40}
!37 = !{!"gs_memory_s", !2, i64 0, !13, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!38 = !{!12, !2, i64 288}
!39 = !{!16, !2, i64 48}
!40 = !{!16, !2, i64 24}
!41 = !{!12, !2, i64 200}
!42 = !{!16, !2, i64 152}
!43 = !{!16, !2, i64 80}
!44 = !{!37, !2, i64 72}
!45 = !{i64 0, i64 8, !1, i64 8, i64 32, !34, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1}
!46 = !{!12, !2, i64 192}
!47 = !{!48, !2, i64 120}
!48 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !15, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!49 = !{!8, !2, i64 0}
!50 = !{!29, !6, i64 1540}
!51 = !{!12, !2, i64 616}
!52 = !{!12, !2, i64 568}
!53 = !{!12, !15, i64 624}
!54 = !{!12, !15, i64 632}
!55 = !{!37, !2, i64 24}
!56 = !{!16, !6, i64 100}
!57 = !{!16, !2, i64 8}
!58 = !{!59, !6, i64 4}
!59 = !{!"obj_header_data_s", !3, i64 0, !6, i64 4, !3, i64 8, !15, i64 16}
!60 = !{!12, !2, i64 600}
!61 = !{!62, !2, i64 0}
!62 = !{!"alloc_change_s", !2, i64 0, !2, i64 8, !63, i64 16, !65, i64 32}
!63 = !{!"ref_s", !64, i64 0, !3, i64 8}
!64 = !{!"tas_s", !65, i64 0, !65, i64 2, !6, i64 4}
!65 = !{!"short", !3, i64 0}
!66 = !{!62, !2, i64 8}
!67 = !{!62, !65, i64 32}
!68 = !{!63, !65, i64 0}
!69 = !{!65, !65, i64 0}
!70 = !{i64 0, i64 2, !69, i64 2, i64 2, !69, i64 4, i64 4, !5, i64 8, i64 8, !25, i64 8, i64 2, !69, i64 8, i64 4, !71, i64 8, i64 8, !25, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !25}
!71 = !{!72, !72, i64 0}
!72 = !{!"float", !3, i64 0}
!73 = !{!12, !2, i64 608}
!74 = !{!29, !2, i64 616}
!75 = !{!16, !2, i64 64}
!76 = !{!29, !6, i64 552}
!77 = !{!63, !6, i64 4}
!78 = !{!79, !6, i64 4096}
!79 = !{!"name_sub_table_s", !3, i64 0, !6, i64 4096}
!80 = !{!37, !2, i64 192}
!81 = !{!82, !2, i64 8}
!82 = !{!"sub_", !2, i64 0, !2, i64 8}
!83 = !{!84, !2, i64 8}
!84 = !{!"name_string_s", !6, i64 0, !6, i64 2, !6, i64 2, !6, i64 2, !2, i64 8}
!85 = !{!12, !2, i64 248}
!86 = !{!29, !2, i64 248}
!87 = !{!37, !2, i64 184}
!88 = !{!12, !2, i64 296}
!89 = !{!90, !2, i64 48}
!90 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!91 = !{!16, !2, i64 72}
!92 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 8, !1, i64 192, i64 8, !1, i64 200, i64 8, !1, i64 208, i64 8, !1, i64 216, i64 4, !5, i64 220, i64 4, !5, i64 224, i64 4, !5, i64 232, i64 8, !25, i64 240, i64 8, !25, i64 248, i64 8, !1, i64 256, i64 4, !5, i64 260, i64 4, !5, i64 264, i64 8, !25, i64 272, i64 4, !5, i64 280, i64 8, !25, i64 288, i64 8, !1, i64 296, i64 8, !1, i64 304, i64 8, !1, i64 312, i64 8, !1, i64 320, i64 8, !1, i64 328, i64 8, !1, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 8, !1, i64 384, i64 8, !1, i64 392, i64 8, !1, i64 400, i64 4, !5, i64 404, i64 4, !5, i64 408, i64 8, !1, i64 416, i64 4, !5, i64 424, i64 8, !1, i64 432, i64 8, !1, i64 440, i64 4, !5, i64 448, i64 8, !1, i64 456, i64 8, !1, i64 464, i64 8, !1, i64 472, i64 8, !1, i64 480, i64 8, !1, i64 488, i64 8, !1, i64 496, i64 8, !1, i64 504, i64 8, !1, i64 512, i64 8, !25, i64 520, i64 8, !25, i64 528, i64 8, !25, i64 536, i64 8, !25, i64 544, i64 8, !25, i64 552, i64 4, !5, i64 556, i64 4, !5, i64 560, i64 4, !5, i64 568, i64 8, !1, i64 576, i64 8, !1, i64 584, i64 8, !1, i64 592, i64 4, !5, i64 600, i64 8, !1, i64 608, i64 8, !1, i64 616, i64 8, !1, i64 624, i64 8, !25, i64 632, i64 8, !25, i64 640, i64 8, !1, i64 648, i64 8, !25, i64 656, i64 8, !25, i64 664, i64 4, !5, i64 672, i64 4, !5, i64 680, i64 816, !34, i64 1496, i64 8, !1, i64 1504, i64 32, !34, i64 1504, i64 8, !1, i64 1512, i64 8, !1, i64 1520, i64 8, !1, i64 1528, i64 8, !1, i64 1536, i64 4, !5, i64 1540, i64 4, !5, i64 1544, i64 8, !25, i64 1552, i64 8, !1}
!93 = !{!8, !6, i64 48}
!94 = !{!23, !2, i64 8}
!95 = !{!37, !2, i64 48}
!96 = !{!29, !2, i64 600}
!97 = !{!29, !2, i64 568}
!98 = !{!99, !2, i64 280}
!99 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !65, i64 152, !3, i64 154, !3, i64 155, !100, i64 160, !15, i64 176, !101, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !65, i64 264, !65, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !102, i64 312, !6, i64 328, !15, i64 336, !15, i64 344}
!100 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!101 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!102 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!103 = !{!99, !2, i64 272}
!104 = !{!16, !2, i64 88}
!105 = !{!16, !6, i64 96}
!106 = !{!12, !2, i64 504}
!107 = !{!16, !2, i64 0}
!108 = !{!16, !2, i64 32}
!109 = !{!16, !2, i64 40}
!110 = !{!12, !15, i64 512}
!111 = !{!12, !15, i64 520}
!112 = !{!12, !15, i64 528}
!113 = !{!12, !15, i64 536}
!114 = !{!12, !15, i64 544}
!115 = !{i64 0, i64 8, !25, i64 8, i64 8, !25, i64 16, i64 4, !5}
!116 = !{!12, !6, i64 672}
!117 = !{!118, !2, i64 0}
!118 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!119 = !{!120, !2, i64 0}
!120 = !{!"gc_procs_with_refs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!121 = !{!120, !2, i64 32}
!122 = !{!123, !6, i64 68}
!123 = !{!"gc_state_s", !2, i64 0, !17, i64 8, !9, i64 24, !6, i64 64, !6, i64 68, !2, i64 72, !2, i64 80, !2, i64 88}
!124 = !{!120, !2, i64 40}
