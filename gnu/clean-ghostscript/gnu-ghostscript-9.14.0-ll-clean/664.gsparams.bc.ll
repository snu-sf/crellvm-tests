; ModuleID = './gsparams.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
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
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.WriteBuffer = type { i8*, i8*, i32 }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }

@gs_param_type_sizes = external constant [0 x i8], align 1
@gs_param_type_base_sizes = external constant [0 x i8], align 1
@wb_put_alignment.zero = internal constant i8 0, align 1

; Function Attrs: nounwind uwtable
define i32 @gs_param_list_serialize(%struct.gs_param_list_s* %list, i8* %buf, i32 %buf_sizeof) #0 {
entry:
  %list.addr = alloca %struct.gs_param_list_s*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_sizeof.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %temp_code = alloca i32, align 4
  %key_enum = alloca %union.gs_param_enumerator_s, align 8
  %key = alloca %struct.gs_param_string_s, align 8
  %write_buf = alloca %struct.WriteBuffer, align 8
  %value_top_sizeof = alloca i32, align 4
  %value_base_sizeof = alloca i32, align 4
  %value = alloca %struct.gs_param_typed_value_s, align 8
  %string_key = alloca [256 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %str_count = alloca i32, align 4
  %sa51 = alloca %struct.gs_param_string_s*, align 8
  %bytes_written = alloca i32, align 4
  store %struct.gs_param_list_s* %list, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %buf_sizeof, i32* %buf_sizeof.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast i32* %temp_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %union.gs_param_enumerator_s* %key_enum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_param_string_s* %key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.WriteBuffer* %write_buf to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #1
  %5 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %buf1 = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %write_buf, i32 0, i32 0
  store i8* %5, i8** %buf1, align 8, !tbaa !7
  %6 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %buf_sizeof.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ 0, %cond.false ]
  %idx.ext = sext i32 %cond to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %buf_end = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %write_buf, i32 0, i32 1
  store i8* %add.ptr, i8** %buf_end, align 8, !tbaa !9
  %total_sizeof = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %write_buf, i32 0, i32 2
  store i32 0, i32* %total_sizeof, align 4, !tbaa !10
  call void @param_init_enumerator(%union.gs_param_enumerator_s* %key_enum) #4
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cond.end
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %9, i32 0, i32 0
  %10 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !11
  %next_key = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %10, i32 0, i32 3
  %11 = load i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)** %next_key, align 8, !tbaa !13
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gs_param_list_s* %12, %union.gs_param_enumerator_s* %key_enum, %struct.gs_param_string_s* %key) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = bitcast i32* %value_top_sizeof to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %value_base_sizeof to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.gs_param_typed_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %15) #1
  %16 = bitcast [256 x i8]* %string_key to i8*
  call void @llvm.lifetime.start(i64 256, i8* %16) #1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  %17 = load i32, i32* %size, align 4, !tbaa !15
  %add = add i32 %17, 1
  %conv = zext i32 %add to i64
  %cmp2 = icmp ult i64 256, %conv
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -15, i32* %code, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %string_key, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8, !tbaa !17
  %size4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  %19 = load i32, i32* %size4, align 4, !tbaa !15
  %conv5 = zext i32 %19 to i64
  %call6 = call i8* @memcpy(i8* %arraydecay, i8* %18, i64 %conv5) #5
  %size7 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  %20 = load i32, i32* %size7, align 4, !tbaa !15
  %idxprom = zext i32 %20 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %string_key, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !18
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 1
  store i32 -1, i32* %type, align 4, !tbaa !19
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %string_key, i32 0, i32 0
  %call9 = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %21, i8* %arraydecay8, %struct.gs_param_typed_value_s* %value) #4
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %if.end
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %22, 0
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.then.12
  br label %cond.end.17

cond.false.16:                                    ; preds = %if.then.12
  %23 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi i32 [ -1, %cond.true.15 ], [ %23, %cond.false.16 ]
  store i32 %cond18, i32* %code, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end
  %size20 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  %24 = load i32, i32* %size20, align 4, !tbaa !15
  %add21 = add i32 %24, 1
  call void @wb_put_word(i32 %add21, %struct.WriteBuffer* %write_buf) #4
  %type22 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 1
  %25 = load i32, i32* %type22, align 4, !tbaa !19
  call void @wb_put_word(i32 %25, %struct.WriteBuffer* %write_buf) #4
  %arraydecay23 = getelementptr inbounds [256 x i8], [256 x i8]* %string_key, i32 0, i32 0
  %size24 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  %26 = load i32, i32* %size24, align 4, !tbaa !15
  %add25 = add i32 %26, 1
  call void @wb_put_bytes(i8* %arraydecay23, i32 %add25, %struct.WriteBuffer* %write_buf) #4
  %type26 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 1
  %27 = load i32, i32* %type26, align 4, !tbaa !19
  %idxprom27 = zext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [0 x i8], [0 x i8]* @gs_param_type_sizes, i32 0, i64 %idxprom27
  %28 = load i8, i8* %arrayidx28, align 1, !tbaa !18
  %conv29 = zext i8 %28 to i32
  store i32 %conv29, i32* %value_top_sizeof, align 4, !tbaa !5
  %type30 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 1
  %29 = load i32, i32* %type30, align 4, !tbaa !19
  %idxprom31 = zext i32 %29 to i64
  %arrayidx32 = getelementptr inbounds [0 x i8], [0 x i8]* @gs_param_type_base_sizes, i32 0, i64 %idxprom31
  %30 = load i8, i8* %arrayidx32, align 1, !tbaa !18
  %conv33 = zext i8 %30 to i32
  store i32 %conv33, i32* %value_base_sizeof, align 4, !tbaa !5
  %type34 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 1
  %31 = load i32, i32* %type34, align 4, !tbaa !19
  switch i32 %31, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb.36
    i32 6, label %sw.bb.36
    i32 7, label %sw.bb.36
    i32 8, label %sw.bb.36
    i32 9, label %sw.bb.43
    i32 10, label %sw.bb.43
    i32 11, label %sw.bb.62
    i32 12, label %sw.bb.62
  ]

sw.bb:                                            ; preds = %if.end.19, %if.end.19, %if.end.19, %if.end.19, %if.end.19
  %value35 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %32 = bitcast %union.gs_param_value_s* %value35 to i8*
  %33 = load i32, i32* %value_top_sizeof, align 4, !tbaa !5
  call void @wb_put_bytes(i8* %32, i32 %33, %struct.WriteBuffer* %write_buf) #4
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end.19, %if.end.19, %if.end.19, %if.end.19
  %value37 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %34 = bitcast %union.gs_param_value_s* %value37 to i8*
  %35 = load i32, i32* %value_top_sizeof, align 4, !tbaa !5
  call void @wb_put_bytes(i8* %34, i32 %35, %struct.WriteBuffer* %write_buf) #4
  %36 = load i32, i32* %value_base_sizeof, align 4, !tbaa !5
  call void @wb_put_alignment(i32 %36, %struct.WriteBuffer* %write_buf) #4
  %value38 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %s = bitcast %union.gs_param_value_s* %value38 to %struct.gs_param_string_s*
  %size39 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s, i32 0, i32 1
  %37 = load i32, i32* %size39, align 4, !tbaa !15
  %38 = load i32, i32* %value_base_sizeof, align 4, !tbaa !5
  %mul = mul i32 %38, %37
  store i32 %mul, i32* %value_base_sizeof, align 4, !tbaa !5
  %value40 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %s41 = bitcast %union.gs_param_value_s* %value40 to %struct.gs_param_string_s*
  %data42 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s41, i32 0, i32 0
  %39 = load i8*, i8** %data42, align 8, !tbaa !17
  %40 = load i32, i32* %value_base_sizeof, align 4, !tbaa !5
  call void @wb_put_bytes(i8* %39, i32 %40, %struct.WriteBuffer* %write_buf) #4
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.19, %if.end.19
  %value44 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %sa = bitcast %union.gs_param_value_s* %value44 to %struct.gs_param_string_array_s*
  %size45 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa, i32 0, i32 1
  %41 = load i32, i32* %size45, align 4, !tbaa !21
  %42 = load i32, i32* %value_base_sizeof, align 4, !tbaa !5
  %mul46 = mul i32 %42, %41
  store i32 %mul46, i32* %value_base_sizeof, align 4, !tbaa !5
  %value47 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %43 = bitcast %union.gs_param_value_s* %value47 to i8*
  %44 = load i32, i32* %value_top_sizeof, align 4, !tbaa !5
  call void @wb_put_bytes(i8* %43, i32 %44, %struct.WriteBuffer* %write_buf) #4
  call void @wb_put_alignment(i32 8, %struct.WriteBuffer* %write_buf) #4
  %value48 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %sa49 = bitcast %union.gs_param_value_s* %value48 to %struct.gs_param_string_array_s*
  %data50 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa49, i32 0, i32 0
  %45 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data50, align 8, !tbaa !23
  %46 = bitcast %struct.gs_param_string_s* %45 to i8*
  %47 = load i32, i32* %value_base_sizeof, align 4, !tbaa !5
  call void @wb_put_bytes(i8* %46, i32 %47, %struct.WriteBuffer* %write_buf) #4
  %48 = bitcast i32* %str_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = bitcast %struct.gs_param_string_s** %sa51 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %value52 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %sa53 = bitcast %union.gs_param_value_s* %value52 to %struct.gs_param_string_array_s*
  %size54 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa53, i32 0, i32 1
  %50 = load i32, i32* %size54, align 4, !tbaa !21
  store i32 %50, i32* %str_count, align 4, !tbaa !5
  %value55 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %sa56 = bitcast %union.gs_param_value_s* %value55 to %struct.gs_param_string_array_s*
  %data57 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa56, i32 0, i32 0
  %51 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data57, align 8, !tbaa !23
  store %struct.gs_param_string_s* %51, %struct.gs_param_string_s** %sa51, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.43
  %52 = load i32, i32* %str_count, align 4, !tbaa !5
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %str_count, align 4, !tbaa !5
  %cmp58 = icmp sgt i32 %52, 0
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %sa51, align 8, !tbaa !1
  %data60 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %53, i32 0, i32 0
  %54 = load i8*, i8** %data60, align 8, !tbaa !17
  %55 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %sa51, align 8, !tbaa !1
  %size61 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %55, i32 0, i32 1
  %56 = load i32, i32* %size61, align 4, !tbaa !15
  call void @wb_put_bytes(i8* %54, i32 %56, %struct.WriteBuffer* %write_buf) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %sa51, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %57, i32 1
  store %struct.gs_param_string_s* %incdec.ptr, %struct.gs_param_string_s** %sa51, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = bitcast %struct.gs_param_string_s** %sa51 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i32* %str_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.end.19, %if.end.19
  %value63 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %d = bitcast %union.gs_param_value_s* %value63 to %struct.gs_param_collection_s*
  %size64 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d, i32 0, i32 1
  %60 = load i32, i32* %size64, align 4, !tbaa !24
  call void @wb_put_word(i32 %60, %struct.WriteBuffer* %write_buf) #4
  call void @wb_put_alignment(i32 8, %struct.WriteBuffer* %write_buf) #4
  %61 = bitcast i32* %bytes_written to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %value65 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %d66 = bitcast %union.gs_param_value_s* %value65 to %struct.gs_param_collection_s*
  %list67 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d66, i32 0, i32 0
  %62 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list67, align 8, !tbaa !26
  %buf68 = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %write_buf, i32 0, i32 0
  %63 = load i8*, i8** %buf68, align 8, !tbaa !7
  %buf69 = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %write_buf, i32 0, i32 0
  %64 = load i8*, i8** %buf69, align 8, !tbaa !7
  %tobool70 = icmp ne i8* %64, null
  br i1 %tobool70, label %cond.true.71, label %cond.false.74

cond.true.71:                                     ; preds = %sw.bb.62
  %buf_end72 = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %write_buf, i32 0, i32 1
  %65 = load i8*, i8** %buf_end72, align 8, !tbaa !9
  %buf73 = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %write_buf, i32 0, i32 0
  %66 = load i8*, i8** %buf73, align 8, !tbaa !7
  %sub.ptr.lhs.cast = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %66 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end.75

cond.false.74:                                    ; preds = %sw.bb.62
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.71
  %cond76 = phi i64 [ %sub.ptr.sub, %cond.true.71 ], [ 0, %cond.false.74 ]
  %conv77 = trunc i64 %cond76 to i32
  %call78 = call i32 @gs_param_list_serialize(%struct.gs_param_list_s* %62, i8* %63, i32 %conv77) #4
  store i32 %call78, i32* %bytes_written, align 4, !tbaa !5
  %67 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  %procs79 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %67, i32 0, i32 0
  %68 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs79, align 8, !tbaa !11
  %end_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %68, i32 0, i32 2
  %69 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection, align 8, !tbaa !27
  %70 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  %data80 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  %71 = load i8*, i8** %data80, align 8, !tbaa !17
  %value81 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value, i32 0, i32 0
  %d82 = bitcast %union.gs_param_value_s* %value81 to %struct.gs_param_collection_s*
  %call83 = call i32 %69(%struct.gs_param_list_s* %70, i8* %71, %struct.gs_param_collection_s* %d82) #4
  store i32 %call83, i32* %temp_code, align 4, !tbaa !5
  %72 = load i32, i32* %bytes_written, align 4, !tbaa !5
  %cmp84 = icmp slt i32 %72, 0
  br i1 %cmp84, label %if.then.86, label %if.else

if.then.86:                                       ; preds = %cond.end.75
  %73 = load i32, i32* %bytes_written, align 4, !tbaa !5
  store i32 %73, i32* %code, align 4, !tbaa !5
  br label %if.end.91

if.else:                                          ; preds = %cond.end.75
  %74 = load i32, i32* %temp_code, align 4, !tbaa !5
  store i32 %74, i32* %code, align 4, !tbaa !5
  %75 = load i32, i32* %bytes_written, align 4, !tbaa !5
  %tobool87 = icmp ne i32 %75, 0
  br i1 %tobool87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %if.else
  %buf89 = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %write_buf, i32 0, i32 0
  %76 = load i8*, i8** %buf89, align 8, !tbaa !7
  %77 = load i32, i32* %bytes_written, align 4, !tbaa !5
  call void @wb_put_bytes(i8* %76, i32 %77, %struct.WriteBuffer* %write_buf) #4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %if.else
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.86
  %78 = bitcast i32* %bytes_written to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.19
  store i32 -1, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.91, %for.end, %sw.bb.36, %sw.bb
  %79 = load i32, i32* %code, align 4, !tbaa !5
  %cmp92 = icmp slt i32 %79, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %sw.epilog
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.95:                                        ; preds = %sw.epilog
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.95, %if.then.94, %cond.end.17, %if.then
  %80 = bitcast [256 x i8]* %string_key to i8*
  call void @llvm.lifetime.end(i64 256, i8* %80) #1
  %81 = bitcast %struct.gs_param_typed_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %81) #1
  %82 = bitcast i32* %value_base_sizeof to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %value_top_sizeof to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %84 = load i32, i32* %code, align 4, !tbaa !5
  %cmp99 = icmp sge i32 %84, 0
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %while.end
  call void @wb_put_word(i32 0, %struct.WriteBuffer* %write_buf) #4
  %total_sizeof102 = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %write_buf, i32 0, i32 2
  %85 = load i32, i32* %total_sizeof102, align 4, !tbaa !10
  store i32 %85, i32* %code, align 4, !tbaa !5
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %while.end
  %86 = load i32, i32* %code, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  %87 = bitcast %struct.WriteBuffer* %write_buf to i8*
  call void @llvm.lifetime.end(i64 24, i8* %87) #1
  %88 = bitcast %struct.gs_param_string_s* %key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %88) #1
  %89 = bitcast %union.gs_param_enumerator_s* %key_enum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast i32* %temp_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  ret i32 %86

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @param_init_enumerator(%union.gs_param_enumerator_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @param_read_requested_typed(%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*) #2

; Function Attrs: nounwind uwtable
define internal void @wb_put_word(i32 %source, %struct.WriteBuffer* %dest) #0 {
entry:
  %source.addr = alloca i32, align 4
  %dest.addr = alloca %struct.WriteBuffer*, align 8
  %chunk = alloca i8, align 1
  store i32 %source, i32* %source.addr, align 4, !tbaa !5
  store %struct.WriteBuffer* %dest, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start(i64 1, i8* %chunk) #1
  %0 = load i32, i32* %source.addr, align 4, !tbaa !5
  %and = and i32 %0, 127
  %conv = trunc i32 %and to i8
  store i8 %conv, i8* %chunk, align 1, !tbaa !18
  %1 = load i32, i32* %source.addr, align 4, !tbaa !5
  %cmp = icmp uge i32 %1, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i8, i8* %chunk, align 1, !tbaa !18
  %conv2 = zext i8 %2 to i32
  %or = or i32 %conv2, 128
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %chunk, align 1, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %3 = load i32, i32* %source.addr, align 4, !tbaa !5
  %shr = lshr i32 %3, 7
  store i32 %shr, i32* %source.addr, align 4, !tbaa !5
  %4 = load %struct.WriteBuffer*, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  %total_sizeof = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %4, i32 0, i32 2
  %5 = load i32, i32* %total_sizeof, align 4, !tbaa !10
  %inc = add i32 %5, 1
  store i32 %inc, i32* %total_sizeof, align 4, !tbaa !10
  %6 = load %struct.WriteBuffer*, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %6, i32 0, i32 0
  %7 = load i8*, i8** %buf, align 8, !tbaa !7
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.WriteBuffer*, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  %buf4 = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %8, i32 0, i32 0
  %9 = load i8*, i8** %buf4, align 8, !tbaa !7
  %10 = load %struct.WriteBuffer*, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  %buf_end = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %10, i32 0, i32 1
  %11 = load i8*, i8** %buf_end, align 8, !tbaa !9
  %cmp5 = icmp ult i8* %9, %11
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %land.lhs.true
  %12 = load i8, i8* %chunk, align 1, !tbaa !18
  %13 = load %struct.WriteBuffer*, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  %buf8 = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %13, i32 0, i32 0
  %14 = load i8*, i8** %buf8, align 8, !tbaa !7
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %buf8, align 8, !tbaa !7
  store i8 %12, i8* %14, align 1, !tbaa !18
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %land.lhs.true, %if.end
  call void @llvm.lifetime.end(i64 1, i8* %chunk) #1
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  %15 = load i32, i32* %source.addr, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %15, 0
  br i1 %cmp10, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wb_put_bytes(i8* %source, i32 %source_sizeof, %struct.WriteBuffer* %dest) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %source_sizeof.addr = alloca i32, align 4
  %dest.addr = alloca %struct.WriteBuffer*, align 8
  store i8* %source, i8** %source.addr, align 8, !tbaa !1
  store i32 %source_sizeof, i32* %source_sizeof.addr, align 4, !tbaa !5
  store %struct.WriteBuffer* %dest, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  %0 = load i32, i32* %source_sizeof.addr, align 4, !tbaa !5
  %1 = load %struct.WriteBuffer*, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  %total_sizeof = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %1, i32 0, i32 2
  %2 = load i32, i32* %total_sizeof, align 4, !tbaa !10
  %add = add i32 %2, %0
  store i32 %add, i32* %total_sizeof, align 4, !tbaa !10
  %3 = load %struct.WriteBuffer*, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %3, i32 0, i32 0
  %4 = load i8*, i8** %buf, align 8, !tbaa !7
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.WriteBuffer*, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  %buf1 = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %5, i32 0, i32 0
  %6 = load i8*, i8** %buf1, align 8, !tbaa !7
  %7 = load i32, i32* %source_sizeof.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %8 = load %struct.WriteBuffer*, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  %buf_end = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %8, i32 0, i32 1
  %9 = load i8*, i8** %buf_end, align 8, !tbaa !9
  %cmp = icmp ule i8* %add.ptr, %9
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.WriteBuffer*, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  %buf2 = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %10, i32 0, i32 0
  %11 = load i8*, i8** %buf2, align 8, !tbaa !7
  %12 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %cmp3 = icmp ne i8* %11, %12
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %13 = load %struct.WriteBuffer*, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  %buf5 = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %13, i32 0, i32 0
  %14 = load i8*, i8** %buf5, align 8, !tbaa !7
  %15 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %16 = load i32, i32* %source_sizeof.addr, align 4, !tbaa !5
  %conv = zext i32 %16 to i64
  %call = call i8* @memcpy(i8* %14, i8* %15, i64 %conv) #5
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %17 = load i32, i32* %source_sizeof.addr, align 4, !tbaa !5
  %18 = load %struct.WriteBuffer*, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  %buf6 = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %18, i32 0, i32 0
  %19 = load i8*, i8** %buf6, align 8, !tbaa !7
  %idx.ext7 = zext i32 %17 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %19, i64 %idx.ext7
  store i8* %add.ptr8, i8** %buf6, align 8, !tbaa !7
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wb_put_alignment(i32 %alignment, %struct.WriteBuffer* %dest) #0 {
entry:
  %alignment.addr = alloca i32, align 4
  %dest.addr = alloca %struct.WriteBuffer*, align 8
  store i32 %alignment, i32* %alignment.addr, align 4, !tbaa !5
  store %struct.WriteBuffer* %dest, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.WriteBuffer*, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  %total_sizeof = getelementptr inbounds %struct.WriteBuffer, %struct.WriteBuffer* %0, i32 0, i32 2
  %1 = load i32, i32* %total_sizeof, align 4, !tbaa !10
  %2 = load i32, i32* %alignment.addr, align 4, !tbaa !5
  %sub = sub i32 %2, 1
  %and = and i32 %1, %sub
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.WriteBuffer*, %struct.WriteBuffer** %dest.addr, align 8, !tbaa !1
  call void @wb_put_bytes(i8* @wb_put_alignment.zero, i32 1, %struct.WriteBuffer* %3) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_param_list_unserialize(%struct.gs_param_list_s* %list, i8* %buf) #0 {
entry:
  %list.addr = alloca %struct.gs_param_list_s*, align 8
  %buf.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %orig_buf = alloca i8*, align 8
  %typed = alloca %struct.gs_param_typed_value_s, align 8
  %key = alloca i8*, align 8
  %key_sizeof = alloca i32, align 4
  %value_top_sizeof = alloca i32, align 4
  %value_base_sizeof = alloca i32, align 4
  %temp_code = alloca i32, align 4
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %str_count = alloca i32, align 4
  %sa36 = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_param_list_s* %list, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast i8** %orig_buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %2, i8** %orig_buf, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %key_sizeof to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %value_top_sizeof to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %value_base_sizeof to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %temp_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %call = call i32 @buf_get_word(i8** %buf.addr) #4
  store i32 %call, i32* %key_sizeof, align 4, !tbaa !5
  %10 = load i32, i32* %key_sizeof, align 4, !tbaa !5
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %call1 = call i32 @buf_get_word(i8** %buf.addr) #4
  store i32 %call1, i32* %type, align 4, !tbaa !18
  %11 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %11, i8** %key, align 8, !tbaa !1
  %12 = load i32, i32* %key_sizeof, align 4, !tbaa !5
  %13 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %buf.addr, align 8, !tbaa !1
  %14 = load i32, i32* %type, align 4, !tbaa !18
  %idxprom = zext i32 %14 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gs_param_type_sizes, i32 0, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %15 to i32
  store i32 %conv, i32* %value_top_sizeof, align 4, !tbaa !5
  %16 = load i32, i32* %type, align 4, !tbaa !18
  %idxprom2 = zext i32 %16 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gs_param_type_base_sizes, i32 0, i64 %idxprom2
  %17 = load i8, i8* %arrayidx3, align 1, !tbaa !18
  %conv4 = zext i8 %17 to i32
  store i32 %conv4, i32* %value_base_sizeof, align 4, !tbaa !5
  %18 = load i32, i32* %type, align 4, !tbaa !18
  %type5 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  store i32 %18, i32* %type5, align 4, !tbaa !19
  %19 = load i32, i32* %type, align 4, !tbaa !18
  %cmp6 = icmp ne i32 %19, 11
  br i1 %cmp6, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %20 = load i32, i32* %type, align 4, !tbaa !18
  %cmp8 = icmp ne i32 %20, 12
  br i1 %cmp8, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %land.lhs.true
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %21 = bitcast %union.gs_param_value_s* %value to i8*
  %22 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %23 = load i32, i32* %value_top_sizeof, align 4, !tbaa !5
  %conv11 = sext i32 %23 to i64
  %call12 = call i8* @memcpy(i8* %21, i8* %22, i64 %conv11) #5
  %24 = load i32, i32* %value_top_sizeof, align 4, !tbaa !5
  %25 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %idx.ext13 = sext i32 %24 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %25, i64 %idx.ext13
  store i8* %add.ptr14, i8** %buf.addr, align 8, !tbaa !1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %land.lhs.true, %if.end
  %26 = load i32, i32* %type, align 4, !tbaa !18
  switch i32 %26, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb.16
    i32 6, label %sw.bb.16
    i32 7, label %sw.bb.16
    i32 8, label %sw.bb.16
    i32 9, label %sw.bb.24
    i32 10, label %sw.bb.24
    i32 11, label %sw.bb.50
    i32 12, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %if.end.15, %if.end.15, %if.end.15, %if.end.15, %if.end.15
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end.15, %if.end.15, %if.end.15, %if.end.15
  %27 = load i32, i32* %value_base_sizeof, align 4, !tbaa !5
  call void @ptr_align_to(i8** %buf.addr, i32 %27) #4
  %28 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %value17 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %s = bitcast %union.gs_param_value_s* %value17 to %struct.gs_param_string_s*
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s, i32 0, i32 0
  store i8* %28, i8** %data, align 8, !tbaa !17
  %value18 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %s19 = bitcast %union.gs_param_value_s* %value18 to %struct.gs_param_string_s*
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s19, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !28
  %value20 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %s21 = bitcast %union.gs_param_value_s* %value20 to %struct.gs_param_string_s*
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s21, i32 0, i32 1
  %29 = load i32, i32* %size, align 4, !tbaa !15
  %30 = load i32, i32* %value_base_sizeof, align 4, !tbaa !5
  %mul = mul i32 %29, %30
  %31 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %idx.ext22 = zext i32 %mul to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %31, i64 %idx.ext22
  store i8* %add.ptr23, i8** %buf.addr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end.15, %if.end.15
  call void @ptr_align_to(i8** %buf.addr, i32 8) #4
  %32 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %33 = bitcast i8* %32 to %struct.gs_param_string_s*
  %value25 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %sa = bitcast %union.gs_param_value_s* %value25 to %struct.gs_param_string_array_s*
  %data26 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa, i32 0, i32 0
  store %struct.gs_param_string_s* %33, %struct.gs_param_string_s** %data26, align 8, !tbaa !23
  %value27 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %sa28 = bitcast %union.gs_param_value_s* %value27 to %struct.gs_param_string_array_s*
  %persistent29 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa28, i32 0, i32 2
  store i32 0, i32* %persistent29, align 4, !tbaa !29
  %value30 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %s31 = bitcast %union.gs_param_value_s* %value30 to %struct.gs_param_string_s*
  %size32 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s31, i32 0, i32 1
  %34 = load i32, i32* %size32, align 4, !tbaa !15
  %35 = load i32, i32* %value_base_sizeof, align 4, !tbaa !5
  %mul33 = mul i32 %34, %35
  %36 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %idx.ext34 = zext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %36, i64 %idx.ext34
  store i8* %add.ptr35, i8** %buf.addr, align 8, !tbaa !1
  %37 = bitcast i32* %str_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = bitcast %struct.gs_param_string_s** %sa36 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %value37 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %sa38 = bitcast %union.gs_param_value_s* %value37 to %struct.gs_param_string_array_s*
  %size39 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa38, i32 0, i32 1
  %39 = load i32, i32* %size39, align 4, !tbaa !21
  store i32 %39, i32* %str_count, align 4, !tbaa !5
  %value40 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %sa41 = bitcast %union.gs_param_value_s* %value40 to %struct.gs_param_string_array_s*
  %data42 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa41, i32 0, i32 0
  %40 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data42, align 8, !tbaa !23
  store %struct.gs_param_string_s* %40, %struct.gs_param_string_s** %sa36, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.24
  %41 = load i32, i32* %str_count, align 4, !tbaa !5
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %str_count, align 4, !tbaa !5
  %cmp43 = icmp sgt i32 %41, 0
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %43 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %sa36, align 8, !tbaa !1
  %data45 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %43, i32 0, i32 0
  store i8* %42, i8** %data45, align 8, !tbaa !17
  %44 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %sa36, align 8, !tbaa !1
  %persistent46 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %44, i32 0, i32 2
  store i32 0, i32* %persistent46, align 4, !tbaa !28
  %45 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %sa36, align 8, !tbaa !1
  %size47 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %45, i32 0, i32 1
  %46 = load i32, i32* %size47, align 4, !tbaa !15
  %47 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %idx.ext48 = zext i32 %46 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %47, i64 %idx.ext48
  store i8* %add.ptr49, i8** %buf.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %sa36, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %48, i32 1
  store %struct.gs_param_string_s* %incdec.ptr, %struct.gs_param_string_s** %sa36, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = bitcast %struct.gs_param_string_s** %sa36 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32* %str_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.15, %if.end.15
  %call51 = call i32 @buf_get_word(i8** %buf.addr) #4
  %value52 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %d = bitcast %union.gs_param_value_s* %value52 to %struct.gs_param_collection_s*
  %size53 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d, i32 0, i32 1
  store i32 %call51, i32* %size53, align 4, !tbaa !24
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %51, i32 0, i32 0
  %52 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !11
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %52, i32 0, i32 1
  %53 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !30
  %54 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  %55 = load i8*, i8** %key, align 8, !tbaa !1
  %value54 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %d55 = bitcast %union.gs_param_value_s* %value54 to %struct.gs_param_collection_s*
  %56 = load i32, i32* %type, align 4, !tbaa !18
  %cmp56 = icmp eq i32 %56, 12
  %cond = select i1 %cmp56, i32 1, i32 0
  %call58 = call i32 %53(%struct.gs_param_list_s* %54, i8* %55, %struct.gs_param_collection_s* %d55, i32 %cond) #4
  store i32 %call58, i32* %code, align 4, !tbaa !5
  %57 = load i32, i32* %code, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %57, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %sw.bb.50
  br label %sw.epilog

if.end.62:                                        ; preds = %sw.bb.50
  call void @ptr_align_to(i8** %buf.addr, i32 8) #4
  %value63 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %d64 = bitcast %union.gs_param_value_s* %value63 to %struct.gs_param_collection_s*
  %list65 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d64, i32 0, i32 0
  %58 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list65, align 8, !tbaa !26
  %59 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %call66 = call i32 @gs_param_list_unserialize(%struct.gs_param_list_s* %58, i8* %59) #4
  store i32 %call66, i32* %code, align 4, !tbaa !5
  %60 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  %procs67 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %60, i32 0, i32 0
  %61 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs67, align 8, !tbaa !11
  %end_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %61, i32 0, i32 2
  %62 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection, align 8, !tbaa !27
  %63 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  %64 = load i8*, i8** %key, align 8, !tbaa !1
  %value68 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 0
  %d69 = bitcast %union.gs_param_value_s* %value68 to %struct.gs_param_collection_s*
  %call70 = call i32 %62(%struct.gs_param_list_s* %63, i8* %64, %struct.gs_param_collection_s* %d69) #4
  store i32 %call70, i32* %temp_code, align 4, !tbaa !5
  %65 = load i32, i32* %code, align 4, !tbaa !5
  %cmp71 = icmp sge i32 %65, 0
  br i1 %cmp71, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.end.62
  %66 = load i32, i32* %code, align 4, !tbaa !5
  %67 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %idx.ext74 = sext i32 %66 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %67, i64 %idx.ext74
  store i8* %add.ptr75, i8** %buf.addr, align 8, !tbaa !1
  %68 = load i32, i32* %temp_code, align 4, !tbaa !5
  store i32 %68, i32* %code, align 4, !tbaa !5
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %if.end.62
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.15
  store i32 -1, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.76, %if.then.61, %for.end, %sw.bb.16, %sw.bb
  %69 = load i32, i32* %code, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %69, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %sw.epilog
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %sw.epilog
  %type81 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  %70 = load i32, i32* %type81, align 4, !tbaa !19
  %cmp82 = icmp ne i32 %70, 11
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.91

land.lhs.true.84:                                 ; preds = %if.end.80
  %type85 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %typed, i32 0, i32 1
  %71 = load i32, i32* %type85, align 4, !tbaa !19
  %cmp86 = icmp ne i32 %71, 12
  br i1 %cmp86, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %land.lhs.true.84
  %72 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  %procs89 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %72, i32 0, i32 0
  %73 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs89, align 8, !tbaa !11
  %xmit_typed = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %73, i32 0, i32 0
  %74 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)** %xmit_typed, align 8, !tbaa !31
  %75 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list.addr, align 8, !tbaa !1
  %76 = load i8*, i8** %key, align 8, !tbaa !1
  %call90 = call i32 %74(%struct.gs_param_list_s* %75, i8* %76, %struct.gs_param_typed_value_s* %typed) #4
  store i32 %call90, i32* %code, align 4, !tbaa !5
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %land.lhs.true.84, %if.end.80
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.91, %if.then.79, %if.then
  %77 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %temp_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %value_base_sizeof to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %value_top_sizeof to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %key_sizeof to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i8** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast %struct.gs_param_typed_value_s* %typed to i8*
  call void @llvm.lifetime.end(i64 24, i8* %83) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %do.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  %84 = load i32, i32* %code, align 4, !tbaa !5
  %cmp98 = icmp sge i32 %84, 0
  br i1 %cmp98, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %cleanup
  %85 = load i32, i32* %code, align 4, !tbaa !5
  %cmp100 = icmp sge i32 %85, 0
  br i1 %cmp100, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %86 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %87 = load i8*, i8** %orig_buf, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %86 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %87 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %88 = load i32, i32* %code, align 4, !tbaa !5
  %conv102 = sext i32 %88 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond103 = phi i64 [ %sub.ptr.sub, %cond.true ], [ %conv102, %cond.false ]
  %conv104 = trunc i64 %cond103 to i32
  store i32 1, i32* %cleanup.dest.slot
  %89 = bitcast i8** %orig_buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  ret i32 %conv104

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @buf_get_word(i8** %src) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %dest = alloca i32, align 4
  %chunk = alloca i8, align 1
  %shift = alloca i32, align 4
  store i8** %src, i8*** %src.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %dest, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %chunk) #1
  %1 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %shift, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i8**, i8*** %src.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %2, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %2, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !18
  store i8 %4, i8* %chunk, align 1, !tbaa !18
  %5 = load i8, i8* %chunk, align 1, !tbaa !18
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 127
  %6 = load i32, i32* %shift, align 4, !tbaa !5
  %shl = shl i32 %and, %6
  %7 = load i32, i32* %dest, align 4, !tbaa !5
  %or = or i32 %7, %shl
  store i32 %or, i32* %dest, align 4, !tbaa !5
  %8 = load i32, i32* %shift, align 4, !tbaa !5
  %add = add i32 %8, 7
  store i32 %add, i32* %shift, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load i8, i8* %chunk, align 1, !tbaa !18
  %conv1 = zext i8 %9 to i32
  %and2 = and i32 %conv1, 128
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load i32, i32* %dest, align 4, !tbaa !5
  %11 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  call void @llvm.lifetime.end(i64 1, i8* %chunk) #1
  %12 = bitcast i32* %dest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @ptr_align_to(i8** %src, i32 %alignment) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %alignment.addr = alloca i32, align 4
  store i8** %src, i8*** %src.addr, align 8, !tbaa !1
  store i32 %alignment, i32* %alignment.addr, align 4, !tbaa !5
  %0 = load i8**, i8*** %src.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %0, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %2 = load i32, i32* %alignment.addr, align 4, !tbaa !5
  %sub = sub i32 %2, 1
  %conv = zext i32 %sub to i64
  %and = and i64 %sub.ptr.sub, %conv
  %conv1 = trunc i64 %and to i32
  %sub2 = sub nsw i32 0, %conv1
  %3 = load i32, i32* %alignment.addr, align 4, !tbaa !5
  %sub3 = sub i32 %3, 1
  %and4 = and i32 %sub2, %sub3
  %4 = load i8**, i8*** %src.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %4, align 8, !tbaa !1
  %idx.ext = zext i32 %and4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %4, align 8, !tbaa !1
  ret void
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
!7 = !{!8, !2, i64 0}
!8 = !{!"", !2, i64 0, !2, i64 8, !6, i64 16}
!9 = !{!8, !2, i64 8}
!10 = !{!8, !6, i64 16}
!11 = !{!12, !2, i64 0}
!12 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!13 = !{!14, !2, i64 24}
!14 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!15 = !{!16, !6, i64 8}
!16 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!17 = !{!16, !2, i64 0}
!18 = !{!3, !3, i64 0}
!19 = !{!20, !3, i64 16}
!20 = !{!"gs_param_typed_value_s", !3, i64 0, !3, i64 16}
!21 = !{!22, !6, i64 8}
!22 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!23 = !{!22, !2, i64 0}
!24 = !{!25, !6, i64 8}
!25 = !{!"gs_param_collection_s", !2, i64 0, !6, i64 8}
!26 = !{!25, !2, i64 0}
!27 = !{!14, !2, i64 16}
!28 = !{!16, !6, i64 12}
!29 = !{!22, !6, i64 12}
!30 = !{!14, !2, i64 8}
!31 = !{!14, !2, i64 0}
