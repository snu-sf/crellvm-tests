; ModuleID = './gxsync.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }

@.str = private unnamed_addr constant [22 x i8] c"gx_semaphore (create)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"gx_semaphore (alloc)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"gx_semaphore (free)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"gx_monitor (create)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"gx_monitor (alloc)\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"gx_monitor (free)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gx_semaphore_s* @gx_semaphore_alloc(%struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca %struct.gx_semaphore_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %sema = alloca %struct.gx_semaphore_s*, align 8
  %semaSizeof = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_semaphore_s** %sema to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %semaSizeof to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %call = call i32 @gp_semaphore_sizeof() #3
  %conv = zext i32 %call to i64
  %add = add i64 8, %conv
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %semaSizeof, align 4, !tbaa !5
  %call2 = call i32 @gp_semaphore_open(%union.gp_semaphore* null) #3
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %3 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !7
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %5 = load i32, i32* %semaSizeof, align 4, !tbaa !5
  %call4 = call i8* %3(%struct.gs_memory_s* %4, i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #3
  %6 = bitcast i8* %call4 to %struct.gx_semaphore_s*
  store %struct.gx_semaphore_s* %6, %struct.gx_semaphore_s** %sema, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 0
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !10
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %10 = load i32, i32* %semaSizeof, align 4, !tbaa !5
  %call6 = call i8* %8(%struct.gs_memory_s* %9, i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #3
  %11 = bitcast i8* %call6 to %struct.gx_semaphore_s*
  store %struct.gx_semaphore_s* %11, %struct.gx_semaphore_s** %sema, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.gx_semaphore_s* %12, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store %struct.gx_semaphore_s* null, %struct.gx_semaphore_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %14 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %14, i32 0, i32 0
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %memory11, align 8, !tbaa !11
  %15 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema, align 8, !tbaa !1
  %native = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %15, i32 0, i32 1
  %call12 = call i32 @gp_semaphore_open(%union.gp_semaphore* %native) #3
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.10
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %17 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !13
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %19 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema, align 8, !tbaa !1
  %20 = bitcast %struct.gx_semaphore_s* %19 to i8*
  call void %17(%struct.gs_memory_s* %18, i8* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0)) #3
  store %struct.gx_semaphore_s* null, %struct.gx_semaphore_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.10
  %21 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema, align 8, !tbaa !1
  store %struct.gx_semaphore_s* %21, %struct.gx_semaphore_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.15, %if.then.9
  %22 = bitcast i32* %semaSizeof to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.gx_semaphore_s** %sema to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %retval
  ret %struct.gx_semaphore_s* %24
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gp_semaphore_sizeof() #2

declare i32 @gp_semaphore_open(%union.gp_semaphore*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gx_semaphore_free(%struct.gx_semaphore_s* %sema) #0 {
entry:
  %sema.addr = alloca %struct.gx_semaphore_s*, align 8
  store %struct.gx_semaphore_s* %sema, %struct.gx_semaphore_s** %sema.addr, align 8, !tbaa !1
  %0 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_semaphore_s* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema.addr, align 8, !tbaa !1
  %native = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %1, i32 0, i32 1
  %call = call i32 @gp_semaphore_close(%union.gp_semaphore* %native) #3
  %2 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !11
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %4 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !13
  %5 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %5, i32 0, i32 0
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !11
  %7 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %sema.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_semaphore_s* %7 to i8*
  call void %4(%struct.gs_memory_s* %6, i8* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gp_semaphore_close(%union.gp_semaphore*) #2

; Function Attrs: nounwind uwtable
define %struct.gx_monitor_s* @gx_monitor_alloc(%struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca %struct.gx_monitor_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %mon = alloca %struct.gx_monitor_s*, align 8
  %monSizeof = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_monitor_s** %mon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %monSizeof to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %call = call i32 @gp_monitor_sizeof() #3
  %conv = zext i32 %call to i64
  %add = add i64 8, %conv
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %monSizeof, align 4, !tbaa !5
  %call2 = call i32 @gp_monitor_open(%union.gp_monitor* null) #3
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %3 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !7
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %5 = load i32, i32* %monSizeof, align 4, !tbaa !5
  %call4 = call i8* %3(%struct.gs_memory_s* %4, i32 %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #3
  %6 = bitcast i8* %call4 to %struct.gx_monitor_s*
  store %struct.gx_monitor_s* %6, %struct.gx_monitor_s** %mon, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 0
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !10
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %10 = load i32, i32* %monSizeof, align 4, !tbaa !5
  %call6 = call i8* %8(%struct.gs_memory_s* %9, i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #3
  %11 = bitcast i8* %call6 to %struct.gx_monitor_s*
  store %struct.gx_monitor_s* %11, %struct.gx_monitor_s** %mon, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %mon, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.gx_monitor_s* %12, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store %struct.gx_monitor_s* null, %struct.gx_monitor_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %14 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %mon, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %14, i32 0, i32 0
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %memory11, align 8, !tbaa !14
  %15 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %mon, align 8, !tbaa !1
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %15, i32 0, i32 1
  %call12 = call i32 @gp_monitor_open(%union.gp_monitor* %native) #3
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.10
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %17 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !13
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %19 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %mon, align 8, !tbaa !1
  %20 = bitcast %struct.gx_monitor_s* %19 to i8*
  call void %17(%struct.gs_memory_s* %18, i8* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0)) #3
  store %struct.gx_monitor_s* null, %struct.gx_monitor_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.10
  %21 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %mon, align 8, !tbaa !1
  store %struct.gx_monitor_s* %21, %struct.gx_monitor_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.15, %if.then.9
  %22 = bitcast i32* %monSizeof to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.gx_monitor_s** %mon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %retval
  ret %struct.gx_monitor_s* %24
}

declare i32 @gp_monitor_sizeof() #2

declare i32 @gp_monitor_open(%union.gp_monitor*) #2

; Function Attrs: nounwind uwtable
define void @gx_monitor_free(%struct.gx_monitor_s* %mon) #0 {
entry:
  %mon.addr = alloca %struct.gx_monitor_s*, align 8
  store %struct.gx_monitor_s* %mon, %struct.gx_monitor_s** %mon.addr, align 8, !tbaa !1
  %0 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %mon.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_monitor_s* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %mon.addr, align 8, !tbaa !1
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %1, i32 0, i32 1
  %call = call i32 @gp_monitor_close(%union.gp_monitor* %native) #3
  %2 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %mon.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !14
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %4 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !13
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %mon.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 0
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !14
  %7 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %mon.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_monitor_s* %7 to i8*
  call void %4(%struct.gs_memory_s* %6, i8* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gp_monitor_close(%union.gp_monitor*) #2

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
!7 = !{!8, !2, i64 64}
!8 = !{!"gs_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!9 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!10 = !{!8, !2, i64 8}
!11 = !{!12, !2, i64 0}
!12 = !{!"gx_semaphore_s", !2, i64 0, !3, i64 8}
!13 = !{!8, !2, i64 24}
!14 = !{!15, !2, i64 0}
!15 = !{!"gx_monitor_s", !2, i64 0, !3, i64 8}
