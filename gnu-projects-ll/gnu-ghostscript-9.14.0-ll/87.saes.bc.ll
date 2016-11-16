; ModuleID = './saes.bc'
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
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.stream_aes_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], [32 x i8], i32, [16 x i8], i32, i32, %struct.aes_context* }
%struct.aes_context = type { i32, i64*, [68 x i64] }

@__func__.s_aes_set_key = private unnamed_addr constant [14 x i8] c"s_aes_set_key\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"./base/saes.c\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"could not set AES key\00", align 1
@st_aes_state = internal constant %struct.gs_memory_struct_type_s { i32 176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @aes_state_reloc_ptrs to i8*) }, align 8
@s_aes_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_aes_state, i32 (%struct.stream_state_s*)* @s_aes_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_aes_process, i32 16, i32 16, void (%struct.stream_state_s*)* @s_aes_release, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"aes filter state\00", align 1
@aes_state_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @aes_state_enum_ptrs, i32 0, i32 0) }, align 8
@aes_state_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 168 }], align 2
@.str.3 = private unnamed_addr constant [22 x i8] c"aes context structure\00", align 1
@__func__.s_aes_process = private unnamed_addr constant [14 x i8] c"s_aes_process\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"could not allocate aes context\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"invalid aes key length (%d bytes)\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"invalid aes padding byte (0x%02x)\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"aes stream isn't a multiple of 16 bytes\00", align 1

; Function Attrs: nounwind uwtable
define i32 @s_aes_set_key(%struct.stream_aes_state_s* %state, i8* %key, i32 %keylength) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.stream_aes_state_s*, align 8
  %key.addr = alloca i8*, align 8
  %keylength.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_aes_state_s* %state, %struct.stream_aes_state_s** %state.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i32 %keylength, i32* %keylength.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = load i32, i32* %keylength.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %keylength.addr, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %2, 32
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state.addr, align 8, !tbaa !1
  %key5 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %4, i32 0, i32 5
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key5, i32 0, i32 0
  %5 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %6 = load i32, i32* %keylength.addr, align 4, !tbaa !5
  %conv = sext i32 %6 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* %5, i64 %conv) #4
  %7 = load i32, i32* %keylength.addr, align 4, !tbaa !5
  %8 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state.addr, align 8, !tbaa !1
  %keylength6 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %8, i32 0, i32 6
  store i32 %7, i32* %keylength6, align 4, !tbaa !7
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %call8 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.s_aes_set_key, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 50, i32 0, i32 -15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.7, %if.then.3, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @s_aes_set_padding(%struct.stream_aes_state_s* %state, i32 %use_padding) #0 {
entry:
  %state.addr = alloca %struct.stream_aes_state_s*, align 8
  %use_padding.addr = alloca i32, align 4
  store %struct.stream_aes_state_s* %state, %struct.stream_aes_state_s** %state.addr, align 8, !tbaa !1
  store i32 %use_padding, i32* %use_padding.addr, align 4, !tbaa !5
  %0 = load i32, i32* %use_padding.addr, align 4, !tbaa !5
  %1 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state.addr, align 8, !tbaa !1
  %use_padding1 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %1, i32 0, i32 9
  store i32 %0, i32* %use_padding1, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aes_init(%struct.stream_state_s* %ss) #0 {
entry:
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %state = alloca %struct.stream_aes_state_s*, align 8
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_aes_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_aes_state_s*
  store %struct.stream_aes_state_s* %2, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %3 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %initialized = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %3, i32 0, i32 8
  store i32 0, i32* %initialized, align 4, !tbaa !10
  %4 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %ctx = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %4, i32 0, i32 10
  store %struct.aes_context* null, %struct.aes_context** %ctx, align 8, !tbaa !11
  %5 = bitcast %struct.stream_aes_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aes_process(%struct.stream_state_s* %ss, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %state = alloca %struct.stream_aes_state_s*, align 8
  %limit = alloca i8*, align 8
  %in_size = alloca i64, align 8
  %out_size = alloca i64, align 8
  %temp = alloca [16 x i8], align 16
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pad = alloca i32, align 4
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_aes_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_aes_state_s*
  store %struct.stream_aes_state_s* %2, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %3 = bitcast i8** %limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %in_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit1 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %5, i32 0, i32 1
  %6 = load i8*, i8** %limit1, align 8, !tbaa !12
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %ptr, align 8, !tbaa !14
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %in_size, align 8, !tbaa !15
  %9 = bitcast i64* %out_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 2
  %11 = load i8*, i8** %limit2, align 8, !tbaa !17
  %12 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr3 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %ptr3, align 8, !tbaa !19
  %sub.ptr.lhs.cast4 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %13 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  store i64 %sub.ptr.sub6, i64* %out_size, align 8, !tbaa !15
  %14 = bitcast [16 x i8]* %temp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #1
  %15 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %status, align 4, !tbaa !5
  %16 = load i64, i64* %in_size, align 8, !tbaa !15
  %17 = load i64, i64* %out_size, align 8, !tbaa !15
  %cmp = icmp sgt i64 %16, %17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %18, i32 0, i32 0
  %19 = load i8*, i8** %ptr7, align 8, !tbaa !14
  %20 = load i64, i64* %out_size, align 8, !tbaa !15
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %add.ptr, i8** %limit, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %21 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit8 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %21, i32 0, i32 1
  %22 = load i8*, i8** %limit8, align 8, !tbaa !12
  store i8* %22, i8** %limit, align 8, !tbaa !1
  %23 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %23, 0
  %cond = select i1 %tobool, i32 -1, i32 0
  store i32 %cond, i32* %status, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %ctx = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %24, i32 0, i32 10
  %25 = load %struct.aes_context*, %struct.aes_context** %ctx, align 8, !tbaa !11
  %cmp9 = icmp eq %struct.aes_context* %25, null
  br i1 %cmp9, label %if.then.10, label %if.end.27

if.then.10:                                       ; preds = %if.end
  %26 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %26, i32 0, i32 1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !20
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %28 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !21
  %29 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %29, i32 0, i32 1
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !20
  %call = call i8* %28(%struct.gs_memory_s* %30, i32 560, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #5
  %31 = bitcast i8* %call to %struct.aes_context*
  %32 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %ctx12 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %32, i32 0, i32 10
  store %struct.aes_context* %31, %struct.aes_context** %ctx12, align 8, !tbaa !11
  %33 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %ctx13 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %33, i32 0, i32 10
  %34 = load %struct.aes_context*, %struct.aes_context** %ctx13, align 8, !tbaa !11
  %cmp14 = icmp eq %struct.aes_context* %34, null
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.then.10
  %call16 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.s_aes_process, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 120, i32 0, i32 -25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #5
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.then.10
  %35 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %keylength = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %35, i32 0, i32 6
  %36 = load i32, i32* %keylength, align 4, !tbaa !7
  %cmp18 = icmp ult i32 %36, 1
  br i1 %cmp18, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %37 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %keylength19 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %37, i32 0, i32 6
  %38 = load i32, i32* %keylength19, align 4, !tbaa !7
  %cmp20 = icmp ugt i32 %38, 32
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.17
  %39 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %keylength22 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %39, i32 0, i32 6
  %40 = load i32, i32* %keylength22, align 4, !tbaa !7
  %call23 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.s_aes_process, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 125, i32 0, i32 -15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i32 %40) #5
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false
  %41 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %ctx25 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %41, i32 0, i32 10
  %42 = load %struct.aes_context*, %struct.aes_context** %ctx25, align 8, !tbaa !11
  %43 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %43, i32 0, i32 5
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key, i32 0, i32 0
  %44 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %keylength26 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %44, i32 0, i32 6
  %45 = load i32, i32* %keylength26, align 4, !tbaa !7
  %mul = mul i32 %45, 8
  call void @aes_setkey_dec(%struct.aes_context* %42, i8* %arraydecay, i32 %mul) #5
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.24, %if.end
  %46 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %initialized = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %46, i32 0, i32 8
  %47 = load i32, i32* %initialized, align 4, !tbaa !10
  %tobool28 = icmp ne i32 %47, 0
  br i1 %tobool28, label %if.end.40, label %if.then.29

if.then.29:                                       ; preds = %if.end.27
  %48 = load i64, i64* %in_size, align 8, !tbaa !15
  %cmp30 = icmp slt i64 %48, 16
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.29
  %49 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %iv = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %49, i32 0, i32 7
  %arraydecay33 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i32 0, i32 0
  %50 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr34 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %50, i32 0, i32 0
  %51 = load i8*, i8** %ptr34, align 8, !tbaa !14
  %add.ptr35 = getelementptr inbounds i8, i8* %51, i64 1
  %call36 = call i8* @memcpy(i8* %arraydecay33, i8* %add.ptr35, i64 16) #4
  %52 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %initialized37 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %52, i32 0, i32 8
  store i32 1, i32* %initialized37, align 4, !tbaa !10
  %53 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr38 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %53, i32 0, i32 0
  %54 = load i8*, i8** %ptr38, align 8, !tbaa !14
  %add.ptr39 = getelementptr inbounds i8, i8* %54, i64 16
  store i8* %add.ptr39, i8** %ptr38, align 8, !tbaa !14
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.32, %if.end.27
  br label %while.cond

while.cond:                                       ; preds = %if.end.79, %if.end.40
  %55 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr41 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %55, i32 0, i32 0
  %56 = load i8*, i8** %ptr41, align 8, !tbaa !14
  %add.ptr42 = getelementptr inbounds i8, i8* %56, i64 16
  %57 = load i8*, i8** %limit, align 8, !tbaa !1
  %cmp43 = icmp ule i8* %add.ptr42, %57
  br i1 %cmp43, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %58 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %ctx44 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %58, i32 0, i32 10
  %59 = load %struct.aes_context*, %struct.aes_context** %ctx44, align 8, !tbaa !11
  %60 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %iv45 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %60, i32 0, i32 7
  %arraydecay46 = getelementptr inbounds [16 x i8], [16 x i8]* %iv45, i32 0, i32 0
  %61 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr47 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %61, i32 0, i32 0
  %62 = load i8*, i8** %ptr47, align 8, !tbaa !14
  %add.ptr48 = getelementptr inbounds i8, i8* %62, i64 1
  %arraydecay49 = getelementptr inbounds [16 x i8], [16 x i8]* %temp, i32 0, i32 0
  call void @aes_crypt_cbc(%struct.aes_context* %59, i32 0, i32 16, i8* %arraydecay46, i8* %add.ptr48, i8* %arraydecay49) #5
  %63 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr50 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %63, i32 0, i32 0
  %64 = load i8*, i8** %ptr50, align 8, !tbaa !14
  %add.ptr51 = getelementptr inbounds i8, i8* %64, i64 16
  store i8* %add.ptr51, i8** %ptr50, align 8, !tbaa !14
  %65 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool52 = icmp ne i32 %65, 0
  br i1 %tobool52, label %land.lhs.true, label %if.end.79

land.lhs.true:                                    ; preds = %while.body
  %66 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr53 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %66, i32 0, i32 0
  %67 = load i8*, i8** %ptr53, align 8, !tbaa !14
  %68 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit54 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %68, i32 0, i32 1
  %69 = load i8*, i8** %limit54, align 8, !tbaa !12
  %cmp55 = icmp eq i8* %67, %69
  br i1 %cmp55, label %if.then.56, label %if.end.79

if.then.56:                                       ; preds = %land.lhs.true
  %70 = bitcast i32* %pad to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %use_padding = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %71, i32 0, i32 9
  %72 = load i32, i32* %use_padding, align 4, !tbaa !9
  %tobool57 = icmp ne i32 %72, 0
  br i1 %tobool57, label %if.then.58, label %if.else.69

if.then.58:                                       ; preds = %if.then.56
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %temp, i32 0, i64 15
  %73 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv = zext i8 %73 to i32
  store i32 %conv, i32* %pad, align 4, !tbaa !5
  %74 = load i32, i32* %pad, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %74, 1
  br i1 %cmp59, label %if.then.64, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.then.58
  %75 = load i32, i32* %pad, align 4, !tbaa !5
  %cmp62 = icmp sgt i32 %75, 16
  br i1 %cmp62, label %if.then.64, label %if.end.68

if.then.64:                                       ; preds = %lor.lhs.false.61, %if.then.58
  %76 = load i32, i32* %pad, align 4, !tbaa !5
  %conv65 = trunc i32 %76 to i8
  %conv66 = zext i8 %conv65 to i32
  %call67 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.s_aes_process, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 156, i32 3, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i32 %conv66) #5
  store i32 0, i32* %pad, align 4, !tbaa !5
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.64, %lor.lhs.false.61
  br label %if.end.70

if.else.69:                                       ; preds = %if.then.56
  store i32 0, i32* %pad, align 4, !tbaa !5
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.69, %if.end.68
  %77 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr71 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %77, i32 0, i32 1
  %78 = load i8*, i8** %ptr71, align 8, !tbaa !19
  %add.ptr72 = getelementptr inbounds i8, i8* %78, i64 1
  %arraydecay73 = getelementptr inbounds [16 x i8], [16 x i8]* %temp, i32 0, i32 0
  %79 = load i32, i32* %pad, align 4, !tbaa !5
  %sub = sub nsw i32 16, %79
  %conv74 = sext i32 %sub to i64
  %call75 = call i8* @memcpy(i8* %add.ptr72, i8* %arraydecay73, i64 %conv74) #4
  %80 = load i32, i32* %pad, align 4, !tbaa !5
  %sub76 = sub nsw i32 16, %80
  %81 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr77 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %81, i32 0, i32 1
  %82 = load i8*, i8** %ptr77, align 8, !tbaa !19
  %idx.ext = sext i32 %sub76 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %82, i64 %idx.ext
  store i8* %add.ptr78, i8** %ptr77, align 8, !tbaa !19
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %83 = bitcast i32* %pad to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  br label %cleanup

if.end.79:                                        ; preds = %land.lhs.true, %while.body
  %84 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr80 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %84, i32 0, i32 1
  %85 = load i8*, i8** %ptr80, align 8, !tbaa !19
  %add.ptr81 = getelementptr inbounds i8, i8* %85, i64 1
  %arraydecay82 = getelementptr inbounds [16 x i8], [16 x i8]* %temp, i32 0, i32 0
  %call83 = call i8* @memcpy(i8* %add.ptr81, i8* %arraydecay82, i64 16) #4
  %86 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr84 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %86, i32 0, i32 1
  %87 = load i8*, i8** %ptr84, align 8, !tbaa !19
  %add.ptr85 = getelementptr inbounds i8, i8* %87, i64 16
  store i8* %add.ptr85, i8** %ptr84, align 8, !tbaa !19
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %88 = load i32, i32* %status, align 4, !tbaa !5
  %cmp86 = icmp eq i32 %88, -1
  br i1 %cmp86, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %while.end
  %call89 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.s_aes_process, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 176, i32 0, i32 -15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %while.end
  %89 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.90, %if.then.88, %if.end.70, %if.then.31, %if.then.21, %if.then.15
  %90 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast [16 x i8]* %temp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %91) #1
  %92 = bitcast i64* %out_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i64* %in_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i8** %limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %struct.stream_aes_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal void @s_aes_release(%struct.stream_state_s* %ss) #0 {
entry:
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %state = alloca %struct.stream_aes_state_s*, align 8
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_aes_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_aes_state_s*
  store %struct.stream_aes_state_s* %2, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %3 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %ctx = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %3, i32 0, i32 10
  %4 = load %struct.aes_context*, %struct.aes_context** %ctx, align 8, !tbaa !11
  %cmp = icmp ne %struct.aes_context* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %5, i32 0, i32 1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !20
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !25
  %8 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !20
  %10 = load %struct.stream_aes_state_s*, %struct.stream_aes_state_s** %state, align 8, !tbaa !1
  %ctx2 = getelementptr inbounds %struct.stream_aes_state_s, %struct.stream_aes_state_s* %10, i32 0, i32 10
  %11 = load %struct.aes_context*, %struct.aes_context** %ctx2, align 8, !tbaa !11
  %12 = bitcast %struct.aes_context* %11 to i8*
  call void %7(%struct.gs_memory_s* %9, i8* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = bitcast %struct.stream_aes_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret void
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

declare void @aes_setkey_dec(%struct.aes_context*, i8*, i32) #3

declare void @aes_crypt_cbc(%struct.aes_context*, i32, i32, i8*, i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 140}
!8 = !{!"stream_aes_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 108, !6, i64 140, !3, i64 144, !6, i64 160, !6, i64 164, !2, i64 168}
!9 = !{!8, !6, i64 164}
!10 = !{!8, !6, i64 160}
!11 = !{!8, !2, i64 168}
!12 = !{!13, !2, i64 8}
!13 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!14 = !{!13, !2, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !3, i64 0}
!17 = !{!18, !2, i64 16}
!18 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!18, !2, i64 8}
!20 = !{!8, !2, i64 8}
!21 = !{!22, !2, i64 8}
!22 = !{!"gs_memory_s", !2, i64 0, !23, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!23 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!24 = !{!3, !3, i64 0}
!25 = !{!22, !2, i64 24}
