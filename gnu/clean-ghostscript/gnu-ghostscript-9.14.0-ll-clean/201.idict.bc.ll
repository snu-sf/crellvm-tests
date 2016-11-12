; ModuleID = './idict.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type { i32, i32, i32, i32, i32, i32, %struct.gs_memory_s*, [4096 x i32], [2048 x %struct.sub_] }
%struct.sub_ = type { %struct.name_sub_table_s*, %struct.name_string_sub_table_s* }
%struct.name_sub_table_s = type { [512 x %struct.name_s], i32 }
%struct.name_s = type { %struct.ref_s* }
%struct.name_string_sub_table_s = type { [512 x %struct.name_string_s] }
%struct.name_string_s = type { i32, i8* }
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct.chunk_s = type { %struct.chunk_head_s*, i8*, i8*, i8*, %struct.obj_header_s*, i8*, i8*, i8*, i8*, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s*, i32, i32, i32*, i32, i8*, i8*, i32, i8*, i32*, i8*, i8*, i8* }
%struct.chunk_head_s = type { i8*, %struct.obj_header_s }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.chunk_locator_s = type { %struct.gs_ref_memory_s*, %struct.chunk_s* }
%struct.lost_ = type { i64, i64, i64 }
%struct.stream_s = type opaque
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.alloc_change_s = type { %struct.alloc_change_s*, i16*, %struct.ref_s, i16 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.alloc_save_s = type opaque
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.dict_stack_s = type opaque

@dict_max_size = constant i32 16777215, align 4
@.str = private unnamed_addr constant [11 x i8] c"dict_alloc\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"dict_unpack(keys)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"dict_unpack(old keys)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"dict_put(key)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"dict_put(count)\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"dict_put(value)\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"dict_undef(key)\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"dict_undef(count)\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"dict_undef(value)\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"dict_resize(values)\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"dict_resize(old values)\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"dict_resize(keys)\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"dict_resize(old keys)\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"dict_resize(maxlength)\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"dict_put(maxlength)\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"dict_create_contents(values)\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"dict_create_contents(packed keys)\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"dict_create_unpacked_keys\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dict_round_size_small(i32 %rsize) #0 {
entry:
  %rsize.addr = alloca i32, align 4
  store i32 %rsize, i32* %rsize.addr, align 4, !tbaa !1
  %0 = load i32, i32* %rsize.addr, align 4, !tbaa !1
  %cmp = icmp ugt i32 %0, 16777215
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %rsize.addr, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @dict_round_size_large(i32 %rsize) #0 {
entry:
  %retval = alloca i32, align 4
  %rsize.addr = alloca i32, align 4
  store i32 %rsize, i32* %rsize.addr, align 4, !tbaa !1
  %0 = load i32, i32* %rsize.addr, align 4, !tbaa !1
  %cmp = icmp ugt i32 %0, 8388609
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %rsize.addr, align 4, !tbaa !1
  %cmp1 = icmp ugt i32 %1, 16777215
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %2 = load i32, i32* %rsize.addr, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %2, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, i32* %rsize.addr, align 4, !tbaa !1
  %4 = load i32, i32* %rsize.addr, align 4, !tbaa !1
  %sub = sub i32 %4, 1
  %and = and i32 %3, %sub
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %rsize.addr, align 4, !tbaa !1
  %6 = load i32, i32* %rsize.addr, align 4, !tbaa !1
  %sub2 = sub i32 %6, 1
  %or = or i32 %5, %sub2
  %add = add i32 %or, 1
  store i32 %add, i32* %rsize.addr, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %rsize.addr, align 4, !tbaa !1
  %cmp3 = icmp ule i32 %7, 16777215
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %while.end
  %8 = load i32, i32* %rsize.addr, align 4, !tbaa !1
  br label %cond.end.6

cond.false.5:                                     ; preds = %while.end
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi i32 [ %8, %cond.true.4 ], [ 8388609, %cond.false.5 ]
  store i32 %cond7, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.6, %cond.end
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @dict_alloc(%struct.gs_ref_memory_s* %mem, i32 %size, %struct.ref_s* %pdref) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %arr = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %pdict = alloca %struct.dict_s*, align 8
  %dref = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %0 = bitcast %struct.ref_s* %arr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !5
  %call = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %2, %struct.ref_s* %arr, i32 112, i32 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #5
  store i32 %call, i32* %code, align 4, !tbaa !1
  %3 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.ref_s* %dref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arr, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %7 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !5
  %8 = bitcast %struct.ref_s* %7 to %struct.dict_s*
  store %struct.dict_s* %8, %struct.dict_s** %pdict, align 8, !tbaa !5
  %9 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dref, i32 0, i32 1
  %pdict2 = bitcast %union.v* %value1 to %struct.dict_s**
  store %struct.dict_s* %9, %struct.dict_s** %pdict2, align 8, !tbaa !5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 12
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !5
  %call3 = call i32 @imemory_new_mask(%struct.gs_ref_memory_s* %11) #5
  %or = or i32 %and, %call3
  %or4 = or i32 %or, 112
  %add = add i32 512, %or4
  %conv5 = trunc i32 %add to i16
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dref, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  store i16 %conv5, i16* %type_attrs7, align 2, !tbaa !7
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !5
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.obj_header_s*
  %14 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %14, i32 0, i32 4
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value8 to %struct.obj_header_s**
  store %struct.obj_header_s* %13, %struct.obj_header_s** %pstruct, align 8, !tbaa !5
  %15 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory9 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %15, i32 0, i32 4
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory9, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  store i16 2048, i16* %type_attrs11, align 2, !tbaa !7
  %16 = load i32, i32* %size.addr, align 4, !tbaa !1
  %call12 = call i32 @dict_create_contents(i32 %16, %struct.ref_s* %dref, i32 1) #5
  store i32 %call12, i32* %code, align 4, !tbaa !1
  %17 = load i32, i32* %code, align 4, !tbaa !1
  %cmp13 = icmp slt i32 %17, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !5
  call void @gs_free_ref_array(%struct.gs_ref_memory_s* %18, %struct.ref_s* %arr, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #5
  %19 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end
  %20 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %21 = bitcast %struct.ref_s* %20 to i8*
  %22 = bitcast %struct.ref_s* %dref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false), !tbaa.struct !11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.then
  %23 = bitcast %struct.ref_s* %dref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %23) #1
  %24 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.ref_s* %arr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

declare i32 @imemory_new_mask(%struct.gs_ref_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @dict_create_contents(i32 %size, %struct.ref_s* %pdref, i32 %pack) #0 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pack.addr = alloca i32, align 4
  %pdict = alloca %struct.dict_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %new_mask = alloca i32, align 4
  %asize = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ksize = alloca i32, align 4
  %arr = alloca %struct.ref_s, align 8
  %pkp = alloca i16*, align 8
  %pzp = alloca i16*, align 8
  %code45 = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  store i32 %pack, i32* %pack.addr, align 4, !tbaa !1
  %0 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %2 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !5
  store %struct.dict_s* %2, %struct.dict_s** %pdict, align 8, !tbaa !5
  %3 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %4, i32 0, i32 4
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value2 to %struct.obj_header_s**
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !5
  %6 = bitcast %struct.obj_header_s* %5 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %6, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %7 = bitcast i32* %new_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %call = call i32 @imemory_new_mask(%struct.gs_ref_memory_s* %8) #5
  store i32 %call, i32* %new_mask, align 4, !tbaa !1
  %9 = bitcast i32* %asize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %size.addr, align 4, !tbaa !1
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %size.addr, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %11, %cond.false ]
  %call3 = call i32 @dict_round_size_large(i32 %cond) #5
  store i32 %call3, i32* %asize, align 4, !tbaa !1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %asize, align 4, !tbaa !1
  %cmp4 = icmp eq i32 %14, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %15 = load i32, i32* %asize, align 4, !tbaa !1
  %cmp5 = icmp ugt i32 %15, 16777215
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end:                                           ; preds = %lor.lhs.false
  %16 = load i32, i32* %asize, align 4, !tbaa !1
  %inc = add i32 %16, 1
  store i32 %inc, i32* %asize, align 4, !tbaa !1
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %18 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %18, i32 0, i32 0
  %19 = load i32, i32* %asize, align 4, !tbaa !1
  %call6 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %17, %struct.ref_s* %values, i32 112, i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0)) #5
  store i32 %call6, i32* %code, align 4, !tbaa !1
  %20 = load i32, i32* %code, align 4, !tbaa !1
  %cmp7 = icmp slt i32 %20, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end.9:                                         ; preds = %if.end
  %22 = load i32, i32* %new_mask, align 4, !tbaa !1
  %23 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values10 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %23, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %24 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %24 to i32
  %or = or i32 %conv, %22
  %conv11 = trunc i32 %or to i16
  store i16 %conv11, i16* %type_attrs, align 2, !tbaa !7
  %25 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values12 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %25, i32 0, i32 0
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values12, i32 0, i32 1
  %refs = bitcast %union.v* %value13 to %struct.ref_s**
  %26 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !5
  %27 = load i32, i32* %asize, align 4, !tbaa !1
  %28 = load i32, i32* %new_mask, align 4, !tbaa !1
  call void @refset_null_new(%struct.ref_s* %26, i32 %27, i32 %28) #5
  %29 = load i32, i32* %pack.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.9
  %30 = bitcast i32* %ksize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %asize, align 4, !tbaa !1
  %conv15 = zext i32 %31 to i64
  %add = add i64 %conv15, 8
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 8
  %conv16 = trunc i64 %div to i32
  store i32 %conv16, i32* %ksize, align 4, !tbaa !1
  %32 = bitcast %struct.ref_s* %arr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %32) #1
  %33 = bitcast i16** %pkp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = bitcast i16** %pzp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %36 = load i32, i32* %ksize, align 4, !tbaa !1
  %call17 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %35, %struct.ref_s* %arr, i32 112, i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0)) #5
  store i32 %call17, i32* %code, align 4, !tbaa !1
  %37 = load i32, i32* %code, align 4, !tbaa !1
  %cmp18 = icmp slt i32 %37, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.14
  %38 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.14
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arr, i32 0, i32 1
  %refs23 = bitcast %union.v* %value22 to %struct.ref_s**
  %39 = load %struct.ref_s*, %struct.ref_s** %refs23, align 8, !tbaa !5
  %40 = bitcast %struct.ref_s* %39 to i16*
  store i16* %40, i16** %pkp, align 8, !tbaa !5
  %41 = load i16*, i16** %pkp, align 8, !tbaa !5
  %42 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys = getelementptr inbounds %struct.dict_s, %struct.dict_s* %42, i32 0, i32 1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys, i32 0, i32 1
  %packed = bitcast %union.v* %value24 to i16**
  store i16* %41, i16** %packed, align 8, !tbaa !5
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arr, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %43 = load i16, i16* %type_attrs26, align 2, !tbaa !7
  %conv27 = zext i16 %43 to i32
  %and = and i32 %conv27, 12
  %or28 = or i32 %and, 112
  %44 = load i32, i32* %new_mask, align 4, !tbaa !1
  %or29 = or i32 %or28, %44
  %add30 = add i32 1536, %or29
  %conv31 = trunc i32 %add30 to i16
  %45 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys32 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %45, i32 0, i32 1
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys32, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  store i16 %conv31, i16* %type_attrs34, align 2, !tbaa !7
  %46 = load i32, i32* %asize, align 4, !tbaa !1
  %47 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys35 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %47, i32 0, i32 1
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys35, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 2
  store i32 %46, i32* %rsize, align 4, !tbaa !17
  %48 = load i16*, i16** %pkp, align 8, !tbaa !5
  store i16* %48, i16** %pzp, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %50 = load i32, i32* %asize, align 4, !tbaa !1
  %cmp37 = icmp ult i32 %49, %50
  br i1 %cmp37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %51 = load i32, i32* %i, align 4, !tbaa !1
  %conv39 = zext i32 %51 to i64
  %rem = urem i64 %conv39, 8
  %tobool40 = icmp ne i64 %rem, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %52 = phi i1 [ true, %for.cond ], [ %tobool40, %lor.rhs ]
  br i1 %52, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %53 = load i16*, i16** %pzp, align 8, !tbaa !5
  store i16 24576, i16* %53, align 2, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i16*, i16** %pzp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i16, i16* %54, i32 1
  store i16* %incdec.ptr, i16** %pzp, align 8, !tbaa !5
  %55 = load i32, i32* %i, align 4, !tbaa !1
  %inc41 = add i32 %55, 1
  store i32 %inc41, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %56 = load i16*, i16** %pkp, align 8, !tbaa !5
  store i16 24577, i16* %56, align 2, !tbaa !12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.20
  %57 = bitcast i16** %pzp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i16** %pkp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.ref_s* %arr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %59) #1
  %60 = bitcast i32* %ksize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.69 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.54

if.else:                                          ; preds = %if.end.9
  %61 = bitcast i32* %code45 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = load i32, i32* %asize, align 4, !tbaa !1
  %63 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %call46 = call i32 @dict_create_unpacked_keys(i32 %62, %struct.ref_s* %63) #5
  store i32 %call46, i32* %code45, align 4, !tbaa !1
  %64 = load i32, i32* %code45, align 4, !tbaa !1
  %cmp47 = icmp slt i32 %64, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.else
  %65 = load i32, i32* %code45, align 4, !tbaa !1
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

if.end.50:                                        ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.51

cleanup.51:                                       ; preds = %if.end.50, %if.then.49
  %66 = bitcast i32* %code45 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %cleanup.dest.52 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.52, label %cleanup.69 [
    i32 0, label %cleanup.cont.53
  ]

cleanup.cont.53:                                  ; preds = %cleanup.51
  br label %if.end.54

if.end.54:                                        ; preds = %cleanup.cont.53, %cleanup.cont
  %67 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %count = getelementptr inbounds %struct.dict_s, %struct.dict_s* %67, i32 0, i32 2
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count, i32 0, i32 1
  %intval = bitcast %union.v* %value55 to i64*
  store i64 0, i64* %intval, align 8, !tbaa !13
  %68 = load i32, i32* %new_mask, align 4, !tbaa !1
  %add56 = add i32 2816, %68
  %conv57 = trunc i32 %add56 to i16
  %69 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %count58 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %69, i32 0, i32 2
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count58, i32 0, i32 0
  %type_attrs60 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 0
  store i16 %conv57, i16* %type_attrs60, align 2, !tbaa !7
  %70 = load i32, i32* %size.addr, align 4, !tbaa !1
  %conv61 = zext i32 %70 to i64
  %71 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %maxlength = getelementptr inbounds %struct.dict_s, %struct.dict_s* %71, i32 0, i32 3
  %value62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %maxlength, i32 0, i32 1
  %intval63 = bitcast %union.v* %value62 to i64*
  store i64 %conv61, i64* %intval63, align 8, !tbaa !13
  %72 = load i32, i32* %new_mask, align 4, !tbaa !1
  %add64 = add i32 2816, %72
  %conv65 = trunc i32 %add64 to i16
  %73 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %maxlength66 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %73, i32 0, i32 3
  %tas67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %maxlength66, i32 0, i32 0
  %type_attrs68 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas67, i32 0, i32 0
  store i16 %conv65, i16* %type_attrs68, align 2, !tbaa !7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

cleanup.69:                                       ; preds = %if.end.54, %cleanup.51, %cleanup, %if.then.8, %if.then
  %74 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %asize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %new_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = load i32, i32* %retval
  ret i32 %80
}

declare void @gs_free_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @dict_unpack(%struct.ref_s* %pdref, %struct.dict_stack_s* %pds) #0 {
entry:
  %retval = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pds.addr = alloca %struct.dict_stack_s*, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %cleanup.dest.slot = alloca i32
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %count = alloca i32, align 4
  %okp = alloca i16*, align 8
  %old_keys = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %nkp = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  store %struct.dict_stack_s* %pds, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %0 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %2 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !5
  store %struct.dict_s* %2, %struct.dict_s** %pdict, align 8, !tbaa !5
  %3 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys = getelementptr inbounds %struct.dict_s, %struct.dict_s* %3, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 6
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end:                                           ; preds = %entry
  %6 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %7, i32 0, i32 4
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value3 to %struct.obj_header_s**
  %8 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !5
  %9 = bitcast %struct.obj_header_s* %8 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %9, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %10 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %11, i32 0, i32 0
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %12 = load i32, i32* %rsize, align 4, !tbaa !17
  store i32 %12, i32* %count, align 4, !tbaa !1
  %13 = bitcast i16** %okp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys5 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %14, i32 0, i32 1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys5, i32 0, i32 1
  %packed = bitcast %union.v* %value6 to i16**
  %15 = load i16*, i16** %packed, align 8, !tbaa !5
  store i16* %15, i16** %okp, align 8, !tbaa !5
  %16 = bitcast %struct.ref_s* %old_keys to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #1
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast %struct.ref_s** %nkp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys7 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %19, i32 0, i32 1
  %20 = bitcast %struct.ref_s* %old_keys to i8*
  %21 = bitcast %struct.ref_s* %keys7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false), !tbaa.struct !11
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %old_keys, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %22 = load i16, i16* %type_attrs9, align 2, !tbaa !7
  %conv10 = zext i16 %22 to i32
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %test_mask = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %23, i32 0, i32 21
  %24 = load i32, i32* %test_mask, align 4, !tbaa !19
  %and = and i32 %conv10, %24
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %26 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %27 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys14 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %27, i32 0, i32 1
  %28 = bitcast %struct.ref_s* %keys14 to i16*
  %call = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %25, %struct.ref_s* %26, i16* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end
  %29 = load i32, i32* %count, align 4, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %call16 = call i32 @dict_create_unpacked_keys(i32 %29, %struct.ref_s* %30) #5
  store i32 %call16, i32* %code, align 4, !tbaa !1
  %31 = load i32, i32* %code, align 4, !tbaa !1
  %cmp17 = icmp slt i32 %31, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  %32 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.15
  %33 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys21 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %33, i32 0, i32 1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys21, i32 0, i32 1
  %refs = bitcast %union.v* %value22 to %struct.ref_s**
  %34 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !5
  store %struct.ref_s* %34, %struct.ref_s** %nkp, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %35 = load i32, i32* %count, align 4, !tbaa !1
  %dec = add i32 %35, -1
  store i32 %dec, i32* %count, align 4, !tbaa !1
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i16*, i16** %okp, align 8, !tbaa !5
  %37 = load i16, i16* %36, align 2, !tbaa !12
  %conv23 = zext i16 %37 to i32
  %cmp24 = icmp sge i32 %conv23, 49152
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %for.body
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %39 = bitcast %struct.gs_ref_memory_s* %38 to %struct.gs_memory_s*
  %40 = load i16*, i16** %okp, align 8, !tbaa !5
  %41 = load %struct.ref_s*, %struct.ref_s** %nkp, align 8, !tbaa !5
  call void @packed_get(%struct.gs_memory_s* %39, i16* %40, %struct.ref_s* %41) #5
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %new_mask = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %42, i32 0, i32 20
  %43 = load i32, i32* %new_mask, align 4, !tbaa !27
  %44 = load %struct.ref_s*, %struct.ref_s** %nkp, align 8, !tbaa !5
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %type_attrs28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 0
  %45 = load i16, i16* %type_attrs28, align 2, !tbaa !7
  %conv29 = zext i16 %45 to i32
  %or = or i32 %conv29, %43
  %conv30 = trunc i32 %or to i16
  store i16 %conv30, i16* %type_attrs28, align 2, !tbaa !7
  br label %if.end.41

if.else:                                          ; preds = %for.body
  %46 = load i16*, i16** %okp, align 8, !tbaa !5
  %47 = load i16, i16* %46, align 2, !tbaa !12
  %conv31 = zext i16 %47 to i32
  %cmp32 = icmp eq i32 %conv31, 24577
  br i1 %cmp32, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %if.else
  %48 = load %struct.ref_s*, %struct.ref_s** %nkp, align 8, !tbaa !5
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  %49 = load i16, i16* %type_attrs36, align 2, !tbaa !7
  %conv37 = zext i16 %49 to i32
  %or38 = or i32 %conv37, 128
  %conv39 = trunc i32 %or38 to i16
  store i16 %conv39, i16* %type_attrs36, align 2, !tbaa !7
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.34, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %50 = load i16*, i16** %okp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i16, i16* %50, i32 1
  store i16* %incdec.ptr, i16** %okp, align 8, !tbaa !5
  %51 = load %struct.ref_s*, %struct.ref_s** %nkp, align 8, !tbaa !5
  %incdec.ptr42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 1
  store %struct.ref_s* %incdec.ptr42, %struct.ref_s** %nkp, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tas43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %old_keys, i32 0, i32 0
  %type_attrs44 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas43, i32 0, i32 0
  %52 = load i16, i16* %type_attrs44, align 2, !tbaa !7
  %conv45 = zext i16 %52 to i32
  %53 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %test_mask46 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %53, i32 0, i32 21
  %54 = load i32, i32* %test_mask46, align 4, !tbaa !19
  %and47 = and i32 %conv45, %54
  %cmp48 = icmp eq i32 %and47, 0
  br i1 %cmp48, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %for.end
  %55 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  call void @gs_free_ref_array(%struct.gs_ref_memory_s* %55, %struct.ref_s* %old_keys, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %for.end
  %56 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %tobool52 = icmp ne %struct.dict_stack_s* %56, null
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  %57 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  call void @dstack_set_top(%struct.dict_stack_s* %57) #5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.51
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then.19
  %58 = bitcast %struct.ref_s** %nkp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast %struct.ref_s* %old_keys to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  %61 = bitcast i16** %okp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.60 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %cleanup.cont, %cleanup, %if.then
  %64 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = load i32, i32* %retval
  ret i32 %65
}

declare i32 @alloc_save_change_in(%struct.gs_ref_memory_s*, %struct.ref_s*, i16*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @dict_create_unpacked_keys(i32 %asize, %struct.ref_s* %pdref) #0 {
entry:
  %asize.addr = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %code = alloca i32, align 4
  %new_mask = alloca i32, align 4
  %kp = alloca %struct.ref_s*, align 8
  store i32 %asize, i32* %asize.addr, align 4, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %0 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %2 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !5
  store %struct.dict_s* %2, %struct.dict_s** %pdict, align 8, !tbaa !5
  %3 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %4, i32 0, i32 4
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value2 to %struct.obj_header_s**
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !5
  %6 = bitcast %struct.obj_header_s* %5 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %6, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %9 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys = getelementptr inbounds %struct.dict_s, %struct.dict_s* %9, i32 0, i32 1
  %10 = load i32, i32* %asize.addr, align 4, !tbaa !1
  %call = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %8, %struct.ref_s* %keys, i32 112, i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0)) #5
  store i32 %call, i32* %code, align 4, !tbaa !1
  %11 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp sge i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = bitcast i32* %new_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %call3 = call i32 @imemory_new_mask(%struct.gs_ref_memory_s* %13) #5
  store i32 %call3, i32* %new_mask, align 4, !tbaa !1
  %14 = bitcast %struct.ref_s** %kp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys4 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %15, i32 0, i32 1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys4, i32 0, i32 1
  %refs = bitcast %union.v* %value5 to %struct.ref_s**
  %16 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !5
  store %struct.ref_s* %16, %struct.ref_s** %kp, align 8, !tbaa !5
  %17 = load i32, i32* %new_mask, align 4, !tbaa !1
  %18 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys6 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %18, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %19 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %19 to i32
  %or = or i32 %conv, %17
  %conv7 = trunc i32 %or to i16
  store i16 %conv7, i16* %type_attrs, align 2, !tbaa !7
  %20 = load %struct.ref_s*, %struct.ref_s** %kp, align 8, !tbaa !5
  %21 = load i32, i32* %asize.addr, align 4, !tbaa !1
  %22 = load i32, i32* %new_mask, align 4, !tbaa !1
  call void @refset_null_new(%struct.ref_s* %20, i32 %21, i32 %22) #5
  %23 = load %struct.ref_s*, %struct.ref_s** %kp, align 8, !tbaa !5
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %24 = load i16, i16* %type_attrs9, align 2, !tbaa !7
  %conv10 = zext i16 %24 to i32
  %or11 = or i32 %conv10, 128
  %conv12 = trunc i32 %or11 to i16
  store i16 %conv12, i16* %type_attrs9, align 2, !tbaa !7
  %25 = bitcast %struct.ref_s** %kp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32* %new_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load i32, i32* %code, align 4, !tbaa !1
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  ret i32 %27
}

declare void @packed_get(%struct.gs_memory_s*, i16*, %struct.ref_s*) #2

declare void @dstack_set_top(%struct.dict_stack_s*) #2

; Function Attrs: nounwind uwtable
define i32 @dict_find(%struct.ref_s* %pdref, %struct.ref_s* %pkey, %struct.ref_s** %ppvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pkey.addr = alloca %struct.ref_s*, align 8
  %ppvalue.addr = alloca %struct.ref_s**, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %size = alloca i32, align 4
  %etype = alloca i32, align 4
  %nidx = alloca i32, align 4
  %kpack = alloca i16, align 2
  %hash = alloca i32, align 4
  %ktype = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %nref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %expt = alloca i32, align 4
  %i = alloca i32, align 4
  %mant = alloca double, align 8
  %pslot = alloca i16*, align 8
  %kbot = alloca i16*, align 8
  %start = alloca i32, align 4
  %kp = alloca i16*, align 8
  %wrap = alloca i32, align 4
  %kbot179 = alloca %struct.ref_s*, align 8
  %kp183 = alloca %struct.ref_s*, align 8
  %pslot184 = alloca %struct.ref_s*, align 8
  %wrap185 = alloca i32, align 4
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  store %struct.ref_s* %pkey, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  store %struct.ref_s** %ppvalue, %struct.ref_s*** %ppvalue.addr, align 8, !tbaa !5
  %0 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %2 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !5
  store %struct.dict_s* %2, %struct.dict_s** %pdict, align 8, !tbaa !5
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %4, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %5 = load i32, i32* %rsize, align 4, !tbaa !17
  %sub = sub i32 %5, 1
  store i32 %sub, i32* %size, align 4, !tbaa !1
  %6 = bitcast i32* %etype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i16* %kpack to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #1
  %9 = bitcast i32* %hash to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %ktype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %12, i32 0, i32 4
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value2 to %struct.obj_header_s**
  %13 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !5
  %14 = bitcast %struct.obj_header_s* %13 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %14, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %15 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %16 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %17 to i32
  switch i32 %conv, label %sw.default [
    i32 13, label %sw.bb
    i32 18, label %sw.bb.12
    i32 16, label %sw.bb.37
    i32 11, label %sw.bb.55
    i32 14, label %sw.bb.59
  ]

sw.bb:                                            ; preds = %entry
  %18 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %pname = bitcast %union.v* %value4 to %struct.name_s**
  %19 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !5
  %20 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %rsize6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 2
  %21 = load i32, i32* %rsize6, align 4, !tbaa !17
  %and = and i32 %21, 511
  %idx.ext = zext i32 %and to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.name_s, %struct.name_s* %19, i64 %idx.neg
  %22 = bitcast %struct.name_s* %add.ptr to %struct.name_sub_table_s*
  %high_index = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %22, i32 0, i32 1
  %23 = load i32, i32* %high_index, align 4, !tbaa !28
  %24 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %rsize8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %25 = load i32, i32* %rsize8, align 4, !tbaa !17
  %add = add i32 %23, %25
  store i32 %add, i32* %nidx, align 4, !tbaa !1
  br label %nh

nh:                                               ; preds = %cleanup.cont, %sw.bb
  %26 = load i32, i32* %nidx, align 4, !tbaa !1
  store i32 %26, i32* %hash, align 4, !tbaa !1
  %27 = load i32, i32* %nidx, align 4, !tbaa !1
  %cmp = icmp ule i32 %27, 4095
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %nh
  %28 = load i32, i32* %nidx, align 4, !tbaa !1
  %add10 = add i32 49152, %28
  br label %cond.end

cond.false:                                       ; preds = %nh
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add10, %cond.true ], [ 0, %cond.false ]
  %conv11 = trunc i32 %cond to i16
  store i16 %conv11, i16* %kpack, align 2, !tbaa !12
  store i32 13, i32* %ktype, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %29 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %29) #1
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %32 = load i16, i16* %type_attrs14, align 2, !tbaa !7
  %conv15 = zext i16 %32 to i32
  %and16 = and i32 %conv15, 32
  %tobool = icmp ne i32 %and16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.12
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb.12
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 2
  %34 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !30
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %34, i32 0, i32 16
  %35 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !32
  %36 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 1
  %bytes = bitcast %union.v* %value17 to i8**
  %37 = load i8*, i8** %bytes, align 8, !tbaa !5
  %38 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %rsize19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 2
  %39 = load i32, i32* %rsize19, align 4, !tbaa !17
  %call = call i32 @names_ref(%struct.name_table_s* %35, i8* %37, i32 %39, %struct.ref_s* %nref, i32 1) #5
  store i32 %call, i32* %code, align 4, !tbaa !1
  %40 = load i32, i32* %code, align 4, !tbaa !1
  %cmp20 = icmp slt i32 %40, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end
  %41 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 1
  %pname25 = bitcast %union.v* %value24 to %struct.name_s**
  %42 = load %struct.name_s*, %struct.name_s** %pname25, align 8, !tbaa !5
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 0
  %rsize27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 2
  %43 = load i32, i32* %rsize27, align 4, !tbaa !17
  %and28 = and i32 %43, 511
  %idx.ext29 = zext i32 %and28 to i64
  %idx.neg30 = sub i64 0, %idx.ext29
  %add.ptr31 = getelementptr inbounds %struct.name_s, %struct.name_s* %42, i64 %idx.neg30
  %44 = bitcast %struct.name_s* %add.ptr31 to %struct.name_sub_table_s*
  %high_index32 = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %44, i32 0, i32 1
  %45 = load i32, i32* %high_index32, align 4, !tbaa !28
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 0
  %rsize34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 2
  %46 = load i32, i32* %rsize34, align 4, !tbaa !17
  %add35 = add i32 %45, %46
  store i32 %add35, i32* %nidx, align 4, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.22, %if.then
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %48) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.309 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %nh

sw.bb.37:                                         ; preds = %entry
  %49 = bitcast i32* %expt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = bitcast double* %mant to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 1
  %realval = bitcast %union.v* %value38 to float*
  %53 = load float, float* %realval, align 4, !tbaa !15
  %conv39 = fpext float %53 to double
  %call40 = call double @frexp(double %conv39, i32* %expt) #6
  store double %call40, double* %mant, align 8, !tbaa !34
  %54 = load i32, i32* %expt, align 4, !tbaa !1
  %conv41 = sext i32 %54 to i64
  %cmp42 = icmp ult i64 %conv41, 64
  br i1 %cmp42, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.37
  %55 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 1
  %realval45 = bitcast %union.v* %value44 to float*
  %56 = load float, float* %realval45, align 4, !tbaa !15
  %cmp46 = fcmp oeq float %56, 0xC3E0000000000000
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %lor.lhs.false, %sw.bb.37
  %57 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 1
  %realval50 = bitcast %union.v* %value49 to float*
  %58 = load float, float* %realval50, align 4, !tbaa !15
  %conv51 = fptosi float %58 to i32
  store i32 %conv51, i32* %i, align 4, !tbaa !1
  br label %if.end.53

if.else:                                          ; preds = %lor.lhs.false
  %59 = load double, double* %mant, align 8, !tbaa !34
  %mul = fmul double %59, 0xC3E0000000000000
  %conv52 = fptosi double %mul to i32
  store i32 %conv52, i32* %i, align 4, !tbaa !1
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.48
  %60 = load i32, i32* %i, align 4, !tbaa !1
  %mul54 = mul i32 %60, 30503
  store i32 %mul54, i32* %hash, align 4, !tbaa !1
  %61 = bitcast double* %mant to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %expt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  br label %ih

sw.bb.55:                                         ; preds = %entry
  %64 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %value56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 1
  %intval = bitcast %union.v* %value56 to i64*
  %65 = load i64, i64* %intval, align 8, !tbaa !13
  %conv57 = trunc i64 %65 to i32
  %mul58 = mul i32 %conv57, 30503
  store i32 %mul58, i32* %hash, align 4, !tbaa !1
  br label %ih

ih:                                               ; preds = %sw.bb.55, %if.end.53
  store i16 0, i16* %kpack, align 2, !tbaa !12
  store i32 -1, i32* %ktype, align 4, !tbaa !1
  store i32 0, i32* %nidx, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.59:                                         ; preds = %entry
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.309

sw.default:                                       ; preds = %entry
  %66 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 0
  %type_attrs61 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 0
  %67 = load i16, i16* %type_attrs61, align 2, !tbaa !7
  %conv62 = zext i16 %67 to i32
  %cmp63 = icmp sge i32 %conv62, 5376
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %sw.default
  br label %cond.end.71

cond.false.66:                                    ; preds = %sw.default
  %68 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %type_attrs68 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas67, i32 0, i32 0
  %69 = bitcast i16* %type_attrs68 to i8*
  %arrayidx69 = getelementptr inbounds i8, i8* %69, i64 1
  %70 = load i8, i8* %arrayidx69, align 1, !tbaa !18
  %conv70 = zext i8 %70 to i32
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.66, %cond.true.65
  %cond72 = phi i32 [ 15, %cond.true.65 ], [ %conv70, %cond.false.66 ]
  %mul73 = mul nsw i32 %cond72, 99
  store i32 %mul73, i32* %hash, align 4, !tbaa !1
  store i16 0, i16* %kpack, align 2, !tbaa !12
  store i32 -1, i32* %ktype, align 4, !tbaa !1
  store i32 0, i32* %nidx, align 4, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.71, %ih, %cond.end
  %71 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys = getelementptr inbounds %struct.dict_s, %struct.dict_s* %71, i32 0, i32 1
  %tas74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys, i32 0, i32 0
  %type_attrs75 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas74, i32 0, i32 0
  %72 = bitcast i16* %type_attrs75 to i8*
  %arrayidx76 = getelementptr inbounds i8, i8* %72, i64 1
  %73 = load i8, i8* %arrayidx76, align 1, !tbaa !18
  %conv77 = zext i8 %73 to i32
  %cmp78 = icmp eq i32 %conv77, 6
  br i1 %cmp78, label %if.then.80, label %if.else.178

if.then.80:                                       ; preds = %sw.epilog
  %74 = bitcast i16** %pslot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  store i16* null, i16** %pslot, align 8, !tbaa !5
  %75 = bitcast i16** %kbot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys81 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %76, i32 0, i32 1
  %value82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys81, i32 0, i32 1
  %packed = bitcast %union.v* %value82 to i16**
  %77 = load i16*, i16** %packed, align 8, !tbaa !5
  store i16* %77, i16** %kbot, align 8, !tbaa !5
  %78 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = load i32, i32* %size, align 4, !tbaa !1
  %cmp83 = icmp ugt i32 %79, 8388609
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %if.then.80
  %80 = load i32, i32* %hash, align 4, !tbaa !1
  %81 = load i32, i32* %size, align 4, !tbaa !1
  %rem = urem i32 %80, %81
  br label %cond.end.89

cond.false.86:                                    ; preds = %if.then.80
  %82 = load i32, i32* %hash, align 4, !tbaa !1
  %83 = load i32, i32* %size, align 4, !tbaa !1
  %sub87 = sub i32 %83, 1
  %and88 = and i32 %82, %sub87
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.86, %cond.true.85
  %cond90 = phi i32 [ %rem, %cond.true.85 ], [ %and88, %cond.false.86 ]
  %add91 = add i32 %cond90, 1
  store i32 %add91, i32* %start, align 4, !tbaa !1
  %84 = bitcast i16** %kp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = load i16*, i16** %kbot, align 8, !tbaa !5
  %86 = load i32, i32* %start, align 4, !tbaa !1
  %idx.ext92 = sext i32 %86 to i64
  %add.ptr93 = getelementptr inbounds i16, i16* %85, i64 %idx.ext92
  store i16* %add.ptr93, i16** %kp, align 8, !tbaa !5
  %87 = bitcast i32* %wrap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  store i32 0, i32* %wrap, align 4, !tbaa !1
  br label %again

again:                                            ; preds = %if.else.117, %cond.end.89
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %again
  br label %do.body

do.body:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %88 = load i16*, i16** %kp, align 8, !tbaa !5
  %89 = load i16, i16* %88, align 2, !tbaa !12
  %conv94 = zext i16 %89 to i32
  %90 = load i16, i16* %kpack, align 2, !tbaa !12
  %conv95 = zext i16 %90 to i32
  %cmp96 = icmp eq i32 %conv94, %conv95
  br i1 %cmp96, label %if.then.98, label %if.else.102

if.then.98:                                       ; preds = %do.end
  %91 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values99 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %91, i32 0, i32 0
  %value100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values99, i32 0, i32 1
  %refs = bitcast %union.v* %value100 to %struct.ref_s**
  %92 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !5
  %93 = load i16*, i16** %kp, align 8, !tbaa !5
  %94 = load i16*, i16** %kbot, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint i16* %93 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %94 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add.ptr101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i64 %sub.ptr.div
  %95 = load %struct.ref_s**, %struct.ref_s*** %ppvalue.addr, align 8, !tbaa !5
  store %struct.ref_s* %add.ptr101, %struct.ref_s** %95, align 8, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.173

if.else.102:                                      ; preds = %do.end
  %96 = load i16*, i16** %kp, align 8, !tbaa !5
  %97 = load i16, i16* %96, align 2, !tbaa !12
  %conv103 = zext i16 %97 to i32
  %cmp104 = icmp sge i32 %conv103, 49152
  br i1 %cmp104, label %if.end.126, label %if.then.106

if.then.106:                                      ; preds = %if.else.102
  %98 = load i16*, i16** %kp, align 8, !tbaa !5
  %99 = load i16, i16* %98, align 2, !tbaa !12
  %conv107 = zext i16 %99 to i32
  %cmp108 = icmp eq i32 %conv107, 24576
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.then.106
  br label %miss

if.end.111:                                       ; preds = %if.then.106
  %100 = load i16*, i16** %kp, align 8, !tbaa !5
  %101 = load i16*, i16** %kbot, align 8, !tbaa !5
  %cmp112 = icmp eq i16* %100, %101
  br i1 %cmp112, label %if.then.114, label %if.else.120

if.then.114:                                      ; preds = %if.end.111
  %102 = load i32, i32* %wrap, align 4, !tbaa !1
  %tobool115 = icmp ne i32 %102, 0
  br i1 %tobool115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %if.then.114
  br label %for.end

if.else.117:                                      ; preds = %if.then.114
  %103 = load i32, i32* %wrap, align 4, !tbaa !1
  %inc = add nsw i32 %103, 1
  store i32 %inc, i32* %wrap, align 4, !tbaa !1
  %104 = load i32, i32* %size, align 4, !tbaa !1
  %105 = load i16*, i16** %kp, align 8, !tbaa !5
  %idx.ext118 = zext i32 %104 to i64
  %add.ptr119 = getelementptr inbounds i16, i16* %105, i64 %idx.ext118
  store i16* %add.ptr119, i16** %kp, align 8, !tbaa !5
  br label %again

if.else.120:                                      ; preds = %if.end.111
  %106 = load i16*, i16** %pslot, align 8, !tbaa !5
  %cmp121 = icmp eq i16* %106, null
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.else.120
  %107 = load i16*, i16** %kp, align 8, !tbaa !5
  store i16* %107, i16** %pslot, align 8, !tbaa !5
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %if.else.120
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.else.102
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126
  br label %for.inc

for.inc:                                          ; preds = %if.end.127
  %108 = load i16*, i16** %kp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i16, i16* %108, i32 -1
  store i16* %incdec.ptr, i16** %kp, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.116
  %109 = load i16*, i16** %pslot, align 8, !tbaa !5
  %cmp128 = icmp eq i16* %109, null
  br i1 %cmp128, label %if.then.139, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %for.end
  %110 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %count = getelementptr inbounds %struct.dict_s, %struct.dict_s* %110, i32 0, i32 2
  %value131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count, i32 0, i32 1
  %intval132 = bitcast %union.v* %value131 to i64*
  %111 = load i64, i64* %intval132, align 8, !tbaa !13
  %conv133 = trunc i64 %111 to i32
  %112 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %maxlength = getelementptr inbounds %struct.dict_s, %struct.dict_s* %112, i32 0, i32 3
  %value134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %maxlength, i32 0, i32 1
  %intval135 = bitcast %union.v* %value134 to i64*
  %113 = load i64, i64* %intval135, align 8, !tbaa !13
  %conv136 = trunc i64 %113 to i32
  %cmp137 = icmp eq i32 %conv133, %conv136
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %lor.lhs.false.130, %for.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.173

if.end.140:                                       ; preds = %lor.lhs.false.130
  %114 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values141 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %114, i32 0, i32 0
  %value142 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values141, i32 0, i32 1
  %refs143 = bitcast %union.v* %value142 to %struct.ref_s**
  %115 = load %struct.ref_s*, %struct.ref_s** %refs143, align 8, !tbaa !5
  %116 = load i16*, i16** %pslot, align 8, !tbaa !5
  %117 = load i16*, i16** %kbot, align 8, !tbaa !5
  %sub.ptr.lhs.cast144 = ptrtoint i16* %116 to i64
  %sub.ptr.rhs.cast145 = ptrtoint i16* %117 to i64
  %sub.ptr.sub146 = sub i64 %sub.ptr.lhs.cast144, %sub.ptr.rhs.cast145
  %sub.ptr.div147 = sdiv exact i64 %sub.ptr.sub146, 2
  %add.ptr148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %115, i64 %sub.ptr.div147
  %118 = load %struct.ref_s**, %struct.ref_s*** %ppvalue.addr, align 8, !tbaa !5
  store %struct.ref_s* %add.ptr148, %struct.ref_s** %118, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.173

miss:                                             ; preds = %if.then.110
  %119 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %count149 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %119, i32 0, i32 2
  %value150 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count149, i32 0, i32 1
  %intval151 = bitcast %union.v* %value150 to i64*
  %120 = load i64, i64* %intval151, align 8, !tbaa !13
  %conv152 = trunc i64 %120 to i32
  %121 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %maxlength153 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %121, i32 0, i32 3
  %value154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %maxlength153, i32 0, i32 1
  %intval155 = bitcast %union.v* %value154 to i64*
  %122 = load i64, i64* %intval155, align 8, !tbaa !13
  %conv156 = trunc i64 %122 to i32
  %cmp157 = icmp eq i32 %conv152, %conv156
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %miss
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.173

if.end.160:                                       ; preds = %miss
  %123 = load i16*, i16** %pslot, align 8, !tbaa !5
  %cmp161 = icmp eq i16* %123, null
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.end.160
  %124 = load i16*, i16** %kp, align 8, !tbaa !5
  store i16* %124, i16** %pslot, align 8, !tbaa !5
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %if.end.160
  %125 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values165 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %125, i32 0, i32 0
  %value166 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values165, i32 0, i32 1
  %refs167 = bitcast %union.v* %value166 to %struct.ref_s**
  %126 = load %struct.ref_s*, %struct.ref_s** %refs167, align 8, !tbaa !5
  %127 = load i16*, i16** %pslot, align 8, !tbaa !5
  %128 = load i16*, i16** %kbot, align 8, !tbaa !5
  %sub.ptr.lhs.cast168 = ptrtoint i16* %127 to i64
  %sub.ptr.rhs.cast169 = ptrtoint i16* %128 to i64
  %sub.ptr.sub170 = sub i64 %sub.ptr.lhs.cast168, %sub.ptr.rhs.cast169
  %sub.ptr.div171 = sdiv exact i64 %sub.ptr.sub170, 2
  %add.ptr172 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %126, i64 %sub.ptr.div171
  %129 = load %struct.ref_s**, %struct.ref_s*** %ppvalue.addr, align 8, !tbaa !5
  store %struct.ref_s* %add.ptr172, %struct.ref_s** %129, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.173

cleanup.173:                                      ; preds = %if.end.164, %if.then.159, %if.end.140, %if.then.139, %if.then.98
  %130 = bitcast i32* %wrap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i16** %kp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i16** %kbot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast i16** %pslot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  br label %cleanup.309

if.else.178:                                      ; preds = %sw.epilog
  %135 = bitcast %struct.ref_s** %kbot179 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #1
  %136 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys180 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %136, i32 0, i32 1
  %value181 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys180, i32 0, i32 1
  %refs182 = bitcast %union.v* %value181 to %struct.ref_s**
  %137 = load %struct.ref_s*, %struct.ref_s** %refs182, align 8, !tbaa !5
  store %struct.ref_s* %137, %struct.ref_s** %kbot179, align 8, !tbaa !5
  %138 = bitcast %struct.ref_s** %kp183 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %138) #1
  %139 = bitcast %struct.ref_s** %pslot184 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %139) #1
  store %struct.ref_s* null, %struct.ref_s** %pslot184, align 8, !tbaa !5
  %140 = bitcast i32* %wrap185 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  store i32 0, i32* %wrap185, align 4, !tbaa !1
  %141 = load %struct.ref_s*, %struct.ref_s** %kbot179, align 8, !tbaa !5
  %142 = load i32, i32* %size, align 4, !tbaa !1
  %cmp186 = icmp ugt i32 %142, 8388609
  br i1 %cmp186, label %cond.true.188, label %cond.false.190

cond.true.188:                                    ; preds = %if.else.178
  %143 = load i32, i32* %hash, align 4, !tbaa !1
  %144 = load i32, i32* %size, align 4, !tbaa !1
  %rem189 = urem i32 %143, %144
  br label %cond.end.193

cond.false.190:                                   ; preds = %if.else.178
  %145 = load i32, i32* %hash, align 4, !tbaa !1
  %146 = load i32, i32* %size, align 4, !tbaa !1
  %sub191 = sub i32 %146, 1
  %and192 = and i32 %145, %sub191
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.false.190, %cond.true.188
  %cond194 = phi i32 [ %rem189, %cond.true.188 ], [ %and192, %cond.false.190 ]
  %idx.ext195 = zext i32 %cond194 to i64
  %add.ptr196 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %141, i64 %idx.ext195
  %add.ptr197 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr196, i64 2
  store %struct.ref_s* %add.ptr197, %struct.ref_s** %kp183, align 8, !tbaa !5
  br label %for.cond.198

for.cond.198:                                     ; preds = %if.end.277, %cond.end.193
  %147 = load %struct.ref_s*, %struct.ref_s** %kp183, align 8, !tbaa !5
  %incdec.ptr199 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %147, i32 -1
  store %struct.ref_s* %incdec.ptr199, %struct.ref_s** %kp183, align 8, !tbaa !5
  %148 = load %struct.ref_s*, %struct.ref_s** %kp183, align 8, !tbaa !5
  %tas200 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %148, i32 0, i32 0
  %type_attrs201 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas200, i32 0, i32 0
  %149 = bitcast i16* %type_attrs201 to i8*
  %arrayidx202 = getelementptr inbounds i8, i8* %149, i64 1
  %150 = load i8, i8* %arrayidx202, align 1, !tbaa !18
  %conv203 = zext i8 %150 to i32
  store i32 %conv203, i32* %etype, align 4, !tbaa !1
  %151 = load i32, i32* %ktype, align 4, !tbaa !1
  %cmp204 = icmp eq i32 %conv203, %151
  br i1 %cmp204, label %if.then.206, label %if.else.231

if.then.206:                                      ; preds = %for.cond.198
  %152 = load %struct.ref_s*, %struct.ref_s** %kp183, align 8, !tbaa !5
  %value207 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %152, i32 0, i32 1
  %pname208 = bitcast %union.v* %value207 to %struct.name_s**
  %153 = load %struct.name_s*, %struct.name_s** %pname208, align 8, !tbaa !5
  %154 = load %struct.ref_s*, %struct.ref_s** %kp183, align 8, !tbaa !5
  %tas209 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %154, i32 0, i32 0
  %rsize210 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas209, i32 0, i32 2
  %155 = load i32, i32* %rsize210, align 4, !tbaa !17
  %and211 = and i32 %155, 511
  %idx.ext212 = zext i32 %and211 to i64
  %idx.neg213 = sub i64 0, %idx.ext212
  %add.ptr214 = getelementptr inbounds %struct.name_s, %struct.name_s* %153, i64 %idx.neg213
  %156 = bitcast %struct.name_s* %add.ptr214 to %struct.name_sub_table_s*
  %high_index215 = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %156, i32 0, i32 1
  %157 = load i32, i32* %high_index215, align 4, !tbaa !28
  %158 = load %struct.ref_s*, %struct.ref_s** %kp183, align 8, !tbaa !5
  %tas216 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %158, i32 0, i32 0
  %rsize217 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas216, i32 0, i32 2
  %159 = load i32, i32* %rsize217, align 4, !tbaa !17
  %add218 = add i32 %157, %159
  %160 = load i32, i32* %nidx, align 4, !tbaa !1
  %cmp219 = icmp eq i32 %add218, %160
  br i1 %cmp219, label %if.then.221, label %if.end.230

if.then.221:                                      ; preds = %if.then.206
  %161 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values222 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %161, i32 0, i32 0
  %value223 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values222, i32 0, i32 1
  %refs224 = bitcast %union.v* %value223 to %struct.ref_s**
  %162 = load %struct.ref_s*, %struct.ref_s** %refs224, align 8, !tbaa !5
  %163 = load %struct.ref_s*, %struct.ref_s** %kp183, align 8, !tbaa !5
  %164 = load %struct.ref_s*, %struct.ref_s** %kbot179, align 8, !tbaa !5
  %sub.ptr.lhs.cast225 = ptrtoint %struct.ref_s* %163 to i64
  %sub.ptr.rhs.cast226 = ptrtoint %struct.ref_s* %164 to i64
  %sub.ptr.sub227 = sub i64 %sub.ptr.lhs.cast225, %sub.ptr.rhs.cast226
  %sub.ptr.div228 = sdiv exact i64 %sub.ptr.sub227, 16
  %add.ptr229 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %162, i64 %sub.ptr.div228
  %165 = load %struct.ref_s**, %struct.ref_s*** %ppvalue.addr, align 8, !tbaa !5
  store %struct.ref_s* %add.ptr229, %struct.ref_s** %165, align 8, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.305

if.end.230:                                       ; preds = %if.then.206
  br label %if.end.277

if.else.231:                                      ; preds = %for.cond.198
  %166 = load i32, i32* %etype, align 4, !tbaa !1
  %cmp232 = icmp eq i32 %166, 14
  br i1 %cmp232, label %if.then.234, label %if.else.263

if.then.234:                                      ; preds = %if.else.231
  %167 = load %struct.ref_s*, %struct.ref_s** %kp183, align 8, !tbaa !5
  %168 = load %struct.ref_s*, %struct.ref_s** %kbot179, align 8, !tbaa !5
  %cmp235 = icmp eq %struct.ref_s* %167, %168
  br i1 %cmp235, label %if.then.237, label %if.else.249

if.then.237:                                      ; preds = %if.then.234
  %169 = load i32, i32* %wrap185, align 4, !tbaa !1
  %inc238 = add nsw i32 %169, 1
  store i32 %inc238, i32* %wrap185, align 4, !tbaa !1
  %tobool239 = icmp ne i32 %169, 0
  br i1 %tobool239, label %if.then.240, label %if.end.245

if.then.240:                                      ; preds = %if.then.237
  %170 = load %struct.ref_s*, %struct.ref_s** %pslot184, align 8, !tbaa !5
  %cmp241 = icmp eq %struct.ref_s* %170, null
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %if.then.240
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.305

if.end.244:                                       ; preds = %if.then.240
  br label %for.end.278

if.end.245:                                       ; preds = %if.then.237
  %171 = load i32, i32* %size, align 4, !tbaa !1
  %add246 = add i32 %171, 1
  %172 = load %struct.ref_s*, %struct.ref_s** %kp183, align 8, !tbaa !5
  %idx.ext247 = zext i32 %add246 to i64
  %add.ptr248 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %172, i64 %idx.ext247
  store %struct.ref_s* %add.ptr248, %struct.ref_s** %kp183, align 8, !tbaa !5
  br label %if.end.262

if.else.249:                                      ; preds = %if.then.234
  %173 = load %struct.ref_s*, %struct.ref_s** %kp183, align 8, !tbaa !5
  %tas250 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %173, i32 0, i32 0
  %type_attrs251 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas250, i32 0, i32 0
  %174 = load i16, i16* %type_attrs251, align 2, !tbaa !7
  %conv252 = zext i16 %174 to i32
  %and253 = and i32 %conv252, 128
  %tobool254 = icmp ne i32 %and253, 0
  br i1 %tobool254, label %if.then.255, label %if.else.260

if.then.255:                                      ; preds = %if.else.249
  %175 = load %struct.ref_s*, %struct.ref_s** %pslot184, align 8, !tbaa !5
  %cmp256 = icmp eq %struct.ref_s* %175, null
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.then.255
  %176 = load %struct.ref_s*, %struct.ref_s** %kp183, align 8, !tbaa !5
  store %struct.ref_s* %176, %struct.ref_s** %pslot184, align 8, !tbaa !5
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.258, %if.then.255
  br label %if.end.261

if.else.260:                                      ; preds = %if.else.249
  br label %for.end.278

if.end.261:                                       ; preds = %if.end.259
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %if.end.245
  br label %if.end.276

if.else.263:                                      ; preds = %if.else.231
  %177 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %178 = load %struct.ref_s*, %struct.ref_s** %kp183, align 8, !tbaa !5
  %179 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %call264 = call i32 @obj_eq(%struct.gs_memory_s* %177, %struct.ref_s* %178, %struct.ref_s* %179) #5
  %tobool265 = icmp ne i32 %call264, 0
  br i1 %tobool265, label %if.then.266, label %if.end.275

if.then.266:                                      ; preds = %if.else.263
  %180 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values267 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %180, i32 0, i32 0
  %value268 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values267, i32 0, i32 1
  %refs269 = bitcast %union.v* %value268 to %struct.ref_s**
  %181 = load %struct.ref_s*, %struct.ref_s** %refs269, align 8, !tbaa !5
  %182 = load %struct.ref_s*, %struct.ref_s** %kp183, align 8, !tbaa !5
  %183 = load %struct.ref_s*, %struct.ref_s** %kbot179, align 8, !tbaa !5
  %sub.ptr.lhs.cast270 = ptrtoint %struct.ref_s* %182 to i64
  %sub.ptr.rhs.cast271 = ptrtoint %struct.ref_s* %183 to i64
  %sub.ptr.sub272 = sub i64 %sub.ptr.lhs.cast270, %sub.ptr.rhs.cast271
  %sub.ptr.div273 = sdiv exact i64 %sub.ptr.sub272, 16
  %add.ptr274 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %181, i64 %sub.ptr.div273
  %184 = load %struct.ref_s**, %struct.ref_s*** %ppvalue.addr, align 8, !tbaa !5
  store %struct.ref_s* %add.ptr274, %struct.ref_s** %184, align 8, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.305

if.end.275:                                       ; preds = %if.else.263
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.end.262
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.end.230
  br label %for.cond.198

for.end.278:                                      ; preds = %if.else.260, %if.end.244
  %185 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %count279 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %185, i32 0, i32 2
  %value280 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count279, i32 0, i32 1
  %intval281 = bitcast %union.v* %value280 to i64*
  %186 = load i64, i64* %intval281, align 8, !tbaa !13
  %conv282 = trunc i64 %186 to i32
  %187 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %maxlength283 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %187, i32 0, i32 3
  %value284 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %maxlength283, i32 0, i32 1
  %intval285 = bitcast %union.v* %value284 to i64*
  %188 = load i64, i64* %intval285, align 8, !tbaa !13
  %conv286 = trunc i64 %188 to i32
  %cmp287 = icmp eq i32 %conv282, %conv286
  br i1 %cmp287, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %for.end.278
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.305

if.end.290:                                       ; preds = %for.end.278
  %189 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values291 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %189, i32 0, i32 0
  %value292 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values291, i32 0, i32 1
  %refs293 = bitcast %union.v* %value292 to %struct.ref_s**
  %190 = load %struct.ref_s*, %struct.ref_s** %refs293, align 8, !tbaa !5
  %191 = load %struct.ref_s*, %struct.ref_s** %pslot184, align 8, !tbaa !5
  %cmp294 = icmp ne %struct.ref_s* %191, null
  br i1 %cmp294, label %cond.true.296, label %cond.false.297

cond.true.296:                                    ; preds = %if.end.290
  %192 = load %struct.ref_s*, %struct.ref_s** %pslot184, align 8, !tbaa !5
  br label %cond.end.298

cond.false.297:                                   ; preds = %if.end.290
  %193 = load %struct.ref_s*, %struct.ref_s** %kp183, align 8, !tbaa !5
  br label %cond.end.298

cond.end.298:                                     ; preds = %cond.false.297, %cond.true.296
  %cond299 = phi %struct.ref_s* [ %192, %cond.true.296 ], [ %193, %cond.false.297 ]
  %194 = load %struct.ref_s*, %struct.ref_s** %kbot179, align 8, !tbaa !5
  %sub.ptr.lhs.cast300 = ptrtoint %struct.ref_s* %cond299 to i64
  %sub.ptr.rhs.cast301 = ptrtoint %struct.ref_s* %194 to i64
  %sub.ptr.sub302 = sub i64 %sub.ptr.lhs.cast300, %sub.ptr.rhs.cast301
  %sub.ptr.div303 = sdiv exact i64 %sub.ptr.sub302, 16
  %add.ptr304 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %190, i64 %sub.ptr.div303
  %195 = load %struct.ref_s**, %struct.ref_s*** %ppvalue.addr, align 8, !tbaa !5
  store %struct.ref_s* %add.ptr304, %struct.ref_s** %195, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.305

cleanup.305:                                      ; preds = %cond.end.298, %if.then.289, %if.then.266, %if.then.243, %if.then.221
  %196 = bitcast i32* %wrap185 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast %struct.ref_s** %pslot184 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast %struct.ref_s** %kp183 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast %struct.ref_s** %kbot179 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  br label %cleanup.309

cleanup.309:                                      ; preds = %cleanup.305, %cleanup.173, %sw.bb.59, %cleanup
  %200 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast i32* %ktype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %hash to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i16* %kpack to i8*
  call void @llvm.lifetime.end(i64 2, i8* %203) #1
  %204 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %etype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = load i32, i32* %retval
  ret i32 %208
}

declare i32 @names_ref(%struct.name_table_s*, i8*, i32, %struct.ref_s*, i32) #2

; Function Attrs: nounwind
declare double @frexp(double, i32*) #3

declare i32 @obj_eq(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @dict_find_string(%struct.ref_s* %pdref, i8* %kstr, %struct.ref_s** %ppvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %ppvalue.addr = alloca %struct.ref_s**, align 8
  %code = alloca i32, align 4
  %kname = alloca %struct.ref_s, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !5
  store %struct.ref_s** %ppvalue, %struct.ref_s*** %ppvalue.addr, align 8, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s* %kname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.ref_s* %2, null
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %5 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !5
  store %struct.dict_s* %5, %struct.dict_s** %pdict, align 8, !tbaa !5
  %6 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %6, i32 0, i32 4
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value2 to %struct.obj_header_s**
  %7 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !5
  %8 = bitcast %struct.obj_header_s* %7 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 2
  %9 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !30
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %9, i32 0, i32 16
  %10 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !32
  %11 = load i8*, i8** %kstr.addr, align 8, !tbaa !5
  %12 = load i8*, i8** %kstr.addr, align 8, !tbaa !5
  %call = call i64 @strlen(i8* %12) #7
  %conv = trunc i64 %call to i32
  %call3 = call i32 @names_ref(%struct.name_table_s* %10, i8* %11, i32 %conv, %struct.ref_s* %kname, i32 -1) #5
  store i32 %call3, i32* %code, align 4, !tbaa !1
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %13 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %15 = load %struct.ref_s**, %struct.ref_s*** %ppvalue.addr, align 8, !tbaa !5
  %call7 = call i32 @dict_find(%struct.ref_s* %14, %struct.ref_s* %kname, %struct.ref_s** %15) #5
  store i32 %call7, i32* %code, align 4, !tbaa !1
  %16 = load i32, i32* %code, align 4, !tbaa !1
  %cmp8 = icmp eq i32 %16, -2
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.6
  %18 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  br label %cleanup.13

if.end.12:                                        ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.13

cleanup.13:                                       ; preds = %if.end.12, %cleanup
  %19 = bitcast %struct.ref_s* %kname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %19) #1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @dict_put(%struct.ref_s* %pdref, %struct.ref_s* %pkey, %struct.ref_s* %pvalue, %struct.dict_stack_s* %pds) #0 {
entry:
  %retval = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pkey.addr = alloca %struct.ref_s*, align 8
  %pvalue.addr = alloca %struct.ref_s*, align 8
  %pds.addr = alloca %struct.dict_stack_s*, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %pmem = alloca %struct.gs_memory_s*, align 8
  %rcode = alloca i32, align 4
  %code = alloca i32, align 4
  %pvslot = alloca %struct.ref_s*, align 8
  %kname = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  %index = alloca i32, align 4
  %code29 = alloca i32, align 4
  %kp = alloca i16*, align 8
  %code65 = alloca i32, align 4
  %kp105 = alloca %struct.ref_s*, align 8
  %pname162 = alloca %struct.name_s*, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  store %struct.ref_s* %pkey, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  store %struct.ref_s* %pvalue, %struct.ref_s** %pvalue.addr, align 8, !tbaa !5
  store %struct.dict_stack_s* %pds, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %0 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %2 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !5
  store %struct.dict_s* %2, %struct.dict_s** %pdict, align 8, !tbaa !5
  %3 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %4, i32 0, i32 4
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value2 to %struct.obj_header_s**
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !5
  %6 = bitcast %struct.obj_header_s* %5 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %6, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %7 = bitcast %struct.gs_memory_s** %pmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory3 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %8, i32 0, i32 4
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory3, i32 0, i32 1
  %pstruct5 = bitcast %union.v* %value4 to %struct.obj_header_s**
  %9 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct5, align 8, !tbaa !5
  %10 = bitcast %struct.obj_header_s* %9 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %pmem, align 8, !tbaa !5
  %11 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %rcode, align 4, !tbaa !1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast %struct.ref_s** %pvslot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast %struct.ref_s* %kname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #1
  %15 = load %struct.ref_s*, %struct.ref_s** %pvalue.addr, align 8, !tbaa !5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %16 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %16 to i32
  %and = and i32 %conv, 12
  %17 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %18 = load i16, i16* %type_attrs7, align 2, !tbaa !7
  %conv8 = zext i16 %18 to i32
  %and9 = and i32 %conv8, 12
  %cmp = icmp ugt i32 %and, %and9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.end:                                           ; preds = %entry
  br label %top

top:                                              ; preds = %cleanup.188, %if.end
  %19 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %20 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %call = call i32 @dict_find(%struct.ref_s* %19, %struct.ref_s* %20, %struct.ref_s** %pvslot) #5
  store i32 %call, i32* %code, align 4, !tbaa !1
  %cmp11 = icmp sle i32 %call, 0
  br i1 %cmp11, label %if.then.13, label %if.end.191

if.then.13:                                       ; preds = %top
  %21 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32, i32* %code, align 4, !tbaa !1
  switch i32 %22, label %sw.default [
    i32 0, label %sw.epilog
    i32 -2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.13
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem, align 8, !tbaa !5
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 2
  %24 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !30
  %dict_auto_expand = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %24, i32 0, i32 17
  %25 = load i32, i32* %dict_auto_expand, align 4, !tbaa !36
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %sw.bb
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.188

if.end.15:                                        ; preds = %sw.bb
  %26 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %27 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %call16 = call i32 @dict_grow(%struct.ref_s* %26, %struct.dict_stack_s* %27) #5
  store i32 %call16, i32* %code, align 4, !tbaa !1
  %28 = load i32, i32* %code, align 4, !tbaa !1
  %cmp17 = icmp slt i32 %28, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  %29 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.188

if.end.20:                                        ; preds = %if.end.15
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.188

sw.default:                                       ; preds = %if.then.13
  %30 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.188

sw.epilog:                                        ; preds = %if.then.13
  %31 = load %struct.ref_s*, %struct.ref_s** %pvslot, align 8, !tbaa !5
  %32 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %32, i32 0, i32 0
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 1
  %refs = bitcast %union.v* %value21 to %struct.ref_s**
  %33 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %31 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv22 = trunc i64 %sub.ptr.div to i32
  store i32 %conv22, i32* %index, align 4, !tbaa !1
  %34 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  %35 = bitcast i16* %type_attrs24 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv25 = zext i8 %36 to i32
  %cmp26 = icmp eq i32 %conv25, 18
  br i1 %cmp26, label %if.then.28, label %if.end.43

if.then.28:                                       ; preds = %sw.epilog
  %37 = bitcast i32* %code29 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %type_attrs31 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 0
  %39 = load i16, i16* %type_attrs31, align 2, !tbaa !7
  %conv32 = zext i16 %39 to i32
  %and33 = and i32 %conv32, 32
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.then.28
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.then.28
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem, align 8, !tbaa !5
  %gs_lib_ctx37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 2
  %41 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx37, align 8, !tbaa !30
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %41, i32 0, i32 16
  %42 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !32
  %43 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %call38 = call i32 @names_from_string(%struct.name_table_s* %42, %struct.ref_s* %43, %struct.ref_s* %kname) #5
  store i32 %call38, i32* %code29, align 4, !tbaa !1
  %44 = load i32, i32* %code29, align 4, !tbaa !1
  %cmp39 = icmp slt i32 %44, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.36
  %45 = load i32, i32* %code29, align 4, !tbaa !1
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.36
  store %struct.ref_s* %kname, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.41, %if.then.35
  %46 = bitcast i32* %code29 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.188 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.43

if.end.43:                                        ; preds = %cleanup.cont, %sw.epilog
  %47 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys = getelementptr inbounds %struct.dict_s, %struct.dict_s* %47, i32 0, i32 1
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys, i32 0, i32 0
  %type_attrs45 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 0
  %48 = bitcast i16* %type_attrs45 to i8*
  %arrayidx46 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx46, align 1, !tbaa !18
  %conv47 = zext i8 %49 to i32
  %cmp48 = icmp eq i32 %conv47, 6
  br i1 %cmp48, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %if.end.43
  %50 = bitcast i16** %kp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 0
  %type_attrs52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 0
  %52 = bitcast i16* %type_attrs52 to i8*
  %arrayidx53 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx53, align 1, !tbaa !18
  %conv54 = zext i8 %53 to i32
  %cmp55 = icmp eq i32 %conv54, 13
  br i1 %cmp55, label %lor.lhs.false, label %if.then.64

lor.lhs.false:                                    ; preds = %if.then.50
  %54 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 1
  %pname = bitcast %union.v* %value57 to %struct.name_s**
  %55 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !5
  %56 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas58, i32 0, i32 2
  %57 = load i32, i32* %rsize, align 4, !tbaa !17
  %and59 = and i32 %57, 511
  %idx.ext = zext i32 %and59 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.name_s, %struct.name_s* %55, i64 %idx.neg
  %58 = bitcast %struct.name_s* %add.ptr to %struct.name_sub_table_s*
  %high_index = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %58, i32 0, i32 1
  %59 = load i32, i32* %high_index, align 4, !tbaa !28
  %60 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 0
  %rsize61 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 2
  %61 = load i32, i32* %rsize61, align 4, !tbaa !17
  %add = add i32 %59, %61
  %cmp62 = icmp ugt i32 %add, 4095
  br i1 %cmp62, label %if.then.64, label %if.end.72

if.then.64:                                       ; preds = %lor.lhs.false, %if.then.50
  %62 = bitcast i32* %code65 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %64 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %call66 = call i32 @dict_unpack(%struct.ref_s* %63, %struct.dict_stack_s* %64) #5
  store i32 %call66, i32* %code65, align 4, !tbaa !1
  %65 = load i32, i32* %code65, align 4, !tbaa !1
  %cmp67 = icmp slt i32 %65, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.64
  %66 = load i32, i32* %code65, align 4, !tbaa !1
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71

if.end.70:                                        ; preds = %if.then.64
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.71

cleanup.71:                                       ; preds = %if.end.70, %if.then.69
  %67 = bitcast i32* %code65 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  br label %cleanup.102

if.end.72:                                        ; preds = %lor.lhs.false
  %68 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys73 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %68, i32 0, i32 1
  %value74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys73, i32 0, i32 1
  %writable_packed = bitcast %union.v* %value74 to i16**
  %69 = load i16*, i16** %writable_packed, align 8, !tbaa !5
  %70 = load i32, i32* %index, align 4, !tbaa !1
  %idx.ext75 = zext i32 %70 to i64
  %add.ptr76 = getelementptr inbounds i16, i16* %69, i64 %idx.ext75
  store i16* %add.ptr76, i16** %kp, align 8, !tbaa !5
  %71 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys77 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %71, i32 0, i32 1
  %tas78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys77, i32 0, i32 0
  %type_attrs79 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas78, i32 0, i32 0
  %72 = load i16, i16* %type_attrs79, align 2, !tbaa !7
  %conv80 = zext i16 %72 to i32
  %73 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %test_mask = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %73, i32 0, i32 21
  %74 = load i32, i32* %test_mask, align 4, !tbaa !19
  %and81 = and i32 %conv80, %74
  %cmp82 = icmp eq i32 %and81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.end.72
  %75 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %76 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys85 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %76, i32 0, i32 1
  %77 = load i16*, i16** %kp, align 8, !tbaa !5
  %call86 = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %75, %struct.ref_s* %keys85, i16* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %if.end.72
  %78 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %value88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 1
  %pname89 = bitcast %union.v* %value88 to %struct.name_s**
  %79 = load %struct.name_s*, %struct.name_s** %pname89, align 8, !tbaa !5
  %80 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i32 0, i32 0
  %rsize91 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas90, i32 0, i32 2
  %81 = load i32, i32* %rsize91, align 4, !tbaa !17
  %and92 = and i32 %81, 511
  %idx.ext93 = zext i32 %and92 to i64
  %idx.neg94 = sub i64 0, %idx.ext93
  %add.ptr95 = getelementptr inbounds %struct.name_s, %struct.name_s* %79, i64 %idx.neg94
  %82 = bitcast %struct.name_s* %add.ptr95 to %struct.name_sub_table_s*
  %high_index96 = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %82, i32 0, i32 1
  %83 = load i32, i32* %high_index96, align 4, !tbaa !28
  %84 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 0
  %rsize98 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas97, i32 0, i32 2
  %85 = load i32, i32* %rsize98, align 4, !tbaa !17
  %add99 = add i32 %83, %85
  %add100 = add i32 49152, %add99
  %conv101 = trunc i32 %add100 to i16
  %86 = load i16*, i16** %kp, align 8, !tbaa !5
  store i16 %conv101, i16* %86, align 2, !tbaa !12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.102

cleanup.102:                                      ; preds = %if.end.87, %cleanup.71
  %87 = bitcast i16** %kp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %cleanup.dest.103 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.103, label %cleanup.188 [
    i32 0, label %cleanup.cont.104
  ]

cleanup.cont.104:                                 ; preds = %cleanup.102
  br label %if.end.139

if.else:                                          ; preds = %if.end.43
  %88 = bitcast %struct.ref_s** %kp105 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  %89 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys106 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %89, i32 0, i32 1
  %value107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys106, i32 0, i32 1
  %refs108 = bitcast %union.v* %value107 to %struct.ref_s**
  %90 = load %struct.ref_s*, %struct.ref_s** %refs108, align 8, !tbaa !5
  %91 = load i32, i32* %index, align 4, !tbaa !1
  %idx.ext109 = zext i32 %91 to i64
  %add.ptr110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i64 %idx.ext109
  store %struct.ref_s* %add.ptr110, %struct.ref_s** %kp105, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %92 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i32 0, i32 0
  %type_attrs112 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas111, i32 0, i32 0
  %93 = load i16, i16* %type_attrs112, align 2, !tbaa !7
  %conv113 = zext i16 %93 to i32
  %and114 = and i32 %conv113, 12
  %94 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %tas115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i32 0, i32 0
  %type_attrs116 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas115, i32 0, i32 0
  %95 = load i16, i16* %type_attrs116, align 2, !tbaa !7
  %conv117 = zext i16 %95 to i32
  %and118 = and i32 %conv117, 12
  %cmp119 = icmp ugt i32 %and114, %and118
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %do.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136

if.end.122:                                       ; preds = %do.end
  %96 = load %struct.ref_s*, %struct.ref_s** %kp105, align 8, !tbaa !5
  %tas123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i32 0, i32 0
  %type_attrs124 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas123, i32 0, i32 0
  %97 = load i16, i16* %type_attrs124, align 2, !tbaa !7
  %conv125 = zext i16 %97 to i32
  %98 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %test_mask126 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %98, i32 0, i32 21
  %99 = load i32, i32* %test_mask126, align 4, !tbaa !19
  %and127 = and i32 %conv125, %99
  %cmp128 = icmp eq i32 %and127, 0
  br i1 %cmp128, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.122
  %100 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %101 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys130 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %101, i32 0, i32 1
  %102 = load %struct.ref_s*, %struct.ref_s** %kp105, align 8, !tbaa !5
  %103 = bitcast %struct.ref_s* %102 to i16*
  %call131 = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %100, %struct.ref_s* %keys130, i16* %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %cond.end

cond.false:                                       ; preds = %if.end.122
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call131, %cond.true ], [ 0, %cond.false ]
  %104 = load %struct.ref_s*, %struct.ref_s** %kp105, align 8, !tbaa !5
  %105 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %106 = bitcast %struct.ref_s* %104 to i8*
  %107 = bitcast %struct.ref_s* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 16, i32 8, i1 false), !tbaa.struct !11
  %108 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %new_mask = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %108, i32 0, i32 20
  %109 = load i32, i32* %new_mask, align 4, !tbaa !27
  %110 = load %struct.ref_s*, %struct.ref_s** %kp105, align 8, !tbaa !5
  %tas132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i32 0, i32 0
  %type_attrs133 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas132, i32 0, i32 0
  %111 = load i16, i16* %type_attrs133, align 2, !tbaa !7
  %conv134 = zext i16 %111 to i32
  %or = or i32 %conv134, %109
  %conv135 = trunc i32 %or to i16
  store i16 %conv135, i16* %type_attrs133, align 2, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.136

cleanup.136:                                      ; preds = %cond.end, %if.then.121
  %112 = bitcast %struct.ref_s** %kp105 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %cleanup.dest.137 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.137, label %cleanup.188 [
    i32 0, label %cleanup.cont.138
  ]

cleanup.cont.138:                                 ; preds = %cleanup.136
  br label %if.end.139

if.end.139:                                       ; preds = %cleanup.cont.138, %cleanup.cont.104
  %113 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %count = getelementptr inbounds %struct.dict_s, %struct.dict_s* %113, i32 0, i32 2
  %tas140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count, i32 0, i32 0
  %type_attrs141 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas140, i32 0, i32 0
  %114 = load i16, i16* %type_attrs141, align 2, !tbaa !7
  %conv142 = zext i16 %114 to i32
  %115 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %test_mask143 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %115, i32 0, i32 21
  %116 = load i32, i32* %test_mask143, align 4, !tbaa !19
  %and144 = and i32 %conv142, %116
  %cmp145 = icmp eq i32 %and144, 0
  br i1 %cmp145, label %cond.true.147, label %cond.false.150

cond.true.147:                                    ; preds = %if.end.139
  %117 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %118 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %119 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %count148 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %119, i32 0, i32 2
  %120 = bitcast %struct.ref_s* %count148 to i16*
  %call149 = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %117, %struct.ref_s* %118, i16* %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %cond.end.151

cond.false.150:                                   ; preds = %if.end.139
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.150, %cond.true.147
  %cond152 = phi i32 [ %call149, %cond.true.147 ], [ 0, %cond.false.150 ]
  %121 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %count153 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %121, i32 0, i32 2
  %value154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count153, i32 0, i32 1
  %intval = bitcast %union.v* %value154 to i64*
  %122 = load i64, i64* %intval, align 8, !tbaa !13
  %inc = add nsw i64 %122, 1
  store i64 %inc, i64* %intval, align 8, !tbaa !13
  %123 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %123, i32 0, i32 0
  %type_attrs156 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas155, i32 0, i32 0
  %124 = bitcast i16* %type_attrs156 to i8*
  %arrayidx157 = getelementptr inbounds i8, i8* %124, i64 1
  %125 = load i8, i8* %arrayidx157, align 1, !tbaa !18
  %conv158 = zext i8 %125 to i32
  %cmp159 = icmp eq i32 %conv158, 13
  br i1 %cmp159, label %if.then.161, label %if.end.187

if.then.161:                                      ; preds = %cond.end.151
  %126 = bitcast %struct.name_s** %pname162 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %126) #1
  %127 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %value163 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %127, i32 0, i32 1
  %pname164 = bitcast %union.v* %value163 to %struct.name_s**
  %128 = load %struct.name_s*, %struct.name_s** %pname164, align 8, !tbaa !5
  store %struct.name_s* %128, %struct.name_s** %pname162, align 8, !tbaa !5
  %129 = load %struct.name_s*, %struct.name_s** %pname162, align 8, !tbaa !5
  %pvalue165 = getelementptr inbounds %struct.name_s, %struct.name_s* %129, i32 0, i32 0
  %130 = load %struct.ref_s*, %struct.ref_s** %pvalue165, align 8, !tbaa !37
  %cmp166 = icmp eq %struct.ref_s* %130, null
  br i1 %cmp166, label %land.lhs.true, label %if.else.181

land.lhs.true:                                    ; preds = %if.then.161
  %131 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %tobool168 = icmp ne %struct.dict_stack_s* %131, null
  br i1 %tobool168, label %land.lhs.true.169, label %if.else.181

land.lhs.true.169:                                ; preds = %land.lhs.true
  %132 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %133 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %call170 = call i32 @dstack_dict_is_permanent(%struct.dict_stack_s* %132, %struct.ref_s* %133) #5
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %land.lhs.true.172, label %if.else.181

land.lhs.true.172:                                ; preds = %land.lhs.true.169
  %134 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %new_mask173 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %134, i32 0, i32 20
  %135 = load i32, i32* %new_mask173, align 4, !tbaa !27
  %cmp174 = icmp ne i32 %135, 0
  br i1 %cmp174, label %if.else.181, label %if.then.176

if.then.176:                                      ; preds = %land.lhs.true.172
  br label %do.body.177

do.body.177:                                      ; preds = %if.then.176
  br label %do.cond.178

do.cond.178:                                      ; preds = %do.body.177
  br label %do.end.179

do.end.179:                                       ; preds = %do.cond.178
  %136 = load %struct.ref_s*, %struct.ref_s** %pvslot, align 8, !tbaa !5
  %137 = load %struct.name_s*, %struct.name_s** %pname162, align 8, !tbaa !5
  %pvalue180 = getelementptr inbounds %struct.name_s, %struct.name_s* %137, i32 0, i32 0
  store %struct.ref_s* %136, %struct.ref_s** %pvalue180, align 8, !tbaa !37
  br label %if.end.186

if.else.181:                                      ; preds = %land.lhs.true.172, %land.lhs.true.169, %land.lhs.true, %if.then.161
  br label %do.body.182

do.body.182:                                      ; preds = %if.else.181
  br label %do.cond.183

do.cond.183:                                      ; preds = %do.body.182
  br label %do.end.184

do.end.184:                                       ; preds = %do.cond.183
  %138 = load %struct.name_s*, %struct.name_s** %pname162, align 8, !tbaa !5
  %pvalue185 = getelementptr inbounds %struct.name_s, %struct.name_s* %138, i32 0, i32 0
  store %struct.ref_s* inttoptr (i64 1 to %struct.ref_s*), %struct.ref_s** %pvalue185, align 8, !tbaa !37
  br label %if.end.186

if.end.186:                                       ; preds = %do.end.184, %do.end.179
  %139 = bitcast %struct.name_s** %pname162 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %cond.end.151
  store i32 1, i32* %rcode, align 4, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.188

cleanup.188:                                      ; preds = %if.end.187, %cleanup.136, %cleanup.102, %cleanup, %sw.default, %if.end.20, %if.then.19, %if.then.14
  %140 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %cleanup.dest.189 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.189, label %cleanup.216 [
    i32 0, label %cleanup.cont.190
    i32 2, label %top
  ]

cleanup.cont.190:                                 ; preds = %cleanup.188
  br label %if.end.191

if.end.191:                                       ; preds = %cleanup.cont.190, %top
  br label %do.body.192

do.body.192:                                      ; preds = %if.end.191
  br label %do.cond.193

do.cond.193:                                      ; preds = %do.body.192
  br label %do.end.194

do.end.194:                                       ; preds = %do.cond.193
  %141 = load %struct.ref_s*, %struct.ref_s** %pvslot, align 8, !tbaa !5
  %tas195 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %141, i32 0, i32 0
  %type_attrs196 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas195, i32 0, i32 0
  %142 = load i16, i16* %type_attrs196, align 2, !tbaa !7
  %conv197 = zext i16 %142 to i32
  %143 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %test_mask198 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %143, i32 0, i32 21
  %144 = load i32, i32* %test_mask198, align 4, !tbaa !19
  %and199 = and i32 %conv197, %144
  %cmp200 = icmp eq i32 %and199, 0
  br i1 %cmp200, label %cond.true.202, label %cond.false.207

cond.true.202:                                    ; preds = %do.end.194
  %145 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %146 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value203 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %146, i32 0, i32 1
  %pdict204 = bitcast %union.v* %value203 to %struct.dict_s**
  %147 = load %struct.dict_s*, %struct.dict_s** %pdict204, align 8, !tbaa !5
  %values205 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %147, i32 0, i32 0
  %148 = load %struct.ref_s*, %struct.ref_s** %pvslot, align 8, !tbaa !5
  %149 = bitcast %struct.ref_s* %148 to i16*
  %call206 = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %145, %struct.ref_s* %values205, i16* %149, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)) #5
  br label %cond.end.208

cond.false.207:                                   ; preds = %do.end.194
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.207, %cond.true.202
  %cond209 = phi i32 [ %call206, %cond.true.202 ], [ 0, %cond.false.207 ]
  %150 = load %struct.ref_s*, %struct.ref_s** %pvslot, align 8, !tbaa !5
  %151 = load %struct.ref_s*, %struct.ref_s** %pvalue.addr, align 8, !tbaa !5
  %152 = bitcast %struct.ref_s* %150 to i8*
  %153 = bitcast %struct.ref_s* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %152, i8* %153, i64 16, i32 8, i1 false), !tbaa.struct !11
  %154 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %new_mask210 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %154, i32 0, i32 20
  %155 = load i32, i32* %new_mask210, align 4, !tbaa !27
  %156 = load %struct.ref_s*, %struct.ref_s** %pvslot, align 8, !tbaa !5
  %tas211 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %156, i32 0, i32 0
  %type_attrs212 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas211, i32 0, i32 0
  %157 = load i16, i16* %type_attrs212, align 2, !tbaa !7
  %conv213 = zext i16 %157 to i32
  %or214 = or i32 %conv213, %155
  %conv215 = trunc i32 %or214 to i16
  store i16 %conv215, i16* %type_attrs212, align 2, !tbaa !7
  %158 = load i32, i32* %rcode, align 4, !tbaa !1
  store i32 %158, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

cleanup.216:                                      ; preds = %cond.end.208, %cleanup.188, %if.then
  %159 = bitcast %struct.ref_s* %kname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %159) #1
  %160 = bitcast %struct.ref_s** %pvslot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast %struct.gs_memory_s** %pmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = load i32, i32* %retval
  ret i32 %166
}

; Function Attrs: nounwind uwtable
define i32 @dict_grow(%struct.ref_s* %pdref, %struct.dict_stack_s* %pds) #0 {
entry:
  %retval = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pds.addr = alloca %struct.dict_stack_s*, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %new_size = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  store %struct.dict_stack_s* %pds, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %0 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %2 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !5
  store %struct.dict_s* %2, %struct.dict_s** %pdict, align 8, !tbaa !5
  %3 = bitcast i64* %new_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %maxlength = getelementptr inbounds %struct.dict_s, %struct.dict_s* %4, i32 0, i32 3
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %maxlength, i32 0, i32 1
  %intval = bitcast %union.v* %value2 to i64*
  %5 = load i64, i64* %intval, align 8, !tbaa !13
  %conv = trunc i64 %5 to i32
  %conv3 = zext i32 %conv to i64
  store i64 %conv3, i64* %new_size, align 8, !tbaa !13
  %6 = load i64, i64* %new_size, align 8, !tbaa !13
  %cmp = icmp ult i64 %6, 20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %new_size, align 8, !tbaa !13
  %add = add i64 %7, 10
  store i64 %add, i64* %new_size, align 8, !tbaa !13
  br label %if.end.10

if.else:                                          ; preds = %entry
  %8 = load i64, i64* %new_size, align 8, !tbaa !13
  %cmp5 = icmp ult i64 %8, 200
  br i1 %cmp5, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  %9 = load i64, i64* %new_size, align 8, !tbaa !13
  %mul = mul i64 %9, 2
  store i64 %mul, i64* %new_size, align 8, !tbaa !13
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %10 = load i64, i64* %new_size, align 8, !tbaa !13
  %div = udiv i64 %10, 2
  %11 = load i64, i64* %new_size, align 8, !tbaa !13
  %add9 = add i64 %11, %div
  store i64 %add9, i64* %new_size, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %12 = load i64, i64* %new_size, align 8, !tbaa !13
  %cmp11 = icmp ugt i64 %12, 4294967295
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i64 4294967295, i64* %new_size, align 8, !tbaa !13
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.10
  %13 = load i64, i64* %new_size, align 8, !tbaa !13
  %14 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %14, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %15 = load i32, i32* %rsize, align 4, !tbaa !17
  %sub = sub i32 %15, 1
  %conv15 = zext i32 %sub to i64
  %cmp16 = icmp ugt i64 %13, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.54

if.then.18:                                       ; preds = %if.end.14
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %18 = load i64, i64* %new_size, align 8, !tbaa !13
  %conv19 = trunc i64 %18 to i32
  %19 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %call = call i32 @dict_resize(%struct.ref_s* %17, i32 %conv19, %struct.dict_stack_s* %19) #5
  store i32 %call, i32* %code, align 4, !tbaa !1
  %20 = load i32, i32* %code, align 4, !tbaa !1
  %cmp20 = icmp sge i32 %20, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.18
  %21 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.18
  %22 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values24 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %22, i32 0, i32 0
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values24, i32 0, i32 0
  %rsize26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 2
  %23 = load i32, i32* %rsize26, align 4, !tbaa !17
  %sub27 = sub i32 %23, 1
  %cmp28 = icmp ult i32 %sub27, 16777215
  br i1 %cmp28, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %if.end.23
  %24 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %25 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %call31 = call i32 @dict_resize(%struct.ref_s* %24, i32 16777215, %struct.dict_stack_s* %25) #5
  store i32 %call31, i32* %code, align 4, !tbaa !1
  %26 = load i32, i32* %code, align 4, !tbaa !1
  %cmp32 = icmp sge i32 %26, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.30
  %27 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.then.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.23
  %28 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values37 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %28, i32 0, i32 0
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values37, i32 0, i32 0
  %rsize39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 2
  %29 = load i32, i32* %rsize39, align 4, !tbaa !17
  %sub40 = sub i32 %29, 1
  %30 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %maxlength41 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %30, i32 0, i32 3
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %maxlength41, i32 0, i32 1
  %intval43 = bitcast %union.v* %value42 to i64*
  %31 = load i64, i64* %intval43, align 8, !tbaa !13
  %conv44 = trunc i64 %31 to i32
  %cmp45 = icmp eq i32 %sub40, %conv44
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.36
  %32 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.end.36
  %33 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values49 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %33, i32 0, i32 0
  %tas50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values49, i32 0, i32 0
  %rsize51 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas50, i32 0, i32 2
  %34 = load i32, i32* %rsize51, align 4, !tbaa !17
  %sub52 = sub i32 %34, 1
  %conv53 = zext i32 %sub52 to i64
  store i64 %conv53, i64* %new_size, align 8, !tbaa !13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.48, %if.then.47, %if.then.34, %if.then.22
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.69 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.54

if.end.54:                                        ; preds = %cleanup.cont, %if.end.14
  %36 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %maxlength55 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %36, i32 0, i32 3
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %maxlength55, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 0
  %37 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv57 = zext i16 %37 to i32
  %38 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %38, i32 0, i32 4
  %value58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value58 to %struct.obj_header_s**
  %39 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !5
  %40 = bitcast %struct.obj_header_s* %39 to %struct.gs_ref_memory_s*
  %test_mask = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %40, i32 0, i32 21
  %41 = load i32, i32* %test_mask, align 4, !tbaa !19
  %and = and i32 %conv57, %41
  %cmp59 = icmp eq i32 %and, 0
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.54
  %42 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory61 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %42, i32 0, i32 4
  %value62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory61, i32 0, i32 1
  %pstruct63 = bitcast %union.v* %value62 to %struct.obj_header_s**
  %43 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct63, align 8, !tbaa !5
  %44 = bitcast %struct.obj_header_s* %43 to %struct.gs_ref_memory_s*
  %45 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %46 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %maxlength64 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %46, i32 0, i32 3
  %47 = bitcast %struct.ref_s* %maxlength64 to i16*
  %call65 = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %44, %struct.ref_s* %45, i16* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #5
  br label %cond.end

cond.false:                                       ; preds = %if.end.54
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call65, %cond.true ], [ 0, %cond.false ]
  %48 = load i64, i64* %new_size, align 8, !tbaa !13
  %49 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %maxlength66 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %49, i32 0, i32 3
  %value67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %maxlength66, i32 0, i32 1
  %intval68 = bitcast %union.v* %value67 to i64*
  store i64 %48, i64* %intval68, align 8, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

cleanup.69:                                       ; preds = %cond.end, %cleanup
  %50 = bitcast i64* %new_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare i32 @names_from_string(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

declare i32 @dstack_dict_is_permanent(%struct.dict_stack_s*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @dict_put_string(%struct.ref_s* %pdref, i8* %kstr, %struct.ref_s* %pvalue, %struct.dict_stack_s* %pds) #0 {
entry:
  %retval = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.ref_s*, align 8
  %pds.addr = alloca %struct.dict_stack_s*, align 8
  %code = alloca i32, align 4
  %kname = alloca %struct.ref_s, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !5
  store %struct.ref_s* %pvalue, %struct.ref_s** %pvalue.addr, align 8, !tbaa !5
  store %struct.dict_stack_s* %pds, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s* %kname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %4 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !5
  store %struct.dict_s* %4, %struct.dict_s** %pdict, align 8, !tbaa !5
  %5 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %5, i32 0, i32 4
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value2 to %struct.obj_header_s**
  %6 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !5
  %7 = bitcast %struct.obj_header_s* %6 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 2
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !30
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 16
  %9 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !32
  %10 = load i8*, i8** %kstr.addr, align 8, !tbaa !5
  %11 = load i8*, i8** %kstr.addr, align 8, !tbaa !5
  %call = call i64 @strlen(i8* %11) #7
  %conv = trunc i64 %call to i32
  %call3 = call i32 @names_ref(%struct.name_table_s* %9, i8* %10, i32 %conv, %struct.ref_s* %kname, i32 0) #5
  store i32 %call3, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %14 = load %struct.ref_s*, %struct.ref_s** %pvalue.addr, align 8, !tbaa !5
  %15 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %call5 = call i32 @dict_put(%struct.ref_s* %13, %struct.ref_s* %kname, %struct.ref_s* %14, %struct.dict_stack_s* %15) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.ref_s* %kname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %17) #1
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @dict_undef(%struct.ref_s* %pdref, %struct.ref_s* %pkey, %struct.dict_stack_s* %pds) #0 {
entry:
  %retval = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pkey.addr = alloca %struct.ref_s*, align 8
  %pds.addr = alloca %struct.dict_stack_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %pvslot = alloca %struct.ref_s*, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %index = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pkp = alloca i16*, align 8
  %must_save = alloca i32, align 4
  %end = alloca i32, align 4
  %kp = alloca %struct.ref_s*, align 8
  %pname = alloca %struct.name_s*, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  store %struct.ref_s* %pkey, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  store %struct.dict_stack_s* %pds, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s** %pvslot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %6 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %call = call i32 @dict_find(%struct.ref_s* %5, %struct.ref_s* %6, %struct.ref_s** %pvslot) #5
  store i32 %call, i32* %code, align 4, !tbaa !1
  %7 = load i32, i32* %code, align 4, !tbaa !1
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 -2, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %10 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !5
  store %struct.dict_s* %10, %struct.dict_s** %pdict, align 8, !tbaa !5
  %11 = load %struct.ref_s*, %struct.ref_s** %pvslot, align 8, !tbaa !5
  %12 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %12, i32 0, i32 0
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 1
  %refs = bitcast %union.v* %value2 to %struct.ref_s**
  %13 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %index, align 4, !tbaa !1
  %14 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %14, i32 0, i32 4
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value3 to %struct.obj_header_s**
  %15 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !5
  %16 = bitcast %struct.obj_header_s* %15 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %16, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %17 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys = getelementptr inbounds %struct.dict_s, %struct.dict_s* %17, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %18 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv4 = zext i8 %19 to i32
  %cmp = icmp eq i32 %conv4, 6
  br i1 %cmp, label %if.then, label %if.else.48

if.then:                                          ; preds = %sw.epilog
  %20 = bitcast i16** %pkp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys6 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %21, i32 0, i32 1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys6, i32 0, i32 1
  %writable_packed = bitcast %union.v* %value7 to i16**
  %22 = load i16*, i16** %writable_packed, align 8, !tbaa !5
  %23 = load i32, i32* %index, align 4, !tbaa !1
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i16, i16* %22, i64 %idx.ext
  store i16* %add.ptr, i16** %pkp, align 8, !tbaa !5
  %24 = bitcast i32* %must_save to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys8 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %25, i32 0, i32 1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys8, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %26 = load i16, i16* %type_attrs10, align 2, !tbaa !7
  %conv11 = zext i16 %26 to i32
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %test_mask = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %27, i32 0, i32 21
  %28 = load i32, i32* %test_mask, align 4, !tbaa !19
  %and = and i32 %conv11, %28
  %cmp12 = icmp eq i32 %and, 0
  %conv13 = zext i1 %cmp12 to i32
  store i32 %conv13, i32* %must_save, align 4, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, i32* %must_save, align 4, !tbaa !1
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %do.end
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %31 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys15 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %31, i32 0, i32 1
  %32 = load i16*, i16** %pkp, align 8, !tbaa !5
  %call16 = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %30, %struct.ref_s* %keys15, i16* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then.14, %do.end
  %33 = load i16*, i16** %pkp, align 8, !tbaa !5
  %arrayidx17 = getelementptr inbounds i16, i16* %33, i64 -1
  %34 = load i16, i16* %arrayidx17, align 2, !tbaa !12
  %conv18 = zext i16 %34 to i32
  %cmp19 = icmp eq i32 %conv18, 24576
  br i1 %cmp19, label %if.then.21, label %if.else.46

if.then.21:                                       ; preds = %if.end
  %35 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values22 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %36, i32 0, i32 0
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values22, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 2
  %37 = load i32, i32* %rsize, align 4, !tbaa !17
  store i32 %37, i32* %end, align 4, !tbaa !1
  %38 = load i16*, i16** %pkp, align 8, !tbaa !5
  store i16 24576, i16* %38, align 2, !tbaa !12
  %39 = load i32, i32* %must_save, align 4, !tbaa !1
  %tobool24 = icmp ne i32 %39, 0
  br i1 %tobool24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then.21
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.25
  %40 = load i32, i32* %index, align 4, !tbaa !1
  %inc = add i32 %40, 1
  store i32 %inc, i32* %index, align 4, !tbaa !1
  %41 = load i32, i32* %end, align 4, !tbaa !1
  %cmp26 = icmp ult i32 %inc, %41
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %42 = load i16*, i16** %pkp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i16, i16* %42, i32 1
  store i16* %incdec.ptr, i16** %pkp, align 8, !tbaa !5
  %43 = load i16, i16* %incdec.ptr, align 2, !tbaa !12
  %conv28 = zext i16 %43 to i32
  %cmp29 = icmp eq i32 %conv28, 24577
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %44 = phi i1 [ false, %while.cond ], [ %cmp29, %land.rhs ]
  br i1 %44, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %46 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys31 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %46, i32 0, i32 1
  %47 = load i16*, i16** %pkp, align 8, !tbaa !5
  %call32 = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %45, %struct.ref_s* %keys31, i16* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #5
  %48 = load i16*, i16** %pkp, align 8, !tbaa !5
  store i16 24576, i16* %48, align 2, !tbaa !12
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.45

if.else:                                          ; preds = %if.then.21
  br label %while.cond.33

while.cond.33:                                    ; preds = %while.body.43, %if.else
  %49 = load i32, i32* %index, align 4, !tbaa !1
  %inc34 = add i32 %49, 1
  store i32 %inc34, i32* %index, align 4, !tbaa !1
  %50 = load i32, i32* %end, align 4, !tbaa !1
  %cmp35 = icmp ult i32 %inc34, %50
  br i1 %cmp35, label %land.rhs.37, label %land.end.42

land.rhs.37:                                      ; preds = %while.cond.33
  %51 = load i16*, i16** %pkp, align 8, !tbaa !5
  %incdec.ptr38 = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %incdec.ptr38, i16** %pkp, align 8, !tbaa !5
  %52 = load i16, i16* %incdec.ptr38, align 2, !tbaa !12
  %conv39 = zext i16 %52 to i32
  %cmp40 = icmp eq i32 %conv39, 24577
  br label %land.end.42

land.end.42:                                      ; preds = %land.rhs.37, %while.cond.33
  %53 = phi i1 [ false, %while.cond.33 ], [ %cmp40, %land.rhs.37 ]
  br i1 %53, label %while.body.43, label %while.end.44

while.body.43:                                    ; preds = %land.end.42
  %54 = load i16*, i16** %pkp, align 8, !tbaa !5
  store i16 24576, i16* %54, align 2, !tbaa !12
  br label %while.cond.33

while.end.44:                                     ; preds = %land.end.42
  br label %if.end.45

if.end.45:                                        ; preds = %while.end.44, %while.end
  %55 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  br label %if.end.47

if.else.46:                                       ; preds = %if.end
  %56 = load i16*, i16** %pkp, align 8, !tbaa !5
  store i16 24577, i16* %56, align 2, !tbaa !12
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.end.45
  %57 = bitcast i32* %must_save to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i16** %pkp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  br label %if.end.89

if.else.48:                                       ; preds = %sw.epilog
  %59 = bitcast %struct.ref_s** %kp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  %60 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys49 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %60, i32 0, i32 1
  %value50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys49, i32 0, i32 1
  %refs51 = bitcast %union.v* %value50 to %struct.ref_s**
  %61 = load %struct.ref_s*, %struct.ref_s** %refs51, align 8, !tbaa !5
  %62 = load i32, i32* %index, align 4, !tbaa !1
  %idx.ext52 = zext i32 %62 to i64
  %add.ptr53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 %idx.ext52
  store %struct.ref_s* %add.ptr53, %struct.ref_s** %kp, align 8, !tbaa !5
  br label %do.body.54

do.body.54:                                       ; preds = %if.else.48
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.body.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %63 = load %struct.ref_s*, %struct.ref_s** %kp, align 8, !tbaa !5
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %type_attrs58 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 0
  %64 = load i16, i16* %type_attrs58, align 2, !tbaa !7
  %conv59 = zext i16 %64 to i32
  %65 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %test_mask60 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %65, i32 0, i32 21
  %66 = load i32, i32* %test_mask60, align 4, !tbaa !19
  %and61 = and i32 %conv59, %66
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.56
  %67 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %68 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys64 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %68, i32 0, i32 1
  %69 = load %struct.ref_s*, %struct.ref_s** %kp, align 8, !tbaa !5
  %70 = bitcast %struct.ref_s* %69 to i16*
  %call65 = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %67, %struct.ref_s* %keys64, i16* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #5
  br label %cond.end

cond.false:                                       ; preds = %do.end.56
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call65, %cond.true ], [ 0, %cond.false ]
  %71 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %call66 = call i32 @imemory_new_mask(%struct.gs_ref_memory_s* %71) #5
  %add = add i32 3584, %call66
  %conv67 = trunc i32 %add to i16
  %72 = load %struct.ref_s*, %struct.ref_s** %kp, align 8, !tbaa !5
  %tas68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 0
  %type_attrs69 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas68, i32 0, i32 0
  store i16 %conv67, i16* %type_attrs69, align 2, !tbaa !7
  %73 = load %struct.ref_s*, %struct.ref_s** %kp, align 8, !tbaa !5
  %add.ptr70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i64 -1
  %tas71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr70, i32 0, i32 0
  %type_attrs72 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas71, i32 0, i32 0
  %74 = bitcast i16* %type_attrs72 to i8*
  %arrayidx73 = getelementptr inbounds i8, i8* %74, i64 1
  %75 = load i8, i8* %arrayidx73, align 1, !tbaa !18
  %conv74 = zext i8 %75 to i32
  %cmp75 = icmp eq i32 %conv74, 14
  br i1 %cmp75, label %lor.lhs.false, label %if.then.83

lor.lhs.false:                                    ; preds = %cond.end
  %76 = load %struct.ref_s*, %struct.ref_s** %kp, align 8, !tbaa !5
  %add.ptr77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i64 -1
  %tas78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr77, i32 0, i32 0
  %type_attrs79 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas78, i32 0, i32 0
  %77 = load i16, i16* %type_attrs79, align 2, !tbaa !7
  %conv80 = zext i16 %77 to i32
  %and81 = and i32 %conv80, 128
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %lor.lhs.false, %cond.end
  %78 = load %struct.ref_s*, %struct.ref_s** %kp, align 8, !tbaa !5
  %tas84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 0
  %type_attrs85 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas84, i32 0, i32 0
  %79 = load i16, i16* %type_attrs85, align 2, !tbaa !7
  %conv86 = zext i16 %79 to i32
  %or = or i32 %conv86, 128
  %conv87 = trunc i32 %or to i16
  store i16 %conv87, i16* %type_attrs85, align 2, !tbaa !7
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.83, %lor.lhs.false
  %80 = bitcast %struct.ref_s** %kp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.47
  %81 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %count = getelementptr inbounds %struct.dict_s, %struct.dict_s* %81, i32 0, i32 2
  %tas90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count, i32 0, i32 0
  %type_attrs91 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas90, i32 0, i32 0
  %82 = load i16, i16* %type_attrs91, align 2, !tbaa !7
  %conv92 = zext i16 %82 to i32
  %83 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %test_mask93 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %83, i32 0, i32 21
  %84 = load i32, i32* %test_mask93, align 4, !tbaa !19
  %and94 = and i32 %conv92, %84
  %cmp95 = icmp eq i32 %and94, 0
  br i1 %cmp95, label %cond.true.97, label %cond.false.100

cond.true.97:                                     ; preds = %if.end.89
  %85 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %86 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %87 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %count98 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %87, i32 0, i32 2
  %88 = bitcast %struct.ref_s* %count98 to i16*
  %call99 = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %85, %struct.ref_s* %86, i16* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %cond.end.101

cond.false.100:                                   ; preds = %if.end.89
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.100, %cond.true.97
  %cond102 = phi i32 [ %call99, %cond.true.97 ], [ 0, %cond.false.100 ]
  %89 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %count103 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %89, i32 0, i32 2
  %value104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count103, i32 0, i32 1
  %intval = bitcast %union.v* %value104 to i64*
  %90 = load i64, i64* %intval, align 8, !tbaa !13
  %dec = add nsw i64 %90, -1
  store i64 %dec, i64* %intval, align 8, !tbaa !13
  %91 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %tas105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i32 0, i32 0
  %type_attrs106 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas105, i32 0, i32 0
  %92 = bitcast i16* %type_attrs106 to i8*
  %arrayidx107 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i8, i8* %arrayidx107, align 1, !tbaa !18
  %conv108 = zext i8 %93 to i32
  %cmp109 = icmp eq i32 %conv108, 13
  br i1 %cmp109, label %if.then.111, label %if.end.119

if.then.111:                                      ; preds = %cond.end.101
  %94 = bitcast %struct.name_s** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  %95 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !5
  %value112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 1
  %pname113 = bitcast %union.v* %value112 to %struct.name_s**
  %96 = load %struct.name_s*, %struct.name_s** %pname113, align 8, !tbaa !5
  store %struct.name_s* %96, %struct.name_s** %pname, align 8, !tbaa !5
  %97 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !5
  %pvalue = getelementptr inbounds %struct.name_s, %struct.name_s* %97, i32 0, i32 0
  %98 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !37
  %99 = ptrtoint %struct.ref_s* %98 to i64
  %cmp114 = icmp ugt i64 %99, 1
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.then.111
  %100 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !5
  %pvalue117 = getelementptr inbounds %struct.name_s, %struct.name_s* %100, i32 0, i32 0
  store %struct.ref_s* null, %struct.ref_s** %pvalue117, align 8, !tbaa !37
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %if.then.111
  %101 = bitcast %struct.name_s** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %cond.end.101
  %102 = load %struct.ref_s*, %struct.ref_s** %pvslot, align 8, !tbaa !5
  %tas120 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i32 0, i32 0
  %type_attrs121 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas120, i32 0, i32 0
  %103 = load i16, i16* %type_attrs121, align 2, !tbaa !7
  %conv122 = zext i16 %103 to i32
  %104 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %test_mask123 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %104, i32 0, i32 21
  %105 = load i32, i32* %test_mask123, align 4, !tbaa !19
  %and124 = and i32 %conv122, %105
  %cmp125 = icmp eq i32 %and124, 0
  br i1 %cmp125, label %cond.true.127, label %cond.false.130

cond.true.127:                                    ; preds = %if.end.119
  %106 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %107 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values128 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %107, i32 0, i32 0
  %108 = load %struct.ref_s*, %struct.ref_s** %pvslot, align 8, !tbaa !5
  %109 = bitcast %struct.ref_s* %108 to i16*
  %call129 = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %106, %struct.ref_s* %values128, i16* %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %cond.end.131

cond.false.130:                                   ; preds = %if.end.119
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.127
  %cond132 = phi i32 [ %call129, %cond.true.127 ], [ 0, %cond.false.130 ]
  %110 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %call133 = call i32 @imemory_new_mask(%struct.gs_ref_memory_s* %110) #5
  %add134 = add i32 3584, %call133
  %conv135 = trunc i32 %add134 to i16
  %111 = load %struct.ref_s*, %struct.ref_s** %pvslot, align 8, !tbaa !5
  %tas136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 0, i32 0
  %type_attrs137 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas136, i32 0, i32 0
  store i16 %conv135, i16* %type_attrs137, align 2, !tbaa !7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.131, %sw.default, %sw.bb
  %112 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast %struct.ref_s** %pvslot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = load i32, i32* %retval
  ret i32 %117
}

; Function Attrs: nounwind uwtable
define i32 @dict_length(%struct.ref_s* %pdref) #0 {
entry:
  %pdref.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %0 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %1 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %count = getelementptr inbounds %struct.dict_s, %struct.dict_s* %1, i32 0, i32 2
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count, i32 0, i32 1
  %intval = bitcast %union.v* %value1 to i64*
  %2 = load i64, i64* %intval, align 8, !tbaa !13
  %conv = trunc i64 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @dict_maxlength(%struct.ref_s* %pdref) #0 {
entry:
  %pdref.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %0 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %1 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %maxlength = getelementptr inbounds %struct.dict_s, %struct.dict_s* %1, i32 0, i32 3
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %maxlength, i32 0, i32 1
  %intval = bitcast %union.v* %value1 to i64*
  %2 = load i64, i64* %intval, align 8, !tbaa !13
  %conv = trunc i64 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @dict_max_index(%struct.ref_s* %pdref) #0 {
entry:
  %pdref.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %0 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %1 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %1, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !17
  %sub = sub i32 %2, 1
  %sub1 = sub i32 %sub, 1
  ret i32 %sub1
}

; Function Attrs: nounwind uwtable
define i32 @dict_copy_entries(%struct.ref_s* %pdrfrom, %struct.ref_s* %pdrto, i32 %new_only, %struct.dict_stack_s* %pds) #0 {
entry:
  %pdrfrom.addr = alloca %struct.ref_s*, align 8
  %pdrto.addr = alloca %struct.ref_s*, align 8
  %new_only.addr = alloca i32, align 4
  %pds.addr = alloca %struct.dict_stack_s*, align 8
  store %struct.ref_s* %pdrfrom, %struct.ref_s** %pdrfrom.addr, align 8, !tbaa !5
  store %struct.ref_s* %pdrto, %struct.ref_s** %pdrto.addr, align 8, !tbaa !5
  store i32 %new_only, i32* %new_only.addr, align 4, !tbaa !1
  store %struct.dict_stack_s* %pds, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %0 = load %struct.ref_s*, %struct.ref_s** %pdrfrom.addr, align 8, !tbaa !5
  %1 = load %struct.ref_s*, %struct.ref_s** %pdrto.addr, align 8, !tbaa !5
  %2 = load i32, i32* %new_only.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %3 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %call = call i32 @dict_copy_elements(%struct.ref_s* %0, %struct.ref_s* %1, i32 %cond, %struct.dict_stack_s* %3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @dict_copy_elements(%struct.ref_s* %pdrfrom, %struct.ref_s* %pdrto, i32 %options, %struct.dict_stack_s* %pds) #0 {
entry:
  %retval = alloca i32, align 4
  %pdrfrom.addr = alloca %struct.ref_s*, align 8
  %pdrto.addr = alloca %struct.ref_s*, align 8
  %options.addr = alloca i32, align 4
  %pds.addr = alloca %struct.dict_stack_s*, align 8
  %space = alloca i32, align 4
  %index = alloca i32, align 4
  %elt = alloca [2 x %struct.ref_s], align 16
  %pvslot = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pvalue = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %pdrfrom, %struct.ref_s** %pdrfrom.addr, align 8, !tbaa !5
  store %struct.ref_s* %pdrto, %struct.ref_s** %pdrto.addr, align 8, !tbaa !5
  store i32 %options, i32* %options.addr, align 4, !tbaa !1
  store %struct.dict_stack_s* %pds, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %0 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdrto.addr, align 8, !tbaa !5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %2 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 12
  store i32 %and, i32* %space, align 4, !tbaa !1
  %3 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [2 x %struct.ref_s]* %elt to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = bitcast %struct.ref_s** %pvslot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %space, align 4, !tbaa !1
  %cmp = icmp ne i32 %7, 12
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %pdrfrom.addr, align 8, !tbaa !5
  %call = call i32 @dict_first(%struct.ref_s* %8) #5
  store i32 %call, i32* %index, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %if.then
  %9 = load %struct.ref_s*, %struct.ref_s** %pdrfrom.addr, align 8, !tbaa !5
  %10 = load i32, i32* %index, align 4, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i32 0
  %call2 = call i32 @dict_next(%struct.ref_s* %9, i32 %10, %struct.ref_s* %arraydecay) #5
  store i32 %call2, i32* %index, align 4, !tbaa !1
  %cmp3 = icmp sge i32 %call2, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %options.addr, align 4, !tbaa !1
  %and5 = and i32 %11, 1
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.9

lor.lhs.false:                                    ; preds = %while.body
  %12 = load %struct.ref_s*, %struct.ref_s** %pdrto.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %call6 = call i32 @dict_find(%struct.ref_s* %12, %struct.ref_s* %arrayidx, %struct.ref_s** %pvslot) #5
  %cmp7 = icmp sle i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.27

if.then.9:                                        ; preds = %lor.lhs.false, %while.body
  %arrayidx10 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  %13 = load i16, i16* %type_attrs12, align 2, !tbaa !7
  %conv13 = zext i16 %13 to i32
  %and14 = and i32 %conv13, 12
  %14 = load i32, i32* %space, align 4, !tbaa !1
  %cmp15 = icmp ugt i32 %and14, %14
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.9
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

if.end:                                           ; preds = %if.then.9
  %arrayidx18 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx18, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  %15 = load i16, i16* %type_attrs20, align 2, !tbaa !7
  %conv21 = zext i16 %15 to i32
  %and22 = and i32 %conv21, 12
  %16 = load i32, i32* %space, align 4, !tbaa !1
  %cmp23 = icmp ugt i32 %and22, %16
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

if.end.26:                                        ; preds = %if.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.28

if.end.28:                                        ; preds = %while.end, %entry
  %17 = load %struct.ref_s*, %struct.ref_s** %pdrfrom.addr, align 8, !tbaa !5
  %call29 = call i32 @dict_first(%struct.ref_s* %17) #5
  store i32 %call29, i32* %index, align 4, !tbaa !1
  br label %while.cond.30

while.cond.30:                                    ; preds = %cleanup.cont, %cleanup, %if.end.28
  %18 = load %struct.ref_s*, %struct.ref_s** %pdrfrom.addr, align 8, !tbaa !5
  %19 = load i32, i32* %index, align 4, !tbaa !1
  %arraydecay31 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i32 0
  %call32 = call i32 @dict_next(%struct.ref_s* %18, i32 %19, %struct.ref_s* %arraydecay31) #5
  store i32 %call32, i32* %index, align 4, !tbaa !1
  %cmp33 = icmp sge i32 %call32, 0
  br i1 %cmp33, label %while.body.35, label %while.end.80

while.body.35:                                    ; preds = %while.cond.30
  %20 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store %struct.ref_s* null, %struct.ref_s** %pvalue, align 8, !tbaa !5
  %21 = load i32, i32* %options.addr, align 4, !tbaa !1
  %and36 = and i32 %21, 1
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %while.body.35
  %22 = load %struct.ref_s*, %struct.ref_s** %pdrto.addr, align 8, !tbaa !5
  %arrayidx38 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %call39 = call i32 @dict_find(%struct.ref_s* %22, %struct.ref_s* %arrayidx38, %struct.ref_s** %pvslot) #5
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %land.lhs.true, %while.body.35
  %23 = load i32, i32* %options.addr, align 4, !tbaa !1
  %and44 = and i32 %23, 2
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.64

land.lhs.true.46:                                 ; preds = %if.end.43
  %arrayidx47 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %tas48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx47, i32 0, i32 0
  %type_attrs49 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas48, i32 0, i32 0
  %24 = bitcast i16* %type_attrs49 to i8*
  %arrayidx50 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx50, align 1, !tbaa !18
  %conv51 = zext i8 %25 to i32
  %cmp52 = icmp eq i32 %conv51, 13
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.64

land.lhs.true.54:                                 ; preds = %land.lhs.true.46
  %arrayidx55 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx55, i32 0, i32 1
  %pname = bitcast %union.v* %value to %struct.name_s**
  %26 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !5
  %pvalue56 = getelementptr inbounds %struct.name_s, %struct.name_s* %26, i32 0, i32 0
  %27 = load %struct.ref_s*, %struct.ref_s** %pvalue56, align 8, !tbaa !37
  store %struct.ref_s* %27, %struct.ref_s** %pvalue, align 8, !tbaa !5
  %28 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !5
  %29 = ptrtoint %struct.ref_s* %28 to i64
  %cmp57 = icmp ugt i64 %29, 1
  br i1 %cmp57, label %if.then.59, label %if.end.64

if.then.59:                                       ; preds = %land.lhs.true.54
  %arrayidx60 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %value61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx60, i32 0, i32 1
  %pname62 = bitcast %union.v* %value61 to %struct.name_s**
  %30 = load %struct.name_s*, %struct.name_s** %pname62, align 8, !tbaa !5
  %pvalue63 = getelementptr inbounds %struct.name_s, %struct.name_s* %30, i32 0, i32 0
  store %struct.ref_s* null, %struct.ref_s** %pvalue63, align 8, !tbaa !37
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.59, %land.lhs.true.54, %land.lhs.true.46, %if.end.43
  %31 = load %struct.ref_s*, %struct.ref_s** %pdrto.addr, align 8, !tbaa !5
  %arrayidx65 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %arrayidx66 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 1
  %32 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %call67 = call i32 @dict_put(%struct.ref_s* %31, %struct.ref_s* %arrayidx65, %struct.ref_s* %arrayidx66, %struct.dict_stack_s* %32) #5
  store i32 %call67, i32* %code, align 4, !tbaa !1
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.79

if.then.70:                                       ; preds = %if.end.64
  %33 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !5
  %cmp71 = icmp ne %struct.ref_s* %33, null
  br i1 %cmp71, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %if.then.70
  %34 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !5
  %arrayidx74 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %value75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx74, i32 0, i32 1
  %pname76 = bitcast %union.v* %value75 to %struct.name_s**
  %35 = load %struct.name_s*, %struct.name_s** %pname76, align 8, !tbaa !5
  %pvalue77 = getelementptr inbounds %struct.name_s, %struct.name_s* %35, i32 0, i32 0
  store %struct.ref_s* %34, %struct.ref_s** %pvalue77, align 8, !tbaa !37
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %if.then.70
  %36 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %if.end.64
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.79, %if.end.78, %if.then.42
  %37 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.81 [
    i32 0, label %cleanup.cont
    i32 4, label %while.cond.30
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond.30

while.end.80:                                     ; preds = %while.cond.30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

cleanup.81:                                       ; preds = %while.end.80, %cleanup, %if.then.25, %if.then.17
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.ref_s** %pvslot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast [2 x %struct.ref_s]* %elt to i8*
  call void @llvm.lifetime.end(i64 32, i8* %40) #1
  %41 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define i32 @dict_resize(%struct.ref_s* %pdref, i32 %new_size, %struct.dict_stack_s* %pds) #0 {
entry:
  %retval = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %new_size.addr = alloca i32, align 4
  %pds.addr = alloca %struct.dict_stack_s*, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %new_mask = alloca i32, align 4
  %orig_attrs = alloca i16, align 2
  %dnew = alloca %struct.dict_s, align 8
  %drto = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %drfrom = alloca %struct.ref_s, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  store i32 %new_size, i32* %new_size.addr, align 4, !tbaa !1
  store %struct.dict_stack_s* %pds, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %0 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %2 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !5
  store %struct.dict_s* %2, %struct.dict_s** %pdict, align 8, !tbaa !5
  %3 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %4, i32 0, i32 4
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value2 to %struct.obj_header_s**
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !5
  %6 = bitcast %struct.obj_header_s* %5 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %6, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %7 = bitcast i32* %new_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %call = call i32 @imemory_new_mask(%struct.gs_ref_memory_s* %8) #5
  store i32 %call, i32* %new_mask, align 4, !tbaa !1
  %9 = bitcast i16* %orig_attrs to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  %10 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %10, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %11 = load i16, i16* %type_attrs, align 2, !tbaa !7
  %conv = zext i16 %11 to i32
  %and = and i32 %conv, 240
  %conv3 = trunc i32 %and to i16
  store i16 %conv3, i16* %orig_attrs, align 2, !tbaa !12
  %12 = bitcast %struct.dict_s* %dnew to i8*
  call void @llvm.lifetime.start(i64 80, i8* %12) #1
  %13 = bitcast %struct.ref_s* %drto to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %new_size.addr, align 4, !tbaa !1
  %16 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %count = getelementptr inbounds %struct.dict_s, %struct.dict_s* %16, i32 0, i32 2
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count, i32 0, i32 1
  %intval = bitcast %union.v* %value4 to i64*
  %17 = load i64, i64* %intval, align 8, !tbaa !13
  %conv5 = trunc i64 %17 to i32
  %cmp = icmp ult i32 %15, %conv5
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %gs_lib_ctx = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %18, i32 0, i32 2
  %19 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !39
  %dict_auto_expand = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %19, i32 0, i32 17
  %20 = load i32, i32* %dict_auto_expand, align 4, !tbaa !36
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %21 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %count8 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %21, i32 0, i32 2
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %count8, i32 0, i32 1
  %intval10 = bitcast %union.v* %value9 to i64*
  %22 = load i64, i64* %intval10, align 8, !tbaa !13
  %conv11 = trunc i64 %22 to i32
  store i32 %conv11, i32* %new_size.addr, align 4, !tbaa !1
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %drto, i32 0, i32 1
  %pdict14 = bitcast %union.v* %value13 to %struct.dict_s**
  store %struct.dict_s* %dnew, %struct.dict_s** %pdict14, align 8, !tbaa !5
  %23 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %24 = load i16, i16* %type_attrs16, align 2, !tbaa !7
  %conv17 = zext i16 %24 to i32
  %and18 = and i32 %conv17, 12
  %or = or i32 %and18, 112
  %25 = load i32, i32* %new_mask, align 4, !tbaa !1
  %or19 = or i32 %or, %25
  %add = add i32 512, %or19
  %conv20 = trunc i32 %add to i16
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %drto, i32 0, i32 0
  %type_attrs22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  store i16 %conv20, i16* %type_attrs22, align 2, !tbaa !7
  %memory23 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %dnew, i32 0, i32 4
  %26 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory24 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %26, i32 0, i32 4
  %27 = bitcast %struct.ref_s* %memory23 to i8*
  %28 = bitcast %struct.ref_s* %memory24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false), !tbaa.struct !11
  %29 = load i32, i32* %new_size.addr, align 4, !tbaa !1
  %30 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys = getelementptr inbounds %struct.dict_s, %struct.dict_s* %30, i32 0, i32 1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %31 = bitcast i16* %type_attrs26 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv27 = zext i8 %32 to i32
  %cmp28 = icmp eq i32 %conv27, 6
  %conv29 = zext i1 %cmp28 to i32
  %call30 = call i32 @dict_create_contents(i32 %29, %struct.ref_s* %drto, i32 %conv29) #5
  store i32 %call30, i32* %code, align 4, !tbaa !1
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.12
  %33 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.12
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %drto, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  %34 = load i16, i16* %type_attrs36, align 2, !tbaa !7
  %conv37 = zext i16 %34 to i32
  %and38 = and i32 %conv37, -13
  %or39 = or i32 %and38, 12
  %conv40 = trunc i32 %or39 to i16
  %tas41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %drto, i32 0, i32 0
  %type_attrs42 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas41, i32 0, i32 0
  store i16 %conv40, i16* %type_attrs42, align 2, !tbaa !7
  %35 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %tobool43 = icmp ne %struct.dict_stack_s* %35, null
  br i1 %tobool43, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.34
  %36 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %37 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %call44 = call i32 @dstack_dict_is_permanent(%struct.dict_stack_s* %36, %struct.ref_s* %37) #5
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.else

land.lhs.true.46:                                 ; preds = %land.lhs.true
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %new_mask47 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %38, i32 0, i32 20
  %39 = load i32, i32* %new_mask47, align 4, !tbaa !27
  %cmp48 = icmp ne i32 %39, 0
  br i1 %cmp48, label %if.else, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.46
  %40 = bitcast %struct.ref_s* %drfrom to i8*
  call void @llvm.lifetime.start(i64 16, i8* %40) #1
  %41 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %42 = bitcast %struct.ref_s* %drfrom to i8*
  %43 = bitcast %struct.ref_s* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false), !tbaa.struct !11
  %44 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %45 = bitcast %struct.ref_s* %44 to i8*
  %46 = bitcast %struct.ref_s* %drto to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 16, i32 8, i1 false), !tbaa.struct !11
  %47 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %48 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %call51 = call i32 @dict_copy_elements(%struct.ref_s* %drfrom, %struct.ref_s* %47, i32 2, %struct.dict_stack_s* %48) #5
  %49 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %50 = bitcast %struct.ref_s* %49 to i8*
  %51 = bitcast %struct.ref_s* %drfrom to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 16, i32 8, i1 false), !tbaa.struct !11
  %52 = bitcast %struct.ref_s* %drfrom to i8*
  call void @llvm.lifetime.end(i64 16, i8* %52) #1
  br label %if.end.53

if.else:                                          ; preds = %land.lhs.true.46, %land.lhs.true, %if.end.34
  %53 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %54 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %call52 = call i32 @dict_copy_elements(%struct.ref_s* %53, %struct.ref_s* %drto, i32 0, %struct.dict_stack_s* %54) #5
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.50
  %55 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values54 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %55, i32 0, i32 0
  %tas55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values54, i32 0, i32 0
  %type_attrs56 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas55, i32 0, i32 0
  %56 = load i16, i16* %type_attrs56, align 2, !tbaa !7
  %conv57 = zext i16 %56 to i32
  %57 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %test_mask = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %57, i32 0, i32 21
  %58 = load i32, i32* %test_mask, align 4, !tbaa !19
  %and58 = and i32 %conv57, %58
  %cmp59 = icmp eq i32 %and58, 0
  br i1 %cmp59, label %if.then.61, label %if.else.64

if.then.61:                                       ; preds = %if.end.53
  %59 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %60 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %61 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values62 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %61, i32 0, i32 0
  %62 = bitcast %struct.ref_s* %values62 to i16*
  %call63 = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %59, %struct.ref_s* %60, i16* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)) #5
  br label %if.end.66

if.else.64:                                       ; preds = %if.end.53
  %63 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %64 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values65 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %64, i32 0, i32 0
  call void @gs_free_ref_array(%struct.gs_ref_memory_s* %63, %struct.ref_s* %values65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0)) #5
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.61
  %65 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys67 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %65, i32 0, i32 1
  %tas68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys67, i32 0, i32 0
  %type_attrs69 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas68, i32 0, i32 0
  %66 = load i16, i16* %type_attrs69, align 2, !tbaa !7
  %conv70 = zext i16 %66 to i32
  %67 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %test_mask71 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %67, i32 0, i32 21
  %68 = load i32, i32* %test_mask71, align 4, !tbaa !19
  %and72 = and i32 %conv70, %68
  %cmp73 = icmp eq i32 %and72, 0
  br i1 %cmp73, label %if.then.75, label %if.else.78

if.then.75:                                       ; preds = %if.end.66
  %69 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %70 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %71 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys76 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %71, i32 0, i32 1
  %72 = bitcast %struct.ref_s* %keys76 to i16*
  %call77 = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %69, %struct.ref_s* %70, i16* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)) #5
  br label %if.end.80

if.else.78:                                       ; preds = %if.end.66
  %73 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !5
  %74 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys79 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %74, i32 0, i32 1
  call void @gs_free_ref_array(%struct.gs_ref_memory_s* %73, %struct.ref_s* %keys79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0)) #5
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.then.75
  %75 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys81 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %75, i32 0, i32 1
  %keys82 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %dnew, i32 0, i32 1
  %76 = bitcast %struct.ref_s* %keys81 to i8*
  %77 = bitcast %struct.ref_s* %keys82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 16, i32 8, i1 false), !tbaa.struct !11
  %78 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values83 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %78, i32 0, i32 0
  %values84 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %dnew, i32 0, i32 0
  %79 = bitcast %struct.ref_s* %values83 to i8*
  %80 = bitcast %struct.ref_s* %values84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 16, i32 8, i1 false), !tbaa.struct !11
  %81 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values85 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %81, i32 0, i32 0
  %tas86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values85, i32 0, i32 0
  %type_attrs87 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas86, i32 0, i32 0
  %82 = load i16, i16* %type_attrs87, align 2, !tbaa !7
  %conv88 = zext i16 %82 to i32
  %and89 = and i32 %conv88, -241
  %83 = load i16, i16* %orig_attrs, align 2, !tbaa !12
  %conv90 = zext i16 %83 to i32
  %or91 = or i32 %and89, %conv90
  %conv92 = trunc i32 %or91 to i16
  %84 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values93 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %84, i32 0, i32 0
  %tas94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values93, i32 0, i32 0
  %type_attrs95 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas94, i32 0, i32 0
  store i16 %conv92, i16* %type_attrs95, align 2, !tbaa !7
  %85 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %maxlength = getelementptr inbounds %struct.dict_s, %struct.dict_s* %85, i32 0, i32 3
  %tas96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %maxlength, i32 0, i32 0
  %type_attrs97 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas96, i32 0, i32 0
  %86 = load i16, i16* %type_attrs97, align 2, !tbaa !7
  %conv98 = zext i16 %86 to i32
  %87 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory99 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %87, i32 0, i32 4
  %value100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory99, i32 0, i32 1
  %pstruct101 = bitcast %union.v* %value100 to %struct.obj_header_s**
  %88 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct101, align 8, !tbaa !5
  %89 = bitcast %struct.obj_header_s* %88 to %struct.gs_ref_memory_s*
  %test_mask102 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %89, i32 0, i32 21
  %90 = load i32, i32* %test_mask102, align 4, !tbaa !19
  %and103 = and i32 %conv98, %90
  %cmp104 = icmp eq i32 %and103, 0
  br i1 %cmp104, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.80
  %91 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory106 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %91, i32 0, i32 4
  %value107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory106, i32 0, i32 1
  %pstruct108 = bitcast %union.v* %value107 to %struct.obj_header_s**
  %92 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct108, align 8, !tbaa !5
  %93 = bitcast %struct.obj_header_s* %92 to %struct.gs_ref_memory_s*
  %94 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %95 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %maxlength109 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %95, i32 0, i32 3
  %96 = bitcast %struct.ref_s* %maxlength109 to i16*
  %call110 = call i32 @alloc_save_change_in(%struct.gs_ref_memory_s* %93, %struct.ref_s* %94, i16* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0)) #5
  br label %cond.end

cond.false:                                       ; preds = %if.end.80
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call110, %cond.true ], [ 0, %cond.false ]
  %97 = load i32, i32* %new_size.addr, align 4, !tbaa !1
  %conv111 = zext i32 %97 to i64
  %98 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %maxlength112 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %98, i32 0, i32 3
  %value113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %maxlength112, i32 0, i32 1
  %intval114 = bitcast %union.v* %value113 to i64*
  store i64 %conv111, i64* %intval114, align 8, !tbaa !13
  %99 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  %tobool115 = icmp ne %struct.dict_stack_s* %99, null
  br i1 %tobool115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %cond.end
  %100 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !5
  call void @dstack_set_top(%struct.dict_stack_s* %100) #5
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.117, %if.then.33, %if.then.7
  %101 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast %struct.ref_s* %drto to i8*
  call void @llvm.lifetime.end(i64 16, i8* %102) #1
  %103 = bitcast %struct.dict_s* %dnew to i8*
  call void @llvm.lifetime.end(i64 80, i8* %103) #1
  %104 = bitcast i16* %orig_attrs to i8*
  call void @llvm.lifetime.end(i64 2, i8* %104) #1
  %105 = bitcast i32* %new_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define i32 @dict_first(%struct.ref_s* %pdref) #0 {
entry:
  %pdref.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %0 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %1 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %1, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !17
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @dict_next(%struct.ref_s* %pdref, i32 %index, %struct.ref_s* %eltp) #0 {
entry:
  %retval = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %index.addr = alloca i32, align 4
  %eltp.addr = alloca %struct.ref_s*, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %vp = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !1
  store %struct.ref_s* %eltp, %struct.ref_s** %eltp.addr, align 8, !tbaa !5
  %0 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %2 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !5
  store %struct.dict_s* %2, %struct.dict_s** %pdict, align 8, !tbaa !5
  %3 = bitcast %struct.ref_s** %vp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %4, i32 0, i32 0
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 1
  %refs = bitcast %union.v* %value2 to %struct.ref_s**
  %5 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !5
  %6 = load i32, i32* %index.addr, align 4, !tbaa !1
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %vp, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %vp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %vp, align 8, !tbaa !5
  %8 = load i32, i32* %index.addr, align 4, !tbaa !1
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %index.addr, align 4, !tbaa !1
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %9, i32 0, i32 4
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value3 to %struct.obj_header_s**
  %10 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !5
  %11 = bitcast %struct.obj_header_s* %10 to %struct.gs_memory_s*
  %12 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys = getelementptr inbounds %struct.dict_s, %struct.dict_s* %12, i32 0, i32 1
  %13 = load i32, i32* %index.addr, align 4, !tbaa !1
  %conv = sext i32 %13 to i64
  %14 = load %struct.ref_s*, %struct.ref_s** %eltp.addr, align 8, !tbaa !5
  %call = call i32 @array_get(%struct.gs_memory_s* %11, %struct.ref_s* %keys, i64 %conv, %struct.ref_s* %14) #5
  %15 = load %struct.ref_s*, %struct.ref_s** %eltp.addr, align 8, !tbaa !5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %16 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv4 = zext i8 %17 to i32
  %cmp5 = icmp eq i32 %conv4, 13
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %18 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys7 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %18, i32 0, i32 1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys7, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %19 = bitcast i16* %type_attrs9 to i8*
  %arrayidx10 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx10, align 1, !tbaa !18
  %conv11 = zext i8 %20 to i32
  %cmp12 = icmp eq i32 %conv11, 6
  br i1 %cmp12, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %21 = load %struct.ref_s*, %struct.ref_s** %eltp.addr, align 8, !tbaa !5
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 0
  %22 = bitcast i16* %type_attrs15 to i8*
  %arrayidx16 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx16, align 1, !tbaa !18
  %conv17 = zext i8 %23 to i32
  %cmp18 = icmp eq i32 %conv17, 14
  br i1 %cmp18, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %while.body
  %24 = load %struct.ref_s*, %struct.ref_s** %eltp.addr, align 8, !tbaa !5
  %arrayidx20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 1
  %25 = load %struct.ref_s*, %struct.ref_s** %vp, align 8, !tbaa !5
  %26 = bitcast %struct.ref_s* %arrayidx20 to i8*
  %27 = bitcast %struct.ref_s* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false), !tbaa.struct !11
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load i32, i32* %index.addr, align 4, !tbaa !1
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %29 = bitcast %struct.ref_s** %vp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @dict_value_index(%struct.ref_s* %pdref, %struct.ref_s* %pvalue) #0 {
entry:
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pvalue.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  store %struct.ref_s* %pvalue, %struct.ref_s** %pvalue.addr, align 8, !tbaa !5
  %0 = load %struct.ref_s*, %struct.ref_s** %pvalue.addr, align 8, !tbaa !5
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %2 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %2, i32 0, i32 0
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 1
  %refs = bitcast %union.v* %value1 to %struct.ref_s**
  %3 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %sub = sub nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %sub to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @dict_index_entry(%struct.ref_s* %pdref, i32 %index, %struct.ref_s* %eltp) #0 {
entry:
  %retval = alloca i32, align 4
  %pdref.addr = alloca %struct.ref_s*, align 8
  %index.addr = alloca i32, align 4
  %eltp.addr = alloca %struct.ref_s*, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !1
  store %struct.ref_s* %eltp, %struct.ref_s** %eltp.addr, align 8, !tbaa !5
  %0 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %2 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !5
  store %struct.dict_s* %2, %struct.dict_s** %pdict, align 8, !tbaa !5
  %3 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %3, i32 0, i32 4
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value2 to %struct.obj_header_s**
  %4 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !5
  %5 = bitcast %struct.obj_header_s* %4 to %struct.gs_memory_s*
  %6 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys = getelementptr inbounds %struct.dict_s, %struct.dict_s* %6, i32 0, i32 1
  %7 = load i32, i32* %index.addr, align 4, !tbaa !1
  %add = add nsw i32 %7, 1
  %conv = sext i32 %add to i64
  %8 = load %struct.ref_s*, %struct.ref_s** %eltp.addr, align 8, !tbaa !5
  %call = call i32 @array_get(%struct.gs_memory_s* %5, %struct.ref_s* %keys, i64 %conv, %struct.ref_s* %8) #5
  %9 = load %struct.ref_s*, %struct.ref_s** %eltp.addr, align 8, !tbaa !5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv3 = zext i8 %11 to i32
  %cmp = icmp eq i32 %conv3, 13
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %keys5 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %12, i32 0, i32 1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys5, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %13 = bitcast i16* %type_attrs7 to i8*
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx8, align 1, !tbaa !18
  %conv9 = zext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv9, 6
  br i1 %cmp10, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %15 = load %struct.ref_s*, %struct.ref_s** %eltp.addr, align 8, !tbaa !5
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %16 = bitcast i16* %type_attrs13 to i8*
  %arrayidx14 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx14, align 1, !tbaa !18
  %conv15 = zext i8 %17 to i32
  %cmp16 = icmp eq i32 %conv15, 14
  br i1 %cmp16, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %18 = load %struct.ref_s*, %struct.ref_s** %eltp.addr, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 1
  %19 = load i32, i32* %index.addr, align 4, !tbaa !1
  %add19 = add nsw i32 %19, 1
  %idxprom = sext i32 %add19 to i64
  %20 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %20, i32 0, i32 0
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 1
  %refs = bitcast %union.v* %value20 to %struct.ref_s**
  %21 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !5
  %arrayidx21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 %idxprom
  %22 = bitcast %struct.ref_s* %arrayidx18 to i8*
  %23 = bitcast %struct.ref_s* %arrayidx21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false), !tbaa.struct !11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %24 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare void @refset_null_new(%struct.ref_s*, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !10, i64 0}
!8 = !{!"ref_s", !9, i64 0, !3, i64 8}
!9 = !{!"tas_s", !10, i64 0, !10, i64 2, !2, i64 4}
!10 = !{!"short", !3, i64 0}
!11 = !{i64 0, i64 2, !12, i64 2, i64 2, !12, i64 4, i64 4, !1, i64 8, i64 8, !13, i64 8, i64 2, !12, i64 8, i64 4, !15, i64 8, i64 8, !13, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !13}
!12 = !{!10, !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !3, i64 0}
!17 = !{!8, !2, i64 4}
!18 = !{!3, !3, i64 0}
!19 = !{!20, !2, i64 560}
!20 = !{!"gs_ref_memory_s", !6, i64 0, !21, i64 8, !6, i64 192, !6, i64 200, !6, i64 208, !2, i64 216, !2, i64 220, !2, i64 224, !22, i64 232, !2, i64 272, !14, i64 280, !6, i64 288, !6, i64 296, !23, i64 304, !6, i64 488, !24, i64 496, !14, i64 512, !14, i64 520, !25, i64 528, !2, i64 552, !2, i64 556, !2, i64 560, !6, i64 568, !6, i64 576, !6, i64 584, !2, i64 592, !6, i64 600, !6, i64 608, !6, i64 616, !14, i64 624, !14, i64 632, !6, i64 640, !26, i64 648, !2, i64 672, !3, i64 680}
!21 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176}
!22 = !{!"gs_memory_gc_status_s", !14, i64 0, !14, i64 8, !6, i64 16, !2, i64 24, !2, i64 28, !14, i64 32}
!23 = !{!"chunk_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !2, i64 96, !2, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176}
!24 = !{!"chunk_locator_s", !6, i64 0, !6, i64 8}
!25 = !{!"lost_", !14, i64 0, !14, i64 8, !14, i64 16}
!26 = !{!"gs_memory_status_s", !14, i64 0, !14, i64 8, !2, i64 16}
!27 = !{!20, !2, i64 556}
!28 = !{!29, !2, i64 4096}
!29 = !{!"name_sub_table_s", !3, i64 0, !2, i64 4096}
!30 = !{!31, !6, i64 192}
!31 = !{!"gs_memory_s", !6, i64 0, !21, i64 8, !6, i64 192, !6, i64 200, !6, i64 208}
!32 = !{!33, !6, i64 120}
!33 = !{!"gs_lib_ctx_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !2, i64 40, !2, i64 44, !2, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !14, i64 104, !6, i64 112, !6, i64 120, !2, i64 128, !6, i64 136, !2, i64 144, !2, i64 148, !3, i64 152, !6, i64 168, !2, i64 176, !6, i64 184, !2, i64 192, !6, i64 200, !6, i64 208}
!34 = !{!35, !35, i64 0}
!35 = !{!"double", !3, i64 0}
!36 = !{!33, !2, i64 128}
!37 = !{!38, !6, i64 0}
!38 = !{!"name_s", !6, i64 0}
!39 = !{!20, !6, i64 192}
