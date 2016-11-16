; ModuleID = './scfparam.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_param_item_s = type { i8*, i8, i16 }
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_CF_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.stream_template_s = type opaque
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }

@s_CF_param_items = internal constant [12 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8 1, i16 120 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8 2, i16 124 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8 1, i16 128 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8 1, i16 132 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8 2, i16 136 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8 2, i16 140 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8 1, i16 144 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8 1, i16 148 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8 2, i16 152 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8 1, i16 108 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8 2, i16 156 }, %struct.gs_param_item_s zeroinitializer], align 16
@.str = private unnamed_addr constant [13 x i8] c"Uncompressed\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"EndOfLine\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"EncodedByteAlign\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Columns\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Rows\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"EndOfBlock\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"BlackIs1\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"DamagedRowsBeforeError\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"FirstBitLowOrder\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"DecodedByteAlign\00", align 1

; Function Attrs: nounwind uwtable
define i32 @s_CF_get_params(%struct.gs_param_list_s* %plist, %struct.stream_CF_state_s* %ss, i32 %all) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ss.addr = alloca %struct.stream_CF_state_s*, align 8
  %all.addr = alloca i32, align 4
  %cfs_defaults = alloca %struct.stream_CF_state_s, align 8
  %defaults = alloca %struct.stream_CF_state_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.stream_CF_state_s* %ss, %struct.stream_CF_state_s** %ss.addr, align 8, !tbaa !1
  store i32 %all, i32* %all.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_CF_state_s* %cfs_defaults to i8*
  call void @llvm.lifetime.start(i64 192, i8* %0) #1
  %1 = bitcast %struct.stream_CF_state_s** %defaults to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %all.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.stream_CF_state_s* null, %struct.stream_CF_state_s** %defaults, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %Uncompressed = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %cfs_defaults, i32 0, i32 8
  store i32 0, i32* %Uncompressed, align 4, !tbaa !7
  %K = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %cfs_defaults, i32 0, i32 9
  store i32 0, i32* %K, align 4, !tbaa !9
  %EndOfLine = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %cfs_defaults, i32 0, i32 10
  store i32 0, i32* %EndOfLine, align 4, !tbaa !10
  %EncodedByteAlign = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %cfs_defaults, i32 0, i32 11
  store i32 0, i32* %EncodedByteAlign, align 4, !tbaa !11
  %Columns = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %cfs_defaults, i32 0, i32 12
  store i32 1728, i32* %Columns, align 4, !tbaa !12
  %Rows = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %cfs_defaults, i32 0, i32 13
  store i32 0, i32* %Rows, align 4, !tbaa !13
  %EndOfBlock = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %cfs_defaults, i32 0, i32 14
  store i32 1, i32* %EndOfBlock, align 4, !tbaa !14
  %BlackIs1 = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %cfs_defaults, i32 0, i32 15
  store i32 0, i32* %BlackIs1, align 4, !tbaa !15
  %DamagedRowsBeforeError = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %cfs_defaults, i32 0, i32 16
  store i32 0, i32* %DamagedRowsBeforeError, align 4, !tbaa !16
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %cfs_defaults, i32 0, i32 5
  store i32 0, i32* %FirstBitLowOrder, align 4, !tbaa !17
  %DecodedByteAlign = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %cfs_defaults, i32 0, i32 17
  store i32 1, i32* %DecodedByteAlign, align 4, !tbaa !18
  %lbuf = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %cfs_defaults, i32 0, i32 19
  store i8* null, i8** %lbuf, align 8, !tbaa !19
  %lprev = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %cfs_defaults, i32 0, i32 20
  store i8* null, i8** %lprev, align 8, !tbaa !20
  %error_string = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %cfs_defaults, i32 0, i32 4
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %error_string, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !21
  store %struct.stream_CF_state_s* %cfs_defaults, %struct.stream_CF_state_s** %defaults, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %4 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %ss.addr, align 8, !tbaa !1
  %5 = bitcast %struct.stream_CF_state_s* %4 to i8*
  %6 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %defaults, align 8, !tbaa !1
  %7 = bitcast %struct.stream_CF_state_s* %6 to i8*
  %call = call i32 @gs_param_write_items(%struct.gs_param_list_s* %3, i8* %5, i8* %7, %struct.gs_param_item_s* getelementptr inbounds ([12 x %struct.gs_param_item_s], [12 x %struct.gs_param_item_s]* @s_CF_param_items, i32 0, i32 0)) #3
  %8 = bitcast %struct.stream_CF_state_s** %defaults to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = bitcast %struct.stream_CF_state_s* %cfs_defaults to i8*
  call void @llvm.lifetime.end(i64 192, i8* %9) #1
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_param_write_items(%struct.gs_param_list_s*, i8*, i8*, %struct.gs_param_item_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @s_CF_put_params(%struct.gs_param_list_s* %plist, %struct.stream_CF_state_s* %ss) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ss.addr = alloca %struct.stream_CF_state_s*, align 8
  %state = alloca %struct.stream_CF_state_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.stream_CF_state_s* %ss, %struct.stream_CF_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_CF_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 192, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %ss.addr, align 8, !tbaa !1
  %3 = bitcast %struct.stream_CF_state_s* %state to i8*
  %4 = bitcast %struct.stream_CF_state_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 192, i32 8, i1 false), !tbaa.struct !22
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %6 = bitcast %struct.stream_CF_state_s* %state to i8*
  %call = call i32 @gs_param_read_items(%struct.gs_param_list_s* %5, i8* %6, %struct.gs_param_item_s* getelementptr inbounds ([12 x %struct.gs_param_item_s], [12 x %struct.gs_param_item_s]* @s_CF_param_items, i32 0, i32 0)) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %K = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %state, i32 0, i32 9
  %8 = load i32, i32* %K, align 4, !tbaa !9
  %cmp1 = icmp slt i32 %8, -1000000
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %K2 = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %state, i32 0, i32 9
  %9 = load i32, i32* %K2, align 4, !tbaa !9
  %cmp3 = icmp sgt i32 %9, 1000000
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %Columns = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %state, i32 0, i32 12
  %10 = load i32, i32* %Columns, align 4, !tbaa !12
  %cmp5 = icmp slt i32 %10, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %Columns7 = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %state, i32 0, i32 12
  %11 = load i32, i32* %Columns7, align 4, !tbaa !12
  %cmp8 = icmp sgt i32 %11, 54613333
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %Rows = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %state, i32 0, i32 13
  %12 = load i32, i32* %Rows, align 4, !tbaa !13
  %cmp10 = icmp slt i32 %12, 0
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %Rows12 = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %state, i32 0, i32 13
  %13 = load i32, i32* %Rows12, align 4, !tbaa !13
  %cmp13 = icmp sgt i32 %13, 1000000
  br i1 %cmp13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %DamagedRowsBeforeError = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %state, i32 0, i32 16
  %14 = load i32, i32* %DamagedRowsBeforeError, align 4, !tbaa !16
  %cmp15 = icmp slt i32 %14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.14
  %DamagedRowsBeforeError17 = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %state, i32 0, i32 16
  %15 = load i32, i32* %DamagedRowsBeforeError17, align 4, !tbaa !16
  %cmp18 = icmp sgt i32 %15, 1000000
  br i1 %cmp18, label %if.then, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %DecodedByteAlign = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %state, i32 0, i32 17
  %16 = load i32, i32* %DecodedByteAlign, align 4, !tbaa !18
  %cmp20 = icmp slt i32 %16, 1
  br i1 %cmp20, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.19
  %DecodedByteAlign22 = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %state, i32 0, i32 17
  %17 = load i32, i32* %DecodedByteAlign22, align 4, !tbaa !18
  %cmp23 = icmp sgt i32 %17, 16
  br i1 %cmp23, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %DecodedByteAlign25 = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %state, i32 0, i32 17
  %18 = load i32, i32* %DecodedByteAlign25, align 4, !tbaa !18
  %DecodedByteAlign26 = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %state, i32 0, i32 17
  %19 = load i32, i32* %DecodedByteAlign26, align 4, !tbaa !18
  %sub = sub nsw i32 %19, 1
  %and = and i32 %18, %sub
  %cmp27 = icmp ne i32 %and, 0
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.24, %lor.lhs.false.21, %lor.lhs.false.19, %lor.lhs.false.16, %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false, %land.lhs.true
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.24, %entry
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp sge i32 %20, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end
  %21 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %ss.addr, align 8, !tbaa !1
  %22 = bitcast %struct.stream_CF_state_s* %21 to i8*
  %23 = bitcast %struct.stream_CF_state_s* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 192, i32 8, i1 false), !tbaa.struct !22
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.stream_CF_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 192, i8* %26) #1
  ret i32 %24
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_param_read_items(%struct.gs_param_list_s*, i8*, %struct.gs_param_item_s*) #2

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
!7 = !{!8, !6, i64 120}
!8 = !{!"stream_CF_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !2, i64 168, !2, i64 176, !6, i64 184}
!9 = !{!8, !6, i64 124}
!10 = !{!8, !6, i64 128}
!11 = !{!8, !6, i64 132}
!12 = !{!8, !6, i64 136}
!13 = !{!8, !6, i64 140}
!14 = !{!8, !6, i64 144}
!15 = !{!8, !6, i64 148}
!16 = !{!8, !6, i64 152}
!17 = !{!8, !6, i64 108}
!18 = !{!8, !6, i64 156}
!19 = !{!8, !2, i64 168}
!20 = !{!8, !2, i64 176}
!21 = !{!3, !3, i64 0}
!22 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !5, i64 28, i64 80, !21, i64 108, i64 4, !5, i64 112, i64 4, !5, i64 116, i64 4, !5, i64 120, i64 4, !5, i64 124, i64 4, !5, i64 128, i64 4, !5, i64 132, i64 4, !5, i64 136, i64 4, !5, i64 140, i64 4, !5, i64 144, i64 4, !5, i64 148, i64 4, !5, i64 152, i64 4, !5, i64 156, i64 4, !5, i64 160, i64 4, !5, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 4, !5}
