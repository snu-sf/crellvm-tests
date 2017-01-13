; ModuleID = './gslibctx.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

@mem_err_print = internal global %struct.gs_memory_s* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"%rom%iccprofiles/\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"gsicc_set_icc_directory\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"gs_lib_ctx_init\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define %struct.gs_memory_s* @gs_lib_ctx_get_non_gc_memory_t() #0 {
entry:
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** @mem_err_print, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_memory_s* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** @mem_err_print, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_memory_s* [ %2, %cond.true ], [ null, %cond.false ]
  ret %struct.gs_memory_s* %cond
}

; Function Attrs: nounwind uwtable
define void @gs_lib_ctx_set_icc_directory(%struct.gs_memory_s* %mem_gc, i8* %pname, i32 %dir_namelen) #0 {
entry:
  %mem_gc.addr = alloca %struct.gs_memory_s*, align 8
  %pname.addr = alloca i8*, align 8
  %dir_namelen.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  %p_ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem_gc, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %dir_namelen, i32* %dir_namelen.addr, align 4, !tbaa !8
  %0 = bitcast i8** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_lib_ctx_s** %p_ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 2
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !10
  store %struct.gs_lib_ctx_s* %3, %struct.gs_lib_ctx_s** %p_ctx, align 8, !tbaa !1
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %p_ctx, align 8, !tbaa !1
  %profiledir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 24
  %5 = load i8*, i8** %profiledir, align 8, !tbaa !11
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %entry
  %6 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([18 x i8]* @.str to i64)), i64 1), label %land.lhs.true.1, label %cond.false

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %call = call i64 @strlen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #5
  store i64 %call, i64* %__s2_len, align 8, !tbaa !14
  %8 = load i64, i64* %__s2_len, align 8, !tbaa !14
  %cmp2 = icmp ult i64 %8, 4
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.1
  %9 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  store i8* %10, i8** %__s1, align 8, !tbaa !1
  %11 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = zext i8 %13 to i32
  %14 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !15
  %conv5 = zext i8 %14 to i32
  %sub = sub nsw i32 %conv, %conv5
  store i32 %sub, i32* %__result, align 4, !tbaa !8
  %15 = load i64, i64* %__s2_len, align 8, !tbaa !14
  %cmp6 = icmp ugt i64 %15, 0
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.36

land.lhs.true.8:                                  ; preds = %cond.true
  %16 = load i32, i32* %__result, align 4, !tbaa !8
  %cmp9 = icmp eq i32 %16, 0
  br i1 %cmp9, label %if.then, label %if.end.36

if.then:                                          ; preds = %land.lhs.true.8
  %17 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx11, align 1, !tbaa !15
  %conv12 = zext i8 %18 to i32
  %19 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !15
  %conv13 = zext i8 %19 to i32
  %sub14 = sub nsw i32 %conv12, %conv13
  store i32 %sub14, i32* %__result, align 4, !tbaa !8
  %20 = load i64, i64* %__s2_len, align 8, !tbaa !14
  %cmp15 = icmp ugt i64 %20, 1
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.35

land.lhs.true.17:                                 ; preds = %if.then
  %21 = load i32, i32* %__result, align 4, !tbaa !8
  %cmp18 = icmp eq i32 %21, 0
  br i1 %cmp18, label %if.then.20, label %if.end.35

if.then.20:                                       ; preds = %land.lhs.true.17
  %22 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx21, align 1, !tbaa !15
  %conv22 = zext i8 %23 to i32
  %24 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !15
  %conv23 = zext i8 %24 to i32
  %sub24 = sub nsw i32 %conv22, %conv23
  store i32 %sub24, i32* %__result, align 4, !tbaa !8
  %25 = load i64, i64* %__s2_len, align 8, !tbaa !14
  %cmp25 = icmp ugt i64 %25, 2
  br i1 %cmp25, label %land.lhs.true.27, label %if.end

land.lhs.true.27:                                 ; preds = %if.then.20
  %26 = load i32, i32* %__result, align 4, !tbaa !8
  %cmp28 = icmp eq i32 %26, 0
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %land.lhs.true.27
  %27 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %27, i64 3
  %28 = load i8, i8* %arrayidx31, align 1, !tbaa !15
  %conv32 = zext i8 %28 to i32
  %29 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !15
  %conv33 = zext i8 %29 to i32
  %sub34 = sub nsw i32 %conv32, %conv33
  store i32 %sub34, i32* %__result, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then.30, %land.lhs.true.27, %if.then.20
  br label %if.end.35

if.end.35:                                        ; preds = %if.end, %land.lhs.true.17, %if.then
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true.8, %cond.true
  %30 = load i32, i32* %__result, align 4, !tbaa !8
  store i32 %30, i32* %tmp37, !tbaa !8
  %31 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %tmp37, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.1, %land.lhs.true
  %34 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call38 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.36
  %cond = phi i32 [ %33, %if.end.36 ], [ %call38, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !8
  %35 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %tmp, !tbaa !8
  %cmp39 = icmp eq i32 %37, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %cond.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %cond.end, %entry
  %38 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %p_ctx, align 8, !tbaa !1
  %profiledir_len = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %38, i32 0, i32 25
  %39 = load i32, i32* %profiledir_len, align 4, !tbaa !16
  %cmp43 = icmp sgt i32 %39, 0
  br i1 %cmp43, label %if.then.45, label %if.end.56

if.then.45:                                       ; preds = %if.end.42
  %40 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %41 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %p_ctx, align 8, !tbaa !1
  %profiledir46 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %41, i32 0, i32 24
  %42 = load i8*, i8** %profiledir46, align 8, !tbaa !11
  %43 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %p_ctx, align 8, !tbaa !1
  %profiledir_len47 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %43, i32 0, i32 25
  %44 = load i32, i32* %profiledir_len47, align 4, !tbaa !16
  %conv48 = sext i32 %44 to i64
  %call49 = call i32 @strncmp(i8* %40, i8* %42, i64 %conv48) #5
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.45
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.45
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %47 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %non_gc_memory54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory54, align 8, !tbaa !5
  %50 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %p_ctx, align 8, !tbaa !1
  %profiledir55 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %50, i32 0, i32 24
  %51 = load i8*, i8** %profiledir55, align 8, !tbaa !11
  call void %47(%struct.gs_memory_s* %49, i8* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #7
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.53, %if.end.42
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %non_gc_memory57 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory57, align 8, !tbaa !5
  %procs58 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs58, i32 0, i32 7
  %54 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !18
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %non_gc_memory59 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 3
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory59, align 8, !tbaa !5
  %57 = load i32, i32* %dir_namelen.addr, align 4, !tbaa !8
  %add = add nsw i32 %57, 1
  %call60 = call i8* %54(%struct.gs_memory_s* %56, i32 %add, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #7
  store i8* %call60, i8** %result, align 8, !tbaa !1
  %58 = load i8*, i8** %result, align 8, !tbaa !1
  %cmp61 = icmp ne i8* %58, null
  br i1 %cmp61, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.end.56
  %59 = load i8*, i8** %result, align 8, !tbaa !1
  %60 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call64 = call i8* @strcpy(i8* %59, i8* %60) #6
  %61 = load i8*, i8** %result, align 8, !tbaa !1
  %62 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %p_ctx, align 8, !tbaa !1
  %profiledir65 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %62, i32 0, i32 24
  store i8* %61, i8** %profiledir65, align 8, !tbaa !11
  %63 = load i32, i32* %dir_namelen.addr, align 4, !tbaa !8
  %64 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %p_ctx, align 8, !tbaa !1
  %profiledir_len66 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %64, i32 0, i32 25
  store i32 %63, i32* %profiledir_len66, align 4, !tbaa !16
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %if.end.56
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.67, %if.then.52, %if.then.41
  %65 = bitcast %struct.gs_lib_ctx_s** %p_ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i8** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_lib_ctx_init(%struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pio = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %pio to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.gs_lib_ctx_s* null, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_memory_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** @mem_err_print, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 2
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !10
  %tobool = icmp ne %struct.gs_lib_ctx_s* %4, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %6 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !19
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %6(%struct.gs_memory_s* %7, i32 216, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #7
  %8 = bitcast i8* %call to %struct.gs_lib_ctx_s*
  store %struct.gs_lib_ctx_s* %8, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %9 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gs_lib_ctx_s* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end.2
  %10 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %11 = bitcast %struct.gs_lib_ctx_s* %10 to i8*
  %call6 = call i8* @memset(i8* %11, i32 0, i64 216) #6
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %13, i32 0, i32 0
  store %struct.gs_memory_s* %12, %struct.gs_memory_s** %memory, align 8, !tbaa !20
  %14 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %fstdin = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %14, i32 0, i32 1
  %15 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %fstdout = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %15, i32 0, i32 2
  %16 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %fstderr = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %16, i32 0, i32 3
  call void @gs_lib_ctx_get_real_stdio(%struct._IO_FILE** %fstdin, %struct._IO_FILE** %fstdout, %struct._IO_FILE** %fstderr) #7
  %17 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %stdin_is_interactive = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %17, i32 0, i32 7
  store i32 1, i32* %stdin_is_interactive, align 4, !tbaa !21
  %18 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %gs_next_id = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %18, i32 0, i32 14
  store i64 5, i64* %gs_next_id, align 8, !tbaa !22
  %19 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 2
  store %struct.gs_lib_ctx_s* %19, %struct.gs_lib_ctx_s** %gs_lib_ctx7, align 8, !tbaa !10
  %21 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %profiledir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %21, i32 0, i32 24
  store i8* null, i8** %profiledir, align 8, !tbaa !11
  %22 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %profiledir_len = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %22, i32 0, i32 25
  store i32 0, i32* %profiledir_len, align 4, !tbaa !16
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call8 = call i64 @strlen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #5
  %conv = trunc i64 %call8 to i32
  call void @gs_lib_ctx_set_icc_directory(%struct.gs_memory_s* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %conv) #7
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call9 = call i32 @gscms_create(%struct.gs_memory_s* %24) #7
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.5
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %28 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %29 = bitcast %struct.gs_lib_ctx_s* %28 to i8*
  call void %26(%struct.gs_memory_s* %27, i8* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #7
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 2
  store %struct.gs_lib_ctx_s* null, %struct.gs_lib_ctx_s** %gs_lib_ctx13, align 8, !tbaa !10
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.5
  %31 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %real_time_0 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %31, i32 0, i32 21
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %real_time_0, i32 0, i32 0
  call void @gp_get_realtime(i64* %arraydecay) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.11, %if.then.4, %if.then.1, %if.then
  %32 = bitcast %struct.gs_lib_ctx_s** %pio to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal void @gs_lib_ctx_get_real_stdio(%struct._IO_FILE** %in, %struct._IO_FILE** %out, %struct._IO_FILE** %err) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE**, align 8
  %out.addr = alloca %struct._IO_FILE**, align 8
  %err.addr = alloca %struct._IO_FILE**, align 8
  store %struct._IO_FILE** %in, %struct._IO_FILE*** %in.addr, align 8, !tbaa !1
  store %struct._IO_FILE** %out, %struct._IO_FILE*** %out.addr, align 8, !tbaa !1
  store %struct._IO_FILE** %err, %struct._IO_FILE*** %err.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !1
  %1 = load %struct._IO_FILE**, %struct._IO_FILE*** %in.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %1, align 8, !tbaa !1
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %3 = load %struct._IO_FILE**, %struct._IO_FILE*** %out.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %2, %struct._IO_FILE** %3, align 8, !tbaa !1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %5 = load %struct._IO_FILE**, %struct._IO_FILE*** %err.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %4, %struct._IO_FILE** %5, align 8, !tbaa !1
  ret void
}

declare i32 @gscms_create(%struct.gs_memory_s*) #4

declare void @gp_get_realtime(i64*) #4

; Function Attrs: nounwind uwtable
define void @gs_lib_ctx_fin(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_memory_s* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 2
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !10
  %tobool1 = icmp ne %struct.gs_lib_ctx_s* %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gscms_destroy(%struct.gs_memory_s* %4) #7
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %thread_safe_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 4
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %thread_safe_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 4
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory2, align 8, !tbaa !23
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 2
  %11 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx3, align 8, !tbaa !10
  %profiledir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %11, i32 0, i32 24
  %12 = load i8*, i8** %profiledir, align 8, !tbaa !11
  call void %7(%struct.gs_memory_s* %9, i8* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #7
  store %struct.gs_memory_s* null, %struct.gs_memory_s** @mem_err_print, align 8, !tbaa !1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 2
  %14 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx4, align 8, !tbaa !10
  store %struct.gs_lib_ctx_s* %14, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @remove_ctx_pointers(%struct.gs_memory_s* %15) #7
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %thread_safe_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 4
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory5, align 8, !tbaa !23
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object7, align 8, !tbaa !17
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %thread_safe_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 4
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory8, align 8, !tbaa !23
  %21 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %22 = bitcast %struct.gs_lib_ctx_s* %21 to i8*
  call void %18(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %23 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @gscms_destroy(%struct.gs_memory_s*) #4

; Function Attrs: nounwind uwtable
define internal void @remove_ctx_pointers(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 2
  store %struct.gs_lib_ctx_s* null, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !10
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 0
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !24
  %tobool = icmp ne %struct.gs_memory_s* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 0
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory1, align 8, !tbaa !24
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_memory_s* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 0
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory2, align 8, !tbaa !24
  call void @remove_ctx_pointers(%struct.gs_memory_s* %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !5
  %tobool3 = icmp ne %struct.gs_memory_s* %9, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.9

land.lhs.true.4:                                  ; preds = %if.end
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !5
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.gs_memory_s* %11, %12
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %land.lhs.true.4
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory8, align 8, !tbaa !5
  call void @remove_ctx_pointers(%struct.gs_memory_s* %14) #7
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %land.lhs.true.4, %if.end
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %thread_safe_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 4
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory, align 8, !tbaa !23
  %tobool10 = icmp ne %struct.gs_memory_s* %16, null
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.16

land.lhs.true.11:                                 ; preds = %if.end.9
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %thread_safe_memory12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 4
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory12, align 8, !tbaa !23
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp13 = icmp ne %struct.gs_memory_s* %18, %19
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %land.lhs.true.11
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %thread_safe_memory15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 4
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory15, align 8, !tbaa !23
  call void @remove_ctx_pointers(%struct.gs_memory_s* %21) #7
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %land.lhs.true.11, %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.gs_lib_ctx_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_memory_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_lib_ctx_s* null, %struct.gs_lib_ctx_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 2
  %2 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !10
  store %struct.gs_lib_ctx_s* %2, %struct.gs_lib_ctx_s** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %retval
  ret %struct.gs_lib_ctx_s* %3
}

; Function Attrs: nounwind uwtable
define i8* @gs_lib_ctx_get_cms_context(%struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_memory_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 2
  %2 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !10
  %cms_context = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %2, i32 0, i32 26
  %3 = load i8*, i8** %cms_context, align 8, !tbaa !25
  store i8* %3, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define void @gs_lib_ctx_set_cms_context(%struct.gs_memory_s* %mem, i8* %cms_context) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cms_context.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cms_context, i8** %cms_context.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_memory_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %cms_context.addr, align 8, !tbaa !1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 2
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !10
  %cms_context1 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %3, i32 0, i32 26
  store i8* %1, i8** %cms_context1, align 8, !tbaa !25
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @outwrite(%struct.gs_memory_s* %mem, i8* %str, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %fout = alloca %struct._IO_FILE*, align 8
  %pio = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !8
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct._IO_FILE** %fout to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_lib_ctx_s** %pio to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 2
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !10
  store %struct.gs_lib_ctx_s* %4, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %5 = load i32, i32* %len.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %stdout_is_redirected = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %6, i32 0, i32 5
  %7 = load i32, i32* %stdout_is_redirected, align 4, !tbaa !26
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %stdout_to_stderr = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 6
  %9 = load i32, i32* %stdout_to_stderr, align 4, !tbaa !27
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.then.1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %12 = load i32, i32* %len.addr, align 4, !tbaa !8
  %call = call i32 @errwrite(%struct.gs_memory_s* %10, i8* %11, i32 %12) #7
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.then.1
  %13 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %fstdout2 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %13, i32 0, i32 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout2, align 8, !tbaa !28
  store %struct._IO_FILE* %14, %struct._IO_FILE** %fout, align 8, !tbaa !1
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %15 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %stdout_fn = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %15, i32 0, i32 11
  %16 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %stdout_fn, align 8, !tbaa !29
  %tobool5 = icmp ne i32 (i8*, i8*, i32)* %16, null
  br i1 %tobool5, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.else
  %17 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %stdout_fn7 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %17, i32 0, i32 11
  %18 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %stdout_fn7, align 8, !tbaa !29
  %19 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %caller_handle = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %19, i32 0, i32 8
  %20 = load i8*, i8** %caller_handle, align 8, !tbaa !30
  %21 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %22 = load i32, i32* %len.addr, align 4, !tbaa !8
  %call8 = call i32 %18(i8* %20, i8* %21, i32 %22) #7
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.9:                                        ; preds = %if.else
  %23 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %pio, align 8, !tbaa !1
  %fstdout = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %23, i32 0, i32 2
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout, align 8, !tbaa !31
  store %struct._IO_FILE* %24, %struct._IO_FILE** %fout, align 8, !tbaa !1
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end.4
  %25 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %26 = load i32, i32* %len.addr, align 4, !tbaa !8
  %conv = sext i32 %26 to i64
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8, !tbaa !1
  %call12 = call i64 @fwrite(i8* %25, i64 1, i64 %conv, %struct._IO_FILE* %27) #7
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, i32* %code, align 4, !tbaa !8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8, !tbaa !1
  %call14 = call i32 @fflush(%struct._IO_FILE* %28) #7
  %29 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.6, %if.then.3, %if.then
  %30 = bitcast %struct.gs_lib_ctx_s** %pio to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct._IO_FILE** %fout to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @errwrite(%struct.gs_memory_s* %mem, i8* %str, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %ctx = alloca %struct.gs_lib_ctx_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !8
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %len.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_memory_s* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** @mem_err_print, align 8, !tbaa !1
  store %struct.gs_memory_s* %4, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gs_memory_s* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 2
  %7 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !10
  store %struct.gs_lib_ctx_s* %7, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.gs_lib_ctx_s* %8, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.6
  %9 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %stderr_fn = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %9, i32 0, i32 12
  %10 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %stderr_fn, align 8, !tbaa !32
  %tobool = icmp ne i32 (i8*, i8*, i32)* %10, null
  br i1 %tobool, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.9
  %11 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %stderr_fn11 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %11, i32 0, i32 12
  %12 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %stderr_fn11, align 8, !tbaa !32
  %13 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %caller_handle = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %13, i32 0, i32 8
  %14 = load i8*, i8** %caller_handle, align 8, !tbaa !30
  %15 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %16 = load i32, i32* %len.addr, align 4, !tbaa !8
  %call = call i32 %12(i8* %14, i8* %15, i32 %16) #7
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.9
  %17 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %18 = load i32, i32* %len.addr, align 4, !tbaa !8
  %conv = sext i32 %18 to i64
  %19 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %fstderr = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %19, i32 0, i32 3
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fstderr, align 8, !tbaa !33
  %call13 = call i64 @fwrite(i8* %17, i64 1, i64 %conv, %struct._IO_FILE* %20) #7
  %conv14 = trunc i64 %call13 to i32
  store i32 %conv14, i32* %code, align 4, !tbaa !8
  %21 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %ctx, align 8, !tbaa !1
  %fstderr15 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %21, i32 0, i32 3
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fstderr15, align 8, !tbaa !33
  %call16 = call i32 @fflush(%struct._IO_FILE* %22) #7
  %23 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.10, %if.then.8, %if.then.4, %if.then
  %24 = bitcast %struct.gs_lib_ctx_s** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

declare i32 @fflush(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define i32 @errwrite_nomem(i8* %str, i32 %len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !8
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** @mem_err_print, align 8, !tbaa !1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %2 = load i32, i32* %len.addr, align 4, !tbaa !8
  %call = call i32 @errwrite(%struct.gs_memory_s* %0, i8* %1, i32 %2) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @outflush(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 2
  %1 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !10
  %stdout_is_redirected = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %1, i32 0, i32 5
  %2 = load i32, i32* %stdout_is_redirected, align 4, !tbaa !26
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else.11

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 2
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx1, align 8, !tbaa !10
  %stdout_to_stderr = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 6
  %5 = load i32, i32* %stdout_to_stderr, align 4, !tbaa !27
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 2
  %7 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx4, align 8, !tbaa !10
  %stderr_fn = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %7, i32 0, i32 12
  %8 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %stderr_fn, align 8, !tbaa !32
  %tobool5 = icmp ne i32 (i8*, i8*, i32)* %8, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then.3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 2
  %10 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx7, align 8, !tbaa !10
  %fstderr = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %10, i32 0, i32 3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fstderr, align 8, !tbaa !33
  %call = call i32 @fflush(%struct._IO_FILE* %11) #7
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.3
  br label %if.end.10

if.else:                                          ; preds = %if.then
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 2
  %13 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx8, align 8, !tbaa !10
  %fstdout2 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %13, i32 0, i32 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout2, align 8, !tbaa !28
  %call9 = call i32 @fflush(%struct._IO_FILE* %14) #7
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  br label %if.end.18

if.else.11:                                       ; preds = %entry
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 2
  %16 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx12, align 8, !tbaa !10
  %stdout_fn = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %16, i32 0, i32 11
  %17 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %stdout_fn, align 8, !tbaa !29
  %tobool13 = icmp ne i32 (i8*, i8*, i32)* %17, null
  br i1 %tobool13, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %if.else.11
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 2
  %19 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx15, align 8, !tbaa !10
  %fstdout = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %19, i32 0, i32 2
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout, align 8, !tbaa !31
  %call16 = call i32 @fflush(%struct._IO_FILE* %20) #7
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.else.11
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.10
  ret void
}

; Function Attrs: nounwind uwtable
define void @errflush_nomem() #0 {
entry:
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** @mem_err_print, align 8, !tbaa !1
  call void @errflush(%struct.gs_memory_s* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @errflush(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 2
  %1 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !10
  %stderr_fn = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %1, i32 0, i32 12
  %2 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %stderr_fn, align 8, !tbaa !32
  %tobool = icmp ne i32 (i8*, i8*, i32)* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 2
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx1, align 8, !tbaa !10
  %fstderr = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fstderr, align 8, !tbaa !33
  %call = call i32 @fflush(%struct._IO_FILE* %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind readonly }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 200}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = !{!6, !2, i64 192}
!11 = !{!12, !2, i64 184}
!12 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!13 = !{!"long", !3, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!3, !3, i64 0}
!16 = !{!12, !9, i64 192}
!17 = !{!6, !2, i64 24}
!18 = !{!6, !2, i64 64}
!19 = !{!6, !2, i64 8}
!20 = !{!12, !2, i64 0}
!21 = !{!12, !9, i64 48}
!22 = !{!12, !13, i64 104}
!23 = !{!6, !2, i64 208}
!24 = !{!6, !2, i64 0}
!25 = !{!12, !2, i64 200}
!26 = !{!12, !9, i64 40}
!27 = !{!12, !9, i64 44}
!28 = !{!12, !2, i64 32}
!29 = !{!12, !2, i64 80}
!30 = !{!12, !2, i64 56}
!31 = !{!12, !2, i64 16}
!32 = !{!12, !2, i64 88}
!33 = !{!12, !2, i64 24}
