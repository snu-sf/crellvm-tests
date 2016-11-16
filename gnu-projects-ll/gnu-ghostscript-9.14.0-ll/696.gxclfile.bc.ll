; ModuleID = './gxclfile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clist_io_procs_s = type { i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i64 (i8*)*, void (i8*, i32, i8*)*, i32 (i8*, i64, i32, i8*)* }
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

@clist_io_procs_file = internal global %struct.clist_io_procs_s { i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)* @clist_fopen, i32 (i8*, i8*, i32)* @clist_fclose, i32 (i8*)* @clist_unlink, i32 (i8*, i32, i8*)* @clist_fwrite_chars, i32 (i8*, i32, i8*)* @clist_fread_chars, i32 (i8*, i32)* @clist_set_memory_warning, i32 (i8*)* @clist_ferror_code, i64 (i8*)* @clist_ftell, void (i8*, i32, i8*)* @clist_rewind, i32 (i8*, i64, i32, i8*)* @clist_fseek }, align 8
@clist_io_procs_file_global = external global %struct.clist_io_procs_s*, align 8
@gp_scratch_file_name_prefix = external constant [0 x i8], align 1
@.str = private unnamed_addr constant [37 x i8] c"Could not open the scratch file %s.\0A\00", align 1
@gp_fmode_wb = external constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@gp_fmode_binary_suffix = external constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define i32 @gs_gxclfile_init(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.clist_io_procs_s* @clist_io_procs_file, %struct.clist_io_procs_s** @clist_io_procs_file_global, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_fopen(i8* %fname, i8* %fmode, i8** %pcf, %struct.gs_memory_s* %mem, %struct.gs_memory_s* %data_mem, i32 %ok_to_compress) #0 {
entry:
  %retval = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %fmode.addr = alloca i8*, align 8
  %pcf.addr = alloca i8**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data_mem.addr = alloca %struct.gs_memory_s*, align 8
  %ok_to_compress.addr = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i8* %fmode, i8** %fmode.addr, align 8, !tbaa !1
  store i8** %pcf, i8*** %pcf.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %data_mem, %struct.gs_memory_s** %data_mem.addr, align 8, !tbaa !1
  store i32 %ok_to_compress, i32* %ok_to_compress.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !7
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %fmode.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 114
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 -9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %fmode.addr, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @gp_open_scratch_file_64(%struct.gs_memory_s* %4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_scratch_file_name_prefix, i32 0, i32 0), i8* %5, i8* %6) #4
  %7 = bitcast %struct._IO_FILE* %call to i8*
  %8 = load i8**, i8*** %pcf.addr, align 8, !tbaa !1
  store i8* %7, i8** %8, align 8, !tbaa !1
  br label %if.end.7

if.else:                                          ; preds = %entry
  %9 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %fmode.addr, align 8, !tbaa !1
  %call6 = call %struct._IO_FILE* @gp_fopen(i8* %9, i8* %10) #4
  %11 = bitcast %struct._IO_FILE* %call6 to i8*
  %12 = load i8**, i8*** %pcf.addr, align 8, !tbaa !1
  store i8* %11, i8** %12, align 8, !tbaa !1
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end
  %13 = load i8**, i8*** %pcf.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %13, align 8, !tbaa !1
  %cmp8 = icmp eq i8* %14, null
  br i1 %cmp8, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.7
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call11 = call i8* @gs_program_name() #4
  %call12 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %15, i8* %call11, i64 %call12) #4
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call13 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* %17) #4
  store i32 -9, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.10, %if.then.5
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_fclose(i8* %cf, i8* %fname, i32 %delete) #0 {
entry:
  %cf.addr = alloca i8*, align 8
  %fname.addr = alloca i8*, align 8
  %delete.addr = alloca i32, align 4
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %delete, i32* %delete.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct._IO_FILE*
  %call = call i32 @fclose(%struct._IO_FILE* %1) #4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %delete.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true.1, label %cond.false.3

cond.true.1:                                      ; preds = %cond.false
  %3 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call2 = call i32 @clist_unlink(i8* %3) #4
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.1
  %cond = phi i32 [ %call2, %cond.true.1 ], [ 0, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi i32 [ -12, %cond.true ], [ %cond, %cond.end ]
  ret i32 %cond5
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_unlink(i8* %fname) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call = call i32 @unlink(i8* %0) #5
  %cmp = icmp ne i32 %call, 0
  %cond = select i1 %cmp, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_fwrite_chars(i8* %data, i32 %len, i8* %cf) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %cf.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %1 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv = zext i32 %1 to i64
  %2 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to %struct._IO_FILE*
  %call = call i64 @fwrite(i8* %0, i64 1, i64 %conv, %struct._IO_FILE* %3) #4
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_fread_chars(i8* %data, i32 %len, i8* %cf) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %cf.addr = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %str = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  %0 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._IO_FILE*
  store %struct._IO_FILE* %2, %struct._IO_FILE** %f, align 8, !tbaa !1
  %3 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %4, i8** %str, align 8, !tbaa !1
  %5 = load i32, i32* %len.addr, align 4, !tbaa !5
  switch i32 %5, label %sw.default [
    i32 8, label %sw.bb
    i32 7, label %sw.bb.4
    i32 6, label %sw.bb.8
    i32 5, label %sw.bb.12
    i32 4, label %sw.bb.16
    i32 3, label %sw.bb.20
    i32 2, label %sw.bb.24
    i32 1, label %sw.bb.28
  ]

sw.default:                                       ; preds = %entry
  %6 = load i8*, i8** %str, align 8, !tbaa !1
  %7 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv = zext i32 %7 to i64
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call = call i64 @fread(i8* %6, i64 1, i64 %conv, %struct._IO_FILE* %8) #4
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %9) #4
  %conv3 = trunc i32 %call2 to i8
  %10 = load i8*, i8** %str, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %str, align 8, !tbaa !1
  store i8 %conv3, i8* %10, align 1, !tbaa !7
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %entry, %sw.bb
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call5 = call i32 @_IO_getc(%struct._IO_FILE* %11) #4
  %conv6 = trunc i32 %call5 to i8
  %12 = load i8*, i8** %str, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr7, i8** %str, align 8, !tbaa !1
  store i8 %conv6, i8* %12, align 1, !tbaa !7
  br label %sw.bb.8

sw.bb.8:                                          ; preds = %entry, %sw.bb.4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call9 = call i32 @_IO_getc(%struct._IO_FILE* %13) #4
  %conv10 = trunc i32 %call9 to i8
  %14 = load i8*, i8** %str, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr11, i8** %str, align 8, !tbaa !1
  store i8 %conv10, i8* %14, align 1, !tbaa !7
  br label %sw.bb.12

sw.bb.12:                                         ; preds = %entry, %sw.bb.8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call13 = call i32 @_IO_getc(%struct._IO_FILE* %15) #4
  %conv14 = trunc i32 %call13 to i8
  %16 = load i8*, i8** %str, align 8, !tbaa !1
  %incdec.ptr15 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr15, i8** %str, align 8, !tbaa !1
  store i8 %conv14, i8* %16, align 1, !tbaa !7
  br label %sw.bb.16

sw.bb.16:                                         ; preds = %entry, %sw.bb.12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call17 = call i32 @_IO_getc(%struct._IO_FILE* %17) #4
  %conv18 = trunc i32 %call17 to i8
  %18 = load i8*, i8** %str, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr19, i8** %str, align 8, !tbaa !1
  store i8 %conv18, i8* %18, align 1, !tbaa !7
  br label %sw.bb.20

sw.bb.20:                                         ; preds = %entry, %sw.bb.16
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call21 = call i32 @_IO_getc(%struct._IO_FILE* %19) #4
  %conv22 = trunc i32 %call21 to i8
  %20 = load i8*, i8** %str, align 8, !tbaa !1
  %incdec.ptr23 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr23, i8** %str, align 8, !tbaa !1
  store i8 %conv22, i8* %20, align 1, !tbaa !7
  br label %sw.bb.24

sw.bb.24:                                         ; preds = %entry, %sw.bb.20
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call25 = call i32 @_IO_getc(%struct._IO_FILE* %21) #4
  %conv26 = trunc i32 %call25 to i8
  %22 = load i8*, i8** %str, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr27, i8** %str, align 8, !tbaa !1
  store i8 %conv26, i8* %22, align 1, !tbaa !7
  br label %sw.bb.28

sw.bb.28:                                         ; preds = %entry, %sw.bb.24
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call29 = call i32 @_IO_getc(%struct._IO_FILE* %23) #4
  %conv30 = trunc i32 %call29 to i8
  %24 = load i8*, i8** %str, align 8, !tbaa !1
  store i8 %conv30, i8* %24, align 1, !tbaa !7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.28
  %25 = load i32, i32* %len.addr, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %26 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #3
  %27 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #3
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_set_memory_warning(i8* %cf, i32 %bytes_left) #0 {
entry:
  %cf.addr = alloca i8*, align 8
  %bytes_left.addr = alloca i32, align 4
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  store i32 %bytes_left, i32* %bytes_left.addr, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_ferror_code(i8* %cf) #0 {
entry:
  %cf.addr = alloca i8*, align 8
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct._IO_FILE*
  %call = call i32 @ferror(%struct._IO_FILE* %1) #5
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i64 @clist_ftell(i8* %cf) #0 {
entry:
  %cf.addr = alloca i8*, align 8
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct._IO_FILE*
  %call = call i64 @gp_ftell_64(%struct._IO_FILE* %1) #4
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal void @clist_rewind(i8* %cf, i32 %discard_data, i8* %fname) #0 {
entry:
  %cf.addr = alloca i8*, align 8
  %discard_data.addr = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %fmode = alloca [4 x i8], align 1
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  store i32 %discard_data, i32* %discard_data.addr, align 4, !tbaa !5
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  %0 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._IO_FILE*
  store %struct._IO_FILE* %2, %struct._IO_FILE** %f, align 8, !tbaa !1
  %3 = load i32, i32* %discard_data.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @freopen64(i8* %5, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_wb, i32 0, i32 0), %struct._IO_FILE* %6) #4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call1 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #5
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call3 = call i8* @strcat(i8* %arraydecay2, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_binary_suffix, i32 0, i32 0)) #5
  %7 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arraydecay4 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call5 = call %struct._IO_FILE* @freopen64(i8* %7, i8* %arraydecay4, %struct._IO_FILE* %8) #4
  %9 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  call void @rewind(%struct._IO_FILE* %10) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_fseek(i8* %cf, i64 %offset, i32 %mode, i8* %ignore_fname) #0 {
entry:
  %cf.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %ignore_fname.addr = alloca i8*, align 8
  store i8* %cf, i8** %cf.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !8
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !5
  store i8* %ignore_fname, i8** %ignore_fname.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %cf.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct._IO_FILE*
  %2 = load i64, i64* %offset.addr, align 8, !tbaa !8
  %3 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %call = call i32 @gp_fseek_64(%struct._IO_FILE* %1, i64 %2, i32 %3) #4
  ret i32 %call
}

declare %struct._IO_FILE* @gp_open_scratch_file_64(%struct.gs_memory_s*, i8*, i8*, i8*) #1

declare %struct._IO_FILE* @gp_fopen(i8*, i8*) #1

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #1

declare i8* @gs_program_name() #1

declare i64 @gs_revision_number() #1

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare i64 @gp_ftell_64(%struct._IO_FILE*) #1

declare %struct._IO_FILE* @freopen64(i8*, i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @gp_fseek_64(%struct._IO_FILE*, i64, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
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
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !3, i64 0}
