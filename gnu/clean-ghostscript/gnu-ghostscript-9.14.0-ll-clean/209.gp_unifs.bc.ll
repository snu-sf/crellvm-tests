; ModuleID = './gp_unifs.bc'
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.file_enum_s = type { %struct.__dirstream*, i8*, i8*, i32, %struct.dirstack_s*, i32, i32, i32, %struct.gs_memory_s* }
%struct.__dirstream = type opaque
%struct.dirstack_s = type { %struct.dirstack_s*, %struct.__dirstream* }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.string_match_params_s = type { i32, i32, i32, i32, i32 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@gp_scratch_file_name_prefix = constant [4 x i8] c"gs_\00", align 1
@gp_null_file_name = constant [10 x i8] c"/dev/null\00", align 1
@gp_current_directory_name = constant [2 x i8] c".\00", align 1
@st_file_enum = internal constant %struct.gs_memory_struct_type_s { i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @file_enum_reloc_ptrs to i8*) }, align 8
@.str = private unnamed_addr constant [19 x i8] c"gp_enumerate_files\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"gp_enumerate_files(pattern)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"gp_enumerate_files(work)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@st_dirstack = internal constant %struct.gs_memory_struct_type_s { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @dirstack_reloc_ptrs to i8*) }, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"gp_enumerate_files(pushdir)\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"gp_enumerate_close(work)\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"gp_enumerate_files_close(pattern)\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"gp_enumerate_files_close\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"XXXXXX\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"**** Could not open temporary file %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"file_enum\00", align 1
@file_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @file_enum_enum_ptrs, i32 0, i32 0) }, align 8
@file_enum_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 16 }, %struct.gc_ptr_element_s { i16 0, i16 32 }], align 2
@.str.15 = private unnamed_addr constant [27 x i8] c"gp_enumerate_files(popdir)\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"dirstack\00", align 1
@dirstack_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @dirstack_enum_ptrs, i32 0, i32 0) }, align 8
@dirstack_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] zeroinitializer, align 2

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @gp_open_scratch_file(%struct.gs_memory_s* %mem, i8* %prefix, i8* %fname, i8* %mode) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %prefix.addr = alloca i8*, align 8
  %fname.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %prefix, i8** %prefix.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %prefix.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %mode.addr, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @gp_open_scratch_file_generic(%struct.gs_memory_s* %0, i8* %1, i8* %2, i8* %3, i32 0) #6
  ret %struct._IO_FILE* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE* @gp_open_scratch_file_generic(%struct.gs_memory_s* %mem, i8* %prefix, i8* %fname, i8* %mode, i32 %b64) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %prefix.addr = alloca i8*, align 8
  %fname.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %b64.addr = alloca i32, align 4
  %prefix_length = alloca i32, align 4
  %len = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %prefix, i8** %prefix.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !1
  store i32 %b64, i32* %b64.addr, align 4, !tbaa !5
  %0 = bitcast i32* %prefix_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8*, i8** %prefix.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %1) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %prefix_length, align 4, !tbaa !5
  %2 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %prefix_length, align 4, !tbaa !5
  %sub = sub nsw i32 4096, %3
  %sub1 = sub nsw i32 %sub, 8
  store i32 %sub1, i32* %len, align 4, !tbaa !5
  %4 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i8*, i8** %prefix.addr, align 8, !tbaa !1
  %6 = load i32, i32* %prefix_length, align 4, !tbaa !5
  %call2 = call i32 @gp_file_name_is_absolute(i8* %5, i32 %6) #6
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  store i8 0, i8* %7, align 1, !tbaa !7
  br label %if.end.19

if.else:                                          ; preds = %entry
  %8 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call3 = call i32 @gp_gettmpdir(i8* %8, i32* %len) #6
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %9 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call6 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #8
  br label %if.end.18

if.else.7:                                        ; preds = %if.else
  %10 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call8 = call i64 @strlen(i8* %10) #7
  %cmp9 = icmp ne i64 %call8, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else.7
  %11 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call11 = call i64 @strlen(i8* %11) #7
  %sub12 = sub i64 %call11, 1
  %12 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %sub12
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp ne i32 %conv13, 47
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %land.lhs.true
  %14 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call17 = call i8* @strcat(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #8
  br label %if.end

if.end:                                           ; preds = %if.then.16, %land.lhs.true, %if.else.7
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then.5
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then
  %15 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call20 = call i64 @strlen(i8* %15) #7
  %16 = load i32, i32* %prefix_length, align 4, !tbaa !5
  %conv21 = sext i32 %16 to i64
  %add = add i64 %call20, %conv21
  %add22 = add i64 %add, 8
  %cmp23 = icmp uge i64 %add22, 4096
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.19
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.19
  %17 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %prefix.addr, align 8, !tbaa !1
  %call27 = call i8* @strcat(i8* %17, i8* %18) #8
  %19 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !7
  %conv28 = sext i8 %20 to i32
  %cmp29 = icmp ne i32 %conv28, 0
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.40

land.lhs.true.31:                                 ; preds = %if.end.26
  %21 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call32 = call i64 @strlen(i8* %21) #7
  %sub33 = sub i64 %call32, 1
  %22 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %22, i64 %sub33
  %23 = load i8, i8* %arrayidx34, align 1, !tbaa !7
  %conv35 = sext i8 %23 to i32
  %cmp36 = icmp eq i32 %conv35, 88
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %land.lhs.true.31
  %24 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call39 = call i8* @strcat(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %land.lhs.true.31, %if.end.26
  %25 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call41 = call i8* @strcat(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)) #8
  %26 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call42 = call i8* @mktemp(i8* %26) #8
  %27 = load i32, i32* %b64.addr, align 4, !tbaa !5
  %tobool43 = icmp ne i32 %27, 0
  %cond = select i1 %tobool43, %struct._IO_FILE* (i8*, i8*)* @gp_fopentemp, %struct._IO_FILE* (i8*, i8*)* @gp_fopentemp_64
  %28 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %mode.addr, align 8, !tbaa !1
  %call44 = call %struct._IO_FILE* %cond(i8* %28, i8* %29) #6
  store %struct._IO_FILE* %call44, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %cmp45 = icmp eq %struct._IO_FILE* %30, null
  br i1 %cmp45, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %if.end.40
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call48 = call i8* @gs_program_name() #6
  %call49 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %31, i8* %call48, i64 %call49) #6
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call50 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0), i8* %33) #6
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.47, %if.end.40
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  store %struct._IO_FILE* %34, %struct._IO_FILE** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.51, %if.then.25
  %35 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %prefix_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %38
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @gp_fopen(i8* %fname, i8* %mode) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %mode.addr, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @fopen64(i8* %0, i8* %1) #6
  ret %struct._IO_FILE* %call
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gp_setmode_binary(%struct._IO_FILE* %pfile, i32 %mode) #0 {
entry:
  %pfile.addr = alloca %struct._IO_FILE*, align 8
  %mode.addr = alloca i32, align 4
  store %struct._IO_FILE* %pfile, %struct._IO_FILE** %pfile.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct.file_enum_s* @gp_enumerate_files_init(i8* %pat, i32 %patlen, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.file_enum_s*, align 8
  %pat.addr = alloca i8*, align 8
  %patlen.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pfen = alloca %struct.file_enum_s*, align 8
  %p = alloca i8*, align 8
  %work = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %p1 = alloca i8*, align 8
  store i8* %pat, i8** %pat.addr, align 8, !tbaa !1
  store i32 %patlen, i32* %patlen.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.file_enum_s** %pfen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i8** %work to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i32, i32* %patlen.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %3, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.file_enum_s* null, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end:                                           ; preds = %entry
  %4 = bitcast i8** %p1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i8*, i8** %pat.addr, align 8, !tbaa !1
  store i8* %5, i8** %p1, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i8*, i8** %p1, align 8, !tbaa !1
  %7 = load i8*, i8** %pat.addr, align 8, !tbaa !1
  %8 = load i32, i32* %patlen.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %cmp1 = icmp ult i8* %6, %add.ptr
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %p1, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !7
  %conv = sext i8 %10 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  store %struct.file_enum_s* null, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %11 = load i8*, i8** %p1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.4
  %12 = bitcast i8** %p1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.83 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %14 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !8
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %14(%struct.gs_memory_s* %15, %struct.gs_memory_struct_type_s* @st_file_enum, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #6
  %16 = bitcast i8* %call to %struct.file_enum_s*
  store %struct.file_enum_s* %16, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %17 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.file_enum_s* %17, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %cleanup.cont
  store %struct.file_enum_s* null, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end.9:                                         ; preds = %cleanup.cont
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %19, i32 0, i32 8
  store %struct.gs_memory_s* %18, %struct.gs_memory_s** %memory, align 8, !tbaa !11
  %20 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %dstack = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %20, i32 0, i32 4
  store %struct.dirstack_s* null, %struct.dirstack_s** %dstack, align 8, !tbaa !13
  %21 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %first_time = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %21, i32 0, i32 7
  store i32 1, i32* %first_time, align 4, !tbaa !14
  %22 = load i32, i32* %patlen.addr, align 4, !tbaa !5
  %23 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %patlen10 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %23, i32 0, i32 5
  store i32 %22, i32* %patlen10, align 4, !tbaa !15
  %24 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %work11 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %24, i32 0, i32 2
  store i8* null, i8** %work11, align 8, !tbaa !16
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 7
  %26 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !17
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %28 = load i32, i32* %patlen.addr, align 4, !tbaa !5
  %add = add i32 %28, 1
  %call13 = call i8* %26(%struct.gs_memory_s* %27, i32 %add, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #6
  %29 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %29, i32 0, i32 1
  store i8* %call13, i8** %pattern, align 8, !tbaa !18
  %30 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %pattern14 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %30, i32 0, i32 1
  %31 = load i8*, i8** %pattern14, align 8, !tbaa !18
  %cmp15 = icmp eq i8* %31, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.9
  store %struct.file_enum_s* null, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end.18:                                        ; preds = %if.end.9
  %32 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %pattern19 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %32, i32 0, i32 1
  %33 = load i8*, i8** %pattern19, align 8, !tbaa !18
  %34 = load i8*, i8** %pat.addr, align 8, !tbaa !1
  %35 = load i32, i32* %patlen.addr, align 4, !tbaa !5
  %conv20 = zext i32 %35 to i64
  %call21 = call i8* @memcpy(i8* %33, i8* %34, i64 %conv20) #8
  %36 = load i32, i32* %patlen.addr, align 4, !tbaa !5
  %idxprom = zext i32 %36 to i64
  %37 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %pattern22 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %37, i32 0, i32 1
  %38 = load i8*, i8** %pattern22, align 8, !tbaa !18
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %alloc_bytes24 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs23, i32 0, i32 7
  %40 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes24, align 8, !tbaa !17
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call25 = call i8* %40(%struct.gs_memory_s* %41, i32 4097, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)) #6
  store i8* %call25, i8** %work, align 8, !tbaa !1
  %42 = load i8*, i8** %work, align 8, !tbaa !1
  %cmp26 = icmp eq i8* %42, null
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.18
  store %struct.file_enum_s* null, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end.29:                                        ; preds = %if.end.18
  %43 = load i8*, i8** %work, align 8, !tbaa !1
  %44 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %work30 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %44, i32 0, i32 2
  store i8* %43, i8** %work30, align 8, !tbaa !16
  %45 = load i8*, i8** %work, align 8, !tbaa !1
  store i8* %45, i8** %p, align 8, !tbaa !1
  %46 = load i8*, i8** %p, align 8, !tbaa !1
  %47 = load i8*, i8** %pat.addr, align 8, !tbaa !1
  %48 = load i32, i32* %patlen.addr, align 4, !tbaa !5
  %conv31 = zext i32 %48 to i64
  %call32 = call i8* @memcpy(i8* %46, i8* %47, i64 %conv31) #8
  %49 = load i32, i32* %patlen.addr, align 4, !tbaa !5
  %50 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext33 = zext i32 %49 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %50, i64 %idx.ext33
  store i8* %add.ptr34, i8** %p, align 8, !tbaa !1
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %51, align 1, !tbaa !7
  %52 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %work35 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %52, i32 0, i32 2
  %53 = load i8*, i8** %work35, align 8, !tbaa !16
  store i8* %53, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.29
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !7
  %conv36 = sext i8 %55 to i32
  %cmp37 = icmp eq i32 %conv36, 42
  br i1 %cmp37, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !7
  %conv39 = sext i8 %57 to i32
  %cmp40 = icmp eq i32 %conv39, 63
  br i1 %cmp40, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %59 = load i8, i8* %58, align 1, !tbaa !7
  %conv42 = sext i8 %59 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %60 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp43, %lor.rhs ]
  %lnot = xor i1 %60, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr45, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %lor.end
  br label %while.cond.46

while.cond.46:                                    ; preds = %while.body.56, %while.end
  %62 = load i8*, i8** %p, align 8, !tbaa !1
  %63 = load i8, i8* %62, align 1, !tbaa !7
  %conv47 = sext i8 %63 to i32
  %cmp48 = icmp eq i32 %conv47, 47
  br i1 %cmp48, label %lor.end.54, label %lor.rhs.50

lor.rhs.50:                                       ; preds = %while.cond.46
  %64 = load i8*, i8** %p, align 8, !tbaa !1
  %65 = load i8, i8* %64, align 1, !tbaa !7
  %conv51 = sext i8 %65 to i32
  %cmp52 = icmp eq i32 %conv51, 0
  br label %lor.end.54

lor.end.54:                                       ; preds = %lor.rhs.50, %while.cond.46
  %66 = phi i1 [ true, %while.cond.46 ], [ %cmp52, %lor.rhs.50 ]
  %lnot55 = xor i1 %66, true
  br i1 %lnot55, label %while.body.56, label %while.end.58

while.body.56:                                    ; preds = %lor.end.54
  %67 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr57 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr57, i8** %p, align 8, !tbaa !1
  br label %while.cond.46

while.end.58:                                     ; preds = %lor.end.54
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !7
  %conv59 = sext i8 %69 to i32
  %cmp60 = icmp eq i32 %conv59, 47
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %while.end.58
  %70 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %70, align 1, !tbaa !7
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %while.end.58
  %71 = load i8*, i8** %p, align 8, !tbaa !1
  %72 = load i8*, i8** %work, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %71 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %72 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv64 = trunc i64 %sub.ptr.sub to i32
  %73 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %pathead = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %73, i32 0, i32 6
  store i32 %conv64, i32* %pathead, align 4, !tbaa !19
  %74 = load i8*, i8** %work, align 8, !tbaa !1
  %75 = load i8*, i8** %p, align 8, !tbaa !1
  %76 = load i8*, i8** %work, align 8, !tbaa !1
  %sub.ptr.lhs.cast65 = ptrtoint i8* %75 to i64
  %sub.ptr.rhs.cast66 = ptrtoint i8* %76 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %conv68 = trunc i64 %sub.ptr.sub67 to i32
  %call69 = call i8* @rchr(i8* %74, i8 signext 47, i32 %conv68) #6
  store i8* %call69, i8** %p, align 8, !tbaa !1
  %77 = load i8*, i8** %p, align 8, !tbaa !1
  %tobool = icmp ne i8* %77, null
  br i1 %tobool, label %if.else, label %if.then.70

if.then.70:                                       ; preds = %if.end.63
  %78 = load i8*, i8** %work, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i8, i8* %78, i64 0
  store i8 0, i8* %arrayidx71, align 1, !tbaa !7
  %79 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %worklen = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %79, i32 0, i32 3
  store i32 0, i32* %worklen, align 4, !tbaa !20
  br label %if.end.82

if.else:                                          ; preds = %if.end.63
  %80 = load i8*, i8** %p, align 8, !tbaa !1
  %81 = load i8*, i8** %work, align 8, !tbaa !1
  %cmp72 = icmp eq i8* %80, %81
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.else
  %82 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr75 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr75, i8** %p, align 8, !tbaa !1
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.else
  %83 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %83, align 1, !tbaa !7
  %84 = load i8*, i8** %p, align 8, !tbaa !1
  %85 = load i8*, i8** %work, align 8, !tbaa !1
  %sub.ptr.lhs.cast77 = ptrtoint i8* %84 to i64
  %sub.ptr.rhs.cast78 = ptrtoint i8* %85 to i64
  %sub.ptr.sub79 = sub i64 %sub.ptr.lhs.cast77, %sub.ptr.rhs.cast78
  %conv80 = trunc i64 %sub.ptr.sub79 to i32
  %86 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  %worklen81 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %86, i32 0, i32 3
  store i32 %conv80, i32* %worklen81, align 4, !tbaa !20
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.76, %if.then.70
  %87 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen, align 8, !tbaa !1
  store %struct.file_enum_s* %87, %struct.file_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

cleanup.83:                                       ; preds = %if.end.82, %if.then.28, %if.then.17, %if.then.8, %cleanup, %if.then
  %88 = bitcast i8** %work to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = bitcast %struct.file_enum_s** %pfen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = load %struct.file_enum_s*, %struct.file_enum_s** %retval
  ret %struct.file_enum_s* %91
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i8* @rchr(i8* %str, i8 signext %ch, i32 %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %ch.addr = alloca i8, align 1
  %len.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i8 %ch, i8* %ch.addr, align 1, !tbaa !7
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %2 = load i32, i32* %len.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i8*, i8** %p, align 8, !tbaa !1
  %4 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %cmp = icmp ugt i8* %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %6 = load i8, i8* %incdec.ptr, align 1, !tbaa !7
  %conv = sext i8 %6 to i32
  %7 = load i8, i8* %ch.addr, align 1, !tbaa !7
  %conv1 = sext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %8, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %9 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define i32 @gp_enumerate_files_next(%struct.file_enum_s* %pfen, i8* %ptr, i32 %maxlen) #0 {
entry:
  %retval = alloca i32, align 4
  %pfen.addr = alloca %struct.file_enum_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %maxlen.addr = alloca i32, align 4
  %de = alloca %struct.dirent*, align 8
  %work = alloca i8*, align 8
  %worklen = alloca i32, align 4
  %pattern = alloca i8*, align 8
  %pathead = alloca i32, align 4
  %len = alloca i32, align 4
  %stbuf = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32
  %p = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp100 = alloca i32, align 4
  %__s1_len109 = alloca i64, align 8
  %__s2_len111 = alloca i64, align 8
  %tmp112 = alloca i32, align 4
  %__s1119 = alloca i8*, align 8
  %__result123 = alloca i32, align 4
  %tmp161 = alloca i32, align 4
  %dp = alloca %struct.__dirstream*, align 8
  %p253 = alloca i8*, align 8
  %d = alloca %struct.dirstack_s*, align 8
  store %struct.file_enum_s* %pfen, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %maxlen, i32* %maxlen.addr, align 4, !tbaa !5
  %0 = bitcast %struct.dirent** %de to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %work to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %work1 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %2, i32 0, i32 2
  %3 = load i8*, i8** %work1, align 8, !tbaa !16
  store i8* %3, i8** %work, align 8, !tbaa !1
  %4 = bitcast i32* %worklen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %worklen2 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %5, i32 0, i32 3
  %6 = load i32, i32* %worklen2, align 4, !tbaa !20
  store i32 %6, i32* %worklen, align 4, !tbaa !5
  %7 = bitcast i8** %pattern to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %pattern3 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %8, i32 0, i32 1
  %9 = load i8*, i8** %pattern3, align 8, !tbaa !18
  store i8* %9, i8** %pattern, align 8, !tbaa !1
  %10 = bitcast i32* %pathead to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %pathead4 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %11, i32 0, i32 6
  %12 = load i32, i32* %pathead4, align 4, !tbaa !19
  store i32 %12, i32* %pathead, align 4, !tbaa !5
  %13 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast %struct.stat* %stbuf to i8*
  call void @llvm.lifetime.start(i64 144, i8* %14) #2
  %15 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %first_time = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %15, i32 0, i32 7
  %16 = load i32, i32* %first_time, align 4, !tbaa !14
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %worklen, align 4, !tbaa !5
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #6
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %18 = load i8*, i8** %work, align 8, !tbaa !1
  %call5 = call %struct.__dirstream* @opendir(i8* %18) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.__dirstream* [ %call, %cond.true ], [ %call5, %cond.false ]
  %19 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %dirp = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %19, i32 0, i32 0
  store %struct.__dirstream* %cond, %struct.__dirstream** %dirp, align 8, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %cond.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %first_time6 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %20, i32 0, i32 7
  store i32 0, i32* %first_time6, align 4, !tbaa !14
  %21 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %dirp7 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %21, i32 0, i32 0
  %22 = load %struct.__dirstream*, %struct.__dirstream** %dirp7, align 8, !tbaa !21
  %cmp8 = icmp eq %struct.__dirstream* %22, null
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %do.end
  %23 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  call void @gp_enumerate_files_close(%struct.file_enum_s* %23) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.307

if.end:                                           ; preds = %do.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  br label %top

top:                                              ; preds = %cleanup.294, %if.then.214, %if.then.174, %if.then.169, %cleanup, %if.end.10
  %24 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %dirp11 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %24, i32 0, i32 0
  %25 = load %struct.__dirstream*, %struct.__dirstream** %dirp11, align 8, !tbaa !21
  %call12 = call %struct.dirent* @readdir64(%struct.__dirstream* %25) #6
  store %struct.dirent* %call12, %struct.dirent** %de, align 8, !tbaa !1
  %26 = load %struct.dirent*, %struct.dirent** %de, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.dirent* %26, null
  br i1 %cmp13, label %if.then.14, label %if.end.51

if.then.14:                                       ; preds = %top
  %27 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #2
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.body.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %28 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %dirp18 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %28, i32 0, i32 0
  %29 = load %struct.__dirstream*, %struct.__dirstream** %dirp18, align 8, !tbaa !21
  %call19 = call i32 @closedir(%struct.__dirstream* %29) #6
  %30 = load i8*, i8** %work, align 8, !tbaa !1
  %31 = load i32, i32* %worklen, align 4, !tbaa !5
  %call20 = call i8* @rchr(i8* %30, i8 signext 47, i32 %31) #6
  store i8* %call20, i8** %p, align 8, !tbaa !1
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp21 = icmp ne i8* %32, null
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.end.17
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %34 = load i8*, i8** %work, align 8, !tbaa !1
  %cmp23 = icmp eq i8* %33, %34
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.22
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.22
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %36, align 1, !tbaa !7
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %38 = load i8*, i8** %work, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %38 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %worklen, align 4, !tbaa !5
  br label %if.end.26

if.else:                                          ; preds = %do.end.17
  store i32 0, i32* %worklen, align 4, !tbaa !5
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.end.25
  %39 = load i32, i32* %pathead, align 4, !tbaa !5
  %40 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %patlen = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %40, i32 0, i32 5
  %41 = load i32, i32* %patlen, align 4, !tbaa !15
  %cmp27 = icmp ne i32 %39, %41
  br i1 %cmp27, label %if.then.29, label %if.end.40

if.then.29:                                       ; preds = %if.end.26
  %42 = load i8*, i8** %pattern, align 8, !tbaa !1
  %43 = load i32, i32* %pathead, align 4, !tbaa !5
  %call30 = call i8* @rchr(i8* %42, i8 signext 47, i32 %43) #6
  store i8* %call30, i8** %p, align 8, !tbaa !1
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp31 = icmp ne i8* %44, null
  br i1 %cmp31, label %if.then.33, label %if.else.38

if.then.33:                                       ; preds = %if.then.29
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %46 = load i8*, i8** %pattern, align 8, !tbaa !1
  %sub.ptr.lhs.cast34 = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast35 = ptrtoint i8* %46 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %conv37 = trunc i64 %sub.ptr.sub36 to i32
  store i32 %conv37, i32* %pathead, align 4, !tbaa !5
  br label %if.end.39

if.else.38:                                       ; preds = %if.then.29
  store i32 0, i32* %pathead, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.33
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.26
  %47 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %call41 = call i32 @popdir(%struct.file_enum_s* %47) #6
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %if.end.40
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  br label %do.cond.45

do.cond.45:                                       ; preds = %do.body.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.else.47:                                       ; preds = %if.end.40
  br label %do.body.48

do.body.48:                                       ; preds = %if.else.47
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.body.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  %48 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  call void @gp_enumerate_files_close(%struct.file_enum_s* %48) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.50, %do.end.46
  %49 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.307 [
    i32 4, label %top
  ]

if.end.51:                                        ; preds = %top
  %50 = load %struct.dirent*, %struct.dirent** %de, align 8, !tbaa !1
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %50, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call52 = call i64 @strlen(i8* %arraydecay) #7
  %conv53 = trunc i64 %call52 to i32
  store i32 %conv53, i32* %len, align 4, !tbaa !5
  %51 = load i32, i32* %len, align 4, !tbaa !5
  %cmp54 = icmp sle i32 %51, 2
  br i1 %cmp54, label %land.lhs.true, label %if.end.170

land.lhs.true:                                    ; preds = %if.end.51
  %52 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #2
  %53 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.3 to i64)), i64 1), label %land.lhs.true.56, label %cond.false.101

land.lhs.true.56:                                 ; preds = %land.lhs.true
  %call57 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #7
  store i64 %call57, i64* %__s2_len, align 8, !tbaa !22
  %54 = load i64, i64* %__s2_len, align 8, !tbaa !22
  %cmp58 = icmp ult i64 %54, 4
  br i1 %cmp58, label %cond.true.60, label %cond.false.101

cond.true.60:                                     ; preds = %land.lhs.true.56
  %55 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #2
  %56 = load %struct.dirent*, %struct.dirent** %de, align 8, !tbaa !1
  %d_name62 = getelementptr inbounds %struct.dirent, %struct.dirent* %56, i32 0, i32 4
  %arraydecay63 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name62, i32 0, i32 0
  store i8* %arraydecay63, i8** %__s1, align 8, !tbaa !1
  %57 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %58 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv65 = zext i8 %59 to i32
  %60 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), align 1, !tbaa !7
  %conv66 = zext i8 %60 to i32
  %sub = sub nsw i32 %conv65, %conv66
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %61 = load i64, i64* %__s2_len, align 8, !tbaa !22
  %cmp67 = icmp ugt i64 %61, 0
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.99

land.lhs.true.69:                                 ; preds = %cond.true.60
  %62 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp70 = icmp eq i32 %62, 0
  br i1 %cmp70, label %if.then.72, label %if.end.99

if.then.72:                                       ; preds = %land.lhs.true.69
  %63 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx73, align 1, !tbaa !7
  %conv74 = zext i8 %64 to i32
  %65 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i64 1), align 1, !tbaa !7
  %conv75 = zext i8 %65 to i32
  %sub76 = sub nsw i32 %conv74, %conv75
  store i32 %sub76, i32* %__result, align 4, !tbaa !5
  %66 = load i64, i64* %__s2_len, align 8, !tbaa !22
  %cmp77 = icmp ugt i64 %66, 1
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.98

land.lhs.true.79:                                 ; preds = %if.then.72
  %67 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp80 = icmp eq i32 %67, 0
  br i1 %cmp80, label %if.then.82, label %if.end.98

if.then.82:                                       ; preds = %land.lhs.true.79
  %68 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %68, i64 2
  %69 = load i8, i8* %arrayidx83, align 1, !tbaa !7
  %conv84 = zext i8 %69 to i32
  %70 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i64 2), align 1, !tbaa !7
  %conv85 = zext i8 %70 to i32
  %sub86 = sub nsw i32 %conv84, %conv85
  store i32 %sub86, i32* %__result, align 4, !tbaa !5
  %71 = load i64, i64* %__s2_len, align 8, !tbaa !22
  %cmp87 = icmp ugt i64 %71, 2
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.97

land.lhs.true.89:                                 ; preds = %if.then.82
  %72 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %72, 0
  br i1 %cmp90, label %if.then.92, label %if.end.97

if.then.92:                                       ; preds = %land.lhs.true.89
  %73 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i8, i8* %73, i64 3
  %74 = load i8, i8* %arrayidx93, align 1, !tbaa !7
  %conv94 = zext i8 %74 to i32
  %75 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i64 3), align 1, !tbaa !7
  %conv95 = zext i8 %75 to i32
  %sub96 = sub nsw i32 %conv94, %conv95
  store i32 %sub96, i32* %__result, align 4, !tbaa !5
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.92, %land.lhs.true.89, %if.then.82
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %land.lhs.true.79, %if.then.72
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %land.lhs.true.69, %cond.true.60
  %76 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %76, i32* %tmp100, !tbaa !5
  %77 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = load i32, i32* %tmp100, !tbaa !5
  br label %cond.end.105

cond.false.101:                                   ; preds = %land.lhs.true.56, %land.lhs.true
  %80 = load %struct.dirent*, %struct.dirent** %de, align 8, !tbaa !1
  %d_name102 = getelementptr inbounds %struct.dirent, %struct.dirent* %80, i32 0, i32 4
  %arraydecay103 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name102, i32 0, i32 0
  %call104 = call i32 @strcmp(i8* %arraydecay103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #8
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.101, %if.end.99
  %cond106 = phi i32 [ %79, %if.end.99 ], [ %call104, %cond.false.101 ]
  store i32 %cond106, i32* %tmp, !tbaa !5
  %81 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %83 = load i32, i32* %tmp, !tbaa !5
  %tobool107 = icmp ne i32 %83, 0
  br i1 %tobool107, label %lor.lhs.false, label %if.then.169

lor.lhs.false:                                    ; preds = %cond.end.105
  %84 = bitcast i64* %__s1_len109 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #2
  %85 = bitcast i64* %__s2_len111 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.4 to i64)), i64 1), label %land.lhs.true.113, label %cond.false.162

land.lhs.true.113:                                ; preds = %lor.lhs.false
  %call114 = call i64 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #7
  store i64 %call114, i64* %__s2_len111, align 8, !tbaa !22
  %86 = load i64, i64* %__s2_len111, align 8, !tbaa !22
  %cmp115 = icmp ult i64 %86, 4
  br i1 %cmp115, label %cond.true.117, label %cond.false.162

cond.true.117:                                    ; preds = %land.lhs.true.113
  %87 = bitcast i8** %__s1119 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #2
  %88 = load %struct.dirent*, %struct.dirent** %de, align 8, !tbaa !1
  %d_name120 = getelementptr inbounds %struct.dirent, %struct.dirent* %88, i32 0, i32 4
  %arraydecay121 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name120, i32 0, i32 0
  store i8* %arraydecay121, i8** %__s1119, align 8, !tbaa !1
  %89 = bitcast i32* %__result123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #2
  %90 = load i8*, i8** %__s1119, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx124, align 1, !tbaa !7
  %conv125 = zext i8 %91 to i32
  %92 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), align 1, !tbaa !7
  %conv126 = zext i8 %92 to i32
  %sub127 = sub nsw i32 %conv125, %conv126
  store i32 %sub127, i32* %__result123, align 4, !tbaa !5
  %93 = load i64, i64* %__s2_len111, align 8, !tbaa !22
  %cmp128 = icmp ugt i64 %93, 0
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.160

land.lhs.true.130:                                ; preds = %cond.true.117
  %94 = load i32, i32* %__result123, align 4, !tbaa !5
  %cmp131 = icmp eq i32 %94, 0
  br i1 %cmp131, label %if.then.133, label %if.end.160

if.then.133:                                      ; preds = %land.lhs.true.130
  %95 = load i8*, i8** %__s1119, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i8, i8* %95, i64 1
  %96 = load i8, i8* %arrayidx134, align 1, !tbaa !7
  %conv135 = zext i8 %96 to i32
  %97 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i64 1), align 1, !tbaa !7
  %conv136 = zext i8 %97 to i32
  %sub137 = sub nsw i32 %conv135, %conv136
  store i32 %sub137, i32* %__result123, align 4, !tbaa !5
  %98 = load i64, i64* %__s2_len111, align 8, !tbaa !22
  %cmp138 = icmp ugt i64 %98, 1
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.159

land.lhs.true.140:                                ; preds = %if.then.133
  %99 = load i32, i32* %__result123, align 4, !tbaa !5
  %cmp141 = icmp eq i32 %99, 0
  br i1 %cmp141, label %if.then.143, label %if.end.159

if.then.143:                                      ; preds = %land.lhs.true.140
  %100 = load i8*, i8** %__s1119, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i8, i8* %100, i64 2
  %101 = load i8, i8* %arrayidx144, align 1, !tbaa !7
  %conv145 = zext i8 %101 to i32
  %102 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i64 2), align 1, !tbaa !7
  %conv146 = zext i8 %102 to i32
  %sub147 = sub nsw i32 %conv145, %conv146
  store i32 %sub147, i32* %__result123, align 4, !tbaa !5
  %103 = load i64, i64* %__s2_len111, align 8, !tbaa !22
  %cmp148 = icmp ugt i64 %103, 2
  br i1 %cmp148, label %land.lhs.true.150, label %if.end.158

land.lhs.true.150:                                ; preds = %if.then.143
  %104 = load i32, i32* %__result123, align 4, !tbaa !5
  %cmp151 = icmp eq i32 %104, 0
  br i1 %cmp151, label %if.then.153, label %if.end.158

if.then.153:                                      ; preds = %land.lhs.true.150
  %105 = load i8*, i8** %__s1119, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds i8, i8* %105, i64 3
  %106 = load i8, i8* %arrayidx154, align 1, !tbaa !7
  %conv155 = zext i8 %106 to i32
  %107 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i64 3), align 1, !tbaa !7
  %conv156 = zext i8 %107 to i32
  %sub157 = sub nsw i32 %conv155, %conv156
  store i32 %sub157, i32* %__result123, align 4, !tbaa !5
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.153, %land.lhs.true.150, %if.then.143
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %land.lhs.true.140, %if.then.133
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %land.lhs.true.130, %cond.true.117
  %108 = load i32, i32* %__result123, align 4, !tbaa !5
  store i32 %108, i32* %tmp161, !tbaa !5
  %109 = bitcast i32* %__result123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i8** %__s1119 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #2
  %111 = load i32, i32* %tmp161, !tbaa !5
  br label %cond.end.166

cond.false.162:                                   ; preds = %land.lhs.true.113, %lor.lhs.false
  %112 = load %struct.dirent*, %struct.dirent** %de, align 8, !tbaa !1
  %d_name163 = getelementptr inbounds %struct.dirent, %struct.dirent* %112, i32 0, i32 4
  %arraydecay164 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name163, i32 0, i32 0
  %call165 = call i32 @strcmp(i8* %arraydecay164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #8
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.162, %if.end.160
  %cond167 = phi i32 [ %111, %if.end.160 ], [ %call165, %cond.false.162 ]
  store i32 %cond167, i32* %tmp112, !tbaa !5
  %113 = bitcast i64* %__s2_len111 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  %114 = bitcast i64* %__s1_len109 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #2
  %115 = load i32, i32* %tmp112, !tbaa !5
  %tobool168 = icmp ne i32 %115, 0
  br i1 %tobool168, label %if.end.170, label %if.then.169

if.then.169:                                      ; preds = %cond.end.166, %cond.end.105
  br label %top

if.end.170:                                       ; preds = %cond.end.166, %if.end.51
  %116 = load i32, i32* %len, align 4, !tbaa !5
  %117 = load i32, i32* %worklen, align 4, !tbaa !5
  %add = add nsw i32 %116, %117
  %add171 = add nsw i32 %add, 1
  %cmp172 = icmp sgt i32 %add171, 4096
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.end.170
  br label %top

if.end.175:                                       ; preds = %if.end.170
  %118 = load i32, i32* %worklen, align 4, !tbaa !5
  %cmp176 = icmp eq i32 %118, 0
  br i1 %cmp176, label %if.then.178, label %if.else.184

if.then.178:                                      ; preds = %if.end.175
  %119 = load i8*, i8** %work, align 8, !tbaa !1
  %120 = load %struct.dirent*, %struct.dirent** %de, align 8, !tbaa !1
  %d_name179 = getelementptr inbounds %struct.dirent, %struct.dirent* %120, i32 0, i32 4
  %arraydecay180 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name179, i32 0, i32 0
  %121 = load i32, i32* %len, align 4, !tbaa !5
  %add181 = add nsw i32 %121, 1
  %conv182 = sext i32 %add181 to i64
  %call183 = call i8* @memcpy(i8* %119, i8* %arraydecay180, i64 %conv182) #8
  br label %if.end.211

if.else.184:                                      ; preds = %if.end.175
  %122 = load i32, i32* %worklen, align 4, !tbaa !5
  %cmp185 = icmp eq i32 %122, 1
  br i1 %cmp185, label %land.lhs.true.187, label %if.else.199

land.lhs.true.187:                                ; preds = %if.else.184
  %123 = load i8*, i8** %work, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i8, i8* %123, i64 0
  %124 = load i8, i8* %arrayidx188, align 1, !tbaa !7
  %conv189 = sext i8 %124 to i32
  %cmp190 = icmp eq i32 %conv189, 47
  br i1 %cmp190, label %if.then.192, label %if.else.199

if.then.192:                                      ; preds = %land.lhs.true.187
  %125 = load i8*, i8** %work, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %125, i64 1
  %126 = load %struct.dirent*, %struct.dirent** %de, align 8, !tbaa !1
  %d_name193 = getelementptr inbounds %struct.dirent, %struct.dirent* %126, i32 0, i32 4
  %arraydecay194 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name193, i32 0, i32 0
  %127 = load i32, i32* %len, align 4, !tbaa !5
  %add195 = add nsw i32 %127, 1
  %conv196 = sext i32 %add195 to i64
  %call197 = call i8* @memcpy(i8* %add.ptr, i8* %arraydecay194, i64 %conv196) #8
  %128 = load i32, i32* %len, align 4, !tbaa !5
  %add198 = add nsw i32 %128, 1
  store i32 %add198, i32* %len, align 4, !tbaa !5
  br label %if.end.210

if.else.199:                                      ; preds = %land.lhs.true.187, %if.else.184
  %129 = load i32, i32* %worklen, align 4, !tbaa !5
  %idxprom = sext i32 %129 to i64
  %130 = load i8*, i8** %work, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i8, i8* %130, i64 %idxprom
  store i8 47, i8* %arrayidx200, align 1, !tbaa !7
  %131 = load i8*, i8** %work, align 8, !tbaa !1
  %132 = load i32, i32* %worklen, align 4, !tbaa !5
  %idx.ext = sext i32 %132 to i64
  %add.ptr201 = getelementptr inbounds i8, i8* %131, i64 %idx.ext
  %add.ptr202 = getelementptr inbounds i8, i8* %add.ptr201, i64 1
  %133 = load %struct.dirent*, %struct.dirent** %de, align 8, !tbaa !1
  %d_name203 = getelementptr inbounds %struct.dirent, %struct.dirent* %133, i32 0, i32 4
  %arraydecay204 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name203, i32 0, i32 0
  %134 = load i32, i32* %len, align 4, !tbaa !5
  %add205 = add nsw i32 %134, 1
  %conv206 = sext i32 %add205 to i64
  %call207 = call i8* @memcpy(i8* %add.ptr202, i8* %arraydecay204, i64 %conv206) #8
  %135 = load i32, i32* %worklen, align 4, !tbaa !5
  %add208 = add nsw i32 %135, 1
  %136 = load i32, i32* %len, align 4, !tbaa !5
  %add209 = add nsw i32 %add208, %136
  store i32 %add209, i32* %len, align 4, !tbaa !5
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.199, %if.then.192
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.then.178
  %137 = load i8*, i8** %work, align 8, !tbaa !1
  %138 = load i32, i32* %len, align 4, !tbaa !5
  %139 = load i8*, i8** %pattern, align 8, !tbaa !1
  %140 = load i32, i32* %pathead, align 4, !tbaa !5
  %call212 = call i32 @string_match(i8* %137, i32 %138, i8* %139, i32 %140, %struct.string_match_params_s* null) #6
  %tobool213 = icmp ne i32 %call212, 0
  br i1 %tobool213, label %if.end.215, label %if.then.214

if.then.214:                                      ; preds = %if.end.211
  br label %top

if.end.215:                                       ; preds = %if.end.211
  %141 = load i32, i32* %pathead, align 4, !tbaa !5
  %142 = load i32, i32* %maxlen.addr, align 4, !tbaa !5
  %cmp216 = icmp ult i32 %141, %142
  br i1 %cmp216, label %if.then.218, label %if.end.296

if.then.218:                                      ; preds = %if.end.215
  %143 = bitcast %struct.__dirstream** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #2
  %144 = load i8*, i8** %work, align 8, !tbaa !1
  %call220 = call i32 bitcast (i32 (i8*, %struct.stat64*)* @stat64 to i32 (i8*, %struct.stat*)*)(i8* %144, %struct.stat* %stbuf) #8
  %cmp221 = icmp sge i32 %call220, 0
  br i1 %cmp221, label %cond.true.223, label %cond.false.226

cond.true.223:                                    ; preds = %if.then.218
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %stbuf, i32 0, i32 3
  %145 = load i32, i32* %st_mode, align 4, !tbaa !24
  %and = and i32 %145, 61440
  %cmp224 = icmp eq i32 %and, 16384
  br i1 %cmp224, label %if.end.228, label %if.then.227

cond.false.226:                                   ; preds = %if.then.218
  br i1 false, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %cond.false.226, %cond.true.223
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.228:                                       ; preds = %cond.false.226, %cond.true.223
  %146 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %patlen229 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %146, i32 0, i32 5
  %147 = load i32, i32* %patlen229, align 4, !tbaa !15
  %148 = load i32, i32* %pathead, align 4, !tbaa !5
  %add230 = add nsw i32 %148, 1
  %cmp231 = icmp eq i32 %147, %add230
  br i1 %cmp231, label %if.then.233, label %if.end.247

if.then.233:                                      ; preds = %if.end.228
  %st_mode234 = getelementptr inbounds %struct.stat, %struct.stat* %stbuf, i32 0, i32 3
  %149 = load i32, i32* %st_mode234, align 4, !tbaa !24
  %and235 = and i32 %149, 61440
  %cmp236 = icmp eq i32 %and235, 16384
  br i1 %cmp236, label %if.end.244, label %if.then.238

if.then.238:                                      ; preds = %if.then.233
  %150 = load i8*, i8** %work, align 8, !tbaa !1
  %call239 = call %struct.__dirstream* @opendir(i8* %150) #6
  store %struct.__dirstream* %call239, %struct.__dirstream** %dp, align 8, !tbaa !1
  %151 = load %struct.__dirstream*, %struct.__dirstream** %dp, align 8, !tbaa !1
  %tobool240 = icmp ne %struct.__dirstream* %151, null
  br i1 %tobool240, label %if.end.242, label %if.then.241

if.then.241:                                      ; preds = %if.then.238
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.242:                                       ; preds = %if.then.238
  %152 = load %struct.__dirstream*, %struct.__dirstream** %dp, align 8, !tbaa !1
  %call243 = call i32 @closedir(%struct.__dirstream* %152) #6
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.242, %if.then.233
  %153 = load i32, i32* %len, align 4, !tbaa !5
  %inc = add nsw i32 %153, 1
  store i32 %inc, i32* %len, align 4, !tbaa !5
  %idxprom245 = sext i32 %153 to i64
  %154 = load i8*, i8** %work, align 8, !tbaa !1
  %arrayidx246 = getelementptr inbounds i8, i8* %154, i64 %idxprom245
  store i8 47, i8* %arrayidx246, align 1, !tbaa !7
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.247:                                       ; preds = %if.end.228
  %155 = load i8*, i8** %work, align 8, !tbaa !1
  %call248 = call %struct.__dirstream* @opendir(i8* %155) #6
  store %struct.__dirstream* %call248, %struct.__dirstream** %dp, align 8, !tbaa !1
  %156 = load %struct.__dirstream*, %struct.__dirstream** %dp, align 8, !tbaa !1
  %tobool249 = icmp ne %struct.__dirstream* %156, null
  br i1 %tobool249, label %if.else.251, label %if.then.250

if.then.250:                                      ; preds = %if.end.247
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.294

if.else.251:                                      ; preds = %if.end.247
  %157 = bitcast i8** %p253 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #2
  %158 = bitcast %struct.dirstack_s** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %158) #2
  %159 = load i8*, i8** %pattern, align 8, !tbaa !1
  %160 = load i32, i32* %pathead, align 4, !tbaa !5
  %idx.ext255 = sext i32 %160 to i64
  %add.ptr256 = getelementptr inbounds i8, i8* %159, i64 %idx.ext255
  %add.ptr257 = getelementptr inbounds i8, i8* %add.ptr256, i64 1
  store i8* %add.ptr257, i8** %p253, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.251
  %161 = load i8*, i8** %p253, align 8, !tbaa !1
  %162 = load i8, i8* %161, align 1, !tbaa !7
  %conv258 = sext i8 %162 to i32
  %cmp259 = icmp eq i32 %conv258, 0
  br i1 %cmp259, label %if.then.261, label %if.else.263

if.then.261:                                      ; preds = %for.cond
  %163 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %patlen262 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %163, i32 0, i32 5
  %164 = load i32, i32* %patlen262, align 4, !tbaa !15
  store i32 %164, i32* %pathead, align 4, !tbaa !5
  br label %for.end

if.else.263:                                      ; preds = %for.cond
  %165 = load i8*, i8** %p253, align 8, !tbaa !1
  %166 = load i8, i8* %165, align 1, !tbaa !7
  %conv264 = sext i8 %166 to i32
  %cmp265 = icmp eq i32 %conv264, 47
  br i1 %cmp265, label %if.then.267, label %if.end.272

if.then.267:                                      ; preds = %if.else.263
  %167 = load i8*, i8** %p253, align 8, !tbaa !1
  %168 = load i8*, i8** %pattern, align 8, !tbaa !1
  %sub.ptr.lhs.cast268 = ptrtoint i8* %167 to i64
  %sub.ptr.rhs.cast269 = ptrtoint i8* %168 to i64
  %sub.ptr.sub270 = sub i64 %sub.ptr.lhs.cast268, %sub.ptr.rhs.cast269
  %conv271 = trunc i64 %sub.ptr.sub270 to i32
  store i32 %conv271, i32* %pathead, align 4, !tbaa !5
  br label %for.end

if.end.272:                                       ; preds = %if.else.263
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272
  br label %for.inc

for.inc:                                          ; preds = %if.end.273
  %169 = load i8*, i8** %p253, align 8, !tbaa !1
  %incdec.ptr274 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr274, i8** %p253, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.267, %if.then.261
  %170 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %170, i32 0, i32 8
  %171 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !11
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %171, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %172 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !8
  %173 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %memory275 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %173, i32 0, i32 8
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory275, align 8, !tbaa !11
  %call276 = call i8* %172(%struct.gs_memory_s* %174, %struct.gs_memory_struct_type_s* @st_dirstack, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0)) #6
  %175 = bitcast i8* %call276 to %struct.dirstack_s*
  store %struct.dirstack_s* %175, %struct.dirstack_s** %d, align 8, !tbaa !1
  %176 = load %struct.dirstack_s*, %struct.dirstack_s** %d, align 8, !tbaa !1
  %cmp277 = icmp ne %struct.dirstack_s* %176, null
  br i1 %cmp277, label %if.then.279, label %if.else.283

if.then.279:                                      ; preds = %for.end
  %177 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %dstack = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %177, i32 0, i32 4
  %178 = load %struct.dirstack_s*, %struct.dirstack_s** %dstack, align 8, !tbaa !13
  %179 = load %struct.dirstack_s*, %struct.dirstack_s** %d, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.dirstack_s, %struct.dirstack_s* %179, i32 0, i32 0
  store %struct.dirstack_s* %178, %struct.dirstack_s** %next, align 8, !tbaa !27
  %180 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %dirp280 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %180, i32 0, i32 0
  %181 = load %struct.__dirstream*, %struct.__dirstream** %dirp280, align 8, !tbaa !21
  %182 = load %struct.dirstack_s*, %struct.dirstack_s** %d, align 8, !tbaa !1
  %entry281 = getelementptr inbounds %struct.dirstack_s, %struct.dirstack_s* %182, i32 0, i32 1
  store %struct.__dirstream* %181, %struct.__dirstream** %entry281, align 8, !tbaa !29
  %183 = load %struct.dirstack_s*, %struct.dirstack_s** %d, align 8, !tbaa !1
  %184 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %dstack282 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %184, i32 0, i32 4
  store %struct.dirstack_s* %183, %struct.dirstack_s** %dstack282, align 8, !tbaa !13
  br label %if.end.287

if.else.283:                                      ; preds = %for.end
  br label %do.body.284

do.body.284:                                      ; preds = %if.else.283
  br label %do.cond.285

do.cond.285:                                      ; preds = %do.body.284
  br label %do.end.286

do.end.286:                                       ; preds = %do.cond.285
  br label %if.end.287

if.end.287:                                       ; preds = %do.end.286, %if.then.279
  br label %do.body.288

do.body.288:                                      ; preds = %if.end.287
  br label %do.cond.289

do.cond.289:                                      ; preds = %do.body.288
  br label %do.end.290

do.end.290:                                       ; preds = %do.cond.289
  %185 = load i32, i32* %len, align 4, !tbaa !5
  store i32 %185, i32* %worklen, align 4, !tbaa !5
  %186 = load %struct.__dirstream*, %struct.__dirstream** %dp, align 8, !tbaa !1
  %187 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %dirp291 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %187, i32 0, i32 0
  store %struct.__dirstream* %186, %struct.__dirstream** %dirp291, align 8, !tbaa !21
  store i32 4, i32* %cleanup.dest.slot
  %188 = bitcast %struct.dirstack_s** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #2
  %189 = bitcast i8** %p253 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #2
  br label %cleanup.294

cleanup.294:                                      ; preds = %if.end.244, %if.then.227, %do.end.290, %if.then.250, %if.then.241
  %190 = bitcast %struct.__dirstream** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #2
  %cleanup.dest.295 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.295, label %cleanup.307 [
    i32 4, label %top
    i32 11, label %winner
  ]

if.end.296:                                       ; preds = %if.end.215
  br label %winner

winner:                                           ; preds = %if.end.296, %cleanup.294
  %191 = load i32, i32* %worklen, align 4, !tbaa !5
  %192 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %worklen297 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %192, i32 0, i32 3
  store i32 %191, i32* %worklen297, align 4, !tbaa !20
  %193 = load i32, i32* %pathead, align 4, !tbaa !5
  %194 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %pathead298 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %194, i32 0, i32 6
  store i32 %193, i32* %pathead298, align 4, !tbaa !19
  %195 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %196 = load i8*, i8** %work, align 8, !tbaa !1
  %197 = load i32, i32* %len, align 4, !tbaa !5
  %198 = load i32, i32* %maxlen.addr, align 4, !tbaa !5
  %cmp299 = icmp ugt i32 %197, %198
  br i1 %cmp299, label %cond.true.301, label %cond.false.302

cond.true.301:                                    ; preds = %winner
  %199 = load i32, i32* %maxlen.addr, align 4, !tbaa !5
  br label %cond.end.303

cond.false.302:                                   ; preds = %winner
  %200 = load i32, i32* %len, align 4, !tbaa !5
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.false.302, %cond.true.301
  %cond304 = phi i32 [ %199, %cond.true.301 ], [ %200, %cond.false.302 ]
  %conv305 = zext i32 %cond304 to i64
  %call306 = call i8* @memcpy(i8* %195, i8* %196, i64 %conv305) #8
  %201 = load i32, i32* %len, align 4, !tbaa !5
  store i32 %201, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.307

cleanup.307:                                      ; preds = %cond.end.303, %cleanup.294, %cleanup, %if.then.9
  %202 = bitcast %struct.stat* %stbuf to i8*
  call void @llvm.lifetime.end(i64 144, i8* %202) #2
  %203 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #2
  %204 = bitcast i32* %pathead to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #2
  %205 = bitcast i8** %pattern to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #2
  %206 = bitcast i32* %worklen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #2
  %207 = bitcast i8** %work to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #2
  %208 = bitcast %struct.dirent** %de to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #2
  %209 = load i32, i32* %retval
  ret i32 %209
}

declare %struct.__dirstream* @opendir(i8*) #1

; Function Attrs: nounwind uwtable
define void @gp_enumerate_files_close(%struct.file_enum_s* %pfen) #0 {
entry:
  %pfen.addr = alloca %struct.file_enum_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.file_enum_s* %pfen, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %1, i32 0, i32 8
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !11
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %do.end.3, %do.end
  %3 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %call = call i32 @popdir(%struct.file_enum_s* %3) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.1

do.body.1:                                        ; preds = %while.body
  br label %do.cond.2

do.cond.2:                                        ; preds = %do.body.1
  br label %do.end.3

do.end.3:                                         ; preds = %do.cond.2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !30
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %work = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %7, i32 0, i32 2
  %8 = load i8*, i8** %work, align 8, !tbaa !16
  call void %5(%struct.gs_memory_s* %6, i8* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0)) #6
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %free_object5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %10 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object5, align 8, !tbaa !30
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %12 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %pattern, align 8, !tbaa !18
  call void %10(%struct.gs_memory_s* %11, i8* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #6
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object7, align 8, !tbaa !30
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %17 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %18 = bitcast %struct.file_enum_s* %17 to i8*
  call void %15(%struct.gs_memory_s* %16, i8* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #6
  %19 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  ret void
}

declare %struct.dirent* @readdir64(%struct.__dirstream*) #1

declare i32 @closedir(%struct.__dirstream*) #1

; Function Attrs: nounwind uwtable
define internal i32 @popdir(%struct.file_enum_s* %pfen) #0 {
entry:
  %retval = alloca i32, align 4
  %pfen.addr = alloca %struct.file_enum_s*, align 8
  %d = alloca %struct.dirstack_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.file_enum_s* %pfen, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %0 = bitcast %struct.dirstack_s** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %dstack = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %1, i32 0, i32 4
  %2 = load %struct.dirstack_s*, %struct.dirstack_s** %dstack, align 8, !tbaa !13
  store %struct.dirstack_s* %2, %struct.dirstack_s** %d, align 8, !tbaa !1
  %3 = load %struct.dirstack_s*, %struct.dirstack_s** %d, align 8, !tbaa !1
  %cmp = icmp eq %struct.dirstack_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.dirstack_s*, %struct.dirstack_s** %d, align 8, !tbaa !1
  %entry1 = getelementptr inbounds %struct.dirstack_s, %struct.dirstack_s* %4, i32 0, i32 1
  %5 = load %struct.__dirstream*, %struct.__dirstream** %entry1, align 8, !tbaa !29
  %6 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %dirp = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %6, i32 0, i32 0
  store %struct.__dirstream* %5, %struct.__dirstream** %dirp, align 8, !tbaa !21
  %7 = load %struct.dirstack_s*, %struct.dirstack_s** %d, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.dirstack_s, %struct.dirstack_s* %7, i32 0, i32 0
  %8 = load %struct.dirstack_s*, %struct.dirstack_s** %next, align 8, !tbaa !27
  %9 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %dstack2 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %9, i32 0, i32 4
  store %struct.dirstack_s* %8, %struct.dirstack_s** %dstack2, align 8, !tbaa !13
  %10 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %10, i32 0, i32 8
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !11
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !30
  %13 = load %struct.file_enum_s*, %struct.file_enum_s** %pfen.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.file_enum_s, %struct.file_enum_s* %13, i32 0, i32 8
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !11
  %15 = load %struct.dirstack_s*, %struct.dirstack_s** %d, align 8, !tbaa !1
  %16 = bitcast %struct.dirstack_s* %15 to i8*
  call void %12(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0)) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast %struct.dirstack_s** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

declare i32 @string_match(i8*, i32, i8*, i32, %struct.string_match_params_s*) #1

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @gp_fopen_64(i8* %filename, i8* %mode) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %mode.addr, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @fopen64(i8* %0, i8* %1) #6
  ret %struct._IO_FILE* %call
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @gp_open_scratch_file_64(%struct.gs_memory_s* %mem, i8* %prefix, i8* %fname, i8* %mode) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %prefix.addr = alloca i8*, align 8
  %fname.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %prefix, i8** %prefix.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %prefix.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %mode.addr, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @gp_open_scratch_file_generic(%struct.gs_memory_s* %0, i8* %1, i8* %2, i8* %3, i32 1) #6
  ret %struct._IO_FILE* %call
}

; Function Attrs: nounwind uwtable
define i64 @gp_ftell_64(%struct._IO_FILE* %strm) #0 {
entry:
  %strm.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %strm, %struct._IO_FILE** %strm.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %strm.addr, align 8, !tbaa !1
  %call = call i64 @ftell(%struct._IO_FILE* %0) #6
  ret i64 %call
}

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @gp_fseek_64(%struct._IO_FILE* %strm, i64 %offset, i32 %origin) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct._IO_FILE*, align 8
  %offset.addr = alloca i64, align 8
  %origin.addr = alloca i32, align 4
  %offset1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %strm, %struct._IO_FILE** %strm.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !22
  store i32 %origin, i32* %origin.addr, align 4, !tbaa !5
  %0 = bitcast i64* %offset1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i64, i64* %offset.addr, align 8, !tbaa !22
  store i64 %1, i64* %offset1, align 8, !tbaa !22
  %2 = load i64, i64* %offset.addr, align 8, !tbaa !22
  %3 = load i64, i64* %offset1, align 8, !tbaa !22
  %cmp = icmp ne i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %strm.addr, align 8, !tbaa !1
  %5 = load i64, i64* %offset1, align 8, !tbaa !22
  %6 = load i32, i32* %origin.addr, align 4, !tbaa !5
  %call = call i32 @fseek(%struct._IO_FILE* %4, i64 %5, i32 %6) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i64* %offset1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gp_fseekable(%struct._IO_FILE* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %s = alloca %struct.stat, align 8
  %fno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stat* %s to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #2
  %1 = bitcast i32* %fno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call = call i32 @fileno(%struct._IO_FILE* %2) #8
  store i32 %call, i32* %fno, align 4, !tbaa !5
  %3 = load i32, i32* %fno, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %fno, align 4, !tbaa !5
  %call1 = call i32 bitcast (i32 (i32, %struct.stat64*)* @fstat64 to i32 (i32, %struct.stat*)*)(i32 %4, %struct.stat* %s) #8
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 3
  %5 = load i32, i32* %st_mode, align 4, !tbaa !24
  %and = and i32 %5, 61440
  %cmp5 = icmp eq i32 %and, 32768
  %conv = zext i1 %cmp5 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %6 = bitcast i32* %fno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  %7 = bitcast %struct.stat* %s to i8*
  call void @llvm.lifetime.end(i64 144, i8* %7) #2
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

declare i32 @gp_file_name_is_absolute(i8*, i32) #1

declare i32 @gp_gettmpdir(i8*, i32*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @mktemp(i8*) #3

declare %struct._IO_FILE* @gp_fopentemp(i8*, i8*) #1

declare %struct._IO_FILE* @gp_fopentemp_64(i8*, i8*) #1

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #1

declare i8* @gs_program_name() #1

declare i64 @gs_revision_number() #1

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @stat64(i8* nonnull %__path, %struct.stat64* nonnull %__statbuf) #5 {
entry:
  %__path.addr = alloca i8*, align 8
  %__statbuf.addr = alloca %struct.stat64*, align 8
  store i8* %__path, i8** %__path.addr, align 8, !tbaa !1
  store %struct.stat64* %__statbuf, %struct.stat64** %__statbuf.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__path.addr, align 8, !tbaa !1
  %1 = load %struct.stat64*, %struct.stat64** %__statbuf.addr, align 8, !tbaa !1
  %call = call i32 @__xstat64(i32 1, i8* %0, %struct.stat64* %1) #8
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @__xstat64(i32, i8*, %struct.stat64*) #3

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @fstat64(i32 %__fd, %struct.stat64* nonnull %__statbuf) #5 {
entry:
  %__fd.addr = alloca i32, align 4
  %__statbuf.addr = alloca %struct.stat64*, align 8
  store i32 %__fd, i32* %__fd.addr, align 4, !tbaa !5
  store %struct.stat64* %__statbuf, %struct.stat64** %__statbuf.addr, align 8, !tbaa !1
  %0 = load i32, i32* %__fd.addr, align 4, !tbaa !5
  %1 = load %struct.stat64*, %struct.stat64** %__statbuf.addr, align 8, !tbaa !1
  %call = call i32 @__fxstat64(i32 1, i32 %0, %struct.stat64* %1) #8
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @__fxstat64(i32, i32, %struct.stat64*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }
attributes #8 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !2, i64 72}
!9 = !{!"gs_memory_s", !2, i64 0, !10, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!10 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!11 = !{!12, !2, i64 56}
!12 = !{!"file_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56}
!13 = !{!12, !2, i64 32}
!14 = !{!12, !6, i64 48}
!15 = !{!12, !6, i64 40}
!16 = !{!12, !2, i64 16}
!17 = !{!9, !2, i64 64}
!18 = !{!12, !2, i64 8}
!19 = !{!12, !6, i64 44}
!20 = !{!12, !6, i64 24}
!21 = !{!12, !2, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !3, i64 0}
!24 = !{!25, !6, i64 24}
!25 = !{!"stat", !23, i64 0, !23, i64 8, !23, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !26, i64 72, !26, i64 88, !26, i64 104, !3, i64 120}
!26 = !{!"timespec", !23, i64 0, !23, i64 8}
!27 = !{!28, !2, i64 0}
!28 = !{!"dirstack_s", !2, i64 0, !2, i64 8}
!29 = !{!28, !2, i64 8}
!30 = !{!9, !2, i64 24}
