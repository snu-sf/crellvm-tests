; ModuleID = './idebug.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_attr_print_mask_s = type { i16, i16, i8 }
%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type opaque
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.name_s = type opaque
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.gx_device_s = type opaque
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.stream_s = type opaque
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct.chunk_s = type { %struct.chunk_head_s*, i8*, i8*, i8*, %struct.obj_header_s*, i8*, i8*, i8*, i8*, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s*, i32, i32, i32*, i32, i8*, i8*, i32, i8*, i32*, i8*, i8*, i8* }
%struct.chunk_head_s = type { i8*, %struct.obj_header_s }
%struct.chunk_locator_s = type { %struct.gs_ref_memory_s*, %struct.chunk_s* }
%struct.lost_ = type { i64, i64, i64 }
%struct.alloc_change_s = type opaque
%struct.alloc_save_s = type opaque

@debug_dump_one_ref.apm = internal constant [21 x %struct.ref_attr_print_mask_s] [%struct.ref_attr_print_mask_s { i16 1, i16 1, i8 109 }, %struct.ref_attr_print_mask_s { i16 1, i16 0, i8 45 }, %struct.ref_attr_print_mask_s { i16 2, i16 2, i8 110 }, %struct.ref_attr_print_mask_s { i16 2, i16 0, i8 45 }, %struct.ref_attr_print_mask_s { i16 12, i16 0, i8 70 }, %struct.ref_attr_print_mask_s { i16 12, i16 4, i8 83 }, %struct.ref_attr_print_mask_s { i16 12, i16 8, i8 71 }, %struct.ref_attr_print_mask_s { i16 12, i16 12, i8 76 }, %struct.ref_attr_print_mask_s { i16 16, i16 16, i8 119 }, %struct.ref_attr_print_mask_s { i16 16, i16 0, i8 45 }, %struct.ref_attr_print_mask_s { i16 32, i16 32, i8 114 }, %struct.ref_attr_print_mask_s { i16 32, i16 0, i8 45 }, %struct.ref_attr_print_mask_s { i16 64, i16 64, i8 120 }, %struct.ref_attr_print_mask_s { i16 64, i16 0, i8 45 }, %struct.ref_attr_print_mask_s { i16 128, i16 128, i8 101 }, %struct.ref_attr_print_mask_s { i16 128, i16 0, i8 45 }, %struct.ref_attr_print_mask_s { i16 16384, i16 16384, i8 63 }, %struct.ref_attr_print_mask_s { i16 16384, i16 0, i8 45 }, %struct.ref_attr_print_mask_s { i16 -32768, i16 -32768, i8 63 }, %struct.ref_attr_print_mask_s { i16 -32768, i16 0, i8 45 }, %struct.ref_attr_print_mask_s zeroinitializer], align 16
@tx_next_index = external constant i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"0x%02x?? \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"opr* \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@type_strings = internal constant [21 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c" 0x%04x 0x%08lx\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%s at 0x%lx:\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"0x%lx: 0x%04x \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"0x%lx: 0x%02x \00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%s at 0x%lx isn't an array.\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"0x%lx* 0x%04x \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"<op_name>\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"<int> %d\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"<lit_name>\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"<exec_name>\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"(0x%lx#%u)\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"<packed_%d?>0x%x\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"(%x)\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"array(%u)0x%lx\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"boolean %x\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"device 0x%lx\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"dict(%u/%u)0x%lx\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"file 0x%lx\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"int %ld\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"mixed packedarray(%u)0x%lx\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"name(0x%lx#%u)\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"op_array(%u)0x%lx:\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"op(%u\00", align 1
@op_def_count = external constant i32, align 4
@.str.30 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@op_defs_all = external constant [0 x %struct.op_def*], align 8
@.str.31 = private unnamed_addr constant [7 x i8] c")0x%lx\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"real %f\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"save %lu\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"short packedarray(%u)0x%lx\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"string(%u)0x%lx\00", align 1
@gs_ref_memory_procs = external constant %struct.gs_memory_procs_s, align 8
@.str.36 = private unnamed_addr constant [16 x i8] c"struct %s 0x%lx\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"-foreign-\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"type 0x%x\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"INVL\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"arry\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"mpry\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"spry\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"u?ry\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"STRC\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"ASTR\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"int \00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"oper\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"str \00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"devc\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"opry\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"--nostringval--\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c" = %s\00", align 1

; Function Attrs: nounwind uwtable
define void @debug_print_name(%struct.gs_memory_s* %mem, %struct.ref_s* %pnref) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pnref.addr = alloca %struct.ref_s*, align 8
  %sref = alloca %struct.ref_s, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pnref, %struct.ref_s** %pnref.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %sref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 2
  %2 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !5
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %2, i32 0, i32 16
  %3 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !8
  %4 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %3, %struct.ref_s* %4, %struct.ref_s* %sref) #5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %6 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %7 = load i32, i32* %rsize, align 4, !tbaa !12
  call void @debug_print_string(%struct.gs_memory_s* %5, i8* %6, i32 %7) #5
  %8 = bitcast %struct.ref_s* %sref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %8) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

declare void @debug_print_string(%struct.gs_memory_s*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @debug_print_name_index(%struct.gs_memory_s* %mem, i32 %nidx) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %nidx.addr = alloca i32, align 4
  %nref = alloca %struct.ref_s, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %nidx, i32* %nidx.addr, align 4, !tbaa !16
  %0 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 2
  %2 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !5
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %2, i32 0, i32 16
  %3 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !8
  %4 = load i32, i32* %nidx.addr, align 4, !tbaa !16
  call void @names_index_ref(%struct.name_table_s* %3, i32 %4, %struct.ref_s* %nref) #5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @debug_print_name(%struct.gs_memory_s* %5, %struct.ref_s* %nref) #5
  %6 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %6) #1
  ret void
}

declare void @names_index_ref(%struct.name_table_s*, i32, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define void @debug_print_ref_packed(%struct.gs_memory_s* %mem, i16* %rpp) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rpp.addr = alloca i16*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i16* %rpp, i16** %rpp.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %rpp.addr, align 8, !tbaa !1
  %1 = load i16, i16* %0, align 2, !tbaa !17
  %conv = zext i16 %1 to i32
  %cmp = icmp sge i32 %conv, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i16*, i16** %rpp.addr, align 8, !tbaa !1
  call void @debug_print_packed_ref(%struct.gs_memory_s* %2, i16* %3) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %rpp.addr, align 8, !tbaa !1
  %6 = bitcast i16* %5 to %struct.ref_s*
  call void @debug_print_full_ref(%struct.gs_memory_s* %4, %struct.ref_s* %6) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @errflush(%struct.gs_memory_s* %7) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @debug_print_packed_ref(%struct.gs_memory_s* %mem, i16* %pref) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pref.addr = alloca i16*, align 8
  %elt = alloca i16, align 2
  %nref = alloca %struct.ref_s, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i16* %pref, i16** %pref.addr, align 8, !tbaa !1
  %0 = bitcast i16* %elt to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %pref.addr, align 8, !tbaa !1
  %2 = load i16, i16* %1, align 2, !tbaa !17
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 4095
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, i16* %elt, align 2, !tbaa !17
  %3 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = load i16*, i16** %pref.addr, align 8, !tbaa !1
  %5 = load i16, i16* %4, align 2, !tbaa !17
  %conv2 = zext i16 %5 to i32
  %shr = ashr i32 %conv2, 13
  switch i32 %shr, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.4
    i32 6, label %sw.bb.7
    i32 7, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)) #5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load i16, i16* %elt, align 2, !tbaa !17
  %conv3 = zext i16 %8 to i32
  call void @op_index_ref(%struct.gs_memory_s* %7, i32 %conv3, %struct.ref_s* %nref) #5
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @debug_print_ref(%struct.gs_memory_s* %9, %struct.ref_s* %nref) #5
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load i16, i16* %elt, align 2, !tbaa !17
  %conv5 = zext i16 %11 to i32
  %add = add nsw i32 %conv5, -2048
  %call6 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %add) #5
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call8 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)) #5
  br label %ptn

sw.bb.9:                                          ; preds = %entry
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call10 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #5
  br label %ptn

ptn:                                              ; preds = %sw.bb.9, %sw.bb.7
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 2
  %15 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !5
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %15, i32 0, i32 16
  %16 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !8
  %17 = load i16, i16* %elt, align 2, !tbaa !17
  %conv11 = zext i16 %17 to i32
  call void @names_index_ref(%struct.name_table_s* %16, i32 %conv11, %struct.ref_s* %nref) #5
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 1
  %pname = bitcast %union.v* %value to %struct.name_s**
  %19 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %20 = ptrtoint %struct.name_s* %19 to i64
  %21 = load i16, i16* %elt, align 2, !tbaa !17
  %conv12 = zext i16 %21 to i32
  %call13 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i64 %20, i32 %conv12) #5
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @debug_print_name(%struct.gs_memory_s* %22, %struct.ref_s* %nref) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %24 = load i16*, i16** %pref.addr, align 8, !tbaa !1
  %25 = load i16, i16* %24, align 2, !tbaa !17
  %conv14 = zext i16 %25 to i32
  %shr15 = ashr i32 %conv14, 13
  %26 = load i16, i16* %elt, align 2, !tbaa !17
  %conv16 = zext i16 %26 to i32
  %call17 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i32 %shr15, i32 %conv16) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %ptn, %sw.bb.4, %sw.bb
  %27 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %27) #1
  %28 = bitcast i16* %elt to i8*
  call void @llvm.lifetime.end(i64 2, i8* %28) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @debug_print_full_ref(%struct.gs_memory_s* %mem, %struct.ref_s* %pref) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %nref = alloca %struct.ref_s, align 8
  %opt = alloca %struct.op_array_table_s*, align 8
  %obj = alloca %struct.obj_header_s*, align 8
  %otype = alloca %struct.gs_memory_struct_type_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !12
  store i32 %2, i32* %size, align 4, !tbaa !16
  %3 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !18
  %conv = zext i16 %6 to i32
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %conv) #5
  %7 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %8 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv4 = zext i8 %9 to i32
  switch i32 %conv4, label %sw.default [
    i32 4, label %sw.bb
    i32 9, label %sw.bb.6
    i32 1, label %sw.bb.7
    i32 19, label %sw.bb.11
    i32 2, label %sw.bb.14
    i32 3, label %sw.bb.19
    i32 10, label %sw.bb.22
    i32 11, label %sw.bb.23
    i32 12, label %sw.bb.26
    i32 5, label %sw.bb.28
    i32 13, label %sw.bb.31
    i32 14, label %sw.bb.35
    i32 20, label %sw.bb.37
    i32 15, label %sw.bb.45
    i32 16, label %sw.bb.57
    i32 17, label %sw.bb.61
    i32 6, label %sw.bb.64
    i32 18, label %sw.bb.68
    i32 8, label %sw.bb.71
  ]

sw.bb:                                            ; preds = %entry
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load i32, i32* %size, align 4, !tbaa !16
  %12 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %13 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %14 = ptrtoint %struct.ref_s* %13 to i64
  %call5 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i32 %11, i64 %14) #5
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  br label %strct

sw.bb.7:                                          ; preds = %entry
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %16 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %boolval = bitcast %union.v* %value8 to i16*
  %17 = load i16, i16* %boolval, align 2, !tbaa !17
  %conv9 = zext i16 %17 to i32
  %call10 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 %conv9) #5
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %pdevice = bitcast %union.v* %value12 to %struct.gx_device_s**
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8, !tbaa !1
  %21 = ptrtoint %struct.gx_device_s* %20 to i64
  %call13 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i64 %21) #5
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call15 = call i32 @dict_length(%struct.ref_s* %23) #5
  %24 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call16 = call i32 @dict_maxlength(%struct.ref_s* %24) #5
  %25 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %pdict = bitcast %union.v* %value17 to %struct.dict_s**
  %26 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %27 = ptrtoint %struct.dict_s* %26 to i64
  %call18 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i32 %call15, i32 %call16, i64 %27) #5
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %29 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %pfile = bitcast %union.v* %value20 to %struct.stream_s**
  %30 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  %31 = ptrtoint %struct.stream_s* %30 to i64
  %call21 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i64 %31) #5
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  br label %strct

sw.bb.23:                                         ; preds = %entry
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %33 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 1
  %intval = bitcast %union.v* %value24 to i64*
  %34 = load i64, i64* %intval, align 8, !tbaa !20
  %call25 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i64 %34) #5
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call27 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)) #5
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %37 = load i32, i32* %size, align 4, !tbaa !16
  %38 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 1
  %packed = bitcast %union.v* %value29 to i16**
  %39 = load i16*, i16** %packed, align 8, !tbaa !1
  %40 = ptrtoint i16* %39 to i64
  %call30 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i32 %37, i64 %40) #5
  br label %sw.epilog

sw.bb.31:                                         ; preds = %entry
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %42 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 1
  %pname = bitcast %union.v* %value32 to %struct.name_s**
  %43 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %44 = ptrtoint %struct.name_s* %43 to i64
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 2
  %46 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !5
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %46, i32 0, i32 16
  %47 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !8
  %48 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call33 = call i32 @names_index(%struct.name_table_s* %47, %struct.ref_s* %48) #5
  %call34 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i64 %44, i32 %call33) #5
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %50 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  call void @debug_print_name(%struct.gs_memory_s* %49, %struct.ref_s* %50) #5
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call36 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)) #5
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %53 = load i32, i32* %size, align 4, !tbaa !16
  %54 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 1
  %const_refs = bitcast %union.v* %value38 to %struct.ref_s**
  %55 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  %56 = ptrtoint %struct.ref_s* %55 to i64
  %call39 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), i32 %53, i64 %56) #5
  %57 = bitcast %struct.op_array_table_s** %opt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %59 = load i32, i32* %size, align 4, !tbaa !16
  %call40 = call %struct.op_array_table_s* @get_op_array(%struct.gs_memory_s* %58, i32 %59) #5
  store %struct.op_array_table_s* %call40, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %60, i32 0, i32 2
  %61 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx41, align 8, !tbaa !5
  %gs_name_table42 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %61, i32 0, i32 16
  %62 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table42, align 8, !tbaa !8
  %63 = load i32, i32* %size, align 4, !tbaa !16
  %64 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %base_index = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %64, i32 0, i32 3
  %65 = load i32, i32* %base_index, align 4, !tbaa !21
  %sub = sub i32 %63, %65
  %idxprom = zext i32 %sub to i64
  %66 = load %struct.op_array_table_s*, %struct.op_array_table_s** %opt, align 8, !tbaa !1
  %nx_table = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %66, i32 0, i32 1
  %67 = load i16*, i16** %nx_table, align 8, !tbaa !23
  %arrayidx43 = getelementptr inbounds i16, i16* %67, i64 %idxprom
  %68 = load i16, i16* %arrayidx43, align 2, !tbaa !17
  %conv44 = zext i16 %68 to i32
  call void @names_index_ref(%struct.name_table_s* %62, i32 %conv44, %struct.ref_s* %nref) #5
  %69 = bitcast %struct.op_array_table_s** %opt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @debug_print_name(%struct.gs_memory_s* %70, %struct.ref_s* %nref) #5
  br label %sw.epilog

sw.bb.45:                                         ; preds = %entry
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %72 = load i32, i32* %size, align 4, !tbaa !16
  %call46 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %72) #5
  %73 = load i32, i32* %size, align 4, !tbaa !16
  %cmp = icmp ugt i32 %73, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.45
  %74 = load i32, i32* %size, align 4, !tbaa !16
  %75 = load i32, i32* @op_def_count, align 4, !tbaa !16
  %cmp48 = icmp ult i32 %74, %75
  br i1 %cmp48, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %77 = load i32, i32* %size, align 4, !tbaa !16
  %and = and i32 %77, 15
  %idxprom50 = zext i32 %and to i64
  %78 = load i32, i32* %size, align 4, !tbaa !16
  %shr = lshr i32 %78, 4
  %idxprom51 = zext i32 %shr to i64
  %arrayidx52 = getelementptr inbounds [0 x %struct.op_def*], [0 x %struct.op_def*]* @op_defs_all, i32 0, i64 %idxprom51
  %79 = load %struct.op_def*, %struct.op_def** %arrayidx52, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds %struct.op_def, %struct.op_def* %79, i64 %idxprom50
  %oname = getelementptr inbounds %struct.op_def, %struct.op_def* %arrayidx53, i32 0, i32 0
  %80 = load i8*, i8** %oname, align 8, !tbaa !24
  %add.ptr = getelementptr inbounds i8, i8* %80, i64 1
  %call54 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* %add.ptr) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb.45
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %82 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 1
  %opproc = bitcast %union.v* %value55 to i32 (%struct.gs_context_state_s*)**
  %83 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %84 = ptrtoint i32 (%struct.gs_context_state_s*)* %83 to i64
  %call56 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i64 %84) #5
  br label %sw.epilog

sw.bb.57:                                         ; preds = %entry
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %86 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 0, i32 1
  %realval = bitcast %union.v* %value58 to float*
  %87 = load float, float* %realval, align 4, !tbaa !26
  %conv59 = fpext float %87 to double
  %call60 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), double %conv59) #5
  br label %sw.epilog

sw.bb.61:                                         ; preds = %entry
  %88 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %89 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i32 0, i32 1
  %saveid = bitcast %union.v* %value62 to i64*
  %90 = load i64, i64* %saveid, align 8, !tbaa !20
  %call63 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i64 %90) #5
  br label %sw.epilog

sw.bb.64:                                         ; preds = %entry
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %92 = load i32, i32* %size, align 4, !tbaa !16
  %93 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i32 0, i32 1
  %packed66 = bitcast %union.v* %value65 to i16**
  %94 = load i16*, i16** %packed66, align 8, !tbaa !1
  %95 = ptrtoint i16* %94 to i64
  %call67 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0), i32 %92, i64 %95) #5
  br label %sw.epilog

sw.bb.68:                                         ; preds = %entry
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %97 = load i32, i32* %size, align 4, !tbaa !16
  %98 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %98, i32 0, i32 1
  %bytes = bitcast %union.v* %value69 to i8**
  %99 = load i8*, i8** %bytes, align 8, !tbaa !1
  %100 = ptrtoint i8* %99 to i64
  %call70 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i32 %97, i64 %100) #5
  br label %sw.epilog

sw.bb.71:                                         ; preds = %entry
  br label %strct

strct:                                            ; preds = %sw.bb.71, %sw.bb.22, %sw.bb.6
  %101 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #1
  %102 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i32 0, i32 1
  %pstruct = bitcast %union.v* %value72 to %struct.obj_header_s**
  %103 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  store %struct.obj_header_s* %103, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %104 = bitcast %struct.gs_memory_struct_type_s** %otype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #1
  %105 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** getelementptr inbounds (%struct.gs_memory_procs_s, %struct.gs_memory_procs_s* @gs_ref_memory_procs, i32 0, i32 15), align 8, !tbaa !28
  %106 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %107 = bitcast %struct.obj_header_s* %106 to i8*
  %call73 = call %struct.gs_memory_struct_type_s* %105(%struct.gs_memory_s* null, i8* %107) #5
  store %struct.gs_memory_struct_type_s* %call73, %struct.gs_memory_struct_type_s** %otype, align 8, !tbaa !1
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %109 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %109, i32 0, i32 0
  %type_attrs75 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas74, i32 0, i32 0
  %110 = load i16, i16* %type_attrs75, align 2, !tbaa !18
  %conv76 = zext i16 %110 to i32
  %and77 = and i32 %conv76, 12
  %cmp78 = icmp eq i32 %and77, 0
  br i1 %cmp78, label %cond.true, label %cond.false

cond.true:                                        ; preds = %strct
  br label %cond.end

cond.false:                                       ; preds = %strct
  %111 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %otype, align 8, !tbaa !1
  %call80 = call i8* @gs_struct_type_name(%struct.gs_memory_struct_type_s* %111) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), %cond.true ], [ %call80, %cond.false ]
  %112 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %113 = ptrtoint %struct.obj_header_s* %112 to i64
  %call81 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8* %cond, i64 %113) #5
  %114 = bitcast %struct.gs_memory_struct_type_s** %otype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %117 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %117, i32 0, i32 0
  %type_attrs83 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas82, i32 0, i32 0
  %118 = bitcast i16* %type_attrs83 to i8*
  %arrayidx84 = getelementptr inbounds i8, i8* %118, i64 1
  %119 = load i8, i8* %arrayidx84, align 1, !tbaa !19
  %conv85 = zext i8 %119 to i32
  %call86 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 %conv85) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end, %sw.bb.68, %sw.bb.64, %sw.bb.61, %sw.bb.57, %if.end, %sw.bb.37, %sw.bb.35, %sw.bb.31, %sw.bb.28, %sw.bb.26, %sw.bb.23, %sw.bb.19, %sw.bb.14, %sw.bb.11, %sw.bb.7, %sw.bb
  %120 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %120) #1
  %121 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  ret void
}

declare void @errflush(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define void @debug_print_ref(%struct.gs_memory_s* %mem, %struct.ref_s* %pref) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ref_s* %1 to i16*
  call void @debug_print_ref_packed(%struct.gs_memory_s* %0, i16* %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_dump_one_ref(%struct.gs_memory_s* %mem, %struct.ref_s* %p) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %p.addr = alloca %struct.ref_s*, align 8
  %attrs = alloca i32, align 4
  %type = alloca i32, align 4
  %ap = alloca %struct.ref_attr_print_mask_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %p, %struct.ref_s** %p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %attrs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %p.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %2 = load i16, i16* %type_attrs, align 2, !tbaa !18
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %attrs, align 4, !tbaa !16
  %3 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %p.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %5 = bitcast i16* %type_attrs2 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv3 = zext i8 %6 to i32
  store i32 %conv3, i32* %type, align 4, !tbaa !16
  %7 = bitcast %struct.ref_attr_print_mask_s** %ap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %struct.ref_attr_print_mask_s* getelementptr inbounds ([21 x %struct.ref_attr_print_mask_s], [21 x %struct.ref_attr_print_mask_s]* @debug_dump_one_ref.apm, i32 0, i32 0), %struct.ref_attr_print_mask_s** %ap, align 8, !tbaa !1
  %8 = load i32, i32* %type, align 4, !tbaa !16
  %9 = load i32, i32* @tx_next_index, align 4, !tbaa !16
  %cmp = icmp uge i32 %8, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load i32, i32* %type, align 4, !tbaa !16
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %11) #5
  br label %if.end.12

if.else:                                          ; preds = %entry
  %12 = load i32, i32* %type, align 4, !tbaa !16
  %cmp5 = icmp uge i32 %12, 21
  br i1 %cmp5, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call8 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #5
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load i32, i32* %type, align 4, !tbaa !16
  %idxprom = zext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds [21 x i8*], [21 x i8*]* @type_strings, i32 0, i64 %idxprom
  %16 = load i8*, i8** %arrayidx10, align 8, !tbaa !1
  %call11 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* %16) #5
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %17 = load %struct.ref_attr_print_mask_s*, %struct.ref_attr_print_mask_s** %ap, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.ref_attr_print_mask_s, %struct.ref_attr_print_mask_s* %17, i32 0, i32 0
  %18 = load i16, i16* %mask, align 2, !tbaa !29
  %tobool = icmp ne i16 %18, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %attrs, align 4, !tbaa !16
  %20 = load %struct.ref_attr_print_mask_s*, %struct.ref_attr_print_mask_s** %ap, align 8, !tbaa !1
  %mask13 = getelementptr inbounds %struct.ref_attr_print_mask_s, %struct.ref_attr_print_mask_s* %20, i32 0, i32 0
  %21 = load i16, i16* %mask13, align 2, !tbaa !29
  %conv14 = zext i16 %21 to i32
  %and = and i32 %19, %conv14
  %22 = load %struct.ref_attr_print_mask_s*, %struct.ref_attr_print_mask_s** %ap, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_attr_print_mask_s, %struct.ref_attr_print_mask_s* %22, i32 0, i32 1
  %23 = load i16, i16* %value, align 2, !tbaa !31
  %conv15 = zext i16 %23 to i32
  %cmp16 = icmp eq i32 %and, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %for.body
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = load %struct.ref_attr_print_mask_s*, %struct.ref_attr_print_mask_s** %ap, align 8, !tbaa !1
  %print = getelementptr inbounds %struct.ref_attr_print_mask_s, %struct.ref_attr_print_mask_s* %25, i32 0, i32 2
  %26 = load i8, i8* %print, align 1, !tbaa !32
  %conv19 = sext i8 %26 to i32
  %call20 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 %conv19) #5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %27 = load %struct.ref_attr_print_mask_s*, %struct.ref_attr_print_mask_s** %ap, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_attr_print_mask_s, %struct.ref_attr_print_mask_s* %27, i32 1
  store %struct.ref_attr_print_mask_s* %incdec.ptr, %struct.ref_attr_print_mask_s** %ap, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %29 = load %struct.ref_s*, %struct.ref_s** %p.addr, align 8, !tbaa !1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 2
  %30 = load i32, i32* %rsize, align 4, !tbaa !12
  %31 = load %struct.ref_s*, %struct.ref_s** %p.addr, align 8, !tbaa !1
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %32 = bitcast %union.v* %value23 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !20
  %call24 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 %30, i64 %33) #5
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %35 = load %struct.ref_s*, %struct.ref_s** %p.addr, align 8, !tbaa !1
  call void @print_ref_data(%struct.gs_memory_s* %34, %struct.ref_s* %35) #5
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @errflush(%struct.gs_memory_s* %36) #5
  %37 = bitcast %struct.ref_attr_print_mask_s** %ap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %attrs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  ret void
}

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @print_ref_data(%struct.gs_memory_s* %mem, %struct.ref_s* %p) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %p.addr = alloca %struct.ref_s*, align 8
  %buf = alloca [31 x i8], align 16
  %pchars = alloca i8*, align 8
  %plen = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %p, %struct.ref_s** %p.addr, align 8, !tbaa !1
  %0 = bitcast [31 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 31, i8* %0) #1
  %1 = bitcast i8** %pchars to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %p.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [31 x i8], [31 x i8]* %buf, i32 0, i32 0
  %call = call i32 @obj_cvs(%struct.gs_memory_s* %3, %struct.ref_s* %4, i8* %arraydecay, i32 30, i32* %plen, i8** %pchars) #5
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %pchars, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [31 x i8], [31 x i8]* %buf, i32 0, i32 0
  %cmp2 = icmp eq i8* %5, %arraydecay1
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.49

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %plen, align 4, !tbaa !16
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [31 x i8], [31 x i8]* %buf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !19
  %7 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i64 1) to i64), i64 ptrtoint ([16 x i8]* @.str.58 to i64)), i64 1), label %land.lhs.true.4, label %cond.false

land.lhs.true.4:                                  ; preds = %land.lhs.true.3
  %call5 = call i64 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0)) #6
  store i64 %call5, i64* %__s2_len, align 8, !tbaa !20
  %9 = load i64, i64* %__s2_len, align 8, !tbaa !20
  %cmp6 = icmp ult i64 %9, 4
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.4
  %10 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %arraydecay8 = getelementptr inbounds [31 x i8], [31 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay8, i8** %__s1, align 8, !tbaa !1
  %11 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx10, align 1, !tbaa !19
  %conv = zext i8 %13 to i32
  %14 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), align 1, !tbaa !19
  %conv11 = zext i8 %14 to i32
  %sub = sub nsw i32 %conv, %conv11
  store i32 %sub, i32* %__result, align 4, !tbaa !16
  %15 = load i64, i64* %__s2_len, align 8, !tbaa !20
  %cmp12 = icmp ugt i64 %15, 0
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.42

land.lhs.true.14:                                 ; preds = %cond.true
  %16 = load i32, i32* %__result, align 4, !tbaa !16
  %cmp15 = icmp eq i32 %16, 0
  br i1 %cmp15, label %if.then, label %if.end.42

if.then:                                          ; preds = %land.lhs.true.14
  %17 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx17, align 1, !tbaa !19
  %conv18 = zext i8 %18 to i32
  %19 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i64 1), align 1, !tbaa !19
  %conv19 = zext i8 %19 to i32
  %sub20 = sub nsw i32 %conv18, %conv19
  store i32 %sub20, i32* %__result, align 4, !tbaa !16
  %20 = load i64, i64* %__s2_len, align 8, !tbaa !20
  %cmp21 = icmp ugt i64 %20, 1
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.41

land.lhs.true.23:                                 ; preds = %if.then
  %21 = load i32, i32* %__result, align 4, !tbaa !16
  %cmp24 = icmp eq i32 %21, 0
  br i1 %cmp24, label %if.then.26, label %if.end.41

if.then.26:                                       ; preds = %land.lhs.true.23
  %22 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx27, align 1, !tbaa !19
  %conv28 = zext i8 %23 to i32
  %24 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i64 2), align 1, !tbaa !19
  %conv29 = zext i8 %24 to i32
  %sub30 = sub nsw i32 %conv28, %conv29
  store i32 %sub30, i32* %__result, align 4, !tbaa !16
  %25 = load i64, i64* %__s2_len, align 8, !tbaa !20
  %cmp31 = icmp ugt i64 %25, 2
  br i1 %cmp31, label %land.lhs.true.33, label %if.end

land.lhs.true.33:                                 ; preds = %if.then.26
  %26 = load i32, i32* %__result, align 4, !tbaa !16
  %cmp34 = icmp eq i32 %26, 0
  br i1 %cmp34, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %land.lhs.true.33
  %27 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %27, i64 3
  %28 = load i8, i8* %arrayidx37, align 1, !tbaa !19
  %conv38 = zext i8 %28 to i32
  %29 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i64 3), align 1, !tbaa !19
  %conv39 = zext i8 %29 to i32
  %sub40 = sub nsw i32 %conv38, %conv39
  store i32 %sub40, i32* %__result, align 4, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then.36, %land.lhs.true.33, %if.then.26
  br label %if.end.41

if.end.41:                                        ; preds = %if.end, %land.lhs.true.23, %if.then
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %land.lhs.true.14, %cond.true
  %30 = load i32, i32* %__result, align 4, !tbaa !16
  store i32 %30, i32* %tmp43, !tbaa !16
  %31 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %tmp43, !tbaa !16
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.4, %land.lhs.true.3
  %arraydecay44 = getelementptr inbounds [31 x i8], [31 x i8]* %buf, i32 0, i32 0
  %call45 = call i32 @strcmp(i8* %arraydecay44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.42
  %cond = phi i32 [ %33, %if.end.42 ], [ %call45, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !16
  %34 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %tmp, !tbaa !16
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %cond.end
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %arraydecay47 = getelementptr inbounds [31 x i8], [31 x i8]* %buf, i32 0, i32 0
  %call48 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* %arraydecay47) #5
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %cond.end, %land.lhs.true, %entry
  %38 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i8** %pchars to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast [31 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 31, i8* %40) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_dump_refs(%struct.gs_memory_s* %mem, %struct.ref_s* %from, i32 %size, i8* %msg) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %from.addr = alloca %struct.ref_s*, align 8
  %size.addr = alloca i32, align 4
  %msg.addr = alloca i8*, align 8
  %p = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %from, %struct.ref_s** %from.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !16
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8, !tbaa !1
  store %struct.ref_s* %1, %struct.ref_s** %p, align 8, !tbaa !1
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !16
  store i32 %3, i32* %count, align 4, !tbaa !16
  %4 = load i32, i32* %size.addr, align 4, !tbaa !16
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8, !tbaa !1
  %9 = ptrtoint %struct.ref_s* %8 to i64
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* %7, i64 %9) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load i32, i32* %count, align 4, !tbaa !16
  %dec = add i32 %10, -1
  store i32 %dec, i32* %count, align 4, !tbaa !16
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %13 = ptrtoint %struct.ref_s* %12 to i64
  %14 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %15 = load i16, i16* %type_attrs, align 2, !tbaa !18
  %conv = zext i16 %15 to i32
  %call3 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i64 %13, i32 %conv) #5
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  call void @debug_dump_one_ref(%struct.gs_memory_s* %16, %struct.ref_s* %17) #5
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 10) #5
  %19 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.ref_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_dump_stack(%struct.gs_memory_s* %mem, %struct.ref_stack_s* %pstack, i8* %msg) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %msg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %m = alloca i8*, align 8
  %p = alloca %struct.ref_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  store i8* %2, i8** %m, align 8, !tbaa !1
  %3 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %3) #5
  store i32 %call, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !16
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast %struct.ref_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %7 = load i32, i32* %i, align 4, !tbaa !16
  %dec = add i32 %7, -1
  store i32 %dec, i32* %i, align 4, !tbaa !16
  %conv = zext i32 %dec to i64
  %call1 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %6, i64 %conv) #5
  store %struct.ref_s* %call1, %struct.ref_s** %p, align 8, !tbaa !1
  %8 = load i8*, i8** %m, align 8, !tbaa !1
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %m, align 8, !tbaa !1
  %11 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %12 = ptrtoint %struct.ref_stack_s* %11 to i64
  %call2 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* %10, i64 %12) #5
  store i8* null, i8** %m, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %15 = ptrtoint %struct.ref_s* %14 to i64
  %16 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %17 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv3 = zext i8 %18 to i32
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i64 %15, i32 %conv3) #5
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  call void @debug_dump_one_ref(%struct.gs_memory_s* %19, %struct.ref_s* %20) #5
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 10) #5
  %22 = bitcast %struct.ref_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = bitcast i8** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret void
}

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

; Function Attrs: nounwind uwtable
define void @debug_dump_array(%struct.gs_memory_s* %mem, %struct.ref_s* %array) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %array.addr = alloca %struct.ref_s*, align 8
  %pp = alloca i16*, align 8
  %type = alloca i32, align 4
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %temp = alloca %struct.ref_s, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %array, %struct.ref_s** %array.addr, align 8, !tbaa !1
  %0 = bitcast i16** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %array.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %3 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %type, align 4, !tbaa !16
  %5 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %type, align 4, !tbaa !16
  switch i32 %6, label %sw.default [
    i32 20, label %sw.bb
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.4
    i32 6, label %sw.bb.4
  ]

sw.default:                                       ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load i32, i32* %type, align 4, !tbaa !16
  %conv1 = zext i32 %8 to i64
  %cmp = icmp ult i64 %conv1, 21
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  %9 = load i32, i32* %type, align 4, !tbaa !16
  %idxprom = zext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds [21 x i8*], [21 x i8*]* @type_strings, i32 0, i64 %idxprom
  %10 = load i8*, i8** %arrayidx3, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %sw.default
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %10, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %cond.false ]
  %11 = load %struct.ref_s*, %struct.ref_s** %array.addr, align 8, !tbaa !1
  %12 = ptrtoint %struct.ref_s* %11 to i64
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i8* %cond, i64 %12) #5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %array.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  %15 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  call void @debug_dump_array(%struct.gs_memory_s* %13, %struct.ref_s* %15) #5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.4:                                          ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.4
  %16 = load %struct.ref_s*, %struct.ref_s** %array.addr, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 2
  %17 = load i32, i32* %rsize, align 4, !tbaa !12
  store i32 %17, i32* %len, align 4, !tbaa !16
  %18 = load %struct.ref_s*, %struct.ref_s** %array.addr, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %packed = bitcast %union.v* %value6 to i16**
  %19 = load i16*, i16** %packed, align 8, !tbaa !1
  store i16* %19, i16** %pp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %cond.end.26, %sw.epilog
  %20 = load i32, i32* %len, align 4, !tbaa !16
  %cmp7 = icmp ugt i32 %20, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = bitcast %struct.ref_s* %temp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %21) #1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load i16*, i16** %pp, align 8, !tbaa !1
  call void @packed_get(%struct.gs_memory_s* %22, i16* %23, %struct.ref_s* %temp) #5
  %24 = load i16*, i16** %pp, align 8, !tbaa !1
  %25 = load i16, i16* %24, align 2, !tbaa !17
  %conv9 = zext i16 %25 to i32
  %cmp10 = icmp sge i32 %conv9, 16384
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %27 = load i16*, i16** %pp, align 8, !tbaa !1
  %28 = ptrtoint i16* %27 to i64
  %29 = load i16*, i16** %pp, align 8, !tbaa !1
  %30 = load i16, i16* %29, align 2, !tbaa !17
  %conv12 = zext i16 %30 to i32
  %call13 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i64 %28, i32 %conv12) #5
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @print_ref_data(%struct.gs_memory_s* %31, %struct.ref_s* %temp) #5
  br label %if.end

if.else:                                          ; preds = %for.body
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %33 = load i16*, i16** %pp, align 8, !tbaa !1
  %34 = ptrtoint i16* %33 to i64
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %temp, i32 0, i32 0
  %type_attrs15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 0
  %35 = bitcast i16* %type_attrs15 to i8*
  %arrayidx16 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx16, align 1, !tbaa !19
  %conv17 = zext i8 %36 to i32
  %call18 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i64 %34, i32 %conv17) #5
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @debug_dump_one_ref(%struct.gs_memory_s* %37, %struct.ref_s* %temp) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call19 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 10) #5
  %39 = bitcast %struct.ref_s* %temp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %39) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %40 = load i32, i32* %len, align 4, !tbaa !16
  %dec = add i32 %40, -1
  store i32 %dec, i32* %len, align 4, !tbaa !16
  %41 = load i16*, i16** %pp, align 8, !tbaa !1
  %42 = load i16, i16* %41, align 2, !tbaa !17
  %conv20 = zext i16 %42 to i32
  %cmp21 = icmp sge i32 %conv20, 16384
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %for.inc
  %43 = load i16*, i16** %pp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i16, i16* %43, i64 1
  br label %cond.end.26

cond.false.24:                                    ; preds = %for.inc
  %44 = load i16*, i16** %pp, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds i16, i16* %44, i64 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  %cond27 = phi i16* [ %add.ptr, %cond.true.23 ], [ %add.ptr25, %cond.false.24 ]
  store i16* %cond27, i16** %pp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.bb, %cond.end
  %45 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i16** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
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

declare void @packed_get(%struct.gs_memory_s*, i16*, %struct.ref_s*) #2

declare void @op_index_ref(%struct.gs_memory_s*, i32, %struct.ref_s*) #2

declare i32 @dict_length(%struct.ref_s*) #2

declare i32 @dict_maxlength(%struct.ref_s*) #2

declare i32 @names_index(%struct.name_table_s*, %struct.ref_s*) #2

declare %struct.op_array_table_s* @get_op_array(%struct.gs_memory_s*, i32) #2

declare i8* @gs_struct_type_name(%struct.gs_memory_struct_type_s*) #2

declare i32 @obj_cvs(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, i32*, i8**) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!6, !2, i64 192}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{!9, !2, i64 120}
!9 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !11, i64 104, !2, i64 112, !2, i64 120, !10, i64 128, !2, i64 136, !10, i64 144, !10, i64 148, !3, i64 152, !2, i64 168, !10, i64 176, !2, i64 184, !10, i64 192, !2, i64 200, !2, i64 208}
!10 = !{!"int", !3, i64 0}
!11 = !{!"long", !3, i64 0}
!12 = !{!13, !10, i64 4}
!13 = !{!"ref_s", !14, i64 0, !3, i64 8}
!14 = !{!"tas_s", !15, i64 0, !15, i64 2, !10, i64 4}
!15 = !{!"short", !3, i64 0}
!16 = !{!10, !10, i64 0}
!17 = !{!15, !15, i64 0}
!18 = !{!13, !15, i64 0}
!19 = !{!3, !3, i64 0}
!20 = !{!11, !11, i64 0}
!21 = !{!22, !10, i64 28}
!22 = !{!"op_array_table_s", !13, i64 0, !2, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!23 = !{!22, !2, i64 16}
!24 = !{!25, !2, i64 0}
!25 = !{!"", !2, i64 0, !2, i64 8}
!26 = !{!27, !27, i64 0}
!27 = !{!"float", !3, i64 0}
!28 = !{!7, !2, i64 120}
!29 = !{!30, !15, i64 0}
!30 = !{!"ref_attr_print_mask_s", !15, i64 0, !15, i64 2, !3, i64 4}
!31 = !{!30, !15, i64 2}
!32 = !{!30, !3, i64 4}
