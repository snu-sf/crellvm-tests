; ModuleID = './zcid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque

@.str = private unnamed_addr constant [9 x i8] c"Registry\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Ordering\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Supplement\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cid_system_info_param(%struct.gs_cid_system_info_s* %pcidsi, %struct.ref_s* %prcidsi) #0 {
entry:
  %retval = alloca i32, align 4
  %pcidsi.addr = alloca %struct.gs_cid_system_info_s*, align 8
  %prcidsi.addr = alloca %struct.ref_s*, align 8
  %pregistry = alloca %struct.ref_s*, align 8
  %pordering = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cid_system_info_s* %pcidsi, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  store %struct.ref_s* %prcidsi, %struct.ref_s** %prcidsi.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pregistry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s** %pordering to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.ref_s*, %struct.ref_s** %prcidsi.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %prcidsi.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.ref_s** %pregistry) #3
  %cmp2 = icmp sle i32 %call, 0
  br i1 %cmp2, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** %prcidsi.addr, align 8, !tbaa !1
  %call4 = call i32 @dict_find_string(%struct.ref_s* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct.ref_s** %pordering) #3
  %cmp5 = icmp sle i32 %call4, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %8 = load %struct.ref_s*, %struct.ref_s** %pregistry, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %9 = load i16, i16* %type_attrs10, align 2, !tbaa !6
  %conv11 = zext i16 %9 to i32
  %and = and i32 %conv11, 16160
  %cmp12 = icmp eq i32 %and, 4640
  br i1 %cmp12, label %if.end.21, label %if.then.14

if.then.14:                                       ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %pregistry, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %11 = bitcast i16* %type_attrs16 to i8*
  %arrayidx17 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx17, align 1, !tbaa !5
  %conv18 = zext i8 %12 to i32
  %cmp19 = icmp eq i32 %conv18, 18
  %lnot = xor i1 %cmp19, true
  %cond = select i1 %lnot, i32 -20, i32 -7
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.21
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.22

do.body.22:                                       ; preds = %do.end
  %13 = load %struct.ref_s*, %struct.ref_s** %pordering, align 8, !tbaa !1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  %14 = load i16, i16* %type_attrs24, align 2, !tbaa !6
  %conv25 = zext i16 %14 to i32
  %and26 = and i32 %conv25, 16160
  %cmp27 = icmp eq i32 %and26, 4640
  br i1 %cmp27, label %if.end.38, label %if.then.29

if.then.29:                                       ; preds = %do.body.22
  %15 = load %struct.ref_s*, %struct.ref_s** %pordering, align 8, !tbaa !1
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs31 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 0
  %16 = bitcast i16* %type_attrs31 to i8*
  %arrayidx32 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx32, align 1, !tbaa !5
  %conv33 = zext i8 %17 to i32
  %cmp34 = icmp eq i32 %conv33, 18
  %lnot36 = xor i1 %cmp34, true
  %cond37 = select i1 %lnot36, i32 -20, i32 -7
  store i32 %cond37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %do.body.22
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %18 = load %struct.ref_s*, %struct.ref_s** %pregistry, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %19 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %20 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Registry = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %20, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry, i32 0, i32 0
  store i8* %19, i8** %data, align 8, !tbaa !11
  %21 = load %struct.ref_s*, %struct.ref_s** %pregistry, align 8, !tbaa !1
  %tas41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas41, i32 0, i32 2
  %22 = load i32, i32* %rsize, align 4, !tbaa !14
  %23 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Registry42 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %23, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry42, i32 0, i32 1
  store i32 %22, i32* %size, align 4, !tbaa !15
  %24 = load %struct.ref_s*, %struct.ref_s** %pordering, align 8, !tbaa !1
  %value43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %const_bytes44 = bitcast %union.v* %value43 to i8**
  %25 = load i8*, i8** %const_bytes44, align 8, !tbaa !1
  %26 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Ordering = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %26, i32 0, i32 1
  %data45 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering, i32 0, i32 0
  store i8* %25, i8** %data45, align 8, !tbaa !16
  %27 = load %struct.ref_s*, %struct.ref_s** %pordering, align 8, !tbaa !1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %rsize47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 2
  %28 = load i32, i32* %rsize47, align 4, !tbaa !14
  %29 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Ordering48 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %29, i32 0, i32 1
  %size49 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering48, i32 0, i32 1
  store i32 %28, i32* %size49, align 4, !tbaa !17
  %30 = load %struct.ref_s*, %struct.ref_s** %prcidsi.addr, align 8, !tbaa !1
  %31 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Supplement = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %31, i32 0, i32 2
  %call50 = call i32 @dict_int_param(%struct.ref_s* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 2147483647, i32 -1, i32* %Supplement) #3
  store i32 %call50, i32* %code, align 4, !tbaa !18
  %32 = load i32, i32* %code, align 4, !tbaa !18
  %cmp51 = icmp slt i32 %32, 0
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.40
  %33 = load i32, i32* %code, align 4, !tbaa !18
  br label %cond.end

cond.false:                                       ; preds = %do.end.40
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond53 = phi i32 [ %33, %cond.true ], [ 0, %cond.false ]
  store i32 %cond53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.29, %if.then.14, %if.then.7, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.ref_s** %pordering to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.ref_s** %pregistry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @cid_to_TT_charcode(%struct.gs_memory_s* %mem, %struct.ref_s* %Decoding, %struct.ref_s* %TT_cmap, %struct.ref_s* %SubstNWP, i32 %nCID, i32* %c, %struct.ref_s* %src_type, %struct.ref_s* %dst_type) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %Decoding.addr = alloca %struct.ref_s*, align 8
  %TT_cmap.addr = alloca %struct.ref_s*, align 8
  %SubstNWP.addr = alloca %struct.ref_s*, align 8
  %nCID.addr = alloca i32, align 4
  %c.addr = alloca i32*, align 8
  %src_type.addr = alloca %struct.ref_s*, align 8
  %dst_type.addr = alloca %struct.ref_s*, align 8
  %SubstNWP_length = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rb = alloca %struct.ref_s, align 8
  %re = alloca %struct.ref_s, align 8
  %rs = alloca %struct.ref_s, align 8
  %nb = alloca i32, align 4
  %ne = alloca i32, align 4
  %ns = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %Decoding, %struct.ref_s** %Decoding.addr, align 8, !tbaa !1
  store %struct.ref_s* %TT_cmap, %struct.ref_s** %TT_cmap.addr, align 8, !tbaa !1
  store %struct.ref_s* %SubstNWP, %struct.ref_s** %SubstNWP.addr, align 8, !tbaa !1
  store i32 %nCID, i32* %nCID.addr, align 4, !tbaa !18
  store i32* %c, i32** %c.addr, align 8, !tbaa !1
  store %struct.ref_s* %src_type, %struct.ref_s** %src_type.addr, align 8, !tbaa !1
  store %struct.ref_s* %dst_type, %struct.ref_s** %dst_type.addr, align 8, !tbaa !1
  %0 = bitcast i32* %SubstNWP_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %SubstNWP.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !14
  store i32 %2, i32* %SubstNWP_length, align 4, !tbaa !18
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %Decoding.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %TT_cmap.addr, align 8, !tbaa !1
  %8 = load i32, i32* %nCID.addr, align 4, !tbaa !18
  %9 = load i32*, i32** %c.addr, align 8, !tbaa !1
  %call = call i32 @TT_char_code_from_CID_no_subst(%struct.gs_memory_s* %5, %struct.ref_s* %6, %struct.ref_s* %7, i32 %8, i32* %9) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %src_type.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.88

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !18
  %12 = load i32, i32* %SubstNWP_length, align 4, !tbaa !18
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = bitcast %struct.ref_s* %rb to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  %14 = bitcast %struct.ref_s* %re to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #1
  %15 = bitcast %struct.ref_s* %rs to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #1
  %16 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %ne to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %ns to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %SubstNWP.addr, align 8, !tbaa !1
  %21 = load i32, i32* %i, align 4, !tbaa !18
  %add = add nsw i32 %21, 1
  %conv = sext i32 %add to i64
  %call2 = call i32 @array_get(%struct.gs_memory_s* %19, %struct.ref_s* %20, i64 %conv, %struct.ref_s* %rb) #3
  store i32 %call2, i32* %code, align 4, !tbaa !18
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  %22 = load i32, i32* %code, align 4, !tbaa !18
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %for.body
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %24 = load %struct.ref_s*, %struct.ref_s** %SubstNWP.addr, align 8, !tbaa !1
  %25 = load i32, i32* %i, align 4, !tbaa !18
  %add7 = add nsw i32 %25, 2
  %conv8 = sext i32 %add7 to i64
  %call9 = call i32 @array_get(%struct.gs_memory_s* %23, %struct.ref_s* %24, i64 %conv8, %struct.ref_s* %re) #3
  store i32 %call9, i32* %code, align 4, !tbaa !18
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.6
  %26 = load i32, i32* %code, align 4, !tbaa !18
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.6
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %28 = load %struct.ref_s*, %struct.ref_s** %SubstNWP.addr, align 8, !tbaa !1
  %29 = load i32, i32* %i, align 4, !tbaa !18
  %add14 = add nsw i32 %29, 3
  %conv15 = sext i32 %add14 to i64
  %call16 = call i32 @array_get(%struct.gs_memory_s* %27, %struct.ref_s* %28, i64 %conv15, %struct.ref_s* %rs) #3
  store i32 %call16, i32* %code, align 4, !tbaa !18
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.13
  %30 = load i32, i32* %code, align 4, !tbaa !18
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.13
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rb, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %31 = load i64, i64* %intval, align 8, !tbaa !19
  %conv21 = trunc i64 %31 to i32
  store i32 %conv21, i32* %nb, align 4, !tbaa !18
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %re, i32 0, i32 1
  %intval23 = bitcast %union.v* %value22 to i64*
  %32 = load i64, i64* %intval23, align 8, !tbaa !19
  %conv24 = trunc i64 %32 to i32
  store i32 %conv24, i32* %ne, align 4, !tbaa !18
  %value25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rs, i32 0, i32 1
  %intval26 = bitcast %union.v* %value25 to i64*
  %33 = load i64, i64* %intval26, align 8, !tbaa !19
  %conv27 = trunc i64 %33 to i32
  store i32 %conv27, i32* %ns, align 4, !tbaa !18
  %34 = load i32, i32* %nCID.addr, align 4, !tbaa !18
  %35 = load i32, i32* %nb, align 4, !tbaa !18
  %cmp28 = icmp uge i32 %34, %35
  br i1 %cmp28, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.end.20
  %36 = load i32, i32* %nCID.addr, align 4, !tbaa !18
  %37 = load i32, i32* %ne, align 4, !tbaa !18
  %cmp30 = icmp ule i32 %36, %37
  br i1 %cmp30, label %if.then.32, label %if.end.52

if.then.32:                                       ; preds = %land.lhs.true
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %39 = load %struct.ref_s*, %struct.ref_s** %Decoding.addr, align 8, !tbaa !1
  %40 = load %struct.ref_s*, %struct.ref_s** %TT_cmap.addr, align 8, !tbaa !1
  %41 = load i32, i32* %ns, align 4, !tbaa !18
  %42 = load i32, i32* %nCID.addr, align 4, !tbaa !18
  %43 = load i32, i32* %nb, align 4, !tbaa !18
  %sub = sub i32 %42, %43
  %add33 = add i32 %41, %sub
  %44 = load i32*, i32** %c.addr, align 8, !tbaa !1
  %call34 = call i32 @TT_char_code_from_CID_no_subst(%struct.gs_memory_s* %38, %struct.ref_s* %39, %struct.ref_s* %40, i32 %add33, i32* %44) #3
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.51

if.then.36:                                       ; preds = %if.then.32
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %46 = load %struct.ref_s*, %struct.ref_s** %SubstNWP.addr, align 8, !tbaa !1
  %47 = load i32, i32* %i, align 4, !tbaa !18
  %add37 = add nsw i32 %47, 0
  %conv38 = sext i32 %add37 to i64
  %48 = load %struct.ref_s*, %struct.ref_s** %src_type.addr, align 8, !tbaa !1
  %call39 = call i32 @array_get(%struct.gs_memory_s* %45, %struct.ref_s* %46, i64 %conv38, %struct.ref_s* %48) #3
  store i32 %call39, i32* %code, align 4, !tbaa !18
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.36
  %49 = load i32, i32* %code, align 4, !tbaa !18
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.then.36
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %51 = load %struct.ref_s*, %struct.ref_s** %SubstNWP.addr, align 8, !tbaa !1
  %52 = load i32, i32* %i, align 4, !tbaa !18
  %add44 = add nsw i32 %52, 4
  %conv45 = sext i32 %add44 to i64
  %53 = load %struct.ref_s*, %struct.ref_s** %dst_type.addr, align 8, !tbaa !1
  %call46 = call i32 @array_get(%struct.gs_memory_s* %50, %struct.ref_s* %51, i64 %conv45, %struct.ref_s* %53) #3
  store i32 %call46, i32* %code, align 4, !tbaa !18
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.43
  %54 = load i32, i32* %code, align 4, !tbaa !18
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %if.end.43
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.then.32
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %land.lhs.true, %if.end.20
  %55 = load i32, i32* %nCID.addr, align 4, !tbaa !18
  %56 = load i32, i32* %ns, align 4, !tbaa !18
  %cmp53 = icmp uge i32 %55, %56
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.81

land.lhs.true.55:                                 ; preds = %if.end.52
  %57 = load i32, i32* %nCID.addr, align 4, !tbaa !18
  %58 = load i32, i32* %ns, align 4, !tbaa !18
  %59 = load i32, i32* %ne, align 4, !tbaa !18
  %60 = load i32, i32* %nb, align 4, !tbaa !18
  %sub56 = sub nsw i32 %59, %60
  %add57 = add nsw i32 %58, %sub56
  %cmp58 = icmp ule i32 %57, %add57
  br i1 %cmp58, label %if.then.60, label %if.end.81

if.then.60:                                       ; preds = %land.lhs.true.55
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %62 = load %struct.ref_s*, %struct.ref_s** %Decoding.addr, align 8, !tbaa !1
  %63 = load %struct.ref_s*, %struct.ref_s** %TT_cmap.addr, align 8, !tbaa !1
  %64 = load i32, i32* %nb, align 4, !tbaa !18
  %65 = load i32, i32* %nCID.addr, align 4, !tbaa !18
  %66 = load i32, i32* %ns, align 4, !tbaa !18
  %sub61 = sub i32 %65, %66
  %add62 = add i32 %64, %sub61
  %67 = load i32*, i32** %c.addr, align 8, !tbaa !1
  %call63 = call i32 @TT_char_code_from_CID_no_subst(%struct.gs_memory_s* %61, %struct.ref_s* %62, %struct.ref_s* %63, i32 %add62, i32* %67) #3
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.80

if.then.65:                                       ; preds = %if.then.60
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %69 = load %struct.ref_s*, %struct.ref_s** %SubstNWP.addr, align 8, !tbaa !1
  %70 = load i32, i32* %i, align 4, !tbaa !18
  %add66 = add nsw i32 %70, 0
  %conv67 = sext i32 %add66 to i64
  %71 = load %struct.ref_s*, %struct.ref_s** %dst_type.addr, align 8, !tbaa !1
  %call68 = call i32 @array_get(%struct.gs_memory_s* %68, %struct.ref_s* %69, i64 %conv67, %struct.ref_s* %71) #3
  store i32 %call68, i32* %code, align 4, !tbaa !18
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.65
  %72 = load i32, i32* %code, align 4, !tbaa !18
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %if.then.65
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %74 = load %struct.ref_s*, %struct.ref_s** %SubstNWP.addr, align 8, !tbaa !1
  %75 = load i32, i32* %i, align 4, !tbaa !18
  %add73 = add nsw i32 %75, 4
  %conv74 = sext i32 %add73 to i64
  %76 = load %struct.ref_s*, %struct.ref_s** %src_type.addr, align 8, !tbaa !1
  %call75 = call i32 @array_get(%struct.gs_memory_s* %73, %struct.ref_s* %74, i64 %conv74, %struct.ref_s* %76) #3
  store i32 %call75, i32* %code, align 4, !tbaa !18
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.72
  %77 = load i32, i32* %code, align 4, !tbaa !18
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %if.end.72
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %if.then.60
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %land.lhs.true.55, %if.end.52
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.81, %if.end.79, %if.then.78, %if.then.71, %if.end.50, %if.then.49, %if.then.42, %if.then.19, %if.then.12, %if.then.5
  %78 = bitcast i32* %ns to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %ne to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast %struct.ref_s* %rs to i8*
  call void @llvm.lifetime.end(i64 16, i8* %81) #1
  %82 = bitcast %struct.ref_s* %re to i8*
  call void @llvm.lifetime.end(i64 16, i8* %82) #1
  %83 = bitcast %struct.ref_s* %rb to i8*
  call void @llvm.lifetime.end(i64 16, i8* %83) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.88 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %84 = load i32, i32* %i, align 4, !tbaa !18
  %add87 = add nsw i32 %84, 5
  store i32 %add87, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load i32*, i32** %c.addr, align 8, !tbaa !1
  store i32 0, i32* %85, align 4, !tbaa !18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.88

cleanup.88:                                       ; preds = %for.end, %cleanup, %if.then
  %86 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %SubstNWP_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define internal i32 @TT_char_code_from_CID_no_subst(%struct.gs_memory_s* %mem, %struct.ref_s* %Decoding, %struct.ref_s* %TT_cmap, i32 %nCID, i32* %c) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %Decoding.addr = alloca %struct.ref_s*, align 8
  %TT_cmap.addr = alloca %struct.ref_s*, align 8
  %nCID.addr = alloca i32, align 4
  %c.addr = alloca i32*, align 8
  %DecodingArray = alloca %struct.ref_s*, align 8
  %char_code = alloca %struct.ref_s, align 8
  %char_code1 = alloca %struct.ref_s, align 8
  %ih = alloca %struct.ref_s, align 8
  %glyph_index = alloca %struct.ref_s*, align 8
  %found = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %Decoding, %struct.ref_s** %Decoding.addr, align 8, !tbaa !1
  store %struct.ref_s* %TT_cmap, %struct.ref_s** %TT_cmap.addr, align 8, !tbaa !1
  store i32 %nCID, i32* %nCID.addr, align 4, !tbaa !18
  store i32* %c, i32** %c.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %DecodingArray to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s* %char_code to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.ref_s* %char_code1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast %struct.ref_s* %ih to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.ref_s** %glyph_index to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %found, align 4, !tbaa !18
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %nCID.addr, align 4, !tbaa !18
  %rem = urem i32 %7, 256
  store i32 %rem, i32* %i, align 4, !tbaa !18
  %8 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %nCID.addr, align 4, !tbaa !18
  %div = udiv i32 %9, 256
  %conv = zext i32 %div to i64
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ih, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !19
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ih, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !6
  %10 = load %struct.ref_s*, %struct.ref_s** %Decoding.addr, align 8, !tbaa !1
  %call = call i32 @dict_find(%struct.ref_s* %10, %struct.ref_s* %ih, %struct.ref_s** %DecodingArray) #3
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %DecodingArray, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %12 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv4 = zext i8 %13 to i32
  %cmp5 = icmp eq i32 %conv4, 4
  br i1 %cmp5, label %lor.lhs.false.7, label %if.then

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %DecodingArray, align 8, !tbaa !1
  %16 = load i32, i32* %i, align 4, !tbaa !18
  %conv8 = sext i32 %16 to i64
  %call9 = call i32 @array_get(%struct.gs_memory_s* %14, %struct.ref_s* %15, i64 %conv8, %struct.ref_s* %char_code) #3
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.7
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %char_code, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %17 = bitcast i16* %type_attrs13 to i8*
  %arrayidx14 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx14, align 1, !tbaa !5
  %conv15 = zext i8 %18 to i32
  %cmp16 = icmp eq i32 %conv15, 11
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end
  store i32 1, i32* %n, align 4, !tbaa !18
  br label %if.end.29

if.else:                                          ; preds = %if.end
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %char_code, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  %19 = bitcast i16* %type_attrs20 to i8*
  %arrayidx21 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx21, align 1, !tbaa !5
  %conv22 = zext i8 %20 to i32
  %cmp23 = icmp eq i32 %conv22, 4
  br i1 %cmp23, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.else
  store %struct.ref_s* %char_code, %struct.ref_s** %DecodingArray, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !18
  %21 = load %struct.ref_s*, %struct.ref_s** %DecodingArray, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 2
  %22 = load i32, i32* %rsize, align 4, !tbaa !14
  store i32 %22, i32* %n, align 4, !tbaa !18
  br label %if.end.28

if.else.27:                                       ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %23 = load i32, i32* %n, align 4, !tbaa !18
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %n, align 4, !tbaa !18
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = load %struct.ref_s*, %struct.ref_s** %DecodingArray, align 8, !tbaa !1
  %26 = load i32, i32* %i, align 4, !tbaa !18
  %conv30 = sext i32 %26 to i64
  %call31 = call i32 @array_get(%struct.gs_memory_s* %24, %struct.ref_s* %25, i64 %conv30, %struct.ref_s* %char_code1) #3
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.41, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %for.body
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %char_code1, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  %27 = bitcast i16* %type_attrs36 to i8*
  %arrayidx37 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx37, align 1, !tbaa !5
  %conv38 = zext i8 %28 to i32
  %cmp39 = icmp eq i32 %conv38, 11
  br i1 %cmp39, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %lor.lhs.false.34, %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %lor.lhs.false.34
  %29 = load %struct.ref_s*, %struct.ref_s** %TT_cmap.addr, align 8, !tbaa !1
  %call43 = call i32 @dict_find(%struct.ref_s* %29, %struct.ref_s* %char_code1, %struct.ref_s** %glyph_index) #3
  %cmp44 = icmp sge i32 %call43, 0
  br i1 %cmp44, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %if.end.42
  %30 = load %struct.ref_s*, %struct.ref_s** %glyph_index, align 8, !tbaa !1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  %31 = bitcast i16* %type_attrs47 to i8*
  %arrayidx48 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx48, align 1, !tbaa !5
  %conv49 = zext i8 %32 to i32
  %cmp50 = icmp eq i32 %conv49, 11
  br i1 %cmp50, label %if.then.52, label %if.end.60

if.then.52:                                       ; preds = %land.lhs.true
  %33 = load %struct.ref_s*, %struct.ref_s** %glyph_index, align 8, !tbaa !1
  %value53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 1
  %intval54 = bitcast %union.v* %value53 to i64*
  %34 = load i64, i64* %intval54, align 8, !tbaa !19
  %conv55 = trunc i64 %34 to i32
  %35 = load i32*, i32** %c.addr, align 8, !tbaa !1
  store i32 %conv55, i32* %35, align 4, !tbaa !18
  store i32 1, i32* %found, align 4, !tbaa !18
  %36 = load i32*, i32** %c.addr, align 8, !tbaa !1
  %37 = load i32, i32* %36, align 4, !tbaa !18
  %cmp56 = icmp ne i32 %37, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.52
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.then.52
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %land.lhs.true, %if.end.42
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %38 = load i32, i32* %i, align 4, !tbaa !18
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %found, align 4, !tbaa !18
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.58, %if.then.41, %if.else.27, %if.then
  %40 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast %struct.ref_s** %glyph_index to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.ref_s* %ih to i8*
  call void @llvm.lifetime.end(i64 16, i8* %44) #1
  %45 = bitcast %struct.ref_s* %char_code1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %45) #1
  %46 = bitcast %struct.ref_s* %char_code to i8*
  call void @llvm.lifetime.end(i64 16, i8* %46) #1
  %47 = bitcast %struct.ref_s** %DecodingArray to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = load i32, i32* %retval
  ret i32 %48
}

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @cid_fill_CIDMap(%struct.gs_memory_s* %mem, %struct.ref_s* %Decoding, %struct.ref_s* %TT_cmap, %struct.ref_s* %SubstNWP, i32 %GDBytes, %struct.ref_s* %CIDMap) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %Decoding.addr = alloca %struct.ref_s*, align 8
  %TT_cmap.addr = alloca %struct.ref_s*, align 8
  %SubstNWP.addr = alloca %struct.ref_s*, align 8
  %GDBytes.addr = alloca i32, align 4
  %CIDMap.addr = alloca %struct.ref_s*, align 8
  %dict_enum = alloca i32, align 4
  %el = alloca [2 x %struct.ref_s], align 16
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %index = alloca i32, align 4
  %count25 = alloca i32, align 4
  %i26 = alloca i32, align 4
  %cid = alloca i32, align 4
  %glyph_index = alloca i32, align 4
  %src_type = alloca %struct.ref_s, align 8
  %dst_type = alloca %struct.ref_s, align 8
  %code59 = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %Decoding, %struct.ref_s** %Decoding.addr, align 8, !tbaa !1
  store %struct.ref_s* %TT_cmap, %struct.ref_s** %TT_cmap.addr, align 8, !tbaa !1
  store %struct.ref_s* %SubstNWP, %struct.ref_s** %SubstNWP.addr, align 8, !tbaa !1
  store i32 %GDBytes, i32* %GDBytes.addr, align 4, !tbaa !18
  store %struct.ref_s* %CIDMap, %struct.ref_s** %CIDMap.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dict_enum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [2 x %struct.ref_s]* %el to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %GDBytes.addr, align 4, !tbaa !18
  %cmp = icmp ne i32 %4, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

if.end:                                           ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %CIDMap.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %7 to i32
  %cmp1 = icmp ne i32 %conv, 4
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.ref_s*, %struct.ref_s** %CIDMap.addr, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 2
  %9 = load i32, i32* %rsize, align 4, !tbaa !14
  store i32 %9, i32* %count, align 4, !tbaa !18
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %10 = load i32, i32* %i, align 4, !tbaa !18
  %11 = load i32, i32* %count, align 4, !tbaa !18
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast %struct.ref_s* %s to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %CIDMap.addr, align 8, !tbaa !1
  %16 = load i32, i32* %i, align 4, !tbaa !18
  %conv8 = sext i32 %16 to i64
  %call = call i32 @array_get(%struct.gs_memory_s* %14, %struct.ref_s* %15, i64 %conv8, %struct.ref_s* %s) #3
  store i32 %call, i32* %code, align 4, !tbaa !18
  %17 = load i32, i32* %code, align 4, !tbaa !18
  %cmp9 = icmp slt i32 %17, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  %18 = load i32, i32* %code, align 4, !tbaa !18
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %for.body
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %19 = bitcast i16* %type_attrs14 to i8*
  %arrayidx15 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx15, align 1, !tbaa !5
  %conv16 = zext i8 %20 to i32
  %cmp17 = icmp eq i32 %conv16, 18
  br i1 %cmp17, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %if.end.12
  %call20 = call i32 @check_type_failed(%struct.ref_s* %s) #3
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.19, %if.then.11
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.ref_s* %s to i8*
  call void @llvm.lifetime.end(i64 16, i8* %22) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.90 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %23 = load i32, i32* %i, align 4, !tbaa !18
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.ref_s*, %struct.ref_s** %Decoding.addr, align 8, !tbaa !1
  %call23 = call i32 @dict_first(%struct.ref_s* %24) #3
  store i32 %call23, i32* %dict_enum, align 4, !tbaa !18
  br label %for.cond.24

for.cond.24:                                      ; preds = %cleanup.cont.88, %cleanup.84, %for.end
  %25 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %count25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %i26 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.ref_s*, %struct.ref_s** %Decoding.addr, align 8, !tbaa !1
  %29 = load i32, i32* %dict_enum, align 4, !tbaa !18
  %arraydecay = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %el, i32 0, i32 0
  %call27 = call i32 @dict_next(%struct.ref_s* %28, i32 %29, %struct.ref_s* %arraydecay) #3
  store i32 %call27, i32* %dict_enum, align 4, !tbaa !18
  %cmp28 = icmp eq i32 %call27, -1
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.cond.24
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.84

if.end.31:                                        ; preds = %for.cond.24
  %arrayidx32 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %el, i32 0, i64 0
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx32, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  %30 = bitcast i16* %type_attrs34 to i8*
  %arrayidx35 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx35, align 1, !tbaa !5
  %conv36 = zext i8 %31 to i32
  %cmp37 = icmp eq i32 %conv36, 11
  br i1 %cmp37, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.31
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.84

if.end.40:                                        ; preds = %if.end.31
  %arrayidx41 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %el, i32 0, i64 1
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx41, i32 0, i32 0
  %type_attrs43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 0
  %32 = bitcast i16* %type_attrs43 to i8*
  %arrayidx44 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx44, align 1, !tbaa !5
  %conv45 = zext i8 %33 to i32
  %cmp46 = icmp eq i32 %conv45, 4
  br i1 %cmp46, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.40
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84

if.end.49:                                        ; preds = %if.end.40
  %arrayidx50 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %el, i32 0, i64 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx50, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %34 = load i64, i64* %intval, align 8, !tbaa !19
  %conv51 = trunc i64 %34 to i32
  store i32 %conv51, i32* %index, align 4, !tbaa !18
  %arrayidx52 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %el, i32 0, i64 1
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx52, i32 0, i32 0
  %rsize54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 2
  %35 = load i32, i32* %rsize54, align 4, !tbaa !14
  store i32 %35, i32* %count25, align 4, !tbaa !18
  store i32 0, i32* %i26, align 4, !tbaa !18
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.81, %if.end.49
  %36 = load i32, i32* %i26, align 4, !tbaa !18
  %37 = load i32, i32* %count25, align 4, !tbaa !18
  %cmp56 = icmp slt i32 %36, %37
  br i1 %cmp56, label %for.body.58, label %for.end.83

for.body.58:                                      ; preds = %for.cond.55
  %38 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load i32, i32* %index, align 4, !tbaa !18
  %mul = mul nsw i32 %39, 256
  %40 = load i32, i32* %i26, align 4, !tbaa !18
  %add = add nsw i32 %mul, %40
  store i32 %add, i32* %cid, align 4, !tbaa !18
  %41 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast %struct.ref_s* %src_type to i8*
  call void @llvm.lifetime.start(i64 16, i8* %42) #1
  %43 = bitcast %struct.ref_s* %dst_type to i8*
  call void @llvm.lifetime.start(i64 16, i8* %43) #1
  %44 = bitcast i32* %code59 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %46 = load %struct.ref_s*, %struct.ref_s** %Decoding.addr, align 8, !tbaa !1
  %47 = load %struct.ref_s*, %struct.ref_s** %TT_cmap.addr, align 8, !tbaa !1
  %48 = load %struct.ref_s*, %struct.ref_s** %SubstNWP.addr, align 8, !tbaa !1
  %49 = load i32, i32* %cid, align 4, !tbaa !18
  %call60 = call i32 @cid_to_TT_charcode(%struct.gs_memory_s* %45, %struct.ref_s* %46, %struct.ref_s* %47, %struct.ref_s* %48, i32 %49, i32* %glyph_index, %struct.ref_s* %src_type, %struct.ref_s* %dst_type) #3
  store i32 %call60, i32* %code59, align 4, !tbaa !18
  %50 = load i32, i32* %code59, align 4, !tbaa !18
  %cmp61 = icmp slt i32 %50, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.body.58
  %51 = load i32, i32* %code59, align 4, !tbaa !18
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74

if.end.64:                                        ; preds = %for.body.58
  %52 = load i32, i32* %code59, align 4, !tbaa !18
  %cmp65 = icmp sgt i32 %52, 0
  br i1 %cmp65, label %if.then.67, label %if.end.73

if.then.67:                                       ; preds = %if.end.64
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %54 = load %struct.ref_s*, %struct.ref_s** %CIDMap.addr, align 8, !tbaa !1
  %55 = load i32, i32* %cid, align 4, !tbaa !18
  %56 = load i32, i32* %glyph_index, align 4, !tbaa !18
  %call68 = call i32 @set_CIDMap_element(%struct.gs_memory_s* %53, %struct.ref_s* %54, i32 %55, i32 %56) #3
  store i32 %call68, i32* %code59, align 4, !tbaa !18
  %57 = load i32, i32* %code59, align 4, !tbaa !18
  %cmp69 = icmp slt i32 %57, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.67
  %58 = load i32, i32* %code59, align 4, !tbaa !18
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74

if.end.72:                                        ; preds = %if.then.67
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.64
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.74

cleanup.74:                                       ; preds = %if.end.73, %if.then.71, %if.then.63
  %59 = bitcast i32* %code59 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast %struct.ref_s* %dst_type to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  %61 = bitcast %struct.ref_s* %src_type to i8*
  call void @llvm.lifetime.end(i64 16, i8* %61) #1
  %62 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %cleanup.dest.79 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.79, label %cleanup.84 [
    i32 0, label %cleanup.cont.80
  ]

cleanup.cont.80:                                  ; preds = %cleanup.74
  br label %for.inc.81

for.inc.81:                                       ; preds = %cleanup.cont.80
  %64 = load i32, i32* %i26, align 4, !tbaa !18
  %inc82 = add nsw i32 %64, 1
  store i32 %inc82, i32* %i26, align 4, !tbaa !18
  br label %for.cond.55

for.end.83:                                       ; preds = %for.cond.55
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.84

cleanup.84:                                       ; preds = %for.end.83, %cleanup.74, %if.then.48, %if.then.39, %if.then.30
  %65 = bitcast i32* %i26 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %count25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %cleanup.dest.87 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.87, label %cleanup.90 [
    i32 0, label %cleanup.cont.88
    i32 5, label %for.end.89
    i32 6, label %for.cond.24
  ]

cleanup.cont.88:                                  ; preds = %cleanup.84
  br label %for.cond.24

for.end.89:                                       ; preds = %cleanup.84
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

cleanup.90:                                       ; preds = %for.end.89, %cleanup.84, %cleanup, %if.then.3, %if.then
  %68 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast [2 x %struct.ref_s]* %el to i8*
  call void @llvm.lifetime.end(i64 32, i8* %70) #1
  %71 = bitcast i32* %dict_enum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = load i32, i32* %retval
  ret i32 %72
}

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @dict_first(%struct.ref_s*) #2

declare i32 @dict_next(%struct.ref_s*, i32, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @set_CIDMap_element(%struct.gs_memory_s* %mem, %struct.ref_s* %CIDMap, i32 %cid, i32 %glyph_index) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %CIDMap.addr = alloca %struct.ref_s*, align 8
  %cid.addr = alloca i32, align 4
  %glyph_index.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %count = alloca i32, align 4
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.ref_s, align 8
  %c = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %CIDMap, %struct.ref_s** %CIDMap.addr, align 8, !tbaa !1
  store i32 %cid, i32* %cid.addr, align 4, !tbaa !18
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !18
  %0 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %cid.addr, align 4, !tbaa !18
  %mul = mul i32 %1, 2
  store i32 %mul, i32* %offset, align 4, !tbaa !18
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.ref_s*, %struct.ref_s** %CIDMap.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %4 = load i32, i32* %rsize, align 4, !tbaa !14
  store i32 %4, i32* %count, align 4, !tbaa !18
  %5 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.ref_s* %s to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast i8** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %glyph_index.addr, align 4, !tbaa !18
  %cmp = icmp uge i32 %9, 65536
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !18
  %11 = load i32, i32* %count, align 4, !tbaa !18
  %cmp1 = icmp slt i32 %10, %11
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %CIDMap.addr, align 8, !tbaa !1
  %14 = load i32, i32* %i, align 4, !tbaa !18
  %conv = sext i32 %14 to i64
  %call = call i32 @array_get(%struct.gs_memory_s* %12, %struct.ref_s* %13, i64 %conv, %struct.ref_s* %s) #3
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s, i32 0, i32 0
  %rsize3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 2
  %15 = load i32, i32* %rsize3, align 4, !tbaa !14
  %and = and i32 %15, -2
  store i32 %and, i32* %size, align 4, !tbaa !18
  %16 = load i32, i32* %offset, align 4, !tbaa !18
  %17 = load i32, i32* %size, align 4, !tbaa !18
  %cmp4 = icmp slt i32 %16, %17
  br i1 %cmp4, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %for.body
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %18 = load i8*, i8** %bytes, align 8, !tbaa !1
  %19 = load i32, i32* %offset, align 4, !tbaa !18
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr, i8** %c, align 8, !tbaa !1
  %20 = load i32, i32* %glyph_index.addr, align 4, !tbaa !18
  %shr = lshr i32 %20, 8
  %conv7 = trunc i32 %shr to i8
  %21 = load i8*, i8** %c, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %conv7, i8* %arrayidx, align 1, !tbaa !5
  %22 = load i32, i32* %glyph_index.addr, align 4, !tbaa !18
  %and8 = and i32 %22, 255
  %conv9 = trunc i32 %and8 to i8
  %23 = load i8*, i8** %c, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 %conv9, i8* %arrayidx10, align 1, !tbaa !5
  br label %for.end

if.end.11:                                        ; preds = %for.body
  %24 = load i32, i32* %size, align 4, !tbaa !18
  %25 = load i32, i32* %offset, align 4, !tbaa !18
  %sub = sub nsw i32 %25, %24
  store i32 %sub, i32* %offset, align 4, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %26 = load i32, i32* %i, align 4, !tbaa !18
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %27 = bitcast i8** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.ref_s* %s to i8*
  call void @llvm.lifetime.end(i64 16, i8* %28) #1
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @cid_fill_Identity_CIDMap(%struct.gs_memory_s* %mem, %struct.ref_s* %CIDMap) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %CIDMap.addr = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %code18 = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %CIDMap, %struct.ref_s** %CIDMap.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %CIDMap.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %3 = load i32, i32* %rsize, align 4, !tbaa !14
  store i32 %3, i32* %count, align 4, !tbaa !18
  %4 = load i32, i32* %count, align 4, !tbaa !18
  %cmp = icmp ne i32 %4, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !tbaa !18
  %6 = load i32, i32* %count, align 4, !tbaa !18
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast %struct.ref_s* %s to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %CIDMap.addr, align 8, !tbaa !1
  %11 = load i32, i32* %i, align 4, !tbaa !18
  %conv = sext i32 %11 to i64
  %call = call i32 @array_get(%struct.gs_memory_s* %9, %struct.ref_s* %10, i64 %conv, %struct.ref_s* %s) #3
  store i32 %call, i32* %code, align 4, !tbaa !18
  %12 = load i32, i32* %code, align 4, !tbaa !18
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  %13 = load i32, i32* %code, align 4, !tbaa !18
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %for.body
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %14 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv7 = zext i8 %15 to i32
  %cmp8 = icmp eq i32 %conv7, 18
  br i1 %cmp8, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end.5
  %call11 = call i32 @check_type_failed(%struct.ref_s* %s) #3
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.10, %if.then.4
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.ref_s* %s to i8*
  call void @llvm.lifetime.end(i64 16, i8* %17) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %18 = load i32, i32* %i, align 4, !tbaa !18
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.27, %for.end
  %19 = load i32, i32* %i, align 4, !tbaa !18
  %cmp15 = icmp slt i32 %19, 65025
  br i1 %cmp15, label %for.body.17, label %for.end.29

for.body.17:                                      ; preds = %for.cond.14
  %20 = bitcast i32* %code18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %22 = load %struct.ref_s*, %struct.ref_s** %CIDMap.addr, align 8, !tbaa !1
  %23 = load i32, i32* %i, align 4, !tbaa !18
  %24 = load i32, i32* %i, align 4, !tbaa !18
  %call19 = call i32 @set_CIDMap_element(%struct.gs_memory_s* %21, %struct.ref_s* %22, i32 %23, i32 %24) #3
  store i32 %call19, i32* %code18, align 4, !tbaa !18
  %25 = load i32, i32* %code18, align 4, !tbaa !18
  %cmp20 = icmp slt i32 %25, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body.17
  %26 = load i32, i32* %code18, align 4, !tbaa !18
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

if.end.23:                                        ; preds = %for.body.17
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.24

cleanup.24:                                       ; preds = %if.end.23, %if.then.22
  %27 = bitcast i32* %code18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %cleanup.dest.25 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.25, label %cleanup.30 [
    i32 0, label %cleanup.cont.26
  ]

cleanup.cont.26:                                  ; preds = %cleanup.24
  br label %for.inc.27

for.inc.27:                                       ; preds = %cleanup.cont.26
  %28 = load i32, i32* %i, align 4, !tbaa !18
  %inc28 = add nsw i32 %28, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !18
  br label %for.cond.14

for.end.29:                                       ; preds = %for.cond.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %for.end.29, %cleanup.24, %cleanup, %if.then
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

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
!5 = !{!3, !3, i64 0}
!6 = !{!7, !9, i64 0}
!7 = !{!"ref_s", !8, i64 0, !3, i64 8}
!8 = !{!"tas_s", !9, i64 0, !9, i64 2, !10, i64 4}
!9 = !{!"short", !3, i64 0}
!10 = !{!"int", !3, i64 0}
!11 = !{!12, !2, i64 0}
!12 = !{!"gs_cid_system_info_s", !13, i64 0, !13, i64 16, !10, i64 32}
!13 = !{!"gs_const_string_s", !2, i64 0, !10, i64 8}
!14 = !{!7, !10, i64 4}
!15 = !{!12, !10, i64 8}
!16 = !{!12, !2, i64 16}
!17 = !{!12, !10, i64 24}
!18 = !{!10, !10, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !3, i64 0}
