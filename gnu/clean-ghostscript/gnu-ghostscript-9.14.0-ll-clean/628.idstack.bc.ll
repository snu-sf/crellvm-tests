; ModuleID = './idstack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.gs_ref_memory_s = type opaque
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
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
%struct.obj_header_s = type opaque

@no_packed_keys = internal constant [2 x i16] [i16 24577, i16 24576], align 2

; Function Attrs: nounwind uwtable
define i32 @dstack_dict_is_permanent(%struct.dict_stack_s* %pds, %struct.ref_s* %pdref) #0 {
entry:
  %retval = alloca i32, align 4
  %pds.addr = alloca %struct.dict_stack_s*, align 8
  %pdref.addr = alloca %struct.ref_s*, align 8
  %pdict = alloca %struct.dict_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %count = alloca i32, align 4
  store %struct.dict_stack_s* %pds, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdref, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %0 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %2 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !1
  store %struct.dict_s* %2, %struct.dict_s** %pdict, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %4, i32 0, i32 0
  %extension_size = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 4
  %5 = load i32, i32* %extension_size, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4, !tbaa !12
  %7 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %min_size = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %7, i32 0, i32 1
  %8 = load i32, i32* %min_size, align 4, !tbaa !13
  %cmp2 = icmp ult i32 %6, %8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack3 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %10, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 1
  %11 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 %idxprom
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %pdict5 = bitcast %union.v* %value4 to %struct.dict_s**
  %12 = load %struct.dict_s*, %struct.dict_s** %pdict5, align 8, !tbaa !1
  %13 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.dict_s* %12, %13
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !12
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.24

if.else:                                          ; preds = %entry
  %15 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack8 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %16, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack8) #3
  store i32 %call, i32* %count, align 4, !tbaa !12
  %17 = load i32, i32* %count, align 4, !tbaa !12
  %18 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %min_size9 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %18, i32 0, i32 1
  %19 = load i32, i32* %min_size9, align 4, !tbaa !13
  %sub = sub i32 %17, %19
  store i32 %sub, i32* %i, align 4, !tbaa !12
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.21, %if.else
  %20 = load i32, i32* %i, align 4, !tbaa !12
  %21 = load i32, i32* %count, align 4, !tbaa !12
  %cmp11 = icmp ult i32 %20, %21
  br i1 %cmp11, label %for.body.12, label %for.end.23

for.body.12:                                      ; preds = %for.cond.10
  %22 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack13 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %22, i32 0, i32 0
  %23 = load i32, i32* %i, align 4, !tbaa !12
  %conv = sext i32 %23 to i64
  %call14 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack13, i64 %conv) #3
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call14, i32 0, i32 1
  %pdict16 = bitcast %union.v* %value15 to %struct.dict_s**
  %24 = load %struct.dict_s*, %struct.dict_s** %pdict16, align 8, !tbaa !1
  %25 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.dict_s* %24, %25
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body.12
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %for.body.12
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end.20
  %26 = load i32, i32* %i, align 4, !tbaa !12
  %inc22 = add nsw i32 %26, 1
  store i32 %inc22, i32* %i, align 4, !tbaa !12
  br label %for.cond.10

for.end.23:                                       ; preds = %for.cond.10
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.23, %if.then.19
  %27 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.24

if.end.24:                                        ; preds = %cleanup.cont, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25

cleanup.25:                                       ; preds = %if.end.24, %cleanup, %if.then.7
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s* %pds, i32 %nidx) #0 {
entry:
  %retval = alloca %struct.ref_s*, align 8
  %pds.addr = alloca %struct.dict_stack_s*, align 8
  %nidx.addr = alloca i32, align 4
  %pdref = alloca %struct.ref_s*, align 8
  %kpack = alloca i16, align 2
  %pdict = alloca %struct.dict_s*, align 8
  %size = alloca i32, align 4
  %kbot = alloca i16*, align 8
  %start = alloca i32, align 4
  %kp = alloca i16*, align 8
  %wrap = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %kbot51 = alloca %struct.ref_s*, align 8
  %kp55 = alloca %struct.ref_s*, align 8
  %wrap56 = alloca i32, align 4
  %key = alloca %struct.ref_s, align 8
  %i = alloca i32, align 4
  %size161 = alloca i32, align 4
  %pvalue = alloca %struct.ref_s*, align 8
  %pdict163 = alloca %struct.dict_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.dict_stack_s* %pds, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  store i32 %nidx, i32* %nidx.addr, align 4, !tbaa !12
  %0 = bitcast %struct.ref_s** %pdref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %1, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !15
  store %struct.ref_s* %2, %struct.ref_s** %pdref, align 8, !tbaa !1
  %3 = bitcast i16* %kpack to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = load i32, i32* %nidx.addr, align 4, !tbaa !12
  %cmp = icmp ule i32 %4, 4095
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %nidx.addr, align 4, !tbaa !12
  %add = add i32 49152, %5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 0, %cond.false ]
  %conv = trunc i32 %cond to i16
  store i16 %conv, i16* %kpack, align 2, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %do.cond.141, %cond.end
  %6 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %pdref, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %8 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !1
  store %struct.dict_s* %8, %struct.dict_s** %pdict, align 8, !tbaa !1
  %9 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %10, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %11 = load i32, i32* %rsize, align 4, !tbaa !17
  %sub = sub i32 %11, 1
  store i32 %sub, i32* %size, align 4, !tbaa !12
  %12 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %keys = getelementptr inbounds %struct.dict_s, %struct.dict_s* %12, i32 0, i32 1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %13 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv3 = zext i8 %14 to i32
  %cmp4 = icmp eq i32 %conv3, 6
  br i1 %cmp4, label %if.then, label %if.else.50

if.then:                                          ; preds = %do.body
  %15 = bitcast i16** %kbot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %keys6 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %16, i32 0, i32 1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys6, i32 0, i32 1
  %packed = bitcast %union.v* %value7 to i16**
  %17 = load i16*, i16** %packed, align 8, !tbaa !1
  store i16* %17, i16** %kbot, align 8, !tbaa !1
  %18 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %size, align 4, !tbaa !12
  %cmp8 = icmp ugt i32 %19, 8388609
  br i1 %cmp8, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %if.then
  %20 = load i32, i32* %nidx.addr, align 4, !tbaa !12
  %21 = load i32, i32* %size, align 4, !tbaa !12
  %rem = urem i32 %20, %21
  br label %cond.end.13

cond.false.11:                                    ; preds = %if.then
  %22 = load i32, i32* %nidx.addr, align 4, !tbaa !12
  %23 = load i32, i32* %size, align 4, !tbaa !12
  %sub12 = sub i32 %23, 1
  %and = and i32 %22, %sub12
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.true.10
  %cond14 = phi i32 [ %rem, %cond.true.10 ], [ %and, %cond.false.11 ]
  %add15 = add i32 %cond14, 1
  store i32 %add15, i32* %start, align 4, !tbaa !12
  %24 = bitcast i16** %kp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load i16*, i16** %kbot, align 8, !tbaa !1
  %26 = load i32, i32* %start, align 4, !tbaa !12
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i16, i16* %25, i64 %idx.ext
  store i16* %add.ptr, i16** %kp, align 8, !tbaa !1
  %27 = bitcast i32* %wrap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 0, i32* %wrap, align 4, !tbaa !12
  br label %again

again:                                            ; preds = %if.else.40, %cond.end.13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %again
  br label %do.body.16

do.body.16:                                       ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %do.body.16
  br label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load i16*, i16** %kp, align 8, !tbaa !1
  %29 = load i16, i16* %28, align 2, !tbaa !16
  %conv17 = zext i16 %29 to i32
  %30 = load i16, i16* %kpack, align 2, !tbaa !16
  %conv18 = zext i16 %30 to i32
  %cmp19 = icmp eq i32 %conv17, %conv18
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.end
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.body.22
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %31 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values25 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %31, i32 0, i32 0
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values25, i32 0, i32 1
  %refs = bitcast %union.v* %value26 to %struct.ref_s**
  %32 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %33 = load i16*, i16** %kp, align 8, !tbaa !1
  %34 = load i16*, i16** %kbot, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i16* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 %sub.ptr.div
  store %struct.ref_s* %add.ptr27, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.end
  %35 = load i16*, i16** %kp, align 8, !tbaa !1
  %36 = load i16, i16* %35, align 2, !tbaa !16
  %conv28 = zext i16 %36 to i32
  %cmp29 = icmp sge i32 %conv28, 49152
  br i1 %cmp29, label %if.end.45, label %if.then.31

if.then.31:                                       ; preds = %if.else
  %37 = load i16*, i16** %kp, align 8, !tbaa !1
  %38 = load i16, i16* %37, align 2, !tbaa !16
  %conv32 = zext i16 %38 to i32
  %cmp33 = icmp eq i32 %conv32, 24576
  br i1 %cmp33, label %if.then.35, label %if.end

if.then.35:                                       ; preds = %if.then.31
  br label %for.end

if.end:                                           ; preds = %if.then.31
  %39 = load i16*, i16** %kp, align 8, !tbaa !1
  %40 = load i16*, i16** %kbot, align 8, !tbaa !1
  %cmp36 = icmp eq i16* %39, %40
  br i1 %cmp36, label %if.then.38, label %if.else.43

if.then.38:                                       ; preds = %if.end
  %41 = load i32, i32* %wrap, align 4, !tbaa !12
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.then.38
  br label %for.end

if.else.40:                                       ; preds = %if.then.38
  %42 = load i32, i32* %wrap, align 4, !tbaa !12
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %wrap, align 4, !tbaa !12
  %43 = load i32, i32* %size, align 4, !tbaa !12
  %44 = load i16*, i16** %kp, align 8, !tbaa !1
  %idx.ext41 = zext i32 %43 to i64
  %add.ptr42 = getelementptr inbounds i16, i16* %44, i64 %idx.ext41
  store i16* %add.ptr42, i16** %kp, align 8, !tbaa !1
  br label %again

if.else.43:                                       ; preds = %if.end
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %45 = load i16*, i16** %kp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %45, i32 -1
  store i16* %incdec.ptr, i16** %kp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.39, %if.then.35
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end.24
  %46 = bitcast i32* %wrap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i16** %kp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i16** %kbot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.137 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.136

if.else.50:                                       ; preds = %do.body
  %50 = bitcast %struct.ref_s** %kbot51 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %keys52 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %51, i32 0, i32 1
  %value53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys52, i32 0, i32 1
  %refs54 = bitcast %union.v* %value53 to %struct.ref_s**
  %52 = load %struct.ref_s*, %struct.ref_s** %refs54, align 8, !tbaa !1
  store %struct.ref_s* %52, %struct.ref_s** %kbot51, align 8, !tbaa !1
  %53 = bitcast %struct.ref_s** %kp55 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = bitcast i32* %wrap56 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  store i32 0, i32* %wrap56, align 4, !tbaa !12
  %55 = load %struct.ref_s*, %struct.ref_s** %kbot51, align 8, !tbaa !1
  %56 = load i32, i32* %size, align 4, !tbaa !12
  %cmp57 = icmp ugt i32 %56, 8388609
  br i1 %cmp57, label %cond.true.59, label %cond.false.61

cond.true.59:                                     ; preds = %if.else.50
  %57 = load i32, i32* %nidx.addr, align 4, !tbaa !12
  %58 = load i32, i32* %size, align 4, !tbaa !12
  %rem60 = urem i32 %57, %58
  br label %cond.end.64

cond.false.61:                                    ; preds = %if.else.50
  %59 = load i32, i32* %nidx.addr, align 4, !tbaa !12
  %60 = load i32, i32* %size, align 4, !tbaa !12
  %sub62 = sub i32 %60, 1
  %and63 = and i32 %59, %sub62
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.61, %cond.true.59
  %cond65 = phi i32 [ %rem60, %cond.true.59 ], [ %and63, %cond.false.61 ]
  %idx.ext66 = zext i32 %cond65 to i64
  %add.ptr67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 %idx.ext66
  %add.ptr68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr67, i64 2
  store %struct.ref_s* %add.ptr68, %struct.ref_s** %kp55, align 8, !tbaa !1
  br label %for.cond.69

for.cond.69:                                      ; preds = %if.end.129, %cond.end.64
  %61 = load %struct.ref_s*, %struct.ref_s** %kp55, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 -1
  store %struct.ref_s* %incdec.ptr70, %struct.ref_s** %kp55, align 8, !tbaa !1
  %62 = load %struct.ref_s*, %struct.ref_s** %kp55, align 8, !tbaa !1
  %tas71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 0
  %type_attrs72 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas71, i32 0, i32 0
  %63 = bitcast i16* %type_attrs72 to i8*
  %arrayidx73 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx73, align 1, !tbaa !18
  %conv74 = zext i8 %64 to i32
  %cmp75 = icmp eq i32 %conv74, 13
  br i1 %cmp75, label %if.then.77, label %if.else.102

if.then.77:                                       ; preds = %for.cond.69
  %65 = load %struct.ref_s*, %struct.ref_s** %kp55, align 8, !tbaa !1
  %value78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 1
  %pname = bitcast %union.v* %value78 to %struct.name_s**
  %66 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %67 = load %struct.ref_s*, %struct.ref_s** %kp55, align 8, !tbaa !1
  %tas79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 0
  %rsize80 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas79, i32 0, i32 2
  %68 = load i32, i32* %rsize80, align 4, !tbaa !17
  %and81 = and i32 %68, 511
  %idx.ext82 = zext i32 %and81 to i64
  %idx.neg = sub i64 0, %idx.ext82
  %add.ptr83 = getelementptr inbounds %struct.name_s, %struct.name_s* %66, i64 %idx.neg
  %69 = bitcast %struct.name_s* %add.ptr83 to %struct.name_sub_table_s*
  %high_index = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %69, i32 0, i32 1
  %70 = load i32, i32* %high_index, align 4, !tbaa !19
  %71 = load %struct.ref_s*, %struct.ref_s** %kp55, align 8, !tbaa !1
  %tas84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 0
  %rsize85 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas84, i32 0, i32 2
  %72 = load i32, i32* %rsize85, align 4, !tbaa !17
  %add86 = add i32 %70, %72
  %73 = load i32, i32* %nidx.addr, align 4, !tbaa !12
  %cmp87 = icmp eq i32 %add86, %73
  br i1 %cmp87, label %if.then.89, label %if.end.101

if.then.89:                                       ; preds = %if.then.77
  br label %do.body.90

do.body.90:                                       ; preds = %if.then.89
  br label %do.cond.91

do.cond.91:                                       ; preds = %do.body.90
  br label %do.end.92

do.end.92:                                        ; preds = %do.cond.91
  %74 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values93 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %74, i32 0, i32 0
  %value94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values93, i32 0, i32 1
  %refs95 = bitcast %union.v* %value94 to %struct.ref_s**
  %75 = load %struct.ref_s*, %struct.ref_s** %refs95, align 8, !tbaa !1
  %76 = load %struct.ref_s*, %struct.ref_s** %kp55, align 8, !tbaa !1
  %77 = load %struct.ref_s*, %struct.ref_s** %kbot51, align 8, !tbaa !1
  %sub.ptr.lhs.cast96 = ptrtoint %struct.ref_s* %76 to i64
  %sub.ptr.rhs.cast97 = ptrtoint %struct.ref_s* %77 to i64
  %sub.ptr.sub98 = sub i64 %sub.ptr.lhs.cast96, %sub.ptr.rhs.cast97
  %sub.ptr.div99 = sdiv exact i64 %sub.ptr.sub98, 16
  %add.ptr100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 %sub.ptr.div99
  store %struct.ref_s* %add.ptr100, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.131

if.end.101:                                       ; preds = %if.then.77
  br label %if.end.129

if.else.102:                                      ; preds = %for.cond.69
  %78 = load %struct.ref_s*, %struct.ref_s** %kp55, align 8, !tbaa !1
  %tas103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 0
  %type_attrs104 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas103, i32 0, i32 0
  %79 = bitcast i16* %type_attrs104 to i8*
  %arrayidx105 = getelementptr inbounds i8, i8* %79, i64 1
  %80 = load i8, i8* %arrayidx105, align 1, !tbaa !18
  %conv106 = zext i8 %80 to i32
  %cmp107 = icmp eq i32 %conv106, 14
  br i1 %cmp107, label %if.then.109, label %if.end.128

if.then.109:                                      ; preds = %if.else.102
  %81 = load %struct.ref_s*, %struct.ref_s** %kp55, align 8, !tbaa !1
  %tas110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 0
  %type_attrs111 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas110, i32 0, i32 0
  %82 = load i16, i16* %type_attrs111, align 2, !tbaa !21
  %conv112 = zext i16 %82 to i32
  %and113 = and i32 %conv112, 128
  %tobool114 = icmp ne i32 %and113, 0
  br i1 %tobool114, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %if.then.109
  br label %for.end.130

if.end.116:                                       ; preds = %if.then.109
  %83 = load %struct.ref_s*, %struct.ref_s** %kp55, align 8, !tbaa !1
  %84 = load %struct.ref_s*, %struct.ref_s** %kbot51, align 8, !tbaa !1
  %cmp117 = icmp eq %struct.ref_s* %83, %84
  br i1 %cmp117, label %if.then.119, label %if.end.127

if.then.119:                                      ; preds = %if.end.116
  %85 = load i32, i32* %wrap56, align 4, !tbaa !12
  %inc120 = add nsw i32 %85, 1
  store i32 %inc120, i32* %wrap56, align 4, !tbaa !12
  %tobool121 = icmp ne i32 %85, 0
  br i1 %tobool121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.then.119
  br label %for.end.130

if.end.123:                                       ; preds = %if.then.119
  %86 = load i32, i32* %size, align 4, !tbaa !12
  %add124 = add i32 %86, 1
  %87 = load %struct.ref_s*, %struct.ref_s** %kp55, align 8, !tbaa !1
  %idx.ext125 = zext i32 %add124 to i64
  %add.ptr126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i64 %idx.ext125
  store %struct.ref_s* %add.ptr126, %struct.ref_s** %kp55, align 8, !tbaa !1
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.123, %if.end.116
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.else.102
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.101
  br label %for.cond.69

for.end.130:                                      ; preds = %if.then.122, %if.then.115
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.131

cleanup.131:                                      ; preds = %for.end.130, %do.end.92
  %88 = bitcast i32* %wrap56 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast %struct.ref_s** %kp55 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast %struct.ref_s** %kbot51 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %cleanup.dest.134 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.134, label %cleanup.137 [
    i32 0, label %cleanup.cont.135
  ]

cleanup.cont.135:                                 ; preds = %cleanup.131
  br label %if.end.136

if.end.136:                                       ; preds = %cleanup.cont.135, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.137

cleanup.137:                                      ; preds = %if.end.136, %cleanup.131, %cleanup
  %91 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %cleanup.dest.139 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.139, label %cleanup.194 [
    i32 0, label %cleanup.cont.140
  ]

cleanup.cont.140:                                 ; preds = %cleanup.137
  br label %do.cond.141

do.cond.141:                                      ; preds = %cleanup.cont.140
  %93 = load %struct.ref_s*, %struct.ref_s** %pdref, align 8, !tbaa !1
  %incdec.ptr142 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i32 -1
  store %struct.ref_s* %incdec.ptr142, %struct.ref_s** %pdref, align 8, !tbaa !1
  %94 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack143 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %94, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack143, i32 0, i32 1
  %95 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !14
  %cmp144 = icmp ugt %struct.ref_s* %93, %95
  br i1 %cmp144, label %do.body, label %do.end.146

do.end.146:                                       ; preds = %do.cond.141
  %96 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack147 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %96, i32 0, i32 0
  %extension_size = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack147, i32 0, i32 4
  %97 = load i32, i32* %extension_size, align 4, !tbaa !5
  %tobool148 = icmp ne i32 %97, 0
  br i1 %tobool148, label %if.end.150, label %if.then.149

if.then.149:                                      ; preds = %do.end.146
  store %struct.ref_s* null, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.194

if.end.150:                                       ; preds = %do.end.146
  %98 = bitcast %struct.ref_s* %key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %98) #1
  %99 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #1
  %100 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack151 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %100, i32 0, i32 0
  %p152 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack151, i32 0, i32 0
  %101 = load %struct.ref_s*, %struct.ref_s** %p152, align 8, !tbaa !15
  %add.ptr153 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i64 1
  %102 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack154 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %102, i32 0, i32 0
  %bot155 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack154, i32 0, i32 1
  %103 = load %struct.ref_s*, %struct.ref_s** %bot155, align 8, !tbaa !14
  %sub.ptr.lhs.cast156 = ptrtoint %struct.ref_s* %add.ptr153 to i64
  %sub.ptr.rhs.cast157 = ptrtoint %struct.ref_s* %103 to i64
  %sub.ptr.sub158 = sub i64 %sub.ptr.lhs.cast156, %sub.ptr.rhs.cast157
  %sub.ptr.div159 = sdiv exact i64 %sub.ptr.sub158, 16
  %conv160 = trunc i64 %sub.ptr.div159 to i32
  store i32 %conv160, i32* %i, align 4, !tbaa !12
  %104 = bitcast i32* %size161 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack162 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %105, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack162) #3
  store i32 %call, i32* %size161, align 4, !tbaa !12
  %106 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  %107 = bitcast %struct.dict_s** %pdict163 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  %108 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack164 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %108, i32 0, i32 0
  %p165 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack164, i32 0, i32 0
  %109 = load %struct.ref_s*, %struct.ref_s** %p165, align 8, !tbaa !15
  %value166 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %109, i32 0, i32 1
  %pdict167 = bitcast %union.v* %value166 to %struct.dict_s**
  %110 = load %struct.dict_s*, %struct.dict_s** %pdict167, align 8, !tbaa !1
  store %struct.dict_s* %110, %struct.dict_s** %pdict163, align 8, !tbaa !1
  %111 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %111) #1
  %112 = load %struct.dict_s*, %struct.dict_s** %pdict163, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %112, i32 0, i32 4
  %value168 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value168 to %struct.obj_header_s**
  %113 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %114 = bitcast %struct.obj_header_s* %113 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %114, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %115 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %115, i32 0, i32 2
  %116 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !22
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %116, i32 0, i32 16
  %117 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !25
  %118 = load i32, i32* %nidx.addr, align 4, !tbaa !12
  call void @names_index_ref(%struct.name_table_s* %117, i32 %118, %struct.ref_s* %key) #3
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.183, %if.end.150
  %119 = load i32, i32* %i, align 4, !tbaa !12
  %120 = load i32, i32* %size161, align 4, !tbaa !12
  %cmp170 = icmp ult i32 %119, %120
  br i1 %cmp170, label %for.body, label %for.end.185

for.body:                                         ; preds = %for.cond.169
  %121 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack172 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %121, i32 0, i32 0
  %122 = load i32, i32* %i, align 4, !tbaa !12
  %conv173 = zext i32 %122 to i64
  %call174 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack172, i64 %conv173) #3
  %call175 = call i32 @dict_find(%struct.ref_s* %call174, %struct.ref_s* %key, %struct.ref_s** %pvalue) #3
  %cmp176 = icmp sgt i32 %call175, 0
  br i1 %cmp176, label %if.then.178, label %if.end.182

if.then.178:                                      ; preds = %for.body
  br label %do.body.179

do.body.179:                                      ; preds = %if.then.178
  br label %do.cond.180

do.cond.180:                                      ; preds = %do.body.179
  br label %do.end.181

do.end.181:                                       ; preds = %do.cond.180
  %123 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  store %struct.ref_s* %123, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.186

if.end.182:                                       ; preds = %for.body
  br label %for.inc.183

for.inc.183:                                      ; preds = %if.end.182
  %124 = load i32, i32* %i, align 4, !tbaa !12
  %inc184 = add i32 %124, 1
  store i32 %inc184, i32* %i, align 4, !tbaa !12
  br label %for.cond.169

for.end.185:                                      ; preds = %for.cond.169
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.186

cleanup.186:                                      ; preds = %for.end.185, %do.end.181
  %125 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast %struct.dict_s** %pdict163 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i32* %size161 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast %struct.ref_s* %key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %130) #1
  %cleanup.dest.192 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.192, label %cleanup.194 [
    i32 0, label %cleanup.cont.193
  ]

cleanup.cont.193:                                 ; preds = %cleanup.186
  store %struct.ref_s* null, %struct.ref_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.194

cleanup.194:                                      ; preds = %cleanup.cont.193, %cleanup.186, %if.then.149, %cleanup.137
  %131 = bitcast i16* %kpack to i8*
  call void @llvm.lifetime.end(i64 2, i8* %131) #1
  %132 = bitcast %struct.ref_s** %pdref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = load %struct.ref_s*, %struct.ref_s** %retval
  ret %struct.ref_s* %133
}

declare void @names_index_ref(%struct.name_table_s*, i32, %struct.ref_s*) #2

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

; Function Attrs: nounwind uwtable
define void @dstack_set_top(%struct.dict_stack_s* %pds) #0 {
entry:
  %pds.addr = alloca %struct.dict_stack_s*, align 8
  %dsp = alloca %struct.ref_s*, align 8
  %pdict = alloca %struct.dict_s*, align 8
  store %struct.dict_stack_s* %pds, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %dsp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %1, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !15
  store %struct.ref_s* %2, %struct.ref_s** %dsp, align 8, !tbaa !1
  %3 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %dsp, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %5 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !1
  store %struct.dict_s* %5, %struct.dict_s** %pdict, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %keys = getelementptr inbounds %struct.dict_s, %struct.dict_s* %6, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 6
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end
  %9 = load %struct.ref_s*, %struct.ref_s** %dsp, align 8, !tbaa !1
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %pdict4 = bitcast %union.v* %value3 to %struct.dict_s**
  %10 = load %struct.dict_s*, %struct.dict_s** %pdict4, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %10, i32 0, i32 0
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %11 = load i16, i16* %type_attrs6, align 2, !tbaa !21
  %conv7 = zext i16 %11 to i32
  %and = and i32 %conv7, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %keys8 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %12, i32 0, i32 1
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %keys8, i32 0, i32 1
  %packed = bitcast %union.v* %value9 to i16**
  %13 = load i16*, i16** %packed, align 8, !tbaa !1
  %14 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %top_keys = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %14, i32 0, i32 4
  store i16* %13, i16** %top_keys, align 8, !tbaa !28
  %15 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values10 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %15, i32 0, i32 0
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values10, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !17
  %sub = sub i32 %16, 1
  %17 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %top_npairs = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %17, i32 0, i32 5
  store i32 %sub, i32* %top_npairs, align 4, !tbaa !29
  %18 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values12 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %18, i32 0, i32 0
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values12, i32 0, i32 1
  %refs = bitcast %union.v* %value13 to %struct.ref_s**
  %19 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %20 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %top_values = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %20, i32 0, i32 6
  store %struct.ref_s* %19, %struct.ref_s** %top_values, align 8, !tbaa !30
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.end
  %21 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %top_keys14 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %21, i32 0, i32 4
  store i16* getelementptr inbounds ([2 x i16], [2 x i16]* @no_packed_keys, i32 0, i32 0), i16** %top_keys14, align 8, !tbaa !28
  %22 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %top_npairs15 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %22, i32 0, i32 5
  store i32 1, i32* %top_npairs15, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load %struct.ref_s*, %struct.ref_s** %dsp, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %pdict17 = bitcast %union.v* %value16 to %struct.dict_s**
  %24 = load %struct.dict_s*, %struct.dict_s** %pdict17, align 8, !tbaa !1
  %values18 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %24, i32 0, i32 0
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values18, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  %25 = load i16, i16* %type_attrs20, align 2, !tbaa !21
  %conv21 = zext i16 %25 to i32
  %and22 = and i32 %conv21, 16
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.else.25, label %if.then.24

if.then.24:                                       ; preds = %if.end
  %26 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %def_space = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %26, i32 0, i32 3
  store i32 -1, i32* %def_space, align 4, !tbaa !31
  br label %if.end.31

if.else.25:                                       ; preds = %if.end
  %27 = load %struct.ref_s*, %struct.ref_s** %dsp, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  %28 = load i16, i16* %type_attrs27, align 2, !tbaa !21
  %conv28 = zext i16 %28 to i32
  %and29 = and i32 %conv28, 12
  %29 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %def_space30 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %29, i32 0, i32 3
  store i32 %and29, i32* %def_space30, align 4, !tbaa !31
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.25, %if.then.24
  %30 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.ref_s** %dsp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @dstack_gc_cleanup(%struct.dict_stack_s* %pds) #0 {
entry:
  %pds.addr = alloca %struct.dict_stack_s*, align 8
  %count = alloca i32, align 4
  %dsi = alloca i32, align 4
  %pdict = alloca %struct.dict_s*, align 8
  %size = alloca i32, align 4
  %pvalue = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %key = alloca %struct.ref_s, align 8
  %old_pvalue = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.dict_stack_s* %pds, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %1, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack) #3
  store i32 %call, i32* %count, align 4, !tbaa !12
  %2 = bitcast i32* %dsi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %min_size = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %3, i32 0, i32 1
  %4 = load i32, i32* %min_size, align 4, !tbaa !13
  store i32 %4, i32* %dsi, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %5 = load i32, i32* %dsi, align 4, !tbaa !12
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %6 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.dict_stack_s*, %struct.dict_stack_s** %pds.addr, align 8, !tbaa !1
  %stack1 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %7, i32 0, i32 0
  %8 = load i32, i32* %count, align 4, !tbaa !12
  %9 = load i32, i32* %dsi, align 4, !tbaa !12
  %sub = sub i32 %8, %9
  %conv = zext i32 %sub to i64
  %call2 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack1, i64 %conv) #3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call2, i32 0, i32 1
  %pdict3 = bitcast %union.v* %value to %struct.dict_s**
  %10 = load %struct.dict_s*, %struct.dict_s** %pdict3, align 8, !tbaa !1
  store %struct.dict_s* %10, %struct.dict_s** %pdict, align 8, !tbaa !1
  %11 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %12, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %13 = load i32, i32* %rsize, align 4, !tbaa !17
  store i32 %13, i32* %size, align 4, !tbaa !12
  %14 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values4 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %15, i32 0, i32 0
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values4, i32 0, i32 1
  %refs = bitcast %union.v* %value5 to %struct.ref_s**
  %16 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %16, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !12
  %19 = load i32, i32* %size, align 4, !tbaa !12
  %cmp7 = icmp ult i32 %18, %19
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %20 = bitcast %struct.ref_s* %key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %20) #1
  %21 = bitcast %struct.ref_s** %old_pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %22, i32 0, i32 4
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value10 to %struct.obj_header_s**
  %23 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %24 = bitcast %struct.obj_header_s* %23 to %struct.gs_memory_s*
  %25 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %keys = getelementptr inbounds %struct.dict_s, %struct.dict_s* %25, i32 0, i32 1
  %26 = load i32, i32* %i, align 4, !tbaa !12
  %conv11 = zext i32 %26 to i64
  %call12 = call i32 @array_get(%struct.gs_memory_s* %24, %struct.ref_s* %keys, i64 %conv11, %struct.ref_s* %key) #3
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %key, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %27 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv14 = zext i8 %28 to i32
  %cmp15 = icmp eq i32 %conv14, 13
  br i1 %cmp15, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %for.body.9
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %key, i32 0, i32 1
  %pname = bitcast %union.v* %value17 to %struct.name_s**
  %29 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %pvalue18 = getelementptr inbounds %struct.name_s, %struct.name_s* %29, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %pvalue18, align 8, !tbaa !32
  store %struct.ref_s* %30, %struct.ref_s** %old_pvalue, align 8, !tbaa !1
  %31 = ptrtoint %struct.ref_s* %30 to i64
  %cmp19 = icmp ugt i64 %31, 1
  br i1 %cmp19, label %if.then, label %if.end.27

if.then:                                          ; preds = %land.lhs.true
  %32 = load %struct.ref_s*, %struct.ref_s** %old_pvalue, align 8, !tbaa !1
  %33 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %cmp21 = icmp eq %struct.ref_s* %32, %33
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.23
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %34 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %key, i32 0, i32 1
  %pname25 = bitcast %union.v* %value24 to %struct.name_s**
  %35 = load %struct.name_s*, %struct.name_s** %pname25, align 8, !tbaa !1
  %pvalue26 = getelementptr inbounds %struct.name_s, %struct.name_s* %35, i32 0, i32 0
  store %struct.ref_s* %34, %struct.ref_s** %pvalue26, align 8, !tbaa !32
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %land.lhs.true, %for.body.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %do.end
  %36 = bitcast %struct.ref_s** %old_pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.ref_s* %key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %37) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %38 = load i32, i32* %i, align 4, !tbaa !12
  %inc = add i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !12
  %39 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %pvalue, align 8, !tbaa !1
  br label %for.cond.6

for.end:                                          ; preds = %cleanup, %for.cond.6
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %44 = load i32, i32* %dsi, align 4, !tbaa !12
  %dec = add i32 %44, -1
  store i32 %dec, i32* %dsi, align 4, !tbaa !12
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  %45 = bitcast i32* %dsi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

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
!5 = !{!6, !11, i64 40}
!6 = !{!"dict_stack_s", !7, i64 0, !11, i64 96, !11, i64 100, !11, i64 104, !2, i64 112, !11, i64 120, !2, i64 128, !8, i64 136}
!7 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !11, i64 40, !11, i64 44, !8, i64 48, !11, i64 64, !11, i64 68, !11, i64 72, !2, i64 80, !2, i64 88}
!8 = !{!"ref_s", !9, i64 0, !3, i64 8}
!9 = !{!"tas_s", !10, i64 0, !10, i64 2, !11, i64 4}
!10 = !{!"short", !3, i64 0}
!11 = !{!"int", !3, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!6, !11, i64 96}
!14 = !{!6, !2, i64 8}
!15 = !{!6, !2, i64 0}
!16 = !{!10, !10, i64 0}
!17 = !{!8, !11, i64 4}
!18 = !{!3, !3, i64 0}
!19 = !{!20, !11, i64 4096}
!20 = !{!"name_sub_table_s", !3, i64 0, !11, i64 4096}
!21 = !{!8, !10, i64 0}
!22 = !{!23, !2, i64 192}
!23 = !{!"gs_memory_s", !2, i64 0, !24, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!24 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!25 = !{!26, !2, i64 120}
!26 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !27, i64 104, !2, i64 112, !2, i64 120, !11, i64 128, !2, i64 136, !11, i64 144, !11, i64 148, !3, i64 152, !2, i64 168, !11, i64 176, !2, i64 184, !11, i64 192, !2, i64 200, !2, i64 208}
!27 = !{!"long", !3, i64 0}
!28 = !{!6, !2, i64 112}
!29 = !{!6, !11, i64 120}
!30 = !{!6, !2, i64 128}
!31 = !{!6, !11, i64 104}
!32 = !{!33, !2, i64 0}
!33 = !{!"name_s", !2, i64 0}
