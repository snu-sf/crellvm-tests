; ModuleID = './sbcp.bc'
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
%struct.stream_BCPD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)*, i32, i32, i32, i8* }

@st_stream_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_BCPE_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_stream_state, i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_BCPE_process, i32 1, i32 2, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@s_TBCPE_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_stream_state, i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_TBCPE_process, i32 1, i32 2, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@st_BCPD_state = internal constant %struct.gs_memory_struct_type_s { i32 152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_BCPD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_BCPD_state, i32 (%struct.stream_state_s*)* @s_BCPD_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_BCPD_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* @s_BCPD_init }, align 8
@s_TBCPD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_BCPD_state, i32 (%struct.stream_state_s*)* @s_BCPD_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_TBCPD_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* @s_BCPD_init }, align 8
@s_BCPE_process.escaped = internal constant [32 x i8] c"\00\01\00\01\01\01\00\00\00\00\00\00\00\00\00\00\00\01\00\01\01\00\00\00\00\00\00\00\01\00\00\00", align 16
@s_TBCPE_process.escaped = internal constant [32 x i8] c"\00\01\00\01\01\01\00\00\00\00\00\00\00\00\00\00\00\01\00\01\01\00\00\00\00\00\00\01\01\00\00\00", align 16
@.str = private unnamed_addr constant [19 x i8] c"(T)BCPDecode state\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_BCPE_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %2 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %3 = load i32, i32* %last.addr, align 4, !tbaa !5
  %call = call i32 @s_xBCPE_process(%struct.stream_state_s* %0, %struct.stream_cursor_read_s* %1, %struct.stream_cursor_write_s* %2, i32 %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @s_BCPE_process.escaped, i32 0, i32 0)) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_TBCPE_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %2 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %3 = load i32, i32* %last.addr, align 4, !tbaa !5
  %call = call i32 @s_xBCPE_process(%struct.stream_state_s* %0, %struct.stream_cursor_read_s* %1, %struct.stream_cursor_write_s* %2, i32 %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @s_TBCPE_process.escaped, i32 0, i32 0)) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_BCPD_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_BCPD_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_BCPD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_BCPD_state_s*
  store %struct.stream_BCPD_state_s* %2, %struct.stream_BCPD_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_BCPD_state_s*, %struct.stream_BCPD_state_s** %ss, align 8, !tbaa !1
  %escaped = getelementptr inbounds %struct.stream_BCPD_state_s, %struct.stream_BCPD_state_s* %3, i32 0, i32 7
  store i32 0, i32* %escaped, align 4, !tbaa !7
  %4 = load %struct.stream_BCPD_state_s*, %struct.stream_BCPD_state_s** %ss, align 8, !tbaa !1
  %copy_count = getelementptr inbounds %struct.stream_BCPD_state_s, %struct.stream_BCPD_state_s* %4, i32 0, i32 9
  store i32 0, i32* %copy_count, align 4, !tbaa !9
  %5 = load %struct.stream_BCPD_state_s*, %struct.stream_BCPD_state_s** %ss, align 8, !tbaa !1
  %matched = getelementptr inbounds %struct.stream_BCPD_state_s, %struct.stream_BCPD_state_s* %5, i32 0, i32 8
  store i32 0, i32* %matched, align 4, !tbaa !10
  %6 = bitcast %struct.stream_BCPD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_BCPD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %2 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %3 = load i32, i32* %last.addr, align 4, !tbaa !5
  %call = call i32 @s_xBCPD_process(%struct.stream_state_s* %0, %struct.stream_cursor_read_s* %1, %struct.stream_cursor_write_s* %2, i32 %3, i32 0) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_TBCPD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %2 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %3 = load i32, i32* %last.addr, align 4, !tbaa !5
  %call = call i32 @s_xBCPD_process(%struct.stream_state_s* %0, %struct.stream_cursor_read_s* %1, %struct.stream_cursor_write_s* %2, i32 %3, i32 1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_xBCPE_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last, i8* %escaped) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %escaped.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %rcount = alloca i32, align 4
  %q = alloca i8*, align 8
  %wcount = alloca i32, align 4
  %end = alloca i8*, align 8
  %ch = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  store i8* %escaped, i8** %escaped.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %ptr, align 8, !tbaa !11
  store i8* %2, i8** %p, align 8, !tbaa !1
  %3 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %limit, align 8, !tbaa !13
  store i8* %5, i8** %rlimit, align 8, !tbaa !1
  %6 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %rcount, align 4, !tbaa !5
  %9 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %ptr1, align 8, !tbaa !14
  store i8* %11, i8** %q, align 8, !tbaa !1
  %12 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit2, align 8, !tbaa !16
  %15 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast3 = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %15 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %conv6 = trunc i64 %sub.ptr.sub5 to i32
  store i32 %conv6, i32* %wcount, align 4, !tbaa !5
  %16 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %18 = load i32, i32* %rcount, align 4, !tbaa !5
  %19 = load i32, i32* %wcount, align 4, !tbaa !5
  %cmp = icmp ult i32 %18, %19
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %20 = load i32, i32* %rcount, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %21 = load i32, i32* %wcount, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ]
  %idx.ext = zext i32 %cond to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cond.end
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp8 = icmp ult i8* %22, %23
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %25 = load i8, i8* %incdec.ptr, align 1, !tbaa !17
  store i8 %25, i8* %ch, align 1, !tbaa !17
  %26 = load i8, i8* %ch, align 1, !tbaa !17
  %conv10 = zext i8 %26 to i32
  %cmp11 = icmp sle i32 %conv10, 31
  br i1 %cmp11, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %while.body
  %27 = load i8, i8* %ch, align 1, !tbaa !17
  %idxprom = zext i8 %27 to i64
  %28 = load i8*, i8** %escaped.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 %idxprom
  %29 = load i8, i8* %arrayidx, align 1, !tbaa !17
  %conv13 = zext i8 %29 to i32
  %tobool = icmp ne i32 %conv13, 0
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %land.lhs.true
  %30 = load i8*, i8** %p, align 8, !tbaa !1
  %31 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp14 = icmp eq i8* %30, %31
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %incdec.ptr17, i8** %p, align 8, !tbaa !1
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %33 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr18, i8** %q, align 8, !tbaa !1
  store i8 1, i8* %incdec.ptr18, align 1, !tbaa !17
  %34 = load i8, i8* %ch, align 1, !tbaa !17
  %conv19 = zext i8 %34 to i32
  %xor = xor i32 %conv19, 64
  %conv20 = trunc i32 %xor to i8
  store i8 %conv20, i8* %ch, align 1, !tbaa !17
  %35 = load i32, i32* %wcount, align 4, !tbaa !5
  %dec = add i32 %35, -1
  store i32 %dec, i32* %wcount, align 4, !tbaa !5
  %36 = load i32, i32* %rcount, align 4, !tbaa !5
  %cmp21 = icmp ult i32 %dec, %36
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end
  %37 = load i8*, i8** %end, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %incdec.ptr24, i8** %end, align 8, !tbaa !1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %land.lhs.true, %while.body
  %38 = load i8, i8* %ch, align 1, !tbaa !17
  %39 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr27, i8** %q, align 8, !tbaa !1
  store i8 %38, i8* %incdec.ptr27, align 1, !tbaa !17
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.16
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %41 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr28 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %41, i32 0, i32 0
  store i8* %40, i8** %ptr28, align 8, !tbaa !11
  %42 = load i8*, i8** %q, align 8, !tbaa !1
  %43 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr29 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %43, i32 0, i32 1
  store i8* %42, i8** %ptr29, align 8, !tbaa !14
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %45 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp30 = icmp eq i8* %44, %45
  %cond32 = select i1 %cmp30, i32 0, i32 1
  store i32 1, i32* %cleanup.dest.slot
  %46 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  ret i32 %cond32

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_xBCPD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last, i32 %tagged) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %tagged.addr = alloca i32, align 4
  %ss = alloca %struct.stream_BCPD_state_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %q = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %copy_count = alloca i32, align 4
  %status = alloca i32, align 4
  %escaped = alloca i32, align 4
  %ch = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  store i32 %tagged, i32* %tagged.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_BCPD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_BCPD_state_s*
  store %struct.stream_BCPD_state_s* %2, %struct.stream_BCPD_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !11
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %limit, align 8, !tbaa !13
  store i8* %8, i8** %rlimit, align 8, !tbaa !1
  %9 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %ptr1, align 8, !tbaa !14
  store i8* %11, i8** %q, align 8, !tbaa !1
  %12 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit2, align 8, !tbaa !16
  store i8* %14, i8** %wlimit, align 8, !tbaa !1
  %15 = bitcast i32* %copy_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.stream_BCPD_state_s*, %struct.stream_BCPD_state_s** %ss, align 8, !tbaa !1
  %copy_count3 = getelementptr inbounds %struct.stream_BCPD_state_s, %struct.stream_BCPD_state_s* %16, i32 0, i32 9
  %17 = load i32, i32* %copy_count3, align 4, !tbaa !9
  store i32 %17, i32* %copy_count, align 4, !tbaa !5
  %18 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %escaped to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.stream_BCPD_state_s*, %struct.stream_BCPD_state_s** %ss, align 8, !tbaa !1
  %escaped4 = getelementptr inbounds %struct.stream_BCPD_state_s, %struct.stream_BCPD_state_s* %20, i32 0, i32 7
  %21 = load i32, i32* %escaped4, align 4, !tbaa !7
  store i32 %21, i32* %escaped, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %cleanup, %entry
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %22 = load i32, i32* %copy_count, align 4, !tbaa !5
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.cond
  %23 = load i8*, i8** %q, align 8, !tbaa !1
  %24 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp = icmp eq i8* %23, %24
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %26 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp6 = icmp ult i8* %25, %26
  %cond = select i1 %cmp6, i32 1, i32 0
  store i32 %cond, i32* %status, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %27 = load %struct.stream_BCPD_state_s*, %struct.stream_BCPD_state_s** %ss, align 8, !tbaa !1
  %copy_ptr = getelementptr inbounds %struct.stream_BCPD_state_s, %struct.stream_BCPD_state_s* %27, i32 0, i32 10
  %28 = load i8*, i8** %copy_ptr, align 8, !tbaa !18
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %copy_ptr, align 8, !tbaa !18
  %29 = load i8, i8* %incdec.ptr, align 1, !tbaa !17
  %30 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr7, i8** %q, align 8, !tbaa !1
  store i8 %29, i8* %incdec.ptr7, align 1, !tbaa !17
  %31 = load i32, i32* %copy_count, align 4, !tbaa !5
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %copy_count, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %for.cond
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %33 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %32, %33
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  store i32 0, i32* %status, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.8
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr12, i8** %p, align 8, !tbaa !1
  %35 = load i8, i8* %incdec.ptr12, align 1, !tbaa !17
  store i8 %35, i8* %ch, align 1, !tbaa !17
  %36 = load i8, i8* %ch, align 1, !tbaa !17
  %conv = zext i8 %36 to i32
  %cmp13 = icmp sle i32 %conv, 31
  br i1 %cmp13, label %if.then.15, label %if.end.39

if.then.15:                                       ; preds = %if.end.11
  %37 = load i8, i8* %ch, align 1, !tbaa !17
  %conv16 = zext i8 %37 to i32
  switch i32 %conv16, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.20
    i32 4, label %sw.bb.25
    i32 5, label %sw.bb.29
    i32 17, label %sw.bb.30
    i32 19, label %sw.bb.31
    i32 20, label %sw.bb.32
    i32 28, label %sw.bb.38
  ]

sw.bb:                                            ; preds = %if.then.15
  %38 = load i32, i32* %escaped, align 4, !tbaa !5
  %tobool17 = icmp ne i32 %38, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.bb
  store i32 -2, i32* %status, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %sw.bb
  store i32 1, i32* %escaped, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.20:                                         ; preds = %if.then.15
  %39 = load %struct.stream_BCPD_state_s*, %struct.stream_BCPD_state_s** %ss, align 8, !tbaa !1
  %signal_interrupt = getelementptr inbounds %struct.stream_BCPD_state_s, %struct.stream_BCPD_state_s* %39, i32 0, i32 5
  %40 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %signal_interrupt, align 8, !tbaa !19
  %41 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call = call i32 %40(%struct.stream_state_s* %41) #3
  store i32 %call, i32* %status, align 4, !tbaa !5
  %42 = load i32, i32* %status, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %42, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %sw.bb.20
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %sw.bb.20
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.25:                                         ; preds = %if.then.15
  %43 = load i32, i32* %escaped, align 4, !tbaa !5
  %tobool26 = icmp ne i32 %43, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %sw.bb.25
  store i32 -2, i32* %status, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %sw.bb.25
  store i32 -1, i32* %status, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.29:                                         ; preds = %if.then.15
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.30:                                         ; preds = %if.then.15
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.31:                                         ; preds = %if.then.15
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.32:                                         ; preds = %if.then.15
  %44 = load %struct.stream_BCPD_state_s*, %struct.stream_BCPD_state_s** %ss, align 8, !tbaa !1
  %request_status = getelementptr inbounds %struct.stream_BCPD_state_s, %struct.stream_BCPD_state_s* %44, i32 0, i32 6
  %45 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %request_status, align 8, !tbaa !20
  %46 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call33 = call i32 %45(%struct.stream_state_s* %46) #3
  store i32 %call33, i32* %status, align 4, !tbaa !5
  %47 = load i32, i32* %status, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %47, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %sw.bb.32
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %sw.bb.32
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.38:                                         ; preds = %if.then.15
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.then.15
  br label %if.end.39

if.end.39:                                        ; preds = %sw.epilog, %if.end.11
  %48 = load i8*, i8** %q, align 8, !tbaa !1
  %49 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp40 = icmp eq i8* %48, %49
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.39
  %50 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %incdec.ptr43, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end.39
  %51 = load i32, i32* %escaped, align 4, !tbaa !5
  %tobool45 = icmp ne i32 %51, 0
  br i1 %tobool45, label %if.then.46, label %if.end.60

if.then.46:                                       ; preds = %if.end.44
  store i32 0, i32* %escaped, align 4, !tbaa !5
  %52 = load i8, i8* %ch, align 1, !tbaa !17
  %conv47 = zext i8 %52 to i32
  switch i32 %conv47, label %sw.default [
    i32 91, label %sw.bb.48
    i32 65, label %sw.bb.52
    i32 67, label %sw.bb.52
    i32 68, label %sw.bb.52
    i32 69, label %sw.bb.52
    i32 81, label %sw.bb.52
    i32 83, label %sw.bb.52
    i32 84, label %sw.bb.52
    i32 92, label %sw.bb.52
    i32 77, label %sw.bb.55
  ]

sw.bb.48:                                         ; preds = %if.then.46
  %53 = load i32, i32* %tagged.addr, align 4, !tbaa !5
  %tobool49 = icmp ne i32 %53, 0
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %sw.bb.48
  store i32 -2, i32* %status, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %sw.bb.48
  br label %sw.bb.52

sw.bb.52:                                         ; preds = %if.then.46, %if.then.46, %if.then.46, %if.then.46, %if.then.46, %if.then.46, %if.then.46, %if.then.46, %if.end.51
  %54 = load i8, i8* %ch, align 1, !tbaa !17
  %conv53 = zext i8 %54 to i32
  %xor = xor i32 %conv53, 64
  %conv54 = trunc i32 %xor to i8
  store i8 %conv54, i8* %ch, align 1, !tbaa !17
  br label %sw.epilog.59

sw.bb.55:                                         ; preds = %if.then.46
  %55 = load i32, i32* %tagged.addr, align 4, !tbaa !5
  %tobool56 = icmp ne i32 %55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %sw.bb.55
  store i32 -2, i32* %status, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %sw.bb.55
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.then.46
  store i32 -2, i32* %status, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.59:                                     ; preds = %sw.bb.52
  br label %if.end.60

if.end.60:                                        ; preds = %sw.epilog.59, %if.end.44
  %56 = load i8, i8* %ch, align 1, !tbaa !17
  %57 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr61 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr61, i8** %q, align 8, !tbaa !1
  store i8 %56, i8* %incdec.ptr61, align 1, !tbaa !17
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then.57, %if.then.50, %if.then.36, %if.end.28, %if.then.27, %if.then.23, %if.then.18, %if.end.60, %if.end.58, %if.then.42, %sw.bb.38, %if.end.37, %sw.bb.31, %sw.bb.30, %sw.bb.29, %if.end.24, %if.end.19, %if.then.10, %if.end, %if.then.5
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.66 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
    i32 3, label %for.cond
    i32 5, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup
  br label %out

out:                                              ; preds = %for.end, %cleanup
  %58 = load i32, i32* %copy_count, align 4, !tbaa !5
  %59 = load %struct.stream_BCPD_state_s*, %struct.stream_BCPD_state_s** %ss, align 8, !tbaa !1
  %copy_count62 = getelementptr inbounds %struct.stream_BCPD_state_s, %struct.stream_BCPD_state_s* %59, i32 0, i32 9
  store i32 %58, i32* %copy_count62, align 4, !tbaa !9
  %60 = load i32, i32* %escaped, align 4, !tbaa !5
  %61 = load %struct.stream_BCPD_state_s*, %struct.stream_BCPD_state_s** %ss, align 8, !tbaa !1
  %escaped63 = getelementptr inbounds %struct.stream_BCPD_state_s, %struct.stream_BCPD_state_s* %61, i32 0, i32 7
  store i32 %60, i32* %escaped63, align 4, !tbaa !7
  %62 = load i8*, i8** %p, align 8, !tbaa !1
  %63 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr64 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %63, i32 0, i32 0
  store i8* %62, i8** %ptr64, align 8, !tbaa !11
  %64 = load i8*, i8** %q, align 8, !tbaa !1
  %65 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr65 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %65, i32 0, i32 1
  store i8* %64, i8** %ptr65, align 8, !tbaa !14
  %66 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.66

cleanup.66:                                       ; preds = %out, %cleanup
  %67 = bitcast i32* %escaped to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %copy_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast %struct.stream_BCPD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = load i32, i32* %retval
  ret i32 %75
}

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
!7 = !{!8, !6, i64 128}
!8 = !{!"stream_BCPD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !2, i64 112, !2, i64 120, !6, i64 128, !6, i64 132, !6, i64 136, !2, i64 144}
!9 = !{!8, !6, i64 136}
!10 = !{!8, !6, i64 132}
!11 = !{!12, !2, i64 0}
!12 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!12, !2, i64 8}
!14 = !{!15, !2, i64 8}
!15 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!16 = !{!15, !2, i64 16}
!17 = !{!3, !3, i64 0}
!18 = !{!8, !2, i64 144}
!19 = !{!8, !2, i64 112}
!20 = !{!8, !2, i64 120}
