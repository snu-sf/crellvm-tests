; ModuleID = './gp_unix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.tms = type { i64, i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque

@gs_serialnumber = external constant i64, align 8
@.str = private unnamed_addr constant [17 x i8] c"./base/gp_unix.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Ghostscript: gettimeofday failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: nounwind uwtable
define void @gp_init() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @gp_exit(i32 %exit_status, i32 %code) #0 {
entry:
  %exit_status.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %exit_status, i32* %exit_status.addr, align 4, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gp_do_exit(i32 %exit_status) #0 {
entry:
  %exit_status.addr = alloca i32, align 4
  store i32 %exit_status, i32* %exit_status.addr, align 4, !tbaa !1
  %0 = load i32, i32* %exit_status.addr, align 4, !tbaa !1
  call void @exit(i32 %0) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

; Function Attrs: nounwind uwtable
define i8* @gp_strerror(i32 %errnum) #0 {
entry:
  %errnum.addr = alloca i32, align 4
  store i32 %errnum, i32* %errnum.addr, align 4, !tbaa !1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i32 @gp_serialnumber() #0 {
entry:
  %0 = load i64, i64* @gs_serialnumber, align 8, !tbaa !5
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @gp_read_macresource(i8* %buf, i8* %filename, i32 %type, i16 zeroext %id) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %id.addr = alloca i16, align 2
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !7
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !7
  store i32 %type, i32* %type.addr, align 4, !tbaa !1
  store i16 %id, i16* %id.addr, align 2, !tbaa !9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gp_get_realtime(i64* %pdt) #0 {
entry:
  %pdt.addr = alloca i64*, align 8
  %tp = alloca %struct.timeval, align 8
  %tzp = alloca %struct.timezone, align 4
  store i64* %pdt, i64** %pdt.addr, align 8, !tbaa !7
  %0 = bitcast %struct.timeval* %tp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.timezone* %tzp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %call = call i32 @gettimeofday(%struct.timeval* %tp, %struct.timezone* %tzp) #7
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @gs_program_name() #8
  %call2 = call i64 @gs_revision_number() #8
  call void @eprintf_program_ident(i8* %call1, i64 %call2) #8
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 161) #8
  %call3 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0)) #8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 1
  store i64 0, i64* %tv_usec, align 8, !tbaa !11
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 0
  store i64 0, i64* %tv_sec, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = bitcast %struct.timezone* %tzp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2) #2
  %tv_sec4 = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 0
  %3 = load i64, i64* %tv_sec4, align 8, !tbaa !13
  %4 = load i64*, i64** %pdt.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 0
  store i64 %3, i64* %arrayidx, align 8, !tbaa !5
  %tv_usec5 = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 1
  %5 = load i64, i64* %tv_usec5, align 8, !tbaa !11
  %cmp6 = icmp sge i64 %5, 0
  br i1 %cmp6, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %tv_usec7 = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 1
  %6 = load i64, i64* %tv_usec7, align 8, !tbaa !11
  %cmp8 = icmp slt i64 %6, 1000000
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %tv_usec9 = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 1
  %7 = load i64, i64* %tv_usec9, align 8, !tbaa !11
  %mul = mul nsw i64 %7, 1000
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ 0, %cond.false ]
  %8 = load i64*, i64** %pdt.addr, align 8, !tbaa !7
  %arrayidx10 = getelementptr inbounds i64, i64* %8, i64 1
  store i64 %cond, i64* %arrayidx10, align 8, !tbaa !5
  %9 = bitcast %struct.timeval* %tp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %9) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

declare void @eprintf_program_ident(i8*, i64) #4

declare i8* @gs_program_name() #4

declare i64 @gs_revision_number() #4

declare void @lprintf_file_and_line(i8*, i32) #4

declare i32 @errprintf_nomem(i8*, ...) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @gp_get_usertime(i64* %pdt) #0 {
entry:
  %pdt.addr = alloca i64*, align 8
  %tms = alloca %struct.tms, align 8
  %ticks = alloca i64, align 8
  %ticks_per_sec = alloca i64, align 8
  store i64* %pdt, i64** %pdt.addr, align 8, !tbaa !7
  %0 = bitcast %struct.tms* %tms to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #2
  %1 = bitcast i64* %ticks to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i64* %ticks_per_sec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  store i64 100, i64* %ticks_per_sec, align 8, !tbaa !5
  %call = call i64 @times(%struct.tms* %tms) #7
  %tms_utime = getelementptr inbounds %struct.tms, %struct.tms* %tms, i32 0, i32 0
  %3 = load i64, i64* %tms_utime, align 8, !tbaa !14
  %tms_stime = getelementptr inbounds %struct.tms, %struct.tms* %tms, i32 0, i32 1
  %4 = load i64, i64* %tms_stime, align 8, !tbaa !16
  %add = add nsw i64 %3, %4
  %tms_cutime = getelementptr inbounds %struct.tms, %struct.tms* %tms, i32 0, i32 2
  %5 = load i64, i64* %tms_cutime, align 8, !tbaa !17
  %add1 = add nsw i64 %add, %5
  %tms_cstime = getelementptr inbounds %struct.tms, %struct.tms* %tms, i32 0, i32 3
  %6 = load i64, i64* %tms_cstime, align 8, !tbaa !18
  %add2 = add nsw i64 %add1, %6
  store i64 %add2, i64* %ticks, align 8, !tbaa !5
  %7 = load i64, i64* %ticks, align 8, !tbaa !5
  %div = sdiv i64 %7, 100
  %8 = load i64*, i64** %pdt.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 0
  store i64 %div, i64* %arrayidx, align 8, !tbaa !5
  %9 = load i64, i64* %ticks, align 8, !tbaa !5
  %rem = srem i64 %9, 100
  %mul = mul nsw i64 %rem, 10000000
  %10 = load i64*, i64** %pdt.addr, align 8, !tbaa !7
  %arrayidx3 = getelementptr inbounds i64, i64* %10, i64 1
  store i64 %mul, i64* %arrayidx3, align 8, !tbaa !5
  %11 = bitcast i64* %ticks_per_sec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = bitcast i64* %ticks to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = bitcast %struct.tms* %tms to i8*
  call void @llvm.lifetime.end(i64 32, i8* %13) #2
  ret void
}

; Function Attrs: nounwind
declare i64 @times(%struct.tms*) #3

; Function Attrs: nounwind uwtable
define i8* @gp_getenv_display() #0 {
entry:
  %call = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #7
  ret i8* %call
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @gp_open_printer(%struct.gs_memory_s* %mem, i8* %fname, i32 %binary_mode) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %fname.addr = alloca i8*, align 8
  %binary_mode.addr = alloca i32, align 4
  %fmode = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !7
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !7
  store i32 %binary_mode, i32* %binary_mode.addr, align 4, !tbaa !1
  %0 = bitcast i8** %fmode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32, i32* %binary_mode.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)
  store i8* %cond, i8** %fmode, align 8, !tbaa !7
  %2 = load i8*, i8** %fname.addr, align 8, !tbaa !7
  %call = call i64 @strlen(i8* %2) #9
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %fname.addr, align 8, !tbaa !7
  %4 = load i8*, i8** %fmode, align 8, !tbaa !7
  %call1 = call %struct._IO_FILE* @gp_fopen(i8* %3, i8* %4) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi %struct._IO_FILE* [ null, %cond.true ], [ %call1, %cond.false ]
  %5 = bitcast i8** %fmode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret %struct._IO_FILE* %cond2
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare %struct._IO_FILE* @gp_fopen(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @gp_open_printer_64(%struct.gs_memory_s* %mem, i8* %fname, i32 %binary_mode) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %fname.addr = alloca i8*, align 8
  %binary_mode.addr = alloca i32, align 4
  %fmode = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !7
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !7
  store i32 %binary_mode, i32* %binary_mode.addr, align 4, !tbaa !1
  %0 = bitcast i8** %fmode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32, i32* %binary_mode.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)
  store i8* %cond, i8** %fmode, align 8, !tbaa !7
  %2 = load i8*, i8** %fname.addr, align 8, !tbaa !7
  %call = call i64 @strlen(i8* %2) #9
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %fname.addr, align 8, !tbaa !7
  %4 = load i8*, i8** %fmode, align 8, !tbaa !7
  %call1 = call %struct._IO_FILE* @gp_fopen_64(i8* %3, i8* %4) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi %struct._IO_FILE* [ null, %cond.true ], [ %call1, %cond.false ]
  %5 = bitcast i8** %fmode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret %struct._IO_FILE* %cond2
}

declare %struct._IO_FILE* @gp_fopen_64(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @gp_close_printer(%struct.gs_memory_s* %mem, %struct._IO_FILE* %pfile, i8* %fname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pfile.addr = alloca %struct._IO_FILE*, align 8
  %fname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !7
  store %struct._IO_FILE* %pfile, %struct._IO_FILE** %pfile.addr, align 8, !tbaa !7
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !7
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 124
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pfile.addr, align 8, !tbaa !7
  %call = call i32 @pclose(%struct._IO_FILE* %2) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pfile.addr, align 8, !tbaa !7
  %call2 = call i32 @fclose(%struct._IO_FILE* %3) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @pclose(%struct._IO_FILE*) #4

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define i8* @gp_enumerate_fonts_init(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !7
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i32 @gp_enumerate_fonts_next(i8* %enum_state, i8** %fontname, i8** %path) #0 {
entry:
  %enum_state.addr = alloca i8*, align 8
  %fontname.addr = alloca i8**, align 8
  %path.addr = alloca i8**, align 8
  store i8* %enum_state, i8** %enum_state.addr, align 8, !tbaa !7
  store i8** %fontname, i8*** %fontname.addr, align 8, !tbaa !7
  store i8** %path, i8*** %path.addr, align 8, !tbaa !7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gp_enumerate_fonts_free(i8* %enum_state) #0 {
entry:
  %enum_state.addr = alloca i8*, align 8
  store i8* %enum_state, i8** %enum_state.addr, align 8, !tbaa !7
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noreturn nounwind }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !6, i64 8}
!12 = !{!"timeval", !6, i64 0, !6, i64 8}
!13 = !{!12, !6, i64 0}
!14 = !{!15, !6, i64 0}
!15 = !{!"tms", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!16 = !{!15, !6, i64 8}
!17 = !{!15, !6, i64 16}
!18 = !{!15, !6, i64 24}
!19 = !{!3, !3, i64 0}
