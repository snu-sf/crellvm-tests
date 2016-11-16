; ModuleID = './seexec.bc'
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
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, {}*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, {}* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.stream_exE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i16 }
%struct.stream_exD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i16, i32, i32, %struct.stream_PFBD_state_s*, i32, i32, i64, i32, i32 }
%struct.stream_PFBD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i64 }

@st_exE_state = internal constant %struct.gs_memory_struct_type_s { i32 112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_exE_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_exE_state, i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_exE_process, i32 1, i32 2, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@st_exD_state = internal constant %struct.gs_memory_struct_type_s { i32 152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @exd_reloc_ptrs to i8*) }, align 8
@s_exD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_exD_state, i32 (%struct.stream_state_s*)* @s_exD_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_exD_process, i32 8, i32 132, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* @s_exD_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [18 x i8] c"eexecEncode state\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"eexecDecode state\00", align 1
@exd_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @exd_enum_ptrs, i32 0, i32 0) }, align 8
@exd_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 120 }], align 2
@scan_char_array = external constant [260 x i8], align 16

; Function Attrs: nounwind uwtable
define internal i32 @s_exE_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_exE_state_s*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %rcount = alloca i32, align 4
  %wcount = alloca i32, align 4
  %count = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_exE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_exE_state_s*
  store %struct.stream_exE_state_s* %2, %struct.stream_exE_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !7
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %ptr1, align 8, !tbaa !9
  store i8* %8, i8** %q, align 8, !tbaa !1
  %9 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %limit, align 8, !tbaa !11
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %rcount, align 4, !tbaa !5
  %13 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %14, i32 0, i32 2
  %15 = load i8*, i8** %limit2, align 8, !tbaa !12
  %16 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast3 = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %16 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %conv6 = trunc i64 %sub.ptr.sub5 to i32
  store i32 %conv6, i32* %wcount, align 4, !tbaa !5
  %17 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i32, i32* %rcount, align 4, !tbaa !5
  %20 = load i32, i32* %wcount, align 4, !tbaa !5
  %cmp = icmp ule i32 %19, %20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %21 = load i32, i32* %rcount, align 4, !tbaa !5
  store i32 %21, i32* %count, align 4, !tbaa !5
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load i32, i32* %wcount, align 4, !tbaa !5
  store i32 %22, i32* %count, align 4, !tbaa !5
  store i32 1, i32* %status, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i32, i32* %count, align 4, !tbaa !5
  %26 = load %struct.stream_exE_state_s*, %struct.stream_exE_state_s** %ss, align 8, !tbaa !1
  %cstate = getelementptr inbounds %struct.stream_exE_state_s, %struct.stream_exE_state_s* %26, i32 0, i32 5
  %call = call i32 @gs_type1_encrypt(i8* %add.ptr, i8* %add.ptr8, i32 %25, i16* %cstate) #3
  %27 = load i32, i32* %count, align 4, !tbaa !5
  %28 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %28, i32 0, i32 0
  %29 = load i8*, i8** %ptr9, align 8, !tbaa !7
  %idx.ext = zext i32 %27 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  store i8* %add.ptr10, i8** %ptr9, align 8, !tbaa !7
  %30 = load i32, i32* %count, align 4, !tbaa !5
  %31 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr11 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %31, i32 0, i32 1
  %32 = load i8*, i8** %ptr11, align 8, !tbaa !9
  %idx.ext12 = zext i32 %30 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %32, i64 %idx.ext12
  store i8* %add.ptr13, i8** %ptr11, align 8, !tbaa !9
  %33 = load i32, i32* %status, align 4, !tbaa !5
  %34 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast %struct.stream_exE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @s_exD_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_exD_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_exD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_exD_state_s*
  store %struct.stream_exD_state_s* %2, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %odd = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %3, i32 0, i32 10
  store i32 -1, i32* %odd, align 4, !tbaa !13
  %4 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %lenIV = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %4, i32 0, i32 7
  %5 = load i32, i32* %lenIV, align 4, !tbaa !17
  %6 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %skip = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %6, i32 0, i32 12
  store i32 %5, i32* %skip, align 4, !tbaa !18
  %7 = bitcast %struct.stream_exD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_exD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_exD_state_s*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %skip = alloca i32, align 4
  %rcount = alloca i32, align 4
  %wcount = alloca i32, align 4
  %status = alloca i32, align 4
  %count = alloca i32, align 4
  %decoder = alloca i8*, align 8
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %r = alloca %struct.stream_cursor_read_s, align 8
  %start = alloca i8*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_exD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_exD_state_s*
  store %struct.stream_exD_state_s* %2, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !7
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %ptr1, align 8, !tbaa !9
  store i8* %8, i8** %q, align 8, !tbaa !1
  %9 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %skip2 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %10, i32 0, i32 12
  %11 = load i32, i32* %skip2, align 4, !tbaa !18
  store i32 %11, i32* %skip, align 4, !tbaa !5
  %12 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %13, i32 0, i32 1
  %14 = load i8*, i8** %limit, align 8, !tbaa !11
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %rcount, align 4, !tbaa !5
  %16 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit3 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %17, i32 0, i32 2
  %18 = load i8*, i8** %limit3, align 8, !tbaa !12
  %19 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast4 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %19 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  %conv7 = trunc i64 %sub.ptr.sub6 to i32
  store i32 %conv7, i32* %wcount, align 4, !tbaa !5
  %20 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  store i32 0, i32* %status, align 4, !tbaa !5
  %21 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load i32, i32* %wcount, align 4, !tbaa !5
  %23 = load i32, i32* %rcount, align 4, !tbaa !5
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  store i32 1, i32* %status, align 4, !tbaa !5
  %24 = load i32, i32* %wcount, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %25 = load i32, i32* %rcount, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ]
  store i32 %cond, i32* %count, align 4, !tbaa !5
  %26 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %binary = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %26, i32 0, i32 6
  %27 = load i32, i32* %binary, align 4, !tbaa !19
  %cmp9 = icmp slt i32 %27, 0
  br i1 %cmp9, label %if.then, label %if.end.79

if.then:                                          ; preds = %cond.end
  %28 = bitcast i8** %decoder to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  store i8* getelementptr inbounds ([260 x i8], [260 x i8]* @scan_char_array, i32 0, i64 4), i8** %decoder, align 8, !tbaa !1
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %pfb_state = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %30, i32 0, i32 8
  %31 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %pfb_state, align 8, !tbaa !20
  %cmp11 = icmp eq %struct.stream_PFBD_state_s* %31, null
  br i1 %cmp11, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.then
  %32 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %keep_spaces = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %32, i32 0, i32 9
  %33 = load i32, i32* %keep_spaces, align 4, !tbaa !21
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.end.38, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %34 = load i32, i32* %rcount, align 4, !tbaa !5
  %tobool14 = icmp ne i32 %34, 0
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %c) #2
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx, align 1, !tbaa !22
  store i8 %36, i8* %c, align 1, !tbaa !22
  %37 = load i8, i8* %c, align 1, !tbaa !22
  %conv15 = zext i8 %37 to i32
  %cmp16 = icmp ne i32 %conv15, 9
  br i1 %cmp16, label %land.lhs.true.18, label %if.end

land.lhs.true.18:                                 ; preds = %for.body
  %38 = load i8, i8* %c, align 1, !tbaa !22
  %conv19 = zext i8 %38 to i32
  %cmp20 = icmp ne i32 %conv19, 13
  br i1 %cmp20, label %land.lhs.true.22, label %if.end

land.lhs.true.22:                                 ; preds = %land.lhs.true.18
  %39 = load i8, i8* %c, align 1, !tbaa !22
  %conv23 = zext i8 %39 to i32
  %cmp24 = icmp ne i32 %conv23, 10
  br i1 %cmp24, label %land.lhs.true.26, label %if.end

land.lhs.true.26:                                 ; preds = %land.lhs.true.22
  %40 = load i8, i8* %c, align 1, !tbaa !22
  %conv27 = zext i8 %40 to i32
  %cmp28 = icmp ne i32 %conv27, 32
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %land.lhs.true.26
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.26, %land.lhs.true.22, %land.lhs.true.18, %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.30
  call void @llvm.lifetime.end(i64 1, i8* %c) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %41 = load i32, i32* %rcount, align 4, !tbaa !5
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %rcount, align 4, !tbaa !5
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %44 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr31 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %44, i32 0, i32 0
  store i8* %43, i8** %ptr31, align 8, !tbaa !7
  %45 = load i32, i32* %wcount, align 4, !tbaa !5
  %46 = load i32, i32* %rcount, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %45, %46
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %for.end
  %47 = load i32, i32* %wcount, align 4, !tbaa !5
  br label %cond.end.36

cond.false.35:                                    ; preds = %for.end
  %48 = load i32, i32* %rcount, align 4, !tbaa !5
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.34
  %cond37 = phi i32 [ %47, %cond.true.34 ], [ %48, %cond.false.35 ]
  store i32 %cond37, i32* %count, align 4, !tbaa !5
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end.36, %land.lhs.true, %if.then
  %49 = load i32, i32* %rcount, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %49, 8
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.44

land.lhs.true.41:                                 ; preds = %if.end.38
  %50 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool42 = icmp ne i32 %50, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end.44:                                        ; preds = %land.lhs.true.41, %if.end.38
  %51 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %binary45 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %51, i32 0, i32 6
  store i32 0, i32* %binary45, align 4, !tbaa !19
  %52 = load i32, i32* %rcount, align 4, !tbaa !5
  %cmp46 = icmp slt i32 8, %52
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %if.end.44
  br label %cond.end.50

cond.false.49:                                    ; preds = %if.end.44
  %53 = load i32, i32* %rcount, align 4, !tbaa !5
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.48
  %cond51 = phi i32 [ 8, %cond.true.48 ], [ %53, %cond.false.49 ]
  store i32 %cond51, i32* %i, align 4, !tbaa !5
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.72, %cond.end.50
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %cmp53 = icmp sgt i32 %54, 0
  br i1 %cmp53, label %for.body.55, label %for.end.74

for.body.55:                                      ; preds = %for.cond.52
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %55 to i64
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %56, i64 %idxprom
  %57 = load i8, i8* %arrayidx56, align 1, !tbaa !22
  %idxprom57 = zext i8 %57 to i64
  %58 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %58, i64 %idxprom57
  %59 = load i8, i8* %arrayidx58, align 1, !tbaa !22
  %conv59 = zext i8 %59 to i32
  %cmp60 = icmp sle i32 %conv59, 15
  br i1 %cmp60, label %if.end.71, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.55
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %60 to i64
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %61, i64 %idxprom62
  %62 = load i8, i8* %arrayidx63, align 1, !tbaa !22
  %idxprom64 = zext i8 %62 to i64
  %63 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i8, i8* %63, i64 %idxprom64
  %64 = load i8, i8* %arrayidx65, align 1, !tbaa !22
  %conv66 = zext i8 %64 to i32
  %cmp67 = icmp eq i32 %conv66, 102
  br i1 %cmp67, label %if.end.71, label %if.then.69

if.then.69:                                       ; preds = %lor.lhs.false
  %65 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %binary70 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %65, i32 0, i32 6
  store i32 1, i32* %binary70, align 4, !tbaa !19
  br label %for.end.74

if.end.71:                                        ; preds = %lor.lhs.false, %for.body.55
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %dec73 = add nsw i32 %66, -1
  store i32 %dec73, i32* %i, align 4, !tbaa !5
  br label %for.cond.52

for.end.74:                                       ; preds = %if.then.69, %for.cond.52
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.75

cleanup.75:                                       ; preds = %for.end.74, %if.then.43
  %67 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast i8** %decoder to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  %cleanup.dest.77 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.77, label %cleanup.172 [
    i32 0, label %cleanup.cont.78
  ]

cleanup.cont.78:                                  ; preds = %cleanup.75
  br label %if.end.79

if.end.79:                                        ; preds = %cleanup.cont.78, %cond.end
  %69 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %binary80 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %69, i32 0, i32 6
  %70 = load i32, i32* %binary80, align 4, !tbaa !19
  %tobool81 = icmp ne i32 %70, 0
  br i1 %tobool81, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %if.end.79
  %71 = load i8*, i8** %p, align 8, !tbaa !1
  %72 = load i32, i32* %count, align 4, !tbaa !5
  %idx.ext = sext i32 %72 to i64
  %add.ptr = getelementptr inbounds i8, i8* %71, i64 %idx.ext
  %73 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr83 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %73, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr83, align 8, !tbaa !7
  br label %if.end.143

if.else:                                          ; preds = %if.end.79
  %74 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.start(i64 24, i8* %74) #2
  %75 = bitcast i8** %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #2
  br label %hp

hp:                                               ; preds = %if.then.139, %if.else
  %76 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %77 = bitcast %struct.stream_cursor_read_s* %r to i8*
  %78 = bitcast %struct.stream_cursor_read_s* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 24, i32 8, i1 false), !tbaa.struct !23
  %ptr84 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %79 = load i8*, i8** %ptr84, align 8, !tbaa !7
  store i8* %79, i8** %start, align 8, !tbaa !1
  %limit85 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %80 = load i8*, i8** %limit85, align 8, !tbaa !11
  %ptr86 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %81 = load i8*, i8** %ptr86, align 8, !tbaa !7
  %sub.ptr.lhs.cast87 = ptrtoint i8* %80 to i64
  %sub.ptr.rhs.cast88 = ptrtoint i8* %81 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %82 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %hex_left = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %82, i32 0, i32 11
  %83 = load i64, i64* %hex_left, align 8, !tbaa !24
  %cmp90 = icmp sgt i64 %sub.ptr.sub89, %83
  br i1 %cmp90, label %if.then.92, label %if.end.97

if.then.92:                                       ; preds = %hp
  %ptr93 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %84 = load i8*, i8** %ptr93, align 8, !tbaa !7
  %85 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %hex_left94 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %85, i32 0, i32 11
  %86 = load i64, i64* %hex_left94, align 8, !tbaa !24
  %add.ptr95 = getelementptr inbounds i8, i8* %84, i64 %86
  %limit96 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr95, i8** %limit96, align 8, !tbaa !11
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.92, %hp
  %87 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %88 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %odd = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %88, i32 0, i32 10
  %89 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %is_leading_space = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %89, i32 0, i32 13
  %90 = load i32, i32* %is_leading_space, align 4, !tbaa !25
  %tobool98 = icmp ne i32 %90, 0
  %cond99 = select i1 %tobool98, i32 2, i32 3
  %call = call i32 @s_hex_process(%struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %87, i32* %odd, i32 %cond99) #3
  store i32 %call, i32* %status, align 4, !tbaa !5
  %91 = load i32, i32* %status, align 4, !tbaa !5
  %cmp100 = icmp eq i32 %91, 2
  br i1 %cmp100, label %if.then.102, label %if.else.104

if.then.102:                                      ; preds = %if.end.97
  %92 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %is_leading_space103 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %92, i32 0, i32 13
  store i32 1, i32* %is_leading_space103, align 4, !tbaa !25
  store i32 1, i32* %status, align 4, !tbaa !5
  br label %if.end.106

if.else.104:                                      ; preds = %if.end.97
  %93 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %is_leading_space105 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %93, i32 0, i32 13
  store i32 0, i32* %is_leading_space105, align 4, !tbaa !25
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.then.102
  %ptr107 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %94 = load i8*, i8** %ptr107, align 8, !tbaa !7
  %95 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr108 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %95, i32 0, i32 0
  store i8* %94, i8** %ptr108, align 8, !tbaa !7
  %ptr109 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %96 = load i8*, i8** %ptr109, align 8, !tbaa !7
  %97 = load i8*, i8** %start, align 8, !tbaa !1
  %sub.ptr.lhs.cast110 = ptrtoint i8* %96 to i64
  %sub.ptr.rhs.cast111 = ptrtoint i8* %97 to i64
  %sub.ptr.sub112 = sub i64 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  %98 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %hex_left113 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %98, i32 0, i32 11
  %99 = load i64, i64* %hex_left113, align 8, !tbaa !24
  %sub = sub nsw i64 %99, %sub.ptr.sub112
  store i64 %sub, i64* %hex_left113, align 8, !tbaa !24
  %100 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %hex_left114 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %100, i32 0, i32 11
  %101 = load i64, i64* %hex_left114, align 8, !tbaa !24
  %cmp115 = icmp eq i64 %101, 0
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.106
  %102 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %binary118 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %102, i32 0, i32 6
  store i32 1, i32* %binary118, align 4, !tbaa !19
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.106
  %103 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr120 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %103, i32 0, i32 1
  %104 = load i8*, i8** %ptr120, align 8, !tbaa !9
  %105 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast121 = ptrtoint i8* %104 to i64
  %sub.ptr.rhs.cast122 = ptrtoint i8* %105 to i64
  %sub.ptr.sub123 = sub i64 %sub.ptr.lhs.cast121, %sub.ptr.rhs.cast122
  %conv124 = trunc i64 %sub.ptr.sub123 to i32
  store i32 %conv124, i32* %count, align 4, !tbaa !5
  %106 = load i32, i32* %status, align 4, !tbaa !5
  %cmp125 = icmp slt i32 %106, 0
  br i1 %cmp125, label %land.lhs.true.127, label %if.end.142

land.lhs.true.127:                                ; preds = %if.end.119
  %107 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %odd128 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %107, i32 0, i32 10
  %108 = load i32, i32* %odd128, align 4, !tbaa !13
  %cmp129 = icmp slt i32 %108, 0
  br i1 %cmp129, label %if.then.131, label %if.end.142

if.then.131:                                      ; preds = %land.lhs.true.127
  %109 = load i32, i32* %count, align 4, !tbaa !5
  %tobool132 = icmp ne i32 %109, 0
  br i1 %tobool132, label %if.then.133, label %if.else.135

if.then.133:                                      ; preds = %if.then.131
  %110 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr134 = getelementptr inbounds i8, i8* %110, i32 -1
  store i8* %incdec.ptr134, i8** %p, align 8, !tbaa !1
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %if.end.141

if.else.135:                                      ; preds = %if.then.131
  %111 = load i8*, i8** %p, align 8, !tbaa !1
  %112 = load i8, i8* %111, align 1, !tbaa !22
  %conv136 = zext i8 %112 to i32
  %cmp137 = icmp eq i32 %conv136, 37
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.else.135
  br label %hp

if.end.140:                                       ; preds = %if.else.135
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.133
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %land.lhs.true.127, %if.end.119
  %113 = load i8*, i8** %q, align 8, !tbaa !1
  store i8* %113, i8** %p, align 8, !tbaa !1
  %114 = bitcast i8** %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #2
  %115 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.end(i64 24, i8* %115) #2
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.then.82
  %116 = load i32, i32* %skip, align 4, !tbaa !5
  %117 = load i32, i32* %count, align 4, !tbaa !5
  %cmp144 = icmp sge i32 %116, %117
  br i1 %cmp144, label %land.lhs.true.146, label %if.else.155

land.lhs.true.146:                                ; preds = %if.end.143
  %118 = load i32, i32* %skip, align 4, !tbaa !5
  %cmp147 = icmp ne i32 %118, 0
  br i1 %cmp147, label %if.then.149, label %if.else.155

if.then.149:                                      ; preds = %land.lhs.true.146
  %119 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr150 = getelementptr inbounds i8, i8* %119, i64 1
  %120 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr151 = getelementptr inbounds i8, i8* %120, i64 1
  %121 = load i32, i32* %count, align 4, !tbaa !5
  %122 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %cstate = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %122, i32 0, i32 5
  %call152 = call i32 @gs_type1_decrypt(i8* %add.ptr150, i8* %add.ptr151, i32 %121, i16* %cstate) #3
  %123 = load i32, i32* %count, align 4, !tbaa !5
  %124 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %skip153 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %124, i32 0, i32 12
  %125 = load i32, i32* %skip153, align 4, !tbaa !18
  %sub154 = sub nsw i32 %125, %123
  store i32 %sub154, i32* %skip153, align 4, !tbaa !18
  store i32 0, i32* %count, align 4, !tbaa !5
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %if.end.168

if.else.155:                                      ; preds = %land.lhs.true.146, %if.end.143
  %126 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr156 = getelementptr inbounds i8, i8* %126, i64 1
  %127 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr157 = getelementptr inbounds i8, i8* %127, i64 1
  %128 = load i32, i32* %skip, align 4, !tbaa !5
  %129 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %cstate158 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %129, i32 0, i32 5
  %call159 = call i32 @gs_type1_decrypt(i8* %add.ptr156, i8* %add.ptr157, i32 %128, i16* %cstate158) #3
  %130 = load i32, i32* %skip, align 4, !tbaa !5
  %131 = load i32, i32* %count, align 4, !tbaa !5
  %sub160 = sub nsw i32 %131, %130
  store i32 %sub160, i32* %count, align 4, !tbaa !5
  %132 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr161 = getelementptr inbounds i8, i8* %132, i64 1
  %133 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr162 = getelementptr inbounds i8, i8* %133, i64 1
  %134 = load i32, i32* %skip, align 4, !tbaa !5
  %idx.ext163 = sext i32 %134 to i64
  %add.ptr164 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.ext163
  %135 = load i32, i32* %count, align 4, !tbaa !5
  %136 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %cstate165 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %136, i32 0, i32 5
  %call166 = call i32 @gs_type1_decrypt(i8* %add.ptr161, i8* %add.ptr164, i32 %135, i16* %cstate165) #3
  %137 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %skip167 = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %137, i32 0, i32 12
  store i32 0, i32* %skip167, align 4, !tbaa !18
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.155, %if.then.149
  %138 = load i8*, i8** %q, align 8, !tbaa !1
  %139 = load i32, i32* %count, align 4, !tbaa !5
  %idx.ext169 = sext i32 %139 to i64
  %add.ptr170 = getelementptr inbounds i8, i8* %138, i64 %idx.ext169
  %140 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr171 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %140, i32 0, i32 1
  store i8* %add.ptr170, i8** %ptr171, align 8, !tbaa !9
  %141 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %141, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

cleanup.172:                                      ; preds = %if.end.168, %cleanup.75
  %142 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  %143 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #2
  %147 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  %148 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #2
  %149 = bitcast %struct.stream_exD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #2
  %150 = load i32, i32* %retval
  ret i32 %150

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @s_exD_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_exD_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_exD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_exD_state_s*
  store %struct.stream_exD_state_s* %2, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %binary = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %3, i32 0, i32 6
  store i32 -1, i32* %binary, align 4, !tbaa !19
  %4 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %lenIV = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %4, i32 0, i32 7
  store i32 4, i32* %lenIV, align 4, !tbaa !17
  %5 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %hex_left = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %5, i32 0, i32 11
  store i64 9223372036854775807, i64* %hex_left, align 8, !tbaa !24
  %6 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %pfb_state = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %6, i32 0, i32 8
  store %struct.stream_PFBD_state_s* null, %struct.stream_PFBD_state_s** %pfb_state, align 8, !tbaa !20
  %7 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %keep_spaces = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %7, i32 0, i32 9
  store i32 0, i32* %keep_spaces, align 4, !tbaa !21
  %8 = load %struct.stream_exD_state_s*, %struct.stream_exD_state_s** %ss, align 8, !tbaa !1
  %is_leading_space = getelementptr inbounds %struct.stream_exD_state_s, %struct.stream_exD_state_s* %8, i32 0, i32 13
  store i32 1, i32* %is_leading_space, align 4, !tbaa !25
  %9 = bitcast %struct.stream_exD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret void
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gs_type1_encrypt(i8*, i8*, i32, i16*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @s_hex_process(%struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32*, i32) #1

declare i32 @gs_type1_decrypt(i8*, i8*, i32, i16*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!10, !2, i64 8}
!10 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!11 = !{!8, !2, i64 8}
!12 = !{!10, !2, i64 16}
!13 = !{!14, !6, i64 132}
!14 = !{!"stream_exD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !15, i64 108, !6, i64 112, !6, i64 116, !2, i64 120, !6, i64 128, !6, i64 132, !16, i64 136, !6, i64 144, !6, i64 148}
!15 = !{!"short", !3, i64 0}
!16 = !{!"long", !3, i64 0}
!17 = !{!14, !6, i64 116}
!18 = !{!14, !6, i64 144}
!19 = !{!14, !6, i64 112}
!20 = !{!14, !2, i64 120}
!21 = !{!14, !6, i64 128}
!22 = !{!3, !3, i64 0}
!23 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1}
!24 = !{!14, !16, i64 136}
!25 = !{!14, !6, i64 148}
