; ModuleID = './gsnotify.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }

@.str = private unnamed_addr constant [17 x i8] c"gs_notify_list_t\00", align 1
@notify_list_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @notify_list_enum_ptrs, i32 0, i32 0) }, align 8
@st_gs_notify_list = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @notify_list_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"gs_notify_register\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"gs_notify_unregister\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"gs_notify_release\00", align 1
@notify_list_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 8 }], align 2
@.str.4 = private unnamed_addr constant [25 x i8] c"gs_notify_registration_t\00", align 1
@notify_registration_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @notify_registration_enum_ptrs, i32 0, i32 0) }, align 8
@st_gs_notify_registration = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @notify_registration_reloc_ptrs to i8*) }, align 8
@notify_registration_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 16 }], align 2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define void @gs_notify_init(%struct.gs_notify_list_s* %nlist, %struct.gs_memory_s* %mem) #1 {
entry:
  %nlist.addr = alloca %struct.gs_notify_list_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_notify_list_s* %nlist, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %first = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %0, i32 0, i32 1
  store %struct.gs_notify_registration_s* null, %struct.gs_notify_registration_s** %first, align 8, !tbaa !5
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %2, i32 0, i32 0
  store %struct.gs_memory_s* %1, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_notify_register(%struct.gs_notify_list_s* %nlist, i32 (i8*, i8*)* %proc, i8* %proc_data) #1 {
entry:
  %retval = alloca i32, align 4
  %nlist.addr = alloca %struct.gs_notify_list_s*, align 8
  %proc.addr = alloca i32 (i8*, i8*)*, align 8
  %proc_data.addr = alloca i8*, align 8
  %nreg = alloca %struct.gs_notify_registration_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_notify_list_s* %nlist, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  store i32 (i8*, i8*)* %proc, i32 (i8*, i8*)** %proc.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_notify_registration_s** %nreg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %1, i32 0, i32 0
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %3 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !8
  %4 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %call = call i8* %3(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_notify_registration to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #3
  %6 = bitcast i8* %call to %struct.gs_notify_registration_s*
  store %struct.gs_notify_registration_s* %6, %struct.gs_notify_registration_s** %nreg, align 8, !tbaa !1
  %7 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %nreg, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_notify_registration_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %proc.addr, align 8, !tbaa !1
  %9 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %nreg, align 8, !tbaa !1
  %proc2 = getelementptr inbounds %struct.gs_notify_registration_s, %struct.gs_notify_registration_s* %9, i32 0, i32 0
  store i32 (i8*, i8*)* %8, i32 (i8*, i8*)** %proc2, align 8, !tbaa !11
  %10 = load i8*, i8** %proc_data.addr, align 8, !tbaa !1
  %11 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %nreg, align 8, !tbaa !1
  %proc_data3 = getelementptr inbounds %struct.gs_notify_registration_s, %struct.gs_notify_registration_s* %11, i32 0, i32 1
  store i8* %10, i8** %proc_data3, align 8, !tbaa !13
  %12 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %first = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %12, i32 0, i32 1
  %13 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %first, align 8, !tbaa !5
  %14 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %nreg, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_notify_registration_s, %struct.gs_notify_registration_s* %14, i32 0, i32 2
  store %struct.gs_notify_registration_s* %13, %struct.gs_notify_registration_s** %next, align 8, !tbaa !14
  %15 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %nreg, align 8, !tbaa !1
  %16 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %first4 = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %16, i32 0, i32 1
  store %struct.gs_notify_registration_s* %15, %struct.gs_notify_registration_s** %first4, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast %struct.gs_notify_registration_s** %nreg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_notify_unregister_calling(%struct.gs_notify_list_s* %nlist, i32 (i8*, i8*)* %proc, i8* %proc_data, void (i8*)* %unreg_proc) #1 {
entry:
  %nlist.addr = alloca %struct.gs_notify_list_s*, align 8
  %proc.addr = alloca i32 (i8*, i8*)*, align 8
  %proc_data.addr = alloca i8*, align 8
  %unreg_proc.addr = alloca void (i8*)*, align 8
  %prev = alloca %struct.gs_notify_registration_s**, align 8
  %cur = alloca %struct.gs_notify_registration_s*, align 8
  %found = alloca i32, align 4
  store %struct.gs_notify_list_s* %nlist, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  store i32 (i8*, i8*)* %proc, i32 (i8*, i8*)** %proc.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  store void (i8*)* %unreg_proc, void (i8*)** %unreg_proc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_notify_registration_s*** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %first = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %1, i32 0, i32 1
  store %struct.gs_notify_registration_s** %first, %struct.gs_notify_registration_s*** %prev, align 8, !tbaa !1
  %2 = bitcast %struct.gs_notify_registration_s** %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %found, align 4, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct.gs_notify_registration_s**, %struct.gs_notify_registration_s*** %prev, align 8, !tbaa !1
  %5 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %4, align 8, !tbaa !1
  store %struct.gs_notify_registration_s* %5, %struct.gs_notify_registration_s** %cur, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_notify_registration_s* %5, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %cur, align 8, !tbaa !1
  %proc1 = getelementptr inbounds %struct.gs_notify_registration_s, %struct.gs_notify_registration_s* %6, i32 0, i32 0
  %7 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %proc1, align 8, !tbaa !11
  %8 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %proc.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i32 (i8*, i8*)* %7, %8
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %9 = load i8*, i8** %proc_data.addr, align 8, !tbaa !1
  %cmp3 = icmp eq i8* %9, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %cur, align 8, !tbaa !1
  %proc_data4 = getelementptr inbounds %struct.gs_notify_registration_s, %struct.gs_notify_registration_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %proc_data4, align 8, !tbaa !13
  %12 = load i8*, i8** %proc_data.addr, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %11, %12
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %13 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %cur, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_notify_registration_s, %struct.gs_notify_registration_s* %13, i32 0, i32 2
  %14 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %next, align 8, !tbaa !14
  %15 = load %struct.gs_notify_registration_s**, %struct.gs_notify_registration_s*** %prev, align 8, !tbaa !1
  store %struct.gs_notify_registration_s* %14, %struct.gs_notify_registration_s** %15, align 8, !tbaa !1
  %16 = load void (i8*)*, void (i8*)** %unreg_proc.addr, align 8, !tbaa !1
  %17 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %cur, align 8, !tbaa !1
  %proc_data6 = getelementptr inbounds %struct.gs_notify_registration_s, %struct.gs_notify_registration_s* %17, i32 0, i32 1
  %18 = load i8*, i8** %proc_data6, align 8, !tbaa !13
  call void %16(i8* %18) #3
  %19 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %19, i32 0, i32 0
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %22 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %22, i32 0, i32 0
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !7
  %24 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %cur, align 8, !tbaa !1
  %25 = bitcast %struct.gs_notify_registration_s* %24 to i8*
  call void %21(%struct.gs_memory_s* %23, i8* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #3
  store i32 1, i32* %found, align 4, !tbaa !15
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false, %while.body
  %26 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %cur, align 8, !tbaa !1
  %next8 = getelementptr inbounds %struct.gs_notify_registration_s, %struct.gs_notify_registration_s* %26, i32 0, i32 2
  store %struct.gs_notify_registration_s** %next8, %struct.gs_notify_registration_s*** %prev, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %27 = load i32, i32* %found, align 4, !tbaa !15
  %28 = bitcast i32* %found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast %struct.gs_notify_registration_s** %cur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast %struct.gs_notify_registration_s*** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @gs_notify_unregister(%struct.gs_notify_list_s* %nlist, i32 (i8*, i8*)* %proc, i8* %proc_data) #1 {
entry:
  %nlist.addr = alloca %struct.gs_notify_list_s*, align 8
  %proc.addr = alloca i32 (i8*, i8*)*, align 8
  %proc_data.addr = alloca i8*, align 8
  store %struct.gs_notify_list_s* %nlist, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  store i32 (i8*, i8*)* %proc, i32 (i8*, i8*)** %proc.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  %0 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %proc.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %proc_data.addr, align 8, !tbaa !1
  %call = call i32 @gs_notify_unregister_calling(%struct.gs_notify_list_s* %0, i32 (i8*, i8*)* %1, i8* %2, void (i8*)* @no_unreg_proc) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @no_unreg_proc(i8* %pdata) #1 {
entry:
  %pdata.addr = alloca i8*, align 8
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_notify_all(%struct.gs_notify_list_s* %nlist, i8* %event_data) #1 {
entry:
  %nlist.addr = alloca %struct.gs_notify_list_s*, align 8
  %event_data.addr = alloca i8*, align 8
  %cur = alloca %struct.gs_notify_registration_s*, align 8
  %next = alloca %struct.gs_notify_registration_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_notify_list_s* %nlist, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  store i8* %event_data, i8** %event_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_notify_registration_s** %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gs_notify_registration_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %ecode, align 4, !tbaa !15
  %3 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %first = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %3, i32 0, i32 1
  %4 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %first, align 8, !tbaa !5
  store %struct.gs_notify_registration_s* %4, %struct.gs_notify_registration_s** %next, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %5 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %next, align 8, !tbaa !1
  store %struct.gs_notify_registration_s* %5, %struct.gs_notify_registration_s** %cur, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_notify_registration_s* %5, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %cur, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.gs_notify_registration_s, %struct.gs_notify_registration_s* %7, i32 0, i32 2
  %8 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %next1, align 8, !tbaa !14
  store %struct.gs_notify_registration_s* %8, %struct.gs_notify_registration_s** %next, align 8, !tbaa !1
  %9 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %cur, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gs_notify_registration_s, %struct.gs_notify_registration_s* %9, i32 0, i32 0
  %10 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %proc, align 8, !tbaa !11
  %11 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %cur, align 8, !tbaa !1
  %proc_data = getelementptr inbounds %struct.gs_notify_registration_s, %struct.gs_notify_registration_s* %11, i32 0, i32 1
  %12 = load i8*, i8** %proc_data, align 8, !tbaa !13
  %13 = load i8*, i8** %event_data.addr, align 8, !tbaa !1
  %call = call i32 %10(i8* %12, i8* %13) #3
  store i32 %call, i32* %code, align 4, !tbaa !15
  %14 = load i32, i32* %code, align 4, !tbaa !15
  %cmp2 = icmp slt i32 %14, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %15 = load i32, i32* %ecode, align 4, !tbaa !15
  %cmp3 = icmp eq i32 %15, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %16 = load i32, i32* %code, align 4, !tbaa !15
  store i32 %16, i32* %ecode, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %ecode, align 4, !tbaa !15
  %19 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast %struct.gs_notify_registration_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast %struct.gs_notify_registration_s** %cur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @gs_notify_release(%struct.gs_notify_list_s* %nlist) #1 {
entry:
  %nlist.addr = alloca %struct.gs_notify_list_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %next = alloca %struct.gs_notify_registration_s*, align 8
  store %struct.gs_notify_list_s* %nlist, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %1, i32 0, i32 0
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %first = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %3, i32 0, i32 1
  %4 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %first, align 8, !tbaa !5
  %tobool = icmp ne %struct.gs_notify_registration_s* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = bitcast %struct.gs_notify_registration_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %first1 = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %6, i32 0, i32 1
  %7 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %first1, align 8, !tbaa !5
  %next2 = getelementptr inbounds %struct.gs_notify_registration_s, %struct.gs_notify_registration_s* %7, i32 0, i32 2
  %8 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %next2, align 8, !tbaa !14
  store %struct.gs_notify_registration_s* %8, %struct.gs_notify_registration_s** %next, align 8, !tbaa !1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %10 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %12 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %first3 = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %12, i32 0, i32 1
  %13 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %first3, align 8, !tbaa !5
  %14 = bitcast %struct.gs_notify_registration_s* %13 to i8*
  call void %10(%struct.gs_memory_s* %11, i8* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #3
  %15 = load %struct.gs_notify_registration_s*, %struct.gs_notify_registration_s** %next, align 8, !tbaa !1
  %16 = load %struct.gs_notify_list_s*, %struct.gs_notify_list_s** %nlist.addr, align 8, !tbaa !1
  %first4 = getelementptr inbounds %struct.gs_notify_list_s, %struct.gs_notify_list_s* %16, i32 0, i32 1
  store %struct.gs_notify_registration_s* %15, %struct.gs_notify_registration_s** %first4, align 8, !tbaa !5
  %17 = bitcast %struct.gs_notify_registration_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  ret void
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 8}
!6 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!7 = !{!6, !2, i64 0}
!8 = !{!9, !2, i64 72}
!9 = !{!"gs_memory_s", !2, i64 0, !10, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!10 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!11 = !{!12, !2, i64 0}
!12 = !{!"gs_notify_registration_s", !2, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!12, !2, i64 8}
!14 = !{!12, !2, i64 16}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !3, i64 0}
!17 = !{!9, !2, i64 24}
